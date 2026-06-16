inline.NumInlined: 22186
inline.NumDeleted: 7876
begin_hunk_0_@_ZN6google8protobuf17DescriptorBuilder26FindSymbolNotEnforcingDepsESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
bb.q:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !22 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.ch, i32 0, i32 1, i32 1)
  %i.ci = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cj = xor i64 %i.ci, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ck = mul i64 %i.cj, -2543921745674291987
  %i.cl = tail call noundef i64 @llvm.bswap.i64(i64 %i.ck)
  %i.cm = xor i64 %i.cl, %i.ci
  %i.cn = mul i64 %i.cm, -2543921745674291987
  %i.co = tail call noundef i64 @llvm.bswap.i64(i64 %i.cn) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !79, !noalias !1286
  %i.cr = and i64 %i.cq, 65535
  %i.cs = lshr i64 %i.co, 7
  %i.ct = xor i64 %i.cr, %i.cs
  %i.cu = trunc i64 %i.co to i8
  %i.cv = and i8 %i.cu, 127
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload.i.i.i.i.i.i.i3 = load ptr, ptr %i.cw, align 8, !tbaa !22 ; 2 uses
  %i.cx = insertelement <16 x i8> poison, i8 %i.cv, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.pn.i6.i.i.i4 = phi i64 [ %i.ct, %bb.q ], [ %i.dq, %bb.t ]
  %.sroa.13.0.i.i.i.i5 = phi i64 [ 0, %bb.q ], [ %i.dp, %bb.t ]
  %.sroa.6.0.i.i.i.i6 = and i64 %.pn.i6.i.i.i4, %i.by ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i3, i64 %.sroa.6.0.i.i.i.i6
  tail call void @llvm.prefetch.p0(ptr %i.cz, i32 0, i32 3, i32 1)
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.6.0.i.i.i.i6
  %i.db = load <16 x i8>, ptr %i.da, align 1, !tbaa !22 ; 2 uses
  %i.dc = icmp eq <16 x i8> %i.cy, %i.db
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not46.i.i.i.i7 = icmp eq i16 %i.dd, 0
  br i1 %.not46.i.i.i.i7, label %._crit_edge.i.i.i.i11, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %bb.r, %bb.s
  %.sroa.017.047.i.i.i.i9 = phi i16 [ %i.dm, %bb.s ], [ %i.dd, %bb.r ] ; 3 uses
  %i.de = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i9, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.6.0.i.i.i.i6, %i.df
  %i.dh = and i64 %i.dg, %i.by
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i3, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !166
  %i.dk = icmp eq ptr %i.dj, %.0.i
  br i1 %i.dk, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16, label %bb.s, !prof !322

bb.s:                                             ; preds = %.lr.ph.i.i.i.i8
  %i.dl = add i16 %.sroa.017.047.i.i.i.i9, -1
  %i.dm = and i16 %i.dl, %.sroa.017.047.i.i.i.i9  ; 2 uses
  %.not.i.i.i.i10 = icmp eq i16 %i.dm, 0
  br i1 %.not.i.i.i.i10, label %._crit_edge.i.i.i.i11, label %.lr.ph.i.i.i.i8

._crit_edge.i.i.i.i11:                            ; preds = %bb.s, %bb.r
  %i.dn = icmp eq <16 x i8> %i.db, splat (i8 -128)
  %i.do = bitcast <16 x i1> %i.dn to i16
  %.not43.i.i.i.i12 = icmp eq i16 %i.do, 0
  br i1 %.not43.i.i.i.i12, label %bb.t, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread, !prof !163

