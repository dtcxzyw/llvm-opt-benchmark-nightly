inline.NumInlined: 3036
inline.NumDeleted: 446
begin_hunk_0_@_ZN16OpenColorIO_v2_513GeneralMerger14handleBaseOnlyEv:bb.a
  %.not10 = icmp eq i8 %i.t, 0
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  tail call void @_ZN16OpenColorIO_v2_56Config14setDescriptionEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.s)
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37, !nonnull !24, !align !25
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ad = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config14getDescriptionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  tail call void @_ZN16OpenColorIO_v2_56Config14setDescriptionEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.ad)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34, !nonnull !24, !align !25
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35
  %i.aj = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config15getMajorVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !34, !nonnull !24, !align !25
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.am = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config15getMinorVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37, !nonnull !24, !align !25
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.aq = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config15getMajorVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !37, !nonnull !24, !align !25
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.at = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config15getMinorVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 2 uses
  %.val = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.au = mul i32 %i.aj, 100
  %i.av = add i32 %i.am, %i.au
  %i.aw = mul i32 %i.aq, 100
  %i.ax = add i32 %i.at, %i.aw
  %i.ay = icmp ugt i32 %i.av, %i.ax               ; 2 uses
  %spec.select.i = select i1 %i.ay, i32 %i.am, i32 %i.at ; 2 uses
  %spec.select14.i = select i1 %i.ay, i32 %i.aj, i32 %i.aq ; 2 uses
  %i.az = mul i32 %spec.select14.i, 100
  %i.ba = add i32 %i.az, %spec.select.i
  %i.bb = icmp ult i32 %i.ba, 200                 ; 2 uses
  %.113.i = select i1 %i.bb, i32 0, i32 %spec.select.i
  %.1.i = select i1 %i.bb, i32 2, i32 %spec.select14.i
  tail call void @_ZN16OpenColorIO_v2_56Config10setVersionEjj(ptr noundef nonnull align 8 dereferenceable(8) %.val, i32 noundef %.1.i, i32 noundef %.113.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !37, !nonnull !24, !align !25
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35
  call void @_ZNK16OpenColorIO_v2_56Config19getDefaultLumaCoefsEPd(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull %i.a)
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31
  call void @_ZN16OpenColorIO_v2_56Config19setDefaultLumaCoefsEPKd(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511RolesMerger15mergeInputRolesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::shared_ptr.10", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 29 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::shared_ptr.13", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 29 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !24, !align !25
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumRolesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 4 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 3 uses
  %i.p = getelementptr i8, ptr %i.n, i64 -24      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.b

._crit_edge:                                      ; preds = %bb.cu, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.cu
  %.050255 = phi i32 [ 0, %.lr.ph ], [ %i.lw, %bb.cu ] ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !24, !align !25
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.as = call noundef ptr @_ZNK16OpenColorIO_v2_56Config11getRoleNameEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef %.050255) ; 28 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !24, !align !25
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !35
  %i.av = call noundef ptr @_ZNK16OpenColorIO_v2_56Config17getRoleColorSpaceEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.as) #23 ; 3 uses
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config7hasRoleEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.as)
  br i1 %i.ay, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = call noundef ptr @_ZNK16OpenColorIO_v2_56Config17getRoleColorSpaceEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.as) #23
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26
  %i.be = call noundef i32 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getRolesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
  %i.bf = call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.av, ptr noundef %i.bb)
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %bb.cu, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = and i32 %i.be, -3
  %or.cond = icmp eq i32 %i.bg, 0
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  call void @_ZN16OpenColorIO_v2_56Config7setRoleEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.as, ptr noundef %i.av)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 71)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !38
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !40
  %i.bq = or i32 %i.bp, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bn, i32 noundef %i.bq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.q

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.br = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #23
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.as, i64 noundef %i.br)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %bb.g, %bb.h
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  store ptr %i.ag, ptr %2, align 8, !tbaa !55, !alias.scope !56
  store i64 0, ptr %i.ah, align 8, !tbaa !57, !alias.scope !56
  store i8 0, ptr %i.ag, align 8, !tbaa !29, !alias.scope !56
  %i.bu = load ptr, ptr %i.ai, align 8, !tbaa !58, !noalias !56 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bu, null
  br i1 %.not5.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %13 = load ptr, ptr %i.aj, align 8, !noalias !56 ; 2 uses
  %14 = icmp ugt ptr %i.bu, %13
  %.08.i.i.i = select i1 %14, ptr %i.bu, ptr %13
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !60, !noalias !56 ; 2 uses
  %i.bw = ptrtoint ptr %.08.i.i.i to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.bv, i64 noundef %i.by)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !7, !alias.scope !56 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ag
  br i1 %i.cc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.cd = load i64, ptr %i.ag, align 8, !tbaa !29, !alias.scope !56
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #25
  br label %.body

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.cf = load ptr, ptr %i.m, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !26
  %i.ch = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %bb.l unwind label %.loopexit216

bb.l:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ch, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %.loopexit216

bb.n:                                             ; preds = %bb.l
  %i.ci = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.cj = load ptr, ptr %2, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef %i.cj)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc74 unwind label %.loopexit.split-lp217

.noexc74:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ci) #23
  br label %.body75

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.m
  %i.cl = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ag
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.cn = load i64, ptr %i.ag, align 8, !tbaa !29
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.n, ptr %1, align 8, !tbaa !38
  %i.cp = load i64, ptr %i.p, align 8
  %i.cq = getelementptr inbounds i8, ptr %1, i64 %i.cp
  store ptr %i.o, ptr %i.cq, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.am, align 8, !tbaa !38
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !7  ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.an
  br i1 %i.cs, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = load i64, ptr %i.an, align 8, !tbaa !29
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.cu

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70, %bb.h, %bb.g, %bb.f
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit216:                                     ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.m
  %lpad.loopexit218 = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.loopexit.split-lp217:                            ; preds = %bb.o
  %lpad.loopexit.split-lp219 = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.body75:                                          ; preds = %.loopexit216, %.loopexit.split-lp217, %bb.p
  %eh.lpad-body76 = phi { ptr, i32 } [ %i.ck, %bb.p ], [ %lpad.loopexit218, %.loopexit216 ], [ %lpad.loopexit.split-lp219, %.loopexit.split-lp217 ] ; 2 uses
  %i.cw = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ag
  br i1 %i.cx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %.body75
  %i.cy = load i64, ptr %i.ag, align 8, !tbaa !29
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #25
  br label %.body

.body:                                            ; preds = %.body75, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn66 = phi { ptr, i32 } [ %eh.lpad-body76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.cv, %bb.q ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ca, %bb.j ], [ %eh.lpad-body76, %.body75 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.cy

bb.r:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !31
  call void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef %i.as)
  %i.dc = load ptr, ptr %3, align 8, !tbaa !61
  %.not209 = icmp eq ptr %i.dc, null
  br i1 %.not209, label %bb.ay, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dd = load ptr, ptr %3, align 8, !tbaa !61
  %i.de = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #23
  %i.df = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.de, ptr noundef %i.as)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %bb.v
  %.not.i82 = icmp eq ptr %i.as, null
  br i1 %.not.i82, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.di = load ptr, ptr %4, align 8, !tbaa !38
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %4, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !40
  %i.do = or i32 %i.dn, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dl, i32 noundef %i.do)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %bb.z

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.dp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #23
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.as, i64 noundef %i.dp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %bb.w, %bb.x
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.3, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.ds = load ptr, ptr %3, align 8, !tbaa !61
  %i.dt = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #23 ; 2 uses
  %.not.i88 = icmp eq ptr %i.dt, null
  br i1 %.not.i88, label %.invoke326, label %.invoke

bb.y:                                             ; preds = %bb.s
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.z:                                             ; preds = %.invoke326, %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99, %bb.ad, %bb.ac, %bb.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %bb.x, %bb.w, %bb.v, %bb.t
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body122

bb.aa:                                            ; preds = %bb.u
  %i.dw = load ptr, ptr %3, align 8, !tbaa !61
  %i.dx = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace8hasAliasEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef %i.as) #23
  br i1 %i.dx, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %bb.ab
  %.not.i96 = icmp eq ptr %i.as, null
  br i1 %.not.i96, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.dz = load ptr, ptr %4, align 8, !tbaa !38
  %i.ea = getelementptr i8, ptr %i.dz, i64 -24
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds i8, ptr %4, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !40
  %i.ef = or i32 %i.ee, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ec, i32 noundef %i.ef)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %bb.z

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.eg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #23
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.as, i64 noundef %i.eg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99: ; preds = %bb.ac, %bb.ad
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.4, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.ej = load ptr, ptr %3, align 8, !tbaa !61
  %i.ek = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ej) #23 ; 2 uses
  %.not.i102 = icmp eq ptr %i.ek, null
  br i1 %.not.i102, label %.invoke326, label %.invoke

.invoke326:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.el = load ptr, ptr %4, align 8, !tbaa !38
  %i.em = getelementptr i8, ptr %i.el, i64 -24
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr inbounds i8, ptr %4, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !40
  %i.er = or i32 %i.eq, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.eo, i32 noundef %i.er)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke unwind label %bb.z

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %.sink = phi ptr [ %i.dt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 ], [ %i.ek, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101 ] ; 2 uses
  %i.es = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink) #23
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.sink, i64 noundef %i.es)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke: ; preds = %.invoke326, %.invoke
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93 unwind label %bb.z ; 0 uses

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.5, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %bb.af
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.as)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull @.str.6, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111: ; preds = %bb.ag
  %i.ey = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111
  %i.ez = load ptr, ptr %6, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef %i.ez)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %bb.cz unwind label %bb.al

bb.aj:                                            ; preds = %bb.ae
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ag, %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %.032 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fe = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.al
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !29
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.032, label %bb.am, label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.032, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn58205 = phi { ptr, i32 } [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  call void @__cxa_free_exception(ptr %i.ey) #23
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.am, %bb.ak
  %.pn58.pn = phi { ptr, i32 } [ %.pn58205, %bb.am ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.fb, %bb.ak ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %bb.an ], [ %i.fa, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body122

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  store ptr %i.g, ptr %7, align 8, !tbaa !55, !alias.scope !70
  store i64 0, ptr %i.h, align 8, !tbaa !57, !alias.scope !70
  store i8 0, ptr %i.g, align 8, !tbaa !29, !alias.scope !70
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !58, !noalias !70 ; 3 uses
  %.not5.i.i117 = icmp eq ptr %i.fj, null
  br i1 %.not5.i.i117, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %15 = load ptr, ptr %i.j, align 8, !noalias !70 ; 2 uses
  %16 = icmp ugt ptr %i.fj, %15
  %.08.i.i.i116 = select i1 %16, ptr %i.fj, ptr %15
  %i.fk = load ptr, ptr %i.k, align 8, !tbaa !60, !noalias !70 ; 2 uses
  %i.fl = ptrtoint ptr %.08.i.i.i116 to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.fk, i64 noundef %i.fn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit124 unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = load ptr, ptr %7, align 8, !tbaa !7, !alias.scope !70 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.g
  br i1 %i.fr, label %.body122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119: ; preds = %bb.aq
  %i.fs = load i64, ptr %i.g, align 8, !tbaa !29, !alias.scope !70
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #25
  br label %.body122

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit124 unwind label %bb.aq

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit124: ; preds = %bb.ar, %bb.ap
  %i.fu = load ptr, ptr %i.m, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !26
  %i.fw = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %bb.as unwind label %.loopexit

bb.as:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit124
  br i1 %i.fw, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit129 unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.fx = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.fy = load ptr, ptr %7, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef %i.fy)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc126 unwind label %.loopexit.split-lp

.noexc126:                                        ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fx) #23
  br label %.body127

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit129: ; preds = %bb.at
  %i.ga = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.g
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit129
  %i.gc = load i64, ptr %i.g, align 8, !tbaa !29
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  store ptr %i.n, ptr %4, align 8, !tbaa !38
  %i.ge = load i64, ptr %i.p, align 8
  %i.gf = getelementptr inbounds i8, ptr %4, i64 %i.ge
  store ptr %i.o, ptr %i.gf, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.q, align 8, !tbaa !38
  %i.gg = load ptr, ptr %i.l, align 8, !tbaa !7   ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.r
  br i1 %i.gh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.gi = load i64, ptr %i.r, align 8, !tbaa !29
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit135

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.q, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.t) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.cn

.loopexit:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit124, %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body127

.loopexit.split-lp:                               ; preds = %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body127

.body127:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.aw
  %eh.lpad-body128 = phi { ptr, i32 } [ %i.fz, %bb.aw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.gk = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.g
  br i1 %i.gl, label %.body122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %.body127
  %i.gm = load i64, ptr %i.g, align 8, !tbaa !29
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #25
  br label %.body122

.body122:                                         ; preds = %.body127, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119, %bb.z, %bb.ao
  %.pn62 = phi { ptr, i32 } [ %eh.lpad-body128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.pn58.pn.pn, %bb.ao ], [ %i.dv, %bb.z ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119 ], [ %i.fp, %bb.aq ], [ %eh.lpad-body128, %.body127 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  br label %bb.ax

bb.ax:                                            ; preds = %.body122, %bb.y
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %.body122 ], [ %i.du, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.cx

bb.ay:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.go = load ptr, ptr %i.f, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !31
  call void @_ZNK16OpenColorIO_v2_56Config17getNamedTransformEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef %i.as) #23
  %i.gq = load ptr, ptr %8, align 8, !tbaa !71
  %.not210 = icmp eq ptr %i.gq, null
  br i1 %.not210, label %bb.cf, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.ba unwind label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.gr = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !38
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gr) #23
  %i.gw = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.gv, ptr noundef %i.as)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.2, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140: ; preds = %bb.bc
  %.not.i141 = icmp eq ptr %i.as, null
  br i1 %.not.i141, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140
  %i.gz = load ptr, ptr %9, align 8, !tbaa !38
  %i.ha = getelementptr i8, ptr %i.gz, i64 -24
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds i8, ptr %9, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !40
  %i.hf = or i32 %i.he, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.hc, i32 noundef %i.hf)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144.a unwind label %bb.bg

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140
  %i.hg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #23
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %i.as, i64 noundef %i.hg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144.a unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144.a: ; preds = %bb.bd, %bb.be
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.7, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144.a
  %i.hj = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !38
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call noundef ptr %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.hj) #23 ; 2 uses
  %.not.i147 = icmp eq ptr %i.hn, null
  br i1 %.not.i147, label %.invoke331, label %.invoke330

bb.bf:                                            ; preds = %bb.az
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bg:                                            ; preds = %.invoke331, %.invoke330, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158.a, %bb.bk, %bb.bj, %bb.bi, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144.a, %bb.be, %bb.bd, %bb.bc, %bb.ba
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body181

bb.bh:                                            ; preds = %bb.bb
  %i.hq = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !38
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = call noundef zeroext i1 %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %i.hq, ptr noundef %i.as) #23
  br i1 %i.hu, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.2, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154: ; preds = %bb.bi
  %.not.i155 = icmp eq ptr %i.as, null
  br i1 %.not.i155, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154
  %i.hw = load ptr, ptr %9, align 8, !tbaa !38
  %i.hx = getelementptr i8, ptr %i.hw, i64 -24
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = getelementptr inbounds i8, ptr %9, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !40
  %i.ic = or i32 %i.ib, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.hz, i32 noundef %i.ic)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158.a unwind label %bb.bg

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154
  %i.id = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #23
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %i.as, i64 noundef %i.id)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158.a unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158.a: ; preds = %bb.bj, %bb.bk
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.8, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158.a
  %i.ig = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !38
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = call noundef ptr %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.ig) #23 ; 2 uses
  %.not.i161 = icmp eq ptr %i.ik, null
  br i1 %.not.i161, label %.invoke331, label %.invoke330

.invoke331:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  %i.il = load ptr, ptr %9, align 8, !tbaa !38
  %i.im = getelementptr i8, ptr %i.il, i64 -24
  %i.in = load i64, ptr %i.im, align 8
  %i.io = getelementptr inbounds i8, ptr %9, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !40
  %i.ir = or i32 %i.iq, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.io, i32 noundef %i.ir)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164.invoke unwind label %bb.bg

.invoke330:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  %.sink338 = phi ptr [ %i.hn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 ], [ %i.ik, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160 ] ; 2 uses
  %i.is = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink338) #23
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %.sink338, i64 noundef %i.is)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164.invoke unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164.invoke: ; preds = %.invoke331, %.invoke330
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152 unwind label %bb.bg ; 0 uses

bb.bl:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.iv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.5, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168.a unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168.a: ; preds = %bb.bm
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %i.as)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168.a
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iw, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170: ; preds = %bb.bn
  %i.iy = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.bo unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  %i.iz = load ptr, ptr %11, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, ptr noundef %i.iz)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  invoke void @__cxa_throw(ptr nonnull %i.iy, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %bb.cz unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bl
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.br:                                            ; preds = %bb.bn, %bb.bm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168.a
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bp, %bb.bo
  %.0 = phi i1 [ false, %bb.bp ], [ true, %bb.bo ] ; 2 uses
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.je = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.bs
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !29
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.0, label %bb.bt, label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.0, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %.pn208 = phi { ptr, i32 } [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread ], [ %i.jd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ]
  call void @__cxa_free_exception(ptr %i.iy) #23
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %bb.bt, %bb.br
  %.pn.pn = phi { ptr, i32 } [ %.pn208, %bb.bt ], [ %i.jd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %i.jb, %bb.br ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bq
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bu ], [ %i.ja, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body181

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  store ptr %i.u, ptr %12, align 8, !tbaa !55, !alias.scope !80
  store i64 0, ptr %i.v, align 8, !tbaa !57, !alias.scope !80
  store i8 0, ptr %i.u, align 8, !tbaa !29, !alias.scope !80
  %i.jj = load ptr, ptr %i.w, align 8, !tbaa !58, !noalias !80 ; 3 uses
  %.not5.i.i176 = icmp eq ptr %i.jj, null
  br i1 %.not5.i.i176, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152
  %17 = load ptr, ptr %i.x, align 8, !noalias !80 ; 2 uses
  %18 = icmp ugt ptr %i.jj, %17
  %.08.i.i.i173 = select i1 %18, ptr %i.jj, ptr %17
  %i.jk = load ptr, ptr %i.y, align 8, !tbaa !60, !noalias !80 ; 2 uses
  %i.jl = ptrtoint ptr %.08.i.i.i173 to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.jk, i64 noundef %i.jn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit183 unwind label %bb.bx ; 0 uses

bb.bx:                                            ; preds = %bb.by, %bb.bw
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = load ptr, ptr %12, align 8, !tbaa !7, !alias.scope !80 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.u
  br i1 %i.jr, label %.body181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i178: ; preds = %bb.bx
  %i.js = load i64, ptr %i.u, align 8, !tbaa !29, !alias.scope !80
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #25
  br label %.body181

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit183 unwind label %bb.bx

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit183: ; preds = %bb.by, %bb.bw
  %i.ju = load ptr, ptr %i.m, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !26
  %i.jw = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jv)
          to label %bb.bz unwind label %.loopexit211

bb.bz:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit183
  br i1 %i.jw, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit188 unwind label %.loopexit211

bb.cb:                                            ; preds = %bb.bz
  %i.jx = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.jy = load ptr, ptr %12, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, ptr noundef %i.jy)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  invoke void @__cxa_throw(ptr nonnull %i.jx, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc185 unwind label %.loopexit.split-lp212

.noexc185:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jx) #23
  br label %.body186

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit188: ; preds = %bb.ca
  %i.ka = load ptr, ptr %12, align 8, !tbaa !7    ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.u
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit188
  %i.kc = load i64, ptr %i.u, align 8, !tbaa !29
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  store ptr %i.n, ptr %9, align 8, !tbaa !38
  %i.ke = load i64, ptr %i.p, align 8
  %i.kf = getelementptr inbounds i8, ptr %9, i64 %i.ke
  store ptr %i.o, ptr %i.kf, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !38
  %i.kg = load ptr, ptr %i.z, align 8, !tbaa !7   ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.ab
  br i1 %i.kh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.ki = load i64, ptr %i.ab, align 8, !tbaa !29
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit194

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ad) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.cg

.loopexit211:                                     ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit183, %bb.ca
  %lpad.loopexit213 = landingpad { ptr, i32 }
          cleanup
  br label %.body186

.loopexit.split-lp212:                            ; preds = %bb.cc
  %lpad.loopexit.split-lp214 = landingpad { ptr, i32 }
          cleanup
  br label %.body186

.body186:                                         ; preds = %.loopexit211, %.loopexit.split-lp212, %bb.cd
  %eh.lpad-body187 = phi { ptr, i32 } [ %i.jz, %bb.cd ], [ %lpad.loopexit213, %.loopexit211 ], [ %lpad.loopexit.split-lp214, %.loopexit.split-lp212 ] ; 2 uses
  %i.kk = load ptr, ptr %12, align 8, !tbaa !7    ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.u
  br i1 %i.kl, label %.body181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %.body186
  %i.km = load i64, ptr %i.u, align 8, !tbaa !29
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #25
  br label %.body181

.body181:                                         ; preds = %.body186, %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i178, %bb.bg, %bb.bv
  %.pn54 = phi { ptr, i32 } [ %eh.lpad-body187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ], [ %.pn.pn.pn, %bb.bv ], [ %i.hp, %bb.bg ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i178 ], [ %i.jp, %bb.bx ], [ %eh.lpad-body187, %.body186 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #23
  br label %bb.ce

bb.ce:                                            ; preds = %.body181, %bb.bf
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %.body181 ], [ %i.ho, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.cw

bb.cf:                                            ; preds = %bb.ay
  %i.ko = load ptr, ptr %i.f, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !31
  invoke void @_ZN16OpenColorIO_v2_56Config7setRoleEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef %i.as, ptr noundef %i.av)
          to label %bb.cg unwind label %bb.cv

