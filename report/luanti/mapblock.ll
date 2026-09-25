Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapblock?download=true
inline.NumInlined: 1707
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_:bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !137  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !135, !alias.scope !246
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !137, !alias.scope !246
  store i8 0, ptr %i.e, align 8, !tbaa !95, !alias.scope !246
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !137, !alias.scope !246
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !137, !alias.scope !246
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #31
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !94, !alias.scope !246 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !95, !alias.scope !246
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8MapBlock9serializeERSohbi(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator.25", align 1 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 26 uses
  %8 = alloca %class.NameIdMapping, align 8       ; 20 uses
  %9 = alloca %class.Buffer, align 8              ; 6 uses
  %10 = alloca %class.Buffer, align 8             ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.g = zext i8 %2 to i32                        ; 2 uses
  %i.h = add i8 %2, -24
  %i.i = icmp ult i8 %i.h, 6
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN24VersionMismatchExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %5)
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI24VersionMismatchException, ptr nonnull @_ZN13BaseExceptionD2Ev) #31
          to label %bb.bh unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %5, align 8, !tbaa !94     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !95
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.bg

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @__cxa_free_exception(ptr %i.j) #20
  br label %bb.bg

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %7, i32 noundef 4)
  %i.r = icmp samesign ugt i8 %2, 28              ; 4 uses
  %i.s = select i1 %i.r, ptr %7, ptr %1           ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 83
  %i.u = load i8, ptr %i.t, align 1, !tbaa !76, !range !87, !noundef !88
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !69, !range !87, !noundef !88
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %._ZN8MapBlock19actuallyUpdateIsAirEv.exit_crit_edge.i

._ZN8MapBlock19actuallyUpdateIsAirEv.exit_crit_edge.i: ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !152, !range !87
  br label %_ZN8MapBlock5isAirEv.exit

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.v, align 1, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.z = load i8, ptr %i.y, align 4, !tbaa !68, !range !87, !noundef !88
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 5 uses
  br i1 %i.aa, label %bb.h, label %.preheader.i.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !149
  %i.ae = icmp eq i16 %i.ad, 126
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = zext i1 %i.ae to i8                     ; 2 uses
  store i8 %i.ag, ptr %i.af, align 8, !tbaa !152
  br label %_ZN8MapBlock5isAirEv.exit

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !149
  %.not.i.i.1 = icmp eq i16 %i.aj, 126
  br i1 %.not.i.i.1, label %.preheader.i.i.2, label %bb.j

.preheader.i.i.2:                                 ; preds = %.preheader.i.i.1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i16, ptr %i.al, align 4, !tbaa !149
  %.not.i.i.2 = icmp eq i16 %i.am, 126
  br i1 %.not.i.i.2, label %.preheader.i.i.3, label %bb.j

.preheader.i.i.3:                                 ; preds = %.preheader.i.i.2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !149
  %.not.i.i.3 = icmp eq i16 %i.ap, 126
  br i1 %.not.i.i.3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.i.i.3
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 4096
  br i1 %exitcond.not.i.i.3, label %bb.j, label %.preheader.i.i, !llvm.loop !2

.preheader.i.i:                                   ; preds = %bb.g, %bb.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %bb.i ], [ 0, %bb.g ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !149
  %.not.i.i = icmp eq i16 %i.ar, 126
  br i1 %.not.i.i, label %.preheader.i.i.1, label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader.i.i.3, %.preheader.i.i.2, %.preheader.i.i.1, %.preheader.i.i
  %.2.i.i = phi i8 [ 0, %.preheader.i.i ], [ 1, %bb.i ], [ 0, %.preheader.i.i.1 ], [ 0, %.preheader.i.i.3 ], [ 0, %.preheader.i.i.2 ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.2.i.i, ptr %i.as, align 8, !tbaa !152
  br label %_ZN8MapBlock5isAirEv.exit

_ZN8MapBlock5isAirEv.exit:                        ; preds = %._ZN8MapBlock19actuallyUpdateIsAirEv.exit_crit_edge.i, %bb.h, %bb.j
  %i.at = phi i8 [ %.pre.i, %._ZN8MapBlock19actuallyUpdateIsAirEv.exit_crit_edge.i ], [ %.2.i.i, %bb.j ], [ %i.ag, %bb.h ]
  %i.au = shl nuw nsw i8 %i.at, 1
  %i.av = or disjoint i8 %i.au, %i.u
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !75, !range !87, !noundef !88
  %i.ay = shl nuw nsw i8 %i.ax, 3
  %13 = xor i8 %i.ay, 8
  %i.az = or i8 %13, %i.av
  %.268 = xor i8 %i.az, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i8 %.268, ptr %i.f, align 1, !tbaa !95
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.l unwind label %bb.k       ; 0 uses

bb.k:                                             ; preds = %bb.m, %_ZN8MapBlock5isAirEv.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.l:                                             ; preds = %_ZN8MapBlock5isAirEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.bc = icmp ugt i8 %2, 26
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %rev.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.be)
  store i16 %rev.i.i.i, ptr %i.e, align 2
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.e, i64 noundef 2)
          to label %_Z8writeU16RSot.exit unwind label %bb.k ; 0 uses

