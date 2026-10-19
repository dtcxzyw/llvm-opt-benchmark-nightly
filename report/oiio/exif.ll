Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/exif?download=true
inline.NumInlined: 1716
inline.NumDeleted: 772
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK11OpenImageIO4v3_13pvt6TagMap9tiffcountEi:bb.a
._crit_edge.i.i.i.i.i:                            ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !71   ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.q
  br label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit

_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !71
  br label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit

_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit: ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit, %._crit_edge.i.i.i.i.i
  %i.s = phi i64 [ %i.q, %._crit_edge.i.i.i.i.i ], [ %.pre, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit ]
  %.sroa.09.0.i.i.i.i.i = phi ptr [ %i.r, %._crit_edge.i.i.i.i.i ], [ %i.h, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.s
  %i.u = icmp eq ptr %.sroa.09.0.i.i.i.i.i, %i.t
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit, %bb.c
  %i.z = phi i32 [ %i.y, %bb.c ], [ 0, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit ]
  ret i32 %i.z
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK11OpenImageIO4v3_13pvt6TagMap3tagENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.b = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !53
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.179) #33
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.d, ptr %i.a, align 8, !tbaa !54
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !56
  %i.j = load i64, ptr %i.a, align 8, !tbaa !54
  store i64 %i.j, ptr %i.e, align 8, !tbaa !57
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !57
  store i8 %i.l, ptr %i.k, align 1, !tbaa !57
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !58
  %i.o = load ptr, ptr %2, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN11OpenImageIO4v3_17Strutil8to_lowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = invoke ptr @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E4findIS8_EENSR_14robin_iteratorILb0EEERKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS6_.exit unwind label %bb.i ; 2 uses

_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS6_.exit: ; preds = %bb.f
  %i.t = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.x = load i64, ptr %i.w, align 8, !tbaa !74
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %i.x
  %i.z = icmp eq ptr %i.s, %i.y
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !79
  br label %bb.h

bb.h:                                             ; preds = %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS6_.exit, %bb.g
  %i.ad = phi i32 [ %i.ac, %bb.g ], [ -1, %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS6_.exit ]
  %i.ae = load ptr, ptr %2, align 8, !tbaa !56    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.e
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !57
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.ad