bb.cg:                                            ; preds = %bb.cf, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit194
  %i.kq = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 8 uses
  %.not.i.i198 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i198, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 4 uses
  %i.ks = load atomic i64, ptr %i.kr acquire, align 8 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 4294967297
  %i.ku = trunc i64 %i.ks to i32                  ; 2 uses
  br i1 %i.kt, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.kr, align 8, !tbaa !82
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  store i32 0, ptr %i.kv, align 4, !tbaa !84
  %i.kw = load ptr, ptr %i.kq, align 8, !tbaa !38
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #23, !inline_history !85
  %i.kz = load ptr, ptr %i.kq, align 8, !tbaa !38
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #23, !inline_history !85
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cj:                                            ; preds = %bb.ch
  %i.lc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.lc, 0
  br i1 %.not.i.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ld = add nsw i32 %i.ku, -1
  store i32 %i.ld, ptr %i.kr, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.le = atomicrmw volatile add ptr %i.kr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i = phi i32 [ %i.ku, %bb.ck ], [ %i.le, %bb.cl ]
  %i.lf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.lf, label %bb.cm, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cg, %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit135
  %i.lg = load ptr, ptr %i.af, align 8, !tbaa !81 ; 8 uses
  %.not.i.i199 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i199, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 4 uses
  %i.li = load atomic i64, ptr %i.lh acquire, align 8 ; 2 uses
  %i.lj = icmp eq i64 %i.li, 4294967297
  %i.lk = trunc i64 %i.li to i32                  ; 2 uses
  br i1 %i.lj, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.lh, align 8, !tbaa !82
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  store i32 0, ptr %i.ll, align 4, !tbaa !84
  %i.lm = load ptr, ptr %i.lg, align 8, !tbaa !38
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(16) %i.lg) #23, !inline_history !87
  %i.lp = load ptr, ptr %i.lg, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_56Config32getVirtualDisplayViewDescriptionEPKc

declare void @_ZN16OpenColorIO_v2_56Config27addVirtualDisplaySharedViewEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517DisplayViewMerger15processDisplaysERKSt10shared_ptrIKNS_6ConfigEES6_b(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 35 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35
  %i.b = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumDisplaysAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph217, label %._crit_edge218

.lr.ph217:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 336
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 337
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.k = getelementptr i8, ptr %i.i, i64 -24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 -24     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 112
  br label %bb.b

._crit_edge218:                                   ; preds = %._crit_edge, %bb.a
  call void @_ZN16OpenColorIO_v2_517DisplayViewMerger17addUniqueDisplaysERKSt10shared_ptrIKNS_6ConfigEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void

bb.b:                                             ; preds = %.lr.ph217, %._crit_edge
  %.0215 = phi i32 [ 0, %.lr.ph217 ], [ %i.ek, %._crit_edge ] ; 2 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !35
  %i.an = call noundef ptr @_ZNK16OpenColorIO_v2_56Config13getDisplayAllEi(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef %.0215) #23 ; 39 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !35
  %i.ap = call noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumViewsENS_8ViewTypeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i32 noundef 1, ptr noundef %i.an)
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %.not.i = icmp eq ptr %i.an, null
  br label %bb.c

.preheader:                                       ; preds = %bb.z, %bb.b
  %i.ar = load ptr, ptr %1, align 8, !tbaa !35
  %i.as = call noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumViewsENS_8ViewTypeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef 0, ptr noundef %i.an)
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph214, label %._crit_edge

.lr.ph214:                                        ; preds = %.preheader
  %.not.i150 = icmp eq ptr %i.an, null
  br label %bb.aa

bb.c:                                             ; preds = %.lr.ph, %bb.z
  %.0120212 = phi i32 [ 0, %.lr.ph ], [ %i.eg, %bb.z ] ; 2 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !35
  %i.av = call noundef ptr @_ZNK16OpenColorIO_v2_56Config7getViewENS_8ViewTypeEPKci(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i32 noundef 1, ptr noundef %i.an, i32 noundef %.0120212) ; 20 uses
  %.not125 = icmp eq ptr %i.av, null
  br i1 %.not125, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %.not126 = icmp eq i8 %i.aw, 0
  br i1 %.not126, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %2, align 8, !tbaa !35
  %i.ay = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config7hasViewEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.an, ptr noundef nonnull %i.av)
  br i1 %i.ay, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.az = call noundef zeroext i1 @_ZN16OpenColorIO_v2_56Config13AreViewsEqualERKSt10shared_ptrIKS0_ES5_PKcS7_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.an, ptr noundef nonnull %i.av)
  br i1 %i.az, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 16, !tbaa !38
  store ptr null, ptr %i.e, align 8, !tbaa !123
  store i8 0, ptr %i.f, align 16, !tbaa !131
  store i8 0, ptr %i.g, align 1, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store ptr %i.i, ptr %4, align 16, !tbaa !38
  %i.ba = load i64, ptr %i.k, align 8
  %i.bb = getelementptr inbounds i8, ptr %4, i64 %i.ba
  store ptr %i.j, ptr %i.bb, align 8, !tbaa !38
  %i.bc = load ptr, ptr %4, align 16, !tbaa !38
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %4, i64 %i.be
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bf, ptr noundef null)
          to label %_ZNSoC2Ev.exit.i unwind label %bb.h

_ZNSoC2Ev.exit.i:                                 ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.d, align 16, !tbaa !38
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %4, align 16, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #23
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !38
  store i32 16, ptr %i.o, align 8, !tbaa !133
  store ptr %i.q, ptr %i.p, align 16, !tbaa !55
  store i64 0, ptr %i.r, align 8, !tbaa !57
  store i8 0, ptr %i.q, align 16, !tbaa !29
  %i.bg = load ptr, ptr %4, align 16, !tbaa !38
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %4, i64 %i.bi
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bj, ptr noundef nonnull %i.l)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNSoC2Ev.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.l) #23
  br label %bb.j

common.resume:                                    ; preds = %.body, %.body167, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.j ], [ %.pn127, %.body ], [ %.pn, %.body167 ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.bl, %bb.i ], [ %i.bk, %bb.h ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #23
  br label %common.resume

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %_ZNSoC2Ev.exit.i
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.11, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.bo = load ptr, ptr %4, align 16, !tbaa !38
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %4, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !40
  %i.bu = or i32 %i.bt, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.br, i32 noundef %i.bu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132 unwind label %bb.u

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.bv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #23
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.an, i64 noundef %i.bv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132: ; preds = %bb.k, %bb.l
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.12, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.by = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #23
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.av, i64 noundef %i.by)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  store ptr %i.s, ptr %5, align 8, !tbaa !55, !alias.scope !142
  store i64 0, ptr %i.t, align 8, !tbaa !57, !alias.scope !142
  store i8 0, ptr %i.s, align 8, !tbaa !29, !alias.scope !142
  %i.ca = load ptr, ptr %i.u, align 16, !tbaa !58, !noalias !142 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.ca, null
  br i1 %.not5.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138
  %8 = load ptr, ptr %i.v, align 16, !noalias !142 ; 2 uses
  %9 = icmp ugt ptr %i.ca, %8
  %.08.i.i.i = select i1 %9, ptr %i.ca, ptr %8
  %i.cb = load ptr, ptr %i.w, align 8, !tbaa !60, !noalias !142 ; 2 uses
  %i.cc = ptrtoint ptr %.08.i.i.i to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.cb, i64 noundef %i.ce)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %5, align 8, !tbaa !7, !alias.scope !142 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.s
  br i1 %i.ci, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.cj = load i64, ptr %i.s, align 8, !tbaa !29, !alias.scope !142
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #25
  br label %.body

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.cl = load ptr, ptr %i.x, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !26
  %i.cn = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %bb.p unwind label %.loopexit185

bb.p:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %.loopexit185

bb.r:                                             ; preds = %bb.p
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.cp = load ptr, ptr %5, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef %i.cp)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc140 unwind label %.loopexit.split-lp186

.noexc140:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.co) #23
  br label %.body141

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.q
  %i.cr = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.s
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.ct = load i64, ptr %i.s, align 8, !tbaa !29
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.y, ptr %4, align 16, !tbaa !38
  %i.cv = load i64, ptr %i.aa, align 8
  %i.cw = getelementptr inbounds i8, ptr %4, i64 %i.cv
  store ptr %i.z, ptr %i.cw, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !38
  %i.cx = load ptr, ptr %i.p, align 16, !tbaa !7  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.q
  br i1 %i.cy, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cz = load i64, ptr %i.q, align 16, !tbaa !29
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.v

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132, %bb.l, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit185:                                     ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.q
  %lpad.loopexit187 = landingpad { ptr, i32 }
          cleanup
  br label %.body141

.loopexit.split-lp186:                            ; preds = %bb.s
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup
  br label %.body141

.body141:                                         ; preds = %.loopexit185, %.loopexit.split-lp186, %bb.t
  %eh.lpad-body142 = phi { ptr, i32 } [ %i.cq, %bb.t ], [ %lpad.loopexit187, %.loopexit185 ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp186 ] ; 2 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.s
  br i1 %i.dd, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %.body141
  %i.de = load i64, ptr %i.s, align 8, !tbaa !29
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #25
  br label %.body

.body:                                            ; preds = %.body141, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn127 = phi { ptr, i32 } [ %eh.lpad-body142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %i.db, %bb.u ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cg, %bb.n ], [ %eh.lpad-body142, %.body141 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

bb.v:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.f
  br i1 %3, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.dg = load ptr, ptr %2, align 8, !tbaa !35
  %i.dh = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config12isViewSharedEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef %i.an, ptr noundef nonnull %i.av)
  %i.di = load ptr, ptr %i.ab, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !31 ; 2 uses
  br i1 %i.dh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_ZN16OpenColorIO_v2_56Config20addDisplaySharedViewEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %i.an, ptr noundef nonnull %i.av)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dk = load ptr, ptr %2, align 8, !tbaa !35
  %i.dl = call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDisplayViewTransformNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef %i.an, ptr noundef nonnull %i.av)
  %i.dm = load ptr, ptr %2, align 8, !tbaa !35
  %i.dn = call noundef ptr @_ZNK16OpenColorIO_v2_56Config28getDisplayViewColorSpaceNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.an, ptr noundef nonnull %i.av)
  %i.do = load ptr, ptr %2, align 8, !tbaa !35
  %i.dp = call noundef ptr @_ZNK16OpenColorIO_v2_56Config19getDisplayViewLooksEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.an, ptr noundef nonnull %i.av)
  %i.dq = load ptr, ptr %2, align 8, !tbaa !35
  %i.dr = call noundef ptr @_ZNK16OpenColorIO_v2_56Config18getDisplayViewRuleEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %i.an, ptr noundef nonnull %i.av) #23
  %i.ds = load ptr, ptr %2, align 8, !tbaa !35
  %i.dt = call noundef ptr @_ZNK16OpenColorIO_v2_56Config25getDisplayViewDescriptionEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef %i.an, ptr noundef nonnull %i.av) #23
  call void @_ZN16OpenColorIO_v2_56Config14addDisplayViewEPKcS2_S2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %i.an, ptr noundef nonnull %i.av, ptr noundef %i.dl, ptr noundef %i.dn, ptr noundef %i.dp, ptr noundef %i.dr, ptr noundef %i.dt)
  br label %bb.z

.thread:                                          ; preds = %bb.e, %bb.v
  %i.du = load ptr, ptr %i.ab, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !31
  %i.dw = load ptr, ptr %1, align 8, !tbaa !35
  %i.dx = call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDisplayViewTransformNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef %i.an, ptr noundef nonnull %i.av)
  %i.dy = load ptr, ptr %1, align 8, !tbaa !35
  %i.dz = call noundef ptr @_ZNK16OpenColorIO_v2_56Config28getDisplayViewColorSpaceNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef %i.an, ptr noundef nonnull %i.av)
  %i.ea = load ptr, ptr %1, align 8, !tbaa !35
  %i.eb = call noundef ptr @_ZNK16OpenColorIO_v2_56Config19getDisplayViewLooksEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %i.an, ptr noundef nonnull %i.av)
  %i.ec = load ptr, ptr %1, align 8, !tbaa !35
  %i.ed = call noundef ptr @_ZNK16OpenColorIO_v2_56Config18getDisplayViewRuleEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef %i.an, ptr noundef nonnull %i.av) #23
  %i.ee = load ptr, ptr %1, align 8, !tbaa !35
  %i.ef = call noundef ptr @_ZNK16OpenColorIO_v2_56Config25getDisplayViewDescriptionEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.an, ptr noundef nonnull %i.av) #23
  call void @_ZN16OpenColorIO_v2_56Config14addDisplayViewEPKcS2_S2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef %i.an, ptr noundef nonnull %i.av, ptr noundef %i.dx, ptr noundef %i.dz, ptr noundef %i.eb, ptr noundef %i.ed, ptr noundef %i.ef)
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.y, %bb.x, %bb.d, %bb.c
  %i.eg = add nuw nsw i32 %.0120212, 1            ; 2 uses
  %i.eh = load ptr, ptr %1, align 8, !tbaa !35
  %i.ei = call noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumViewsENS_8ViewTypeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i32 noundef 1, ptr noundef %i.an)
  %i.ej = icmp slt i32 %i.eg, %i.ei
  br i1 %i.ej, label %bb.c, label %.preheader, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.au, %.preheader
  %i.ek = add nuw nsw i32 %.0215, 1               ; 2 uses
  %i.el = load ptr, ptr %1, align 8, !tbaa !35
  %i.em = call noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumDisplaysAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el) #23
  %i.en = icmp slt i32 %i.ek, %i.em
  br i1 %i.en, label %bb.b, label %._crit_edge218, !llvm.loop !144

bb.aa:                                            ; preds = %.lr.ph214, %bb.au
  %.0115213 = phi i32 [ 0, %.lr.ph214 ], [ %i.hg, %bb.au ] ; 2 uses
  %i.eo = load ptr, ptr %1, align 8, !tbaa !35
  %i.ep = call noundef ptr @_ZNK16OpenColorIO_v2_56Config7getViewENS_8ViewTypeEPKci(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, i32 noundef 0, ptr noundef %i.an, i32 noundef %.0115213) ; 15 uses
  %.not = icmp eq ptr %i.ep, null
  br i1 %.not, label %bb.au, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !29
  %.not123 = icmp eq i8 %i.eq, 0
  br i1 %.not123, label %bb.au, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr %2, align 8, !tbaa !35
  %i.es = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config7hasViewEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef %i.an, ptr noundef nonnull %i.ep)
  %or.cond3 = and i1 %3, %i.es
  br i1 %or.cond3, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  %i.et = load ptr, ptr %2, align 8, !tbaa !35
  %i.eu = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config12isViewSharedEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.an, ptr noundef nonnull %i.ep)
  br i1 %i.eu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ev = load ptr, ptr %i.ab, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !31
  call void @_ZN16OpenColorIO_v2_56Config20addDisplaySharedViewEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef %i.an, ptr noundef nonnull %i.ep)
  br label %bb.au

bb.af:                                            ; preds = %bb.ad
  %i.ex = call noundef zeroext i1 @_ZN16OpenColorIO_v2_56Config13AreViewsEqualERKSt10shared_ptrIKS0_ES5_PKcS7_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.an, ptr noundef nonnull %i.ep)
  br i1 %i.ex, label %bb.as, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.9, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147: ; preds = %bb.ag
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.11, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147
  br i1 %.not.i150, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149
  %i.fa = load ptr, ptr %6, align 8, !tbaa !38
  %i.fb = getelementptr i8, ptr %i.fa, i64 -24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds i8, ptr %6, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !40
  %i.fg = or i32 %i.ff, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fd, i32 noundef %i.fg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %bb.ar

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149
  %i.fh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #23
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.an, i64 noundef %i.fh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153: ; preds = %bb.ah, %bb.ai
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.12, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %i.fk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ep) #23
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.ep, i64 noundef %i.fk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  store ptr %i.ac, ptr %7, align 8, !tbaa !55, !alias.scope !151
  store i64 0, ptr %i.ad, align 8, !tbaa !57, !alias.scope !151
  store i8 0, ptr %i.ac, align 8, !tbaa !29, !alias.scope !151
  %i.fm = load ptr, ptr %i.ae, align 8, !tbaa !58, !noalias !151 ; 3 uses
  %.not5.i.i162 = icmp eq ptr %i.fm, null
  br i1 %.not5.i.i162, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159
  %10 = load ptr, ptr %i.af, align 8, !noalias !151 ; 2 uses
  %11 = icmp ugt ptr %i.fm, %10
  %.08.i.i.i161 = select i1 %11, ptr %i.fm, ptr %10
  %i.fn = load ptr, ptr %i.ag, align 8, !tbaa !60, !noalias !151 ; 2 uses
  %i.fo = ptrtoint ptr %.08.i.i.i161 to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.fn, i64 noundef %i.fq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit169 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %7, align 8, !tbaa !7, !alias.scope !151 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ac
  br i1 %i.fu, label %.body167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i164: ; preds = %bb.ak
  %i.fv = load i64, ptr %i.ac, align 8, !tbaa !29, !alias.scope !151
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #25
  br label %.body167

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit169 unwind label %bb.ak

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit169: ; preds = %bb.al, %bb.aj
  %i.fx = load ptr, ptr %i.x, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !26
  %i.fz = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fy)
          to label %bb.am unwind label %.loopexit

bb.am:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit169
  br i1 %i.fz, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit174 unwind label %.loopexit

bb.ao:                                            ; preds = %bb.am
  %i.ga = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.gb = load ptr, ptr %7, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef %i.gb)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.ga, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc171 unwind label %.loopexit.split-lp

.noexc171:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ga) #23
  br label %.body172

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit174: ; preds = %bb.an
  %i.gd = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ac
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit174
  %i.gf = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  store ptr %i.y, ptr %6, align 8, !tbaa !38
  %i.gh = load i64, ptr %i.aa, align 8
  %i.gi = getelementptr inbounds i8, ptr %6, i64 %i.gh
  store ptr %i.z, ptr %i.gi, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !38
  %i.gj = load ptr, ptr %i.ah, align 8, !tbaa !7  ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.aj
  br i1 %i.gk, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.gl = load i64, ptr %i.aj, align 8, !tbaa !29
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit180

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.al) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.as

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153, %bb.ai, %bb.ah, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147, %bb.ag
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body167

.loopexit:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit169, %bb.an
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body172

.loopexit.split-lp:                               ; preds = %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body172

.body172:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.aq
  %eh.lpad-body173 = phi { ptr, i32 } [ %i.gc, %bb.aq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.go = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.ac
  br i1 %i.gp, label %.body167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %.body172
  %i.gq = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #25
  br label %.body167

.body167:                                         ; preds = %.body172, %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i164
  %.pn = phi { ptr, i32 } [ %eh.lpad-body173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %i.gn, %bb.ar ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i164 ], [ %i.fs, %bb.ak ], [ %eh.lpad-body173, %.body172 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume

bb.as:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit180, %bb.af
  %i.gs = load ptr, ptr %i.ab, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !31
  %i.gu = load ptr, ptr %2, align 8, !tbaa !35
  %i.gv = call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDisplayViewTransformNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef %i.an, ptr noundef nonnull %i.ep)
  %i.gw = load ptr, ptr %2, align 8, !tbaa !35
  %i.gx = call noundef ptr @_ZNK16OpenColorIO_v2_56Config28getDisplayViewColorSpaceNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.an, ptr noundef nonnull %i.ep)
  %i.gy = load ptr, ptr %2, align 8, !tbaa !35
  %i.gz = call noundef ptr @_ZNK16OpenColorIO_v2_56Config19getDisplayViewLooksEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef %i.an, ptr noundef nonnull %i.ep)
  %i.ha = load ptr, ptr %2, align 8, !tbaa !35
  %i.hb = call noundef ptr @_ZNK16OpenColorIO_v2_56Config18getDisplayViewRuleEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef %i.an, ptr noundef nonnull %i.ep) #23
  %i.hc = load ptr, ptr %2, align 8, !tbaa !35
  %i.hd = call noundef ptr @_ZNK16OpenColorIO_v2_56Config25getDisplayViewDescriptionEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, ptr noundef %i.an, ptr noundef nonnull %i.ep) #23
  call void @_ZN16OpenColorIO_v2_56Config14addDisplayViewEPKcS2_S2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.an, ptr noundef nonnull %i.ep, ptr noundef %i.gv, ptr noundef %i.gx, ptr noundef %i.gz, ptr noundef %i.hb, ptr noundef %i.hd)
  br label %bb.au

bb.at:                                            ; preds = %bb.ac
  %i.he = load ptr, ptr %i.ab, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !31
  call void @_ZN16OpenColorIO_v2_56Config20addDisplaySharedViewEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, ptr noundef %i.an, ptr noundef nonnull %i.ep)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ae, %bb.ab, %bb.aa
  %i.hg = add nuw nsw i32 %.0115213, 1            ; 2 uses
  %i.hh = load ptr, ptr %1, align 8, !tbaa !35
  %i.hi = call noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumViewsENS_8ViewTypeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, i32 noundef 0, ptr noundef %i.an)
  %i.hj = icmp slt i32 %i.hg, %i.hi
  br i1 %i.hj, label %bb.aa, label %._crit_edge, !llvm.loop !152
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_56Config13AreViewsEqualERKSt10shared_ptrIKS0_ES5_PKcS7_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config12isViewSharedEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517DisplayViewMerger21processVirtualDisplayERKSt10shared_ptrIKNS_6ConfigEES6_b(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35
  %i.b = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config25getVirtualDisplayNumViewsENS_8ViewTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 1) #23
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.e

.preheader:                                       ; preds = %bb.w, %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !35
  %i.t = call noundef i32 @_ZNK16OpenColorIO_v2_56Config25getVirtualDisplayNumViewsENS_8ViewTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef 0) #23
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph152, label %._crit_edge

.lr.ph152:                                        ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 112
  br i1 %3, label %.lr.ph152.split, label %.lr.ph152.split.us