_Z8writeU16RSot.exit:                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.n

bb.n:                                             ; preds = %_Z8writeU16RSot.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.bg, ptr %8, align 8, !tbaa !165
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.bh, align 8, !tbaa !164
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bj, align 8, !tbaa !173
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !175
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 1, ptr %i.bn, align 8, !tbaa !176
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bp, align 8, !tbaa !173
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  br i1 %3, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !68, !range !87, !noundef !88
  %i.bt = trunc nuw i8 %i.bs to i1                ; 2 uses
  %i.bu = select i1 %i.bt, i32 1, i32 4096        ; 2 uses
  %i.bv = shl nuw nsw i32 %i.bu, 2
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bw) #28
          to label %bb.p unwind label %bb.w       ; 6 uses

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !66 ; 2 uses
  br i1 %i.bt, label %bb.r, label %bb.q, !prof !177

bb.q:                                             ; preds = %bb.p
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bx, ptr noundef nonnull align 4 dereferenceable(1) %i.bz, i64 %i.bw, i1 false)
  br label %_ZSt6copy_nIP7MapNodemS1_ET1_T_T0_S2_.exit

bb.r:                                             ; preds = %bb.p
  %i.ca = load i32, ptr %i.bz, align 4
  store i32 %i.ca, ptr %i.bx, align 4
  br label %_ZSt6copy_nIP7MapNodemS1_ET1_T_T0_S2_.exit

_ZSt6copy_nIP7MapNodemS1_ET1_T_T0_S2_.exit:       ; preds = %bb.r, %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !67 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef ptr %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.x, !inline_history !4

_ZN8IGameDef4ndefEv.exit:                         ; preds = %_ZSt6copy_nIP7MapNodemS1_ET1_T_T0_S2_.exit
  invoke void @_ZN8MapBlock21getBlockNodeIdMappingEP13NameIdMappingP7MapNodejPK14NodeDefManager(ptr noundef nonnull %8, ptr noundef nonnull %i.bx, i32 noundef %i.bu, ptr noundef %i.cg)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %_ZN8IGameDef4ndefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ch = load i8, ptr %i.br, align 4, !tbaa !68, !range !87, !noundef !88
  %i.ci = trunc nuw i8 %i.ch to i1
  invoke void @_ZN7MapNode13serializeBulkEiPKS_jhhb(ptr dead_on_unwind nonnull writable sret(%class.Buffer) align 8 %9, i32 noundef %i.g, ptr noundef nonnull %i.bx, i32 noundef 4096, i8 noundef zeroext 2, i8 noundef zeroext 2, i1 noundef zeroext %i.ci)
          to label %_ZN6BufferIhE4dropEv.exit.i unwind label %bb.y

_ZN6BufferIhE4dropEv.exit.i:                      ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !256 ; 2 uses
  %.not.i = icmp eq i64 %i.ck, 0
  %.pr = load ptr, ptr %9, align 8, !tbaa !257    ; 3 uses
  br i1 %.not.i, label %_ZN6BufferIhEaSEOS0_.exit, label %_ZN6BufferIhED2Ev.exit

_ZN6BufferIhEaSEOS0_.exit:                        ; preds = %_ZN6BufferIhE4dropEv.exit.i
  %i.cl = icmp eq ptr %.pr, null
  br i1 %i.cl, label %_ZN6BufferIhED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6BufferIhEaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #29
  br label %_ZN6BufferIhED2Ev.exit

