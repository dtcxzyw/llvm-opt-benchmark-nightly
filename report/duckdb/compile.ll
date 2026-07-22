inline.NumInlined: 734
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !64
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !65  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !83
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !85   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !64
  store ptr %i.o, ptr %.031, align 8, !tbaa !65
  store ptr %.031, ptr %i.g, align 8, !tbaa !64
  store ptr %i.g, ptr %i.m, align 8, !tbaa !85
  %i.p = load ptr, ptr %.031, align 8, !tbaa !65
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !85
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !65
  store ptr %i.r, ptr %.031, align 8, !tbaa !65
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !85
  store ptr %.031, ptr %i.s, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #21
  br label %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !30
  store ptr %.0.i, ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { i64, i64 } @_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i64 %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb_re2::Frag", align 8 ; 10 uses
  %6 = alloca %class.LogMessage, align 8          ; 11 uses
  %7 = alloca %"struct.duckdb_re2::WalkState", align 8 ; 15 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %8 = alloca %"struct.duckdb_re2::WalkState", align 8 ; 14 uses
  tail call void @_ZN10duckdb_re26Regexp6WalkerINS_4FragEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i8 0, ptr %6, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.c)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.8, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !7
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.l) #21
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %i.q

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %1, ptr %7, align 8, !tbaa !179
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 -1, ptr %i.s, align 8, !tbaa !188
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i64 %2, ptr %i.t, align 4
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %i.u, align 4, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.w, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 0, ptr %i.x, align 4, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i8 0, ptr %i.z, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr null, ptr %i.aa, align 8, !tbaa !182
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !174 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !189
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -72
  %.not.i.i.i = icmp eq ptr %i.ac, %i.af
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %7, i64 72, i1 false), !tbaa.struct !190
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !174
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !174
  br label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %7)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..sroa_idx132 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  store i32 0, ptr %5, align 8, !tbaa !73
  store i64 0, ptr %.4..4..4..sroa_idx, align 4
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !175, !noalias !192 ; 2 uses
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !171, !noalias !192
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !170, !noalias !192
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !71
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 504
  br label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit: ; preds = %bb.g, %bb.h
  %i.bd = phi ptr [ %i.bc, %bb.h ], [ %i.aw, %bb.g ] ; 17 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !179 ; 6 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 -64 ; 7 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !188 ; 2 uses
  %cond = icmp eq i32 %i.bh, -1
  br i1 %cond, label %bb.i, label %bb.p