bb.i:                                             ; preds = %bb.e, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8, !tbaa !56    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.e
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.i
  %i.al = load i64, ptr %i.e, align 8, !tbaa !57
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK11OpenImageIO4v3_13pvt6TagMap7mapnameEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  store ptr %i.c, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  store i64 %i.f, ptr %i.d, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_110tag_lookupENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr nofree noundef readonly captures(none) dead_on_return %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  switch i64 %i.c, label %bb.j [
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 1
  %i.e = icmp ne i32 %i.d, 1718188101
  %i.f = zext i1 %i.e to i32
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %bb.j

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.g = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, !prof !19

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.128, ptr %4, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.j, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %4, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.d unwind label %bb.e, !inline_history !80

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !80 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  br label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit

common.resume:                                    ; preds = %bb.n, %bb.i, %bb.e
  %_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T.sink = phi ptr [ @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, %bb.n ], [ @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %bb.i ], [ @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %i.aa, %bb.i ], [ %i.l, %bb.e ]
  call void @__cxa_guard_abort(ptr nonnull %_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T.sink) #32
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2:  ; preds = %bb.a
  %i.m = load i16, ptr %i.a, align 1
  %i.n = xor i16 %i.m, 20551
  %i.o = getelementptr i8, ptr %i.a, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  %i.r = xor i16 %i.q, 83
  %i.s = or i16 %i.n, %i.r
  %i.t = icmp ne i16 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i4, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6, label %bb.j

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.v = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, !prof !19

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  %.not.i7 = icmp eq i32 %i.x, 0
  br i1 %.not.i7, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.1, ptr %3, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.y, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %3, ptr nonnull @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, i64 32)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ab = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, !prof !19

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  %.not.i8 = icmp eq i32 %i.ad, 0
  br i1 %.not.i8, label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @.str.23, ptr %2, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.ae, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %2, ptr nonnull @_ZN11OpenImageIO4v3_1L14tiff_tag_tableE, i64 21)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit: ; preds = %bb.j, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit
  %.0 = phi ptr [ @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit ], [ @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit ], [ @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit ]
  %i.ah = load ptr, ptr %.0, align 8, !tbaa !18   ; 4 uses
  %i.ai = sext i32 %1 to i64
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !68 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33 ; 4 uses
  %.0813.i.i.i.i.i.i = and i64 %i.aj, %i.ai       ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.0813.i.i.i.i.i.i ; 2 uses
  %i.an = load i16, ptr %i.am, align 8, !tbaa !23
  %.not14.i.i.i.i.i.i = icmp slt i16 %i.an, 0
  br i1 %.not14.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %bb.p
  %i.ao = phi ptr [ %i.au, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %.0816.i.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i.i, %bb.p ], [ %.0813.i.i.i.i.i.i, %bb.o ]
  %.015.i.i.i.i.i.i = phi i16 [ %i.at, %bb.p ], [ 0, %bb.o ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !10
  %i.ar = icmp eq i32 %i.aq, %1
  br i1 %i.ar, label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i, label %bb.p, !prof !69

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = add i64 %.0816.i.i.i.i.i.i, 1
  %i.at = add i16 %.015.i.i.i.i.i.i, 1            ; 2 uses
  %.08.i.i.i.i.i.i = and i64 %i.as, %i.aj         ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.08.i.i.i.i.i.i ; 2 uses
  %i.av = load i16, ptr %i.au, align 8, !tbaa !23
  %.not.i.i.i.i.i.i = icmp sgt i16 %i.at, %i.av
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.p, %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !71 ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ax
  br label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i

_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  br label %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i

_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i: ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i, %._crit_edge.i.i.i.i.i.i
  %i.az = phi i64 [ %i.ax, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i ]
  %.sroa.09.0.i.i.i.i.i.i = phi ptr [ %i.ay, %._crit_edge.i.i.i.i.i.i ], [ %i.ao, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.loopexit.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.az
  %i.bb = icmp eq ptr %.sroa.09.0.i.i.i.i.i.i, %i.ba
  br i1 %i.bb, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit, label %bb.q

bb.q:                                             ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !73
  br label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit

_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit:    ; preds = %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i, %bb.q
  %i.be = phi ptr [ %i.bd, %bb.q ], [ null, %_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKi.exit.i ]
  ret ptr %i.be
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.128, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %0, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.1, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.d, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %0, ptr nonnull @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, i64 32)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.23, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %0, ptr nonnull @_ZN11OpenImageIO4v3_1L14tiff_tag_tableE, i64 21)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_110tag_lookupENS0_17basic_string_viewIcSt11char_traitsIcEEES4_(ptr nofree noundef readonly captures(none) dead_on_return %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  switch i64 %i.c, label %bb.j [
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 1
  %i.e = icmp ne i32 %i.d, 1718188101
  %i.f = zext i1 %i.e to i32
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %bb.j

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.g = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, !prof !19

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.128, ptr %4, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.j, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %4, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.d unwind label %bb.e, !inline_history !80

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !80 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  br label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit

common.resume:                                    ; preds = %bb.n, %bb.i, %bb.e
  %_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T.sink = phi ptr [ @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, %bb.n ], [ @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %bb.i ], [ @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %i.aa, %bb.i ], [ %i.l, %bb.e ]
  call void @__cxa_guard_abort(ptr nonnull %_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T.sink) #32
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2:  ; preds = %bb.a
  %i.m = load i16, ptr %i.a, align 1
  %i.n = xor i16 %i.m, 20551
  %i.o = getelementptr i8, ptr %i.a, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  %i.r = xor i16 %i.q, 83
  %i.s = or i16 %i.n, %i.r
  %i.t = icmp ne i16 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i4, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6, label %bb.j

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.v = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, !prof !19

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  %.not.i7 = icmp eq i32 %i.x, 0
  br i1 %.not.i7, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.1, ptr %3, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.y, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %3, ptr nonnull @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, i64 32)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit6, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ab = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, !prof !19

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  %.not.i8 = icmp eq i32 %i.ad, 0
  br i1 %.not.i8, label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @.str.23, ptr %2, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.ae, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %2, ptr nonnull @_ZN11OpenImageIO4v3_1L14tiff_tag_tableE, i64 21)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit: ; preds = %bb.j, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit
  %.0 = phi ptr [ @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit ], [ @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit ], [ @_ZZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEvE1T, %_ZN11OpenImageIO4v3_13pvt15tiff_tagmap_refEv.exit ]
  %i.ah = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %i.ah, ptr %5, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !16
  %i.al = call noundef ptr @_ZNK11OpenImageIO4v3_13pvt6TagMap4findENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %.0, ptr noundef nonnull dead_on_return %5)
  ret ptr %i.al
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataType(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %or.cond = icmp ugt i32 %0, 13
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !82   ; 2 uses
  %or.cond.i = icmp ugt i16 %i.b, 13
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i16 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataType.exit

_ZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataType.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83
  %i.h = zext i32 %i.g to i64
  %i.i = mul i64 %.0.i, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 256, -4294508018) i64 @_ZN11OpenImageIO4v3_125tiff_datatype_to_typedescE12TIFFDataTypem(i32 noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  %spec.store.select = select i1 %i.a, i64 0, i64 %1 ; 11 uses
  switch i32 %0, label %bb.n [
    i32 17, label %bb.m
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.b
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.f
    i32 11, label %bb.j
    i32 12, label %bb.k
    i32 16, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  br label %bb.n

bb.f:                                             ; preds = %bb.a, %bb.a
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.58.0 = phi i64 [ %spec.store.select, %bb.m ], [ %spec.store.select, %bb.l ], [ %spec.store.select, %bb.b ], [ 0, %bb.c ], [ %spec.store.select, %bb.d ], [ %spec.store.select, %bb.e ], [ %spec.store.select, %bb.f ], [ %spec.store.select, %bb.g ], [ 0, %bb.a ], [ %spec.store.select, %bb.h ], [ %spec.store.select, %bb.i ], [ %spec.store.select, %bb.k ], [ %spec.store.select, %bb.j ]
  %.sroa.32.0 = phi i64 [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 458752, %bb.f ], [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.j ]
  %.sroa.19.0 = phi i64 [ 256, %bb.m ], [ 256, %bb.l ], [ 256, %bb.b ], [ 256, %bb.c ], [ 256, %bb.d ], [ 256, %bb.e ], [ 512, %bb.f ], [ 256, %bb.g ], [ 256, %bb.a ], [ 256, %bb.h ], [ 256, %bb.i ], [ 256, %bb.k ], [ 256, %bb.j ]
  %.sroa.0.0 = phi i64 [ 9, %bb.m ], [ 8, %bb.l ], [ 2, %bb.b ], [ 13, %bb.c ], [ 4, %bb.d ], [ 6, %bb.e ], [ 7, %bb.f ], [ 3, %bb.g ], [ 0, %bb.a ], [ 5, %bb.h ], [ 7, %bb.i ], [ 12, %bb.k ], [ 11, %bb.j ]
  %.sroa.58.0.insert.ext = shl i64 %.sroa.58.0, 32
  %.sroa.32.0.insert.insert = or disjoint i64 %.sroa.58.0.insert.ext, %.sroa.32.0
  %.sroa.19.0.insert.insert = or disjoint i64 %.sroa.32.0.insert.insert, %.sroa.19.0
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.19.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZN11OpenImageIO4v3_113tiff_dir_dataERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr %1, i64 %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !82   ; 2 uses
  %or.cond.i.i = icmp ugt i16 %i.b, 13
  br i1 %or.cond.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i16 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83
  %i.h = zext i32 %i.g to i64
  %i.i = mul i64 %.0.i.i, %i.h                    ; 4 uses
  %i.j = icmp ult i64 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  %i.l = load i32, ptr %i.k, align 4, !tbaa !84
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = add i64 %i.i, %i.m
  %i.o = icmp ugt i64 %i.n, %2                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %spec.select = select i1 %i.o, i64 0, i64 %i.i
  %spec.select9 = select i1 %i.o, ptr null, ptr %i.p
  br label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, %bb.c
  %.sroa.5.0 = phi i64 [ %spec.select, %bb.c ], [ %i.i, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit ]
  %.sroa.08.0 = phi ptr [ %spec.select9, %bb.c ], [ %i.k, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal void @_ZN11OpenImageIO4v3_1L20version4char_handlerERKNS0_7TagInfoERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecEbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %1, ptr nofree readonly captures(address) %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(160) %4, i1 zeroext %5, i32 noundef %6) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !82   ; 3 uses
  %or.cond.i.i.i = icmp ugt i16 %i.b, 13          ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L21version4uint8_handlerERKNS0_7TagInfoERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecEbi:bb.a
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !82   ; 3 uses
  %or.cond.i.i.i = icmp ugt i16 %i.c, 13          ; 2 uses
  br i1 %or.cond.i.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !83
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = mul i64 %.0.i.i.i, %i.i                  ; 2 uses
  %i.k = icmp ult i64 %i.j, 5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.k, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !84
  %i.n = add i32 %i.m, %6                         ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %i.q = add i64 %i.j, %i.p
  %i.r = icmp ugt i64 %i.q, %3
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %spec.select.i = select i1 %i.r, ptr null, ptr %i.s
  br label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit

_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit: ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i, %bb.c, %bb.d
  %.1.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.c ], [ %i.l, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i ] ; 2 uses
  br i1 %or.cond.i.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit
  %i.t = zext nneg i16 %i.c to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !54
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit: ; preds = %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit, %bb.e
  %.0.i.i = phi i64 [ %i.v, %bb.e ], [ -1, %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit ]
  %i.w = mul i64 %.0.i.i, %i.i
  %i.x = icmp eq i64 %i.w, 4
  %i.y = icmp ne ptr %.1.i, null
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.z = load <4 x i8>, ptr %.1.i, align 1, !tbaa !57
  %i.aa = zext <4 x i8> %i.z to <4 x i32>
  store <4 x i32> %i.aa, ptr %i.a, align 16, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65 ; 3 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #32
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.f, %bb.g
  %i.ae = phi i64 [ %i.ad, %bb.g ], [ 0, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !16
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull dead_on_return %7, i64 17179869447, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_ZN11OpenImageIO4v3_19tag_tableENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr nofree noundef readonly captures(none) dead_on_return %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  switch i64 %i.c, label %bb.b [
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 1
  %i.e = icmp ne i32 %i.d, 1718188101
  %i.f = zext i1 %i.e to i32
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %bb.b

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1:  ; preds = %bb.a
  %i.g = load i16, ptr %i.a, align 1
  %i.h = xor i16 %i.g, 20551
  %i.i = getelementptr i8, ptr %i.a, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i16
  %i.l = xor i16 %i.k, 83
  %i.m = or i16 %i.h, %i.l
  %i.n = icmp ne i16 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not.i.i3 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i3, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b
  %.sroa.012.0 = phi ptr [ @_ZN11OpenImageIO4v3_1L14tiff_tag_tableE, %bb.b ], [ @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1 ], [ @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  %.sroa.4.0 = phi i64 [ 21, %bb.b ], [ 32, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1 ], [ 114, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi(ptr %0, i64 %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(160) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i1 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 2                            ; 2 uses
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %.loopexit, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %i.e = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %spec.select = select i1 %6, i16 %i.e, i16 %i.d ; 3 uses
  %i.f = zext i16 %spec.select to i64
  %i.g = mul nuw nsw i64 %i.f, 12
  %i.h = add i64 %i.g, %i.a
  %.not23 = icmp ugt i64 %i.h, %1
  br i1 %.not23, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %.not = icmp eq i16 %spec.select, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %wide.trip.count = zext i16 %spec.select to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = mul nuw nsw i64 %indvars.iv, 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull %i.k, ptr nonnull %0, i64 %1, i1 noundef zeroext %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1

.loopexit:                                        ; preds = %bb.b, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit ], [ true, %.preheader ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef readonly captures(address) %1, ptr %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %struct.TIFFDirEntry, align 4      ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.b = icmp uge ptr %1, %2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %.not = icmp ult ptr %i.c, %i.d
  %or.cond = select i1 %i.b, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.e = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.128, ptr %9, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.h, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %9, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.e unwind label %bb.f, !inline_history !80

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !80 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  br label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit

common.resume:                                    ; preds = %bb.j, %bb.f
  %_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T.sink = phi ptr [ @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %bb.j ], [ @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.j, %bb.f ]
  call void @__cxa_guard_abort(ptr nonnull %_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T.sink) #32
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit: ; preds = %bb.b, %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.k = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, !prof !19

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit
  %i.m = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  %.not.i84 = icmp eq i32 %i.m, 0
  br i1 %.not.i84, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @.str.1, ptr %8, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 3, ptr %i.n, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %8, ptr nonnull @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, i64 32)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !84   ; 5 uses
  %i.s = load i16, ptr %10, align 4, !tbaa !95    ; 2 uses
  br i1 %4, label %.lr.ph.i, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit
  %i.t = call noundef i16 @llvm.bswap.i16(i16 %i.s) ; 3 uses
  store i16 %i.t, ptr %10, align 4, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 2 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !95
  %i.w = call noundef i16 @llvm.bswap.i16(i16 %i.v) ; 3 uses
  store i16 %i.w, ptr %i.u, align 2, !tbaa !95
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10
  %i.z = call noundef i32 @llvm.bswap.i32(i32 %i.y) ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !10
  %or.cond.i.i = icmp ugt i16 %i.w, 13
  br i1 %or.cond.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.aa = zext nneg i16 %i.w to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !54
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit: ; preds = %.lr.ph.i, %bb.k
  %.0.i.i = phi i64 [ %i.ac, %bb.k ], [ -1, %.lr.ph.i ]
  %i.ad = zext i32 %i.z to i64
  %i.ae = mul i64 %.0.i.i, %i.ad
  %i.af = icmp ugt i64 %i.ae, 4
  br i1 %i.af, label %.lr.ph.i94, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98

.lr.ph.i94:                                       ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  %i.ag = call noundef i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.ag, ptr %i.q, align 4, !tbaa !10
  br label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98: ; preds = %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, %.lr.ph.i94, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  %i.ah = phi i16 [ %i.t, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit ], [ %i.t, %.lr.ph.i94 ], [ %i.s, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit ] ; 3 uses
  %i.ai = zext i16 %i.ah to i32
  switch i16 %i.ah, label %bb.s [
    i16 -30683, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit103
    i16 -30871, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit103
    i16 -24571, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit115
  ]

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit103: ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98, %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98
  %i.aj = call i32 @llvm.bswap.i32(i32 %i.r)
  %spec.select = select i1 %4, i32 %i.aj, i32 %i.r
  %i.ak = zext i32 %spec.select to i64            ; 8 uses
  %.not79 = icmp ugt i64 %3, %i.ak
  br i1 %.not79, label %bb.l, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit103
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !90 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.am, %bb.l ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.an, %bb.l ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !54
  %i.aq = icmp ult i64 %i.ap, %i.ak               ; 2 uses
  %.19.i.i.i = select i1 %i.aq, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.aq, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !145

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ar = icmp eq ptr %.19.i.i.i, %i.an
  br i1 %i.ar, label %.lr.ph.i.i.i104.preheader, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit

_ZNSt3setImSt4lessImESaImEE4findERKm.exit:        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !54
  %i.au = icmp ugt i64 %i.at, %i.ak
  br i1 %i.au, label %.lr.ph.i.i.i104.preheader, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread

.lr.ph.i.i.i104.preheader:                        ; preds = %_ZNSt3setImSt4lessImESaImEE4findERKm.exit, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i
  br label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %.lr.ph.i.i.i104.preheader, %.lr.ph.i.i.i104
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i104 ], [ %i.am, %.lr.ph.i.i.i104.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !54 ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %i.ak               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ax, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i105, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i104, !llvm.loop !2

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i104
  br i1 %i.ax, label %._crit_edge.thread.i.i.i, label %bb.n

._crit_edge.thread.i.i.i:                         ; preds = %bb.l, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.an, %bb.l ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ba = icmp eq ptr %.019.lcssa29.i.i.i, %i.az
  br i1 %i.ba, label %select.unfold.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.bb = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #35
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i
  %i.bc = phi i64 [ %.pre.i.i, %bb.m ], [ %i.aw, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.m ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.bd = icmp ult i64 %i.bc, %i.ak
  br i1 %i.bd, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit

select.unfold.i.i:                                ; preds = %bb.n, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.n ] ; 3 uses
  %i.be = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.an
  br i1 %i.be, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %select.unfold.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !54
  %i.bh = icmp ugt i64 %i.bg, %i.ak
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.o, %select.unfold.i.i
  %i.bi = phi i1 [ %i.bh, %bb.o ], [ true, %select.unfold.i.i ]
  %i.bj = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i64 %i.ak, ptr %i.bk, align 8, !tbaa !54
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.an) #32
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !93
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !93
  br label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit

_ZNSt3setImSt4lessImESaImEE6insertEOm.exit:       ; preds = %bb.n, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 1            ; 2 uses
  %i.bq = call i16 @llvm.bswap.i16(i16 %i.bp)
  %spec.select213 = select i1 %4, i16 %i.bq, i16 %i.bp ; 3 uses
  %i.br = load i16, ptr %10, align 4, !tbaa !97   ; 2 uses
  %i.bs = icmp eq i16 %i.br, -30683
  %i.bt = icmp ugt i16 %spec.select213, 32
  %or.cond7.not.not219 = select i1 %i.bs, i1 %i.bt, i1 false
  %.not175 = icmp eq i16 %spec.select213, 0
  %or.cond214 = select i1 %or.cond7.not.not219, i1 true, i1 %.not175
  br i1 %or.cond214, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread, label %.lr.ph173

.lr.ph173:                                        ; preds = %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %wide.trip.count183 = zext i16 %spec.select213 to i64
  %i.bv = icmp eq i16 %i.br, -30871
  %i.bw = select i1 %i.bv, ptr @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph173, %bb.p
  %indvars.iv180 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next181, %bb.p ] ; 2 uses
  %i.bx = mul nuw nsw i64 %indvars.iv180, 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  call fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.by, ptr nonnull %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread, label %bb.p, !llvm.loop !146

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit115: ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit98
  %i.bz = call i32 @llvm.bswap.i32(i32 %i.r)
  %spec.select215 = select i1 %4, i32 %i.bz, i32 %i.r
  %i.ca = zext i32 %spec.select215 to i64         ; 5 uses
  %.not78 = icmp ugt i64 %3, %i.ca
  br i1 %.not78, label %bb.q, label %_ZNK11OpenImageIO4v3_13pvt6TagMap4findEi.exit.thread

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit115
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !90 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not10.i.i.i116 = icmp eq ptr %i.cc, null
  br i1 %.not10.i.i.i116, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit128.thread, label %.lr.ph.i.i.i117

.lr.ph.i.i.i117:                                  ; preds = %bb.q, %.lr.ph.i.i.i117
  %.012.i.i.i118 = phi ptr [ %.1.i.i.i123, %.lr.ph.i.i.i117 ], [ %i.cc, %bb.q ] ; 3 uses
  %.0811.i.i.i119 = phi ptr [ %.19.i.i.i120, %.lr.ph.i.i.i117 ], [ %i.cd, %bb.q ]
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_13pvt21append_tiff_dir_entryERSt6vectorI12TIFFDirEntrySaIS3_EERS2_IcSaIcEEi12TIFFDataTypemNS0_4spanIKSt4byteLm18446744073709551615EEEmmNS0_6endianE:bb.a
.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit107
  %i.cc = load i16, ptr %9, align 4, !tbaa !97
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0108.0117 = phi ptr [ %i.bz, %.lr.ph ], [ %i.ce, %.critedge ] ; 3 uses
  %i.cd = load i16, ptr %.sroa.0108.0117, align 4, !tbaa !97
  %.not66 = icmp eq i16 %i.cd, %i.cc
  br i1 %.not66, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0108.0117, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !107
  br label %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE9push_backERKS0_.exit

.critedge:                                        ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0108.0117, i64 12 ; 2 uses
  %.not113 = icmp eq ptr %i.ce, %i.cb
  br i1 %.not113, label %.critedge68, label %bb.n

.critedge68:                                      ; preds = %.critedge, %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit107
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !109
  %.not.i = icmp eq ptr %i.cb, %i.cg
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !107
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !110
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store ptr %i.ci, ptr %i.ca, align 8, !tbaa !110
  br label %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE9push_backERKS0_.exit

bb.q:                                             ; preds = %.critedge68
  %i.cj = ptrtoint ptr %i.cb to i64
  %i.ck = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 5 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %bb.r, label %_ZNKSt6vectorI12TIFFDirEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.182) #33
  unreachable

_ZNKSt6vectorI12TIFFDirEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.cn = sdiv exact i64 %i.cl, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.co, i64 768614336404564650)
  %i.cr = select i1 %i.cp, i64 768614336404564650, i64 %i.cq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cs = mul nuw nsw i64 %i.cr, 12
  %i.ct = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #30 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cl ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cu, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !107
  %i.cv = icmp sgt i64 %i.cl, 0
  br i1 %i.cv, label %bb.s, label %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorI12TIFFDirEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ct, ptr align 4 %i.bz, i64 %i.cl, i1 false)
  br label %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI12TIFFDirEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.s, %_ZNKSt6vectorI12TIFFDirEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %.not.i17.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.cx = load ptr, ptr %i.cf, align 8, !tbaa !109
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cz) #31
  br label %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI12TIFFDirEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.ct, ptr %0, align 8, !tbaa !111
  store ptr %i.cw, ptr %i.ca, align 8, !tbaa !110
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.da, ptr %i.cf, align 8, !tbaa !109
  br label %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI12TIFFDirEntrySaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr nofree noundef readonly captures(none) dead_on_return %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecE(ptr %i.a, i64 %i.c, ptr noundef nonnull align 8 dereferenceable(160) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::set", align 8          ; 12 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = icmp ugt i64 %1, 5
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !57
  %i.c = icmp eq i8 %i.b, 69
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !57
  %i.f = icmp eq i8 %i.e, 120
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !57
  %i.i = icmp eq i8 %i.h, 105
  br i1 %i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !57
  %i.l = icmp eq i8 %i.k, 102
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i8, ptr %i.m, align 1, !tbaa !57
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !57
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = add i64 %1, -6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0102.0 = phi ptr [ %i.t, %bb.h ], [ %0, %bb.g ], [ %0, %bb.f ], [ %0, %bb.e ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %.sroa.12.0 = phi i64 [ %i.s, %bb.h ], [ %1, %bb.g ], [ %1, %bb.f ], [ %1, %bb.e ], [ %1, %bb.d ], [ %1, %bb.c ], [ %1, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.u = load i64, ptr %.sroa.0102.0, align 4     ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.u to i16 ; 2 uses
  switch i16 %.sroa.0.0.extract.trunc, label %bb.ag [
    i16 19789, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit
    i16 18761, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit
  ]

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit: ; preds = %bb.i, %bb.i
  %.sroa.5126.0.extract.shift = lshr i64 %i.u, 32 ; 2 uses
  %.sroa.5126.0.extract.trunc = trunc nuw i64 %.sroa.5126.0.extract.shift to i32
  %i.v = icmp ne i16 %.sroa.0.0.extract.trunc, 18761 ; 5 uses
  %i.w = tail call i32 @llvm.bswap.i32(i32 %.sroa.5126.0.extract.trunc)
  %i.x = zext i32 %i.w to i64
  %.sroa.5126.0 = select i1 %i.v, i64 %i.x, i64 %.sroa.5126.0.extract.shift ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ac, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ad = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.n, !prof !19

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit
  %i.af = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr @.str.128, ptr %3, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.ag, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %3, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.l unwind label %bb.m, !inline_history !80

bb.l:                                             ; preds = %bb.k
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !80 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  br label %.body

bb.n:                                             ; preds = %bb.l, %bb.j, %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aj = add nuw nsw i64 %.sroa.5126.0, 2        ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, %.sroa.12.0
  br i1 %i.ak, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i: ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0102.0, i64 %.sroa.5126.0 ; 2 uses
  %i.am = load i16, ptr %i.al, align 1            ; 2 uses
  %i.an = call i16 @llvm.bswap.i16(i16 %i.am)
  %spec.select.i = select i1 %i.v, i16 %i.an, i16 %i.am ; 2 uses
  %i.ao = zext i16 %spec.select.i to i64          ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 12
  %i.aq = add nuw nsw i64 %i.ap, %i.aj
  %.not23.i = icmp ugt i64 %i.aq, %.sroa.12.0
  br i1 %.not23.i, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i
  %.not.i45 = icmp eq i16 %spec.select.i, 0
  br i1 %.not.i45, label %.loopexit122, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.preheader.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  br label %bb.o

bb.o:                                             ; preds = %.noexc, %.lr.ph.i46
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.i46 ], [ %indvars.iv.next.i48, %.noexc ] ; 2 uses
  %i.as = mul nuw nsw i64 %indvars.iv.i47, 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  invoke fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull %i.at, ptr nonnull %.sroa.0102.0, i64 %.sroa.12.0, i1 noundef zeroext %i.v, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !94

.noexc:                                           ; preds = %bb.o
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %i.ao
  br i1 %exitcond.not.i49, label %.loopexit122, label %bb.o, !llvm.loop !1

.loopexit122:                                     ; preds = %.noexc, %.preheader.i
  store ptr @.str.70, ptr %5, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 15, ptr %i.au, align 8, !tbaa !16
  %i.av = invoke noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %5, i64 256, i1 noundef zeroext false)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %.loopexit122
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr @.str.162, ptr %6, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 10, ptr %i.aw, align 8, !tbaa !16
  %i.ax = invoke noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %6, i64 256, i1 noundef zeroext false)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not41 = icmp eq ptr %i.ax, null
  br i1 %.not41, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.033 = phi ptr [ %i.av, %bb.p ], [ %i.ax, %bb.r ] ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ay, align 8 ; 3 uses
  %i.az = and i64 %.sroa.0.0.copyload.i, -4294901761
  %or.cond = icmp eq i64 %i.az, 262
  br i1 %or.cond, label %bb.t, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %.033, i64 38
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !115, !range !116, !noundef !117
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %.033, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = select i1 %i.bc, ptr %i.be, ptr %i.bd
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10
  br label %bb.w

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.s
  %i.bh = and i64 %.sroa.0.0.copyload.i, -4294901761
  %or.cond117 = icmp eq i64 %i.bh, 263
  br i1 %or.cond117, label %bb.u, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit54.thread