_ZN6BufferIhED2Ev.exit:                           ; preds = %_ZN6BufferIhE4dropEv.exit.i, %_ZN6BufferIhEaSEOS0_.exit, %bb.t
  %.sroa.0131.5165 = phi ptr [ null, %bb.t ], [ null, %_ZN6BufferIhEaSEOS0_.exit ], [ %.pr, %_ZN6BufferIhE4dropEv.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %i.r, label %bb.u, label %_ZNSt10unique_ptrIA_7MapNodeSt14default_deleteIS1_EED2Ev.exit

bb.u:                                             ; preds = %_ZN6BufferIhED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.co = call noundef i32 @llvm.bswap.i32(i32 %i.cn)
  store i32 %i.co, ptr %i.d, align 4
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.d, i64 noundef 4)
          to label %bb.v unwind label %bb.x       ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  invoke void @_ZNK13NameIdMapping9serializeERSo(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSt10unique_ptrIA_7MapNodeSt14default_deleteIS1_EED2Ev.exit unwind label %bb.x

bb.w:                                             ; preds = %bb.o
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6BufferIhED2Ev.exit126

bb.x:                                             ; preds = %bb.u, %_ZSt6copy_nIP7MapNodemS1_ET1_T_T0_S2_.exit, %bb.v, %_ZN8IGameDef4ndefEv.exit
  %.sroa.0131.0 = phi ptr [ %.sroa.0131.5165, %bb.v ], [ %.sroa.0131.5165, %bb.u ], [ null, %_ZN8IGameDef4ndefEv.exit ], [ null, %_ZSt6copy_nIP7MapNodemS1_ET1_T_T0_S2_.exit ]
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_7MapNodeSt14default_deleteIS1_EED2Ev.exit84

bb.y:                                             ; preds = %bb.s
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %_ZNSt10unique_ptrIA_7MapNodeSt14default_deleteIS1_EED2Ev.exit84

_ZNSt10unique_ptrIA_7MapNodeSt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZN6BufferIhED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #29
  br label %bb.ac

_ZNSt10unique_ptrIA_7MapNodeSt14default_deleteIS1_EED2Ev.exit84: ; preds = %bb.y, %bb.x
  %.sroa.0131.1 = phi ptr [ %.sroa.0131.0, %bb.x ], [ null, %bb.y ]
  %.pn70 = phi { ptr, i32 } [ %i.cr, %bb.x ], [ %i.cs, %bb.y ]
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #29
  br label %bb.bd

bb.z:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !68, !range !87, !noundef !88
  %i.cx = trunc nuw i8 %i.cw to i1
  invoke void @_ZN7MapNode13serializeBulkEiPKS_jhhb(ptr dead_on_unwind nonnull writable sret(%class.Buffer) align 8 %10, i32 noundef %i.g, ptr noundef %i.cu, i32 noundef 4096, i8 noundef zeroext 2, i8 noundef zeroext 2, i1 noundef zeroext %i.cx)
          to label %_ZN6BufferIhE4dropEv.exit.i85 unwind label %bb.ab

_ZN6BufferIhE4dropEv.exit.i85:                    ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !256 ; 2 uses
  %.not.i86 = icmp eq i64 %i.cz, 0
  %.pr140 = load ptr, ptr %10, align 8, !tbaa !257 ; 3 uses
  br i1 %.not.i86, label %_ZN6BufferIhEaSEOS0_.exit87, label %_ZN6BufferIhED2Ev.exit89

_ZN6BufferIhEaSEOS0_.exit87:                      ; preds = %_ZN6BufferIhE4dropEv.exit.i85
  %i.da = icmp eq ptr %.pr140, null
  br i1 %i.da, label %_ZN6BufferIhED2Ev.exit89, label %bb.aa

bb.aa:                                            ; preds = %_ZN6BufferIhEaSEOS0_.exit87
  call void @_ZdaPv(ptr noundef nonnull %.pr140) #29
  br label %_ZN6BufferIhED2Ev.exit89

_ZN6BufferIhED2Ev.exit89:                         ; preds = %_ZN6BufferIhE4dropEv.exit.i85, %_ZN6BufferIhEaSEOS0_.exit87, %bb.aa
  %.sroa.0131.6167 = phi ptr [ null, %bb.aa ], [ null, %_ZN6BufferIhEaSEOS0_.exit87 ], [ %.pr140, %_ZN6BufferIhE4dropEv.exit.i85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %_ZN6BufferIhED2Ev.exit126

bb.ac:                                            ; preds = %_ZN6BufferIhED2Ev.exit89, %_ZNSt10unique_ptrIA_7MapNodeSt14default_deleteIS1_EED2Ev.exit
  %.sroa.0131.3 = phi ptr [ %.sroa.0131.5165, %_ZNSt10unique_ptrIA_7MapNodeSt14default_deleteIS1_EED2Ev.exit ], [ %.sroa.0131.6167, %_ZN6BufferIhED2Ev.exit89 ] ; 8 uses
  %.sroa.14.0 = phi i64 [ %i.ck, %_ZNSt10unique_ptrIA_7MapNodeSt14default_deleteIS1_EED2Ev.exit ], [ %i.cz, %_ZN6BufferIhED2Ev.exit89 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 2, ptr %i.c, align 1, !tbaa !95
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.c, i64 noundef 1)
end_hunk_0
