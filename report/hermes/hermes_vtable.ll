inline.NumInlined: 2335
inline.NumDeleted: 1466
begin_hunk_0_@_ZN12_GLOBAL__N_124get_utf8_from_propnameidEP16HermesABIRuntime19HermesABIPropNameIDP23HermesABIGrowableBuffer:bb.a
_ZNK6hermes2vm10StringView13castToCharPtrEv.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i.sink.i = phi ptr [ %i.r, %bb.b ], [ %i.ad, %bb.d ], [ %i.ae, %bb.f ], [ %i.af, %bb.g ], [ %i.ak, %bb.h ]
  %i.al = and i64 %i.t, 1073741823
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !149
  %i.ap = icmp ult i64 %i.ao, %i.w
  br i1 %i.ap, label %bb.i, label %_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit

bb.i:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  %i.aq = load ptr, ptr %2, align 8, !tbaa !152
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !153
  call void %i.ar(ptr noundef nonnull %2, i64 noundef %i.w) #22, !inline_history !155
  %.pre.i = load i64, ptr %i.an, align 8, !tbaa !149
  %i.as = icmp ult i64 %.pre.i, %i.w
  br i1 %i.as, label %bb.j, label %_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.2) #24
  unreachable

_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit: ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !156
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr readonly align 1 %i.am, i64 %i.w, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.w, ptr %i.av, align 8, !tbaa !157
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !68
  store i8 0, ptr %i.aw, align 8, !tbaa !70
  %i.ay = call noundef ptr @_ZNK6hermes2vm10StringView15castToChar16PtrEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !511
  %i.bb = zext i32 %i.ba to i64
  %i.bc = call noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %i.ay, i64 %i.bb, i64 noundef 0) #22 ; 0 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !67
  %i.be = load i64, ptr %i.ax, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE(ptr noundef %2, ptr %i.bd, i64 %i.be)
  %i.bf = load ptr, ptr %5, align 8, !tbaa !67    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.aw
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !70
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120get_utf8_from_symbolEP16HermesABIRuntime15HermesABISymbolP23HermesABIGrowableBuffer(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2) #1 {
._crit_edge.i.i:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::StringView", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.b, ptr %3, align 8, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206
  store ptr %i.e, ptr %i.c, align 8, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !217
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.j, align 4, !tbaa !218
  store ptr %i.g, ptr %i.h, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !219
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.g, ptr %i.k, align 8, !tbaa !220
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.f, ptr %i.l, align 8, !tbaa !221
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.m, align 8, !tbaa !222
  store ptr %3, ptr %i.d, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 9240
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.o, align 8, !tbaa !69
  %i.p = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.q = call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.n, ptr noundef nonnull align 8 dereferenceable(9816) %i.b, i32 %i.p) #22 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 3 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = extractvalue { ptr, i64 } %i.q, 1        ; 4 uses
  store i64 %i.t, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.u, ptr noundef nonnull align 1 dereferenceable(7) @.str.16, i64 7, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 7, ptr %i.v, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.w, align 1, !tbaa !70
  %i.x = trunc i64 %i.t to i32                    ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  %i.z = lshr i64 %i.t, 32
  br i1 %i.y, label %bb.a, label %bb.h, !prof !223

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.aa = and i32 %i.x, 1073741824
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !69
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr               ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, 150994943
  br i1 %i.ae, label %bb.c, label %bb.d, !prof !133

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.ad, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i, label %bb.g [
    i32 134217728, label %bb.e
    i32 67108864, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %i.aj, align 8, !tbaa !69
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %.0.i.sink.i = phi ptr [ %i.r, %bb.a ], [ %i.ag, %bb.c ], [ %i.ah, %bb.e ], [ %i.ai, %bb.f ], [ %i.an, %bb.g ]
  %i.ao = and i64 %i.t, 1073741823
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 %i.ao
  %i.aq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ap, i64 noundef %i.z) #22 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !68
  store i8 0, ptr %i.ar, align 8, !tbaa !70
  %i.at = call noundef ptr @_ZNK6hermes2vm10StringView15castToChar16PtrEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !511
  %i.aw = zext i32 %i.av to i64
  %i.ax = call noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %i.at, i64 %i.aw, i64 noundef 0) #22 ; 0 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 0 uses
  %i.az = load ptr, ptr %6, align 8, !tbaa !67    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ar
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.bb = load i64, ptr %i.ar, align 8, !tbaa !70
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.bd = load i64, ptr %i.v, align 8, !tbaa !68  ; 4 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !67    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.u
  br i1 %i.bg, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.i
  %7 = load i64, ptr %i.u, align 8, !tbaa !70
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.j
  %8 = phi i64 [ %7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ 15, %bb.j ]
  %i.bi = icmp ugt i64 %i.be, %8
  br i1 %i.bi, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bd, i64 noundef 0, ptr noundef null, i64 noundef 1) #22
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.k
  %i.bj = phi ptr [ %.pre.i, %bb.k ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bd
  store i8 41, ptr %i.bk, align 1, !tbaa !70
  store i64 %i.be, ptr %i.v, align 8, !tbaa !68
  %i.bl = load ptr, ptr %5, align 8, !tbaa !67
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.be
  store i8 0, ptr %i.bm, align 1, !tbaa !70
  %i.bn = load ptr, ptr %5, align 8, !tbaa !67
  %i.bo = load i64, ptr %i.v, align 8, !tbaa !68  ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !149
  %i.br = icmp ult i64 %i.bq, %i.bo
  br i1 %i.br, label %bb.l, label %_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.bs = load ptr, ptr %2, align 8, !tbaa !152
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !153
  call void %i.bt(ptr noundef nonnull %2, i64 noundef %i.bo) #22, !inline_history !155
  %.pre.i8 = load i64, ptr %i.bp, align 8, !tbaa !149
  %i.bu = icmp ult i64 %.pre.i8, %i.bo
  br i1 %i.bu, label %bb.m, label %_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit

bb.m:                                             ; preds = %bb.l
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.2) #24
  unreachable

