Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/enum?download=true
inline.NumInlined: 840
inline.NumDeleted: 207
begin_hunk_0_@_ZN7testing8internal21TypeParameterizedTestI4EnumNS0_11TemplateSelI25Enum_Functionalities_TestEENS0_5TypesIN4test15enum_is_bitmaskEJNS7_15enum_as_bitmaskEEEEE8RegisterEPKcRKNS0_12CodeLocationESD_SD_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISN_EE:bb.a
  %i.n = icmp ne i8 %i.k, 0                       ; 3 uses
  %i.o = select i1 %i.n, ptr @.str.6, ptr @.str
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.p = zext i1 %i.n to i64                      ; 3 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !62 ; 5 uses
  %i.r = sub i64 9223372036854775807, %i.q
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc41 unwind label %bb.ax

.noexc41:                                         ; preds = %bb.h
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.g
  %i.t = add i64 %i.q, %i.p                       ; 3 uses
  %i.u = load ptr, ptr %10, align 8, !tbaa !18, !noalias !62 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.w = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  br i1 %i.n, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  store i8 47, ptr %i.z, align 1, !tbaa !19, !noalias !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.q, i64 noundef 0, ptr noundef nonnull %i.o, i64 noundef %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.ax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  store i64 %i.t, ptr %i.l, align 8, !tbaa !20, !noalias !62
  %i.aa = load ptr, ptr %10, align 8, !tbaa !18, !noalias !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.t
  store i8 0, ptr %i.ab, align 1, !tbaa !19, !noalias !62
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 16 uses
  store ptr %i.ac, ptr %9, align 8, !tbaa !14, !alias.scope !62
  %i.ad = load ptr, ptr %10, align 8, !tbaa !18, !noalias !62 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.af = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !62 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.ah, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ad, ptr %9, align 8, !tbaa !18, !alias.scope !62
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !62
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !19, !alias.scope !62
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !62
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %i.aj = phi ptr [ %i.ac, %bb.l ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ak = phi i64 [ %i.af, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !20, !alias.scope !62
  store ptr %i.a, ptr %10, align 8, !tbaa !18, !noalias !62
  store i64 0, ptr %i.l, align 8, !tbaa !20, !noalias !62
  store i8 0, ptr %i.a, align 8, !tbaa !19, !noalias !62
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20, !noalias !63 ; 6 uses
  %i.an = sub i64 9223372036854775807, %i.ak
  %i.ao = icmp ult i64 %i.an, %i.am
  br i1 %i.ao, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i43

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc53 unwind label %bb.ay

.noexc53:                                         ; preds = %bb.n
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i43: ; preds = %bb.m
  %i.ap = add i64 %i.am, %i.ak                    ; 3 uses
  %i.aq = icmp eq ptr %i.aj, %i.ac
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i43
  %i.ar = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.ar)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i43
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !19, !noalias !63
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52
  %i.at = phi i64 [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52 ]
  %.not.i.i.i46 = icmp ugt i64 %i.ap, %i.at
  br i1 %.not.i.i.i46, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i45
  %.not8.i.i.i47 = icmp eq i64 %i.am, 0
  br i1 %.not8.i.i.i47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak ; 2 uses
  %cond.i.i.i48 = icmp eq i64 %i.am, 1
  br i1 %cond.i.i.i48, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.av = load i8, ptr %2, align 1, !tbaa !19, !noalias !63
  store i8 %i.av, ptr %i.au, align 1, !tbaa !19, !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %2, i64 %i.am, i1 false), !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i45
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ak, i64 noundef 0, ptr noundef nonnull %2, i64 noundef %i.am)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49 unwind label %bb.ay

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49: ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !20, !noalias !63
  %i.aw = load ptr, ptr %9, align 8, !tbaa !18, !noalias !63
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ap
  store i8 0, ptr %i.ax, align 1, !tbaa !19, !noalias !63
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 14 uses
  store ptr %i.ay, ptr %8, align 8, !tbaa !14, !alias.scope !63
  %i.az = load ptr, ptr %9, align 8, !tbaa !18, !noalias !63 ; 5 uses
  %i.ba = icmp eq ptr %i.az, %i.ac
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56.thread, label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !20, !noalias !63 ; 5 uses
  %i.bc = icmp samesign ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.be, align 8, !tbaa !20, !alias.scope !63
  store ptr %i.ac, ptr %9, align 8, !tbaa !18, !noalias !63
  store i64 0, ptr %i.al, align 8, !tbaa !20, !noalias !63
  store i8 0, ptr %i.ac, align 8, !tbaa !19, !noalias !63
  %i.bf = add nuw nsw i64 %i.bb, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i65

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49
  store ptr %i.az, ptr %8, align 8, !tbaa !18, !alias.scope !63
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bh = load <2 x i64>, ptr %i.al, align 8, !tbaa !19, !noalias !63
  %.pre.i51 = load i64, ptr %i.al, align 8, !tbaa !20, !noalias !63 ; 4 uses
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !tbaa !19, !alias.scope !63
  store ptr %i.ac, ptr %9, align 8, !tbaa !18, !noalias !63
  store i64 0, ptr %i.al, align 8, !tbaa !20, !noalias !63
  store i8 0, ptr %i.ac, align 8, !tbaa !19, !noalias !63
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.bi = icmp eq i64 %.pre.i51, 9223372036854775807
  br i1 %i.bi, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc66 unwind label %bb.az