.lr.ph152.split.us:                               ; preds = %.lr.ph152, %bb.d
  %.078151.us = phi i32 [ %i.ar, %bb.d ], [ 0, %.lr.ph152 ] ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !35
  %i.al = call noundef ptr @_ZNK16OpenColorIO_v2_56Config21getVirtualDisplayViewENS_8ViewTypeEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef 0, i32 noundef %.078151.us) #23 ; 4 uses
  %.not.us = icmp eq ptr %i.al, null
  br i1 %.not.us, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph152.split.us
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %.not84.us = icmp eq i8 %i.am, 0
  br i1 %.not84.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %2, align 8, !tbaa !35
  %i.ao = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config14hasVirtualViewEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.al) ; 0 uses
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  call void @_ZN16OpenColorIO_v2_56Config27addVirtualDisplaySharedViewEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.al)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph152.split.us
  %i.ar = add nuw nsw i32 %.078151.us, 1          ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !35
  %i.at = call noundef i32 @_ZNK16OpenColorIO_v2_56Config25getVirtualDisplayNumViewsENS_8ViewTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i32 noundef 0) #23
  %i.au = icmp slt i32 %i.ar, %i.at
  br i1 %i.au, label %.lr.ph152.split.us, label %._crit_edge, !llvm.loop !153

bb.e:                                             ; preds = %.lr.ph, %bb.w
  %.0150 = phi i32 [ 0, %.lr.ph ], [ %i.dl, %bb.w ] ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !35
  %i.aw = call noundef ptr @_ZNK16OpenColorIO_v2_56Config21getVirtualDisplayViewENS_8ViewTypeEi(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 noundef 1, i32 noundef %.0150) #23 ; 20 uses
  %.not86 = icmp eq ptr %i.aw, null
  br i1 %.not86, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %.not87 = icmp eq i8 %i.ax, 0
  br i1 %.not87, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %2, align 8, !tbaa !35
  %i.az = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config14hasVirtualViewEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.aw)
  br i1 %i.az, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ba = call noundef zeroext i1 @_ZN16OpenColorIO_v2_56Config20AreVirtualViewsEqualERKSt10shared_ptrIKS0_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.aw)
  br i1 %i.ba, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.13, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #23
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.aw, i64 noundef %i.bd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  store ptr %i.d, ptr %5, align 8, !tbaa !55, !alias.scope !160
  store i64 0, ptr %i.e, align 8, !tbaa !57, !alias.scope !160
  store i8 0, ptr %i.d, align 8, !tbaa !29, !alias.scope !160
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !58, !noalias !160 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %8 = load ptr, ptr %i.g, align 8, !noalias !160 ; 2 uses
  %9 = icmp ugt ptr %i.bf, %8
  %.08.i.i.i = select i1 %9, ptr %i.bf, ptr %8
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !60, !noalias !160 ; 2 uses
  %i.bh = ptrtoint ptr %.08.i.i.i to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.bg, i64 noundef %i.bj)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %5, align 8, !tbaa !7, !alias.scope !160 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.d
  br i1 %i.bn, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !29, !alias.scope !160
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #25
  br label %.body

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !26
  %i.bs = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %bb.m unwind label %.loopexit134

bb.m:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.bs, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %.loopexit134

bb.o:                                             ; preds = %bb.m
  %i.bt = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.bu = load ptr, ptr %5, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef %i.bu)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc95 unwind label %.loopexit.split-lp135

.noexc95:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bt) #23
  br label %.body96

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.n
  %i.bw = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.d
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.by = load i64, ptr %i.d, align 8, !tbaa !29
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.k, ptr %4, align 8, !tbaa !38
  %i.ca = load i64, ptr %i.m, align 8
  %i.cb = getelementptr inbounds i8, ptr %4, i64 %i.ca
  store ptr %i.l, ptr %i.cb, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.n, align 8, !tbaa !38
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !7   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.o
  br i1 %i.cd, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load i64, ptr %i.o, align 8, !tbaa !29
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.n, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.s

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit134:                                     ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.n
  %lpad.loopexit136 = landingpad { ptr, i32 }
          cleanup
  br label %.body96

.loopexit.split-lp135:                            ; preds = %bb.p
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          cleanup
  br label %.body96

.body96:                                          ; preds = %.loopexit134, %.loopexit.split-lp135, %bb.q
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %lpad.loopexit136, %.loopexit134 ], [ %lpad.loopexit.split-lp137, %.loopexit.split-lp135 ] ; 2 uses
  %i.ch = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.d
  br i1 %i.ci, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.body96
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !29
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #25
  br label %.body

.body:                                            ; preds = %.body96, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn88 = phi { ptr, i32 } [ %eh.lpad-body97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.cg, %bb.r ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bl, %bb.k ], [ %eh.lpad-body97, %.body96 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ap

bb.s:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.h
  br i1 %3, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cl = load ptr, ptr %2, align 8, !tbaa !35
  %i.cm = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config19isVirtualViewSharedEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %i.aw)
  %i.cn = load ptr, ptr %i.r, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !31 ; 2 uses
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZN16OpenColorIO_v2_56Config27addVirtualDisplaySharedViewEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.aw)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %2, align 8, !tbaa !35
  %i.cq = call noundef ptr @_ZNK16OpenColorIO_v2_56Config34getVirtualDisplayViewTransformNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull %i.aw) #23
  %i.cr = load ptr, ptr %2, align 8, !tbaa !35
  %i.cs = call noundef ptr @_ZNK16OpenColorIO_v2_56Config35getVirtualDisplayViewColorSpaceNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull %i.aw) #23
  %i.ct = load ptr, ptr %2, align 8, !tbaa !35
  %i.cu = call noundef ptr @_ZNK16OpenColorIO_v2_56Config26getVirtualDisplayViewLooksEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull %i.aw) #23
  %i.cv = load ptr, ptr %2, align 8, !tbaa !35
  %i.cw = call noundef ptr @_ZNK16OpenColorIO_v2_56Config25getVirtualDisplayViewRuleEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull %i.aw) #23
  %i.cx = load ptr, ptr %2, align 8, !tbaa !35
  %i.cy = call noundef ptr @_ZNK16OpenColorIO_v2_56Config32getVirtualDisplayViewDescriptionEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull %i.aw) #23
  call void @_ZN16OpenColorIO_v2_56Config21addVirtualDisplayViewEPKcS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.aw, ptr noundef %i.cq, ptr noundef %i.cs, ptr noundef %i.cu, ptr noundef %i.cw, ptr noundef %i.cy)
  br label %bb.w

.thread:                                          ; preds = %bb.g, %bb.s
  %i.cz = load ptr, ptr %i.r, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31
  %i.db = load ptr, ptr %1, align 8, !tbaa !35
  %i.dc = call noundef ptr @_ZNK16OpenColorIO_v2_56Config34getVirtualDisplayViewTransformNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull %i.aw) #23
  %i.dd = load ptr, ptr %1, align 8, !tbaa !35
  %i.de = call noundef ptr @_ZNK16OpenColorIO_v2_56Config35getVirtualDisplayViewColorSpaceNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull %i.aw) #23
  %i.df = load ptr, ptr %1, align 8, !tbaa !35
  %i.dg = call noundef ptr @_ZNK16OpenColorIO_v2_56Config26getVirtualDisplayViewLooksEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull %i.aw) #23
  %i.dh = load ptr, ptr %1, align 8, !tbaa !35
  %i.di = call noundef ptr @_ZNK16OpenColorIO_v2_56Config25getVirtualDisplayViewRuleEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull %i.aw) #23
  %i.dj = load ptr, ptr %1, align 8, !tbaa !35
  %i.dk = call noundef ptr @_ZNK16OpenColorIO_v2_56Config32getVirtualDisplayViewDescriptionEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull %i.aw) #23
  call void @_ZN16OpenColorIO_v2_56Config21addVirtualDisplayViewEPKcS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull %i.aw, ptr noundef %i.dc, ptr noundef %i.de, ptr noundef %i.dg, ptr noundef %i.di, ptr noundef %i.dk)
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.u, %bb.f, %bb.e
  %i.dl = add nuw nsw i32 %.0150, 1               ; 2 uses
  %i.dm = load ptr, ptr %1, align 8, !tbaa !35
  %i.dn = call noundef i32 @_ZNK16OpenColorIO_v2_56Config25getVirtualDisplayNumViewsENS_8ViewTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, i32 noundef 1) #23
  %i.do = icmp slt i32 %i.dl, %i.dn
  br i1 %i.do, label %bb.e, label %.preheader, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.d, %bb.ao, %.preheader
  call void @_ZN16OpenColorIO_v2_517DisplayViewMerger21addUniqueVirtualViewsERKSt10shared_ptrIKNS_6ConfigEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void

.lr.ph152.split:                                  ; preds = %.lr.ph152, %bb.ao
  %.078151 = phi i32 [ %i.fx, %bb.ao ], [ 0, %.lr.ph152 ] ; 2 uses
  %i.dp = load ptr, ptr %1, align 8, !tbaa !35
  %i.dq = call noundef ptr @_ZNK16OpenColorIO_v2_56Config21getVirtualDisplayViewENS_8ViewTypeEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i32 noundef 0, i32 noundef %.078151) #23 ; 15 uses
  %.not = icmp eq ptr %i.dq, null
  br i1 %.not, label %bb.ao, label %bb.x

bb.x:                                             ; preds = %.lr.ph152.split
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !29
  %.not84 = icmp eq i8 %i.dr, 0
  br i1 %.not84, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = load ptr, ptr %2, align 8, !tbaa !35
  %i.dt = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config14hasVirtualViewEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull %i.dq)
  br i1 %i.dt, label %bb.z, label %bb.an

bb.z:                                             ; preds = %bb.y
  %i.du = load ptr, ptr %2, align 8, !tbaa !35
  %i.dv = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config19isVirtualViewSharedEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull %i.dq)
  br i1 %i.dv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dw = load ptr, ptr %i.v, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31
  call void @_ZN16OpenColorIO_v2_56Config27addVirtualDisplaySharedViewEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull %i.dq)
  br label %bb.ao

bb.ab:                                            ; preds = %bb.z
  %i.dy = call noundef zeroext i1 @_ZN16OpenColorIO_v2_56Config20AreVirtualViewsEqualERKSt10shared_ptrIKS0_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.dq)
  br i1 %i.dy, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.9, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %bb.ac
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.13, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.eb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dq) #23
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.dq, i64 noundef %i.eb)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  store ptr %i.w, ptr %7, align 8, !tbaa !55, !alias.scope !168
  store i64 0, ptr %i.x, align 8, !tbaa !57, !alias.scope !168
  store i8 0, ptr %i.w, align 8, !tbaa !29, !alias.scope !168
  %i.ed = load ptr, ptr %i.y, align 8, !tbaa !58, !noalias !168 ; 3 uses
  %.not5.i.i111 = icmp eq ptr %i.ed, null
  br i1 %.not5.i.i111, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %10 = load ptr, ptr %i.z, align 8, !noalias !168 ; 2 uses
  %11 = icmp ugt ptr %i.ed, %10
  %.08.i.i.i110 = select i1 %11, ptr %i.ed, ptr %10
  %i.ee = load ptr, ptr %i.aa, align 8, !tbaa !60, !noalias !168 ; 2 uses
  %i.ef = ptrtoint ptr %.08.i.i.i110 to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ee, i64 noundef %i.eh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit118 unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %7, align 8, !tbaa !7, !alias.scope !168 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.w
  br i1 %i.el, label %.body116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113: ; preds = %bb.ae
  %i.em = load i64, ptr %i.w, align 8, !tbaa !29, !alias.scope !168
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #25
  br label %.body116

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit118 unwind label %bb.ae

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit118: ; preds = %bb.af, %bb.ad
  %i.eo = load ptr, ptr %i.ac, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !26
  %i.eq = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ep)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit118
  br i1 %i.eq, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit123 unwind label %.loopexit

bb.ai:                                            ; preds = %bb.ag
  %i.er = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.es = load ptr, ptr %7, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef %i.es)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.er, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc120 unwind label %.loopexit.split-lp

.noexc120:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.er) #23
  br label %.body121

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit123: ; preds = %bb.ah
  %i.eu = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.w
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit123
  %i.ew = load i64, ptr %i.w, align 8, !tbaa !29
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  store ptr %i.ad, ptr %6, align 8, !tbaa !38
  %i.ey = load i64, ptr %i.af, align 8
  %i.ez = getelementptr inbounds i8, ptr %6, i64 %i.ey
  store ptr %i.ae, ptr %i.ez, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !38
  %i.fa = load ptr, ptr %i.ab, align 8, !tbaa !7  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ah
  br i1 %i.fb, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.fc = load i64, ptr %i.ah, align 8, !tbaa !29
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit129

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.am

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, %bb.ac
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.loopexit:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit118, %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body121

.loopexit.split-lp:                               ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body121

.body121:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ak
  %eh.lpad-body122 = phi { ptr, i32 } [ %i.et, %bb.ak ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ff = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.w
  br i1 %i.fg, label %.body116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %.body121
  %i.fh = load i64, ptr %i.w, align 8, !tbaa !29
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #25
  br label %.body116

.body116:                                         ; preds = %.body121, %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113
  %.pn = phi { ptr, i32 } [ %eh.lpad-body122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %i.fe, %bb.al ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113 ], [ %i.ej, %bb.ae ], [ %eh.lpad-body122, %.body121 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ap

bb.am:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit129, %bb.ab
  %i.fj = load ptr, ptr %i.v, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !31
  %i.fl = load ptr, ptr %2, align 8, !tbaa !35
  %i.fm = call noundef ptr @_ZNK16OpenColorIO_v2_56Config34getVirtualDisplayViewTransformNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull %i.dq) #23
  %i.fn = load ptr, ptr %2, align 8, !tbaa !35
  %i.fo = call noundef ptr @_ZNK16OpenColorIO_v2_56Config35getVirtualDisplayViewColorSpaceNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull %i.dq) #23
  %i.fp = load ptr, ptr %2, align 8, !tbaa !35
  %i.fq = call noundef ptr @_ZNK16OpenColorIO_v2_56Config26getVirtualDisplayViewLooksEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull %i.dq) #23
  %i.fr = load ptr, ptr %2, align 8, !tbaa !35
  %i.fs = call noundef ptr @_ZNK16OpenColorIO_v2_56Config25getVirtualDisplayViewRuleEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull %i.dq) #23
  %i.ft = load ptr, ptr %2, align 8, !tbaa !35
  %i.fu = call noundef ptr @_ZNK16OpenColorIO_v2_56Config32getVirtualDisplayViewDescriptionEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull %i.dq) #23
  call void @_ZN16OpenColorIO_v2_56Config21addVirtualDisplayViewEPKcS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull %i.dq, ptr noundef %i.fm, ptr noundef %i.fo, ptr noundef %i.fq, ptr noundef %i.fs, ptr noundef %i.fu)
  br label %bb.ao

bb.an:                                            ; preds = %bb.y
  %i.fv = load ptr, ptr %i.v, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !31
  call void @_ZN16OpenColorIO_v2_56Config27addVirtualDisplaySharedViewEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull %i.dq)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.aa, %bb.x, %.lr.ph152.split
  %i.fx = add nuw nsw i32 %.078151, 1             ; 2 uses
  %i.fy = load ptr, ptr %1, align 8, !tbaa !35
  %i.fz = call noundef i32 @_ZNK16OpenColorIO_v2_56Config25getVirtualDisplayNumViewsENS_8ViewTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, i32 noundef 0) #23
  %i.ga = icmp slt i32 %i.fx, %i.fz
  br i1 %i.ga, label %.lr.ph152.split, label %._crit_edge, !llvm.loop !153

bb.ap:                                            ; preds = %.body116, %.body
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %.body ], [ %.pn, %.body116 ]
  resume { ptr, i32 } %.pn88.pn
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_56Config20AreVirtualViewsEqualERKSt10shared_ptrIKS0_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config19isVirtualViewSharedEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517DisplayViewMerger20addUniqueSharedViewsERKSt10shared_ptrIKNS_6ConfigEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !35
  %i.b = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumViewsENS_8ViewTypeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0, ptr noundef null)
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.022 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.e ] ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !35
  %i.f = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config7getViewENS_8ViewTypeEPKci(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef 0, ptr noundef null, i32 noundef %.022) ; 9 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config7hasViewEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef null, ptr noundef %i.f)
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.f, align 1, !tbaa !29
  %i.k = icmp eq i8 %i.j, 0
  %or.cond = or i1 %i.i, %i.k
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = load ptr, ptr %1, align 8, !tbaa !35
  %i.o = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDisplayViewTransformNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef null, ptr noundef nonnull %i.f)
  %i.p = load ptr, ptr %1, align 8, !tbaa !35
  %i.q = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config28getDisplayViewColorSpaceNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef null, ptr noundef nonnull %i.f)
  %i.r = load ptr, ptr %1, align 8, !tbaa !35
  %i.s = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config19getDisplayViewLooksEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef null, ptr noundef nonnull %i.f)
  %i.t = load ptr, ptr %1, align 8, !tbaa !35
  %i.u = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config18getDisplayViewRuleEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef null, ptr noundef nonnull %i.f) #23
  %i.v = load ptr, ptr %1, align 8, !tbaa !35
  %i.w = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config25getDisplayViewDescriptionEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef null, ptr noundef nonnull %i.f) #23
  tail call void @_ZN16OpenColorIO_v2_56Config13addSharedViewEPKcS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.f, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.x = add nuw nsw i32 %.022, 1                 ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !35
  %i.z = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumViewsENS_8ViewTypeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef 0, ptr noundef null)
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !169
}

declare void @_ZN16OpenColorIO_v2_56Config13addSharedViewEPKcS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517DisplayViewMerger18processSharedViewsERKSt10shared_ptrIKNS_6ConfigEES6_b(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35
  %i.b = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumViewsENS_8ViewTypeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0, ptr noundef null)
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.q, %bb.a
  call void @_ZN16OpenColorIO_v2_517DisplayViewMerger20addUniqueSharedViewsERKSt10shared_ptrIKNS_6ConfigEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.04363 = phi i32 [ 0, %.lr.ph ], [ %i.bu, %bb.q ] ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !35
  %i.t = call noundef ptr @_ZNK16OpenColorIO_v2_56Config7getViewENS_8ViewTypeEPKci(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef 0, ptr noundef null, i32 noundef %.04363) ; 12 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i8, ptr %i.t, align 1, !tbaa !29
  %.not45 = icmp eq i8 %i.u, 0
  br i1 %.not45, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %2, align 8, !tbaa !35
  %i.w = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config7hasViewEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef null, ptr noundef nonnull %i.t)
  br i1 %i.w, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = call noundef zeroext i1 @_ZN16OpenColorIO_v2_56Config13AreViewsEqualERKSt10shared_ptrIKS0_ES5_PKcS7_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null, ptr noundef nonnull %i.t)
  br i1 %i.x, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.14, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #23
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.t, i64 noundef %i.aa)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  store ptr %i.d, ptr %5, align 8, !tbaa !55, !alias.scope !176
  store i64 0, ptr %i.e, align 8, !tbaa !57, !alias.scope !176
  store i8 0, ptr %i.d, align 8, !tbaa !29, !alias.scope !176
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !58, !noalias !176 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.ac, null
  br i1 %.not5.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  %6 = load ptr, ptr %i.g, align 8, !noalias !176 ; 2 uses
  %7 = icmp ugt ptr %i.ac, %6
  %.08.i.i.i = select i1 %7, ptr %i.ac, ptr %6
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !60, !noalias !176 ; 2 uses
  %i.ae = ptrtoint ptr %.08.i.i.i to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ad, i64 noundef %i.ag)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !7, !alias.scope !176 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.d
  br i1 %i.ak, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.d, align 8, !tbaa !29, !alias.scope !176
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #25
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ap = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.aq = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef %i.ar)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc51 unwind label %.loopexit.split-lp

.noexc51:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aq) #23
  br label %.body52

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.k
  %i.at = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.av = load i64, ptr %i.d, align 8, !tbaa !29
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.k, ptr %4, align 8, !tbaa !38
  %i.ax = load i64, ptr %i.m, align 8
  %i.ay = getelementptr inbounds i8, ptr %4, i64 %i.ax
  store ptr %i.l, ptr %i.ay, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.n, align 8, !tbaa !38
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !7   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.o
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !29
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.n, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body52

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body52

.body52:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.n
  %eh.lpad-body53 = phi { ptr, i32 } [ %i.as, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.d
  br i1 %i.bf, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %.body52
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !29
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #25
  br label %.body

.body:                                            ; preds = %.body52, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.bd, %bb.o ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ai, %bb.h ], [ %eh.lpad-body53, %.body52 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.e
  br i1 %3, label %.sink.split, label %.thread

.thread:                                          ; preds = %bb.d, %bb.p
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %.thread
  %.sink85 = phi ptr [ %1, %.thread ], [ %2, %bb.p ] ; 5 uses
  %i.bi = load ptr, ptr %i.r, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31
  %i.bk = load ptr, ptr %.sink85, align 8, !tbaa !35
  %i.bl = call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDisplayViewTransformNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef null, ptr noundef nonnull %i.t)
  %i.bm = load ptr, ptr %.sink85, align 8, !tbaa !35
  %i.bn = call noundef ptr @_ZNK16OpenColorIO_v2_56Config28getDisplayViewColorSpaceNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef null, ptr noundef nonnull %i.t)
  %i.bo = load ptr, ptr %.sink85, align 8, !tbaa !35
  %i.bp = call noundef ptr @_ZNK16OpenColorIO_v2_56Config19getDisplayViewLooksEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef null, ptr noundef nonnull %i.t)
  %i.bq = load ptr, ptr %.sink85, align 8, !tbaa !35
  %i.br = call noundef ptr @_ZNK16OpenColorIO_v2_56Config18getDisplayViewRuleEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef null, ptr noundef nonnull %i.t) #23
  %i.bs = load ptr, ptr %.sink85, align 8, !tbaa !35
  %i.bt = call noundef ptr @_ZNK16OpenColorIO_v2_56Config25getDisplayViewDescriptionEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef null, ptr noundef nonnull %i.t) #23
  call void @_ZN16OpenColorIO_v2_56Config13addSharedViewEPKcS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.t, ptr noundef %i.bl, ptr noundef %i.bn, ptr noundef %i.bp, ptr noundef %i.br, ptr noundef %i.bt)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.bu = add nuw nsw i32 %.04363, 1              ; 2 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !35
  %i.bw = call noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumViewsENS_8ViewTypeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i32 noundef 0, ptr noundef null)
  %i.bx = icmp slt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.b, label %._crit_edge, !llvm.loop !177
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517DisplayViewMerger18processActiveListsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 14 uses
  %2 = alloca %"class.std::vector", align 8       ; 10 uses
  %3 = alloca %"class.std::vector", align 8       ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::vector", align 8       ; 14 uses
  %6 = alloca %"class.std::vector", align 8       ; 10 uses
  %7 = alloca %"class.std::vector", align 8       ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = tail call noundef ptr @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getActiveDisplaysEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %.not15 = icmp eq i8 %i.e, 0
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30, !nonnull !24, !align !25
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  tail call void @_ZN16OpenColorIO_v2_56Config17setActiveDisplaysEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.d)
  br label %bb.ad

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters12isInputFirstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37, !nonnull !24, !align !25
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_520ViewTransformsMerger23addUniqueViewTransformsERKSt10shared_ptrIKNS_6ConfigEEb:bb.a
bb.i:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN16OpenColorIO_v2_520ViewTransformsMerger16addViewTransformERKSt10shared_ptrIKNS_6ConfigEEPKcb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.g, i1 noundef zeroext %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = add nuw nsw i32 %.09, 1                 ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !35
  %i.ac = call noundef i32 @_ZNK16OpenColorIO_v2_56Config20getNumViewTransformsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #23
  %i.ad = icmp slt i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.b, label %._crit_edge, !llvm.loop !227
}