_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !156
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr readonly align 1 %i.bn, i64 %i.bo, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.bo, ptr %i.bx, align 8, !tbaa !157
  %i.by = load ptr, ptr %5, align 8, !tbaa !67    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.u
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit
  %i.ca = load i64, ptr %i.u, align 8, !tbaa !70
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i64 0, 6) i64 @_ZN12_GLOBAL__N_111instance_ofEP16HermesABIRuntime15HermesABIObject17HermesABIFunction(ptr nofree noundef readonly captures(none) %0, ptr %1, ptr %2) #1 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.b, ptr %3, align 8, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206
  store ptr %i.e, ptr %i.c, align 8, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !217
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.j, align 4, !tbaa !218
  store ptr %i.g, ptr %i.h, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !219
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.g, ptr %i.k, align 8, !tbaa !220
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.f, ptr %i.l, align 8, !tbaa !221
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.m, align 8, !tbaa !222
  store ptr %3, ptr %i.d, align 8, !tbaa !206
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = call i32 @_ZN6hermes2vm22instanceOfOperator_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %i.b, ptr nonnull %i.n, ptr nonnull %i.o) #22 ; 2 uses
  %.mask = and i32 %i.p, 255
  %i.q = icmp eq i32 %.mask, 0
  %i.r = lshr i32 %i.p, 6
  %i.s = and i32 %i.r, 4
  %narrow = select i1 %i.q, i32 5, i32 %i.s
  %.sroa.07.0 = zext nneg i32 %narrow to i64
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %.sroa.07.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_120strict_equals_symbolEP16HermesABIRuntime15HermesABISymbolS2_(ptr nofree readnone captures(none) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !69
  %i.c = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %.sroa.0.0.copyload.i.i2.i = load i64, ptr %i.b, align 8, !tbaa !69
  %i.d = trunc i64 %.sroa.0.0.copyload.i.i2.i to i32
  %i.e = icmp eq i32 %i.c, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_120strict_equals_bigintEP16HermesABIRuntime15HermesABIBigIntS2_(ptr nofree readnone captures(none) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !69
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !tbaa !69
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !513
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !513
  %i.m = tail call noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_(ptr nonnull %i.g, i32 %i.i, ptr nonnull %i.j, i32 %i.l) #22
  %i.n = icmp eq i32 %i.m, 0
  ret i1 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_120strict_equals_stringEP16HermesABIRuntime15HermesABIStringS2_(ptr nofree readnone captures(none) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !69
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !tbaa !69
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsEPKS1_(ptr noundef nonnull align 4 dereferenceable(8) %i.c, ptr noundef %i.f) #22
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_120strict_equals_objectEP16HermesABIRuntime15HermesABIObjectS2_(ptr nofree readnone captures(none) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !69
  %.sroa.0.0.copyload.i.i2.i = load i64, ptr %i.b, align 8, !tbaa !69
  %i.c = xor i64 %.sroa.0.0.copyload.i.i2.i, %.sroa.0.0.copyload.i.i.i
  %i.d = and i64 %i.c, 281474976710655
  %i.e = icmp eq i64 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i64 4, 6) i64 @_ZN12_GLOBAL__N_116drain_microtasksEP16HermesABIRuntimei(ptr nofree noundef readonly captures(none) %0, i32 %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9069
  %i.d = load i8, ptr %i.c, align 1, !tbaa !516, !range !108, !noundef !109
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN6hermes2vm7Runtime9drainJobsEv(ptr noundef nonnull align 8 dereferenceable(9816) %i.b) #22
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6hermes2vm7Runtime16clearKeptObjectsEv(ptr noundef nonnull align 8 dereferenceable(9816) %i.b) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1 = phi i64 [ 4, %bb.c ], [ 5, %bb.b ]
  ret i64 %.sroa.0.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal i64 @_ZN12_GLOBAL__N_124create_bigint_from_int64EP16HermesABIRuntimel(ptr nofree noundef captures(none) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.c, ptr %2, align 8, !tbaa !204
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc20BCProviderFromBuffer26createBCProviderFromBufferB5cxx11ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE:bb.a
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !67, !noalias !611 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.m = load i64, ptr %i.l, align 8, !tbaa !68, !noalias !611 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !611
  store i64 %i.m, ptr %i.b, align 8, !tbaa !69, !noalias !611
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !67, !alias.scope !611
  %i.p = load i64, ptr %i.b, align 8, !tbaa !69, !noalias !611
  store i64 %i.p, ptr %i.j, align 8, !tbaa !70, !alias.scope !611
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit
  %i.q = phi ptr [ %i.o, %bb.b ], [ %i.j, %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !70
  store i8 %i.r, ptr %i.q, align 1, !tbaa !70
  br label %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit

_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.s = load i64, ptr %i.b, align 8, !tbaa !69, !noalias !611 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !68, !alias.scope !611
  %i.u = load ptr, ptr %4, align 8, !tbaa !67, !alias.scope !611
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !611
  %i.w = load i64, ptr %i.t, align 8, !tbaa !68   ; 5 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge.i.i.i1.thread, label %bb.e

._crit_edge.i.i.i1.thread:                        ; preds = %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit
  %i.y = ptrtoint ptr %i.c to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !199
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit
  store i64 0, ptr %0, align 8, !tbaa !199
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !28
  %i.ad = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.w, ptr %i.a, align 8, !tbaa !69
  %i.ae = icmp ugt i64 %i.w, 15
  br i1 %i.ae, label %._crit_edge.i.i.i1.thread16, label %._crit_edge.i.i.i1

._crit_edge.i.i.i1.thread16:                      ; preds = %bb.e
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !67
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !69
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !70
  br label %bb.g

._crit_edge.i.i.i1:                               ; preds = %bb.e
  %cond = icmp eq i64 %i.w, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i1
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !70
  store i8 %i.ah, ptr %i.ac, align 8, !tbaa !70
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i1.thread16, %._crit_edge.i.i.i1
  %i.ai = phi ptr [ %i.af, %._crit_edge.i.i.i1.thread16 ], [ %i.ac, %._crit_edge.i.i.i1 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ad, i64 %i.w, i1 false)
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i1.thread
  %.sroa.06.01012 = phi ptr [ null, %._crit_edge.i.i.i1.thread ], [ %i.c, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %i.aj = phi ptr [ %i.z, %._crit_edge.i.i.i1.thread ], [ %i.ab, %bb.g ], [ %i.ab, %bb.f ]
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !68
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ao = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.j
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !70
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.not.i3 = icmp eq ptr %.sroa.06.01012, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit5, label %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i4

_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.06.01012) #22
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.01012, i64 noundef 376) #23
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i4
  ret void
}

declare void @_ZN6hermes3hbc20BCProviderFromBufferC1ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6hermes3hbc20BCProviderFromBuffer10stopWarmupEv(ptr noundef nonnull align 8 dereferenceable(376) %0) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !614  ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !572  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !574
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23
  br label %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i

_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i:       ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !217  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i
  tail call void @free(ptr noundef %i.l) #22
  br label %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i

_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i: ; preds = %bb.d, %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !572  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !574
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.e, %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !575  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i, label %_ZN6hermes3hbc9DebugInfoD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !578
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZN6hermes3hbc9DebugInfoD2Ev.exit

_ZN6hermes3hbc9DebugInfoD2Ev.exit:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 136) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc9DebugInfoD2Ev.exit, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !623 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIVN6hermes17PageAccessTrackerEEclEPS2_.exit.i

_ZNKSt14default_deleteIVN6hermes17PageAccessTrackerEEclEPS2_.exit.i: ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 1) #23
  br label %_ZNSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIVN6hermes17PageAccessTrackerEEclEPS2_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !625, !range !108, !noundef !109
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %1, label %_ZN4llvh8OptionalISt6threadED2Ev.exit

1:                                                ; preds = %_ZNSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EED2Ev.exit
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !69
  %.not.i.i.i.i1 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i1, label %_ZN4llvh8OptionalISt6threadED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %1
  tail call void @_ZSt9terminatev() #24
  unreachable

_ZN4llvh8OptionalISt6threadED2Ev.exit:            ; preds = %_ZNSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EED2Ev.exit, %1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !181 ; 3 uses
  %.not.i2 = icmp eq ptr %i.ah, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i

_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i: ; preds = %_ZN4llvh8OptionalISt6threadED2Ev.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #22, !inline_history !198
  br label %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvh8OptionalISt6threadED2Ev.exit, %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN6hermes3hbc14BCProviderBaseE, i64 16), ptr %0, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !67 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN6hermes3hbc14BCProviderBaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !70
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #23, !inline_history !192
  br label %_ZN6hermes3hbc14BCProviderBaseD2Ev.exit

_ZN6hermes3hbc14BCProviderBaseD2Ev.exit:          ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare void @_ZN6hermes3hbc20BCProviderFromBuffer10stopWarmupEv(ptr noundef nonnull align 8 dereferenceable(376)) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #17

declare ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #6

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIhEEb(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #6

declare ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #6

declare i32 @_ZN6hermes2vm8JSObject11hasComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #6

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #6

declare i32 @_ZN6hermes2vm8JSObject17hasNamedOrIndexedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #6

declare { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #6

declare { i32, i64 } @_ZN6hermes2vm8JSObject17getNamedOrIndexedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32) local_unnamed_addr #6

declare i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr, i32) local_unnamed_addr #6

declare i32 @_ZN6hermes2vm8JSObject17putNamedOrIndexedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32) local_unnamed_addr #6