bb.i:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit
  %i.bi = load i32, ptr %i.ak, align 4, !tbaa !127 ; 2 uses
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.ak, align 4, !tbaa !127
  %i.bk = icmp slt i32 %i.bi, 1
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.au, align 8, !tbaa !9
  %i.bl = getelementptr inbounds i8, ptr %i.bd, i64 -60
  %.sroa.033.0.copyload = load i64, ptr %i.bl, align 4
  %.sroa.234.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -52
  %.sroa.234.0.copyload = load i64, ptr %.sroa.234.0..sroa_idx, align 4
  %i.bm = load ptr, ptr %0, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call { i64, i64 } %i.bo(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.bf, i64 %.sroa.033.0.copyload, i64 %.sroa.234.0.copyload) ; 2 uses
  %.fca.0.extract29 = extractvalue { i64, i64 } %i.bp, 0
  %.fca.1.extract30 = extractvalue { i64, i64 } %i.bp, 1
  %.sroa.232.0.extract.trunc = trunc i64 %.fca.1.extract30 to i40
  store i64 %.fca.0.extract29, ptr %5, align 8
  store i40 %.sroa.232.0.extract.trunc, ptr %.8..8..8..sroa_idx132, align 8
  br label %bb.y

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1, !tbaa !80
  %i.bq = getelementptr inbounds i8, ptr %i.bd, i64 -60
  %.sroa.024.0.copyload = load i64, ptr %i.bq, align 4
  %.sroa.225.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -52
  %.sroa.225.0.copyload = load i64, ptr %.sroa.225.0..sroa_idx, align 4
  %i.br = load ptr, ptr %0, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call { i64, i64 } %i.bt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.bf, i64 %.sroa.024.0.copyload, i64 %.sroa.225.0.copyload, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.0.extract20 = extractvalue { i64, i64 } %i.bu, 0
  %.fca.1.extract21 = extractvalue { i64, i64 } %i.bu, 1
  %.sroa.223.0.extract.trunc = trunc i64 %.fca.1.extract21 to i40
  %i.bv = getelementptr inbounds i8, ptr %i.bd, i64 -44 ; 2 uses
  store i64 %.fca.0.extract20, ptr %i.bv, align 4
  %.sroa.427.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -36
  store i40 %.sroa.223.0.extract.trunc, ptr %.sroa.427.0..sroa_idx, align 4
  %i.bw = load i8, ptr %i.a, align 1, !tbaa !80, !range !58, !noundef !59
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bg, align 8, !tbaa !188
  %i.by = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 3 uses
  store ptr null, ptr %i.by, align 8, !tbaa !182
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 6
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !157 ; 2 uses
  switch i16 %i.ca, label %bb.n [
    i16 1, label %bb.m
    i16 0, label %.thread
  ]

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds i8, ptr %i.bd, i64 -28
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !182
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.cc = zext i16 %i.ca to i64                   ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 4                ; 2 uses
  %i.ce = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #20 ; 4 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cc
  %i.cg = add nsw i64 %i.cd, -16                  ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 4
  %i.ci = add nuw nsw i64 %i.ch, 1
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.n, %.prol.preheader
  %i.cj = phi ptr [ %i.cm, %.prol.preheader ], [ %i.ce, %bb.n ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.n ]
  store i32 0, ptr %i.cj, align 4, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i64 0, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i8 0, ptr %i.cl, align 4, !tbaa !74
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !195

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.n
  %.unr = phi ptr [ %i.ce, %bb.n ], [ %i.cm, %.prol.preheader ]
  %i.cn = icmp ult i64 %i.cg, 112
  br i1 %i.cn, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.co = phi ptr [ %i.dm, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store i32 0, ptr %i.co, align 4, !tbaa !73
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i64 0, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i8 0, ptr %i.cq, align 4, !tbaa !74
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i32 0, ptr %i.cr, align 4, !tbaa !73
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  store i64 0, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  store i8 0, ptr %i.ct, align 4, !tbaa !74
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store i32 0, ptr %i.cu, align 4, !tbaa !73
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 36
  store i64 0, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 44
  store i8 0, ptr %i.cw, align 4, !tbaa !74
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store i32 0, ptr %i.cx, align 4, !tbaa !73
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 52
  store i64 0, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 60
  store i8 0, ptr %i.cz, align 4, !tbaa !74
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  store i32 0, ptr %i.da, align 4, !tbaa !73
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 68
  store i64 0, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 76
  store i8 0, ptr %i.dc, align 4, !tbaa !74
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  store i32 0, ptr %i.dd, align 4, !tbaa !73
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 84
  store i64 0, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 92
  store i8 0, ptr %i.df, align 4, !tbaa !74
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  store i32 0, ptr %i.dg, align 4, !tbaa !73
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 100
  store i64 0, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 108
  store i8 0, ptr %i.di, align 4, !tbaa !74
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 112
  store i32 0, ptr %i.dj, align 4, !tbaa !73
  %i.dk = getelementptr inbounds nuw i8, ptr %i.co, i64 116
  store i64 0, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 124
  store i8 0, ptr %i.dl, align 4, !tbaa !74
  %i.dm = getelementptr inbounds nuw i8, ptr %i.co, i64 128 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cf
  br i1 %i.dn, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store ptr %i.ce, ptr %i.by, align 8, !tbaa !182
  %.pre110.pre.pre = load i32, ptr %i.bg, align 8, !tbaa !188
  br label %.thread

.thread:                                          ; preds = %bb.l, %.unr-lcssa, %bb.m
  %.pre110.pre = phi i32 [ 0, %bb.l ], [ %.pre110.pre.pre, %.unr-lcssa ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %5, ptr noundef nonnull align 4 dereferenceable(13) %i.bv, i64 13, i1 false), !tbaa.struct !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.y

bb.p:                                             ; preds = %.thread, %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit
  %.pre110 = phi i32 [ %.pre110.pre, %.thread ], [ %i.bh, %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit ] ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bf, i64 6 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !157 ; 3 uses
  %.not95 = icmp eq i16 %i.dp, 0
  br i1 %.not95, label %.thread105, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = icmp eq i16 %i.dp, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  %.0.i = select i1 %i.dq, ptr %i.dr, ptr %i.ds   ; 3 uses
  %i.dt = zext i16 %i.dp to i32
  %i.du = icmp slt i32 %.pre110, %i.dt
  br i1 %i.du, label %bb.r, label %.thread105

bb.r:                                             ; preds = %bb.q
  %i.dv = icmp sgt i32 %.pre110, 0
  %or.cond = and i1 %4, %i.dv
  br i1 %or.cond, label %bb.s, label %._crit_edge115

bb.s:                                             ; preds = %bb.r
  %i.dw = add nsw i32 %.pre110, -1
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !126
  %i.ea = zext nneg i32 %.pre110 to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !126
  %i.ed = icmp eq ptr %i.dz, %i.ec
  br i1 %i.ed, label %bb.t, label %._crit_edge115

bb.t:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !182
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.dx ; 2 uses
  %.sroa.012.0.copyload = load i64, ptr %i.eg, align 4
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.213.0.copyload = load i64, ptr %.sroa.213.0..sroa_idx, align 4
  %i.eh = load ptr, ptr %0, align 8, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call { i64, i64 } %i.ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 %.sroa.012.0.copyload, i64 %.sroa.213.0.copyload) ; 2 uses
  %.fca.0.extract8 = extractvalue { i64, i64 } %i.ek, 0
  %.fca.1.extract9 = extractvalue { i64, i64 } %i.ek, 1
  %.sroa.211.0.extract.trunc = trunc i64 %.fca.1.extract9 to i40
  %i.el = load ptr, ptr %i.ee, align 8, !tbaa !182
  %i.em = load i32, ptr %i.bg, align 8, !tbaa !188
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [16 x i8], ptr %i.el, i64 %i.en ; 2 uses
  store i64 %.fca.0.extract8, ptr %i.eo, align 4
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i40 %.sroa.211.0.extract.trunc, ptr %.sroa.415.0..sroa_idx, align 4
  %i.ep = load i32, ptr %i.bg, align 8, !tbaa !188
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.bg, align 8, !tbaa !188
  br label %.backedge, !llvm.loop !197

