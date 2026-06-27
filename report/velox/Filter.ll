inline.NumInlined: 10428
inline.NumDeleted: 4080
begin_hunk_0_@_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter9testInt64El:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = xor i64 %1, -1
  %i.c = shl i64 %1, 21
  %i.d = add i64 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i64 %i.d, 24
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, 265                        ; 2 uses
  %i.h = lshr i64 %i.g, 14
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, 21                         ; 2 uses
  %i.k = lshr i64 %i.j, 28
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, 2147483649                 ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %i.p = shufflevector <8 x i32> %i.o, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.q = mul <8 x i32> %i.p, <i32 770785867, i32 1150766481, i32 1203114875, i32 1550580529, i32 1884591559, i32 -2010862245, i32 -1627633337, i32 -1565054819>
  %i.r = lshr <8 x i32> %i.q, splat (i32 27)
  %i.s = shl nuw <8 x i32> splat (i32 1), %i.r
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = lshr i64 %i.m, 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !189
  %i.x = mul i64 %i.w, %i.u
  %i.y = lshr i64 %i.x, 32
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !186
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.y
  %i.ab = load <4 x i64>, ptr %i.aa, align 32, !tbaa !9, !noalias !1233
  %i.ac = tail call noundef i32 @llvm.x86.avx.ptestc.256(<4 x i64> %i.ab, <4 x i64> %i.t)
  %i.ad = icmp ne i32 %i.ac, 0
  ret i1 %i.ad
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox6common10BytesRange9mergeWithEPKNS1_6FilterE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 8 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::unique_ptr.208", align 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !68
  switch i32 %i.g, label %bb.x [
    i32 1, label %bb.b
    i32 0, label %bb.b
    i32 2, label %bb.b
    i32 3, label %_ZNRSt8optionalIbE5valueEv.exit.i
    i32 15, label %bb.c
    i32 16, label %bb.c
    i32 14, label %bb.c
    i32 18, label %bb.c
    i32 13, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  br label %bb.y

_ZNRSt8optionalIbE5valueEv.exit.i:                ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.k = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #48, !noalias !1240, !inline_history !1243 ; 3 uses
  invoke void @_ZN8facebook5velox6common10BytesRangeC2ERKS2_b(ptr noundef nonnull align 8 dereferenceable(128) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext false)
          to label %_ZNK8facebook5velox6common10BytesRange5cloneESt8optionalIbE.exit unwind label %common.resume.i, !noalias !1244, !inline_history !1247

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %common.resume.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZNRSt8optionalIbE5valueEv.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 128) #46, !noalias !1240, !inline_history !1243
  br label %common.resume