.noexc66:                                         ; preds = %bb.u
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56: ; preds = %bb.t
  %i.bj = add nsw i64 %.pre.i51, 1                ; 2 uses
  %i.bk = icmp eq ptr %i.az, %i.ay
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56
  %i.bl = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56.thread ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56 ]
  %i.bm = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56.thread ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56 ]
  %i.bn = phi i64 [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56.thread ], [ %.pre.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56 ] ; 2 uses
  %i.bo = phi ptr [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56.thread ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56 ]
  %i.bp = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i56
  %i.bq = load i64, ptr %i.ay, align 8, !tbaa !19, !noalias !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i58: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i65
  %i.br = phi i64 [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i65 ] ; 3 uses
  %i.bs = phi ptr [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i65 ]
  %i.bt = phi i64 [ %.pre.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i65 ] ; 2 uses
  %i.bu = phi ptr [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i65 ] ; 4 uses
  %i.bv = phi i64 [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i65 ]
  %.not.i.i.i59 = icmp ugt i64 %i.br, %i.bv
  br i1 %.not.i.i.i59, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i58
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 47, ptr %i.bw, align 1, !tbaa !19, !noalias !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bt, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62 unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62: ; preds = %bb.w, %bb.v
  store i64 %i.br, ptr %i.bu, align 8, !tbaa !20, !noalias !64
  %i.bx = load ptr, ptr %8, align 8, !tbaa !18, !noalias !64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.br
  store i8 0, ptr %i.by, align 1, !tbaa !19, !noalias !64
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 15 uses
  store ptr %i.bz, ptr %7, align 8, !tbaa !14, !alias.scope !64
  %i.ca = load ptr, ptr %8, align 8, !tbaa !18, !noalias !64 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, %i.ay
  br i1 %i.cb, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62
  %i.cc = load i64, ptr %i.bu, align 8, !tbaa !20, !noalias !64 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.cc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ce, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62
  store ptr %i.ca, ptr %7, align 8, !tbaa !18, !alias.scope !64
  %i.cf = load i64, ptr %i.ay, align 8, !tbaa !19, !noalias !64
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !19, !alias.scope !64
  %.pre.i64 = load i64, ptr %i.bu, align 8, !tbaa !20, !noalias !64
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.x
  %i.cg = phi ptr [ %i.bz, %bb.x ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ] ; 2 uses
  %i.ch = phi i64 [ %i.cc, %bb.x ], [ %.pre.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !20, !alias.scope !64
  store ptr %i.ay, ptr %8, align 8, !tbaa !18, !noalias !64
  store i64 0, ptr %i.bu, align 8, !tbaa !20, !noalias !64
  store i8 0, ptr %i.ay, align 8, !tbaa !19, !noalias !64
  %i.cj = sext i32 %4 to i64
  %i.ck = load ptr, ptr %5, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !18, !noalias !65 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !20, !noalias !65 ; 6 uses
  %i.cp = sub i64 9223372036854775807, %i.ch
  %i.cq = icmp ult i64 %i.cp, %i.co
  br i1 %i.cq, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc71 unwind label %bb.ba

.noexc71:                                         ; preds = %bb.z
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.y
  %i.cr = add i64 %i.co, %i.ch                    ; 3 uses
  %i.cs = icmp eq ptr %i.cg, %i.bz
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ct = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ct)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cu = load i64, ptr %i.bz, align 8, !tbaa !19, !noalias !65
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cv = phi i64 [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.cr, %i.cv
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.co, 1
  br i1 %cond.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load i8, ptr %i.cm, align 1, !tbaa !19, !noalias !65
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !19, !noalias !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cm, i64 %i.co, i1 false), !noalias !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ch, i64 noundef 0, ptr noundef %i.cm, i64 noundef %i.co)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  store i64 %i.cr, ptr %i.ci, align 8, !tbaa !20, !noalias !65
  %i.cy = load ptr, ptr %7, align 8, !tbaa !18, !noalias !65
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cr
  store i8 0, ptr %i.cz, align 1, !tbaa !19, !noalias !65
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.da, ptr %6, align 8, !tbaa !14, !alias.scope !65
  %i.db = load ptr, ptr %7, align 8, !tbaa !18, !noalias !65 ; 3 uses
  %i.dc = icmp eq ptr %i.db, %i.bz
  br i1 %i.dc, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dd = load i64, ptr %i.ci, align 8, !tbaa !20, !noalias !65 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  %i.df = add nuw nsw i64 %i.dd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.da, ptr noundef nonnull align 8 dereferenceable(1) %i.bz, i64 %i.df, i1 false)
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.db, ptr %6, align 8, !tbaa !18, !alias.scope !65
  %i.dg = load i64, ptr %i.bz, align 8, !tbaa !19, !noalias !65
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !19, !alias.scope !65
  %.pre.i70 = load i64, ptr %i.ci, align 8, !tbaa !20, !noalias !65
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.af
  %i.dh = phi ptr [ %i.da, %bb.af ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ]
  %i.di = phi i64 [ %i.dd, %bb.af ], [ %.pre.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !20, !alias.scope !65
  store ptr %i.bz, ptr %7, align 8, !tbaa !18, !noalias !65
  store i64 0, ptr %i.ci, align 8, !tbaa !20, !noalias !65
  store i8 0, ptr %i.bz, align 8, !tbaa !19, !noalias !65
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZN7testing8internal19GetPrefixUntilCommaB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %3)
          to label %bb.ah unwind label %bb.bb

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.dk = load ptr, ptr %12, align 8, !tbaa !18, !noalias !66 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !20, !noalias !66 ; 2 uses
  %i.dn = icmp samesign eq i64 %i.dm, 0
  br i1 %i.dn, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dm
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i, %.lr.ph.preheader.i
  %i.dp = phi ptr [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i ], [ %i.dk, %.lr.ph.preheader.i ] ; 4 uses
  %storemerge6.i = phi ptr [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i ], [ %i.do, %.lr.ph.preheader.i ]
  %i.dq = getelementptr inbounds i8, ptr %storemerge6.i, i64 -1 ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !19, !noalias !66
  %i.ds = zext i8 %i.dr to i32
  %i.dt = call i32 @isspace(i32 noundef %i.ds) #23, !noalias !66
  %.not.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = ptrtoint ptr %i.dp to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 3 uses
  %i.dx = load i64, ptr %i.dl, align 8, !tbaa !20, !noalias !66 ; 2 uses
  %i.dy = add i64 %i.dw, 1                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.dx, %i.dy
  br i1 %.not.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = sub i64 %i.dx, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dw ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 2 uses
  switch i64 %i.dz, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !19, !noalias !66
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !19, !noalias !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 1 %i.eb, i64 %i.dz, i1 false), !noalias !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.ed = load i64, ptr %i.dl, align 8, !tbaa !20, !noalias !66
  %i.ee = add i64 %i.ed, -1                       ; 2 uses
  store i64 %i.ee, ptr %i.dl, align 8, !tbaa !20, !noalias !66
  %i.ef = load ptr, ptr %12, align 8, !tbaa !18, !noalias !66
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !19, !noalias !66
  %i.eh = load ptr, ptr %12, align 8, !tbaa !18, !noalias !66 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dw
  %i.ej = icmp eq ptr %i.dq, %i.dp
  br i1 %i.ej, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i, %.lr.ph.i, %bb.ah
  %.lcssa.i = phi ptr [ %i.dk, %bb.ah ], [ %i.dp, %.lr.ph.i ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.ek, ptr %11, align 8, !tbaa !14, !alias.scope !66
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.em = icmp eq ptr %.lcssa.i, %i.el
  br i1 %i.em, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

bb.am:                                            ; preds = %.critedge.i
  %i.en = load i64, ptr %i.dl, align 8, !tbaa !20, !noalias !66 ; 3 uses
  %i.eo = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw nsw i64 %i.en, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.el, i64 %i.ep, i1 false)
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.critedge.i
  store ptr %.lcssa.i, ptr %11, align 8, !tbaa !18, !alias.scope !66
  %i.eq = load i64, ptr %i.el, align 8, !tbaa !19, !noalias !66
  store i64 %i.eq, ptr %i.ek, align 8, !tbaa !19, !alias.scope !66
  %.pre.i74 = load i64, ptr %i.dl, align 8, !tbaa !20, !noalias !66
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.am
  %i.er = phi ptr [ %i.ek, %bb.am ], [ %.lcssa.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ]
  %i.es = phi i64 [ %i.en, %bb.am ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ]
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !20, !alias.scope !66
  store ptr %i.el, ptr %12, align 8, !tbaa !18, !noalias !66
  store i64 0, ptr %i.dl, align 8, !tbaa !20, !noalias !66
  store i8 0, ptr %i.el, align 8, !tbaa !19, !noalias !66
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) @_ZTIN4test15enum_is_bitmaskE)
          to label %_ZN7testing8internal11GetTypeNameIN4test15enum_is_bitmaskEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit unwind label %bb.bc