bb.t:                                             ; preds = %._crit_edge.i.i.i.i11
  %i.dp = add i64 %.sroa.13.0.i.i.i.i5, 16        ; 2 uses
  %i.dq = add i64 %i.dp, %.sroa.6.0.i.i.i.i6
  br label %bb.r, !llvm.loop !1285

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16: ; preds = %.lr.ph.i.i.i.i8
  %.not26 = icmp eq ptr %i.ch, null
  br i1 %.not26, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread, label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.k, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit, %_ZNK6google8protobuf6Symbol7GetFileEv.exit
  %i.dr = add i8 %i.d, -9
  %spec.select.i = icmp ult i8 %i.dr, 2
  br i1 %spec.select.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dt = call noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread: ; preds = %._crit_edge.i.i.i.i11, %bb.p, %bb.v, %bb.u, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73     ; 4 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.h = load ptr, ptr %1, align 8, !tbaa !166
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %.thread, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = load ptr, ptr %1, align 8, !tbaa !166    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !79, !noalias !1289
  %i.v = and i64 %i.u, 65535
  %i.w = lshr i64 %i.s, 7
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.s to i8
  %i.z = and i8 %i.y, 127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i = phi i64 [ %i.x, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.a        ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !22 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.a                     ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !166
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit, label %bb.f, !prof !322

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.i = icmp eq i16 %i.as, 0
  br i1 %.not43.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, !prof !163

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !1285

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit: ; preds = %.lr.ph.i.i
  %i.av = icmp eq ptr %i.k, null
  br i1 %i.av, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, label %bb.h

.thread:                                          ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !19
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.al
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bc, i64 noundef 8)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c, %bb.h, %.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit
  %.0 = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit ], [ 1, %.thread ], [ 1, %bb.h ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = tail call ptr @_ZN6google8protobuf17DescriptorBuilder26FindSymbolNotEnforcingDepsESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i1 noundef zeroext %3) ; 23 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !135   ; 5 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !799
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !606, !range !49, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97

