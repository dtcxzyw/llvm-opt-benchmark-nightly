Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/internal_stats?download=true
inline.NumInlined: 3253
inline.NumDeleted: 1381
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN7rocksdb13InternalStats34HandleBlockCacheEntryStatsInternalEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !29
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !28  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.g
  br i1 %i.ax, label %_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !29
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #36
  br label %_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit

_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.body

.body:                                            ; preds = %bb.l, %bb.c, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %i.ba, %bb.l ], [ %i.n, %bb.c ]
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !28  ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.g
  br i1 %i.bd, label %_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %.body
  %i.be = load i64, ptr %i.g, align 8, !tbaa !29
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #36
  br label %_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit11

_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit11: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.a, %_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats37HandleBlockCacheEntryStatsMapInternalEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2016) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rocksdb::InternalStats::CacheEntryRoleStats", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !779  ; 2 uses
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %_ZN7rocksdb13InternalStats22CollectCacheEntryStatsEb.exit, label %bb.g

_ZN7rocksdb13InternalStats22CollectCacheEntryStatsEb.exit: ; preds = %bb.a
  %i.d = select i1 %2, i32 180, i32 10
  %i.e = select i1 %2, i32 500, i32 10
  tail call void @_ZN7rocksdb24CacheEntryStatsCollectorINS_13InternalStats19CacheEntryRoleStatsEE12CollectStatsEii(ptr noundef nonnull align 8 dereferenceable(752) %i.b, i32 noundef %i.d, i32 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, i8 0, i64 32, i1 false)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !46
  store i8 0, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.i, i8 0, i64 28, i1 false)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !779  ; 6 uses
  %i.k = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(752) %i.j) #37 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN7rocksdb13InternalStats22CollectCacheEntryStatsEb.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.k) #41
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %_ZN7rocksdb13InternalStats22CollectCacheEntryStatsEb.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %i.l, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(752) %i.j) #37 ; 0 uses
  br label %.body

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(252) %i.p, ptr noundef nonnull align 8 dereferenceable(252) %i.q, i64 252, i1 false)
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(752) %i.j) #37 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !760
  invoke void @_ZNK7rocksdb13InternalStats19CacheEntryRoleStats5ToMapEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEEPNS_11SystemClockE(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef %1, ptr noundef %i.t)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.g, align 8, !tbaa !29
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #36
  br label %_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit

_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.n, %bb.c ]
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.g
  br i1 %i.aa, label %_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %.body
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #36
  br label %_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit7

_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit7: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %bb.a, %_ZN7rocksdb13InternalStats19CacheEntryRoleStatsD2Ev.exit
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN7rocksdb20ConsumeDecimalNumberEPNS_5SliceEPm(ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK7rocksdb16ColumnFamilyData20GetTotalBlobFileSizeEv(ptr noundef nonnull align 8 dereferenceable(3088)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN7rocksdb13InternalStats20GetBlobCacheForStatsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2016) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1912
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !751
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb15GetPropertyInfoERKNS_5SliceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"struct.std::pair.317", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %.sroa.013.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !398, !noalias !989 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !275, !noalias !989 ; 5 uses
  %.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr i8, ptr %.sroa.013.0.copyload.i, i64 %.sroa.4.0.copyload.i
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.017.i = phi i64 [ 0, %.lr.ph.i ], [ %i.f, %bb.c ] ; 3 uses
  %i.b = xor i64 %.017.i, -1
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29, !noalias !989
  %i.e = sext i8 %i.d to i32
  %isdigittmp.i = add nsw i32 %i.e, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.c, label %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %.017.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %.sroa.4.0.copyload.i
  br i1 %exitcond.not.i, label %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit, label %bb.b, !llvm.loop !7

_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit: ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.017.i, %bb.b ], [ %.sroa.4.0.copyload.i, %bb.c ] ; 2 uses
  %i.g = sub i64 %.sroa.4.0.copyload.i, %.0.lcssa.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i, i64 %i.g
  store ptr %.sroa.013.0.copyload.i, ptr %2, align 8, !tbaa !398, !alias.scope !989
  %.sroa.4.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx15.i, align 8, !tbaa !275, !alias.scope !989
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !398, !alias.scope !989
  %.sroa.6.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.0.lcssa.i, ptr %.sroa.6.0..sroa_idx11.i, align 8, !tbaa !275, !alias.scope !989
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.j = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14DBPropertyInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7rocksdb13InternalStats16ppt_name_to_infoB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit unwind label %bb.d ; 2 uses

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit: ; preds = %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit
  %i.k = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.d:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !29
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  resume { ptr, i32 } %i.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit
  %i.t = load i64, ptr %i.l, align 8, !tbaa !29
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.u) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  %i.v = icmp eq ptr %i.j, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.0 = select i1 %i.v, ptr null, ptr %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret ptr %.0
}