; Function Attrs: nounwind
declare noundef i32 @_ZNK16OpenColorIO_v2_56Config20getNumViewTransformsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef ptr @_ZNK16OpenColorIO_v2_56Config27getViewTransformNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520ViewTransformsMerger21processViewTransformsERKSt10shared_ptrIKNS_6ConfigEES6_bb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.31", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.31", align 8 ; 10 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %14 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %16 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::shared_ptr.31", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35
  %i.b = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config20getNumViewTransformsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.p = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 6 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 5 uses
  %i.r = getelementptr i8, ptr %i.p, i64 -24      ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %20, i64 80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %20, i64 96 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %20, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 8
  %invariant.op = xor i1 %4, true
  br label %bb.b

._crit_edge:                                      ; preds = %bb.dn, %bb.a
  call void @_ZN16OpenColorIO_v2_520ViewTransformsMerger23addUniqueViewTransformsERKSt10shared_ptrIKNS_6ConfigEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %4)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.dn
  %.02896 = phi i32 [ 0, %.lr.ph ], [ %i.mt, %bb.dn ] ; 2 uses
  %i.bm = load ptr, ptr %1, align 8, !tbaa !35
  %i.bn = call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getViewTransformNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 noundef %.02896) #23 ; 8 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %bb.dn, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %.not30 = icmp eq i8 %i.bo, 0
  br i1 %.not30, label %bb.dn, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.bp = load ptr, ptr %2, align 8, !tbaa !35
  call void @_ZNK16OpenColorIO_v2_56Config16getViewTransformEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.31") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.bn) #23
  %i.bq = load ptr, ptr %19, align 8, !tbaa !222
  %.not78 = icmp eq ptr %i.bq, null
  br i1 %.not78, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNK16OpenColorIO_v2_56Config16getViewTransformEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.31") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef nonnull %i.bn) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.br = load ptr, ptr %2, align 8, !tbaa !35
  call void @_ZNK16OpenColorIO_v2_56Config16getViewTransformEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.31") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull %i.bn) #23
  %i.bs = load ptr, ptr %5, align 8, !tbaa !222   ; 2 uses
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = load ptr, ptr %6, align 8
  %i.bv = icmp ne ptr %i.bu, null
  %or.cond.i = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.ce

bb.f:                                             ; preds = %bb.e
  %i.bw = call noundef i32 @_ZNK16OpenColorIO_v2_513ViewTransform21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #23
  %i.bx = load ptr, ptr %6, align 8, !tbaa !222
  %i.by = call noundef i32 @_ZNK16OpenColorIO_v2_513ViewTransform21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) #23
  %.not.i = icmp eq i32 %i.bw, %i.by
  br i1 %.not.i, label %bb.g, label %bb.ce

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bz = load ptr, ptr %5, align 8, !tbaa !222
  call void @_ZNK16OpenColorIO_v2_513ViewTransform12getTransformENS_22ViewTransformDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i32 noundef 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ca = load ptr, ptr %6, align 8, !tbaa !222
  call void @_ZNK16OpenColorIO_v2_513ViewTransform12getTransformENS_22ViewTransformDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i32 noundef 0) #23
  %i.cb = load ptr, ptr %7, align 8, !tbaa !228
  %.not3.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %8, align 8, !tbaa !228
  %.not4.i = icmp eq ptr %i.cc, null              ; 2 uses
  br i1 %.not3.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not4.i, label %bb.ae, label %bb.bq

bb.i:                                             ; preds = %bb.g
  br i1 %.not4.i, label %bb.bq, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.cd = load ptr, ptr %7, align 8, !tbaa !228
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_9TransformE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %bb.l unwind label %bb.x       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.cf = load ptr, ptr %8, align 8, !tbaa !228
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_9TransformE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %bb.n unwind label %bb.z       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  store ptr %i.d, ptr %11, align 8, !tbaa !55, !alias.scope !235
  store i64 0, ptr %i.e, align 8, !tbaa !57, !alias.scope !235
  store i8 0, ptr %i.d, align 8, !tbaa !29, !alias.scope !235
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !58, !noalias !235 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not5.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %22 = load ptr, ptr %i.g, align 8, !noalias !235 ; 2 uses
  %23 = icmp ugt ptr %i.ch, %22
  %.08.i.i.i.i = select i1 %23, ptr %i.ch, ptr %22
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !60, !noalias !235 ; 2 uses
  %i.cj = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ci, i64 noundef %i.cl)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %11, align 8, !tbaa !7, !alias.scope !235 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.d
  br i1 %i.cp, label %.body.i, label %.body.i.sink.split

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.p

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  store ptr %i.j, ptr %12, align 8, !tbaa !55, !alias.scope !242
  store i64 0, ptr %i.k, align 8, !tbaa !57, !alias.scope !242
  store i8 0, ptr %i.j, align 8, !tbaa !29, !alias.scope !242
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !242 ; 3 uses
  %.not5.i.i42.i = icmp eq ptr %i.cq, null
  br i1 %.not5.i.i42.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %24 = load ptr, ptr %i.m, align 8, !noalias !242 ; 2 uses
  %25 = icmp ugt ptr %i.cq, %24
  %.08.i.i.i41.i = select i1 %25, ptr %i.cq, ptr %24
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !60, !noalias !242 ; 2 uses
  %i.cs = ptrtoint ptr %.08.i.i.i41.i to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.cr, i64 noundef %i.cu)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49.i unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %12, align 8, !tbaa !7, !alias.scope !242 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.j
  br i1 %i.cy, label %.body47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44.i: ; preds = %bb.s
  %i.cz = load i64, ptr %i.j, align 8, !tbaa !29, !alias.scope !242
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #25
  br label %.body47.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49.i unwind label %bb.s

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49.i: ; preds = %bb.t, %bb.r
  %i.db = load i64, ptr %i.e, align 8, !tbaa !57  ; 3 uses
  %i.dc = load i64, ptr %i.k, align 8, !tbaa !57  ; 2 uses
  %i.dd = icmp eq i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.u, label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49.i
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !7
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49.i
  %i.de = icmp eq i64 %i.db, 0
  %.pre9.i = load ptr, ptr %12, align 8, !tbaa !7 ; 3 uses
  br i1 %i.de, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load ptr, ptr %11, align 8, !tbaa !7
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.df, ptr %.pre9.i, i64 %i.db)
  %i.dg = icmp ne i32 %bcmp.i.i.i, 0
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.v, %bb.u, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i
  %i.dh = phi ptr [ %.pre.i, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i ], [ %.pre9.i, %bb.v ], [ %.pre9.i, %bb.u ] ; 2 uses
  %i.di = phi i1 [ true, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i ], [ %i.dg, %bb.v ], [ false, %bb.u ]
  %i.dj = icmp eq ptr %i.dh, %i.j
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.dk = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.dl = load i64, ptr %i.j, align 8, !tbaa !29
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dn = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.d
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dp = load i64, ptr %i.d, align 8, !tbaa !29
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  store ptr %i.p, ptr %10, align 8, !tbaa !38
  %i.dr = load i64, ptr %i.r, align 8
  %i.ds = getelementptr inbounds i8, ptr %10, i64 %i.dr
  store ptr %i.q, ptr %i.ds, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !38
  %i.dt = load ptr, ptr %i.o, align 8, !tbaa !7   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.t
  br i1 %i.du, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.dv = load i64, ptr %i.t, align 8, !tbaa !29
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.v) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  store ptr %i.p, ptr %9, align 8, !tbaa !38
  %i.dx = load i64, ptr %i.r, align 8
  %i.dy = getelementptr inbounds i8, ptr %9, i64 %i.dx
  store ptr %i.q, ptr %i.dy, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8, !tbaa !38
  %i.dz = load ptr, ptr %i.i, align 8, !tbaa !7   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.x
  br i1 %i.ea, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i53.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i
  %i.eb = load i64, ptr %i.x, align 8, !tbaa !29
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit55.i

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit55.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i53.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.z) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.di, label %bb.bq, label %bb.ae

bb.w:                                             ; preds = %bb.j
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.x:                                             ; preds = %bb.k
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %bb.l
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.m
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.body47.i:                                        ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.eh = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.d
  br i1 %i.ei, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %.body47.i, %bb.p
  %.sink = phi ptr [ %i.co, %bb.p ], [ %i.eh, %.body47.i ]
  %.pn.i.ph = phi { ptr, i32 } [ %i.cn, %bb.p ], [ %i.cw, %.body47.i ]
  %i.ej = load i64, ptr %i.d, align 8, !tbaa !29
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ek) #25
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %.body47.i, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.cn, %bb.p ], [ %i.cw, %.body47.i ], [ %.pn.i.ph, %.body.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.aa

bb.aa:                                            ; preds = %.body.i, %bb.z
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.eg, %bb.z ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.aa ], [ %i.ef, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.ab ], [ %i.ee, %bb.x ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.w
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %bb.ac ], [ %i.ed, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.cd

bb.ae:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit55.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.el = load ptr, ptr %5, align 8, !tbaa !222
  call void @_ZNK16OpenColorIO_v2_513ViewTransform12getTransformENS_22ViewTransformDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.el, i32 noundef 1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.em = load ptr, ptr %6, align 8, !tbaa !222
  call void @_ZNK16OpenColorIO_v2_513ViewTransform12getTransformENS_22ViewTransformDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.em, i32 noundef 1) #23
  %i.en = load ptr, ptr %13, align 8, !tbaa !228
  %.not6.i = icmp eq ptr %i.en, null
  %i.eo = load ptr, ptr %14, align 8, !tbaa !228
  %.not7.i = icmp eq ptr %i.eo, null              ; 2 uses
  br i1 %.not6.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %.not7.i, label %bb.bc, label %bb.bd

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not7.i, label %bb.bd, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.ai unwind label %bb.au

bb.ai:                                            ; preds = %bb.ah
  %i.ep = load ptr, ptr %13, align 8, !tbaa !228
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_9TransformE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.ep)
          to label %bb.aj unwind label %bb.av     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.ak unwind label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %i.er = load ptr, ptr %14, align 8, !tbaa !228
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_9TransformE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %bb.al unwind label %bb.ax     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  store ptr %i.aa, ptr %17, align 8, !tbaa !55, !alias.scope !249
  store i64 0, ptr %i.ab, align 8, !tbaa !57, !alias.scope !249
  store i8 0, ptr %i.aa, align 8, !tbaa !29, !alias.scope !249
  %i.et = load ptr, ptr %i.ac, align 8, !tbaa !58, !noalias !249 ; 3 uses
  %.not5.i.i70 = icmp eq ptr %i.et, null
  br i1 %.not5.i.i70, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %26 = load ptr, ptr %i.ad, align 8, !noalias !249 ; 2 uses
  %27 = icmp ugt ptr %i.et, %26
  %.08.i.i.i66 = select i1 %27, ptr %i.et, ptr %26
  %i.eu = load ptr, ptr %i.ae, align 8, !tbaa !60, !noalias !249 ; 2 uses
  %i.ev = ptrtoint ptr %.08.i.i.i66 to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.eu, i64 noundef %i.ex)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit77 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %17, align 8, !tbaa !7, !alias.scope !249 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.aa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.sink.split

bb.ao:                                            ; preds = %bb.al
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit77 unwind label %bb.an

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit77: ; preds = %bb.ao, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  store ptr %i.ag, ptr %18, align 8, !tbaa !55, !alias.scope !256
  store i64 0, ptr %i.ah, align 8, !tbaa !57, !alias.scope !256
  store i8 0, ptr %i.ag, align 8, !tbaa !29, !alias.scope !256
  %i.fc = load ptr, ptr %i.ai, align 8, !tbaa !58, !noalias !256 ; 3 uses
  %.not5.i.i60 = icmp eq ptr %i.fc, null
  br i1 %.not5.i.i60, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit77
  %28 = load ptr, ptr %i.aj, align 8, !noalias !256 ; 2 uses
  %29 = icmp ugt ptr %i.fc, %28
  %.08.i.i.i58 = select i1 %29, ptr %i.fc, ptr %28
  %i.fd = load ptr, ptr %i.ak, align 8, !tbaa !60, !noalias !256 ; 2 uses
  %i.fe = ptrtoint ptr %.08.i.i.i58 to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.fd, i64 noundef %i.fg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit67 unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = load ptr, ptr %18, align 8, !tbaa !7, !alias.scope !256 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ag
  br i1 %i.fk, label %.body65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i62: ; preds = %bb.aq
  %i.fl = load i64, ptr %i.ag, align 8, !tbaa !29, !alias.scope !256
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #25
  br label %.body65

bb.ar:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit77
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit67 unwind label %bb.aq

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit67: ; preds = %bb.ar, %bb.ap
  %i.fn = load i64, ptr %i.ab, align 8, !tbaa !57 ; 3 uses
  %i.fo = load i64, ptr %i.ah, align 8, !tbaa !57 ; 2 uses
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.as, label %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60_crit_edge.i

._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60_crit_edge.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit67
  %.pre10.i = load ptr, ptr %18, align 8, !tbaa !7
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60.i

bb.as:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit67
  %i.fq = icmp eq i64 %i.fn, 0
  %.pre11.i = load ptr, ptr %18, align 8, !tbaa !7 ; 3 uses
  br i1 %i.fq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fr = load ptr, ptr %17, align 8, !tbaa !7
  %bcmp.i.i59.i = call i32 @bcmp(ptr %i.fr, ptr %.pre11.i, i64 %i.fn)
  %i.fs = icmp ne i32 %bcmp.i.i59.i, 0
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60.i: ; preds = %bb.at, %bb.as, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60_crit_edge.i
  %i.ft = phi ptr [ %.pre10.i, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60_crit_edge.i ], [ %.pre11.i, %bb.at ], [ %.pre11.i, %bb.as ] ; 2 uses
  %i.fu = phi i1 [ true, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60_crit_edge.i ], [ %i.fs, %bb.at ], [ false, %bb.as ]
  %i.fv = icmp eq ptr %i.ft, %i.ag
  br i1 %i.fv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i62.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i62.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60.i
  %i.fw = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fw)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit60.i
  %i.fx = load i64, ptr %i.ag, align 8, !tbaa !29
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.fz = load ptr, ptr %17, align 8, !tbaa !7    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.aa
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i
  %i.gb = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  store ptr %i.p, ptr %16, align 8, !tbaa !38
  %i.gd = load i64, ptr %i.r, align 8
  %i.ge = getelementptr inbounds i8, ptr %16, i64 %i.gd
  store ptr %i.q, ptr %i.ge, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.am, align 8, !tbaa !38
  %i.gf = load ptr, ptr %i.al, align 8, !tbaa !7  ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.an
  br i1 %i.gg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i
  %i.gh = load i64, ptr %i.an, align 8, !tbaa !29
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit57

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i55
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  store ptr %i.p, ptr %15, align 8, !tbaa !38
  %i.gj = load i64, ptr %i.r, align 8
  %i.gk = getelementptr inbounds i8, ptr %15, i64 %i.gj
  store ptr %i.q, ptr %i.gk, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aq, align 8, !tbaa !38
  %i.gl = load ptr, ptr %i.af, align 8, !tbaa !7  ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ar
  br i1 %i.gm, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit57
  %i.gn = load i64, ptr %i.ar, align 8, !tbaa !29
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit54

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit54: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aq, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.at) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %i.fu, label %bb.bd, label %bb.bc

bb.au:                                            ; preds = %bb.ah
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.av:                                            ; preds = %bb.ai
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aw:                                            ; preds = %bb.aj
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ax:                                            ; preds = %bb.ak
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.body65:                                          ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.gt = load ptr, ptr %17, align 8, !tbaa !7    ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.aa
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.sink.split: ; preds = %.body65, %bb.an
  %.sink145 = phi ptr [ %i.fa, %bb.an ], [ %i.gt, %.body65 ]
  %.pn33.i.ph = phi { ptr, i32 } [ %i.ez, %bb.an ], [ %i.fi, %.body65 ]
  %i.gv = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %.sink145, i64 noundef %i.gw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.sink.split, %.body65, %bb.an
  %.pn33.i = phi { ptr, i32 } [ %i.fi, %.body65 ], [ %i.ez, %bb.an ], [ %.pn33.i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, %bb.ax
  %.pn33.pn.i = phi { ptr, i32 } [ %.pn33.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.gs, %bb.ax ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16) #23
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw
  %.pn33.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.i, %bb.ay ], [ %i.gr, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.av
  %.pn33.pn.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.pn.i, %bb.az ], [ %i.gq, %bb.av ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.au
  %.pn33.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.pn.pn.i, %bb.ba ], [ %i.gp, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.cd

bb.bc:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit54, %bb.af
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit54, %bb.ag, %bb.af
  %.325.i = phi i1 [ true, %bb.bc ], [ false, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit54 ], [ false, %bb.ag ], [ false, %bb.af ]
  %i.gx = load ptr, ptr %i.au, align 8, !tbaa !81 ; 8 uses
  %.not.i.i70.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i70.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.gy, align 8, !tbaa !82
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hc, align 4, !tbaa !84
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !38
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_520ViewTransformsMerger21processViewTransformsERKSt10shared_ptrIKNS_6ConfigEES6_bb:bb.a

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80.i: ; preds = %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78.i, %bb.bs, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.it = load ptr, ptr %i.ax, align 8, !tbaa !81 ; 8 uses
  %.not.i.i81.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i81.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 4 uses
  %i.iv = load atomic i64, ptr %i.iu acquire, align 8 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 4294967297
  %i.ix = trunc i64 %i.iv to i32                  ; 2 uses
  br i1 %i.iw, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.iu, align 8, !tbaa !82
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  store i32 0, ptr %i.iy, align 4, !tbaa !84
  %i.iz = load ptr, ptr %i.it, align 8, !tbaa !38
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #23, !inline_history !257
  %i.jc = load ptr, ptr %i.it, align 8, !tbaa !38
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #23, !inline_history !257
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i

bb.bz:                                            ; preds = %bb.bx
  %i.jf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i82.i = icmp eq i8 %i.jf, 0
  br i1 %.not.i.i.i82.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jg = add nsw i32 %i.ix, -1
  store i32 %i.jg, ptr %i.iu, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i

bb.cb:                                            ; preds = %bb.bz
  %i.jh = atomicrmw volatile add ptr %i.iu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i84.i = phi i32 [ %i.ix, %bb.ca ], [ %i.jh, %bb.cb ]
  %i.ji = icmp eq i32 %.0.i.i.i.i84.i, 1
  br i1 %i.ji, label %bb.cc, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i, !prof !86

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i: ; preds = %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i, %bb.by, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bb, %bb.ad
  %.pn33.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.i, %bb.bb ], [ %.pn.pn.pn.pn.pn.i, %bb.ad ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body

bb.ce:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i, %bb.f, %bb.e
  %.527.i = phi i1 [ false, %bb.f ], [ %.426.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i ], [ false, %bb.e ]
  %i.jj = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 8 uses
  %.not.i.i86.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i86.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 4 uses
  %i.jl = load atomic i64, ptr %i.jk acquire, align 8 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 4294967297
  %i.jn = trunc i64 %i.jl to i32                  ; 2 uses
  br i1 %i.jm, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.jk, align 8, !tbaa !82
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i32 0, ptr %i.jo, align 4, !tbaa !84
  %i.jp = load ptr, ptr %i.jj, align 8, !tbaa !38
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #23, !inline_history !258
  %i.js = load ptr, ptr %i.jj, align 8, !tbaa !38
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #23, !inline_history !258
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ch:                                            ; preds = %bb.cf
  %i.jv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i87.i = icmp eq i8 %i.jv, 0
  br i1 %.not.i.i.i87.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jw = add nsw i32 %i.jn, -1
  store i32 %i.jw, ptr %i.jk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.i

bb.cj:                                            ; preds = %bb.ch
  %i.jx = atomicrmw volatile add ptr %i.jk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.i: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i89.i = phi i32 [ %i.jn, %bb.ci ], [ %i.jx, %bb.cj ]
  %i.jy = icmp eq i32 %.0.i.i.i.i89.i, 1
  br i1 %i.jy, label %bb.ck, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !86

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.i, %bb.cg, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.jz = load ptr, ptr %i.az, align 8, !tbaa !81 ; 8 uses
  %.not.i.i90.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i90.i, label %bb.cr, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %i.kb = load atomic i64, ptr %i.ka acquire, align 8 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 4294967297
  %i.kd = trunc i64 %i.kb to i32                  ; 2 uses
  br i1 %i.kc, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.ka, align 8, !tbaa !82
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 0, ptr %i.ke, align 4, !tbaa !84
  %i.kf = load ptr, ptr %i.jz, align 8, !tbaa !38
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #23, !inline_history !258
  %i.ki = load ptr, ptr %i.jz, align 8, !tbaa !38
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #23, !inline_history !258
  br label %bb.cr

bb.cn:                                            ; preds = %bb.cl
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i91.i = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i91.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.km = add nsw i32 %i.kd, -1
  store i32 %i.km, ptr %i.ka, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i92.i

bb.cp:                                            ; preds = %bb.cn
  %i.kn = atomicrmw volatile add ptr %i.ka, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i92.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i92.i: ; preds = %bb.cp, %bb.co
  %.0.i.i.i.i93.i = phi i32 [ %i.kd, %bb.co ], [ %i.kn, %bb.cp ]
  %i.ko = icmp eq i32 %.0.i.i.i.i93.i, 1
  br i1 %i.ko, label %bb.cq, label %bb.cr, !prof !86

bb.cq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i92.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #23
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i92.i, %bb.cm, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.527.i, label %.invoke, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20)
          to label %bb.ct unwind label %bb.dd

