inline.NumInlined: 6437
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN6duckdb14FileLogStorage8SetPathsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %.not21.i127, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit132, label %bb.ai, !prof !90

bb.ai:                                            ; preds = %bb.ah
  switch i64 %i.fj, label %bb.ak [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i128
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fl = load i8, ptr %i.ff, align 1, !tbaa !82
  store i8 %i.fl, ptr %i.fc, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i128

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.ff, i64 %i.fj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i128: ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.fm = load i64, ptr %i.fi, align 8, !tbaa !81 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i119, i64 56
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !81
  %i.fo = load ptr, ptr %i.fb, align 8, !tbaa !69
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm
  store i8 0, ptr %i.fp, align 1, !tbaa !82
  %.pre.i129 = load ptr, ptr %16, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit132

.thread.i131:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i130
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i119, i64 56
  store ptr %i.ff, ptr %i.fb, align 8, !tbaa !69
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fs = load <2 x i64>, ptr %i.fr, align 8, !tbaa !82
  store <2 x i64> %i.fs, ptr %i.fq, align 8, !tbaa !82
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i125: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i124
  %i.ft = load i64, ptr %i.fd, align 8, !tbaa !82
  store ptr %i.ff, ptr %i.fb, align 8, !tbaa !69
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i119, i64 56
  %i.fw = load <2 x i64>, ptr %i.fu, align 8, !tbaa !82
  store <2 x i64> %i.fw, ptr %i.fv, align 8, !tbaa !82
  %.not.i126 = icmp eq ptr %i.fc, null
  br i1 %.not.i126, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i125
  store ptr %i.fc, ptr %16, align 8, !tbaa !69
  store i64 %i.ft, ptr %i.fg, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit132

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i125, %.thread.i131
  store ptr %i.fg, ptr %16, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit132: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i128, %bb.al, %bb.am
  %i.fx = phi ptr [ %i.fc, %bb.al ], [ %i.fg, %bb.am ], [ %i.ff, %bb.ah ], [ %.pre.i129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i128 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.fy, align 8, !tbaa !81
  store i8 0, ptr %i.fx, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  %i.fz = load ptr, ptr %16, align 8, !tbaa !69   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit132
  call void @_ZdlPv(ptr noundef %i.fz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  %i.gc = load ptr, ptr %17, align 8, !tbaa !69   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.el
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  call void @_ZdlPv(ptr noundef %i.gc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.aq

bb.an:                                            ; preds = %.noexc.i106
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ao:                                            ; preds = %.noexc107
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ap:                                            ; preds = %.critedge.i120
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  %i.gh = load ptr, ptr %16, align 8, !tbaa !69   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.gh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.ao
  %.pn19 = phi { ptr, i32 } [ %i.gf, %bb.ao ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %i.gg, %bb.ap ] ; 2 uses
  %i.gk = load ptr, ptr %17, align 8, !tbaa !69   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.el
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  call void @_ZdlPv(ptr noundef %i.gk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.an
  %.pn19.pn = phi { ptr, i32 } [ %i.ge, %bb.an ], [ %.pn19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  call void @_ZN6duckdb10FileSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  ret void

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn22.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.ek, %bb.ad ], [ %.pn19.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ]
  call void @_ZN6duckdb10FileSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  resume { ptr, i32 } %.pn25.pn.pn
}

declare void @_ZN6duckdb10FileSystem8JoinPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6duckdb10StringUtil8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14FileLogStorage20UpdateConfigInternalERNS_16DatabaseInstanceERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5ValueENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS9_SA_EEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1560) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::__detail::_AllocNode.1159", align 8 ; 4 uses
  %4 = alloca %"class.std::unordered_map.115", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.duckdb::vector.129", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator", align 1   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr null, ptr %4, align 8, !tbaa !319
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !320
  store i64 %i.e, ptr %i.c, align 8, !tbaa !320
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !245
  store i64 %i.i, ptr %i.g, align 8, !tbaa !245
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !97
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %4, ptr %3, align 8, !tbaa !322
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSC_10_AllocNodeISaINSC_10_Hash_nodeISA_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !81
  store i8 0, ptr %i.m, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !271, !range !46, !noundef !47 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !324  ; 2 uses
  %.not155176 = icmp eq ptr %i.q, null
  br i1 %.not155176, label %._crit_edge.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 20
  br label %bb.b

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.a
  %.039.lcssa = phi i1 [ false, %bb.a ], [ %.140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ]
  %.0.lcssa = phi i8 [ %i.p, %bb.a ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.z, ptr %10, align 8, !tbaa !80
  store i32 1987273518, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.aa, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i8 0, ptr %i.ab, align 4, !tbaa !82
  %i.ac = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.u unwind label %bb.y

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %.0181 = phi i8 [ %i.p, %.lr.ph ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 6 uses
  %.037180 = phi i1 [ false, %.lr.ph ], [ %.138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 6 uses
  %.039179 = phi i1 [ false, %.lr.ph ], [ %.140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 7 uses
  %.sroa.0143.0177 = phi ptr [ %i.q, %.lr.ph ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0143.0177, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !81  ; 3 uses
  switch i64 %i.ae, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.af = load ptr, ptr %7, align 8, !tbaa !69
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = icmp ne i32 %i.ag, 1752457584
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0143.0177, i64 40
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %i.ak)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %.037180, label %.critedge74.thread, label %._crit_edge.i.i76

._crit_edge.i.i76:                                ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr %i.u, ptr %9, align 8, !tbaa !80
  store i32 1987273518, ptr %i.u, align 8
  store i64 4, ptr %i.v, align 8, !tbaa !81
  store i8 0, ptr %i.y, align 4, !tbaa !82
  %i.al = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.critedge unwind label %bb.h

.critedge:                                        ; preds = %._crit_edge.i.i76
  %i.am = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.u
  br i1 %i.an, label %.critedge74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  call void @_ZdlPv(ptr noundef %i.am) #32
  br label %.critedge74

.critedge74:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %spec.select = select i1 %i.al, i8 0, i8 %.0181
  br label %.critedge74.thread

.critedge74.thread:                               ; preds = %.critedge74, %bb.d
  %i.ao = phi i8 [ %.0181, %bb.d ], [ %spec.select, %.critedge74 ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.f:                                             ; preds = %bb.s, %.noexc.i.i97, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93.thread
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.h:                                             ; preds = %._crit_edge.i.i76
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.u
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.at) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %.critedge74.thread
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !242 ; 8 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !244
  %.not.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !80
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0143.0177, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !81 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.ba, ptr %i.b, align 8, !tbaa !68
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc84 unwind label %bb.m   ; 2 uses

.noexc84:                                         ; preds = %.noexc.i.i
  store ptr %i.bc, ptr %i.av, align 8, !tbaa !69
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !68
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !82
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc84, %bb.i
  %i.be = phi ptr [ %i.bc, %.noexc84 ], [ %i.ax, %bb.i ] ; 2 uses
  switch i64 %i.ba, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !82
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !68  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !81
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !242
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !242
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.m

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.l
  %i.bm = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.w
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  call void @_ZdlPv(ptr noundef %i.bm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100

bb.m:                                             ; preds = %bb.l, %.noexc.i.i, %.critedge74.thread
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.m
  %.pn67 = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ] ; 2 uses
  %i.bp = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.w
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.bp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.g
  %.pn67.pn = phi { ptr, i32 } [ %i.ar, %bb.g ], [ %.pn67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn67, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.t

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93: ; preds = %bb.c
  %.pre = load ptr, ptr %7, align 8, !tbaa !69
  %bcmp.i92 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.29, i64 %i.ae)
  %i.br = icmp eq i32 %bcmp.i92, 0
  br i1 %i.br, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93.thread, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0143.0177, i64 40
  %i.bt = invoke noundef zeroext i1 @_ZNK6duckdb5Value8GetValueIbEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.bs)
          to label %bb.o unwind label %bb.f

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93.thread
  %i.bu = zext i1 %i.bt to i8                     ; 2 uses
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !242 ; 8 uses
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !244
  %.not.i94 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i94, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !80
  %i.by = load ptr, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0143.0177, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !81 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !68
  %i.cb = icmp ugt i64 %i.ca, 15
  br i1 %i.cb, label %.noexc.i.i97, label %._crit_edge.i.i.i95

.noexc.i.i97:                                     ; preds = %bb.p
  %i.cc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc98 unwind label %bb.f   ; 2 uses

.noexc98:                                         ; preds = %.noexc.i.i97
  store ptr %i.cc, ptr %i.bv, align 8, !tbaa !69
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.cd, ptr %i.bx, align 8, !tbaa !82
  br label %._crit_edge.i.i.i95

._crit_edge.i.i.i95:                              ; preds = %.noexc98, %bb.p
  %i.ce = phi ptr [ %i.cc, %.noexc98 ], [ %i.bx, %bb.p ] ; 2 uses
  switch i64 %i.ca, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i95
  %i.cf = load i8, ptr %i.by, align 1, !tbaa !82
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96

bb.r:                                             ; preds = %._crit_edge.i.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.by, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96: ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i95
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !81
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ck = load ptr, ptr %i.s, align 8, !tbaa !242
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store ptr %i.cl, ptr %i.s, align 8, !tbaa !242
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100

bb.s:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100 unwind label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102: ; preds = %bb.c
  %.pre196 = load ptr, ptr %7, align 8, !tbaa !69
  %bcmp.i101 = call i32 @bcmp(ptr %.pre196, ptr nonnull @.str.26, i64 %i.ae)
  %bcmp.i101.fr = freeze i32 %bcmp.i101
  %i.cm = icmp eq i32 %bcmp.i101.fr, 0
  %spec.select160 = select i1 %i.cm, i1 true, i1 %.039179
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.140 = phi i1 [ %.039179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.039179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96 ], [ %.039179, %bb.s ], [ %.039179, %bb.c ], [ %spec.select160, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102 ], [ %.039179, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.039179, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93 ] ; 2 uses
  %.138 = phi i1 [ %.037180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96 ], [ true, %bb.s ], [ %.037180, %bb.c ], [ %.037180, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102 ], [ %.037180, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.037180, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93 ]
  %.2 = phi i8 [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96 ], [ %i.bu, %bb.s ], [ %.0181, %bb.c ], [ %.0181, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102 ], [ %.0181, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0181, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93 ] ; 2 uses
  %i.cn = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.x
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100
  call void @_ZdlPv(ptr noundef %i.cn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.cp = load ptr, ptr %.sroa.0143.0177, align 8, !tbaa !71 ; 2 uses
  %.not155 = icmp eq ptr %i.cp, null
  br i1 %.not155, label %._crit_edge.i.i, label %bb.b

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.f
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.cq = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.x
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.cq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.e
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %.pn67.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.pn67.pn.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.am

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.cs = trunc nuw i8 %.0.lcssa to i1
  %i.ct = select i1 %i.ac, i1 %i.cs, i1 false
  %i.cu = load ptr, ptr %10, align 8, !tbaa !69   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.z
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.cu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %i.ct, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.cw = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.w unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb29InvalidConfigurationExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN6duckdb29InvalidConfigurationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.an unwind label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %10, align 8, !tbaa !69   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.z
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.cy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread: ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %bb.w
  %.055 = phi i1 [ false, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dc = load ptr, ptr %11, align 8, !tbaa !69   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.dc) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.055, label %bb.aa, label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.055, label %bb.aa, label %bb.am

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %.pn63153 = phi { ptr, i32 } [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ]
  call void @__cxa_free_exception(ptr %i.cw) #29
  br label %bb.am

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !283 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %.not156183 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not156183, label %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit, label %.lr.ph186

._crit_edge:                                      ; preds = %.lr.ph186
  br i1 %14, label %bb.ac, label %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit

.lr.ph186:                                        ; preds = %bb.ab, %.lr.ph186
  %.054185 = phi i1 [ %14, %.lr.ph186 ], [ false, %bb.ab ]
  %.sroa.0137.0184 = phi ptr [ %i.dk, %.lr.ph186 ], [ %i.dg, %bb.ab ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0137.0184, i64 80
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !482, !range !46, !noundef !47
  %13 = trunc nuw i8 %i.dj to i1
  %14 = or i1 %.054185, %13                       ; 2 uses
  %i.dk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0137.0184) #34 ; 2 uses
  %.not156 = icmp eq ptr %i.dk, %i.dh
  br i1 %.not156, label %._crit_edge, label %.lr.ph186

bb.ac:                                            ; preds = %._crit_edge
  %i.dl = load i8, ptr %i.o, align 8, !tbaa !271, !range !46, !noundef !47
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ad, label %.noexc118

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb19BufferingLogStorage13FlushInternalENS_18LoggingTargetTableE(ptr noundef nonnull align 8 dereferenceable(177) %0, i8 noundef zeroext 1)
          to label %.noexc118 unwind label %bb.ae

.noexc118:                                        ; preds = %bb.ad, %bb.ac
  %.sink.i = phi i8 [ 0, %bb.ac ], [ 2, %bb.ad ]
  invoke void @_ZN6duckdb19BufferingLogStorage13FlushInternalENS_18LoggingTargetTableE(ptr noundef nonnull align 8 dereferenceable(177) %0, i8 noundef zeroext %.sink.i)
          to label %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %.noexc118, %bb.ad, %._crit_edge195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121, %bb.af
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit: ; preds = %bb.ab, %.noexc118, %._crit_edge
  %i.do = load i8, ptr %i.o, align 8, !tbaa !271, !range !46, !noundef !47
  %i.dp = icmp ne i8 %i.do, %.0.lcssa
  %.not = or i1 %.039.lcssa, %i.dp
  store i8 %.0.lcssa, ptr %i.o, align 8, !tbaa !271
  br i1 %.not, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit
  %i.dq = load ptr, ptr %0, align 8, !tbaa !53
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 136
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(296) %0)
          to label %bb.ag unwind label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %i.dt = load ptr, ptr %i.df, align 8, !tbaa !283 ; 2 uses
  %.not157188 = icmp eq ptr %i.dt, %i.dh
  br i1 %.not157188, label %.loopexit, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.ag, %.lr.ph191
  %.sroa.0133.0189 = phi ptr [ %i.dv, %.lr.ph191 ], [ %i.dt, %bb.ag ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0133.0189, i64 80
  store i8 0, ptr %i.du, align 8, !tbaa !482
  %i.dv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0133.0189) #34 ; 2 uses
  %.not157 = icmp eq ptr %i.dv, %i.dh
  br i1 %.not157, label %.loopexit, label %.lr.ph191

.loopexit:                                        ; preds = %.lr.ph191, %bb.ag, %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.dx = load i64, ptr %i.n, align 8, !tbaa !81  ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !81
  %i.ea = icmp eq i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.ah, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.ah:                                            ; preds = %.loopexit
  %i.eb = icmp eq i64 %i.dx, 0
  br i1 %i.eb, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ah
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !69
  %i.ed = load ptr, ptr %5, align 8, !tbaa !69
  %bcmp.i.i = call i32 @bcmp(ptr %i.ed, ptr %i.ec, i64 %i.dx)
  %.not158 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not158, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %.loopexit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121 unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  invoke void @_ZN6duckdb14FileLogStorage8SetPathsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154 unwind label %bb.ae

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ee = load ptr, ptr %6, align 8, !tbaa !221   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !221 ; 2 uses
  %.not159192 = icmp eq ptr %i.ee, %i.eg
  br i1 %.not159192, label %._crit_edge195, label %.lr.ph194

._crit_edge195:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE5eraseERSB_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154
  invoke void @_ZN6duckdb13CSVLogStorage20UpdateConfigInternalERNS_16DatabaseInstanceERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5ValueENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS9_SA_EEE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(1560) %1, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.aj unwind label %bb.ae

.lr.ph194:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE5eraseERSB_.exit
  %.sroa.0129.0193 = phi ptr [ %i.ei, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE5eraseERSB_.exit ], [ %i.ee, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154 ] ; 2 uses
  %i.eh = invoke noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0129.0193)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE5eraseERSB_.exit unwind label %bb.ai ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE5eraseERSB_.exit: ; preds = %.lr.ph194
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0129.0193, i64 32 ; 2 uses
  %.not159 = icmp eq ptr %i.ei, %i.eg
  br i1 %.not159, label %._crit_edge195, label %.lr.ph194

bb.ai:                                            ; preds = %.lr.ph194
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %._crit_edge195
  %i.ek = load ptr, ptr %6, align 8, !tbaa !240   ; 3 uses
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !242 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ek, %i.el
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ep, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ek, %bb.aj ] ; 3 uses
  %i.em = load ptr, ptr %.05.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.em) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ep, %i.el
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !243

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !240
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.aj
  %i.eq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ek, %bb.aj ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.eq) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.er = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.m
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.er) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.et = load ptr, ptr %i.f, align 8, !tbaa !324 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.eu, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ] ; 5 uses
  %i.eu = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !71 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ew) #29
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !69 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ex) #32
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #32
  %.not.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !335

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.fa = load ptr, ptr %4, align 8, !tbaa !319
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !320
  %i.fc = shl i64 %i.fb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fa, i8 0, i64 %i.fc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.fd = load ptr, ptr %4, align 8, !tbaa !319   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.l
  br i1 %i.fe, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.fd) #32
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.ae, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.pn67.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn63153, %bb.aa ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.ej, %bb.ai ], [ %i.dn, %bb.ae ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ff = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.m
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.ff) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn67.pn.pn.pn.pn

bb.an:                                            ; preds = %bb.x
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb29InvalidConfigurationExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1339", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !483
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !483
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !216, !noalias !483 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219, !noalias !483 ; 2 uses
end_hunk_0
