Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeArrayString?download=true
inline.NumInlined: 1635
inline.NumDeleted: 726
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7openvdb5v13_06points12_GLOBAL__N_112getStringKeyB5cxx11Ej:bb.a
  %i.ag = add i32 %.01819.i.i, -2
  %i.ah = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ah, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !228

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.v, %.lr.ph.i2.i ] ; 3 uses
  %i.ai = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.aj = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !40, !noalias !231
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !40
  %i.ap = load i8, ptr %i.al, align 2, !tbaa !40, !noalias !231
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aq = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.ar = or disjoint i8 %i.aq, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.ar, %bb.i ], [ %i.ap, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.n, align 1, !tbaa !40
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 7)
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !52, !alias.scope !232
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !51 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.aw, ptr %0, align 8, !tbaa !39, !alias.scope !232
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !40
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !40, !alias.scope !232
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.be = phi i64 [ %i.ba, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !51, !alias.scope !232
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !39
  store i64 0, ptr %i.bf, align 8, !tbaa !51
  store i8 0, ptr %i.ax, align 8, !tbaa !40
  %i.bh = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.m
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.l
  %i.bj = load i64, ptr %i.m, align 8, !tbaa !40
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.m
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.m
  %i.bo = load i64, ptr %i.m, align 8, !tbaa !40
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.bl
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !91
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !4
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7openvdb5v13_06points18StringMetaInserter6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.15", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.openvdb::v13_0::TypedMetadata", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.not123 = icmp eq ptr %i.e, null
  br i1 %.not123, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !77
  br label %bb.ay

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !51
  store i8 0, ptr %i.h, align 8, !tbaa !40
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke fastcc void @_ZN7openvdb5v13_06points12_GLOBAL__N_112getStringKeyB5cxx11Ej(ptr dead_on_unwind noalias writable align 8 %5, i32 noundef %2)
          to label %bb.e unwind label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %4, align 8, !tbaa !39     ; 6 uses
  %11 = icmp eq ptr %i.j, %i.h
  %i.k = load ptr, ptr %5, align 8, !tbaa !39     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.m = icmp eq ptr %i.k, %i.l                   ; 2 uses
  br i1 %11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.m, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.m, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51   ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  switch i64 %i.o, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.k, align 1, !tbaa !40
  store i8 %i.q, ptr %i.j, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.k, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.r = load i64, ptr %i.n, align 8, !tbaa !51   ; 2 uses
  store i64 %i.r, ptr %i.i, align 8, !tbaa !51
  %i.s = load ptr, ptr %4, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !40
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %4, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load <2 x i64>, ptr %i.u, align 8, !tbaa !40
  store <2 x i64> %i.v, ptr %i.i, align 8, !tbaa !40
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.w = load i64, ptr %i.h, align 8, !tbaa !40
  store ptr %i.k, ptr %4, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load <2 x i64>, ptr %i.x, align 8, !tbaa !40
  store <2 x i64> %i.y, ptr %i.i, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.j, ptr %5, align 8, !tbaa !39
  store i64 %i.w, ptr %i.l, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %5, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.z = phi ptr [ %i.j, %bb.i ], [ %i.l, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !51
  store i8 0, ptr %i.z, align 1, !tbaa !40
  %i.ab = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ag = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !69, !align !70 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !86, !noalias !246 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not10.i.i.i.i, label %bb.x, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !51, !noalias !246 ; 4 uses
  %i.al = load ptr, ptr %4, align 8, !noalias !246 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !51, !noalias !246 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.an) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39, !noalias !246
  %i.ar = call i32 @memcmp(ptr noundef %i.aq, ptr noundef %i.al, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #26, !noalias !246 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.k
  %i.as = sub i64 %i.an, %i.ak
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.as, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ar, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.at = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.at, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !87, !noalias !246 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.k, !llvm.loop !2

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.au = icmp eq ptr %.19.i.i.i.i, %i.aj
  br i1 %i.au, label %bb.x, label %bb.l

bb.l:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !51, !noalias !246 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ak) ; 2 uses
  %i.ax = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !39, !noalias !246
  %i.ba = call i32 @memcmp(ptr noundef %i.al, ptr noundef %i.az, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26, !noalias !246 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.l
  %i.bb = sub i64 %i.ak, %i.aw
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bc = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.bc, label %bb.x, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !50, !noalias !246 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !88, !noalias !246 ; 8 uses
  %.not.i.i.i2.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i2.i, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 7 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !246
  %.not.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !54, !noalias !246
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !54, !noalias !246
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4, !noalias !246 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bm = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bh, align 8, !tbaa !90
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !91
  %i.bq = load ptr, ptr %i.bg, align 8, !tbaa !93
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !3
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !93
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !3
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bh, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.by = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi i32 [ %i.bo, %bb.t ], [ %i.by, %bb.u ]
  %i.bz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bz, label %bb.v, label %bb.x, !prof !94

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26
  br label %bb.x

bb.w:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ax

bb.x:                                             ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r, %bb.m, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.in = phi ptr [ %i.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.be, %bb.v ], [ %i.be, %bb.r ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.i ], [ %i.be, %bb.m ]
  %.in.fr = freeze ptr %.in
  %.not124 = icmp eq ptr %.in.fr, null            ; 2 uses
  %spec.select = select i1 %.not124, i32 %2, i32 1 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !95, !noalias !247 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !96, !noalias !247 ; 3 uses
end_hunk_0