._crit_edge115:                                   ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %9 = load i32, ptr %i.bg, align 8, !tbaa !188
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !126
  %i.er = getelementptr inbounds i8, ptr %i.bd, i64 -44
  %i.es = load <2 x i64>, ptr %i.er, align 4
  store ptr %12, ptr %8, align 8, !tbaa !179
  store i32 -1, ptr %i.al, align 8, !tbaa !188
  store <2 x i64> %i.es, ptr %i.am, align 4
  store i32 0, ptr %i.an, align 4, !tbaa !73
  store i64 0, ptr %i.ao, align 8
  store i8 0, ptr %i.ap, align 8, !tbaa !74
  store i32 0, ptr %i.aq, align 4, !tbaa !73
  store i64 0, ptr %i.ar, align 8
  store i8 0, ptr %i.as, align 8, !tbaa !74
  store ptr null, ptr %i.at, align 8, !tbaa !182
  %i.et = load ptr, ptr %i.ab, align 8, !tbaa !174 ; 2 uses
  %i.eu = load ptr, ptr %i.ad, align 8, !tbaa !189
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -72
  %.not.i.i.i99 = icmp eq ptr %i.et, %i.ev
  br i1 %.not.i.i.i99, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.et, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 72, i1 false), !tbaa.struct !190
  %i.ew = load ptr, ptr %i.ab, align 8, !tbaa !174
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  store ptr %i.ex, ptr %i.ab, align 8, !tbaa !174
  br label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit100

bb.v:                                             ; preds = %._crit_edge115
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %8)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit100

_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit100: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.backedge, !llvm.loop !197