declare ptr @_ZN6hermes2vm21getForInPropertyNamesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERjS6_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #6

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #6

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #6

declare noundef ptr @_ZN6hermes2vm11NativeState6createERNS0_7RuntimeEPvPFvRNS0_7HadesGCEPS1_E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN6hermes2vm7HadesGC22canAllocExternalMemoryEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) unnamed_addr #6

declare void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) unnamed_addr #6

declare void @_ZN6hermes2vm7HadesGC19debitExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) unnamed_addr #6

declare i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN12_GLOBAL__N_135set_object_external_memory_pressureEP16HermesABIRuntime15HermesABIObjectmEN3$_08__invokeERN6hermes2vm7HadesGCEPNS5_11NativeStateE"(ptr noundef nonnull align 8 dereferenceable(8112) %0, ptr noundef %1) #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = trunc i64 %i.c to i32
  tail call void @_ZN6hermes2vm7HadesGC19debitExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %0, ptr noundef nonnull %1, i32 noundef %i.d) #22
  ret void
}

declare { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #6

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #6

declare ptr @_ZN6hermes2vm13JSArrayBuffer6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #6

declare noundef i32 @_ZN6hermes2vm13JSArrayBuffer20setExternalDataBlockERNS0_7RuntimeENS0_6HandleIS1_EEPhjPvPFvRNS0_7HadesGCEPNS0_11NativeStateEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN12_GLOBAL__N_137create_arraybuffer_from_external_dataEP16HermesABIRuntimeP22HermesABIMutableBufferEN3$_08__invokeERN6hermes2vm7HadesGCEPNS6_11NativeStateE"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !245 ; 2 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !629
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !630
  tail call void %i.c(ptr noundef nonnull %.val) #22, !inline_history !632
  ret void
}

