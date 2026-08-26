Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/udt_util?download=true
inline.NumInlined: 502
inline.NumDeleted: 235
begin_hunk_0_@_ZN7rocksdb24TimestampRecoveryHandler5PutCFEjRKNS_5SliceES3_:bb.a

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  invoke void @_ZN7rocksdb18WriteBatchInternal3PutEPNS_10WriteBatchEjRKNS_5SliceES5_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %i.u, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN7rocksdb6StatusC2EOS0_.exit unwind label %bb.f

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %bb.c, %bb.d, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.w, null
  br i1 %.not.i.i9, label %_ZN7rocksdb6StatusD2Ev.exit11, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i10

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i10: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.w) #17
  br label %_ZN7rocksdb6StatusD2Ev.exit11

_ZN7rocksdb6StatusD2Ev.exit11:                    ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.x = load ptr, ptr %5, align 8, !tbaa !54     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit11
  %i.z = load i64, ptr %i.a, align 8, !tbaa !35
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ab = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !35
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb24TimestampRecoveryHandler29ReconcileTimestampDiscrepancyEjRKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(42) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %.not.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !66 ; 4 uses
  %i.f = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.f, label %.loopexit42, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !67
  %i.i = icmp eq i32 %2, %i.h
  br i1 %i.i, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit, label %bb.c, !llvm.loop !68

bb.e:                                             ; preds = %bb.a
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !70   ; 2 uses
  %i.m = urem i64 %i.j, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %.loopexit42, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !66   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  %i.t = icmp eq i32 %2, %i.s
  br i1 %i.t, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.u = icmp eq i32 %2, %i.x
  br i1 %i.u, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !73

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.q, %bb.f ]
  %i.v = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !66 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i, label %.loopexit42, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !67   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = urem i64 %i.y, %i.l
  %.not19.i.i.i.i = icmp eq i64 %i.z, %i.m
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !73

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit42, !llvm.loop !73

.loopexit42:                                      ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !74
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !50, !alias.scope !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !76
  br label %bb.w