_ZN7testing8internal11GetTypeNameIN4test15enum_is_bitmaskEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit: ; preds = %bb.an
  %i.eu = load ptr, ptr %13, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.ev, ptr %14, align 8, !tbaa !14
  %i.ew = load ptr, ptr %1, align 8, !tbaa !18    ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !20 ; 8 uses
  %i.ez = icmp ugt i64 %i.ey, 15
  br i1 %i.ez, label %bb.ao, label %._crit_edge.i.i.i

bb.ao:                                            ; preds = %_ZN7testing8internal11GetTypeNameIN4test15enum_is_bitmaskEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit
  %i.fa = icmp slt i64 %i.ey, 0
  br i1 %i.fa, label %.noexc.i.i, label %bb.ap

.noexc.i.i:                                       ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc76 unwind label %bb.bd

.noexc76:                                         ; preds = %.noexc.i.i
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.fb = add nuw i64 %i.ey, 1                    ; 2 uses
  %i.fc = icmp slt i64 %i.fb, 0
  br i1 %i.fc, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !15

.noexc6.i.i:                                      ; preds = %bb.ap
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc77 unwind label %bb.bd

.noexc77:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.ap
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #22
          to label %.noexc78 unwind label %bb.bd  ; 2 uses

.noexc78:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.fd, ptr %14, align 8, !tbaa !18
  store i64 %i.ey, ptr %i.ev, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc78, %_ZN7testing8internal11GetTypeNameIN4test15enum_is_bitmaskEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit
  %i.fe = phi ptr [ %i.fd, %.noexc78 ], [ %i.ev, %_ZN7testing8internal11GetTypeNameIN4test15enum_is_bitmaskEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit ] ; 3 uses
  switch i64 %i.ey, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %bb.as
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.ff = load i8, ptr %i.ew, align 1, !tbaa !19
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !19
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fe, ptr align 1 %i.ew, i64 %i.ey, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ey, ptr %i.fg, align 8, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ey
  store i8 0, ptr %i.fh, align 1, !tbaa !19
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !26 ; 2 uses
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !26
  %i.fl = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI25Enum_Functionalities_TestIN4test15enum_is_bitmaskEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %i.ew, i32 noundef %i.fk)
          to label %bb.at unwind label %bb.be