declare ptr @_ZN6hermes2vm16stringToSymbolIDERNS0_7RuntimeENS0_12PseudoHandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #6

declare noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #6

declare ptr @_ZN6hermes2vm8Callable26createThisForConstruct_RJSENS0_6HandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #6

declare { i32, i64 } @_ZN6hermes2vm25FinalizableNativeFunction22createWithoutPrototypeERNS0_7RuntimeEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES4_S3_NS0_10NativeArgsEEPFvS4_ENS0_8SymbolIDEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef, ptr noundef, i32, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN12_GLOBAL__N_119HostFunctionWrapper4callEPvRN6hermes2vm7RuntimeENS3_10NativeArgsE(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #1 align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector.450", align 8 ; 11 uses
  %4 = alloca %struct.HermesABIValue, align 8     ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !484    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !217
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i32 0, ptr %i.c, align 8, !tbaa !219
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 8, ptr %i.d, align 4, !tbaa !218
  %i.e = load ptr, ptr %2, align 8, !tbaa !633, !noalias !635 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !638, !noalias !640 ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.neg = mul nsw i64 %i.h, -8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %.neg
  %.not4546 = icmp eq i32 %i.g, 0
  br i1 %.not4546, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !633, !noalias !643
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.sroa.08.0.copyload = load i64, ptr %i.j, align 8, !tbaa !69
  %i.k = call fastcc { i32, i64 } @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl11createValueEN6hermes2vm11HermesValueE(ptr noundef nonnull align 8 dereferenceable(180) %i.a, i64 %.sroa.08.0.copyload) ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0
  store i32 %i.l, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.k, 1
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !487  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !646
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !649
  %i.t = load ptr, ptr %3, align 8, !tbaa !217
  %i.u = load i32, ptr %i.c, align 8, !tbaa !219
  %i.v = zext i32 %i.u to i64
  %i.w = call { i32, i64 } %i.s(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %4, ptr noundef %i.t, i64 noundef %i.v) #22 ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0
  %i.y = extractvalue { i32, i64 } %i.w, 1        ; 5 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !217    ; 2 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !219 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %.idx = shl nuw nsw i64 %i.ab, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  %.not48 = icmp eq i32 %i.aa, 0
  br i1 %.not48, label %._crit_edge52, label %.lr.ph51

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit
  %.sroa.038.047 = phi ptr [ %i.ad, %_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit ], [ %i.e, %bb.a ]
  %i.ad = getelementptr inbounds i8, ptr %.sroa.038.047, i64 -8 ; 3 uses
  %.sroa.010.0.copyload = load i64, ptr %i.ad, align 8, !tbaa !69
  %i.ae = call fastcc { i32, i64 } @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl11createValueEN6hermes2vm11HermesValueE(ptr noundef nonnull align 8 dereferenceable(180) %i.a, i64 %.sroa.010.0.copyload) ; 2 uses
  %i.af = extractvalue { i32, i64 } %i.ae, 0
  %i.ag = extractvalue { i32, i64 } %i.ae, 1
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !219 ; 2 uses
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !218
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit, label %bb.b, !prof !223

bb.b:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 16) #22
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !219
  br label %_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit: ; preds = %.lr.ph, %bb.b
  %i.aj = phi i32 [ %.pre.i, %bb.b ], [ %i.ah, %.lr.ph ]
  %i.ak = load ptr, ptr %3, align 8, !tbaa !217
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  store i32 %i.af, ptr %i.am, align 1
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ag, ptr %.sroa.436.0..sroa_idx, align 1
  %i.an = load i32, ptr %i.c, align 8, !tbaa !219
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.c, align 8, !tbaa !219
  %.not45 = icmp eq ptr %i.ad, %i.i
  br i1 %.not45, label %._crit_edge.loopexit, label %.lr.ph
end_hunk_1