_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.q, %bb.f ], [ %i.v, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !79 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81, !nonnull !56, !align !57 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !58
  %.not.not.i.i14 = icmp eq i64 %i.ag, 0
  br i1 %.not.not.i.i14, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.06.0.in.i.i22 = phi ptr [ %i.ah, %bb.i ], [ %.sroa.06.0.i.i23, %bb.k ]
  %.sroa.06.0.i.i23 = load ptr, ptr %.sroa.06.0.in.i.i22, align 8, !tbaa !66 ; 4 uses
  %i.ai = icmp eq ptr %.sroa.06.0.i.i23, null
  br i1 %i.ai, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i23, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !67
  %i.al = icmp eq i32 %2, %i.ak
  br i1 %i.al, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit24, label %bb.j, !llvm.loop !68

bb.l:                                             ; preds = %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit
  %i.am = zext i32 %2 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !70 ; 2 uses
  %i.ap = urem i64 %i.am, %i.ao                   ; 2 uses
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i15, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !67
  %i.aw = icmp eq i32 %2, %i.av
  br i1 %i.aw, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit24, label %.lr.ph.i.i.i.i16

bb.n:                                             ; preds = %bb.o
  %i.ax = icmp eq i32 %2, %i.ba
  br i1 %i.ax, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit24, label %.lr.ph.i.i.i.i16, !llvm.loop !73

.lr.ph.i.i.i.i16:                                 ; preds = %bb.m, %bb.n
  %.020.i.i.i.i17 = phi ptr [ %i.ay, %bb.n ], [ %i.at, %bb.m ]
  %i.ay = load ptr, ptr %.020.i.i.i.i17, align 8, !tbaa !66 ; 4 uses
  %.not18.i.i.i.i18 = icmp eq ptr %i.ay, null
  br i1 %.not18.i.i.i.i18, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !67 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = urem i64 %i.bb, %i.ao
  %.not19.i.i.i.i19 = icmp eq i64 %i.bc, %i.ap
  br i1 %.not19.i.i.i.i19, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i20, !llvm.loop !73

..loopexit_crit_edge21.i.i.i.i20:                 ; preds = %bb.o
  br label %.loopexit, !llvm.loop !73

_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit24: ; preds = %bb.n, %bb.k, %bb.m
  %.sroa.06.1.i.i21 = phi ptr [ %.sroa.06.0.i.i23, %bb.k ], [ %i.at, %bb.m ], [ %i.ay, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i21, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i16, %bb.j, %bb.l, %..loopexit_crit_edge21.i.i.i.i20, %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit24
  %.sroa.5.0 = phi i8 [ 1, %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit24 ], [ 0, %..loopexit_crit_edge21.i.i.i.i20 ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %.lr.ph.i.i.i.i16 ] ; 2 uses
  %.sroa.027.0 = phi i64 [ %i.be, %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit24 ], [ undef, %..loopexit_crit_edge21.i.i.i.i20 ], [ undef, %bb.j ], [ undef, %bb.l ], [ undef, %.lr.ph.i.i.i.i16 ] ; 2 uses
  %i.bf = icmp eq i64 %i.ac, 0
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit
  %i.bg = shl nuw nsw i8 %.sroa.5.0, 1
  %..i = zext nneg i8 %i.bg to i32
  br label %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit

bb.q:                                             ; preds = %.loopexit
  %i.bh = trunc nuw i8 %.sroa.5.0 to i1
  br i1 %i.bh, label %bb.r, label %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.thread

bb.r:                                             ; preds = %bb.q
  %.not.i = icmp ne i64 %i.ac, %.sroa.027.0
  %.6.i = zext i1 %.not.i to i32
  br label %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit

_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit: ; preds = %bb.p, %bb.r
  %.0.i = phi i32 [ %.6.i, %bb.r ], [ %..i, %bb.p ]
  switch i32 %.0.i, label %default.unreachable66 [
    i32 0, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.s:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !74
  br label %bb.v

bb.t:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit
  %i.bi = load ptr, ptr %3, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !38
  %i.bl = sub i64 %i.bk, %.sroa.027.0
  store ptr %i.bi, ptr %5, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bl, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !75
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 41
  store i8 1, ptr %i.bm, align 1, !tbaa !28
  br label %bb.v

_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.thread: ; preds = %bb.q
  tail call void @_ZN7rocksdb25AppendKeyWithMinTimestampEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.ac)
  %i.bn = load ptr, ptr %4, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !32
  store ptr %i.bn, ptr %5, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bp, ptr %.sroa.4.0..sroa_idx25, align 8, !tbaa !75
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 41
  store i8 1, ptr %i.bq, align 1, !tbaa !28
  br label %bb.v

bb.u:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr @.str.2, ptr %6, align 8, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 83, ptr %i.br, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr @.str.8, ptr %7, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !38
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.w

default.unreachable66:                            ; preds = %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit
  unreachable

bb.v:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.thread, %bb.t, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bt, align 8, !tbaa !50, !alias.scope !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !82
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %.loopexit42
  ret void
}

declare void @_ZN7rocksdb18WriteBatchInternal3PutEPNS_10WriteBatchEjRKNS_5SliceES5_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb24TimestampRecoveryHandler11PutEntityCFEjRKNS_5SliceES3_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(42) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 13 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 10 uses
  %10 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !32
  store i8 0, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr @.str.8, ptr %6, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN7rocksdb24TimestampRecoveryHandler29ReconcileTimestampDiscrepancyEjRKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(42) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %7, align 8, !tbaa !39      ; 2 uses
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq ptr %0, %7
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.d, ptr %0, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.j = load <4 x i8>, ptr %i.g, align 1, !tbaa !35
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !35
  store <4 x i8> %i.j, ptr %i.h, align 1, !tbaa !35
  store i8 0, ptr %i.i, align 4, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.l, ptr %i.m, align 1, !tbaa !52
  store i8 0, ptr %i.k, align 1, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53
  store ptr null, ptr %i.n, align 8, !tbaa !53
  store ptr %i.o, ptr %i.f, align 8, !tbaa !53
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit35

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN7rocksdb23WideColumnSerialization11DeserializeERKNS_5SliceERSt6vectorINS_10WideColumnESaIS5_EEPS4_ISt4pairImNS_9BlobIndexEESaISB_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef null)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %10, align 8, !tbaa !39
  %i.r = icmp eq i8 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53   ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.t, null
  br i1 %.not.i.i18, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.t) #17
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.g, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %i.r, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store ptr @.str, ptr %11, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 28, ptr %i.u, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %13, align 8, !tbaa !54
  store ptr %i.v, ptr %12, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32
  store i64 %i.y, ptr %i.w, align 8, !tbaa !38
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit unwind label %bb.l

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit: ; preds = %bb.i
  %i.z = load ptr, ptr %13, align 8, !tbaa !54    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !35
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #17
end_hunk_0
begin_hunk_1_@_ZN7rocksdb24TimestampRecoveryHandler8MarkNoopEb:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  tail call void @_ZN7rocksdb18WriteBatchInternal10InsertNoopEPNS_10WriteBatchE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %i.b)
  ret void
}