bb.u:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %.033, i64 38
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !115, !range !116, !noundef !117
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %.033, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = select i1 %i.bk, ptr %i.bm, ptr %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !10
  br label %bb.w

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit54.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.bp = and i64 %.sroa.0.0.copyload.i, -4294901761
  %or.cond118 = icmp eq i64 %i.bp, 260
  br i1 %or.cond118, label %bb.v, label %.thread

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit54.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %.033, i64 38
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !115, !range !116, !noundef !117
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %.033, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = select i1 %i.bs, ptr %i.bu, ptr %i.bt
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !95
  %i.bx = zext i16 %i.bw to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.032 = phi i32 [ %i.bg, %bb.t ], [ %i.bo, %bb.u ], [ %i.bx, %bb.v ]
  %.not42 = icmp eq i32 %.032, 65535
  br i1 %.not42, label %bb.x, label %.thread

.thread:                                          ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit54.thread, %bb.w
  store ptr @.str.163, ptr %7, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 17, ptr %i.by, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %7)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w, %.thread, %bb.r
  store ptr @.str.164, ptr %8, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 20, ptr %i.bz, align 8, !tbaa !16
  %i.ca = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %8, i32 noundef 0)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.z, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit

bb.z:                                             ; preds = %bb.y
  store ptr @.str.7, ptr %10, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.cc, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %9, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  store ptr @.str.165, ptr %12, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 5, ptr %i.cd, align 8, !tbaa !16
  %i.ce = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %12)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ce, label %bb.ac, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt22canon_maker_tagmap_refEv()
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.cg = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.ch = add nuw nsw i64 %i.cg, 2                ; 2 uses
  %i.ci = icmp ugt i64 %i.ch, %.sroa.12.0
  br i1 %i.ci, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i63

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i63: ; preds = %bb.ad
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0102.0, i64 %i.cg ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 1            ; 2 uses
  %i.cl = call i16 @llvm.bswap.i16(i16 %i.ck)
  %spec.select.i64 = select i1 %i.v, i16 %i.cl, i16 %i.ck ; 2 uses
  %i.cm = zext i16 %spec.select.i64 to i64        ; 2 uses
  %i.cn = mul nuw nsw i64 %i.cm, 12
  %i.co = add nuw nsw i64 %i.cn, %i.ch
  %.not23.i65 = icmp ugt i64 %i.co, %.sroa.12.0
  br i1 %.not23.i65, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %.preheader.i66