bb.ct:                                            ; preds = %bb.cs
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.9, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ct
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.16, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.kr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #23
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %i.bn, i64 noundef %i.kr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  store ptr %i.ba, ptr %21, align 8, !tbaa !55, !alias.scope !265
  store i64 0, ptr %i.bb, align 8, !tbaa !57, !alias.scope !265
  store i8 0, ptr %i.ba, align 8, !tbaa !29, !alias.scope !265
  %i.kt = load ptr, ptr %i.bc, align 8, !tbaa !58, !noalias !265 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.kt, null
  br i1 %.not5.i.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %30 = load ptr, ptr %i.bd, align 8, !noalias !265 ; 2 uses
  %31 = icmp ugt ptr %i.kt, %30
  %.08.i.i.i = select i1 %31, ptr %i.kt, ptr %30
  %i.ku = load ptr, ptr %i.be, align 8, !tbaa !60, !noalias !265 ; 2 uses
  %i.kv = ptrtoint ptr %.08.i.i.i to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef 0, ptr noundef %i.ku, i64 noundef %i.kx)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.cv ; 0 uses

bb.cv:                                            ; preds = %bb.cw, %bb.cu
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load ptr, ptr %21, align 8, !tbaa !7, !alias.scope !265 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.ba
  br i1 %i.lb, label %.body39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cv
  %i.lc = load i64, ptr %i.ba, align 8, !tbaa !29, !alias.scope !265
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #25
  br label %.body39

bb.cw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.cv

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.cw, %bb.cu
  %i.le = load ptr, ptr %i.bg, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !26
  %i.lg = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lf)
          to label %bb.cx unwind label %.loopexit

bb.cx:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.lg, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %.loopexit

bb.cz:                                            ; preds = %bb.cx
  %i.lh = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.li = load ptr, ptr %21, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lh, ptr noundef %i.li)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %bb.cz
  invoke void @__cxa_throw(ptr nonnull %i.lh, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lh) #23
  br label %.body43

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.cy
  %i.lk = load ptr, ptr %21, align 8, !tbaa !7    ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.ba
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.lm = load i64, ptr %i.ba, align 8, !tbaa !29
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.p, ptr %20, align 8, !tbaa !38
  %i.lo = load i64, ptr %i.r, align 8
  %i.lp = getelementptr inbounds i8, ptr %20, i64 %i.lo
  store ptr %i.q, ptr %i.lp, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bh, align 8, !tbaa !38
  %i.lq = load ptr, ptr %i.bf, align 8, !tbaa !7  ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.bi
  br i1 %i.lr, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ls = load i64, ptr %i.bi, align 8, !tbaa !29
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bh, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.invoke

bb.dc:                                            ; preds = %.invoke
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dd:                                            ; preds = %bb.cs
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.de:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ct
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body39

.loopexit:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.cy
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.loopexit.split-lp:                               ; preds = %bb.da
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.db
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.lj, %bb.db ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.lx = load ptr, ptr %21, align 8, !tbaa !7    ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.ba
  br i1 %i.ly, label %.body39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %.body43
  %i.lz = load i64, ptr %i.ba, align 8, !tbaa !29
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #25
  br label %.body39

.body39:                                          ; preds = %.body43, %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.lw, %bb.de ], [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.kz, %bb.cv ], [ %eh.lpad-body44, %.body43 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20) #23
  br label %bb.df

bb.df:                                            ; preds = %.body39, %bb.dd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body39 ], [ %i.lv, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body

.invoke:                                          ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.cr, %bb.d
  %i.mb = load ptr, ptr %19, align 8, !tbaa !222
  %i.mc = icmp ne ptr %i.mb, null
  %or.cond = and i1 %3, %i.mc                     ; 2 uses
  %. = select i1 %or.cond, ptr %2, ptr %1
  %.142.reass = xor i1 %or.cond, %invariant.op
  invoke void @_ZN16OpenColorIO_v2_520ViewTransformsMerger16addViewTransformERKSt10shared_ptrIKNS_6ConfigEEPKcb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %., ptr noundef nonnull %i.bn, i1 noundef zeroext %.142.reass)
          to label %bb.dg unwind label %bb.dc

bb.dg:                                            ; preds = %.invoke
  %i.md = load ptr, ptr %i.bl, align 8, !tbaa !81 ; 8 uses
  %.not.i.i50 = icmp eq ptr %i.md, null
  br i1 %.not.i.i50, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 4 uses
  %i.mf = load atomic i64, ptr %i.me acquire, align 8 ; 2 uses
  %i.mg = icmp eq i64 %i.mf, 4294967297
  %i.mh = trunc i64 %i.mf to i32                  ; 2 uses
  br i1 %i.mg, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.me, align 8, !tbaa !82
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 12
  store i32 0, ptr %i.mi, align 4, !tbaa !84
  %i.mj = load ptr, ptr %i.md, align 8, !tbaa !38
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(16) %i.md) #23, !inline_history !225
  %i.mm = load ptr, ptr %i.md, align 8, !tbaa !38
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(16) %i.md) #23, !inline_history !225
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dj:                                            ; preds = %bb.dh
  %i.mp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i51 = icmp eq i8 %i.mp, 0
  br i1 %.not.i.i.i51, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mq = add nsw i32 %i.mh, -1
  store i32 %i.mq, ptr %i.me, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.mr = atomicrmw volatile add ptr %i.me, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i = phi i32 [ %i.mh, %bb.dk ], [ %i.mr, %bb.dl ]
  %i.ms = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ms, label %bb.dm, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.md) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dg, %bb.di, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.dn

.body:                                            ; preds = %bb.dc, %bb.cd, %bb.df
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_512_GLOBAL__N_116replaceSeparatorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit8
  %i.i = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8, !tbaa !29
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.m = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.o = load i64, ptr %i.a, align 8, !tbaa !29
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a
  %.pn = phi { ptr, i32 } [ %i.c, %bb.a ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.q = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load i64, ptr %i.a, align 8, !tbaa !29
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

declare noundef signext i8 @_ZNK16OpenColorIO_v2_56Config18getFamilySeparatorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZNK16OpenColorIO_v2_523ConfigMergingParameters19getBaseFamilyPrefixEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZNK16OpenColorIO_v2_523ConfigMergingParameters20getInputFamilyPrefixEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517ColorspacesMerger17attemptToAddAliasERKSt10shared_ptrIKNS_6ConfigEERS1_INS_10ColorSpaceEERKS1_IKS7_EPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.10", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 34 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !298
  %i.b = tail call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23
  %i.c = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.b, ptr noundef %4)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !298
  %i.f = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace8hasAliasEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %4) #23
  br i1 %i.f, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = load ptr, ptr %1, align 8, !tbaa !35
  call void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %4)
  %i.h = load ptr, ptr %5, align 8, !tbaa !61
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.e unwind label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.19, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.j = load ptr, ptr %3, align 8, !tbaa !61
  %i.k = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #23 ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = load ptr, ptr %6, align 8, !tbaa !38
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %6, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !40
  %i.r = or i32 %i.q, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.w

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #23
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.k, i64 noundef %i.s)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %bb.f, %bb.g
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.21, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.w = load ptr, ptr %2, align 8, !tbaa !298
  %i.x = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #23 ; 3 uses
  %.not.i23 = icmp eq ptr %i.x, null
  br i1 %.not.i23, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.y = load ptr, ptr %6, align 8, !tbaa !38
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !40
  %i.ae = or i32 %i.ad, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ab, i32 noundef %i.ae)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.w

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #23
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.x, i64 noundef %i.af)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %bb.h, %bb.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.22, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %.not.i29 = icmp eq ptr %4, null
  br i1 %.not.i29, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ai = load ptr, ptr %6, align 8, !tbaa !38
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !40
  %i.ao = or i32 %i.an, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.al, i32 noundef %i.ao)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.w

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #23
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %4, i64 noundef %i.ap)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %bb.j, %bb.k
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.23, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.as = load ptr, ptr %5, align 8, !tbaa !61
  %i.at = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #23 ; 3 uses
  %.not.i35 = icmp eq ptr %i.at, null
  br i1 %.not.i35, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.au = load ptr, ptr %6, align 8, !tbaa !38
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %6, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !40
  %i.ba = or i32 %i.az, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ax, i32 noundef %i.ba)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.w

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #23
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.at, i64 noundef %i.bb)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %bb.l, %bb.m
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.be, ptr %7, align 8, !tbaa !55, !alias.scope !306
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !57, !alias.scope !306
  store i8 0, ptr %i.be, align 8, !tbaa !29, !alias.scope !306
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !58, !noalias !306 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %9 = load ptr, ptr %8, align 8, !noalias !306   ; 2 uses
  %10 = icmp ugt ptr %i.bh, %9
  %.08.i.i.i = select i1 %10, ptr %i.bh, ptr %9
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !60, !noalias !306 ; 2 uses
  %i.bk = ptrtoint ptr %.08.i.i.i to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.bj, i64 noundef %i.bm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %7, align 8, !tbaa !7, !alias.scope !306 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.be
  br i1 %i.bq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.br = load i64, ptr %i.be, align 8, !tbaa !29, !alias.scope !306
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %.body

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.p, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !26
  %i.bx = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.bx, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.by = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.bz = load ptr, ptr %7, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef %i.bz)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc42 unwind label %bb.x

.noexc42:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.by) #23
  br label %.body43

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.r
  %i.cb = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.be
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.cd = load i64, ptr %i.be, align 8, !tbaa !29
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cf = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cf, ptr %6, align 8, !tbaa !38
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %6, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ck, align 8, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !7  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !29
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ck, align 8, !tbaa !38
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cr) #23
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cs) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aa

bb.v:                                             ; preds = %bb.d
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38, %bb.m, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %bb.k, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %bb.i, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %bb.g, %bb.f, %bb.e
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.t, %bb.r, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %bb.u, %bb.x
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.cv, %bb.x ], [ %i.ca, %bb.u ] ; 2 uses
  %i.cw = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.be
  br i1 %i.cx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %.body43
  %i.cy = load i64, ptr %i.be, align 8, !tbaa !29
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #25
  br label %.body

.body:                                            ; preds = %.body43, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.cu, %bb.w ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bo, %bb.o ], [ %eh.lpad-body44, %.body43 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #23
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ct, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn

bb.z:                                             ; preds = %bb.c
  %i.da = load ptr, ptr %2, align 8, !tbaa !298
  call void @_ZN16OpenColorIO_v2_510ColorSpace8addAliasEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef %4) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !81 ; 8 uses
  %.not.i.i48 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i48, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.dd, align 8, !tbaa !82
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !84
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23, !inline_history !87
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23, !inline_history !87
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = phi i32 [ %i.dg, %bb.ae ], [ %i.dq, %bb.af ]
  %i.dr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dr, label %bb.ag, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.b, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_510ColorSpace11addCategoryEPKc
declare void @_ZN16OpenColorIO_v2_510ColorSpace11addCategoryEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace11getCategoryEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK16OpenColorIO_v2_56Config16getCanonicalNameEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_56Config16removeColorSpaceEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZNK16OpenColorIO_v2_510ColorSpace18createEditableCopyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.40") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !90
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !90
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN16OpenColorIO_v2_56Config13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !90
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !90
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_517ColorspacesMerger21colorSpaceMayBeMergedERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_10ColorSpaceEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.10", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 26 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 26 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.ct, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = load ptr, ptr %1, align 8, !tbaa !35
  call void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.b)
  %i.d = load ptr, ptr %3, align 8, !tbaa !61
  %.not187 = icmp eq ptr %i.d, null
  br i1 %.not187, label %bb.cl, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !35
  %i.f = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config7hasRoleEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.b)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.31, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = load ptr, ptr %4, align 8, !tbaa !38
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %4, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40
  %i.n = or i32 %i.m, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %bb.s

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.b, i64 noundef %i.o)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %bb.g, %bb.h
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.32, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !55, !alias.scope !318
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !57, !alias.scope !318
  store i8 0, ptr %i.r, align 8, !tbaa !29, !alias.scope !318
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58, !noalias !318 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.u, null
  br i1 %.not5.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %15 = load ptr, ptr %14, align 8, !noalias !318 ; 2 uses
  %16 = icmp ugt ptr %i.u, %15
  %.08.i.i.i = select i1 %16, ptr %i.u, ptr %15
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !60, !noalias !318 ; 2 uses
  %i.x = ptrtoint ptr %.08.i.i.i to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.w, i64 noundef %i.z)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !7, !alias.scope !318 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !29, !alias.scope !318
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #25
  br label %.body

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ak = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.al = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef %i.am)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc58 unwind label %bb.t

.noexc58:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.al) #23
  br label %.body59

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.m
  %i.ao = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.r
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !29
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.as = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !38
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %4, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ax, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !7  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !29
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ax, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.be) #23
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bf) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.cl

bb.q:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.r:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %bb.h, %bb.g, %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.o, %bb.m, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body59

.body59:                                          ; preds = %bb.p, %bb.t
  %eh.lpad-body60 = phi { ptr, i32 } [ %i.bj, %bb.t ], [ %i.an, %bb.p ] ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.r
  br i1 %i.bl, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %.body59
  %i.bm = load i64, ptr %i.r, align 8, !tbaa !29
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #25
  br label %.body

.body:                                            ; preds = %.body59, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn49 = phi { ptr, i32 } [ %eh.lpad-body60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.bi, %bb.s ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %bb.j ], [ %eh.lpad-body60, %.body59 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  br label %bb.u

bb.u:                                             ; preds = %.body, %bb.r
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %.body ], [ %i.bh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.cs

bb.v:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26
  %i.br = invoke noundef i32 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %3, align 8, !tbaa !61
  %i.bt = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #23
  %i.bu = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.bt, ptr noundef %i.b)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = and i32 %i.br, -3
  %or.cond = icmp eq i32 %i.bw, 0                 ; 2 uses
  br i1 %i.bv, label %bb.y, label %bb.ba

bb.y:                                             ; preds = %bb.x
  br i1 %or.cond, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.31, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %bb.aa
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.b)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.33, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %bb.ab
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.cc = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nonnull align 8 poison, ptr noundef nonnull %7, i1 noundef zeroext %i.cc)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cd = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.ae
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !29
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.cl

bb.af:                                            ; preds = %bb.w, %bb.v
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ag:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ab, %bb.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.ai:                                            ; preds = %bb.ad, %bb.ac
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ai
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !29
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.ah
  %.pn45 = phi { ptr, i32 } [ %i.ck, %bb.ah ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.cl, %bb.ai ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.ag
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.cj, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.cs

bb.ak:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.al unwind label %bb.aw

bb.al:                                            ; preds = %bb.ak
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.31, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75: ; preds = %bb.al
  %.not.i76 = icmp eq ptr %i.b, null
  br i1 %.not.i76, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  %i.cs = load ptr, ptr %8, align 8, !tbaa !38
  %i.ct = getelementptr i8, ptr %i.cs, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %8, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !40
  %i.cy = or i32 %i.cx, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cv, i32 noundef %i.cy)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.ax

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  %i.cz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %i.b, i64 noundef %i.cz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %bb.am, %bb.an
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.34, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.dc, ptr %9, align 8, !tbaa !55, !alias.scope !325
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.dd, align 8, !tbaa !57, !alias.scope !325
  store i8 0, ptr %i.dc, align 8, !tbaa !29, !alias.scope !325
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !58, !noalias !325 ; 3 uses
  %.not5.i.i84 = icmp eq ptr %i.df, null
  br i1 %.not5.i.i84, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %18 = load ptr, ptr %17, align 8, !noalias !325 ; 2 uses
  %19 = icmp ugt ptr %i.df, %18
  %.08.i.i.i83 = select i1 %19, ptr %i.df, ptr %18
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !60, !noalias !325 ; 2 uses
  %i.di = ptrtoint ptr %.08.i.i.i83 to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.dh, i64 noundef %i.dk)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91 unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !325 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.dc
  br i1 %i.do, label %.body89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86: ; preds = %bb.ap
  %i.dp = load i64, ptr %i.dc, align 8, !tbaa !29, !alias.scope !325
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #25
  br label %.body89

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.dr)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91 unwind label %bb.ap

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91: ; preds = %bb.aq, %bb.ao
  %i.ds = load ptr, ptr %i.bo, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !26
  %i.du = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91
  br i1 %i.du, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit96 unwind label %bb.ay

bb.at:                                            ; preds = %bb.ar
  %i.dv = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.dw = load ptr, ptr %9, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef %i.dw)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @__cxa_throw(ptr nonnull %i.dv, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc93 unwind label %bb.ay

.noexc93:                                         ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dv) #23
  br label %.body94

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit96: ; preds = %bb.as
  %i.dy = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dc
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit96
  %i.ea = load i64, ptr %i.dc, align 8, !tbaa !29
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  %i.ec = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ec, ptr %8, align 8, !tbaa !38
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ee = getelementptr i8, ptr %i.ec, i64 -24
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds i8, ptr %8, i64 %i.ef
  store ptr %i.ed, ptr %i.eg, align 8, !tbaa !38
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.eh, align 8, !tbaa !38
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !7  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !29
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.eh, align 8, !tbaa !38
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eo) #23
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ep) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cl

bb.aw:                                            ; preds = %bb.ak
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79, %bb.an, %bb.am, %bb.al
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body89

bb.ay:                                            ; preds = %bb.au, %bb.as, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.body94:                                          ; preds = %bb.av, %bb.ay
  %eh.lpad-body95 = phi { ptr, i32 } [ %i.es, %bb.ay ], [ %i.dx, %bb.av ] ; 2 uses
  %i.et = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.dc
  br i1 %i.eu, label %.body89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %.body94
  %i.ev = load i64, ptr %i.dc, align 8, !tbaa !29
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #25
  br label %.body89

.body89:                                          ; preds = %.body94, %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86
  %.pn42 = phi { ptr, i32 } [ %eh.lpad-body95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.er, %bb.ax ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86 ], [ %i.dm, %bb.ap ], [ %eh.lpad-body95, %.body94 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #23
  br label %bb.az

bb.az:                                            ; preds = %.body89, %bb.aw
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %.body89 ], [ %i.eq, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cs

bb.ba:                                            ; preds = %bb.x
  br i1 %or.cond, label %bb.bb, label %bb.bt

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.bc unwind label %bb.bp

bb.bc:                                            ; preds = %bb.bb
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.35, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107: ; preds = %bb.bc
  %.not.i108 = icmp eq ptr %i.b, null
  br i1 %.not.i108, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.ey = load ptr, ptr %10, align 8, !tbaa !38
  %i.ez = getelementptr i8, ptr %i.ey, i64 -24
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds i8, ptr %10, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !40
  %i.fe = or i32 %i.fd, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fb, i32 noundef %i.fe)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111.a unwind label %bb.bq

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.ff = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.b, i64 noundef %i.ff)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111.a unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111.a: ; preds = %bb.bd, %bb.be
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113.a unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111.a
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.36, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113.a
  %i.fj = load ptr, ptr %3, align 8, !tbaa !61
  %i.fk = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fj) #23 ; 3 uses
  %.not.i116 = icmp eq ptr %i.fk, null
  br i1 %.not.i116, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115
  %i.fl = load ptr, ptr %10, align 8, !tbaa !38
  %i.fm = getelementptr i8, ptr %i.fl, i64 -24
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds i8, ptr %10, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !40
  %i.fr = or i32 %i.fq, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fo, i32 noundef %i.fr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.a unwind label %bb.bq

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115
  %i.fs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fk) #23
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.fk, i64 noundef %i.fs)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.a unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.a: ; preds = %bb.bf, %bb.bg
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.a
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.fv, ptr %11, align 8, !tbaa !55, !alias.scope !332
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.fw, align 8, !tbaa !57, !alias.scope !332
  store i8 0, ptr %i.fv, align 8, !tbaa !29, !alias.scope !332
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !58, !noalias !332 ; 3 uses
  %.not5.i.i124 = icmp eq ptr %i.fy, null
  br i1 %.not5.i.i124, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %21 = load ptr, ptr %20, align 8, !noalias !332 ; 2 uses
  %22 = icmp ugt ptr %i.fy, %21
  %.08.i.i.i121 = select i1 %22, ptr %i.fy, ptr %21
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !60, !noalias !332 ; 2 uses
  %i.gb = ptrtoint ptr %.08.i.i.i121 to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ga, i64 noundef %i.gd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit131 unwind label %bb.bi ; 0 uses

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %11, align 8, !tbaa !7, !alias.scope !332 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.fv
  br i1 %i.gh, label %.body129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126: ; preds = %bb.bi
  %i.gi = load i64, ptr %i.fv, align 8, !tbaa !29, !alias.scope !332
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #25
  br label %.body129

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.gk)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit131 unwind label %bb.bi

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit131: ; preds = %bb.bj, %bb.bh
  %i.gl = load ptr, ptr %i.bo, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !26
  %i.gn = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gm)
          to label %bb.bk unwind label %bb.br

