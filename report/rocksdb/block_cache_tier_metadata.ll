Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_cache_tier_metadata?download=true
inline.NumInlined: 472
inline.NumDeleted: 307
begin_hunk_0_@_ZN7rocksdb22BlockCacheTierMetadata5ClearEv:bb.a
  br i1 %.not.i.i16.i, label %._crit_edge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.noexc.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.pre.i.i.i, ptr %i.ah, align 8, !tbaa !62
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %.noexc.i.i
  %.not14.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not14.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !64  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ae
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63
  store ptr %i.am, ptr %i.r, align 8, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !61  ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  store ptr %i.aq, ptr %i.s, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i.i.i, i8 0, i64 16, i1 false)
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %"_ZZN7rocksdb22BlockCacheTierMetadata5ClearEvEN3$_08__invokeEPNS_14BlockCacheFileE.exit" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #14
  unreachable

bb.l:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.body.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #14
  unreachable

"_ZZN7rocksdb22BlockCacheTierMetadata5ClearEvEN3$_08__invokeEPNS_14BlockCacheFileE.exit": ; preds = %bb.j
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(160) %i.ae) #13, !inline_history !102
  %.sroa.018.0.i = load ptr, ptr %.sroa.018.0.i21, align 8, !tbaa !53 ; 2 uses
  %i.az = icmp eq ptr %.sroa.018.0.i, %i.p
  br i1 %i.az, label %._crit_edge.loopexit, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ba, %bb.n ], [ %i.at, %bb.l ]
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %_ZN7rocksdb9WriteLockD2Ev.exit17.i unwind label %bb.o

bb.o:                                             ; preds = %.body.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #14
  unreachable

_ZN7rocksdb9WriteLockD2Ev.exit17.i:               ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_ZN7rocksdb18EvictableHashTableINS_14BlockCacheFileENS_22BlockCacheTierMetadata18BlockCacheFileHashENS2_19BlockCacheFileEqualEE5ClearEPFvPS1_E.exit: ; preds = %_ZN7rocksdb9WriteLockD2Ev.exit.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !86
  %.not.i1 = icmp eq i32 %i.be, 0
  br i1 %.not.i1, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE5ClearEPFvS2_E.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %_ZN7rocksdb18EvictableHashTableINS_14BlockCacheFileENS_22BlockCacheTierMetadata18BlockCacheFileHashENS2_19BlockCacheFileEqualEE5ClearEPFvPS1_E.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZN7rocksdb9WriteLockD2Ev.exit.i8, %.lr.ph.i2
  %indvars.iv.i3 = phi i64 [ 0, %.lr.ph.i2 ], [ %indvars.iv.next.i9, %_ZN7rocksdb9WriteLockD2Ev.exit.i8 ] ; 5 uses
  %i.bi = load i32, ptr %i.bf, align 8, !tbaa !87
  %i.bj = trunc nuw i64 %indvars.iv.i3 to i32
  %i.bk = urem i32 %i.bj, %i.bi
  %i.bl = zext i32 %i.bk to i64
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %i.bl ; 2 uses
  tail call void @_ZN7rocksdb4port7RWMutex9WriteLockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bn)
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !88 ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %indvars.iv.i3 ; 3 uses
  %.sroa.013.0.i22 = load ptr, ptr %i.bp, align 8, !tbaa !53 ; 3 uses
  %i.bq = icmp eq ptr %.sroa.013.0.i22, %i.bp
  br i1 %i.bq, label %._crit_edge26, label %.lr.ph25

._crit_edge26.loopexit:                           ; preds = %"_ZZN7rocksdb22BlockCacheTierMetadata5ClearEvEN3$_18__invokeEPNS_9BlockInfoE.exit"
  %.pre36 = load ptr, ptr %i.bh, align 8, !tbaa !88 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre36, i64 %indvars.iv.i3
  %.pre37 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %bb.p
  %i.br = phi ptr [ %.pre37, %._crit_edge26.loopexit ], [ %.sroa.013.0.i22, %bb.p ] ; 2 uses
  %i.bs = phi ptr [ %.pre36, %._crit_edge26.loopexit ], [ %i.bo, %bb.p ]
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %indvars.iv.i3 ; 7 uses
  %.not8.i.i.i4 = icmp eq ptr %i.br, %i.bt
  br i1 %.not8.i.i.i4, label %_ZNSt7__cxx114listIPN7rocksdb9BlockInfoESaIS3_EE5clearEv.exit.i, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %._crit_edge26, %.lr.ph.i.i.i5
  %.09.i.i.i6 = phi ptr [ %i.bu, %.lr.ph.i.i.i5 ], [ %i.br, %._crit_edge26 ] ; 2 uses
  %i.bu = load ptr, ptr %.09.i.i.i6, align 8, !tbaa !53 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i6, i64 noundef 24) #15
  %.not.i.i.i7 = icmp eq ptr %i.bu, %i.bt
  br i1 %.not.i.i.i7, label %_ZNSt7__cxx114listIPN7rocksdb9BlockInfoESaIS3_EE5clearEv.exit.i, label %.lr.ph.i.i.i5, !llvm.loop !1