.preheader.i66:                                   ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i63
  %.not.i67 = icmp eq i16 %spec.select.i64, 0
  br i1 %.not.i67, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.preheader.i66
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc74, %.lr.ph.i68
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.i68 ], [ %indvars.iv.next.i71, %.noexc74 ] ; 2 uses
  %i.cq = mul nuw nsw i64 %indvars.iv.i70, 12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq
  invoke fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull %i.cr, ptr nonnull %.sroa.0102.0, i64 %.sroa.12.0, i1 noundef zeroext %i.v, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.cf)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !94

.noexc74:                                         ; preds = %bb.ae
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %i.cm
  br i1 %exitcond.not.i72, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread, label %bb.ae, !llvm.loop !1

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %bb.o, %.thread, %.loopexit122, %bb.q, %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread, %bb.ac, %bb.aa, %bb.z, %bb.x
  %lpad.loopexit.split-lp138 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %lpad.loopexit.split-lp138, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %eh.lpad-body

_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread: ; preds = %.noexc74, %.preheader.i66, %bb.ab
  store ptr @.str.164, ptr %13, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 20, ptr %i.cs, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %13, i64 256, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit: ; preds = %bb.ad, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i63, %bb.n, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i, %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread, %bb.y
  %.1 = phi i1 [ true, %bb.y ], [ false, %bb.n ], [ true, %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread ], [ false, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i ], [ false, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i63 ], [ false, %bb.ad ]
  %i.ct = load ptr, ptr %i.z, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ct)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #34
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.i, %_ZNSt3setImSt4lessImESaImEED2Ev.exit
  %.2 = phi i1 [ %.1, %_ZNSt3setImSt4lessImESaImEED2Ev.exit ], [ false, %bb.i ]
  ret i1 %.2
}