bb.at:                                            ; preds = %bb.as
  %i.fm = load ptr, ptr %1, align 8, !tbaa !18
  %i.fn = load i32, ptr %i.fj, align 8, !tbaa !26
  %i.fo = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI25Enum_Functionalities_TestIN4test15enum_is_bitmaskEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %i.fm, i32 noundef %i.fn)
          to label %bb.au unwind label %bb.be

bb.au:                                            ; preds = %bb.at
  %i.fp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %bb.av unwind label %bb.be     ; 2 uses

bb.av:                                            ; preds = %bb.au
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25Enum_Functionalities_TestIN4test15enum_is_bitmaskEEEE, i64 16), ptr %i.fp, align 8, !tbaa !28
  %i.fq = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef %i.dh, ptr noundef %i.er, ptr noundef %i.eu, ptr noundef null, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperI4EnumIN4test15enum_is_bitmaskEEE6dummy_E, ptr noundef %i.fl, ptr noundef %i.fo, ptr noundef nonnull %i.fp)
          to label %bb.aw unwind label %bb.be     ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.fr = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.ev
  br i1 %i.fs, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aw
  %i.ft = load i64, ptr %i.ev, align 8, !tbaa !19
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #24
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fv = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !19
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.ga = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.ek
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gc = load i64, ptr %i.ek, align 8, !tbaa !19
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  %i.ge = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.el
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.gg = load i64, ptr %i.el, align 8, !tbaa !19
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.gi = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.da
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.gk = load i64, ptr %i.da, align 8, !tbaa !19
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  %i.gm = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.bz
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.go = load i64, ptr %i.bz, align 8, !tbaa !19
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  %i.gq = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.ay
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