bb.c:                                             ; preds = %bb.b
  switch i8 %i.c, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit [
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !670
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !671
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !465
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.h:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.i:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !679
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.j:                                             ; preds = %bb.c
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.k:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !158
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol7GetFileEv.exit:       ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.ad, %bb.k ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.p, %bb.f ], [ %i.r, %bb.g ], [ %i.v, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i ], [ %i.x, %bb.h ], [ %i.ab, %bb.i ], [ %i.b, %bb.j ], [ null, %bb.c ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1281 ; 2 uses
  %i.ag = icmp eq ptr %.0.i, %i.af
  br i1 %i.ag, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !73 ; 5 uses
  %i.aj = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp ult i64 %i.ai, 2
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.am = load i64, ptr %i.al, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.am, 131071
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %.0.i
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.ap, i1 false
  br i1 %or.cond, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 1, i32 1)
  %i.as = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.at = xor i64 %i.as, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.au = mul i64 %i.at, -2543921745674291987
  %i.av = tail call noundef i64 @llvm.bswap.i64(i64 %i.au)
  %i.aw = xor i64 %i.av, %i.as
  %i.ax = mul i64 %i.aw, -2543921745674291987
  %i.ay = tail call noundef i64 @llvm.bswap.i64(i64 %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !79, !noalias !1292 ; 3 uses
  %i.bb = and i64 %i.ba, 65535
  %i.bc = lshr i64 %i.ay, 7
  %i.bd = xor i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.ay to i8
  %i.bf = and i8 %i.be, 127
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !22 ; 2 uses
  %i.bh = insertelement <16 x i8> poison, i8 %i.bf, i64 0
  %i.bi = shufflevector <16 x i8> %i.bh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pn.i6.i.i.i = phi i64 [ %i.bd, %bb.n ], [ %i.ca, %bb.q ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.n ], [ %i.bz, %bb.q ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.ai ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.bj, i32 0, i32 3, i32 1)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.6.0.i.i.i.i
  %i.bl = load <16 x i8>, ptr %i.bk, align 1, !tbaa !22 ; 2 uses
  %i.bm = icmp eq <16 x i8> %i.bi, %i.bl
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.bw, %bb.p ], [ %i.bn, %bb.o ] ; 3 uses
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.6.0.i.i.i.i, %i.bp
  %i.br = and i64 %i.bq, %i.ai
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !166
  %i.bu = icmp eq ptr %i.bt, %.0.i
  br i1 %i.bu, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit, label %bb.p, !prof !322

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bv = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.bw = and i16 %i.bv, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.p, %bb.o
  %i.bx = icmp eq <16 x i8> %i.bl, splat (i8 -128)
  %i.by = bitcast <16 x i1> %i.bx to i16
  %.not43.i.i.i.i = icmp eq i16 %i.by, 0
  br i1 %.not43.i.i.i.i, label %bb.q, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread, !prof !163

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bz = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.6.0.i.i.i.i
  br label %bb.o, !llvm.loop !1285

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not107 = icmp eq ptr %i.ar, null
  br i1 %.not107, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.m, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit
  %i.cb = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit ], [ %i.ao, %bb.m ], [ %i.ar, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cc = phi i64 [ %i.ba, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit ], [ %i.am, %bb.m ], [ %i.ba, %._crit_edge.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !73 ; 4 uses
  %i.cf = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp ult i64 %i.ce, 2
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !79
  %.not.i.i.i.i.i50 = icmp ugt i64 %i.ci, 131071
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = icmp eq ptr %i.ck, %.0.i
  %or.cond106 = select i1 %.not.i.i.i.i.i50, i1 %i.cl, i1 false
  %.not = icmp eq i8 %i.c, 2
  %or.cond112 = and i1 %.not, %or.cond106
  br i1 %or.cond112, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit51.thread

bb.s:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !22 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.cn, i32 0, i32 1, i32 1)
  %i.co = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cp = xor i64 %i.co, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cq = mul i64 %i.cp, -2543921745674291987
  %i.cr = tail call noundef i64 @llvm.bswap.i64(i64 %i.cq)
  %i.cs = xor i64 %i.cr, %i.co
  %i.ct = mul i64 %i.cs, -2543921745674291987
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ex ; 2 uses
  %i.fa = load i8, ptr %i.ey, align 1, !tbaa !300
  %i.fb = icmp slt i8 %i.fa, -1
  br i1 %i.fb, label %.lr.ph.i.i162, label %.lr.ph.preheader, !llvm.loop !1298

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i162, %bb.y, %bb.z
  %.sroa.075.0.ph = phi ptr [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.y ], [ %i.cb, %bb.z ], [ %i.ey, %.lr.ph.i.i162 ]
  %.sroa.1078.0.ph = phi ptr [ %i.el, %bb.y ], [ %.sroa.0.0.copyload.i.i.i, %bb.z ], [ %i.ez, %.lr.ph.i.i162 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i
  %.sroa.075.0 = phi ptr [ %.sroa.075.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.075.0.ph, %.lr.ph.preheader ]
  %.sroa.1078.0 = phi ptr [ %.sroa.1078.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.1078.0.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fc = load ptr, ptr %.sroa.1078.0, align 8, !tbaa !166 ; 2 uses
  %.not26 = icmp eq ptr %i.fc, null
  br i1 %.not26, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !146 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !20 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !23 ; 2 uses
  br i1 %i.ed, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = icmp ult i64 %i.fh, %1
  br i1 %i.fi, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i53

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i53: ; preds = %bb.ab
  %bcmp.i.i.i54 = tail call i32 @bcmp(ptr %i.ff, ptr readonly %2, i64 %1)
  %i.fj = icmp eq i32 %bcmp.i.i.i54, 0
  br i1 %i.fj, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i53, %bb.aa
  %i.fk = icmp eq i64 %i.fh, %1
  br i1 %i.fk, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 %1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !22
  %i.fn = icmp eq i8 %i.fm, 46
  br i1 %i.fn, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread: ; preds = %bb.ab, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i53, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56, %.lr.ph
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.075.0, i64 1 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.1078.0, i64 8 ; 2 uses
  %i.fq = load i8, ptr %i.fo, align 1, !tbaa !300 ; 2 uses
  %i.fr = icmp slt i8 %i.fq, -1
  br i1 %i.fr, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread, %.lr.ph.i.i
  %i.fs = phi ptr [ %i.gc, %.lr.ph.i.i ], [ %i.fp, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread ]
  %i.ft = phi ptr [ %i.gb, %.lr.ph.i.i ], [ %i.fo, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread ] ; 2 uses
  %i.fu = load <16 x i8>, ptr %i.ft, align 1, !tbaa !22
  %i.fv = icmp slt <16 x i8> %i.fu, splat (i8 -1)
  %i.fw = bitcast <16 x i1> %i.fv to i16
  %i.fx = zext i16 %i.fw to i32
  %i.fy = add nuw nsw i32 %i.fx, 1
  %i.fz = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fy, i1 true)
  %i.ga = zext nneg i32 %i.fz to i64              ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ga ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ga ; 2 uses
  %i.gd = load i8, ptr %i.gb, align 1, !tbaa !300 ; 2 uses
  %i.ge = icmp slt i8 %i.gd, -1
  br i1 %i.ge, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !1298

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread
  %.sroa.075.1 = phi ptr [ %i.fo, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread ], [ %i.gb, %.lr.ph.i.i ]
  %.sroa.1078.1 = phi ptr [ %i.fp, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread ], [ %i.gc, %.lr.ph.i.i ]
  %i.gf = phi i8 [ %i.fq, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread ], [ %i.gd, %.lr.ph.i.i ]
  %i.gg = icmp eq i8 %i.gf, -1
  br i1 %i.gg, label %._crit_edge, label %.lr.ph, !prof !163

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.gh = tail call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cd) ; 2 uses
  %i.gi = extractvalue { ptr, ptr } %i.gh, 0      ; 2 uses
  %.not111 = icmp eq ptr %i.gi, null
  br i1 %.not111, label %.critedge33, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %._crit_edge
  %i.gj = extractvalue { ptr, ptr } %i.gh, 1
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61
  %.sroa.068.0 = phi ptr [ %.sroa.068.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61 ], [ %i.gi, %.lr.ph35.preheader ]
  %.sroa.10.0 = phi ptr [ %.sroa.10.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61 ], [ %i.gj, %.lr.ph35.preheader ] ; 2 uses
  %i.gk = load ptr, ptr %.sroa.10.0, align 8, !tbaa !166 ; 2 uses
  %.not27 = icmp eq ptr %i.gk, null
  br i1 %.not27, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph35
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !146 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !20 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !23 ; 2 uses
  br i1 %i.ed, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gq = icmp ult i64 %i.gp, %1
  br i1 %i.gq, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i57

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i57: ; preds = %bb.ad
  %bcmp.i.i.i58 = tail call i32 @bcmp(ptr %i.gn, ptr readonly %2, i64 %1)
  %i.gr = icmp eq i32 %bcmp.i.i.i58, 0
  br i1 %i.gr, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i57, %bb.ac
  %i.gs = icmp eq i64 %i.gp, %1
  br i1 %i.gs, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 %1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !22
  %i.gv = icmp eq i8 %i.gu, 46
  br i1 %i.gv, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread: ; preds = %bb.ad, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i57, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60, %.lr.ph35
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.068.0, i64 1 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.10.0, i64 8 ; 2 uses
  %i.gy = load i8, ptr %i.gw, align 1, !tbaa !300 ; 2 uses
  %i.gz = icmp slt i8 %i.gy, -1
  br i1 %i.gz, label %.lr.ph.i.i62, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61

.lr.ph.i.i62:                                     ; preds = %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread, %.lr.ph.i.i62
  %i.ha = phi ptr [ %i.hk, %.lr.ph.i.i62 ], [ %i.gx, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread ]
  %i.hb = phi ptr [ %i.hj, %.lr.ph.i.i62 ], [ %i.gw, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread ] ; 2 uses
  %i.hc = load <16 x i8>, ptr %i.hb, align 1, !tbaa !22
  %i.hd = icmp slt <16 x i8> %i.hc, splat (i8 -1)
  %i.he = bitcast <16 x i1> %i.hd to i16
  %i.hf = zext i16 %i.he to i32
  %i.hg = add nuw nsw i32 %i.hf, 1
  %i.hh = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hg, i1 true)
  %i.hi = zext nneg i32 %i.hh to i64              ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hi ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hi ; 2 uses
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !300 ; 2 uses
  %i.hm = icmp slt i8 %i.hl, -1
  br i1 %i.hm, label %.lr.ph.i.i62, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61, !llvm.loop !1298

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61: ; preds = %.lr.ph.i.i62, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread
  %.sroa.068.1 = phi ptr [ %i.gw, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread ], [ %i.hj, %.lr.ph.i.i62 ]
  %.sroa.10.1 = phi ptr [ %i.gx, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread ], [ %i.hk, %.lr.ph.i.i62 ]
  %i.hn = phi i8 [ %i.gy, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread ], [ %i.hl, %.lr.ph.i.i62 ]
  %i.ho = icmp eq i8 %i.hn, -1
  br i1 %i.ho, label %.critedge33, label %.lr.ph35, !prof !163