declare noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return) local_unnamed_addr #6

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #6

declare void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt22canon_maker_tagmap_refEv() local_unnamed_addr #6

declare void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_111encode_exifERKNS0_9ImageSpecERSt6vectorIcSaIcEENS0_6endianE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %3 = alloca %struct.TIFFHeader, align 8         ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::vector.42", align 8    ; 13 uses
  %7 = alloca %"class.std::vector.42", align 8    ; 16 uses
  %8 = alloca %"class.std::vector.42", align 8    ; 12 uses
  %9 = alloca %"class.std::vector.42", align 8    ; 19 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  %21 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  %22 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 2 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %24 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.k = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.b, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.128, ptr %5, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4, ptr %i.n, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %5, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.d unwind label %bb.e, !inline_history !80

bb.d:                                             ; preds = %bb.c
  %i.o = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !80 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  br label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit

common.resume:                                    ; preds = %_ZNSt6vectorI12TIFFDirEntrySaIS0_EED2Ev.exit190, %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.v, %bb.i ], [ %.pn141.pn.pn, %_ZNSt6vectorI12TIFFDirEntrySaIS0_EED2Ev.exit190 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.q = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, !prof !19

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  %.not.i146 = icmp eq i32 %i.s, 0
  br i1 %.not.i146, label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.1, ptr %4, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.t, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %4, ptr nonnull @_ZN11OpenImageIO4v3_1L13gps_tag_tableE, i64 32)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  br label %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T) #32
  br label %common.resume

_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit: ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !118
  %i.y = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 65535
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !99 ; 2 uses
  br i1 %i.ac, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIcSaIcEE7reserveEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.aa
  %i.ah = call noalias noundef nonnull dereferenceable(65535) ptr @_Znwm(i64 noundef 65535) #30 ; 6 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !100   ; 4 uses
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !99
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %bb.j, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.ai, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.j, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !118
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.aq) #31
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.k, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.ah, ptr %1, align 8, !tbaa !100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag ; 2 uses
  store ptr %i.ar, ptr %i.ad, align 8, !tbaa !99
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 65535
  store ptr %i.as, ptr %i.w, align 8, !tbaa !118
  %.pre219 = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIcSaIcEE7reserveEm.exit

