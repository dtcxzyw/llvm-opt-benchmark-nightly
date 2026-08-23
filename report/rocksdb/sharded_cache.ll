Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/sharded_cache?download=true
inline.NumInlined: 190
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7rocksdb16ShardedCacheBase19GetPrintableOptionsB5cxx11Ev:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26
  %.not8.i.i28 = icmp eq i64 %i.as, 0
  br i1 %.not8.i.i28, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at ; 2 uses
  %cond.i.i29 = icmp eq i64 %i.as, 1
  br i1 %cond.i.i29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = load i8, ptr %i.a, align 16, !tbaa !14
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !14
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr nonnull align 16 %i.a, i64 %i.as, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.at, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.as)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.q
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !50
  %i.be = load ptr, ptr %0, align 8, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  store i8 0, ptr %i.bf, align 1, !tbaa !14
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !94 ; 3 uses
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %bb.u unwind label %bb.ag

bb.u:                                             ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit, %bb.t
  %i.bo = phi ptr [ %i.bn, %bb.t ], [ @.str.4, %_ZN7rocksdb9MutexLockD2Ev.exit ]
  %i.bp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.3, ptr noundef %i.bo) #23 ; 0 uses
  %i.bq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23 ; 6 uses
  %i.br = load i64, ptr %i.c, align 8, !tbaa !50  ; 5 uses
  %i.bs = sub i64 9223372036854775807, %i.br
  %i.bt = icmp ult i64 %i.bs, %i.bq
  br i1 %i.bt, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i34

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc41 unwind label %bb.ag

.noexc41:                                         ; preds = %bb.v
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i34: ; preds = %bb.u
  %i.bu = add i64 %i.br, %i.bq                    ; 3 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.b
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i34
  %i.bx = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i34
  %i.by = load i64, ptr %i.b, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40
  %i.bz = phi i64 [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40 ]
  %.not.i.i37 = icmp ugt i64 %i.bu, %i.bz
  br i1 %.not.i.i37, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36
  %.not8.i.i38 = icmp eq i64 %i.bq, 0
  br i1 %.not8.i.i38, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.br ; 2 uses
  %cond.i.i39 = icmp eq i64 %i.bq, 1
  br i1 %cond.i.i39, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cb = load i8, ptr %i.a, align 16, !tbaa !14
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !14
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr nonnull align 16 %i.a, i64 %i.bq, i1 false)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.br, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.bq)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.aa
  store i64 %i.bu, ptr %i.c, align 8, !tbaa !50
  %i.cc = load ptr, ptr %0, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  store i8 0, ptr %i.cd, align 1, !tbaa !14
  %i.ce = load ptr, ptr %1, align 8, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 392
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %.invoke, %bb.q, %bb.k, %bb.e
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #25
  unreachable

bb.ag:                                            ; preds = %bb.aa, %bb.v, %bb.ab, %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae, %bb.ad
  %.pn7 = phi { ptr, i32 } [ %i.cl, %bb.ag ], [ %i.ch, %bb.ad ], [ %i.ci, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.pre = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %i.cm = icmp eq ptr %.pre, %i.b
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.ah
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !14
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.co) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 33) i32 @_ZNK7rocksdb16ShardedCacheBase15GetNumShardBitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 7) i32 @_ZN7rocksdb24GetDefaultCacheShardBitsEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = udiv i64 %0, %1                          ; 6 uses
  %.not = icmp ult i64 %i.a, 2
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.1 = icmp ult i64 %i.a, 4
  br i1 %.not.1, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.2 = icmp ult i64 %i.a, 8
  br i1 %.not.2, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.3 = icmp ult i64 %i.a, 16
  br i1 %.not.3, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.4 = icmp ult i64 %i.a, 32
  br i1 %.not.4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.5 = icmp ult i64 %i.a, 64
  %spec.select = select i1 %.not.5, i32 5, i32 6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.08 = phi i32 [ 3, %bb.d ], [ 0, %bb.a ], [ 1, %bb.b ], [ %spec.select, %bb.f ], [ 2, %bb.c ], [ 4, %bb.e ]
  ret i32 %.08
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb16ShardedCacheBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN7rocksdb16ShardedCacheBaseE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #23
  tail call void @_ZN7rocksdb5CacheD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb16ShardedCacheBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #25
  unreachable
}

declare void @_ZNK7rocksdb12Customizable9GetOptionERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS9_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK7rocksdb12Customizable13AreEquivalentERKNS_13ConfigOptionsEPKNS_12ConfigurableEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN7rocksdb12Configurable14PrepareOptionsERKNS_13ConfigOptionsE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(753), ptr noundef nonnull align 8 dereferenceable(976)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK7rocksdb12Customizable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7rocksdb12Configurable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ %i.a, %bb.a ], [ %i.i, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

declare void @_ZN7rocksdb12Configurable18ParseStringOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN7rocksdb12Configurable16ConfigureOptionsERKNS_13ConfigOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEPSJ_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

declare void @_ZN7rocksdb12Configurable11ParseOptionERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_Pv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK7rocksdb12Configurable15OptionsAreEqualERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSG_PSC_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK7rocksdb12Customizable16SerializeOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZNK7rocksdb12Customizable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb12Customizable5GetIdB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !47
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #23 ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !81

.noexc11.i:                                       ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #26 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !63
  store i64 %i.g, ptr %i.e, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.e, %bb.b ] ; 3 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.d, align 1, !tbaa !14
  store i8 %i.n, ptr %i.m, align 1, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.d, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb12Customizable12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #23
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !tbaa !63
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr nonnull %i.g, i64 %i.h)
  %i.m = icmp eq i32 %bcmp.i, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10
  %i.r = load i64, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #23
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9: ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8, !tbaa !63
  %bcmp.i8 = tail call i32 @bcmp(ptr %i.v, ptr nonnull %i.q, i64 %i.r)
  %i.w = icmp eq i32 %bcmp.i8, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.e, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a
  %.1 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %bb.a ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7rocksdb12Customizable5InnerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
end_hunk_0
