inline.NumInlined: 779
inline.NumDeleted: 370
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp19Discreet3DSExporter11WriteStringERK8aiString:bb.a
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.c, label %._crit_edge, !llvm.loop !27
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSExporter11WriteStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not10 = icmp samesign eq i64 %i.b, 0
  br i1 %.not10, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre12 = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %i.d, align 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6, %.._crit_edge_crit_edge
  %i.g = phi i64 [ %.pre12, %.._crit_edge_crit_edge ], [ %i.ah, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6 ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i = icmp ult i64 %i.i, %i.p
  br i1 %.not.i.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.i)
  %.pre.i.i = load i64, ptr %i.h, align 8
  %.pre2.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit:  ; preds = %._crit_edge, %bb.b
  %i.q = phi ptr [ %.pre2.i.i, %bb.b ], [ %i.m, %._crit_edge ]
  %i.r = phi i64 [ %.pre.i.i, %bb.b ], [ %i.g, %._crit_edge ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.s, align 1
  %i.t = load i64, ptr %i.h, align 8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.h, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6
  %i.v = phi i64 [ %.pre, %.lr.ph ], [ %i.ah, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6 ] ; 2 uses
  %.sroa.07.011 = phi ptr [ %i.c, %.lr.ph ], [ %i.ai, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6 ] ; 2 uses
  %i.w = load i8, ptr %.sroa.07.011, align 1
  %i.x = add i64 %i.v, 1                          ; 2 uses
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %.not.i.i3 = icmp ult i64 %i.x, %i.ac
  br i1 %.not.i.i3, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.x)
  %.pre.i.i4 = load i64, ptr %i.d, align 8
  %.pre2.i.i5 = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6: ; preds = %bb.c, %bb.d
  %i.ad = phi ptr [ %.pre2.i.i5, %bb.d ], [ %i.z, %bb.c ]
  %i.ae = phi i64 [ %.pre.i.i4, %bb.d ], [ %i.v, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 %i.w, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.ah, ptr %i.d, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 1 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = load i64, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %.not = icmp eq ptr %i.ai, %i.al
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !13
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp12_GLOBAL__N_111GetMeshNameB5cxx11ERK6aiMeshjRK6aiNode(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1320) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1144) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [10 x i8], align 1                ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.c, i8 0, i64 10, i1 false)
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %bb.b, label %.lr.ph.i.i.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 45, ptr %i.c, align 1
  %i.f = sub nsw i32 0, %2
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b, %bb.a
  %.153.i.i.ph = phi ptr [ %i.c, %bb.a ], [ %i.e, %bb.b ]
  %.13350.i.i.ph = phi i32 [ 1, %bb.a ], [ 2, %bb.b ]
  %.13849.i.i.ph = phi i32 [ %2, %bb.a ], [ %i.f, %bb.b ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.d
  %.153.i.i = phi ptr [ %.2.i.i, %bb.d ], [ %.153.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02752.i.i = phi i1 [ %or.cond3.i.i, %bb.d ], [ false, %.lr.ph.i.i.preheader ]
  %.03051.i.i = phi i32 [ %i.p, %bb.d ], [ 1000000000, %.lr.ph.i.i.preheader ] ; 5 uses
  %.13350.i.i = phi i32 [ %.234.i.i, %bb.d ], [ %.13350.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.13849.i.i = phi i32 [ %.239.i.i, %bb.d ], [ %.13849.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.g = sdiv i32 %.13849.i.i, %.03051.i.i        ; 3 uses
  %.recomposed = srem i32 %.13849.i.i, %.03051.i.i
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp eq i32 %.03051.i.i, 1               ; 2 uses
  %i.j = or i1 %i.i, %i.h
  %or.cond3.i.i = select i1 %.02752.i.i, i1 true, i1 %i.j ; 2 uses
  br i1 %or.cond3.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = trunc i32 %i.g to i8
  %i.l = add i8 %i.k, 48
  %i.m = getelementptr inbounds nuw i8, ptr %.153.i.i, i64 1 ; 2 uses
  store i8 %i.l, ptr %.153.i.i, align 1
  %i.n = add nuw nsw i32 %.13350.i.i, 1
  %i.o = mul i32 %i.g, %.03051.i.i                ; 0 uses
  br i1 %i.i, label %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.239.i.i = phi i32 [ %.recomposed, %bb.c ], [ %.13849.i.i, %.lr.ph.i.i ]
  %.234.i.i = phi i32 [ %i.n, %bb.c ], [ %.13350.i.i, %.lr.ph.i.i ] ; 2 uses
  %.2.i.i = phi ptr [ %i.m, %bb.c ], [ %.153.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.p = sdiv i32 %.03051.i.i, 10
  %i.q = icmp ult i32 %.234.i.i, 10
  br i1 %i.q, label %.lr.ph.i.i, label %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit

_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit:   ; preds = %bb.c, %bb.d
  %.4.i.i = phi ptr [ %.2.i.i, %bb.d ], [ %i.m, %bb.c ]
  store i8 0, ptr %.4.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.s, ptr %4, align 8
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.t, ptr %i.b, align 8
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load i64, ptr %i.b, align 8
  store i64 %i.w, ptr %i.s, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit
  %i.x = phi ptr [ %i.v, %.noexc.i ], [ %i.s, %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %i.r, align 4
  store i8 %i.y, ptr %i.x, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 4 %i.r, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.z = load i64, ptr %i.b, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.ae = load i32, ptr %i.ad, align 4
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load ptr, ptr %4, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.s
  br i1 %i.ai, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %6 = load i64, ptr %i.s, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %7 = phi i64 [ %6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %bb.i ]
  %i.ak = icmp ugt i64 %i.ag, %7
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.af, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc11 unwind label %bb.m

.noexc11:                                         ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %4, align 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.al = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  store i8 95, ptr %i.am, align 1
  store i64 %i.ag, ptr %i.aa, align 8
  %i.an = load ptr, ptr %4, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ag
  store i8 0, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #21 ; 2 uses
  %i.ar = load i64, ptr %i.aa, align 8
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc12 unwind label %bb.m

.noexc12:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.k
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.ap, i64 noundef %i.aq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.l, %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 95, ptr %i.a, align 1, !noalias !31
  %i.aw = load ptr, ptr %4, align 8, !noalias !31
  %i.ax = load i64, ptr %i.aa, align 8, !noalias !31 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ay, ptr %5, align 8, !alias.scope !34
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.az, align 8, !alias.scope !34
  store i8 0, ptr %i.ay, align 8, !alias.scope !34
  %i.ba = add i64 %i.ax, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ba)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bb = load i64, ptr %i.az, align 8, !alias.scope !34
  %i.bc = sub i64 4611686018427387903, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.ax
  br i1 %i.bd, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.n
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bf = load i64, ptr %i.az, align 8, !alias.scope !34
  %i.bg = icmp eq i64 %i.bf, 4611686018427387903
  br i1 %i.bg, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.cont.i.i unwind label %bb.o

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.p unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %5, align 8, !alias.scope !34 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ay
  br i1 %i.bk, label %.body, label %.body.sink.split

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21, !noalias !37 ; 2 uses
  %i.bm = load i64, ptr %i.az, align 8, !noalias !37
  %i.bn = sub i64 4611686018427387903, %i.bm
  %i.bo = icmp ult i64 %i.bn, %i.bl
  br i1 %i.bo, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc15 unwind label %bb.t

.noexc15:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14: ; preds = %bb.p
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.c, i64 noundef %i.bl)
          to label %.noexc16 unwind label %bb.t   ; 6 uses

.noexc16:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bq, ptr %0, align 8, !alias.scope !37
  %i.br = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.r:                                             ; preds = %.noexc16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc16
  store ptr %i.br, ptr %0, align 8, !alias.scope !37
  %i.by = load i64, ptr %i.bs, align 8
  store i64 %i.by, ptr %i.bq, align 8, !alias.scope !37
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %i.bz = phi i64 [ %i.bv, %bb.r ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %i.cb, align 8, !alias.scope !37
  store ptr %i.bs, ptr %i.bp, align 8
  store i64 0, ptr %i.ca, align 8
  store i8 0, ptr %i.bs, align 8
  %i.cc = load ptr, ptr %5, align 8               ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ay
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.s
  %i.ce = load i64, ptr %i.ay, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.cg = load ptr, ptr %4, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.s
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ci = load i64, ptr %i.s, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret void

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14, %bb.q
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %5, align 8               ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ay
  br i1 %i.cm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.t, %bb.o
  %.sink = phi ptr [ %i.bj, %bb.o ], [ %i.cl, %bb.t ]
  %.pn.ph = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.ck, %bb.t ]
  %i.cn = load i64, ptr %i.ay, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.co) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.t, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.ck, %bb.t ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.u

bb.u:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.av, %bb.m ]
  %i.cp = load ptr, ptr %4, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.s
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.u
  %i.cr = load i64, ptr %i.s, align 8
  %i.cs = add i64 %i.cr, 1
end_hunk_0