.thread105:                                       ; preds = %bb.q, %bb.p
  %i.ey = getelementptr inbounds i8, ptr %i.bd, i64 -60
  %.sroa.03.0.copyload = load i64, ptr %i.ey, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -52
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 4
  %i.ez = getelementptr inbounds i8, ptr %i.bd, i64 -44
  %.sroa.01.0.copyload = load i64, ptr %i.ez, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -36
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 4
  %i.fa = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !182
  %i.fc = load ptr, ptr %0, align 8, !tbaa !7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call { i64, i64 } %i.fe(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.bf, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr noundef %i.fb, i32 noundef %.pre110) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i64 } %i.ff, 0
  %.fca.1.extract = extractvalue { i64, i64 } %i.ff, 1
  %.sroa.2.0.extract.trunc = trunc i64 %.fca.1.extract to i40
  store i64 %.fca.0.extract, ptr %5, align 8
  store i40 %.sroa.2.0.extract.trunc, ptr %.8..8..8..sroa_idx, align 8
  %i.fg = load i16, ptr %i.do, align 2, !tbaa !157
  %i.fh = icmp ugt i16 %i.fg, 1
  br i1 %i.fh, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.thread105
  %i.fi = load ptr, ptr %i.fa, align 8, !tbaa !182 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.fi) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.o, %.thread105, %bb.x, %bb.w, %bb.j
  %i.fk = load ptr, ptr %i.ab, align 8, !tbaa !174 ; 2 uses
  %i.fl = load ptr, ptr %i.ai, align 8, !tbaa !183 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i.i, label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit.thread, label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit: ; preds = %bb.y
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 -72 ; 4 uses
  store ptr %i.fm, ptr %i.ab, align 8, !tbaa !174
  %i.fn = load ptr, ptr %i.av, align 8, !tbaa !175
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %.loopexit.loopexit, label %bb.z

_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit.thread: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.fl) #21
  %i.fp = load ptr, ptr %i.aj, align 8, !tbaa !70
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -8 ; 2 uses
  store ptr %i.fq, ptr %i.aj, align 8, !tbaa !170
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !71 ; 3 uses
  store ptr %i.fr, ptr %i.ai, align 8, !tbaa !171
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 504
  store ptr %i.fs, ptr %i.ad, align 8, !tbaa !172
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 432 ; 3 uses
  store ptr %i.ft, ptr %i.ab, align 8, !tbaa !174
  %i.fu = load ptr, ptr %i.av, align 8, !tbaa !175
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %.loopexit.loopexit, label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit101

bb.z:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit
  %i.fw = icmp eq ptr %i.fm, %i.fl
  br i1 %i.fw, label %bb.aa, label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit101

bb.aa:                                            ; preds = %bb.z
  %i.fx = load ptr, ptr %i.aj, align 8, !tbaa !170, !noalias !198
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !71
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 504
  br label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit101

_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit101: ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit.thread, %bb.z, %bb.aa
  %i.gb = phi ptr [ %i.ga, %bb.aa ], [ %i.fm, %bb.z ], [ %i.ft, %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit.thread ] ; 4 uses
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !182 ; 2 uses
  %.not96 = icmp eq ptr %i.gd, null
  br i1 %.not96, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit101
  %i.ge = getelementptr inbounds i8, ptr %i.gb, i64 -64
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !188
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [16 x i8], ptr %i.gd, i64 %i.gg
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit101
  %i.gi = getelementptr inbounds i8, ptr %i.gb, i64 -28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink = phi ptr [ %i.gi, %bb.ac ], [ %i.gh, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sink, ptr noundef nonnull align 8 dereferenceable(13) %5, i64 13, i1 false)
  %i.gj = getelementptr inbounds i8, ptr %i.gb, i64 -64 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !188
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 8, !tbaa !188
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit100, %bb.t, %bb.ad
  br label %bb.g, !llvm.loop !197

.loopexit.loopexit:                               ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit.thread, %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit
  %.0..0..0..fca.0.load.pre = load i64, ptr %5, align 8
  %.8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..fca.1.load.pre = load i64, ptr %.8..8..8..fca.1.gep.sroa_idx, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN10LogMessageD2Ev.exit
  %.8..8..fca.1.load = phi i64 [ %.8..8..8..fca.1.load.pre, %.loopexit.loopexit ], [ %3, %_ZN10LogMessageD2Ev.exit ]
  %.0..0..fca.0.load = phi i64 [ %.0..0..0..fca.0.load.pre, %.loopexit.loopexit ], [ %2, %_ZN10LogMessageD2Ev.exit ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.0..0..fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.8..8..fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !171
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !172
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !175
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 72
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 128102389400760775
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !168
  %i.ag = load ptr, ptr %0, align 8, !tbaa !68
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE22_M_reserve_map_at_backEm.exit

end_hunk_0