end_hunk_0
begin_hunk_1_@_ZN7testing8internal21TypeParameterizedTestI4EnumNS0_11TemplateSelI25Enum_Functionalities_TestEENS0_5TypesIN4test15enum_as_bitmaskEJEEEE8RegisterEPKcRKNS0_12CodeLocationESC_SC_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EE:bb.a
  %i.n = icmp ne i8 %i.k, 0                       ; 3 uses
  %i.o = select i1 %i.n, ptr @.str.6, ptr @.str
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.p = zext i1 %i.n to i64                      ; 3 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !77 ; 5 uses
  %i.r = sub i64 9223372036854775807, %i.q
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc39 unwind label %bb.ax

.noexc39:                                         ; preds = %bb.h
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.g
  %i.t = add i64 %i.q, %i.p                       ; 3 uses
  %i.u = load ptr, ptr %10, align 8, !tbaa !18, !noalias !77 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.w = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !77
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  br i1 %i.n, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  store i8 47, ptr %i.z, align 1, !tbaa !19, !noalias !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.q, i64 noundef 0, ptr noundef nonnull %i.o, i64 noundef %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.ax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  store i64 %i.t, ptr %i.l, align 8, !tbaa !20, !noalias !77
  %i.aa = load ptr, ptr %10, align 8, !tbaa !18, !noalias !77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.t
  store i8 0, ptr %i.ab, align 1, !tbaa !19, !noalias !77
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 16 uses
  store ptr %i.ac, ptr %9, align 8, !tbaa !14, !alias.scope !77
  %i.ad = load ptr, ptr %10, align 8, !tbaa !18, !noalias !77 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.af = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !77 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.ah, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ad, ptr %9, align 8, !tbaa !18, !alias.scope !77
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !77
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !19, !alias.scope !77
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !77
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %i.aj = phi ptr [ %i.ac, %bb.l ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ak = phi i64 [ %i.af, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !20, !alias.scope !77
  store ptr %i.a, ptr %10, align 8, !tbaa !18, !noalias !77
  store i64 0, ptr %i.l, align 8, !tbaa !20, !noalias !77
  store i8 0, ptr %i.a, align 8, !tbaa !19, !noalias !77
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20, !noalias !78 ; 6 uses
  %i.an = sub i64 9223372036854775807, %i.ak
  %i.ao = icmp ult i64 %i.an, %i.am
  br i1 %i.ao, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i41

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc51 unwind label %bb.ay

.noexc51:                                         ; preds = %bb.n
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i41: ; preds = %bb.m
  %i.ap = add i64 %i.am, %i.ak                    ; 3 uses
  %i.aq = icmp eq ptr %i.aj, %i.ac
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i41
  %i.ar = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.ar)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i41
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !19, !noalias !78
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i50
  %i.at = phi i64 [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i50 ]
  %.not.i.i.i44 = icmp ugt i64 %i.ap, %i.at
  br i1 %.not.i.i.i44, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i43
  %.not8.i.i.i45 = icmp eq i64 %i.am, 0
  br i1 %.not8.i.i.i45, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak ; 2 uses
  %cond.i.i.i46 = icmp eq i64 %i.am, 1
  br i1 %cond.i.i.i46, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.av = load i8, ptr %2, align 1, !tbaa !19, !noalias !78
  store i8 %i.av, ptr %i.au, align 1, !tbaa !19, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %2, i64 %i.am, i1 false), !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i43
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ak, i64 noundef 0, ptr noundef nonnull %2, i64 noundef %i.am)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47 unwind label %bb.ay

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47: ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !20, !noalias !78
  %i.aw = load ptr, ptr %9, align 8, !tbaa !18, !noalias !78
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ap
  store i8 0, ptr %i.ax, align 1, !tbaa !19, !noalias !78
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 14 uses
  store ptr %i.ay, ptr %8, align 8, !tbaa !14, !alias.scope !78
  %i.az = load ptr, ptr %9, align 8, !tbaa !18, !noalias !78 ; 5 uses
  %i.ba = icmp eq ptr %i.az, %i.ac
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54.thread, label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !20, !noalias !78 ; 5 uses
  %i.bc = icmp samesign ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.be, align 8, !tbaa !20, !alias.scope !78
  store ptr %i.ac, ptr %9, align 8, !tbaa !18, !noalias !78
  store i64 0, ptr %i.al, align 8, !tbaa !20, !noalias !78
  store i8 0, ptr %i.ac, align 8, !tbaa !19, !noalias !78
  %i.bf = add nuw nsw i64 %i.bb, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i63

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47
  store ptr %i.az, ptr %8, align 8, !tbaa !18, !alias.scope !78
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bh = load <2 x i64>, ptr %i.al, align 8, !tbaa !19, !noalias !78
  %.pre.i49 = load i64, ptr %i.al, align 8, !tbaa !20, !noalias !78 ; 4 uses
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !tbaa !19, !alias.scope !78
  store ptr %i.ac, ptr %9, align 8, !tbaa !18, !noalias !78
  store i64 0, ptr %i.al, align 8, !tbaa !20, !noalias !78
  store i8 0, ptr %i.ac, align 8, !tbaa !19, !noalias !78
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.bi = icmp eq i64 %.pre.i49, 9223372036854775807
  br i1 %i.bi, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc64 unwind label %bb.az

