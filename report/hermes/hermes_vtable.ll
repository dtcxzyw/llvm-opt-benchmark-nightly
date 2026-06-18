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