_ZNK8facebook5velox6common10BytesRange5cloneESt8optionalIbE.exit: ; preds = %_ZNRSt8optionalIbE5valueEv.exit.i
  store ptr %i.k, ptr %0, align 8, !tbaa !104, !alias.scope !1240
  br label %bb.y

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !72, !range !53, !noundef !57
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !72, !range !53, !noundef !57
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.u = phi i8 [ 0, %bb.d ], [ %i.t, %bb.e ]     ; 3 uses
  store i8 %i.u, ptr %i.a, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  store i8 0, ptr %i.b, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  store i8 0, ptr %i.d, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #44
  store i8 0, ptr %i.e, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !77
  store i8 0, ptr %i.v, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !tbaa !77
  store i8 0, ptr %i.x, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !236, !range !53, !noundef !57
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !236, !range !53, !noundef !57 ; 3 uses
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i
  store i8 %i.ad, ptr %i.c, align 1, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !238, !range !53, !noundef !57 ; 2 uses
  store i8 %i.af, ptr %i.e, align 1, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.t, %bb.n, %bb.l, %bb.i, %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.c, align 1, !tbaa !51
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !238, !range !53, !noundef !57 ; 2 uses
  store i8 %i.ak, ptr %i.e, align 1, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !77 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.ap) ; 2 uses
  %i.as = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.as, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.j
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !29
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.av = call i32 @memcmp(ptr noundef %i.au, ptr noundef %i.at, i64 noundef %.sroa.speculated.i) #44 ; 2 uses
  %.not.i48 = icmp eq i32 %i.av, 0
  br i1 %.not.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.j
  %i.aw = sub i64 %i.ap, %i.ar
  %spec.select7.i.i = call i64 @llvm.smax.i64(i64 %i.aw, i64 -2147483648)
  %.08.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i, i64 2147483647)
  %.0.i6.i = trunc nsw i64 %.08.i.i to i32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i
  %.0.i = phi i32 [ %i.av, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %.0.i6.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ] ; 3 uses
  %i.ax = icmp slt i32 %.0.i, 0
  %i.ay = select i1 %i.ax, ptr %i.an, ptr %i.am
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50 unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !238, !range !53, !noundef !57 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !238, !range !53, !noundef !57 ; 2 uses
  %i.bd = icmp eq i32 %.0.i, 0
  %i.be = or i8 %i.bc, %i.ba
  %i.bf = icmp sgt i32 %.0.i, 0
  %.v = select i1 %i.bf, i8 %i.ba, i8 %i.bc
  %.v81 = select i1 %i.bd, i8 %i.be, i8 %.v       ; 2 uses
  store i8 %.v81, ptr %i.e, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50
  %i.bh = phi i8 [ %i.ak, %bb.i ], [ %i.af, %bb.f ], [ %.v81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50 ] ; 2 uses
  %i.bi = phi i8 [ 0, %bb.i ], [ %i.ad, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !239, !range !53, !noundef !57
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !239, !range !53, !noundef !57 ; 3 uses
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store i8 %i.bn, ptr %i.b, align 1, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !240, !range !53, !noundef !57 ; 2 uses
  store i8 %i.bp, ptr %i.d, align 1, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 56
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit52 unwind label %bb.g

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.br = trunc nuw i8 %i.bn to i1
  store i8 0, ptr %i.b, align 1, !tbaa !51
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !240, !range !53, !noundef !57 ; 2 uses
  store i8 %i.bt, ptr %i.d, align 1, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit52 unwind label %bb.g

bb.o:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !77 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !77 ; 2 uses
  %.sroa.speculated.i55 = call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.by) ; 2 uses
  %i.cb = icmp eq i64 %.sroa.speculated.i55, 0
  br i1 %i.cb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i59, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i56

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i56:   ; preds = %bb.o
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !29
  %i.cd = load ptr, ptr %i.bv, align 8, !tbaa !29
  %i.ce = call i32 @memcmp(ptr noundef %i.cd, ptr noundef %i.cc, i64 noundef %.sroa.speculated.i55) #44 ; 2 uses
  %.not.i57 = icmp eq i32 %i.ce, 0
  br i1 %.not.i57, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit63

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i59: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i56, %bb.o
  %i.cf = sub i64 %i.by, %i.ca
  %spec.select7.i.i60 = call i64 @llvm.smax.i64(i64 %i.cf, i64 -2147483648)
  %.08.i.i61 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i60, i64 2147483647)
  %.0.i6.i62 = trunc nsw i64 %.08.i.i61 to i32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit63: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i56, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i59
  %.0.i58 = phi i32 [ %i.ce, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i56 ], [ %.0.i6.i62, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i59 ] ; 2 uses
  %i.cg = icmp slt i32 %.0.i58, 0                 ; 2 uses
  %i.ch = select i1 %i.cg, ptr %i.bv, ptr %i.bw
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ch)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit65 unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit63
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !240, !range !53, !noundef !57 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !240, !range !53, !noundef !57 ; 2 uses
  %i.cm = icmp eq i32 %.0.i58, 0
  %i.cn = or i8 %i.cl, %i.cj
  %.v81.a = select i1 %i.cg, i8 %i.cj, i8 %i.cl
  %.v83 = select i1 %i.cm, i8 %i.cn, i8 %.v81.a   ; 2 uses
  store i8 %.v83, ptr %i.d, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit52

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit63
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit52: ; preds = %bb.n, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit65
  %i.cp = phi i8 [ %i.bt, %bb.n ], [ %i.bp, %bb.l ], [ %.v83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit65 ] ; 2 uses
  %i.cq = phi i8 [ 0, %bb.n ], [ %i.bn, %bb.l ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit65 ]
  %i.cr = or i8 %i.bi, %i.cq
  %or.cond.not = icmp eq i8 %i.cr, 0
  br i1 %or.cond.not, label %bb.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread80

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit52
  %i.cs = load i64, ptr %i.y, align 8, !tbaa !77  ; 5 uses
  %i.ct = load i64, ptr %i.w, align 8, !tbaa !77  ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cs) ; 2 uses
  %i.cu = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.cu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.q
  %i.cv = load ptr, ptr %3, align 8, !tbaa !29
  %i.cw = load ptr, ptr %4, align 8, !tbaa !29
  %i.cx = call i32 @memcmp(ptr noundef %i.cw, ptr noundef %i.cv, i64 noundef %.sroa.speculated.i.i) #44 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.q
  %i.cy = sub i64 %i.cs, %i.ct
  %spec.select7.i.i.i = call i64 @llvm.smax.i64(i64 %i.cy, i64 -2147483648)
  %.08.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit

_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.cx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.cz = icmp sgt i32 %.0.i.i, 0
  br i1 %i.cz, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit
  %i.da = icmp eq i64 %i.cs, %i.ct
  br i1 %i.da, label %bb.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread80

bb.s:                                             ; preds = %bb.r
  %i.db = icmp eq i64 %i.cs, 0
  br i1 %i.db, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.s
  %i.dc = load ptr, ptr %3, align 8, !tbaa !29
  %i.dd = load ptr, ptr %4, align 8, !tbaa !29
  %bcmp.i = call i32 @bcmp(ptr %i.dd, ptr %i.dc, i64 %i.cs)
  %i.de = icmp eq i32 %bcmp.i, 0
  %i.df = trunc nuw i8 %i.bh to i1
  %i.dg = trunc nuw i8 %i.cp to i1
  %or.cond3 = select i1 %i.df, i1 true, i1 %i.dg
  %or.cond = select i1 %i.de, i1 %or.cond3, i1 false
  br i1 %or.cond, label %bb.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread80

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.s
  %.old = trunc nuw i8 %i.bh to i1
  %.old92 = trunc nuw i8 %i.cp to i1
  %or.cond3.old = select i1 %.old, i1 true, i1 %.old92
  br i1 %or.cond3.old, label %bb.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread80

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %i.dh = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48
          to label %_ZN8facebook5velox6common12_GLOBAL__N_111nullOrFalseEb.exit unwind label %bb.g ; 5 uses

_ZN8facebook5velox6common12_GLOBAL__N_111nullOrFalseEb.exit: ; preds = %bb.t
  %i.di = trunc nuw i8 %i.u to i1                 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 9
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %.7.i = select i1 %i.di, i32 2, i32 0
  %.8.i = select i1 %i.di, ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common6IsNullE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11AlwaysFalseE, i64 16)
  store i8 %i.u, ptr %i.dj, align 8, !tbaa !72, !noalias !1248
  store i8 1, ptr %i.dk, align 1, !tbaa !71, !noalias !1248
  store i32 %.7.i, ptr %i.dl, align 4, !tbaa !68, !noalias !1248
  store ptr %.8.i, ptr %i.dh, align 8, !tbaa !102, !noalias !1248
  store ptr %i.dh, ptr %0, align 8, !tbaa !104, !alias.scope !1248
  br label %bb.v

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread80: ; preds = %bb.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  invoke void @_ZSt11make_uniqueIN8facebook5velox6common10BytesRangeEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbSB_SA_SB_SB_SB_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.208") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.u

_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread80
  %i.dm = load ptr, ptr %5, align 8, !tbaa !252
  store ptr %i.dm, ptr %0, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.v

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread80
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.w

bb.v:                                             ; preds = %_ZN8facebook5velox6common12_GLOBAL__N_111nullOrFalseEb.exit, %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit
  %i.do = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.x
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.dq = load i64, ptr %i.x, align 8, !tbaa !9
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.ds = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.v
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.du = load i64, ptr %i.v, align 8, !tbaa !9
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %bb.y

bb.w:                                             ; preds = %bb.u, %bb.p, %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.u ], [ %i.ah, %bb.g ], [ %i.co, %bb.p ], [ %i.bg, %bb.k ]
  %i.dw = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.x
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.w
  %i.dy = load i64, ptr %i.x, align 8, !tbaa !9
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.ea = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.v
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ec = load i64, ptr %i.v, align 8, !tbaa !9
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %common.resume

bb.x:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6common10BytesRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs) #45
  unreachable

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %bb.c, %_ZNK8facebook5velox6common10BytesRange5cloneESt8optionalIbE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox6common10BytesRange5cloneESt8optionalIbE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i16 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i16 %2, 256
  %.not = icmp eq i16 %i.a, 0
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #48, !noalias !57 ; 4 uses
  br i1 %.not, label %bb.c, label %_ZNRSt8optionalIbE5valueEv.exit

_ZNRSt8optionalIbE5valueEv.exit:                  ; preds = %bb.a
  %i.c = trunc i16 %2 to i1
  invoke void @_ZN8facebook5velox6common10BytesRangeC2ERKS2_b(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %i.c)
          to label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.b, !noalias !1251, !inline_history !1254

common.resume:                                    ; preds = %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.e, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 128) #46, !noalias !57
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZNRSt8optionalIbE5valueEv.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN8facebook5velox6common10BytesRangeC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.d, !noalias !1255, !inline_history !1258

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNRSt8optionalIbE5valueEv.exit
  store ptr %i.b, ptr %0, align 8, !tbaa !104
  ret void
end_hunk_0