.noexc64:                                         ; preds = %bb.u
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54: ; preds = %bb.t
  %i.bj = add nsw i64 %.pre.i49, 1                ; 2 uses
  %i.bk = icmp eq ptr %i.az, %i.ay
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i63: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54
  %i.bl = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54.thread ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54 ]
  %i.bm = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54.thread ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54 ]
  %i.bn = phi i64 [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54.thread ], [ %.pre.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54 ] ; 2 uses
  %i.bo = phi ptr [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54.thread ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54 ]
  %i.bp = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i54
  %i.bq = load i64, ptr %i.ay, align 8, !tbaa !19, !noalias !79
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i63
  %i.br = phi i64 [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i63 ] ; 3 uses
  %i.bs = phi ptr [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i63 ]
  %i.bt = phi i64 [ %.pre.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i63 ] ; 2 uses
  %i.bu = phi ptr [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i63 ] ; 4 uses
  %i.bv = phi i64 [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i63 ]
  %.not.i.i.i57 = icmp ugt i64 %i.br, %i.bv
  br i1 %.not.i.i.i57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 47, ptr %i.bw, align 1, !tbaa !19, !noalias !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i56
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bt, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60 unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60: ; preds = %bb.w, %bb.v
  store i64 %i.br, ptr %i.bu, align 8, !tbaa !20, !noalias !79
  %i.bx = load ptr, ptr %8, align 8, !tbaa !18, !noalias !79
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.br
  store i8 0, ptr %i.by, align 1, !tbaa !19, !noalias !79
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 15 uses
  store ptr %i.bz, ptr %7, align 8, !tbaa !14, !alias.scope !79
  %i.ca = load ptr, ptr %8, align 8, !tbaa !18, !noalias !79 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, %i.ay
  br i1 %i.cb, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60
  %i.cc = load i64, ptr %i.bu, align 8, !tbaa !20, !noalias !79 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.cc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ce, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60
  store ptr %i.ca, ptr %7, align 8, !tbaa !18, !alias.scope !79
  %i.cf = load i64, ptr %i.ay, align 8, !tbaa !19, !noalias !79
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !19, !alias.scope !79
  %.pre.i62 = load i64, ptr %i.bu, align 8, !tbaa !20, !noalias !79
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.x
  %i.cg = phi ptr [ %i.bz, %bb.x ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ] ; 2 uses
  %i.ch = phi i64 [ %i.cc, %bb.x ], [ %.pre.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !20, !alias.scope !79
  store ptr %i.ay, ptr %8, align 8, !tbaa !18, !noalias !79
  store i64 0, ptr %i.bu, align 8, !tbaa !20, !noalias !79
  store i8 0, ptr %i.ay, align 8, !tbaa !19, !noalias !79
  %i.cj = sext i32 %4 to i64
  %i.ck = load ptr, ptr %5, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !18, !noalias !80 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !20, !noalias !80 ; 6 uses
  %i.cp = sub i64 9223372036854775807, %i.ch
  %i.cq = icmp ult i64 %i.cp, %i.co
  br i1 %i.cq, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc69 unwind label %bb.ba

.noexc69:                                         ; preds = %bb.z
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.y
  %i.cr = add i64 %i.co, %i.ch                    ; 3 uses
  %i.cs = icmp eq ptr %i.cg, %i.bz
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ct = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ct)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cu = load i64, ptr %i.bz, align 8, !tbaa !19, !noalias !80
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cv = phi i64 [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.cr, %i.cv
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.co, 1
  br i1 %cond.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load i8, ptr %i.cm, align 1, !tbaa !19, !noalias !80
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !19, !noalias !80
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cm, i64 %i.co, i1 false), !noalias !80
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ch, i64 noundef 0, ptr noundef %i.cm, i64 noundef %i.co)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  store i64 %i.cr, ptr %i.ci, align 8, !tbaa !20, !noalias !80
  %i.cy = load ptr, ptr %7, align 8, !tbaa !18, !noalias !80
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cr
  store i8 0, ptr %i.cz, align 1, !tbaa !19, !noalias !80
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.da, ptr %6, align 8, !tbaa !14, !alias.scope !80
  %i.db = load ptr, ptr %7, align 8, !tbaa !18, !noalias !80 ; 3 uses
  %i.dc = icmp eq ptr %i.db, %i.bz
  br i1 %i.dc, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dd = load i64, ptr %i.ci, align 8, !tbaa !20, !noalias !80 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  %i.df = add nuw nsw i64 %i.dd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.da, ptr noundef nonnull align 8 dereferenceable(1) %i.bz, i64 %i.df, i1 false)
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.db, ptr %6, align 8, !tbaa !18, !alias.scope !80
  %i.dg = load i64, ptr %i.bz, align 8, !tbaa !19, !noalias !80
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !19, !alias.scope !80
  %.pre.i68 = load i64, ptr %i.ci, align 8, !tbaa !20, !noalias !80
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.af
  %i.dh = phi ptr [ %i.da, %bb.af ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.di = phi i64 [ %i.dd, %bb.af ], [ %.pre.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !20, !alias.scope !80
  store ptr %i.bz, ptr %7, align 8, !tbaa !18, !noalias !80
  store i64 0, ptr %i.ci, align 8, !tbaa !20, !noalias !80
  store i8 0, ptr %i.bz, align 8, !tbaa !19, !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZN7testing8internal19GetPrefixUntilCommaB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %3)
          to label %bb.ah unwind label %bb.bb

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.dk = load ptr, ptr %12, align 8, !tbaa !18, !noalias !81 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !20, !noalias !81 ; 2 uses
  %i.dn = icmp samesign eq i64 %i.dm, 0
  br i1 %i.dn, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dm
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i, %.lr.ph.preheader.i
  %i.dp = phi ptr [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i ], [ %i.dk, %.lr.ph.preheader.i ] ; 4 uses
  %storemerge6.i = phi ptr [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i ], [ %i.do, %.lr.ph.preheader.i ]
  %i.dq = getelementptr inbounds i8, ptr %storemerge6.i, i64 -1 ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !19, !noalias !81
  %i.ds = zext i8 %i.dr to i32
  %i.dt = call i32 @isspace(i32 noundef %i.ds) #23, !noalias !81
  %.not.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = ptrtoint ptr %i.dp to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 3 uses
  %i.dx = load i64, ptr %i.dl, align 8, !tbaa !20, !noalias !81 ; 2 uses
  %i.dy = add i64 %i.dw, 1                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.dx, %i.dy
  br i1 %.not.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = sub i64 %i.dx, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dw ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 2 uses
  switch i64 %i.dz, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !19, !noalias !81
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !19, !noalias !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 1 %i.eb, i64 %i.dz, i1 false), !noalias !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.ed = load i64, ptr %i.dl, align 8, !tbaa !20, !noalias !81
  %i.ee = add i64 %i.ed, -1                       ; 2 uses
  store i64 %i.ee, ptr %i.dl, align 8, !tbaa !20, !noalias !81
  %i.ef = load ptr, ptr %12, align 8, !tbaa !18, !noalias !81
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !19, !noalias !81
  %i.eh = load ptr, ptr %12, align 8, !tbaa !18, !noalias !81 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dw
  %i.ej = icmp eq ptr %i.dq, %i.dp
  br i1 %i.ej, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i, %.lr.ph.i, %bb.ah
  %.lcssa.i = phi ptr [ %i.dk, %bb.ah ], [ %i.dp, %.lr.ph.i ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE.exit.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.ek, ptr %11, align 8, !tbaa !14, !alias.scope !81
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.em = icmp eq ptr %.lcssa.i, %i.el
  br i1 %i.em, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

bb.am:                                            ; preds = %.critedge.i
  %i.en = load i64, ptr %i.dl, align 8, !tbaa !20, !noalias !81 ; 3 uses
  %i.eo = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw nsw i64 %i.en, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.el, i64 %i.ep, i1 false)
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %.critedge.i
  store ptr %.lcssa.i, ptr %11, align 8, !tbaa !18, !alias.scope !81
  %i.eq = load i64, ptr %i.el, align 8, !tbaa !19, !noalias !81
  store i64 %i.eq, ptr %i.ek, align 8, !tbaa !19, !alias.scope !81
  %.pre.i72 = load i64, ptr %i.dl, align 8, !tbaa !20, !noalias !81
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.am
  %i.er = phi ptr [ %i.ek, %bb.am ], [ %.lcssa.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ]
  %i.es = phi i64 [ %i.en, %bb.am ], [ %.pre.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ]
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !20, !alias.scope !81
  store ptr %i.el, ptr %12, align 8, !tbaa !18, !noalias !81
  store i64 0, ptr %i.dl, align 8, !tbaa !20, !noalias !81
  store i8 0, ptr %i.el, align 8, !tbaa !19, !noalias !81
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) @_ZTIN4test15enum_as_bitmaskE)
          to label %_ZN7testing8internal11GetTypeNameIN4test15enum_as_bitmaskEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit unwind label %bb.bc