_ZNSt7__cxx114listIPN7rocksdb9BlockInfoESaIS3_EE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i5, %._crit_edge26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !69
  store ptr %i.bt, ptr %i.bt, align 8, !tbaa !53
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 0, ptr %i.bw, align 8, !tbaa !70
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bn)
          to label %_ZN7rocksdb9WriteLockD2Ev.exit.i8 unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx114listIPN7rocksdb9BlockInfoESaIS3_EE5clearEv.exit.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #14
  unreachable

_ZN7rocksdb9WriteLockD2Ev.exit.i8:                ; preds = %_ZNSt7__cxx114listIPN7rocksdb9BlockInfoESaIS3_EE5clearEv.exit.i
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i3, 1 ; 2 uses
  %i.bz = load i32, ptr %i.bd, align 8, !tbaa !86
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.next.i9, %i.ca
  br i1 %i.cb, label %bb.p, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE5ClearEPFvS2_E.exit, !llvm.loop !103

.lr.ph25:                                         ; preds = %bb.p, %"_ZZN7rocksdb22BlockCacheTierMetadata5ClearEvEN3$_18__invokeEPNS_9BlockInfoE.exit"
  %.sroa.013.0.i23 = phi ptr [ %.sroa.013.0.i, %"_ZZN7rocksdb22BlockCacheTierMetadata5ClearEvEN3$_18__invokeEPNS_9BlockInfoE.exit" ], [ %.sroa.013.0.i22, %bb.p ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i23, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !90 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %"_ZZN7rocksdb22BlockCacheTierMetadata5ClearEvEN3$_18__invokeEPNS_9BlockInfoE.exit", label %bb.r

bb.r:                                             ; preds = %.lr.ph25
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !71 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN7rocksdb9BlockInfoD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !68
  %i.cj = add i64 %i.ci, 1
  tail call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #15
  br label %_ZN7rocksdb9BlockInfoD2Ev.exit.i.i

_ZN7rocksdb9BlockInfoD2Ev.exit.i.i:               ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 48) #15
  br label %"_ZZN7rocksdb22BlockCacheTierMetadata5ClearEvEN3$_18__invokeEPNS_9BlockInfoE.exit"

"_ZZN7rocksdb22BlockCacheTierMetadata5ClearEvEN3$_18__invokeEPNS_9BlockInfoE.exit": ; preds = %.lr.ph25, %_ZN7rocksdb9BlockInfoD2Ev.exit.i.i
  %.sroa.013.0.i = load ptr, ptr %.sroa.013.0.i23, align 8, !tbaa !53 ; 2 uses
  %i.ck = icmp eq ptr %.sroa.013.0.i, %i.bp
  br i1 %i.ck, label %._crit_edge26.loopexit, label %.lr.ph25

_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE5ClearEPFvS2_E.exit: ; preds = %_ZN7rocksdb9WriteLockD2Ev.exit.i8, %_ZN7rocksdb18EvictableHashTableINS_14BlockCacheFileENS_22BlockCacheTierMetadata18BlockCacheFileHashENS2_19BlockCacheFileEqualEE5ClearEPFvPS1_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb22BlockCacheTierMetadata6InsertERKNS_5SliceERKNS_19LogicalBlockAddressE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.37", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #12 ; 8 uses
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 dereferenceable(44) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !92
  store ptr %i.b, ptr %3, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %i.b, ptr %i.a, align 8, !tbaa !90
  %i.e = invoke noundef zeroext i1 @_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6InsertERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %spec.select = select i1 %i.e, ptr null, ptr %i.b ; 2 uses
  br i1 %i.e, label %_ZNSt10unique_ptrIN7rocksdb9BlockInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #15
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_ZNSt10unique_ptrIN7rocksdb9BlockInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt14default_deleteIN7rocksdb9BlockInfoEEclEPS1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !68
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #15
  br label %_ZNKSt14default_deleteIN7rocksdb9BlockInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb9BlockInfoEEclEPS1_.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %spec.select, i64 noundef 48) #15
  br label %_ZNSt10unique_ptrIN7rocksdb9BlockInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb9BlockInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN7rocksdb9BlockInfoEEclEPS1_.exit.i
  %.0610 = phi ptr [ %i.b, %bb.c ], [ null, %_ZNKSt14default_deleteIN7rocksdb9BlockInfoEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %.0610

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6InsertERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67
  %i.e = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.b, i64 noundef %i.d, i64 noundef 3339675911)
          to label %_ZNK7rocksdb22BlockCacheTierMetadata4HashclEPNS_9BlockInfoE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #14
  unreachable