_ZNSt6vectorIcSaIcEE7reserveEm.exit:              ; preds = %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i
  %.pre-phi = phi i64 [ %.pre219, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i ], [ %i.aa, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit ]
  %i.at = phi ptr [ %i.ah, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i ], [ %i.y, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit ]
  %i.au = phi ptr [ %i.ar, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i ], [ %i.ae, %_ZN11OpenImageIO4v3_13pvt14gps_tagmap_refEv.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.aw, %.pre-phi                ; 14 uses
  %i.ay = icmp eq i32 %2, 1234                    ; 6 uses
  %spec.select262 = select i1 %i.ay, i64 2771273, i64 704662861
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %spec.select262, ptr %3, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ba, ptr noundef nonnull %3, ptr noundef nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !168 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !168 ; 2 uses
  %.not197 = icmp eq ptr %i.bc, %i.be
  br i1 %.not197, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIcSaIcEE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.l

._crit_edge:                                      ; preds = %bb.u, %_ZNSt6vectorIcSaIcEE7reserveEm.exit
  store ptr @.str.7, ptr %15, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 4, ptr %i.bj, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %14, ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %15, ptr noundef nonnull dead_on_return %16)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.0194.0198 = phi ptr [ %i.bc, %.lr.ph ], [ %i.by, %bb.u ] ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.0194.0198, align 8, !tbaa !101 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !120, !noalias !169
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit: ; preds = %bb.l, %bb.m
  %.0.i.i = phi i64 [ %i.bl, %bb.m ], [ 0, %bb.l ]
  store ptr %.sroa.0.0.copyload.i, ptr %10, align 8, !tbaa !15, !alias.scope !169
  store i64 %.0.i.i, ptr %i.bf, align 8, !tbaa !16, !alias.scope !169
  store ptr @.str.166, ptr %11, align 8, !tbaa !15
  store i64 4, ptr %i.bg, align 8, !tbaa !16
  %i.bm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil11starts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %.sroa.0.0.copyload.i147 = load ptr, ptr %.sroa.0194.0198, align 8, !tbaa !101 ; 5 uses
  %.not.i.i148 = icmp eq ptr %.sroa.0.0.copyload.i147, null ; 2 uses
  br i1 %i.bm, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  br i1 %.not.i.i148, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit150, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i147, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !120, !noalias !170
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit150

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit150: ; preds = %bb.o, %bb.p
  %.0.i.i149 = phi i64 [ %i.bo, %bb.p ], [ 0, %bb.o ]
  store ptr %.sroa.0.0.copyload.i147, ptr %12, align 8, !tbaa !15, !alias.scope !170
  store i64 %.0.i.i149, ptr %i.bi, align 8, !tbaa !16, !alias.scope !170
  %i.bp = invoke noundef i32 @_ZNK11OpenImageIO4v3_13pvt6TagMap3tagENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %12)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit150
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %.invoke, label %bb.u

.invoke:                                          ; preds = %bb.q, %bb.t
  %i.br = phi i32 [ %i.bw, %bb.t ], [ %i.bp, %bb.q ]
  %i.bs = phi ptr [ %., %bb.t ], [ %8, %bb.q ]
  %.in = phi ptr [ @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, %bb.t ], [ @_ZZN11OpenImageIO4v3_13pvt14gps_tagmap_refEvE1T, %bb.q ]
  %i.bt = load ptr, ptr %.in, align 8
  invoke fastcc void @_ZN11OpenImageIO4v3_1L17encode_exif_entryERKNS0_10ParamValueEiRSt6vectorI12TIFFDirEntrySaIS5_EERS4_IcSaIcEERKNS0_3pvt6TagMapEmNS0_6endianE(ptr noundef nonnull align 8 dereferenceable(39) %.sroa.0194.0198, i32 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bt, i64 noundef %i.ax, i32 noundef %2)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  br i1 %.not.i.i148, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit154, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i147, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !120, !noalias !171
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit154

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit154: ; preds = %bb.r, %bb.s
  %.0.i.i153 = phi i64 [ %i.bv, %bb.s ], [ 0, %bb.r ]
  store ptr %.sroa.0.0.copyload.i147, ptr %13, align 8, !tbaa !15, !alias.scope !171
  store i64 %.0.i.i153, ptr %i.bh, align 8, !tbaa !16, !alias.scope !171
  %i.bw = invoke noundef i32 @_ZNK11OpenImageIO4v3_13pvt6TagMap3tagENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %13)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit154
  %i.bx = add i32 %i.bw, -42017
  %or.cond = icmp ult i32 %i.bx, -8583
  %. = select i1 %or.cond, ptr %6, ptr %7
  br label %.invoke

bb.u:                                             ; preds = %.invoke, %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0194.0198, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.by, %i.be
  br i1 %.not, label %._crit_edge, label %bb.l

bb.v:                                             ; preds = %._crit_edge
  store ptr @.str.165, ptr %17, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 5, ptr %i.bz, align 8, !tbaa !16
  %i.ca = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %17)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  br i1 %i.ca, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11OpenImageIO4v3_13pvt22encode_canon_makernoteERSt6vectorIcSaIcEERS2_I12TIFFDirEntrySaIS6_EERKNS0_9ImageSpecEm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %i.ax)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
end_hunk_2
begin_hunk_3_@"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEEZN11OpenImageIO4v3_111encode_exifERKNS9_9ImageSpecERS4_IcSaIcEENS9_6endianEE3$_0EvT_SI_T0_":bb.a

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i
  %.sroa.0.023.i.add.i.i = add nuw nsw i64 %.sroa.0.023.i.idx.i.i, 12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.023.i.add.i.i, 192
  br i1 %.not.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit.i.i", label %bb.c, !llvm.loop !187

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit.i.i": ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.not8.i.i.i = icmp eq ptr %i.s, %1
  br i1 %.not8.i.i.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit", label %.lr.ph.i13.i.i

.lr.ph.i13.i.i:                                   ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit.i.i"
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i13.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.us.i.i.i"
  %.sroa.0.09.us.i.i.i = phi ptr [ %i.v, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.us.i.i.i" ], [ %i.s, %.lr.ph.i13.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i)
  %.sroa.04.0.copyload.i.us.i.i.i = load i16, ptr %.sroa.0.09.us.i.i.i, align 4, !tbaa !95 ; 3 uses
  %.sroa.5.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.us.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.i.i12.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx.i.us.i.i.i, i64 10, i1 false), !tbaa.struct !189
  %.sroa.0.011.i.us.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.us.i.i.i, i64 -12 ; 2 uses
  %.val3.i12.i.us.i.i.i = load i16, ptr %.sroa.0.011.i.us.i.i.i, align 4, !tbaa !97
  %i.t = icmp ult i16 %.sroa.04.0.copyload.i.us.i.i.i, %.val3.i12.i.us.i.i.i
  br i1 %i.t, label %.lr.ph.split.us.i.us.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.us.i.i.i"