_ZN7testing8internal11GetTypeNameIN4test15enum_as_bitmaskEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit: ; preds = %bb.an
  %i.eu = load ptr, ptr %13, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.ev, ptr %14, align 8, !tbaa !14
  %i.ew = load ptr, ptr %1, align 8, !tbaa !18    ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !20 ; 8 uses
  %i.ez = icmp ugt i64 %i.ey, 15
  br i1 %i.ez, label %bb.ao, label %._crit_edge.i.i.i

bb.ao:                                            ; preds = %_ZN7testing8internal11GetTypeNameIN4test15enum_as_bitmaskEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit
  %i.fa = icmp slt i64 %i.ey, 0
  br i1 %i.fa, label %.noexc.i.i, label %bb.ap

.noexc.i.i:                                       ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc74 unwind label %bb.bd

.noexc74:                                         ; preds = %.noexc.i.i
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.fb = add nuw i64 %i.ey, 1                    ; 2 uses
  %i.fc = icmp slt i64 %i.fb, 0
  br i1 %i.fc, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !15

.noexc6.i.i:                                      ; preds = %bb.ap
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc75 unwind label %bb.bd

.noexc75:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.ap
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #22
          to label %.noexc76 unwind label %bb.bd  ; 2 uses

.noexc76:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.fd, ptr %14, align 8, !tbaa !18
  store i64 %i.ey, ptr %i.ev, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc76, %_ZN7testing8internal11GetTypeNameIN4test15enum_as_bitmaskEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit
  %i.fe = phi ptr [ %i.fd, %.noexc76 ], [ %i.ev, %_ZN7testing8internal11GetTypeNameIN4test15enum_as_bitmaskEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit ] ; 3 uses
  switch i64 %i.ey, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %bb.as
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.ff = load i8, ptr %i.ew, align 1, !tbaa !19
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !19
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fe, ptr align 1 %i.ew, i64 %i.ey, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ey, ptr %i.fg, align 8, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ey
  store i8 0, ptr %i.fh, align 1, !tbaa !19
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !26 ; 2 uses
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !26
  %i.fl = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI25Enum_Functionalities_TestIN4test15enum_as_bitmaskEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %i.ew, i32 noundef %i.fk)
          to label %bb.at unwind label %bb.be