_ZNK7rocksdb22BlockCacheTierMetadata4HashclEPNS_9BlockInfoE.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !86
  %i.j = zext i32 %i.i to i64
  %i.k = urem i64 %i.e, %i.j                      ; 2 uses
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !87
  %i.o = urem i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = zext i32 %i.o to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %i.q ; 3 uses
  tail call void @_ZN7rocksdb4port7RWMutex9WriteLockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.k ; 7 uses
  %.sroa.05.012.i.i = load ptr, ptr %i.v, align 8, !tbaa !53 ; 3 uses
  %i.w = icmp eq ptr %.sroa.05.012.i.i, %i.v
  br i1 %i.w, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK7rocksdb22BlockCacheTierMetadata4HashclEPNS_9BlockInfoE.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67
  %.fr11.i = freeze i64 %i.z                      ; 3 uses
  %i.aa = icmp eq i64 %.fr11.i, 0
  br i1 %i.aa, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.us.i
  %.sroa.05.013.i.us.i = phi ptr [ %.sroa.05.0.i.us.i, %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.us.i ], [ %.sroa.05.012.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i.us.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !67
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.i, label %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.us.i

_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %.sroa.05.0.i.us.i = load ptr, ptr %.sroa.05.013.i.us.i, align 8, !tbaa !53 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.05.0.i.us.i, %i.v
  br i1 %i.ag, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.thread.i, label %.lr.ph.i.split.us.i, !llvm.loop !3

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.i
  %.sroa.05.013.i.i = phi ptr [ %.sroa.05.0.i.i, %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.i ], [ %.sroa.05.012.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !90 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !67
  %i.al = icmp eq i64 %i.ak, %.fr11.i
  br i1 %i.al, label %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.i.i, label %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.i

_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !71
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.an, ptr %i.am, i64 %.fr11.i)
  %.not.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i.i, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.i, label %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.i

_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.i: ; preds = %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.i.i, %.lr.ph.i.split.i
  %.sroa.05.0.i.i = load ptr, ptr %.sroa.05.013.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ao = icmp eq ptr %.sroa.05.0.i.i, %i.v
  br i1 %i.ao, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.thread.i, label %.lr.ph.i.split.i, !llvm.loop !3

_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.i: ; preds = %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi ptr [ %.sroa.05.013.i.us.i, %.lr.ph.i.split.us.i ], [ %.sroa.05.013.i.i, %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.i.i ]
  %i.ap = icmp eq ptr %.us-phi.i, %i.v
  br i1 %i.ap, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.thread.i, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6InsertEPNS6_6BucketERKS2_.exit

_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.thread.i: ; preds = %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.i, %_ZNK7rocksdb22BlockCacheTierMetadata5EqualclEPNS_9BlockInfoES3_.exit.thread.i.us.i, %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.i, %_ZNK7rocksdb22BlockCacheTierMetadata4HashclEPNS_9BlockInfoE.exit
  %i.aq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.thread.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !90
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.v) #13
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !93
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !93
  br label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6InsertEPNS6_6BucketERKS2_.exit

_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6InsertEPNS6_6BucketERKS2_.exit: ; preds = %.noexc, %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.i
  %i.aw = phi i1 [ false, %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.i ], [ true, %.noexc ]
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %_ZN7rocksdb9WriteLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6InsertEPNS6_6BucketERKS2_.exit
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #14
  unreachable

_ZN7rocksdb9WriteLockD2Ev.exit:                   ; preds = %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6InsertEPNS6_6BucketERKS2_.exit
  ret i1 %i.aw

bb.d:                                             ; preds = %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindEPNSt7__cxx114listIS2_SaIS2_EEERKS2_.exit.thread.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %_ZN7rocksdb9WriteLockD2Ev.exit9 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #14
  unreachable

_ZN7rocksdb9WriteLockD2Ev.exit9:                  ; preds = %bb.d
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7rocksdb9BlockInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteIN7rocksdb9BlockInfoEEclEPS1_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !68
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #15
  br label %_ZNKSt14default_deleteIN7rocksdb9BlockInfoEEclEPS1_.exit

_ZNKSt14default_deleteIN7rocksdb9BlockInfoEEclEPS1_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #15
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteIN7rocksdb9BlockInfoEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb22BlockCacheTierMetadata6LookupERKNS_5SliceEPNS_19LogicalBlockAddressE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rocksdb::BlockInfo", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 dereferenceable(44) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !91
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !91
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr %3, ptr %i.c, align 8, !tbaa !90
  %i.f = invoke noundef zeroext i1 @_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE4FindERKS2_PS2_PPNS_4port7RWMutexE(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
end_hunk_0
