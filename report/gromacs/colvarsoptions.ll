Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarsoptions?download=true
inline.NumInlined: 1847
inline.NumDeleted: 920
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE:bb.a
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.d, ptr %i.a, align 8, !tbaa !25
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !21
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.j, ptr %i.e, align 8, !tbaa !24
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !24
  store i8 %i.l, ptr %i.k, align 1, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !22
  %i.o = load ptr, ptr %0, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.t) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.w = load i64, ptr %i.e, align 8, !tbaa !24
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !24
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx14ColvarsOptions18processTemperatureERKNS_19EnsembleTemperatureE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(336) initializes((288, 292)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #20 align 2 {
_ZNKRSt8optionalIfE5valueEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !564, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load float, ptr %1, align 4
  %spec.select = select i1 %i.c, float %i.d, float -1.000000e+00
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  store float %spec.select, ptr %i.e, align 8, !tbaa !116
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3gmx14ColvarsOptions15colvarsFileNameB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(336) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3gmx14ColvarsOptions20colvarsConfigContentB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(336) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK3gmx14ColvarsOptions17colvarsAtomCoordsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(336) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3gmx14ColvarsOptions19colvarsOutputPrefixB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(336) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK3gmx14ColvarsOptions14colvarsEnsTempEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(336) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZNK3gmx14ColvarsOptions17colvarsInputFilesB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(336) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK3gmx14ColvarsOptions11colvarsSeedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx14ColvarsOptions13setParametersERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK7t_atomsNS_8ArrayRefIKNS_11BasicVectorIfEEEE7PbcTypePA3_Kff(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr %3, ptr %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, float noundef %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add nuw i64 %i.b, 160
  %i.d = add nuw i64 %i.b, 292
  %i.e = add i64 %i.a, 36
  %rt.bound0 = icmp ult i64 %i.c, %i.e
  %rt.bound1 = icmp ugt i64 %i.d, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !151
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %3, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %4, ptr %.sroa.2.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %5, ptr %i.i, align 8, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.k = load <8 x float>, ptr %6, align 4, !tbaa !120
  store <8 x float> %i.k, ptr %i.j, align 4, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.m = load float, ptr %i.l, align 4, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212
  store float %i.m, ptr %i.n, align 4, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  store float %7, ptr %i.o, align 8, !tbaa !116
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !151
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %3, ptr %i.r, align 8
  %.sroa.2.0..sroa_idx.scalar = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %4, ptr %.sroa.2.0..sroa_idx.scalar, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %5, ptr %i.s, align 8, !tbaa !115
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.u = load float, ptr %6, align 4, !tbaa !120
  store float %i.u, ptr %i.t, align 4, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !120
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %i.w, ptr %i.x, align 8, !tbaa !120
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !120
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float %i.z, ptr %i.aa, align 4, !tbaa !120
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load float, ptr %i.ab, align 4, !tbaa !120
  store float %i.ad, ptr %i.ac, align 8, !tbaa !120
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !120
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 196
  store float %i.af, ptr %i.ag, align 4, !tbaa !120
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !120
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float %i.ai, ptr %i.aj, align 8, !tbaa !120
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.am = load float, ptr %i.ak, align 4, !tbaa !120
  store float %i.am, ptr %i.al, align 4, !tbaa !120
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ao = load float, ptr %i.an, align 4, !tbaa !120
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 208
  store float %i.ao, ptr %i.ap, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !120
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 212
  store float %i.ar, ptr %i.as, align 4, !tbaa !120
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 288
  store float %7, ptr %i.at, align 8, !tbaa !116
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !566  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !24
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !24
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !565

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_colvarsoptions.cpp() #22 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_112c_activeTag_B5cxx11E, i64 16), ptr @_ZN3gmx12_GLOBAL__N_112c_activeTag_B5cxx11E, align 8, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_112c_activeTag_B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_112c_activeTag_B5cxx11E, i64 8), align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_112c_activeTag_B5cxx11E, i64 22), align 2, !tbaa !24
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN3gmx12_GLOBAL__N_112c_activeTag_B5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_121c_colvarsFileNameTag_B5cxx11E, i64 16), ptr @_ZN3gmx12_GLOBAL__N_121c_colvarsFileNameTag_B5cxx11E, align 8, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_121c_colvarsFileNameTag_B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_121c_colvarsFileNameTag_B5cxx11E, i64 8), align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_121c_colvarsFileNameTag_B5cxx11E, i64 26), align 2, !tbaa !24
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN3gmx12_GLOBAL__N_121c_colvarsFileNameTag_B5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_117c_colvarsSeedTag_B5cxx11E, i64 16), ptr @_ZN3gmx12_GLOBAL__N_117c_colvarsSeedTag_B5cxx11E, align 8, !tbaa !23
  store i32 1684366707, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_117c_colvarsSeedTag_B5cxx11E, i64 16), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_117c_colvarsSeedTag_B5cxx11E, i64 8), align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_117c_colvarsSeedTag_B5cxx11E, i64 20), align 4, !tbaa !24
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN3gmx12_GLOBAL__N_117c_colvarsSeedTag_B5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_118c_inputStreamsTag_B5cxx11E, i64 16), ptr @_ZN3gmx12_GLOBAL__N_118c_inputStreamsTag_B5cxx11E, align 8, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_118c_inputStreamsTag_B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(12) @.str.7, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_118c_inputStreamsTag_B5cxx11E, i64 8), align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_118c_inputStreamsTag_B5cxx11E, i64 28), align 4, !tbaa !24
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN3gmx12_GLOBAL__N_118c_inputStreamsTag_B5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_118c_configStringTag_B5cxx11E, i64 16), ptr @_ZN3gmx12_GLOBAL__N_118c_configStringTag_B5cxx11E, align 8, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_118c_configStringTag_B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(12) @.str.9, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_118c_configStringTag_B5cxx11E, i64 8), align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_118c_configStringTag_B5cxx11E, i64 28), align 4, !tbaa !24
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN3gmx12_GLOBAL__N_118c_configStringTag_B5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_120c_startingCoordsTag_B5cxx11E, i64 16), ptr @_ZN3gmx12_GLOBAL__N_120c_startingCoordsTag_B5cxx11E, align 8, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_120c_startingCoordsTag_B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(14) @.str.11, i64 14, i1 false)
  store i64 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_120c_startingCoordsTag_B5cxx11E, i64 8), align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_120c_startingCoordsTag_B5cxx11E, i64 30), align 2, !tbaa !24
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN3gmx12_GLOBAL__N_120c_startingCoordsTag_B5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_113c_ensTempTag_B5cxx11E, i64 16), ptr @_ZN3gmx12_GLOBAL__N_113c_ensTempTag_B5cxx11E, align 8, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_113c_ensTempTag_B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(7) @.str.13, i64 7, i1 false)
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_113c_ensTempTag_B5cxx11E, i64 8), align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_113c_ensTempTag_B5cxx11E, i64 23), align 1, !tbaa !24
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN3gmx12_GLOBAL__N_113c_ensTempTag_B5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { cold noreturn }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !39}
!1 = distinct !{null, null, null, null, null}
!2 = distinct !{null, null, null, null}
!3 = distinct !{!3, !39}
!4 = distinct !{null, null, null}
!5 = distinct !{ptr @_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev, null, null, null, null, null, null, null}
!6 = distinct !{!6, !39}
!7 = !{i32 7, !"openmp", i32 51}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!"long", !12, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !19, i64 8, !12, i64 16}
!21 = !{!20, !17, i64 0}
!22 = !{!20, !19, i64 8}
!23 = !{!18, !17, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!19, !19, i64 0}
!26 = !{!"vtable pointer", !11, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"p1 _ZTSSt9type_info", !16, i64 0}
!29 = !{!"_ZTSSt10type_index", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"_ZTSSt14_Function_base", !12, i64 0, !16, i64 16}
!32 = !{!"_ZTSSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_EE", !31, i64 0, !16, i64 24}
!33 = !{!32, !16, i64 24}
!34 = !{!31, !16, i64 16}
!35 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 0}
!38 = !{!36, !35, i64 8}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!36, !35, i64 16}
!41 = !{!"any p2 pointer", !16, i64 0}
!42 = !{!"_ZTSN3gmx18IMdpOptionProviderE"}
!43 = !{!"bool", !12, i64 0}
!44 = !{!"p1 _ZTS6t_atom", !16, i64 0}
!45 = !{!"any p3 pointer", !41, i64 0}
!46 = !{!"p3 omnipotent char", !45, i64 0}
!47 = !{!"p1 _ZTS9t_resinfo", !16, i64 0}
!48 = !{!"p1 _ZTS9t_pdbinfo", !16, i64 0}
!49 = !{!"_ZTS7t_atoms", !13, i64 0, !44, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !13, i64 40, !47, i64 48, !48, i64 56, !43, i64 64, !43, i64 65, !43, i64 66, !43, i64 67, !43, i64 68}
!50 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !16, i64 0}
!51 = !{!"_ZTSN3gmx12ArrayRefIterIKNS_11BasicVectorIfEEEE", !50, i64 0}
!52 = !{!"_ZTSN3gmx8ArrayRefIKNS_11BasicVectorIfEEEE", !51, i64 0, !51, i64 8}
!53 = !{!"_ZTS7PbcType", !12, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !56, i64 0}
!58 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!59 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !58, i64 0}
!60 = !{!"_ZTSSt14_Rb_tree_color", !12, i64 0}
!61 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!62 = !{!"_ZTSSt18_Rb_tree_node_base", !60, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!63 = !{!"_ZTSSt15_Rb_tree_header", !62, i64 0, !19, i64 32}
!64 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !59, i64 0, !63, i64 8}
!65 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !64, i64 0}
!66 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE", !65, i64 0}
!67 = !{!"float", !12, i64 0}
!68 = !{!"p1 _ZTSN3gmx8MDLoggerE", !16, i64 0}
!69 = !{!"_ZTSN3gmx14ColvarsOptionsE", !42, i64 0, !43, i64 8, !20, i64 16, !13, i64 48, !20, i64 56, !49, i64 88, !52, i64 160, !53, i64 176, !12, i64 180, !57, i64 216, !66, i64 240, !67, i64 288, !68, i64 296, !20, i64 304}
!70 = !{!69, !43, i64 8}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!63, !61, i64 8}
!74 = !{!54, !50, i64 0}
!75 = !{!54, !50, i64 16}
!76 = !{!16, !16, i64 0}
!77 = !{!"_ZTSSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !31, i64 0, !16, i64 24}
!78 = !{!77, !16, i64 24}
!79 = !{!"_ZTSSt8functionIFiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !31, i64 0, !16, i64 24}
!80 = !{!79, !16, i64 24}
!81 = !{!"p1 _ZTSN3gmx32KeyValueTreeTransformRuleBuilderE", !16, i64 0}
!82 = !{!"_ZTSN3gmx32KeyValueTreeTransformRuleBuilder4BaseE", !81, i64 0}
!83 = !{!82, !81, i64 0}
!84 = !{i64 0, i64 16, !24}
!85 = !{!"_ZTSSt8functionIFN3gmx3AnyERKS1_EE", !31, i64 0, !16, i64 24}
!86 = !{!85, !16, i64 24}
!87 = !{!28, !28, i64 0}
!88 = !{!"p1 _ZTSN3gmx3Any8IContentE", !16, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"_ZTSSt9type_info", !17, i64 8}
!91 = !{!90, !17, i64 8}
!92 = !{!"_ZTSN3gmx3Any8IContentE"}
!93 = !{!"_ZTSN3gmx3Any7ContentIbEE", !92, i64 0, !43, i64 8}
!94 = !{!93, !43, i64 8}
!95 = !{!43, !43, i64 0}
!96 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx3Any8IContentELb0EE", !88, i64 0}
!97 = !{!96, !88, i64 0}
!98 = !{!"_ZTSN3gmx3Any7ContentIiEE", !92, i64 0, !13, i64 8}
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!365 = distinct !{!365, !364, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!366 = distinct !{!366, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!367 = distinct !{!367, !366, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!368 = distinct !{!368, !"_ZN3gmx19KeyValueTreeBuilder11createValueIiEENS_17KeyValueTreeValueERKT_"}
!369 = distinct !{!369, !368, !"_ZN3gmx19KeyValueTreeBuilder11createValueIiEENS_17KeyValueTreeValueERKT_: argument 0"}
!370 = distinct !{!370, !"_ZN3gmx3Any6createIiEES0_RKT_"}
!371 = distinct !{!371, !370, !"_ZN3gmx3Any6createIiEES0_RKT_: argument 0"}
!372 = !{!304}
!373 = !{!306}
!374 = !{!308}
!375 = !{!51, !50, i64 0}
!376 = !{!101, !101, i64 0}
!377 = !{!310}
!378 = !{!312}
!379 = !{!314}
!380 = !{!316}
!381 = !{!318}
!382 = !{!320}
!383 = !{!324, !322}
!384 = !{!326}
!385 = !{!327}
!386 = !{!327, !329}
!387 = !{!326, !330}
!388 = !{!335}
!389 = !{!336}
!390 = !{!336, !338}
!391 = !{!335, !339}
!392 = !{!343}
!393 = !{!344}
!394 = !{!344, !346}
!395 = !{!343, !347}
!396 = !{!352}
!397 = !{!354}
!398 = !{!356}
!399 = !{!358}
!400 = !{!360, !358}
!401 = !{!363}
!402 = !{!365}
!403 = !{!367}
!404 = !{!369}
!405 = !{!371, !369}
!406 = distinct !{!406, !39}
!407 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !16, i64 0}
!408 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !407, i64 0, !407, i64 8, !407, i64 16}
!409 = !{!408, !407, i64 0}
!410 = !{!408, !407, i64 8}
!411 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !16, i64 0}
!412 = !{!411, !16, i64 0}
!413 = !{!408, !407, i64 16}
!414 = distinct !{!414, !"_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv"}
!415 = distinct !{!415, !414, !"_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv: argument 0"}
!416 = distinct !{!416, !"_ZN3gmx3Any6createINS_17KeyValueTreeArrayEEES0_OT_"}
!417 = distinct !{!417, !416, !"_ZN3gmx3Any6createINS_17KeyValueTreeArrayEEES0_OT_: argument 0"}
!418 = distinct !{null, null, null, null}
!419 = !{!415}
!420 = !{!417, !415}
!421 = distinct !{null}
!422 = distinct !{ptr @_ZN3gmx17KeyValueTreeArrayD2Ev, ptr @_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev, null, null, null, null, null, null, null}
!423 = distinct !{ptr @_ZN3gmx3Any7ContentINS_17KeyValueTreeArrayEED2Ev, ptr @_ZN3gmx17KeyValueTreeArrayD2Ev, ptr @_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev, null, null, null, null, null, null, null}
!424 = !{ptr @_ZN3gmx3Any7ContentINS_17KeyValueTreeArrayEED2Ev}
!425 = distinct !{!425, !"_ZSt11make_uniqueIN3gmx3Any7ContentINS0_17KeyValueTreeArrayEEEJRKS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!426 = distinct !{!426, !425, !"_ZSt11make_uniqueIN3gmx3Any7ContentINS0_17KeyValueTreeArrayEEEJRKS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!427 = distinct !{null}
!428 = distinct !{null, null}
!429 = !{!426}
!430 = distinct !{!430, !"_ZNK3gmx3Any12cloneContentEv"}
!431 = distinct !{!431, !430, !"_ZNK3gmx3Any12cloneContentEv: argument 0"}
!432 = distinct !{null}
!433 = distinct !{!433, !39}
!434 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!435 = !{!124, !124, i64 0}
!436 = !{!431}
!437 = distinct !{null, null, null, null, null, null, null}
!438 = distinct !{!438, !"_ZSt11make_uniqueIN3gmx3Any7ContentIdEEJRKdEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!439 = distinct !{!439, !438, !"_ZSt11make_uniqueIN3gmx3Any7ContentIdEEJRKdEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!440 = distinct !{null}
!441 = !{!439}
!442 = distinct !{!442, !"_ZSt11make_uniqueIN3gmx3Any7ContentIfEEJRKfEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!443 = distinct !{!443, !442, !"_ZSt11make_uniqueIN3gmx3Any7ContentIfEEJRKfEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!444 = distinct !{null}
!445 = !{!443}
!446 = distinct !{!446, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev"}
!447 = distinct !{!447, !446, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev: argument 0"}
!448 = distinct !{!448, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!449 = distinct !{!449, !448, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!450 = distinct !{!450, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!451 = distinct !{!451, !450, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!452 = distinct !{!452, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!453 = distinct !{!453, !452, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!454 = distinct !{null}
!455 = distinct !{!455, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev"}
!456 = distinct !{!456, !455, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev: argument 0"}
!457 = distinct !{!457, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!458 = distinct !{!458, !457, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!459 = distinct !{!459, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!460 = distinct !{!460, !459, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!461 = distinct !{!461, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev"}
!462 = distinct !{!462, !461, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev: argument 0"}
!463 = distinct !{!463, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!464 = distinct !{!464, !463, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!465 = distinct !{!465, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!466 = distinct !{!466, !465, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!467 = distinct !{!467, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev"}
!468 = distinct !{!468, !467, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev: argument 0"}
!469 = distinct !{!469, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!470 = distinct !{!470, !469, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!471 = distinct !{!471, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!472 = distinct !{!472, !471, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!473 = distinct !{!473, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev"}
!474 = distinct !{!474, !473, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev: argument 0"}
!475 = distinct !{!475, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!476 = distinct !{!476, !475, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!477 = distinct !{!477, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!478 = distinct !{!478, !477, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!479 = distinct !{null}
!480 = distinct !{!480, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!481 = distinct !{!481, !480, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!482 = distinct !{!482, !480, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!483 = distinct !{!483, !39}
!484 = distinct !{null}
!485 = distinct !{!485, !39}
!486 = distinct !{!486, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev"}
!487 = distinct !{!487, !486, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev: argument 0"}
!488 = distinct !{!488, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!489 = distinct !{!489, !488, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!490 = distinct !{!490, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!491 = distinct !{!491, !490, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!492 = distinct !{!492, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev"}
!493 = distinct !{!493, !492, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev: argument 0"}
!494 = distinct !{!494, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!495 = distinct !{!495, !494, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!496 = distinct !{!496, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!497 = distinct !{!497, !496, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!498 = distinct !{null}
!499 = distinct !{!499, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev"}
!500 = distinct !{!500, !499, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev: argument 0"}
!501 = distinct !{!501, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!502 = distinct !{!502, !501, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!503 = distinct !{!503, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!504 = distinct !{!504, !503, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!505 = distinct !{!505, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev"}
!506 = distinct !{!506, !505, !"_ZN3gmx12_GLOBAL__N_110moduleNameB5cxx11Ev: argument 0"}
!507 = distinct !{!507, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!508 = distinct !{!508, !507, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!509 = distinct !{!509, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!510 = distinct !{!510, !509, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!511 = distinct !{null}
!512 = !{!447}
!513 = !{!449}
!514 = !{!451}
!515 = !{!103, !103, i64 0}
!516 = !{!"_ZTSSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx17KeyValueTreeValueEEE", !61, i64 0}
!517 = !{!516, !61, i64 0}
!518 = !{!453}
!519 = !{!456}
!520 = !{!458}
!521 = !{!460}
!522 = !{!462}
!523 = !{!464}
!524 = !{!466}
!525 = !{!468}
!526 = !{!470}
!527 = !{!472}
!528 = !{!474}
!529 = !{!476}
!530 = !{!478}
!531 = !{!54, !50, i64 8}
!532 = !{i64 0, i64 12, !24}
!533 = !{!482, !481}
!534 = !{!487}
!535 = !{!489}
!536 = !{!491}
!537 = !{!493}
!538 = !{!495}
!539 = !{!497}
!540 = !{!500}
!541 = !{!502}
!542 = !{!504}
!543 = !{!506}
!544 = !{!508}
!545 = !{!510}
!546 = distinct !{!546, !39}
!547 = distinct !{null, null, null}
!548 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 8, !13, i64 12}
!549 = !{!548, !13, i64 8}
!550 = !{!548, !13, i64 12}
!551 = !{!143, !143, i64 0}
!552 = distinct !{!552, !39}
!553 = !{!"_ZTSN3gmx19ArrayRefWithPaddingINS_11BasicVectorIfEEEE", !50, i64 0, !50, i64 8, !50, i64 16}
!554 = !{!"_ZTSN3gmx29CoordinatesAndBoxPreprocessedE", !553, i64 0, !12, i64 24, !53, i64 60}
!555 = !{!554, !53, i64 60}
!556 = distinct !{!556, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!557 = distinct !{!557, !556, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!558 = distinct !{!558, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!559 = distinct !{!559, !558, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!560 = !{!557}
!561 = !{!559}
!562 = !{!559, !557}
!563 = !{!"_ZTSSt22_Optional_payload_baseIfE", !12, i64 0, !43, i64 4}
!564 = !{!563, !43, i64 4}
!565 = distinct !{!565, !39}
!566 = !{!62, !61, i64 16}
end_hunk_1