bb.bk:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit131
  br i1 %i.gn, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit136 unwind label %bb.br

bb.bm:                                            ; preds = %bb.bk
  %i.go = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.gp = load ptr, ptr %11, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef %i.gp)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @__cxa_throw(ptr nonnull %i.go, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc133 unwind label %bb.br

.noexc133:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.go) #23
  br label %.body134

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit136: ; preds = %bb.bl
  %i.gr = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.fv
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit136
  %i.gt = load i64, ptr %i.fv, align 8, !tbaa !29
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.gv = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gv, ptr %10, align 8, !tbaa !38
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gx = getelementptr i8, ptr %i.gv, i64 -24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds i8, ptr %10, i64 %i.gy
  store ptr %i.gw, ptr %i.gz, align 8, !tbaa !38
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ha, align 8, !tbaa !38
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !7  ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !29
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit142

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ha, align 8, !tbaa !38
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hh) #23
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.hi) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.cl

bb.bp:                                            ; preds = %bb.bb
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.a, %bb.bg, %bb.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111.a, %bb.be, %bb.bd, %bb.bc
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.body129

bb.br:                                            ; preds = %bb.bn, %bb.bl, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit131
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body134

.body134:                                         ; preds = %bb.bo, %bb.br
  %eh.lpad-body135 = phi { ptr, i32 } [ %i.hl, %bb.br ], [ %i.gq, %bb.bo ] ; 2 uses
  %i.hm = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.fv
  br i1 %i.hn, label %.body129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %.body134
  %i.ho = load i64, ptr %i.fv, align 8, !tbaa !29
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #25
  br label %.body129

.body129:                                         ; preds = %.body134, %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126
  %.pn39 = phi { ptr, i32 } [ %eh.lpad-body135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %i.hk, %bb.bq ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126 ], [ %i.gf, %bb.bi ], [ %eh.lpad-body135, %.body134 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #23
  br label %bb.bs

bb.bs:                                            ; preds = %.body129, %bb.bp
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %.body129 ], [ %i.hj, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.cs

bb.bt:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.bu unwind label %bb.ch

bb.bu:                                            ; preds = %bb.bt
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.31, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147.a unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147.a: ; preds = %bb.bu
  %.not.i148 = icmp eq ptr %i.b, null
  br i1 %.not.i148, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147.a
  %i.hr = load ptr, ptr %12, align 8, !tbaa !38
  %i.hs = getelementptr i8, ptr %i.hr, i64 -24
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds i8, ptr %12, i64 %i.ht ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !40
  %i.hx = or i32 %i.hw, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.hu, i32 noundef %i.hx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151.a unwind label %bb.ci

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147.a
  %i.hy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.b, i64 noundef %i.hy)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151.a unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151.a: ; preds = %bb.bv, %bb.bw
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.37, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151.a
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.38, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155.a unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %i.ic = load ptr, ptr %3, align 8, !tbaa !61
  %i.id = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ic) #23 ; 3 uses
  %.not.i156 = icmp eq ptr %i.id, null
  br i1 %.not.i156, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155.a
  %i.ie = load ptr, ptr %12, align 8, !tbaa !38
  %i.if = getelementptr i8, ptr %i.ie, i64 -24
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = getelementptr inbounds i8, ptr %12, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !40
  %i.ik = or i32 %i.ij, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ih, i32 noundef %i.ik)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159 unwind label %bb.ci

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155.a
  %i.il = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.id) #23
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.id, i64 noundef %i.il)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159 unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159: ; preds = %bb.bx, %bb.by
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161 unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.io = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  store ptr %i.io, ptr %13, align 8, !tbaa !55, !alias.scope !339
  %i.ip = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.ip, align 8, !tbaa !57, !alias.scope !339
  store i8 0, ptr %i.io, align 8, !tbaa !29, !alias.scope !339
  %i.iq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !58, !noalias !339 ; 3 uses
  %.not5.i.i164 = icmp eq ptr %i.ir, null
  br i1 %.not5.i.i164, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %24 = load ptr, ptr %23, align 8, !noalias !339 ; 2 uses
  %25 = icmp ugt ptr %i.ir, %24
  %.08.i.i.i159 = select i1 %25, ptr %i.ir, ptr %24
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !60, !noalias !339 ; 2 uses
  %i.iu = ptrtoint ptr %.08.i.i.i159 to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.it, i64 noundef %i.iw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit171 unwind label %bb.ca ; 0 uses

bb.ca:                                            ; preds = %bb.cb, %bb.bz
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iz = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !339 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.io
  br i1 %i.ja, label %.body169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i166: ; preds = %bb.ca
  %i.jb = load i64, ptr %i.io, align 8, !tbaa !29, !alias.scope !339
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #25
  br label %.body169

bb.cb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.jd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit171 unwind label %bb.ca

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit171: ; preds = %bb.cb, %bb.bz
  %i.je = load ptr, ptr %i.bo, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !26
  %i.jg = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jf)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit171
  br i1 %i.jg, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit176 unwind label %bb.cj

bb.ce:                                            ; preds = %bb.cc
  %i.jh = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.ji = load ptr, ptr %13, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef %i.ji)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  invoke void @__cxa_throw(ptr nonnull %i.jh, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc173 unwind label %bb.cj

.noexc173:                                        ; preds = %bb.cf
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jh) #23
  br label %.body174

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit176: ; preds = %bb.cd
  %i.jk = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.io
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.a: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit176
  %i.jm = load i64, ptr %i.io, align 8, !tbaa !29
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.a
  %i.jo = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.jo, ptr %12, align 8, !tbaa !38
  %i.jp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.jq = getelementptr i8, ptr %i.jo, i64 -24
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = getelementptr inbounds i8, ptr %12, i64 %i.jr
  store ptr %i.jp, ptr %i.js, align 8, !tbaa !38
  %i.jt = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jt, align 8, !tbaa !38
  %i.ju = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !7  ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !29
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit182

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jt, align 8, !tbaa !38
  %i.ka = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ka) #23
  %i.kb = getelementptr inbounds nuw i8, ptr %12, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.kb) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.cl

bb.ch:                                            ; preds = %bb.bt
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ci:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159, %bb.by, %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151.a, %bb.bw, %bb.bv, %bb.bu
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body169

bb.cj:                                            ; preds = %bb.cf, %bb.cd, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit171
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body174

.body174:                                         ; preds = %bb.cg, %bb.cj
  %eh.lpad-body175 = phi { ptr, i32 } [ %i.ke, %bb.cj ], [ %i.jj, %bb.cg ] ; 2 uses
  %i.kf = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.io
  br i1 %i.kg, label %.body169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %.body174
  %i.kh = load i64, ptr %i.io, align 8, !tbaa !29
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #25
  br label %.body169

.body169:                                         ; preds = %.body174, %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i166
  %.pn = phi { ptr, i32 } [ %eh.lpad-body175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %i.kd, %bb.ci ], [ %i.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i166 ], [ %i.iy, %bb.ca ], [ %eh.lpad-body175, %.body174 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #23
  br label %bb.ck

bb.ck:                                            ; preds = %.body169, %bb.ch
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body169 ], [ %i.kc, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.cs

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit142, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit182, %bb.b, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.1 = phi i1 [ false, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ true, %bb.b ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ false, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102 ], [ true, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit142 ], [ false, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit182 ]
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !81 ; 8 uses
  %.not.i.i186 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i186, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 4 uses
  %i.km = load atomic i64, ptr %i.kl acquire, align 8 ; 2 uses
  %i.kn = icmp eq i64 %i.km, 4294967297
  %i.ko = trunc i64 %i.km to i32                  ; 2 uses
  br i1 %i.kn, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %i.kl, align 8, !tbaa !82
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  store i32 0, ptr %i.kp, align 4, !tbaa !84
  %i.kq = load ptr, ptr %i.kk, align 8, !tbaa !38
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %i.kk) #23, !inline_history !87
  %i.kt = load ptr, ptr %i.kk, align 8, !tbaa !38
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(16) %i.kk) #23, !inline_history !87
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.co:                                            ; preds = %bb.cm
  %i.kw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.kw, 0
  br i1 %.not.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kx = add nsw i32 %i.ko, -1
  store i32 %i.kx, ptr %i.kl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cq:                                            ; preds = %bb.co
  %i.ky = atomicrmw volatile add ptr %i.kl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i = phi i32 [ %i.ko, %bb.cp ], [ %i.ky, %bb.cq ]
  %i.kz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.kz, label %bb.cr, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.cr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kk) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cl, %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ct

bb.cs:                                            ; preds = %bb.af, %bb.aj, %bb.az, %bb.bs, %bb.ck, %bb.u, %bb.q
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.u ], [ %i.bg, %bb.q ], [ %.pn45.pn, %bb.aj ], [ %.pn42.pn, %bb.az ], [ %.pn39.pn, %bb.bs ], [ %.pn.pn, %bb.ck ], [ %i.ci, %bb.af ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn49.pn.pn

bb.ct:                                            ; preds = %bb.a, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.2 = phi i1 [ %.1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517ColorspacesMerger15mergeColorSpaceERSt10shared_ptrINS_6ConfigEERS1_INS_10ColorSpaceEERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::shared_ptr.10", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::shared_ptr.40", align 16 ; 8 uses
  %11 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %12 = alloca %"class.std::vector", align 8      ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 53 uses
  %15 = alloca %"class.std::shared_ptr.10", align 8 ; 12 uses
  %16 = alloca %"class.std::shared_ptr.40", align 16 ; 8 uses
  %17 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !298
  %i.d = tail call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #23 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.e = load ptr, ptr %1, align 8, !tbaa !31
  call void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.d)
  %i.f = load ptr, ptr %4, align 8, !tbaa !61
  %.not295 = icmp eq ptr %i.f, null
  br i1 %.not295, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !298
  %i.h = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #23
  %i.i = load ptr, ptr %4, align 8, !tbaa !61
  %i.j = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #23
  %.not = icmp eq i32 %i.h, %i.j
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.39, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = load ptr, ptr %5, align 8, !tbaa !38
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %5, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !40
  %i.r = or i32 %i.q, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.k

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #23
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.d, i64 noundef %i.s)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112: ; preds = %bb.e, %bb.f
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.40, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.41, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !55, !alias.scope !346
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !57, !alias.scope !346
  store i8 0, ptr %i.w, align 8, !tbaa !29, !alias.scope !346
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58, !noalias !346 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.z, null
  br i1 %.not5.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %24 = load ptr, ptr %23, align 8, !noalias !346 ; 2 uses
  %25 = icmp ugt ptr %i.z, %24
  %.08.i.i.i = select i1 %25, ptr %i.z, ptr %24
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !60, !noalias !346 ; 2 uses
  %i.ac = ptrtoint ptr %.08.i.i.i to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ab, i64 noundef %i.ae)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !7, !alias.scope !346 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.w
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !29, !alias.scope !346
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #25
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.l

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.w
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !29
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aq = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aq, ptr %5, align 8, !tbaa !38
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.as = getelementptr i8, ptr %i.aq, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %5, i64 %i.at
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.av, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !7  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !29
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.av, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112, %bb.f, %bb.e, %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.l
  %i.bj = load i64, ptr %i.w, align 8, !tbaa !29
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #25
  br label %.body

.body:                                            ; preds = %bb.l, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn = phi { ptr, i32 } [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %i.bf, %bb.k ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ag, %bb.h ], [ %i.bg, %bb.l ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #23
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.be, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.gb

bb.n:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b
  %i.bl = load ptr, ptr %1, align 8, !tbaa !31
  invoke void @_ZN16OpenColorIO_v2_56Config16removeColorSpaceEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.d)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.p:                                             ; preds = %bb.n, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bn = load ptr, ptr %1, align 8, !tbaa !31
  invoke void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef %i.d)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %.not296 = icmp eq ptr %i.bo, null
  br i1 %.not296, label %bb.az, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace8hasAliasEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.d) #23
  br i1 %i.bp, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.42, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122: ; preds = %bb.t
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.d)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %bb.u
  %i.bt = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.bu = load ptr, ptr %9, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef %i.bu)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %bb.gc unwind label %bb.aa

bb.x:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.y:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.z:                                             ; preds = %bb.u, %bb.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w, %bb.v
  %.082 = phi i1 [ false, %bb.w ], [ true, %bb.v ] ; 2 uses
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ca = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.aa
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !29
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.082, label %bb.ab, label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.aa
end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_517ColorspacesMerger15mergeColorSpaceERSt10shared_ptrINS_6ConfigEERS1_INS_10ColorSpaceEERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EE:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i201

bb.de:                                            ; preds = %bb.dc
  %i.lt = atomicrmw volatile add ptr %i.lg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i201

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i201: ; preds = %bb.de, %bb.dd
  %.0.i.i.i.i202 = phi i32 [ %i.lj, %bb.dd ], [ %i.lt, %bb.de ]
  %i.lu = icmp eq i32 %.0.i.i.i.i202, 1
  br i1 %i.lu, label %bb.df, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit203, !prof !86

bb.df:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i201
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lf) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit203

_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit203: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit198, %bb.db, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i201, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ec

bb.dg:                                            ; preds = %bb.co
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEC2IS1_vEERKS_IT_E.exit193
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #23
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn98 = phi { ptr, i32 } [ %i.lw, %bb.dh ], [ %i.lv, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body234

bb.dj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190
  %i.lx = load ptr, ptr %2, align 8, !tbaa !298
  call void @_ZN16OpenColorIO_v2_510ColorSpace11removeAliasEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, ptr noundef %i.ha) #23
  br label %bb.ec

bb.dk:                                            ; preds = %bb.cg
  %i.ly = load ptr, ptr %1, align 8, !tbaa !31
  %i.lz = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config7hasRoleEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ly, ptr noundef %i.ha)
          to label %bb.dl unwind label %bb.ce

bb.dl:                                            ; preds = %bb.dk
  br i1 %i.lz, label %bb.dm, label %bb.dr

bb.dm:                                            ; preds = %bb.dl
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.39, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205: ; preds = %bb.dm
  br i1 %.not.i206, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.mb = load ptr, ptr %14, align 8, !tbaa !38
  %i.mc = getelementptr i8, ptr %i.mb, i64 -24
  %i.md = load i64, ptr %i.mc, align 8
  %i.me = getelementptr inbounds i8, ptr %14, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !40
  %i.mh = or i32 %i.mg, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.me, i32 noundef %i.mh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209 unwind label %bb.ce

bb.do:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.mi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #23
  %i.mj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %i.d, i64 noundef %i.mi)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209: ; preds = %bb.dn, %bb.do
  %i.mk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.43, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
  %.not.i214 = icmp eq ptr %i.ha, null
  br i1 %.not.i214, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213
  %i.mm = load ptr, ptr %14, align 8, !tbaa !38
  %i.mn = getelementptr i8, ptr %i.mm, i64 -24
  %i.mo = load i64, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds i8, ptr %14, i64 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !40
  %i.ms = or i32 %i.mr, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.mp, i32 noundef %i.ms)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217 unwind label %bb.ce

bb.dq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213
  %i.mt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ha) #23
  %i.mu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %i.ha, i64 noundef %i.mt)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217: ; preds = %bb.dp, %bb.dq
  %i.mv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.47, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217
  %i.mw = load ptr, ptr %2, align 8, !tbaa !298
  call void @_ZN16OpenColorIO_v2_510ColorSpace11removeAliasEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, ptr noundef %i.ha) #23
  br label %bb.ec

bb.dr:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.ds unwind label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  %i.mx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.42, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221 unwind label %bb.dx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221: ; preds = %bb.ds
  %i.my = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.d)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221
  %i.mz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.my, ptr noundef nonnull @.str.48, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %bb.dx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223: ; preds = %bb.dt
  %i.na = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.du unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread

bb.du:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223
  %i.nb = load ptr, ptr %19, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.na, ptr noundef %i.nb)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %bb.du
  invoke void @__cxa_throw(ptr nonnull %i.na, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %bb.gc unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dr
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dx:                                            ; preds = %bb.dt, %bb.ds, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dv, %bb.du
  %.0 = phi i1 [ false, %bb.dv ], [ true, %bb.du ] ; 2 uses
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ng = load ptr, ptr %19, align 8, !tbaa !7    ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.dy
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !29
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br i1 %.0, label %bb.dz, label %bb.ea

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br i1 %.0, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %.pn94294 = phi { ptr, i32 } [ %i.ne, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread ], [ %i.nf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ]
  call void @__cxa_free_exception(ptr %i.na) #23
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %bb.dz, %bb.dx
  %.pn94.pn = phi { ptr, i32 } [ %.pn94294, %bb.dz ], [ %i.nf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %i.nd, %bb.dx ], [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18) #23
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dw
  %.pn94.pn.pn = phi { ptr, i32 } [ %.pn94.pn, %bb.ea ], [ %i.nc, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body234

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219, %bb.dj, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit203, %bb.cf, %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  store ptr %i.ep, ptr %20, align 8, !tbaa !55, !alias.scope !355
  store i64 0, ptr %i.eq, align 8, !tbaa !57, !alias.scope !355
  store i8 0, ptr %i.ep, align 8, !tbaa !29, !alias.scope !355
  %i.nl = load ptr, ptr %i.er, align 8, !tbaa !58, !noalias !355 ; 3 uses
  %.not5.i.i229 = icmp eq ptr %i.nl, null
  br i1 %.not5.i.i229, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %26 = load ptr, ptr %i.es, align 8, !noalias !355 ; 2 uses
  %27 = icmp ugt ptr %i.nl, %26
  %.08.i.i.i227 = select i1 %27, ptr %i.nl, ptr %26
  %i.nm = load ptr, ptr %i.et, align 8, !tbaa !60, !noalias !355 ; 2 uses
  %i.nn = ptrtoint ptr %.08.i.i.i227 to i64
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = sub i64 %i.nn, %i.no
  %i.nq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %i.nm, i64 noundef %i.np)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit236 unwind label %bb.ee ; 0 uses

bb.ee:                                            ; preds = %bb.ef, %bb.ed
  %i.nr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ns = load ptr, ptr %20, align 8, !tbaa !7, !alias.scope !355 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.ep
  br i1 %i.nt, label %.body234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i231: ; preds = %bb.ee
  %i.nu = load i64, ptr %i.ep, align 8, !tbaa !29, !alias.scope !355
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #25
  br label %.body234

bb.ef:                                            ; preds = %bb.ec
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.eu)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit236 unwind label %bb.ee

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit236: ; preds = %bb.ef, %bb.ed
  %i.nw = load ptr, ptr %i.dz, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !26
  %i.ny = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nx)
          to label %bb.eg unwind label %.loopexit

bb.eg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit236
  br i1 %i.ny, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit241 unwind label %.loopexit

bb.ei:                                            ; preds = %bb.eg
  %i.nz = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.oa = load ptr, ptr %20, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, ptr noundef %i.oa)
          to label %bb.ej unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  invoke void @__cxa_throw(ptr nonnull %i.nz, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc238 unwind label %.loopexit.split-lp

.noexc238:                                        ; preds = %bb.ej
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.nz) #23
  br label %.body239

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit241: ; preds = %bb.eh
  %i.oc = load ptr, ptr %20, align 8, !tbaa !7    ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.ep
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.a: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit241
  %i.oe = load i64, ptr %i.ep, align 8, !tbaa !29
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

.loopexit:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit236, %bb.eh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body239

.loopexit.split-lp:                               ; preds = %bb.ej
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body239

.body239:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ek
  %eh.lpad-body240 = phi { ptr, i32 } [ %i.ob, %bb.ek ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.og = load ptr, ptr %20, align 8, !tbaa !7    ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.ep
  br i1 %i.oh, label %.body234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %.body239
  %i.oi = load i64, ptr %i.ep, align 8, !tbaa !29
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oj) #25
  br label %.body234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.a, %bb.br
  %i.ok = load ptr, ptr %i.ev, align 8, !tbaa !81 ; 8 uses
  %.not.i.i248 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i248, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252, label %bb.el

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 4 uses
  %i.om = load atomic i64, ptr %i.ol acquire, align 8 ; 2 uses
  %i.on = icmp eq i64 %i.om, 4294967297
  %i.oo = trunc i64 %i.om to i32                  ; 2 uses
  br i1 %i.on, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 0, ptr %i.ol, align 8, !tbaa !82
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  store i32 0, ptr %i.op, align 4, !tbaa !84
  %i.oq = load ptr, ptr %i.ok, align 8, !tbaa !38
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(16) %i.ok) #23, !inline_history !87
  %i.ot = load ptr, ptr %i.ok, align 8, !tbaa !38
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(16) %i.ok) #23, !inline_history !87
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252

bb.en:                                            ; preds = %bb.el
  %i.ow = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i249 = icmp eq i8 %i.ow, 0
  br i1 %.not.i.i.i249, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ox = add nsw i32 %i.oo, -1
  store i32 %i.ox, ptr %i.ol, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250

bb.ep:                                            ; preds = %bb.en
  %i.oy = atomicrmw volatile add ptr %i.ol, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250: ; preds = %bb.ep, %bb.eo
  %.0.i.i.i.i251 = phi i32 [ %i.oo, %bb.eo ], [ %i.oy, %bb.ep ]
  %i.oz = icmp eq i32 %.0.i.i.i.i251, 1
  br i1 %i.oz, label %bb.eq, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252, !prof !86

bb.eq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ok) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %bb.em, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  store ptr %i.ew, ptr %14, align 8, !tbaa !38
  %i.pa = load i64, ptr %i.ey, align 8
  %i.pb = getelementptr inbounds i8, ptr %14, i64 %i.pa
  store ptr %i.ex, ptr %i.pb, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ez, align 8, !tbaa !38
  %i.pc = load ptr, ptr %i.eu, align 8, !tbaa !7  ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.fa
  br i1 %i.pd, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252
  %i.pe = load i64, ptr %i.fa, align 8, !tbaa !29
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit255

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit255: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ez, align 8, !tbaa !38
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fb) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.pg = add nuw i64 %.060323, 1                 ; 2 uses
  %i.ph = load ptr, ptr %i.ej, align 8, !tbaa !181
  %i.pi = load ptr, ptr %12, align 8, !tbaa !178  ; 2 uses
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = ashr exact i64 %i.pl, 5
  %i.pn = icmp ult i64 %i.pg, %i.pm
  br i1 %i.pn, label %bb.bp, label %._crit_edge, !llvm.loop !356