declare void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats17GetStringPropertyERKNS_14DBPropertyInfoERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2016) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.013.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !398, !noalias !992 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !275, !noalias !992 ; 5 uses
  %.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr i8, ptr %.sroa.013.0.copyload.i, i64 %.sroa.4.0.copyload.i
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.017.i = phi i64 [ 0, %.lr.ph.i ], [ %i.f, %bb.c ] ; 3 uses
  %i.b = xor i64 %.017.i, -1
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29, !noalias !992
  %i.e = sext i8 %i.d to i32
  %isdigittmp.i = add nsw i32 %i.e, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.c, label %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %.017.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %.sroa.4.0.copyload.i
  br i1 %exitcond.not.i, label %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit, label %bb.b, !llvm.loop !7

_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit: ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.017.i, %bb.b ], [ %.sroa.4.0.copyload.i, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.unpack = load i64, ptr %i.g, align 8, !tbaa !993 ; 3 uses
  %.elt5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.unpack6 = load i64, ptr %.elt5, align 8, !tbaa !993
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.unpack6 ; 2 uses
  %i.i = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !357
  %i.k = getelementptr i8, ptr %i.j, i64 %.unpack
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load ptr, ptr %i.l, align 8, !nosanitize !353
  br label %bb.f

bb.e:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit
  %i.n = inttoptr i64 %.unpack to ptr
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %i.p = sub i64 %.sroa.4.0.copyload.i, %.0.lcssa.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i, i64 %i.p
  %i.r = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(2016) %i.h, ptr noundef %3, ptr %i.q, i64 %.0.lcssa.i)
  ret i1 %i.r
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats14GetMapPropertyERKNS_14DBPropertyInfoERKNS_5SliceEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_St4lessISD_ESaISt4pairIKSD_SD_EEE(ptr noundef nonnull align 8 dereferenceable(2016) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.013.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !398, !noalias !996 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !275, !noalias !996 ; 5 uses
  %.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr i8, ptr %.sroa.013.0.copyload.i, i64 %.sroa.4.0.copyload.i
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.017.i = phi i64 [ 0, %.lr.ph.i ], [ %i.f, %bb.c ] ; 3 uses
  %i.b = xor i64 %.017.i, -1
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29, !noalias !996
  %i.e = sext i8 %i.d to i32
  %isdigittmp.i = add nsw i32 %i.e, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.c, label %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %.017.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %.sroa.4.0.copyload.i
  br i1 %exitcond.not.i, label %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit, label %bb.b, !llvm.loop !7

_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit: ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.017.i, %bb.b ], [ %.sroa.4.0.copyload.i, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.unpack = load i64, ptr %i.g, align 8, !tbaa !997 ; 3 uses
  %.elt5 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.unpack6 = load i64, ptr %.elt5, align 8, !tbaa !997
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.unpack6 ; 2 uses
  %i.i = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !357
  %i.k = getelementptr i8, ptr %i.j, i64 %.unpack
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load ptr, ptr %i.l, align 8, !nosanitize !353
  br label %bb.f

bb.e:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_121GetPropertyNameAndArgERKNS_5SliceE.exit
  %i.n = inttoptr i64 %.unpack to ptr
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %i.p = sub i64 %.sroa.4.0.copyload.i, %.0.lcssa.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i, i64 %i.p
  %i.r = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(2016) %i.h, ptr noundef %3, ptr %i.q, i64 %.0.lcssa.i)
  ret i1 %i.r
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats14GetIntPropertyERKNS_14DBPropertyInfoEPmPNS_6DBImplE(ptr noundef nonnull align 8 dereferenceable(2016) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 2048
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.unpack = load i64, ptr %i.b, align 8, !tbaa !795 ; 3 uses
  %.elt5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.unpack6 = load i64, ptr %.elt5, align 8, !tbaa !795
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.unpack6 ; 2 uses
  %i.d = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !357
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !353
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.unpack to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(2016) %i.c, ptr noundef %2, ptr noundef nonnull %3, ptr noundef null)
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats24GetIntPropertyOutOfMutexERKNS_14DBPropertyInfoEPNS_7VersionEPm(ptr noundef nonnull align 8 dereferenceable(2016) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.unpack = load i64, ptr %i.a, align 8, !tbaa !795 ; 3 uses
  %.elt4 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.unpack5 = load i64, ptr %.elt4, align 8, !tbaa !795
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.unpack5 ; 2 uses
  %i.c = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !357
  %i.e = getelementptr i8, ptr %i.d, i64 %.unpack
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load ptr, ptr %i.f, align 8, !nosanitize !353
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %.unpack to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(2016) %i.b, ptr noundef %3, ptr noundef null, ptr noundef %2)
  ret i1 %i.j
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #16