declare void @_ZN7rocksdb18WriteBatchInternal10InsertNoopEPNS_10WriteBatchE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef) local_unnamed_addr #5

declare void @_ZN7rocksdb25AppendKeyWithMinTimestampEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb39HandleWriteBatchTimestampSizeDifferenceEPKNS_10WriteBatchERKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEESE_NS_28TimestampSizeConsistencyModeEbbPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::vector.44", align 8    ; 11 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 12 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 28 uses
  %15 = alloca %"class.rocksdb::TimestampRecoveryHandler", align 8 ; 13 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !91  ; 3 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_ZN7rocksdb12_GLOBAL__N_134AllRunningColumnFamiliesConsistentERKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEESC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %.not.not.i.i.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br i1 %.not.not.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.d
  %.sroa.05.017.us.i = phi ptr [ %i.u, %bb.d ], [ %.val, %.lr.ph.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.017.us.i, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.017.us.i, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.split.us.i
  %.sroa.06.0.in.i.i.us.i = phi ptr [ %i.h, %.lr.ph.split.us.i ], [ %.sroa.06.0.i.i.us.i, %bb.c ]
  %.sroa.06.0.i.i.us.i = load ptr, ptr %.sroa.06.0.in.i.i.us.i, align 8, !tbaa !66 ; 4 uses
  %i.l = icmp eq ptr %.sroa.06.0.i.i.us.i, null
  br i1 %i.l, label %.loopexit.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.i, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !67
  %i.o = icmp eq i32 %i.k, %i.n
  br i1 %i.o, label %.loopexit.us.thread.i, label %bb.b, !llvm.loop !68

.loopexit.us.i:                                   ; preds = %bb.b
  %i.p = load i64, ptr %i.j, align 8, !tbaa !75
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.d, label %.loopexit

.loopexit.us.thread.i:                            ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !75
  %i.s = load i64, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  %i.t = icmp ne i64 %i.s, 0
  %.not.i.not.us.i = icmp eq i64 %i.s, %i.r
  %or.cond.i = select i1 %i.t, i1 %.not.i.not.us.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.loopexit.us.thread.i, %.loopexit.us.i
  %i.u = load ptr, ptr %.sroa.05.017.us.i, align 8, !tbaa !66 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN7rocksdb12_GLOBAL__N_134AllRunningColumnFamiliesConsistentERKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEESC_.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.thread50.i
  %.sroa.05.017.i = phi ptr [ %i.at, %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.thread50.i ], [ %.val, %.lr.ph.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !67   ; 3 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = urem i64 %i.z, %i.f                     ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %.loopexit12.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !67
  %i.ag = icmp eq i32 %i.y, %i.af
  br i1 %i.ag, label %.loopexit12.thread.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.ah = icmp eq i32 %i.y, %i.ak
  br i1 %i.ah, label %.loopexit12.thread.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !73

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i = phi ptr [ %i.ai, %bb.f ], [ %i.ad, %bb.e ]
  %i.ai = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !66 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit12.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !67 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = urem i64 %i.al, %i.f
  %.not19.i.i.i.i.i = icmp eq i64 %i.am, %i.aa
  br i1 %.not19.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !73

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.g
  br label %.loopexit12.i, !llvm.loop !73

.loopexit12.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %.lr.ph.split.i
  %i.an = load i64, ptr %i.x, align 8, !tbaa !75
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.thread50.i, label %.loopexit

.loopexit12.thread.i:                             ; preds = %bb.f, %bb.e
  %.sroa.06.1.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.ai, %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !75
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !75  ; 2 uses
  %i.as = icmp ne i64 %i.ar, 0
  %.not.i.not.i = icmp eq i64 %i.ar, %i.aq
  %or.cond56.i = select i1 %i.as, i1 %.not.i.not.i, i1 false
  br i1 %or.cond56.i, label %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.thread50.i, label %.loopexit

_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.thread50.i: ; preds = %.loopexit12.thread.i, %.loopexit12.i
  %i.at = load ptr, ptr %.sroa.05.017.i, align 8, !tbaa !66 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN7rocksdb12_GLOBAL__N_134AllRunningColumnFamiliesConsistentERKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEESC_.exit, label %.lr.ph.split.i

_ZN7rocksdb12_GLOBAL__N_134AllRunningColumnFamiliesConsistentERKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEESC_.exit: ; preds = %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.thread50.i, %bb.d, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.av, align 8, !tbaa !50, !alias.scope !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !92
  br label %bb.bb

.loopexit:                                        ; preds = %.loopexit12.i, %.loopexit12.thread.i, %.loopexit.us.thread.i, %.loopexit.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !95
  invoke void @_ZN7rocksdb36CollectColumnFamilyIdsFromWriteBatchERKNS_10WriteBatchEPSt6vectorIjSaIjEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull %8)
          to label %bb.h unwind label %bb.j, !noalias !95

bb.h:                                             ; preds = %.loopexit
  %i.aw = load i8, ptr %9, align 8, !tbaa !39, !noalias !95 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 %i.aw, ptr %14, align 8, !tbaa !39, !alias.scope !95
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bc = load <4 x i8>, ptr %i.az, align 1, !tbaa !35, !noalias !95
  store <4 x i8> zeroinitializer, ptr %9, align 8, !tbaa !35, !noalias !95
  store <4 x i8> %i.bc, ptr %i.ba, align 1, !tbaa !35, !alias.scope !95
  store i8 0, ptr %i.bb, align 4, !tbaa !51, !noalias !95
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35, !noalias !95
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 5
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !52, !alias.scope !95
  store i8 0, ptr %i.bd, align 1, !tbaa !52, !noalias !95
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53, !noalias !95
  store ptr null, ptr %i.bg, align 8, !tbaa !53, !noalias !95
  store ptr %i.bh, ptr %i.ay, align 8, !tbaa !53, !alias.scope !95
  br label %_ZN7rocksdb6StatusC2EOS0_.exit.i

bb.j:                                             ; preds = %.loopexit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit49.i

bb.k:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %8, align 8, !tbaa !98, !noalias !95 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !98, !noalias !95 ; 2 uses
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %.critedge.i, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !58, !noalias !95
  %.not.not.i.i.i28 = icmp eq i64 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = icmp eq i32 %4, 0                       ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i, %.lr.ph.i27
  %.1 = phi i1 [ false, %.lr.ph.i27 ], [ %.2, %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i ] ; 7 uses
  %.sroa.059.084.i = phi ptr [ %i.bj, %.lr.ph.i27 ], [ %i.du, %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i ] ; 2 uses
  %i.br = load i32, ptr %.sroa.059.084.i, align 4, !noalias !95 ; 8 uses
  br i1 %.not.not.i.i.i28, label %.preheader60, label %bb.n

.preheader60:                                     ; preds = %bb.l, %bb.m
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.m ], [ %i.a, %bb.l ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !66, !noalias !95 ; 4 uses
  %i.bs = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.bs, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %.preheader60
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !67, !noalias !95
  %i.bv = icmp eq i32 %i.br, %i.bu
  br i1 %i.bv, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.i, label %.preheader60, !llvm.loop !68

bb.n:                                             ; preds = %bb.l
  %i.bw = zext i32 %i.br to i64
  %i.bx = load i64, ptr %i.bp, align 8, !tbaa !70, !noalias !95 ; 2 uses
  %i.by = urem i64 %i.bw, %i.bx                   ; 2 uses
  %i.bz = load ptr, ptr %2, align 8, !tbaa !71, !noalias !95
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !72, !noalias !95 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i29, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66, !noalias !95 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !67, !noalias !95
  %i.cf = icmp eq i32 %i.br, %i.ce
  br i1 %i.cf, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.i, label %.lr.ph.i.i.i.i.i30

bb.p:                                             ; preds = %bb.q
  %i.cg = icmp eq i32 %i.br, %i.cj
  br i1 %i.cg, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.i, label %.lr.ph.i.i.i.i.i30, !llvm.loop !73

.lr.ph.i.i.i.i.i30:                               ; preds = %bb.o, %bb.p
  %.020.i.i.i.i.i31 = phi ptr [ %i.ch, %bb.p ], [ %i.cc, %bb.o ]
  %i.ch = load ptr, ptr %.020.i.i.i.i.i31, align 8, !tbaa !66, !noalias !95 ; 4 uses
  %.not18.i.i.i.i.i32 = icmp eq ptr %i.ch, null
  br i1 %.not18.i.i.i.i.i32, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i30
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !67, !noalias !95 ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = urem i64 %i.ck, %i.bx
  %.not19.i.i.i.i.i33 = icmp eq i64 %i.cl, %i.by
  br i1 %.not19.i.i.i.i.i33, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i.i34, !llvm.loop !73

..loopexit_crit_edge21.i.i.i.i.i34:               ; preds = %bb.q
  br label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i, !llvm.loop !73

_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.i: ; preds = %bb.p, %bb.m, %bb.o
  %.sroa.06.1.i.i.i35 = phi ptr [ %.sroa.06.0.i.i.i, %bb.m ], [ %i.cc, %bb.o ], [ %i.ch, %bb.p ]
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !58, !noalias !95
  %.not.not.i.i34.i = icmp eq i64 %i.cm, 0
  br i1 %.not.not.i.i34.i, label %.preheader, label %bb.s

.preheader:                                       ; preds = %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.i, %bb.r
  %.sroa.06.0.in.i.i42.i = phi ptr [ %.sroa.06.0.i.i43.i, %bb.r ], [ %i.h, %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.i ]
  %.sroa.06.0.i.i43.i = load ptr, ptr %.sroa.06.0.in.i.i42.i, align 8, !tbaa !66, !noalias !95 ; 4 uses
  %i.cn = icmp eq ptr %.sroa.06.0.i.i43.i, null
  br i1 %i.cn, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i43.i, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !67, !noalias !95
  %i.cq = icmp eq i32 %i.br, %i.cp
  br i1 %i.cq, label %.loopexit73.i, label %.preheader, !llvm.loop !68

bb.s:                                             ; preds = %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.i
  %i.cr = zext i32 %i.br to i64
  %i.cs = load i64, ptr %i.e, align 8, !tbaa !70, !noalias !95 ; 2 uses
  %i.ct = urem i64 %i.cr, %i.cs                   ; 2 uses
  %i.cu = load ptr, ptr %3, align 8, !tbaa !71, !noalias !95
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !72, !noalias !95 ; 2 uses
  %.not.i.i.i.i35.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i35.i, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !66, !noalias !95 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !67, !noalias !95
  %i.da = icmp eq i32 %i.br, %i.cz
  br i1 %i.da, label %.loopexit73.i, label %.lr.ph.i.i.i.i36.i

bb.u:                                             ; preds = %bb.v
  %i.db = icmp eq i32 %i.br, %i.de
  br i1 %i.db, label %.loopexit73.i, label %.lr.ph.i.i.i.i36.i, !llvm.loop !73

.lr.ph.i.i.i.i36.i:                               ; preds = %bb.t, %bb.u
  %.020.i.i.i.i37.i = phi ptr [ %i.dc, %bb.u ], [ %i.cx, %bb.t ]
  %i.dc = load ptr, ptr %.020.i.i.i.i37.i, align 8, !tbaa !66, !noalias !95 ; 4 uses
  %.not18.i.i.i.i38.i = icmp eq ptr %i.dc, null
  br i1 %.not18.i.i.i.i38.i, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i36.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !67, !noalias !95 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = urem i64 %i.df, %i.cs
  %.not19.i.i.i.i39.i = icmp eq i64 %i.dg, %i.ct
  br i1 %.not19.i.i.i.i39.i, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i40.i, !llvm.loop !73

..loopexit_crit_edge21.i.i.i.i40.i:               ; preds = %bb.v
  br label %.loopexit.i, !llvm.loop !73

.loopexit73.i:                                    ; preds = %bb.u, %bb.r, %bb.t
  %.sroa.06.1.i.i41.i = phi ptr [ %.sroa.06.0.i.i43.i, %bb.r ], [ %i.cx, %bb.t ], [ %i.dc, %bb.u ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i41.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !75, !noalias !95
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i36.i, %.preheader, %.loopexit73.i, %..loopexit_crit_edge21.i.i.i.i40.i, %bb.s
  %.sroa.4.0.i = phi i8 [ 1, %.loopexit73.i ], [ 0, %..loopexit_crit_edge21.i.i.i.i40.i ], [ 0, %.preheader ], [ 0, %bb.s ], [ 0, %.lr.ph.i.i.i.i36.i ] ; 2 uses
  %.sroa.052.0.i = phi i64 [ %i.di, %.loopexit73.i ], [ undef, %..loopexit_crit_edge21.i.i.i.i40.i ], [ undef, %.preheader ], [ undef, %bb.s ], [ undef, %.lr.ph.i.i.i.i36.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i35, i64 16
  %i.dj = load i64, ptr %.in.i, align 8, !tbaa !79, !noalias !95 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit.i
  %i.dl = shl nuw nsw i8 %.sroa.4.0.i, 1
  %..i.i = zext nneg i8 %i.dl to i32
  br label %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.i

bb.x:                                             ; preds = %.loopexit.i
  %i.dm = trunc nuw i8 %.sroa.4.0.i to i1
  br i1 %i.dm, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %.not.i.i = icmp ne i64 %i.dj, %.sroa.052.0.i
  %.6.i.i = zext i1 %.not.i.i to i32
  br label %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.i

_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.i: ; preds = %bb.y, %bb.w
  %.0.i.i = phi i32 [ %.6.i.i, %bb.y ], [ %..i.i, %bb.w ] ; 2 uses
  %.not.i36 = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i36, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.i
  br i1 %i.bq, label %bb.aa, label %bb.ac

.thread.i:                                        ; preds = %bb.x
  br i1 %i.bq, label %bb.aa, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i

bb.aa:                                            ; preds = %.thread.i, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18, !noalias !95
  store ptr @.str.9, ptr %10, align 8, !tbaa !36, !noalias !95
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 49, ptr %i.dn, align 8, !tbaa !38, !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18, !noalias !95
  store ptr @.str.8, ptr %11, align 8, !tbaa !36, !noalias !95
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.do, align 8, !tbaa !38, !noalias !95
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit.i unwind label %bb.ab

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !95
  br label %_ZN7rocksdb6StatusC2EOS0_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !95
  br label %bb.ag

bb.ac:                                            ; preds = %bb.z
  %i.dq = icmp eq i32 %.0.i.i, 1
  br i1 %i.dq, label %bb.ad, label %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18, !noalias !95
  store ptr @.str.10, ptr %12, align 8, !tbaa !36, !noalias !95
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 63, ptr %i.dr, align 8, !tbaa !38, !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18, !noalias !95
  store ptr @.str.8, ptr %13, align 8, !tbaa !36, !noalias !95
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.ds, align 8, !tbaa !38, !noalias !95
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit45.i unwind label %bb.ae

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit45.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !95
  br label %_ZN7rocksdb6StatusC2EOS0_.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !95
  br label %bb.ag

_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i30, %.preheader60, %.thread.i, %bb.ac, %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.i, %..loopexit_crit_edge21.i.i.i.i.i34, %bb.n
  %.2 = phi i1 [ true, %.thread.i ], [ %.1, %_ZN7rocksdb12_GLOBAL__N_115GetRecoveryTypeEmRKSt8optionalImE.exit.i ], [ %.1, %..loopexit_crit_edge21.i.i.i.i.i34 ], [ %.1, %bb.n ], [ %.1, %.preheader60 ], [ true, %bb.ac ], [ %.1, %.lr.ph.i.i.i.i.i30 ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.059.084.i, i64 4 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bl
  br i1 %i.dv, label %.critedge.i, label %bb.l

.critedge.i:                                      ; preds = %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i, %bb.k
  %.3 = phi i1 [ false, %bb.k ], [ %.2, %_ZNKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEE4findERS5_.exit.thread.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.dw, align 8, !tbaa !50, !alias.scope !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 6, i1 false), !alias.scope !100
  br label %_ZN7rocksdb6StatusC2EOS0_.exit.i

_ZN7rocksdb6StatusC2EOS0_.exit.i:                 ; preds = %.critedge.i, %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit45.i, %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit.i, %bb.i
  %.0 = phi i1 [ %.3, %.critedge.i ], [ %.1, %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit.i ], [ %.1, %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit45.i ], [ false, %bb.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !53, !noalias !95 ; 2 uses
  %.not.i.i46.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i46.i, label %_ZN7rocksdb6StatusD2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.dy) #17
  br label %_ZN7rocksdb6StatusD2Ev.exit.i

_ZN7rocksdb6StatusD2Ev.exit.i:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i, %_ZN7rocksdb6StatusC2EOS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !95
  %i.dz = load ptr, ptr %8, align 8, !tbaa !103, !noalias !95 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !105, !noalias !95
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #17
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae, %bb.ab
  %.pn30.i = phi { ptr, i32 } [ %i.dt, %bb.ae ], [ %i.dp, %bb.ab ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !53, !noalias !95 ; 2 uses
  %.not.i.i47.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i47.i, label %_ZN7rocksdb6StatusD2Ev.exit49.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i48.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i48.i: ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.eg) #17
  br label %_ZN7rocksdb6StatusD2Ev.exit49.i

_ZN7rocksdb6StatusD2Ev.exit49.i:                  ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i48.i, %bb.ag, %bb.j
  %.pn30.pn.i = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %.pn30.i, %bb.ag ], [ %.pn30.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i48.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !95
  %i.eh = load ptr, ptr %8, align 8, !tbaa !103, !noalias !95 ; 3 uses
  %.not.i.i.i50.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i50.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit51.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit49.i
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !105, !noalias !95
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit51.i

common.resume:                                    ; preds = %_ZN7rocksdb6StatusD2Ev.exit55, %_ZNSt6vectorIjSaIjEED2Ev.exit51.i
  %common.resume.op = phi { ptr, i32 } [ %.pn30.pn.i, %_ZNSt6vectorIjSaIjEED2Ev.exit51.i ], [ %.pn25, %_ZN7rocksdb6StatusD2Ev.exit55 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIjSaIjEED2Ev.exit51.i:                ; preds = %bb.ah, %_ZN7rocksdb6StatusD2Ev.exit49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !95
  br label %common.resume

bb.ai:                                            ; preds = %bb.af, %_ZN7rocksdb6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !95
  %i.en = load i8, ptr %14, align 8, !tbaa !39    ; 2 uses
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ep, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i37 = icmp eq ptr %0, %14
  br i1 %.not.i.i37, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.en, ptr %0, align 8, !tbaa !39
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.et = load <4 x i8>, ptr %i.eq, align 1, !tbaa !35
  store <4 x i8> zeroinitializer, ptr %14, align 8, !tbaa !35
  store <4 x i8> %i.et, ptr %i.er, align 1, !tbaa !35
  store i8 0, ptr %i.es, align 4, !tbaa !51
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 5 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !35
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !52
  store i8 0, ptr %i.eu, align 1, !tbaa !52
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !53
  store ptr null, ptr %i.ex, align 8, !tbaa !53
  store ptr %i.ey, ptr %i.ep, align 8, !tbaa !53
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.al:                                            ; preds = %bb.ai
  br i1 %.0, label %bb.am, label %bb.az

bb.am:                                            ; preds = %bb.al
  %i.ez = invoke noundef i64 @_ZN7rocksdb18WriteBatchInternal8SequenceEPKNS_10WriteBatchE(ptr noundef nonnull %1)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN7rocksdb24TimestampRecoveryHandlerC1ERKSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEESC_bb(ptr noundef nonnull align 8 dereferenceable(42) %15, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext %5, i1 noundef zeroext %6)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  invoke void @_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull %15)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.fb = load <4 x i8>, ptr %16, align 8, !tbaa !35
  store <4 x i8> %i.fb, ptr %14, align 8, !tbaa !35
  store <4 x i8> zeroinitializer, ptr %16, align 8, !tbaa !35
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 4, !tbaa !89, !range !90, !noundef !56
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  store i8 %i.fd, ptr %i.fe, align 4, !tbaa !51
  store i8 0, ptr %i.fc, align 4, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 5 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !35
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 5 ; 3 uses
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !52
  store i8 0, ptr %i.ff, align 1, !tbaa !52
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !53
  store ptr null, ptr %i.fi, align 8, !tbaa !53
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !53 ; 2 uses
  store ptr %i.fk, ptr %i.fj, align 8, !tbaa !53
  %.not.i.i.i.i.i39 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i39, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.fl) #17
  %.pr = load ptr, ptr %i.fi, align 8, !tbaa !53  ; 2 uses
  %.not.i.i40 = icmp eq ptr %.pr, null
  br i1 %.not.i.i40, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #17
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.ap, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.fm = load i8, ptr %14, align 8, !tbaa !39    ; 2 uses
  %i.fn = icmp eq i8 %i.fm, 0                     ; 2 uses
  br i1 %i.fn, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.fo, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i41 = icmp eq ptr %0, %14
  br i1 %.not.i.i41, label %_ZN7rocksdb6StatusC2EOS0_.exit44, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i8 %i.fm, ptr %0, align 8, !tbaa !39
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.fq = load <4 x i8>, ptr %i.fa, align 1, !tbaa !35
  store <4 x i8> zeroinitializer, ptr %14, align 8, !tbaa !35
  store <4 x i8> %i.fq, ptr %i.fp, align 1, !tbaa !35
  store i8 0, ptr %i.fe, align 4, !tbaa !51
  %i.fr = load i8, ptr %i.fh, align 1, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !52
  store i8 0, ptr %i.fh, align 1, !tbaa !52
  %i.ft = load ptr, ptr %i.fj, align 8, !tbaa !53
  store ptr null, ptr %i.fj, align 8, !tbaa !53
  store ptr %i.ft, ptr %i.fo, align 8, !tbaa !53
  br label %_ZN7rocksdb6StatusC2EOS0_.exit44

bb.as:                                            ; preds = %bb.am
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.at:                                            ; preds = %bb.an
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.au:                                            ; preds = %bb.ao
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.ax
end_hunk_1