.body234:                                         ; preds = %.body239, %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i231, %bb.ce, %bb.eb, %bb.di
  %.pn100 = phi { ptr, i32 } [ %eh.lpad-body240, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.pn94.pn.pn, %bb.eb ], [ %.pn98, %bb.di ], [ %i.it, %bb.ce ], [ %i.nr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i231 ], [ %i.nr, %bb.ee ], [ %eh.lpad-body240, %.body239 ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #23
  br label %bb.er

bb.er:                                            ; preds = %.body234, %bb.cd
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %.body234 ], [ %i.is, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #23
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.cc
  %.pn100.pn.pn = phi { ptr, i32 } [ %.pn100.pn, %bb.er ], [ %i.ir, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.fy

bb.et:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEC2IS1_vEERKS_IT_E.exit146
  %i.po = load ptr, ptr %i.gp, align 8, !tbaa !81 ; 8 uses
  %.not.i.i256 = icmp eq ptr %i.po, null
  br i1 %.not.i.i256, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit260, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 4 uses
  %i.pq = load atomic i64, ptr %i.pp acquire, align 8 ; 2 uses
  %i.pr = icmp eq i64 %i.pq, 4294967297
  %i.ps = trunc i64 %i.pq to i32                  ; 2 uses
  br i1 %i.pr, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 0, ptr %i.pp, align 8, !tbaa !82
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  store i32 0, ptr %i.pt, align 4, !tbaa !84
end_hunk_6
begin_hunk_7_@_ZNK16OpenColorIO_v2_521NamedTransformsMerger12updateFamilyERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:._crit_edge.i.i
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i165: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  br i1 %i.nj, label %bb.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i166

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i171
  %i.nk = load i64, ptr %i.mq, align 8, !tbaa !57 ; 3 uses
  %i.nl = icmp ult i64 %i.nk, 16
  call void @llvm.assume(i1 %i.nl)
  %.not21.i168 = icmp eq ptr %16, %1
  br i1 %.not21.i168, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit173, label %bb.dg, !prof !86

bb.dg:                                            ; preds = %bb.df
  switch i64 %i.nk, label %bb.di [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i169
    i64 1, label %bb.dh
  ]

bb.dh:                                            ; preds = %bb.dg
  %i.nm = load i8, ptr %i.ni, align 1, !tbaa !29
  store i8 %i.nm, ptr %i.nf, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i169

bb.di:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nf, ptr align 1 %i.ni, i64 %i.nk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i169: ; preds = %bb.di, %bb.dh, %bb.dg
  %i.nn = load i64, ptr %i.mq, align 8, !tbaa !57 ; 2 uses
  store i64 %i.nn, ptr %i.mn, align 8, !tbaa !57
  %i.no = load ptr, ptr %1, align 8, !tbaa !7
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nn
  store i8 0, ptr %i.np, align 1, !tbaa !29
  %.pre.i170 = load ptr, ptr %16, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit173

.thread.i172:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i171
  store ptr %i.ni, ptr %1, align 8, !tbaa !7
  %i.nq = load <2 x i64>, ptr %i.mq, align 8, !tbaa !29
  store <2 x i64> %i.nq, ptr %i.mn, align 8, !tbaa !29
  br label %bb.dk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i166: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i165
  %i.nr = load i64, ptr %i.ng, align 8, !tbaa !29
  store ptr %i.ni, ptr %1, align 8, !tbaa !7
  %i.ns = load <2 x i64>, ptr %i.mq, align 8, !tbaa !29
  store <2 x i64> %i.ns, ptr %i.mn, align 8, !tbaa !29
  %.not.i167 = icmp eq ptr %i.nf, null
  br i1 %.not.i167, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i166
  store ptr %i.nf, ptr %16, align 8, !tbaa !7
  store i64 %i.nr, ptr %i.mp, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit173

bb.dk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i166, %.thread.i172
  store ptr %i.mp, ptr %16, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit173: ; preds = %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i169, %bb.dj, %bb.dk
  %i.nt = phi ptr [ %i.nf, %bb.dj ], [ %i.mp, %bb.dk ], [ %i.ni, %bb.df ], [ %.pre.i170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i169 ]
  store i64 0, ptr %i.mq, align 8, !tbaa !57
  store i8 0, ptr %i.nt, align 1, !tbaa !29
  %i.nu = load ptr, ptr %16, align 8, !tbaa !7    ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.mp
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit173
  %i.nw = load i64, ptr %i.mp, align 8, !tbaa !29
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ny = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.g
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.oa = load i64, ptr %i.g, align 8, !tbaa !29
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

.body:                                            ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.dl

bb.dl:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.q
  %.pn39 = phi { ptr, i32 } [ %i.na, %.body ], [ %.pn36.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn31.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn28.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn25.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.bm, %bb.q ]
  %i.oc = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.g
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.dl
  %i.oe = load i64, ptr %i.g, align 8, !tbaa !29
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn39
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_521NamedTransformsMerger25namedTransformMayBeMergedERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_14NamedTransformEEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.13", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !71     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.eg, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.f = load ptr, ptr %1, align 8, !tbaa !35
  call void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = load ptr, ptr %1, align 8, !tbaa !35
  call void @_ZNK16OpenColorIO_v2_56Config17getNamedTransformEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.e) #23
  %i.h = load ptr, ptr %4, align 8, !tbaa !61
  %i.i = icmp ne ptr %i.h, null
  %i.j = load ptr, ptr %5, align 8
  %i.k = icmp ne ptr %i.j, null
  %or.cond236 = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond236, label %bb.c, label %bb.ds

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !35
  %i.m = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config7hasRoleEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.e)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.49, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = load ptr, ptr %6, align 8, !tbaa !38
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %6, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !40
  %i.u = or i32 %i.t, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.r, i32 noundef %i.u)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.s

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #23
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.e, i64 noundef %i.v)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %bb.g, %bb.h
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.32, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.y, ptr %7, align 8, !tbaa !55, !alias.scope !412
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !57, !alias.scope !412
  store i8 0, ptr %i.y, align 8, !tbaa !29, !alias.scope !412
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58, !noalias !412 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %23 = load ptr, ptr %22, align 8, !noalias !412 ; 2 uses
  %24 = icmp ugt ptr %i.ab, %23
  %.08.i.i.i = select i1 %24, ptr %i.ab, ptr %23
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60, !noalias !412 ; 2 uses
  %i.ae = ptrtoint ptr %.08.i.i.i to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ad, i64 noundef %i.ag)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %7, align 8, !tbaa !7, !alias.scope !412 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.y
  br i1 %i.ak, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.al = load i64, ptr %i.y, align 8, !tbaa !29, !alias.scope !412
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #25
  br label %.body

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26
  %i.ar = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.as = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef %i.at)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc80 unwind label %bb.t

.noexc80:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.as) #23
  br label %.body81

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.m
  %i.av = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.y
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.ax = load i64, ptr %i.y, align 8, !tbaa !29
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.az = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.az, ptr %6, align 8, !tbaa !38
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bb = getelementptr i8, ptr %i.az, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %6, i64 %i.bc
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.be, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !7  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !29
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.be, align 8, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ds

bb.q:                                             ; preds = %bb.w, %bb.c
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.r:                                             ; preds = %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76, %bb.h, %bb.g, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.o, %bb.m, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body81

.body81:                                          ; preds = %bb.p, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %i.bq, %bb.t ], [ %i.au, %bb.p ] ; 2 uses
  %i.br = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.y
  br i1 %i.bs, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %.body81
  %i.bt = load i64, ptr %i.y, align 8, !tbaa !29
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #25
  br label %.body

.body:                                            ; preds = %.body81, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn71 = phi { ptr, i32 } [ %eh.lpad-body82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.bp, %bb.s ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ai, %bb.j ], [ %eh.lpad-body82, %.body81 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #23
  br label %bb.u

bb.u:                                             ; preds = %.body, %bb.r
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %.body ], [ %i.bo, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ef

bb.v:                                             ; preds = %bb.d
  %i.bv = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %.not237 = icmp eq ptr %i.bv, null
  br i1 %.not237, label %bb.be, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) #23
  %i.bx = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.bw, ptr noundef %i.e)
          to label %bb.x unwind label %bb.q

bb.x:                                             ; preds = %bb.w
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.y, label %bb.ao

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.z unwind label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.49, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %bb.z
  %.not.i88 = icmp eq ptr %i.e, null
  br i1 %.not.i88, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.ca = load ptr, ptr %8, align 8, !tbaa !38
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %8, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !40
  %i.cg = or i32 %i.cf, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cd, i32 noundef %i.cg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91 unwind label %bb.al

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.ch = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #23
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %i.e, i64 noundef %i.ch)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91: ; preds = %bb.aa, %bb.ab
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.50, i64 noundef 57)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.ck, ptr %9, align 8, !tbaa !55, !alias.scope !419
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cl, align 8, !tbaa !57, !alias.scope !419
  store i8 0, ptr %i.ck, align 8, !tbaa !29, !alias.scope !419
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !58, !noalias !419 ; 3 uses
  %.not5.i.i96 = icmp eq ptr %i.cn, null
  br i1 %.not5.i.i96, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %25 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %26 = load ptr, ptr %25, align 8, !noalias !419 ; 2 uses
  %27 = icmp ugt ptr %i.cn, %26
  %.08.i.i.i95 = select i1 %27, ptr %i.cn, ptr %26
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !60, !noalias !419 ; 2 uses
  %i.cq = ptrtoint ptr %.08.i.i.i95 to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.cp, i64 noundef %i.cs)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit103 unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !419 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ck
  br i1 %i.cw, label %.body101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98: ; preds = %bb.ad
  %i.cx = load i64, ptr %i.ck, align 8, !tbaa !29, !alias.scope !419
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #25
  br label %.body101

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.cz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit103 unwind label %bb.ad

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit103: ; preds = %bb.ae, %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26
  %i.dd = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit103
  br i1 %i.dd, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit108 unwind label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.de = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.df = load ptr, ptr %9, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef %i.df)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc105 unwind label %bb.am

.noexc105:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.de) #23
  br label %.body106

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit108: ; preds = %bb.ag
  %i.dh = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ck
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit108
  %i.dj = load i64, ptr %i.ck, align 8, !tbaa !29
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  %i.dl = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dl, ptr %8, align 8, !tbaa !38
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dn = getelementptr i8, ptr %i.dl, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %8, i64 %i.do
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dq, align 8, !tbaa !38
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !7  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !29
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit114

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dq, align 8, !tbaa !38
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dx) #23
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dy) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ds

bb.ak:                                            ; preds = %bb.y
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91, %bb.ab, %bb.aa, %bb.z
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body101

bb.am:                                            ; preds = %bb.ai, %bb.ag, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit103
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body106

.body106:                                         ; preds = %bb.aj, %bb.am
  %eh.lpad-body107 = phi { ptr, i32 } [ %i.eb, %bb.am ], [ %i.dg, %bb.aj ] ; 2 uses
  %i.ec = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.ck
  br i1 %i.ed, label %.body101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %.body106
  %i.ee = load i64, ptr %i.ck, align 8, !tbaa !29
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #25
  br label %.body101

.body101:                                         ; preds = %.body106, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98
  %.pn68 = phi { ptr, i32 } [ %eh.lpad-body107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.ea, %bb.al ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98 ], [ %i.cu, %bb.ad ], [ %eh.lpad-body107, %.body106 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #23
  br label %bb.an

bb.an:                                            ; preds = %.body101, %bb.ak
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %.body101 ], [ %i.dz, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ef

bb.ao:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.ap unwind label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.49, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119: ; preds = %bb.ap
  %.not.i120 = icmp eq ptr %i.e, null
  br i1 %.not.i120, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119
  %i.eh = load ptr, ptr %10, align 8, !tbaa !38
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %10, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = load i32, ptr %i.el, align 8, !tbaa !40
  %i.en = or i32 %i.em, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ek, i32 noundef %i.en)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123.a unwind label %bb.bb

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119
  %i.eo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #23
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.e, i64 noundef %i.eo)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123.a unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123.a: ; preds = %bb.aq, %bb.ar
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.51, i64 noundef 63)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123.a
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.er, ptr %11, align 8, !tbaa !55, !alias.scope !426
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.es, align 8, !tbaa !57, !alias.scope !426
  store i8 0, ptr %i.er, align 8, !tbaa !29, !alias.scope !426
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !58, !noalias !426 ; 3 uses
  %.not5.i.i128 = icmp eq ptr %i.eu, null
  br i1 %.not5.i.i128, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %29 = load ptr, ptr %28, align 8, !noalias !426 ; 2 uses
  %30 = icmp ugt ptr %i.eu, %29
  %.08.i.i.i125 = select i1 %30, ptr %i.eu, ptr %29
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !60, !noalias !426 ; 2 uses
  %i.ex = ptrtoint ptr %.08.i.i.i125 to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ew, i64 noundef %i.ez)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit135 unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %11, align 8, !tbaa !7, !alias.scope !426 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.er
  br i1 %i.fd, label %.body133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i130: ; preds = %bb.at
  %i.fe = load i64, ptr %i.er, align 8, !tbaa !29, !alias.scope !426
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #25
  br label %.body133

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.fg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit135 unwind label %bb.at

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit135: ; preds = %bb.au, %bb.as
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !26
  %i.fk = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit135
  br i1 %i.fk, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit140 unwind label %bb.bc

bb.ax:                                            ; preds = %bb.av
  %i.fl = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.fm = load ptr, ptr %11, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef %i.fm)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.fl, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc137 unwind label %bb.bc

.noexc137:                                        ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fl) #23
  br label %.body138

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit140: ; preds = %bb.aw
  %i.fo = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.er
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit140
  %i.fq = load i64, ptr %i.er, align 8, !tbaa !29
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.fs = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fs, ptr %10, align 8, !tbaa !38
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fu = getelementptr i8, ptr %i.fs, i64 -24
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds i8, ptr %10, i64 %i.fv
  store ptr %i.ft, ptr %i.fw, align 8, !tbaa !38
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fx, align 8, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !7  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !29
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit146

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fx, align 8, !tbaa !38
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ge) #23
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gf) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ds

bb.ba:                                            ; preds = %bb.ao
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123.a, %bb.ar, %bb.aq, %bb.ap
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body133

bb.bc:                                            ; preds = %bb.ay, %bb.aw, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit135
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body138

.body138:                                         ; preds = %bb.az, %bb.bc
  %eh.lpad-body139 = phi { ptr, i32 } [ %i.gi, %bb.bc ], [ %i.fn, %bb.az ] ; 2 uses
  %i.gj = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.er
  br i1 %i.gk, label %.body133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %.body138
  %i.gl = load i64, ptr %i.er, align 8, !tbaa !29
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #25
  br label %.body133

.body133:                                         ; preds = %.body138, %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i130
  %.pn65 = phi { ptr, i32 } [ %eh.lpad-body139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.gh, %bb.bb ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i130 ], [ %i.fb, %bb.at ], [ %eh.lpad-body139, %.body138 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #23
  br label %bb.bd

bb.bd:                                            ; preds = %.body133, %bb.ba
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %.body133 ], [ %i.gg, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ef

bb.be:                                            ; preds = %bb.v
  %i.gn = load ptr, ptr %5, align 8, !tbaa !71
  %.not238 = icmp eq ptr %i.gn, null
  br i1 %.not238, label %bb.ds, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %3, label %bb.bg, label %bb.bw

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.bh unwind label %bb.bs

bb.bh:                                            ; preds = %bb.bg
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.49, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151.a unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151.a: ; preds = %bb.bh
  %.not.i152 = icmp eq ptr %i.e, null
  br i1 %.not.i152, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151.a
  %i.gp = load ptr, ptr %12, align 8, !tbaa !38
  %i.gq = getelementptr i8, ptr %i.gp, i64 -24
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds i8, ptr %12, i64 %i.gr ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !40
  %i.gv = or i32 %i.gu, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.gs, i32 noundef %i.gv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155 unwind label %bb.bt

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151.a
  %i.gw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #23
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.e, i64 noundef %i.gw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155 unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155: ; preds = %bb.bi, %bb.bj
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.52, i64 noundef 76)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157 unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  store ptr %i.gz, ptr %13, align 8, !tbaa !55, !alias.scope !433
  %i.ha = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.ha, align 8, !tbaa !57, !alias.scope !433
  store i8 0, ptr %i.gz, align 8, !tbaa !29, !alias.scope !433
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !58, !noalias !433 ; 3 uses
  %.not5.i.i160 = icmp eq ptr %i.hc, null
  br i1 %.not5.i.i160, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157
  %31 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %32 = load ptr, ptr %31, align 8, !noalias !433 ; 2 uses
  %33 = icmp ugt ptr %i.hc, %32
  %.08.i.i.i155 = select i1 %33, ptr %i.hc, ptr %32
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !60, !noalias !433 ; 2 uses
  %i.hf = ptrtoint ptr %.08.i.i.i155 to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.he, i64 noundef %i.hh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit167 unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !433 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.gz
  br i1 %i.hl, label %.body165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162: ; preds = %bb.bl
  %i.hm = load i64, ptr %i.gz, align 8, !tbaa !29, !alias.scope !433
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #25
  br label %.body165

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ho)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit167 unwind label %bb.bl

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit167: ; preds = %bb.bm, %bb.bk
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !26
  %i.hs = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hr)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit167
  br i1 %i.hs, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit172 unwind label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  %i.ht = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.hu = load ptr, ptr %13, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef %i.hu)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_throw(ptr nonnull %i.ht, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc169 unwind label %bb.bu

.noexc169:                                        ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ht) #23
  br label %.body170

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit172: ; preds = %bb.bo
  %i.hw = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.gz
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.a: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit172
  %i.hy = load i64, ptr %i.gz, align 8, !tbaa !29
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.a
  %i.ia = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ia, ptr %12, align 8, !tbaa !38
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ic = getelementptr i8, ptr %i.ia, i64 -24
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds i8, ptr %12, i64 %i.id
  store ptr %i.ib, ptr %i.ie, align 8, !tbaa !38
  %i.if = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.if, align 8, !tbaa !38
  %i.ig = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !7  ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !29
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit178

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i176
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.if, align 8, !tbaa !38
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.im) #23
  %i.in = getelementptr inbounds nuw i8, ptr %12, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.in) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ds

bb.bs:                                            ; preds = %bb.bg
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155, %bb.bj, %bb.bi, %bb.bh
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.bu:                                            ; preds = %bb.bq, %bb.bo, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit167
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body170

.body170:                                         ; preds = %bb.br, %bb.bu
  %eh.lpad-body171 = phi { ptr, i32 } [ %i.iq, %bb.bu ], [ %i.hv, %bb.br ] ; 2 uses
  %i.ir = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.gz
  br i1 %i.is, label %.body165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %.body170
  %i.it = load i64, ptr %i.gz, align 8, !tbaa !29
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #25
  br label %.body165

.body165:                                         ; preds = %.body170, %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179, %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162
  %.pn62 = phi { ptr, i32 } [ %eh.lpad-body171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179 ], [ %i.ip, %bb.bt ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162 ], [ %i.hj, %bb.bl ], [ %eh.lpad-body171, %.body170 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #23
  br label %bb.bv

bb.bv:                                            ; preds = %.body165, %bb.bs
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %.body165 ], [ %i.io, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ef

bb.bw:                                            ; preds = %bb.bf
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !26
  %i.iy = invoke noundef i32 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters18getNamedTransformsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ix)
          to label %bb.bx unwind label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.iz = load ptr, ptr %5, align 8, !tbaa !71    ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !38
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = call noundef ptr %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %i.iz) #23
  %i.je = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.jd, ptr noundef %i.e)
          to label %bb.by unwind label %bb.cg

bb.by:                                            ; preds = %bb.bx
  %i.jf = icmp eq i32 %i.je, 0
  %i.jg = and i32 %i.iy, -3
  %or.cond = icmp eq i32 %i.jg, 0                 ; 2 uses
  br i1 %i.jf, label %bb.bz, label %bb.cv

bb.bz:                                            ; preds = %bb.by
  br i1 %or.cond, label %bb.ca, label %bb.cl

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.cb unwind label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.49, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183 unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183: ; preds = %bb.cb
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %i.e)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.53, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185: ; preds = %bb.cc
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185
  %i.jk = load ptr, ptr %i.iv, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !26
  %i.jm = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jl)
          to label %bb.ce unwind label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nonnull align 8 poison, ptr noundef nonnull %15, i1 noundef zeroext %i.jm)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  %i.jn = load ptr, ptr %15, align 8, !tbaa !7    ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.cf
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !29
  %i.jr = add i64 %i.jq, 1
end_hunk_7
begin_hunk_8_@_ZN16OpenColorIO_v2_521NamedTransformsMerger19mergeNamedTransformERSt10shared_ptrINS_6ConfigEERS1_INS_14NamedTransformEEbRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EE:bb.a
bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192
  %i.hz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ft) #23
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.ft, i64 noundef %i.hz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196 unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196: ; preds = %bb.bs, %bb.bt
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.46, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198 unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196
  %i.ic = load ptr, ptr %14, align 8, !tbaa !61
  %i.id = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ic) #23 ; 2 uses
  %.not.i199 = icmp eq ptr %i.id, null
  br i1 %.not.i199, label %.invoke520, label %.invoke

.invoke520:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
  %i.ie = load ptr, ptr %13, align 8, !tbaa !38
  %i.if = getelementptr i8, ptr %i.ie, i64 -24
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = getelementptr inbounds i8, ptr %13, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !40
  %i.ik = or i32 %i.ij, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ih, i32 noundef %i.ik)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223.invoke unwind label %bb.bn

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
  %.sink = phi ptr [ %i.gy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171 ], [ %i.id, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198 ] ; 2 uses
  %i.il = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink) #23
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %.sink, i64 noundef %i.il)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223.invoke unwind label %bb.bn ; 0 uses