declare noundef double @_ZNK7rocksdb18VersionStorageInfo35GetEstimatedCompressionRatioAtLevelEi(ptr noundef nonnull align 16 dereferenceable(4288), i32 noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK7rocksdb18VersionStorageInfo13NumLevelBytesEi(ptr noundef nonnull align 16 dereferenceable(4288), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13InternalStats14DumpCFMapStatsEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2016) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  %3 = alloca %"class.std::tuple.973", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.937", align 1    ; 3 uses
  %5 = alloca %"struct.rocksdb::InternalStats::CompactionStats", align 8 ; 5 uses
  %6 = alloca %"class.std::map.850", align 8      ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %5, i8 0, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !38
  invoke void @_ZN7rocksdb13InternalStats14DumpCFMapStatsEPKNS_18VersionStorageInfoEPSt3mapIiS4_INS_13LevelStatTypeEdSt4lessIS5_ESaISt4pairIKS5_dEEES6_IiESaIS8_IKiSC_EEEPNS0_15CompactionStatsE(ptr noundef nonnull align 8 dereferenceable(2016) %0, ptr noundef nonnull %i.e, ptr noundef nonnull %6, ptr noundef nonnull %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %._crit_edge333, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 19
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 31 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 16 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  br label %bb.d

._crit_edge333:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.b
  invoke void @_ZN7rocksdb13InternalStats24DumpCFMapStatsWriteStallEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEE(ptr noundef nonnull align 8 dereferenceable(2016) %0, ptr noundef %1)
          to label %bb.cn unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge333, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.sroa.0216.0331 = phi ptr [ %i.k, %.lr.ph ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0216.0331, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !802 ; 3 uses
  %.not = icmp eq i32 %i.af, -1
  br i1 %.not, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  store ptr %i.o, ptr %7, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.o, ptr noundef nonnull align 1 dereferenceable(3) @.str.301, i64 3, i1 false)
  store i64 3, ptr %i.p, align 8, !tbaa !46
  store i8 0, ptr %i.q, align 1, !tbaa !29
  br label %.critedge46

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.ag = call i32 @llvm.abs.i32(i32 %i.af, i1 false) ; 5 uses
  %i.ah = icmp ult i32 %i.ag, 10
  br i1 %i.ah, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.k
  %.030.i.i = phi i32 [ %i.ap, %bb.k ], [ 1, %bb.e ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ao, %bb.k ], [ %i.ag, %bb.e ] ; 5 uses
  %i.ai = icmp ult i32 %.02329.i.i, 100
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aj = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ak = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.am = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ao = udiv i32 %.02329.i.i, 10000
  %i.ap = add i32 %.030.i.i, 4                    ; 2 uses
  %i.aq = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.aq, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e
  %.022.i.i = phi i32 [ %i.an, %bb.j ], [ %i.aj, %bb.f ], [ %i.al, %bb.h ], [ 1, %bb.e ], [ %i.ap, %bb.k ] ; 2 uses
  %.lobit.i = lshr i32 %i.af, 31                  ; 2 uses
  %i.ar = add i32 %.022.i.i, %.lobit.i            ; 3 uses
  %i.as = zext i32 %i.ar to i64                   ; 5 uses
end_hunk_0