.lr.ph.split.us.i.us.i.i.i:                       ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.split.us.i.us.i.i.i
  %.sroa.0.015.us.i.us.i.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i.i, %.lr.ph.split.us.i.us.i.i.i ], [ %.sroa.0.011.i.us.i.i.i, %.lr.ph.split.us.i.i.i ] ; 4 uses
  %.sroa.08.014.us.i.us.i.i.i = phi ptr [ %.sroa.0.015.us.i.us.i.i.i, %.lr.ph.split.us.i.us.i.i.i ], [ %.sroa.0.09.us.i.i.i, %.lr.ph.split.us.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.014.us.i.us.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.015.us.i.us.i.i.i, i64 12, i1 false), !tbaa.struct !107
  %.sroa.0.0.us.i.us.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.015.us.i.us.i.i.i, i64 -12 ; 2 uses
  %.val3.i.us.i.us.i.i.i = load i16, ptr %.sroa.0.0.us.i.us.i.i.i, align 4, !tbaa !97
  %i.u = icmp ult i16 %.sroa.04.0.copyload.i.us.i.i.i, %.val3.i.us.i.us.i.i.i
  br i1 %i.u, label %.lr.ph.split.us.i.us.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.us.i.i.i", !llvm.loop !186

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.us.i.i.i": ; preds = %.lr.ph.split.us.i.us.i.i.i, %.lr.ph.split.us.i.i.i
  %.sroa.08.0.lcssa.i.us.i.i.i = phi ptr [ %.sroa.0.09.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0.015.us.i.us.i.i.i, %.lr.ph.split.us.i.us.i.i.i ] ; 2 uses
  store i16 %.sroa.04.0.copyload.i.us.i.i.i, ptr %.sroa.08.0.lcssa.i.us.i.i.i, align 4, !tbaa !95
  %.sroa.5.0..sroa_idx6.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.us.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx6.i.us.i.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.i.i12.i.i, i64 10, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.09.us.i.i.i, i64 12 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.us.i.i.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit", label %.lr.ph.split.us.i.i.i, !llvm.loop !188

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i13.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i17.i.i"
  %.sroa.0.09.i.i.i = phi ptr [ %i.ab, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i17.i.i" ], [ %i.s, %.lr.ph.i13.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i)
  %.sroa.04.0.copyload.i.i.i.i = load i16, ptr %.sroa.0.09.i.i.i, align 4, !tbaa !95 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i15.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.i.i12.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx.i.i15.i.i, i64 10, i1 false), !tbaa.struct !189
  %i.w = tail call i16 @llvm.bswap.i16(i16 %.sroa.04.0.copyload.i.i.i.i) ; 2 uses
  %.sroa.0.011.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -12 ; 2 uses
  %.val3.i12.i.i16.i.i = load i16, ptr %.sroa.0.011.i.i.i.i, align 4, !tbaa !97
  %i.x = tail call i16 @llvm.bswap.i16(i16 %.val3.i12.i.i16.i.i)
  %i.y = icmp ult i16 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.split.i.i21.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i17.i.i"

.lr.ph.split.i.i21.i.i:                           ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.i.i21.i.i
  %.sroa.0.015.i.i22.i.i = phi ptr [ %.sroa.0.0.i.i24.i.i, %.lr.ph.split.i.i21.i.i ], [ %.sroa.0.011.i.i.i.i, %.lr.ph.split.i.i.i ] ; 4 uses
  %.sroa.08.014.i.i23.i.i = phi ptr [ %.sroa.0.015.i.i22.i.i, %.lr.ph.split.i.i21.i.i ], [ %.sroa.0.09.i.i.i, %.lr.ph.split.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.014.i.i23.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.015.i.i22.i.i, i64 12, i1 false), !tbaa.struct !107
  %.sroa.0.0.i.i24.i.i = getelementptr inbounds i8, ptr %.sroa.0.015.i.i22.i.i, i64 -12 ; 2 uses
  %.val3.i.i.i25.i.i = load i16, ptr %.sroa.0.0.i.i24.i.i, align 4, !tbaa !97
  %i.z = tail call i16 @llvm.bswap.i16(i16 %.val3.i.i.i25.i.i)
  %i.aa = icmp ult i16 %i.w, %i.z
  br i1 %i.aa, label %.lr.ph.split.i.i21.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i17.i.i", !llvm.loop !186

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i17.i.i": ; preds = %.lr.ph.split.i.i21.i.i, %.lr.ph.split.i.i.i
  %.sroa.08.0.lcssa.i.i18.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.split.i.i.i ], [ %.sroa.0.015.i.i22.i.i, %.lr.ph.split.i.i21.i.i ] ; 2 uses
  store i16 %.sroa.04.0.copyload.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i18.i.i, align 4, !tbaa !95
  %.sroa.5.0..sroa_idx6.i.i19.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i18.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx6.i.i19.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.i.i12.i.i, i64 10, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i, i64 12 ; 2 uses
  %.not.i20.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i20.i.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit", label %.lr.ph.split.i.i.i, !llvm.loop !188

.preheader.i28.i.i:                               ; preds = %bb.b
  %.sroa.0.020.i29.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not21.i30.i.i = icmp eq ptr %.sroa.0.020.i29.i.i, %1
  br i1 %.not21.i30.i.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit", label %.lr.ph.i31.i.i

.lr.ph.i31.i.i:                                   ; preds = %.preheader.i28.i.i
  %.not.i.i.i32.i.i = icmp eq i32 %.fr.i.i27.i.i, 1234 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i31.i.i
  %.sroa.0.023.i33.i.i = phi ptr [ %.sroa.0.020.i29.i.i, %.lr.ph.i31.i.i ], [ %.sroa.0.0.i45.i.i, %bb.o ] ; 8 uses
  %.pn22.i34.i.i = phi ptr [ %0, %.lr.ph.i31.i.i ], [ %.sroa.0.023.i33.i.i, %bb.o ] ; 6 uses
  %.val1.i.i35.i.i = load i16, ptr %.sroa.0.023.i33.i.i, align 4, !tbaa !97 ; 4 uses
  %.val2.i.i36.i.i = load i16, ptr %0, align 4, !tbaa !97 ; 2 uses
  %i.ac = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i35.i.i) ; 2 uses
  %i.ad = tail call i16 @llvm.bswap.i16(i16 %.val2.i.i36.i.i)
  %.010.i.i.i37.i.i = select i1 %.not.i.i.i32.i.i, i16 %.val1.i.i35.i.i, i16 %i.ac ; 2 uses
  %.0.i.i.i38.i.i = select i1 %.not.i.i.i32.i.i, i16 %.val2.i.i36.i.i, i16 %i.ad
  %i.ae = icmp ult i16 %.010.i.i.i37.i.i, %.0.i.i.i38.i.i
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.023.i33.i.i, i64 12, i1 false), !tbaa.struct !107
  %i.af = ptrtoint ptr %.sroa.0.023.i33.i.i to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 12
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !69

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn22.i34.i.i, i64 24
  %.neg28.i59.i.i = udiv exact i64 %i.ag, 12
  %.neg28.neg.i60.i.i = sub nsw i64 0, %.neg28.i59.i.i
  %i.aj = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %.neg28.neg.i60.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aj, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i58.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp eq i64 %i.ag, 12
  br i1 %i.ak, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i58.i.i

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.pn22.i34.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !107
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i58.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i58.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i26.i.i)
  %.sroa.5.0..sroa_idx.i.i39.i.i = getelementptr inbounds nuw i8, ptr %.pn22.i34.i.i, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.i.i26.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx.i.i39.i.i, i64 10, i1 false), !tbaa.struct !189
  %.val3.i12.i.i40.i.i = load i16, ptr %.pn22.i34.i.i, align 4, !tbaa !97 ; 2 uses
  %i.am = tail call i16 @llvm.bswap.i16(i16 %.val3.i12.i.i40.i.i)
  %.0.i.i13.i.i41.i.i = select i1 %.not.i.i.i32.i.i, i16 %.val3.i12.i.i40.i.i, i16 %i.am
  %i.an = icmp ult i16 %.010.i.i.i37.i.i, %.0.i.i13.i.i41.i.i
  br i1 %i.an, label %.lr.ph.i.i47.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i42.i.i"

.lr.ph.i.i47.i.i:                                 ; preds = %bb.n
  br i1 %.not.i.i.i32.i.i, label %.lr.ph.split.us.i.i53.i.i, label %.lr.ph.split.i.i48.i.i