bb.bu:                                            ; preds = %bb.bo
  %i.in = load ptr, ptr %1, align 8, !tbaa !31
  %i.io = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config7hasRoleEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.in, ptr noundef %i.ft)
          to label %bb.bv unwind label %bb.bn

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.io, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.60, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206 unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206: ; preds = %bb.bw
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.cv, i64 noundef %i.cw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209 unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.61, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211 unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
  br i1 %.not.i212, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
  %i.is = load ptr, ptr %13, align 8, !tbaa !38
  %i.it = getelementptr i8, ptr %i.is, i64 -24
  %i.iu = load i64, ptr %i.it, align 8
  %i.iv = getelementptr inbounds i8, ptr %13, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !40
  %i.iy = or i32 %i.ix, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.iv, i32 noundef %i.iy)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %bb.bn

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
  %i.iz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #23
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.g, i64 noundef %i.iz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %bb.bx, %bb.by
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217 unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.43, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217
  %.not.i220 = icmp eq ptr %i.ft, null
  br i1 %.not.i220, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  %i.jd = load ptr, ptr %13, align 8, !tbaa !38
  %i.je = getelementptr i8, ptr %i.jd, i64 -24
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = getelementptr inbounds i8, ptr %13, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !40
  %i.jj = or i32 %i.ji, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.jg, i32 noundef %i.jj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223.invoke unwind label %bb.bn

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  %i.jk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ft) #23
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.ft, i64 noundef %i.jk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223.invoke unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223.invoke: ; preds = %.invoke520, %.invoke, %bb.ca, %bb.bz
  %i.jm = phi ptr [ @.str.1, %.invoke ], [ @.str.47, %bb.ca ], [ @.str.1, %.invoke520 ], [ @.str.47, %bb.bz ]
  %i.jn = phi i64 [ 2, %.invoke ], [ 29, %bb.ca ], [ 2, %.invoke520 ], [ 29, %bb.bz ]
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.jm, i64 noundef %i.jn)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177 unwind label %bb.bn ; 0 uses

bb.cb:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.57, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227 unwind label %bb.ch ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227: ; preds = %bb.cc
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.g)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull @.str.48, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229 unwind label %bb.ch ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229: ; preds = %bb.cd
  %i.js = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.ce unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.thread

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229
  %i.jt = load ptr, ptr %16, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.js, ptr noundef %i.jt)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  invoke void @__cxa_throw(ptr nonnull %i.js, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %bb.hc unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cb
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cd, %bb.cc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cf, %bb.ce
  %.078 = phi i1 [ false, %bb.cf ], [ true, %bb.ce ] ; 2 uses
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jy = load ptr, ptr %16, align 8, !tbaa !7    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.ci
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !29
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br i1 %.078, label %bb.cj, label %bb.ck

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br i1 %.078, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %.pn114386 = phi { ptr, i32 } [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.thread ], [ %i.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ]
  call void @__cxa_free_exception(ptr %i.js) #23
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %bb.cj, %bb.ch
  %.pn114.pn = phi { ptr, i32 } [ %.pn114386, %bb.cj ], [ %i.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %i.jv, %bb.ch ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #23
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cg
  %.pn114.pn.pn = phi { ptr, i32 } [ %.pn114.pn, %bb.ck ], [ %i.ju, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223.invoke
  %i.kd = load ptr, ptr %2, align 8, !tbaa !434   ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !38
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %i.kd, ptr noundef %i.ft) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  store ptr %i.cx, ptr %17, align 8, !tbaa !55, !alias.scope !444
  store i64 0, ptr %i.cy, align 8, !tbaa !57, !alias.scope !444
  store i8 0, ptr %i.cx, align 8, !tbaa !29, !alias.scope !444
  %i.kh = load ptr, ptr %i.cz, align 8, !tbaa !58, !noalias !444 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.kh, null
  br i1 %.not5.i.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177
  %26 = load ptr, ptr %i.da, align 8, !noalias !444 ; 2 uses
  %27 = icmp ugt ptr %i.kh, %26
  %.08.i.i.i = select i1 %27, ptr %i.kh, ptr %26
  %i.ki = load ptr, ptr %i.db, align 8, !tbaa !60, !noalias !444 ; 2 uses
  %i.kj = ptrtoint ptr %.08.i.i.i to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.ki, i64 noundef %i.kl)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.cn ; 0 uses

bb.cn:                                            ; preds = %bb.co, %bb.cm
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ko = load ptr, ptr %17, align 8, !tbaa !7, !alias.scope !444 ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.cx
  br i1 %i.kp, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cn
  %i.kq = load i64, ptr %i.cx, align 8, !tbaa !29, !alias.scope !444
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #25
  br label %.body

bb.co:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.dc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.cn

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.co, %bb.cm
  %i.ks = load ptr, ptr %i.ce, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !26
  %i.ku = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kt)
          to label %bb.cp unwind label %.loopexit

bb.cp:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ku, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %.loopexit

bb.cr:                                            ; preds = %bb.cp
  %i.kv = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.kw = load ptr, ptr %17, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, ptr noundef %i.kw)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  invoke void @__cxa_throw(ptr nonnull %i.kv, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc235 unwind label %.loopexit.split-lp

.noexc235:                                        ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kv) #23
  br label %.body236

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.cq
  %i.ky = load ptr, ptr %17, align 8, !tbaa !7    ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.cx
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.la = load i64, ptr %i.cx, align 8, !tbaa !29
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

.loopexit:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.cq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body236

.loopexit.split-lp:                               ; preds = %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body236

.body236:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ct
  %eh.lpad-body237 = phi { ptr, i32 } [ %i.kx, %bb.ct ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.lc = load ptr, ptr %17, align 8, !tbaa !7    ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.cx
  br i1 %i.ld, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %.body236
  %i.le = load i64, ptr %i.cx, align 8, !tbaa !29
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #25
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.lg = load ptr, ptr %1, align 8, !tbaa !31
  call void @_ZNK16OpenColorIO_v2_56Config17getNamedTransformEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.lg, ptr noundef %i.ft) #23
  %i.lh = load ptr, ptr %18, align 8, !tbaa !71   ; 3 uses
  %.not392 = icmp eq ptr %i.lh, null
  br i1 %.not392, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !38
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = call noundef ptr %i.lk(ptr noundef nonnull align 8 dereferenceable(8) %i.lh) #23
  %i.lm = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.ll, ptr noundef %i.ft)
          to label %bb.cv unwind label %bb.de

bb.cv:                                            ; preds = %bb.cu
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %bb.cw, label %bb.dg

bb.cw:                                            ; preds = %bb.cv
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.60, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit245 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit245: ; preds = %bb.cw
  %i.lp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.cv, i64 noundef %i.cw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit245
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.61, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248
  br i1 %.not.i212, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250
  %i.lr = load ptr, ptr %13, align 8, !tbaa !38
  %i.ls = getelementptr i8, ptr %i.lr, i64 -24
  %i.lt = load i64, ptr %i.ls, align 8
  %i.lu = getelementptr inbounds i8, ptr %13, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !40
  %i.lx = or i32 %i.lw, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.lu, i32 noundef %i.lx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 unwind label %bb.de

bb.cy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250
  %i.ly = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #23
  %i.lz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.g, i64 noundef %i.ly)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254: ; preds = %bb.cx, %bb.cy
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.43, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256
  %.not.i259 = icmp eq ptr %i.ft, null
  br i1 %.not.i259, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258
  %i.mc = load ptr, ptr %13, align 8, !tbaa !38
  %i.md = getelementptr i8, ptr %i.mc, i64 -24
  %i.me = load i64, ptr %i.md, align 8
  %i.mf = getelementptr inbounds i8, ptr %13, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !40
  %i.mi = or i32 %i.mh, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.mf, i32 noundef %i.mi)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262 unwind label %bb.de

bb.da:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258
  %i.mj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ft) #23
  %i.mk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.ft, i64 noundef %i.mj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262: ; preds = %bb.cz, %bb.da
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.62, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262
  %i.mm = load ptr, ptr %18, align 8, !tbaa !71   ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !38
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = call noundef ptr %i.mp(ptr noundef nonnull align 8 dereferenceable(8) %i.mm) #23 ; 3 uses
  %.not.i265 = icmp eq ptr %i.mq, null
  br i1 %.not.i265, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264
  %i.mr = load ptr, ptr %13, align 8, !tbaa !38
  %i.ms = getelementptr i8, ptr %i.mr, i64 -24
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds i8, ptr %13, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !40
  %i.mx = or i32 %i.mw, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.mu, i32 noundef %i.mx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268 unwind label %bb.de

bb.dc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264
  %i.my = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mq) #23
  %i.mz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.mq, i64 noundef %i.my)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268 unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268: ; preds = %bb.db, %bb.dc
  %i.na = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270 unwind label %bb.de ; 0 uses
end_hunk_8
begin_hunk_9_@_ZN16OpenColorIO_v2_521NamedTransformsMerger19mergeNamedTransformERSt10shared_ptrINS_6ConfigEERS1_INS_14NamedTransformEEbRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EE:bb.a
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #23, !inline_history !85
  %i.qc = load ptr, ptr %i.pt, align 8, !tbaa !38
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8
  call void %i.qe(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #23, !inline_history !85
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit305

bb.dw:                                            ; preds = %bb.du
  %i.qf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i302 = icmp eq i8 %i.qf, 0
  br i1 %.not.i.i.i302, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qg = add nsw i32 %i.px, -1
  store i32 %i.qg, ptr %i.pu, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i303

bb.dy:                                            ; preds = %bb.dw
  %i.qh = atomicrmw volatile add ptr %i.pu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i303

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i303: ; preds = %bb.dy, %bb.dx
  %.0.i.i.i.i304 = phi i32 [ %i.px, %bb.dx ], [ %i.qh, %bb.dy ]
  %i.qi = icmp eq i32 %.0.i.i.i.i304, 1
  br i1 %i.qi, label %bb.dz, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit305, !prof !86

bb.dz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i303
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit305

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit305: ; preds = %bb.dt, %bb.dv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i303, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.qj = load ptr, ptr %i.df, align 8, !tbaa !81 ; 8 uses
  %.not.i.i306 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i306, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit305
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 4 uses
  %i.ql = load atomic i64, ptr %i.qk acquire, align 8 ; 2 uses
  %i.qm = icmp eq i64 %i.ql, 4294967297
  %i.qn = trunc i64 %i.ql to i32                  ; 2 uses
  br i1 %i.qm, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.qk, align 8, !tbaa !82
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 12
  store i32 0, ptr %i.qo, align 4, !tbaa !84
  %i.qp = load ptr, ptr %i.qj, align 8, !tbaa !38
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #23, !inline_history !436
  %i.qs = load ptr, ptr %i.qj, align 8, !tbaa !38
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #23, !inline_history !436
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310

bb.ec:                                            ; preds = %bb.ea
  %i.qv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i307 = icmp eq i8 %i.qv, 0
  br i1 %.not.i.i.i307, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.qw = add nsw i32 %i.qn, -1
  store i32 %i.qw, ptr %i.qk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i308

bb.ee:                                            ; preds = %bb.ec
  %i.qx = atomicrmw volatile add ptr %i.qk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i308

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i308: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i309 = phi i32 [ %i.qn, %bb.ed ], [ %i.qx, %bb.ee ]
  %i.qy = icmp eq i32 %.0.i.i.i.i309, 1
  br i1 %i.qy, label %bb.ef, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310, !prof !86

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i308
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310

_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit305, %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i308, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.ev

bb.eg:                                            ; preds = %bb.do
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_514NamedTransformEEC2IS1_vEERKS_IT_E.exit300
  %i.ra = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #23
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn122 = phi { ptr, i32 } [ %i.ra, %bb.eh ], [ %i.qz, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.body325

bb.ej:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297
  %i.rb = load ptr, ptr %2, align 8, !tbaa !434   ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !38
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 56
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(8) %i.rb, ptr noundef %i.ft) #23
  br label %bb.ev

bb.ek:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %21)
          to label %bb.el unwind label %bb.ep

bb.el:                                            ; preds = %bb.ek
  %i.rf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.57, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312 unwind label %bb.eq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312: ; preds = %bb.el
  %i.rg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %i.g)
          to label %bb.em unwind label %bb.eq

bb.em:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312
  %i.rh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rg, ptr noundef nonnull @.str.48, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314 unwind label %bb.eq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314: ; preds = %bb.em
  %i.ri = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(112) %21)
          to label %bb.en unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.thread

bb.en:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314
  %i.rj = load ptr, ptr %22, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ri, ptr noundef %i.rj)
          to label %bb.eo unwind label %bb.er

bb.eo:                                            ; preds = %bb.en
  invoke void @__cxa_throw(ptr nonnull %i.ri, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %bb.hc unwind label %bb.er

bb.ep:                                            ; preds = %bb.ek
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eq:                                            ; preds = %bb.em, %bb.el, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314
  %i.rm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.es

bb.er:                                            ; preds = %bb.eo, %bb.en
  %.0 = phi i1 [ false, %bb.eo ], [ true, %bb.en ] ; 2 uses
  %i.rn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ro = load ptr, ptr %22, align 8, !tbaa !7    ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %bb.er
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !29
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.0, label %bb.es, label %bb.et

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.0, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317
  %.pn118389 = phi { ptr, i32 } [ %i.rm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.thread ], [ %i.rn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ], [ %i.rn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315 ]
  call void @__cxa_free_exception(ptr %i.ri) #23
  br label %bb.et

bb.et:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %bb.es, %bb.eq
  %.pn118.pn = phi { ptr, i32 } [ %.pn118389, %bb.es ], [ %i.rn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ], [ %i.rl, %bb.eq ], [ %i.rn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %21) #23
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.ep
  %.pn118.pn.pn = phi { ptr, i32 } [ %.pn118.pn, %bb.et ], [ %i.rk, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %.body325

bb.ev:                                            ; preds = %bb.ej, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310, %bb.df, %bb.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  store ptr %i.dg, ptr %23, align 8, !tbaa !55, !alias.scope !451
  store i64 0, ptr %i.dh, align 8, !tbaa !57, !alias.scope !451
  store i8 0, ptr %i.dg, align 8, !tbaa !29, !alias.scope !451
  %i.rt = load ptr, ptr %i.cz, align 8, !tbaa !58, !noalias !451 ; 3 uses
  %.not5.i.i320 = icmp eq ptr %i.rt, null
  br i1 %.not5.i.i320, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %28 = load ptr, ptr %i.da, align 8, !noalias !451 ; 2 uses
  %29 = icmp ugt ptr %i.rt, %28
  %.08.i.i.i318 = select i1 %29, ptr %i.rt, ptr %28
  %i.ru = load ptr, ptr %i.db, align 8, !tbaa !60, !noalias !451 ; 2 uses
  %i.rv = ptrtoint ptr %.08.i.i.i318 to i64
  %i.rw = ptrtoint ptr %i.ru to i64
  %i.rx = sub i64 %i.rv, %i.rw
  %i.ry = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef 0, i64 noundef 0, ptr noundef %i.ru, i64 noundef %i.rx)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit327 unwind label %bb.ex ; 0 uses

bb.ex:                                            ; preds = %bb.ey, %bb.ew
  %i.rz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sa = load ptr, ptr %23, align 8, !tbaa !7, !alias.scope !451 ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.dg
  br i1 %i.sb, label %.body325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322: ; preds = %bb.ex
  %i.sc = load i64, ptr %i.dg, align 8, !tbaa !29, !alias.scope !451
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #25
  br label %.body325

bb.ey:                                            ; preds = %bb.ev
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.dc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit327 unwind label %bb.ex

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit327: ; preds = %bb.ey, %bb.ew
  %i.se = load ptr, ptr %i.ce, align 8, !tbaa !13, !nonnull !24, !align !25
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !26
  %i.sg = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sf)
          to label %bb.ez unwind label %.loopexit393

bb.ez:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit327
  br i1 %i.sg, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit332 unwind label %.loopexit393

bb.fb:                                            ; preds = %bb.ez
  %i.sh = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.si = load ptr, ptr %23, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.sh, ptr noundef %i.si)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  invoke void @__cxa_throw(ptr nonnull %i.sh, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc329 unwind label %.loopexit.split-lp394

.noexc329:                                        ; preds = %bb.fc
  unreachable

bb.fd:                                            ; preds = %bb.fb
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.sh) #23
  br label %.body330

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit332: ; preds = %bb.fa
  %i.sk = load ptr, ptr %23, align 8, !tbaa !7    ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %i.dg
  br i1 %i.sl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333.a: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit332
  %i.sm = load i64, ptr %i.dg, align 8, !tbaa !29
  %i.sn = add i64 %i.sm, 1
  call void @_ZdlPvm(ptr noundef %i.sk, i64 noundef %i.sn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

.loopexit393:                                     ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit327, %bb.fa
  %lpad.loopexit395 = landingpad { ptr, i32 }
          cleanup
  br label %.body330

.loopexit.split-lp394:                            ; preds = %bb.fc
  %lpad.loopexit.split-lp396 = landingpad { ptr, i32 }
          cleanup
  br label %.body330

.body330:                                         ; preds = %.loopexit393, %.loopexit.split-lp394, %bb.fd
  %eh.lpad-body331 = phi { ptr, i32 } [ %i.sj, %bb.fd ], [ %lpad.loopexit395, %.loopexit393 ], [ %lpad.loopexit.split-lp396, %.loopexit.split-lp394 ] ; 2 uses
  %i.so = load ptr, ptr %23, align 8, !tbaa !7    ; 2 uses
  %i.sp = icmp eq ptr %i.so, %i.dg
  br i1 %i.sp, label %.body325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %.body330
  %i.sq = load i64, ptr %i.dg, align 8, !tbaa !29
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.sr) #25
  br label %.body325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.ss = load ptr, ptr %i.di, align 8, !tbaa !81 ; 8 uses
  %.not.i.i339 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i339, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit343, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8 ; 4 uses
  %i.su = load atomic i64, ptr %i.st acquire, align 8 ; 2 uses
  %i.sv = icmp eq i64 %i.su, 4294967297
  %i.sw = trunc i64 %i.su to i32                  ; 2 uses
  br i1 %i.sv, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i32 0, ptr %i.st, align 8, !tbaa !82
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ss, i64 12
  store i32 0, ptr %i.sx, align 4, !tbaa !84
  %i.sy = load ptr, ptr %i.ss, align 8, !tbaa !38
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.ta = load ptr, ptr %i.sz, align 8
  call void %i.ta(ptr noundef nonnull align 8 dereferenceable(16) %i.ss) #23, !inline_history !85
  %i.tb = load ptr, ptr %i.ss, align 8, !tbaa !38
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.td = load ptr, ptr %i.tc, align 8
  call void %i.td(ptr noundef nonnull align 8 dereferenceable(16) %i.ss) #23, !inline_history !85
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit343

bb.fg:                                            ; preds = %bb.fe
  %i.te = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i340 = icmp eq i8 %i.te, 0
  br i1 %.not.i.i.i340, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.tf = add nsw i32 %i.sw, -1
  store i32 %i.tf, ptr %i.st, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i341

bb.fi:                                            ; preds = %bb.fg
  %i.tg = atomicrmw volatile add ptr %i.st, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i341

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i341: ; preds = %bb.fi, %bb.fh
  %.0.i.i.i.i342 = phi i32 [ %i.sw, %bb.fh ], [ %i.tg, %bb.fi ]
  %i.th = icmp eq i32 %.0.i.i.i.i342, 1
  br i1 %i.th, label %bb.fj, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit343, !prof !86

bb.fj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i341
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ss) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit343

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit343: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %bb.ff, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i341, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.ti = load ptr, ptr %i.dj, align 8, !tbaa !81 ; 8 uses
  %.not.i.i344 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i344, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit343
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 4 uses
  %i.tk = load atomic i64, ptr %i.tj acquire, align 8 ; 2 uses
  %i.tl = icmp eq i64 %i.tk, 4294967297
  %i.tm = trunc i64 %i.tk to i32                  ; 2 uses
  br i1 %i.tl, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.tj, align 8, !tbaa !82
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ti, i64 12
  store i32 0, ptr %i.tn, align 4, !tbaa !84
  %i.to = load ptr, ptr %i.ti, align 8, !tbaa !38
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tq = load ptr, ptr %i.tp, align 8
  call void %i.tq(ptr noundef nonnull align 8 dereferenceable(16) %i.ti) #23, !inline_history !87
  %i.tr = load ptr, ptr %i.ti, align 8, !tbaa !38
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.tt = load ptr, ptr %i.ts, align 8
  call void %i.tt(ptr noundef nonnull align 8 dereferenceable(16) %i.ti) #23, !inline_history !87
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fm:                                            ; preds = %bb.fk
  %i.tu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i345 = icmp eq i8 %i.tu, 0
  br i1 %.not.i.i.i345, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.tv = add nsw i32 %i.tm, -1
  store i32 %i.tv, ptr %i.tj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i346

bb.fo:                                            ; preds = %bb.fm
  %i.tw = atomicrmw volatile add ptr %i.tj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i346

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i346: ; preds = %bb.fo, %bb.fn
  %.0.i.i.i.i347 = phi i32 [ %i.tm, %bb.fn ], [ %i.tw, %bb.fo ]
  %i.tx = icmp eq i32 %.0.i.i.i.i347, 1
  br i1 %i.tx, label %bb.fp, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.fp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i346
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ti) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit343, %bb.fl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i346, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  store ptr %i.dk, ptr %13, align 8, !tbaa !38
  %i.ty = load i64, ptr %i.dm, align 8
  %i.tz = getelementptr inbounds i8, ptr %13, i64 %i.ty
  store ptr %i.dl, ptr %i.tz, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dn, align 8, !tbaa !38
  %i.ua = load ptr, ptr %i.dc, align 8, !tbaa !7  ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.do
  br i1 %i.ub, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.uc = load i64, ptr %i.do, align 8, !tbaa !29
  %i.ud = add i64 %i.uc, 1
end_hunk_9