.critedge33:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61, %._crit_edge, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit51.thread
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %.0.i, ptr %i.hp, align 8, !tbaa !821
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.hq, ptr %4, align 8, !tbaa !16
  %i.hr = icmp eq ptr %2, null
  %i.hs = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.hs, %i.hr
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.ae

.noexc:                                           ; preds = %.critedge33
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.ae:                                            ; preds = %.critedge33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  %i.ht = icmp ugt i64 %1, 15
  br i1 %i.ht, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i64

.noexc.i.i.i:                                     ; preds = %bb.ae
  %i.hu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.hu, ptr %4, align 8, !tbaa !20
  %i.hv = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.hv, ptr %i.hq, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i64

._crit_edge.i.i.i.i64:                            ; preds = %.noexc.i.i.i, %bb.ae
  %i.hw = phi ptr [ %i.hu, %.noexc.i.i.i ], [ %i.hq, %bb.ae ] ; 2 uses
  switch i64 %1, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i.i64
  %i.hx = load i8, ptr %2, align 1, !tbaa !22
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !22
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i.i64
  %i.hy = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !23
  %i.ia = load ptr, ptr %4, align 8, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hy
  store i8 0, ptr %i.ib, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !20 ; 6 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  %i.ig = load ptr, ptr %4, align 8, !tbaa !20    ; 6 uses
  %i.ih = icmp eq ptr %i.ig, %i.hq                ; 2 uses
  br i1 %i.if, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ah
  br i1 %i.ih, label %bb.ai, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ah
  br i1 %i.ih, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ii = load i64, ptr %i.hz, align 8, !tbaa !23 ; 3 uses
  %i.ij = icmp ult i64 %i.ii, 16
  call void @llvm.assume(i1 %i.ij)
  %.not21.i = icmp eq ptr %4, %i.ic
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %5, !prof !163