.lr.ph.split.us.i.i53.i.i:                        ; preds = %.lr.ph.i.i47.i.i, %.lr.ph.split.us.i.i53.i.i
  %.sroa.0.015.us.i.i54.i.i = phi ptr [ %.sroa.0.0.us.i.i56.i.i, %.lr.ph.split.us.i.i53.i.i ], [ %.pn22.i34.i.i, %.lr.ph.i.i47.i.i ] ; 4 uses
  %.sroa.08.014.us.i.i55.i.i = phi ptr [ %.sroa.0.015.us.i.i54.i.i, %.lr.ph.split.us.i.i53.i.i ], [ %.sroa.0.023.i33.i.i, %.lr.ph.i.i47.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.014.us.i.i55.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.015.us.i.i54.i.i, i64 12, i1 false), !tbaa.struct !107
  %.sroa.0.0.us.i.i56.i.i = getelementptr inbounds i8, ptr %.sroa.0.015.us.i.i54.i.i, i64 -12 ; 2 uses
  %.val3.i.us.i.i57.i.i = load i16, ptr %.sroa.0.0.us.i.i56.i.i, align 4, !tbaa !97
  %i.ao = icmp ult i16 %.val1.i.i35.i.i, %.val3.i.us.i.i57.i.i
  br i1 %i.ao, label %.lr.ph.split.us.i.i53.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i42.i.i", !llvm.loop !186

.lr.ph.split.i.i48.i.i:                           ; preds = %.lr.ph.i.i47.i.i, %.lr.ph.split.i.i48.i.i
  %.sroa.0.015.i.i49.i.i = phi ptr [ %.sroa.0.0.i.i51.i.i, %.lr.ph.split.i.i48.i.i ], [ %.pn22.i34.i.i, %.lr.ph.i.i47.i.i ] ; 4 uses
  %.sroa.08.014.i.i50.i.i = phi ptr [ %.sroa.0.015.i.i49.i.i, %.lr.ph.split.i.i48.i.i ], [ %.sroa.0.023.i33.i.i, %.lr.ph.i.i47.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.014.i.i50.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.015.i.i49.i.i, i64 12, i1 false), !tbaa.struct !107
  %.sroa.0.0.i.i51.i.i = getelementptr inbounds i8, ptr %.sroa.0.015.i.i49.i.i, i64 -12 ; 2 uses
  %.val3.i.i.i52.i.i = load i16, ptr %.sroa.0.0.i.i51.i.i, align 4, !tbaa !97
  %i.ap = tail call i16 @llvm.bswap.i16(i16 %.val3.i.i.i52.i.i)
  %i.aq = icmp ult i16 %i.ac, %i.ap
  br i1 %i.aq, label %.lr.ph.split.i.i48.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i42.i.i", !llvm.loop !186

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i42.i.i": ; preds = %.lr.ph.split.i.i48.i.i, %.lr.ph.split.us.i.i53.i.i, %bb.n
  %.sroa.08.0.lcssa.i.i43.i.i = phi ptr [ %.sroa.0.023.i33.i.i, %bb.n ], [ %.sroa.0.015.us.i.i54.i.i, %.lr.ph.split.us.i.i53.i.i ], [ %.sroa.0.015.i.i49.i.i, %.lr.ph.split.i.i48.i.i ] ; 2 uses
  store i16 %.val1.i.i35.i.i, ptr %.sroa.08.0.lcssa.i.i43.i.i, align 4, !tbaa !95
  %.sroa.5.0..sroa_idx6.i.i44.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i43.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx6.i.i44.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.i.i26.i.i, i64 10, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i26.i.i)
  br label %bb.o

bb.o:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i42.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i58.i.i
  %.sroa.0.0.i45.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i33.i.i, i64 12 ; 2 uses
  %.not.i46.i.i = icmp eq ptr %.sroa.0.0.i45.i.i, %1
  br i1 %.not.i46.i.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit", label %bb.i, !llvm.loop !187

"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit": ; preds = %bb.o, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i17.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.us.i.i.i", %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit.i.i", %.preheader.i28.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_115exif_tag_lookupENS0_17basic_string_viewIcSt11char_traitsIcEEERiS5_S5_(ptr nofree noundef readonly captures(none) dead_on_return %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.128, ptr %4, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %4, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.d unwind label %bb.e, !inline_history !80

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !80 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  br label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !80
  resume { ptr, i32 } %i.f

_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.g = load ptr, ptr %0, align 8, !tbaa !15
  store ptr %i.g, ptr %5, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  store i64 %i.j, ptr %i.h, align 8, !tbaa !16
  %i.k = call noundef ptr @_ZNK11OpenImageIO4v3_13pvt6TagMap4findENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %5) ; 4 uses
  %.not = icmp ne ptr %i.k, null                  ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit
  %i.l = load i32, ptr %i.k, align 8, !tbaa !79
  store i32 %i.l, ptr %1, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !77
  store i32 %i.n, ptr %2, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78
  store i32 %i.p, ptr %3, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, %bb.f
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.175() #14 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !40
  %i.g = icmp eq i16 %i.f, -1
  br i1 %i.g, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !57
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store i16 -1, ptr %i.e, align 4, !tbaa !40
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !121
  br label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.o = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = ptrtoaddr ptr %i.b to i64
  %i.g = add i64 %i.e, -24
  %i.h = sub i64 %i.g, %i.f                       ; 2 uses
  %i.i = udiv i64 %i.h, 24
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.j, 2305843009213693944      ; 3 uses
  %i.k = mul i64 %n.vec, 24
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue23, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue23 ] ; 2 uses
  %i.m = mul i64 %index, 24                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep3 = getelementptr i8, ptr %i.n, i64 24 ; 2 uses
  %i.o = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep4 = getelementptr i8, ptr %i.o, i64 48 ; 2 uses
  %i.p = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep5 = getelementptr i8, ptr %i.p, i64 72 ; 2 uses
  %i.q = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep6 = getelementptr i8, ptr %i.q, i64 96 ; 2 uses
  %i.r = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep7 = getelementptr i8, ptr %i.r, i64 120 ; 2 uses
  %i.s = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep8 = getelementptr i8, ptr %i.s, i64 144 ; 2 uses
  %i.t = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep9 = getelementptr i8, ptr %i.t, i64 168 ; 2 uses
  %i.u = load i16, ptr %next.gep, align 8, !tbaa !23
  %i.v = load i16, ptr %next.gep3, align 8, !tbaa !23
  %i.w = load i16, ptr %next.gep4, align 8, !tbaa !23
  %i.x = load i16, ptr %next.gep5, align 8, !tbaa !23
  %i.y = load i16, ptr %next.gep6, align 8, !tbaa !23
  %i.z = load i16, ptr %next.gep7, align 8, !tbaa !23
  %i.aa = load i16, ptr %next.gep8, align 8, !tbaa !23
  %i.ab = load i16, ptr %next.gep9, align 8, !tbaa !23
  %i.ac = insertelement <8 x i16> poison, i16 %i.u, i64 0
  %i.ad = insertelement <8 x i16> %i.ac, i16 %i.v, i64 1
  %i.ae = insertelement <8 x i16> %i.ad, i16 %i.w, i64 2
  %i.af = insertelement <8 x i16> %i.ae, i16 %i.x, i64 3
  %i.ag = insertelement <8 x i16> %i.af, i16 %i.y, i64 4
  %i.ah = insertelement <8 x i16> %i.ag, i16 %i.z, i64 5
  %i.ai = insertelement <8 x i16> %i.ah, i16 %i.aa, i64 6
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.ab, i64 7
  %i.ak = icmp ne <8 x i16> %i.aj, splat (i16 -1) ; 8 uses
  %i.al = extractelement <8 x i1> %i.ak, i64 0
  br i1 %i.al, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %next.gep, align 8, !tbaa !23
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.am = extractelement <8 x i1> %i.ak, i64 1
  br i1 %i.am, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %next.gep3, align 8, !tbaa !23
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue
  %i.an = extractelement <8 x i1> %i.ak, i64 2
  br i1 %i.an, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  store i16 -1, ptr %next.gep4, align 8, !tbaa !23
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.ao = extractelement <8 x i1> %i.ak, i64 3
  br i1 %i.ao, label %pred.store.if14, label %pred.store.continue15

end_hunk_3