bb.at:                                            ; preds = %bb.as
  %i.fm = load ptr, ptr %1, align 8, !tbaa !18
  %i.fn = load i32, ptr %i.fj, align 8, !tbaa !26
  %i.fo = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI25Enum_Functionalities_TestIN4test15enum_as_bitmaskEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %i.fm, i32 noundef %i.fn)
          to label %bb.au unwind label %bb.be

bb.au:                                            ; preds = %bb.at
  %i.fp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %bb.av unwind label %bb.be     ; 2 uses

bb.av:                                            ; preds = %bb.au
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25Enum_Functionalities_TestIN4test15enum_as_bitmaskEEEE, i64 16), ptr %i.fp, align 8, !tbaa !28
  %i.fq = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef %i.dh, ptr noundef %i.er, ptr noundef %i.eu, ptr noundef null, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperI4EnumIN4test15enum_as_bitmaskEEE6dummy_E, ptr noundef %i.fl, ptr noundef %i.fo, ptr noundef nonnull %i.fp)
          to label %bb.aw unwind label %bb.be     ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.fr = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.ev
  br i1 %i.fs, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aw
  %i.ft = load i64, ptr %i.ev, align 8, !tbaa !19
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #24
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fv = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !19
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.ga = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.ek
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gc = load i64, ptr %i.ek, align 8, !tbaa !19
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  %i.ge = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.el
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.gg = load i64, ptr %i.el, align 8, !tbaa !19
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.gi = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.da
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.gk = load i64, ptr %i.da, align 8, !tbaa !19
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  %i.gm = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.bz
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.go = load i64, ptr %i.bz, align 8, !tbaa !19
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  %i.gq = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.ay
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

end_hunk_1