5:                                                ; preds = %bb.ai
  switch i64 %i.ii, label %bb.ak [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %5
  %i.ik = load i8, ptr %i.ig, align 1, !tbaa !22
  store i8 %i.ik, ptr %i.id, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ak:                                            ; preds = %5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.id, ptr align 1 %i.ig, i64 %i.ii, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ak, %bb.aj, %5
  %i.il = load i64, ptr %i.hz, align 8, !tbaa !23 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.il, ptr %i.im, align 8, !tbaa !23
  %i.in = load ptr, ptr %i.ic, align 8, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.il
  store i8 0, ptr %i.io, align 1, !tbaa !22
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.ig, ptr %i.ic, align 8, !tbaa !20
  %i.iq = load <2 x i64>, ptr %i.hz, align 8, !tbaa !22
  store <2 x i64> %i.iq, ptr %i.ip, align 8, !tbaa !22
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ir = load i64, ptr %i.ie, align 8, !tbaa !22
  store ptr %i.ig, ptr %i.ic, align 8, !tbaa !20
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.it = load <2 x i64>, ptr %i.hz, align 8, !tbaa !22
  store <2 x i64> %i.it, ptr %i.is, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.id, null
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.id, ptr %4, align 8, !tbaa !20
  store i64 %i.ir, ptr %i.hq, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hq, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.al, %bb.am
  %6 = phi ptr [ %i.id, %bb.al ], [ %i.hq, %bb.am ], [ %i.ig, %bb.ai ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.hz, align 8, !tbaa !23
  store i8 0, ptr %6, align 1, !tbaa !22
  %i.iu = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.hq
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.iw = load i64, ptr %i.hq, align 8, !tbaa !22
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97: ; preds = %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i, %_ZNK6google8protobuf6Symbol7GetFileEv.exit, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit, %bb.m, %bb.r, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit51, %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.iy = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.a ], [ %i.b, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60 ], [ %i.b, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.b, %_ZNK6google8protobuf6Symbol7GetFileEv.exit ], [ %i.b, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit51 ], [ %i.b, %bb.r ], [ %i.b, %bb.m ], [ %i.b, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit ], [ %i.b, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i ], [ %i.b, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59 ], [ %i.b, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55 ], [ %i.b, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56 ]
  ret ptr %i.iy
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %.not.i = icmp ult i64 %i.b, 131072
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit, label %bb.b, !prof !163

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.e, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22, !nonnull !51, !noundef !51 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !22 ; 2 uses
  %i.i = load i8, ptr %i.g, align 1, !tbaa !300
  %i.j = icmp slt i8 %i.i, -1
  br i1 %i.j, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.k = phi ptr [ %i.u, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i, %bb.c ]
  %i.l = phi ptr [ %i.t, %.lr.ph.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !22
  %i.n = icmp slt <16 x i8> %i.m, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = zext i16 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.q, i1 true)
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.s ; 2 uses
  %i.v = load i8, ptr %i.t, align 1, !tbaa !300
  %i.w = icmp slt i8 %i.v, -1
  br i1 %i.w, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit, !llvm.loop !1298

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.a
  %.sroa.6.0 = phi ptr [ undef, %bb.a ], [ %i.f, %bb.b ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %i.u, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.b ], [ %i.g, %bb.c ], [ %i.t, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.6.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder25LookupSymbolNoPlaceholderESt17basic_string_viewIcSt11char_traitsIcEES5_NS1_11ResolveModeEb(ptr noundef nonnull align 8 dereferenceable(396) initializes((320, 328), (368, 376)) %0, i64 %1, ptr %2, i64 %3, ptr nofree readonly captures(address_is_null) %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 30 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 14 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 14 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.d, align 8, !tbaa !23
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20
  store i8 0, ptr %i.e, align 1, !tbaa !22
  %cond = icmp eq i64 %1, 0
  br i1 %cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !22
  %i.g = icmp eq i8 %i.f, 46
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.b
  %i.h = add i64 %1, -1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = tail call ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.h, ptr nonnull %i.i, i1 noundef zeroext %6)
  br label %bb.y

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b
  %i.k = tail call ptr @memchr(ptr noundef nonnull %2, i32 noundef 46, i64 noundef %1) #40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %2 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = icmp eq i64 %i.n, -1
  %or.cond = select i1 %.not.i.i, i1 true, i1 %i.o
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.n)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c
  %.sroa.067.0 = phi i64 [ %.sroa.speculated.i, %bb.c ], [ %1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ 0, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !16
  %i.q = icmp eq ptr %4, null
  %i.r = icmp ne i64 %3, 0
  %or.cond.i.i.i = and i1 %i.r, %i.q
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %3, ptr %i.a, align 8, !tbaa !19
  %i.s = icmp ugt i64 %3, 15
  br i1 %i.s, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !20
  %i.u = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.u, ptr %i.p, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %3, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = load i8, ptr %4, align 1, !tbaa !22
  store i8 %i.w, ptr %i.v, align 1, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %4, i64 %3, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 20 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !23
  %i.z = load ptr, ptr %7, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ab = icmp eq i32 %5, 1
  %i.ac = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 46, i64 noundef -1) #40 ; 4 uses
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.af = icmp ult i64 %.sroa.067.0, %1
  %.fr = freeze i1 %i.af
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us
  %i.ag = phi i64 [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us ], [ %i.ac, %.lr.ph ] ; 4 uses
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !23
  %i.aj = load ptr, ptr %7, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 0, ptr %i.ak, align 1, !tbaa !22
  %i.al = load i64, ptr %i.y, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store i64 1, ptr %8, align 8
  store ptr @.str.73, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i64 %.sroa.067.0, ptr %9, align 8, !tbaa !19
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.i unwind label %.split115.us

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.am = load ptr, ptr %7, align 8, !tbaa !20
  %i.an = load i64, ptr %i.y, align 8, !tbaa !23
  %i.ao = invoke ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.an, ptr %i.am, i1 noundef zeroext %6)
end_hunk_1
