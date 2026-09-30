Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/fontengine?download=true
inline.NumInlined: 907
inline.NumDeleted: 389
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN10FontEngine7getFontE8FontSpecb:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 0, ptr %i.h, align 2, !tbaa !141
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ 0, %bb.c ], [ %i.e, %bb.b ]
  %i.j = phi i64 [ %i.d, %bb.a ], [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.k = phi i8 [ %i.b, %bb.a ], [ 2, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.l = icmp eq i32 %i.c, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  store i32 %i.p, ptr %3, align 8, !tbaa !142
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %i.p, %bb.e ], [ %i.c, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.s) #25
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = zext i8 %i.k to i64
  %sh.diff = lshr i64 %1, 54
  %i.v = and i64 %sh.diff, 252
  %i.w = shl nuw nsw i64 %i.j, 1
  %i.x = and i64 %i.w, 254
  %i.y = and i64 %i.i, 255
  %.idx = mul nuw nsw i64 %i.u, 384
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.v
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.x
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.y ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.af, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !45
  %i.ai = icmp ult i32 %i.ah, %i.q                ; 2 uses
  %.19.i.i.i = select i1 %i.ai, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ai, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjPN3gui8IGUIFontEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !136

_ZNKSt8_Rb_treeIjSt4pairIKjPN3gui8IGUIFontEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = icmp eq ptr %.19.i.i.i, %i.af
  br i1 %i.aj, label %_ZNKSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit.thread, label %_ZNKSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit

_ZNKSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjPN3gui8IGUIFontEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !45
  %i.am = icmp ult i32 %i.q, %i.al
  br i1 %i.am, label %_ZNKSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61
  br label %bb.q

_ZNKSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjPN3gui8IGUIFontEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %_ZNKSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit
  %.sroa.0.0.copyload = load i64, ptr %3, align 8 ; 5 uses
  %i.ap = lshr i64 %.sroa.0.0.copyload, 32
  %i.aq = lshr i64 %.sroa.0.0.copyload, 48
  %i.ar = invoke noundef ptr @_ZN10FontEngine8initFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %0, i64 %.sroa.0.0.copyload)
          to label %bb.i unwind label %bb.l       ; 3 uses

bb.i:                                             ; preds = %_ZNKSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit.thread
  %i.as = icmp ne ptr %i.ar, null
  %or.cond = or i1 %2, %i.as
  br i1 %or.cond, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = tail call ptr @gettext(ptr noundef nonnull @.str) #24
  %i.au = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.at, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTI13BaseException, ptr nonnull @_ZN13BaseExceptionD2Ev) #25
          to label %bb.s unwind label %bb.m

bb.l:                                             ; preds = %bb.o, %_ZNKSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit.thread
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !55
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @__cxa_free_exception(ptr %i.au) #24
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.bd = and i64 %i.ap, 255
  %sh.diff34 = lshr i64 %.sroa.0.0.copyload, 54
  %i.be = and i64 %sh.diff34, 252
  %sh.diff35 = lshr i64 %.sroa.0.0.copyload, 39
  %i.bf = and i64 %sh.diff35, 254
  %i.bg = and i64 %i.aq, 255
  %.idx29 = mul nuw nsw i64 %i.bd, 384
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx29
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.be
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %i.bg
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.p unwind label %bb.l

bb.p:                                             ; preds = %bb.o
  store ptr %i.ar, ptr %i.bl, align 8, !tbaa !143
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.h
  %.012 = phi ptr [ %i.ao, %bb.h ], [ %i.ar, %bb.p ]
  %i.bm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #24 ; 0 uses
  ret ptr %.012

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.l, %bb.n
  %.pn19.pn = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.av, %bb.l ], [ %i.bc, %bb.n ]
  %i.bn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #24 ; 0 uses
  resume { ptr, i32 } %.pn19.pn

bb.s:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN10FontEngine8initFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %0, i64 %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.m = alloca i16, align 2                      ; 7 uses
  %i.n = alloca i16, align 2                      ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 27 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca [2 x %"class.std::__cxx11::basic_string"], align 16 ; 23 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.4.0.extract.shift = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8 ; 4 uses
  %.sroa.12.0.extract.shift = lshr i64 %1, 40     ; 3 uses
  %.sroa.12.sroa.4.0.extract.shift402 = lshr i64 %1, 48 ; 3 uses
  %sum.shift = lshr i64 %1, 56                    ; 2 uses
  %i.o = icmp eq i8 %.sroa.4.0.extract.trunc, 2   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.q, align 8, !tbaa !56
  store i8 0, ptr %i.p, align 8, !tbaa !55
  %i.r = icmp eq i8 %.sroa.4.0.extract.trunc, 1   ; 2 uses
  br i1 %i.r, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.v, align 8, !tbaa !56
  store i8 0, ptr %i.u, align 8, !tbaa !55
  %i.w = trunc i64 %.sroa.12.0.extract.shift to i1
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.19, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i127, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.z = trunc i64 %.sroa.12.sroa.4.0.extract.shift402 to i1
  br i1 %i.z, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit130

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !56
  %i.ab = add i64 %i.aa, -4611686018427387897
  %i.ac = icmp ult i64 %i.ab, 7
  br i1 %i.ac, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i127

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
          to label %.noexc128 unwind label %bb.c

.noexc128:                                        ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i127: ; preds = %bb.d
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.20, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit130 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit130: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.ae = invoke noundef float @_ZN15RenderingEngine17getDisplayDensityEv()
          to label %._crit_edge.i.i131 unwind label %bb.j

._crit_edge.i.i131:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit130
  %i.af = load ptr, ptr @g_settings, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ag, ptr noundef nonnull align 1 dereferenceable(11) @.str.21, i64 11, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 11, ptr %i.ah, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 27
  store i8 0, ptr %i.ai, align 1, !tbaa !55
  %i.aj = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_Z8rangelimIfjjET_RKS0_RKT0_RKT1_.exit unwind label %bb.k

_Z8rangelimIfjjET_RKS0_RKT0_RKT1_.exit:           ; preds = %._crit_edge.i.i131
  %i.ak = uitofp nsz i32 %.sroa.0.0.extract.trunc to float
  %i.al = fmul nsz float %i.ae, %i.ak
  %i.am = fmul nsz float %i.al, %i.aj             ; 3 uses
  %i.an = fcmp nsz olt float %i.am, 1.000000e+00
  %i.ao = fcmp nsz ogt float %i.am, 5.000000e+02
  %..i = select nsz i1 %i.ao, float 5.000000e+02, float %i.am
  %.0.i = select nsz i1 %i.an, float 1.000000e+00, float %..i
  %i.ap = fptoui float %.0.i to i32               ; 3 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ag
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_Z8rangelimIfjjET_RKS0_RKT0_RKT1_.exit
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !55
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_Z8rangelimIfjjET_RKS0_RKT0_RKT1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.au = load ptr, ptr @g_settings, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.av = load ptr, ptr %2, align 8, !tbaa !54, !noalias !165
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !56, !noalias !165 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ax, ptr %5, align 8, !tbaa !51, !alias.scope !166
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !56, !alias.scope !166
  store i8 0, ptr %i.ax, align 8, !tbaa !55, !alias.scope !166
  %i.az = add i64 %i.aw, 22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.az)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !56, !alias.scope !166
  %i.bb = sub i64 4611686018427387903, %i.ba
  %i.bc = icmp ult i64 %i.bb, %i.aw
  br i1 %i.bc, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.av, i64 noundef %i.aw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !56, !alias.scope !166
  %i.bf = add i64 %i.be, -4611686018427387882
  %i.bg = icmp ult i64 %i.bf, 22
  br i1 %i.bg, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
          to label %.cont.i.i unwind label %bb.g

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.22, i64 noundef 22)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !54, !alias.scope !166 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ax
  br i1 %i.bk, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bl = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.l       ; 3 uses

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bm = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ax
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.h
  %i.bo = load i64, ptr %i.ax, align 8, !tbaa !55
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bq = icmp ugt i16 %i.bl, 1
  br i1 %i.bq, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.br = zext i16 %i.bl to i32
  %i.bs = uitofp nsz i32 %i.ap to float
  %i.bt = uitofp i16 %i.bl to float               ; 2 uses
  %i.bu = fdiv nsz float %i.bs, %i.bt
  %i.bv = call nsz noundef float @llvm.round.f32(float %i.bu)
  %i.bw = fmul nsz float %i.bv, %i.bt
  %i.bx = fptoui float %i.bw to i32
  %spec.select401 = call i32 @llvm.umax.i32(i32 %i.bx, i32 %i.br)
  br label %.thread

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit130
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.k:                                             ; preds = %._crit_edge.i.i131
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ag
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.k
  %i.cc = load i64, ptr %i.ag, align 8, !tbaa !55
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.dd

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ax
  br i1 %i.cg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.l, %bb.g
  %.sink = phi ptr [ %i.bj, %bb.g ], [ %i.cf, %bb.l ]
  %.pn84.ph = phi { ptr, i32 } [ %i.bi, %bb.g ], [ %i.ce, %bb.l ]
  %i.ch = load i64, ptr %i.ax, align 8, !tbaa !55
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ci) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.g
  %.pn84 = phi { ptr, i32 } [ %i.bi, %bb.g ], [ %i.ce, %bb.l ], [ %.pn84.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.dd

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN10FontEngine8initFontE8FontSpec) #25
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.thread:                                          ; preds = %bb.i, %bb.m
  %.0390 = phi i32 [ %i.ap, %bb.m ], [ %spec.select401, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  store i16 0, ptr %i.m, align 2, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  store i16 0, ptr %i.n, align 2, !tbaa !167
  %i.ck = load ptr, ptr @g_settings, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.cl, ptr %6, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cl, ptr noundef nonnull align 1 dereferenceable(11) @.str.25, i64 11, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.cm, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 27
  store i8 0, ptr %i.cn, align 1, !tbaa !55
  %i.co = invoke noundef zeroext i1 @_ZNK8Settings10getU16NoExERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERt(ptr noundef nonnull align 8 dereferenceable(236) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 2 dereferenceable(2) %i.m)
          to label %bb.q unwind label %bb.aa      ; 0 uses

bb.q:                                             ; preds = %.thread
  %i.cp = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cl
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.q
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !55
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ct = load ptr, ptr @g_settings, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cu, ptr %7, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  store i64 17, ptr %i.l, align 8, !tbaa !52
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc154 unwind label %bb.ab ; 2 uses

.noexc154:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  store ptr %i.cv, ptr %7, align 8, !tbaa !54
  %i.cw = load i64, ptr %i.l, align 8, !tbaa !52  ; 3 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.cv, ptr noundef nonnull align 1 dereferenceable(17) @.str.26, i64 17, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !56
  %i.cy = load ptr, ptr %7, align 8, !tbaa !54
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  %i.da = invoke noundef zeroext i1 @_ZNK8Settings10getU16NoExERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERt(ptr noundef nonnull align 8 dereferenceable(236) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 2 dereferenceable(2) %i.n)
          to label %bb.r unwind label %bb.ac      ; 0 uses

bb.r:                                             ; preds = %.noexc154
  %i.db = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cu
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.r
  %i.dd = load i64, ptr %i.cu, align 8, !tbaa !55
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.df = trunc i64 %sum.shift to i1
  %not. = icmp ne i8 %.sroa.4.0.extract.trunc, 2
  %i.dg = select i1 %not., i1 %i.df, i1 false
  br i1 %i.dg, label %bb.s, label %bb.ay

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  br i1 %i.r, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.dh = load ptr, ptr %3, align 8, !tbaa !54, !noalias !168
  %i.di = load i64, ptr %i.v, align 8, !tbaa !56, !noalias !168 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.dj, ptr %8, align 8, !tbaa !51, !alias.scope !169
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.dk, align 8, !tbaa !56, !alias.scope !169
  store i8 0, ptr %i.dj, align 8, !tbaa !55, !alias.scope !169
  %i.dl = add i64 %i.di, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.dl)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !56, !alias.scope !169
  %i.dn = and i64 %i.dm, -4
  %i.do = icmp eq i64 %i.dn, 4611686018427387900
  br i1 %i.do, label %.invoke.i.i165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i162: ; preds = %bb.u
  %i.dp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.10, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i163 unwind label %bb.v ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i163: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i162
  %i.dq = load i64, ptr %i.dk, align 8, !tbaa !56, !alias.scope !169
  %i.dr = sub i64 4611686018427387903, %i.dq
  %i.ds = icmp ult i64 %i.dr, %i.di
  br i1 %i.ds, label %.invoke.i.i165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i164

.invoke.i.i165:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i163, %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
          to label %.cont.i.i166 unwind label %bb.v

.cont.i.i166:                                     ; preds = %.invoke.i.i165
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i163
  %i.dt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.dh, i64 noundef %i.di)
          to label %.critedge unwind label %bb.v  ; 0 uses

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i164, %.invoke.i.i165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i162, %bb.t
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %8, align 8, !tbaa !54, !alias.scope !169 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.dj
  br i1 %i.dw, label %.critedge113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159: ; preds = %bb.v
  %i.dx = load i64, ptr %i.dj, align 8, !tbaa !55, !alias.scope !169
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #26
  br label %.critedge113

bb.w:                                             ; preds = %bb.s
  %i.dz = load i64, ptr %i.v, align 8, !tbaa !56  ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %._crit_edge.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

._crit_edge.i.i169:                               ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.eb, ptr %8, align 8, !tbaa !51
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ec, align 8, !tbaa !56
  store i8 0, ptr %i.eb, align 8, !tbaa !55
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ed, ptr %8, align 8, !tbaa !51, !alias.scope !170
  %i.ee = load ptr, ptr %3, align 8, !tbaa !54, !noalias !170
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 2 uses
  %i.eg = add i64 %i.dz, -1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24, !noalias !170
  store i64 %i.eg, ptr %i.k, align 8, !tbaa !52, !noalias !170
  %i.eh = icmp ugt i64 %i.eg, 15
  br i1 %i.eh, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ei = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc174 unwind label %bb.ad ; 2 uses

.noexc174:                                        ; preds = %.noexc10.i.i
  store ptr %i.ei, ptr %8, align 8, !tbaa !54, !alias.scope !170
  %i.ej = load i64, ptr %i.k, align 8, !tbaa !52, !noalias !170
  store i64 %i.ej, ptr %i.ed, align 8, !tbaa !55, !alias.scope !170
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ek = phi ptr [ %i.ei, %.noexc174 ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.eg, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.el = load i8, ptr %i.ef, align 1, !tbaa !55
  store i8 %i.el, ptr %i.ek, align 1, !tbaa !55
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.y:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr nonnull align 1 %i.ef, i64 %i.eg, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.x, %bb.y
  %i.em = load i64, ptr %i.k, align 8, !tbaa !52, !noalias !170 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !56, !alias.scope !170
  %i.eo = load ptr, ptr %8, align 8, !tbaa !54, !alias.scope !170
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.em
  store i8 0, ptr %i.ep, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24, !noalias !170
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %._crit_edge.i.i169
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !56
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit176

bb.z:                                             ; preds = %.critedge
  %i.et = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit176 unwind label %bb.ae ; 0 uses

bb.aa:                                            ; preds = %.thread
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.cl
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.aa
  %i.ex = load i64, ptr %i.cl, align 8, !tbaa !55
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.dc

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.ac:                                            ; preds = %.noexc154
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.cu
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.ac
  %i.fd = load i64, ptr %i.cu, align 8, !tbaa !55
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.ab
  %.pn88 = phi { ptr, i32 } [ %i.ez, %bb.ab ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %i.fa, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.dc

bb.ad:                                            ; preds = %.noexc10.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.critedge113

bb.ae:                                            ; preds = %bb.z
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit176: ; preds = %bb.z, %.critedge
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.fi = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_7irr_ptrIN3gui10SGUITTFaceEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit unwind label %bb.ai ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit176
  %.not404 = icmp eq ptr %i.fi, null
  br i1 %.not404, label %.critedge115, label %bb.af

bb.af:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !68
  %i.fl = load ptr, ptr %0, align 8, !tbaa !30
  %i.fm = load i16, ptr %i.m, align 2, !tbaa !167
  %i.fn = zext i16 %i.fm to i32
  %i.fo = load i16, ptr %i.n, align 2, !tbaa !167
  %i.fp = zext i16 %i.fo to i32
  %i.fq = invoke noundef ptr @_ZN3gui10CGUITTFont12createTTFontEPNS_15IGUIEnvironmentEPNS_10SGUITTFaceEjbbjj(ptr noundef %i.fl, ptr noundef %i.fk, i32 noundef %.0390, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %i.fn, i32 noundef %i.fp)
          to label %.noexc185 unwind label %bb.aj, !inline_history !154 ; 4 uses

.noexc185:                                        ; preds = %bb.af
  %.not.i = icmp eq ptr %i.fq, null
  br i1 %.not.i, label %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit", label %bb.ag

bb.ag:                                            ; preds = %.noexc185
  br i1 %i.o, label %.critedge115, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.12.sroa.4.0.insert.ext376 = shl nuw nsw i64 %.sroa.12.sroa.4.0.extract.shift402, 8
  %.sroa.12.sroa.4.0.insert.shift377 = and i64 %.sroa.12.sroa.4.0.insert.ext376, 65280
  %.sroa.12.sroa.0.0.insert.ext373 = and i64 %.sroa.12.0.extract.shift, 255
  %.sroa.12.sroa.4.0.insert.insert379 = or disjoint i64 %.sroa.12.sroa.4.0.insert.shift377, %.sroa.12.sroa.0.0.insert.ext373
  %.sroa.12.sroa.0.0.insert.insert375 = shl nuw nsw i64 %.sroa.12.sroa.4.0.insert.insert379, 40
  %.sroa.01.0.insert.ext.i = and i64 %1, 4294967295
  %.sroa.5.0.insert.shift.i = or disjoint i64 %.sroa.12.sroa.0.0.insert.insert375, %.sroa.01.0.insert.ext.i
  %.sroa.01.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 72057602627862528
  %i.fr = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpecb(ptr noundef nonnull align 8 dereferenceable(1327) %0, i64 %.sroa.01.0.insert.insert.i, i1 noundef zeroext true)
          to label %.noexc186 unwind label %bb.aj, !inline_history !154

.noexc186:                                        ; preds = %bb.ah
  invoke void @_ZN3gui10CGUITTFont11setFallbackEPNS_8IGUIFontE(ptr noundef nonnull align 8 dereferenceable(248) %i.fq, ptr noundef %i.fr)
          to label %.critedge115 unwind label %bb.aj, !inline_history !154

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit176
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aj:                                            ; preds = %.noexc186, %bb.ah, %bb.af
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit": ; preds = %.noexc185
  %.not.i188 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i188, label %_ZTW11errorstream.exit, label %bb.ak

bb.ak:                                            ; preds = %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit"
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit", %bb.ak
  %i.fu = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !81, !nonnull !82, !align !83 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !58
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef zeroext i1 %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %.noexc189 unwind label %bb.aw, !inline_history !155

.noexc189:                                        ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.fy, i64 976, i64 984
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @.str.27, ptr %i.j, align 8, !tbaa !47
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.al unwind label %bb.aw     ; 0 uses

bb.al:                                            ; preds = %.noexc189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !84 ; 5 uses
  %.not.i191 = icmp eq ptr %i.gb, null
  br i1 %.not.i191, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !58
  %i.gd = getelementptr i8, ptr %i.gc, i64 -24
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds i8, ptr %i.gb, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !91
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.gb)
          to label %.noexc192 unwind label %bb.aw

.noexc192:                                        ; preds = %bb.an
  %.pre.i = load ptr, ptr %i.fz, align 8, !tbaa !84
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc192, %bb.am
  %i.gj = phi ptr [ %.pre.i, %.noexc192 ], [ %i.gb, %bb.am ]
  %i.gk = load ptr, ptr %8, align 8, !tbaa !54
  %i.gl = load i64, ptr %i.eq, align 8, !tbaa !56
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef %i.gk, i64 noundef %i.gl)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %bb.aw ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.al, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @.str.28, ptr %i.i, align 8, !tbaa !47
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.ap unwind label %bb.aw     ; 2 uses

bb.ap:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !84 ; 5 uses
  %.not.i195 = icmp eq ptr %i.go, null
  br i1 %.not.i195, label %.critedge115, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !58
  %i.gq = getelementptr i8, ptr %i.gp, i64 -24
  %i.gr = load i64, ptr %i.gq, align 8            ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !91
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.go)
          to label %.noexc197 unwind label %bb.aw

.noexc197:                                        ; preds = %bb.ar
  %.pre.i196 = load ptr, ptr %i.gn, align 8, !tbaa !84 ; 2 uses
  %.pre = load ptr, ptr %.pre.i196, align 8, !tbaa !58
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre419 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.as

bb.as:                                            ; preds = %.noexc197, %bb.aq
  %i.gw = phi i64 [ %.pre419, %.noexc197 ], [ %i.gr, %bb.aq ]
  %i.gx = phi ptr [ %.pre.i196, %.noexc197 ], [ %i.go, %bb.aq ] ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 240
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i, label %bb.at, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc317 unwind label %bb.aw

.noexc317:                                        ; preds = %bb.at
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.as
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !103
  %.not.i1.i.i = icmp eq i8 %i.hc, 0
  br i1 %.not.i1.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 67
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.av:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ha)
          to label %.noexc318 unwind label %bb.aw

.noexc318:                                        ; preds = %bb.av
  %i.hf = load ptr, ptr %i.ha, align 8, !tbaa !58
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef signext i8 %i.hh(ptr noundef nonnull align 8 dereferenceable(570) %i.ha, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.aw, !inline_history !156

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc318, %bb.au
  %.0.i.i.i = phi i8 [ %i.he, %bb.au ], [ %i.hi, %.noexc318 ]
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, i8 noundef signext %.0.i.i.i)
          to label %.noexc320 unwind label %bb.aw

.noexc320:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hj)
          to label %.critedge115 unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %.noexc320, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc318, %bb.av, %bb.at, %bb.ar, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.ao, %bb.an, %.noexc189, %_ZTW11errorstream.exit
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.critedge115:                                     ; preds = %.noexc186, %bb.ag, %.noexc320, %bb.ap, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit
  %.272 = phi ptr [ null, %.noexc320 ], [ undef, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit ], [ null, %bb.ap ], [ %i.fq, %bb.ag ], [ %i.fq, %.noexc186 ]
  %cond3 = phi i1 [ true, %.noexc320 ], [ true, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit ], [ true, %bb.ap ], [ false, %bb.ag ], [ false, %.noexc186 ]
  %i.hm = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %.critedge115
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !55
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %.critedge115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %cond3, label %bb.ay, label %bb.db

bb.ax:                                            ; preds = %bb.ai, %bb.aw, %bb.aj, %bb.ae
  %.pn91.pn.pn = phi { ptr, i32 } [ %i.fg, %bb.ae ], [ %i.fs, %bb.ai ], [ %i.hl, %bb.aw ], [ %i.ft, %bb.aj ] ; 2 uses
  %i.hr = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %.critedge113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

end_hunk_0
begin_hunk_1_@_ZN10FontEngine8initFontE8FontSpec:._crit_edge.i.i
  %i.lj = load i8, ptr %i.lc, align 1, !tbaa !55
  store i8 %i.lj, ptr %i.li, align 1, !tbaa !55
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i236
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.li, ptr align 1 %i.lc, i64 %i.le, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i236
  %i.lk = load i64, ptr %i.g, align 8, !tbaa !52  ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 %i.lk, ptr %i.ll, align 8, !tbaa !56
  %i.lm = load ptr, ptr %i.ky, align 16, !tbaa !54
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lk
  store i8 0, ptr %i.ln, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %.not.i243 = icmp eq ptr @_ZTH10infostream, null
  %i.lo = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.lp = zext i32 %.0390 to i64
  %.not.i277 = icmp eq ptr @_ZTH11errorstream, null
  %i.lq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  br label %bb.bx

.thread396:                                       ; preds = %.noexc.i234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit206
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.bw:                                            ; preds = %.noexc.i237, %bb.br, %bb.bq
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lr = load ptr, ptr %12, align 16, !tbaa !54  ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.bw
  %i.lu = load i64, ptr %i.ls, align 16, !tbaa !55
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #26
  br label %.loopexit

bb.bx:                                            ; preds = %bb.bv, %_ZN11StreamProxylsEPFRSoS0_E.exit292
  %.0.idx413 = phi i64 [ 0, %bb.bv ], [ %.0.add, %_ZN11StreamProxylsEPFRSoS0_E.exit292 ] ; 2 uses
  %.0.ptr414 = getelementptr inbounds nuw i8, ptr %12, i64 %.0.idx413 ; 4 uses
  br i1 %.not.i243, label %_ZTW10infostream.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.bx, %bb.by
  %i.lw = load ptr, ptr %i.lo, align 8, !tbaa !81, !nonnull !82, !align !83 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !58
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = invoke noundef zeroext i1 %i.ly(ptr noundef nonnull align 8 dereferenceable(8) %i.lw)
          to label %.noexc245 unwind label %.loopexit405, !inline_history !163

.noexc245:                                        ; preds = %_ZTW10infostream.exit
  %.v.i244 = select i1 %i.lz, i64 976, i64 984
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.v.i244 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.31, ptr %i.f, align 8, !tbaa !47
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.bz unwind label %.loopexit405 ; 0 uses

bb.bz:                                            ; preds = %.noexc245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.mc = load ptr, ptr %.0.ptr414, align 16, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.mc, ptr %i.e, align 8, !tbaa !47
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ca unwind label %.loopexit405

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.32, ptr %i.d, align 8, !tbaa !47
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.cb unwind label %.loopexit405 ; 3 uses

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !84 ; 5 uses
  %.not.i251 = icmp eq ptr %i.mf, null
  br i1 %.not.i251, label %_ZN11StreamProxylsIRjEERS_OT_.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !58
  %i.mh = getelementptr i8, ptr %i.mg, i64 -24
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds i8, ptr %i.mf, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !91
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.mf)
          to label %.noexc253 unwind label %.loopexit405

.noexc253:                                        ; preds = %bb.cd
  %.pre.i252 = load ptr, ptr %i.me, align 8, !tbaa !84
  br label %bb.ce

bb.ce:                                            ; preds = %.noexc253, %bb.cc
  %i.mn = phi ptr [ %.pre.i252, %.noexc253 ], [ %i.mf, %bb.cc ]
  %i.mo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mn, i64 noundef %i.lp)
          to label %_ZN11StreamProxylsIRjEERS_OT_.exit unwind label %.loopexit405 ; 0 uses

_ZN11StreamProxylsIRjEERS_OT_.exit:               ; preds = %bb.cb, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.33, ptr %i.c, align 8, !tbaa !47
  %i.mp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.me, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cf unwind label %.loopexit405 ; 2 uses

bb.cf:                                            ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !84 ; 5 uses
  %.not.i257 = icmp eq ptr %i.mq, null
  br i1 %.not.i257, label %_ZN11StreamProxylsEPFRSoS0_E.exit261, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !58
  %i.ms = getelementptr i8, ptr %i.mr, i64 -24
  %i.mt = load i64, ptr %i.ms, align 8            ; 2 uses
  %i.mu = getelementptr inbounds i8, ptr %i.mq, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !91
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.mq)
          to label %.noexc259 unwind label %.loopexit405

.noexc259:                                        ; preds = %bb.ch
  %.pre.i258 = load ptr, ptr %i.mp, align 8, !tbaa !84 ; 2 uses
  %.pre420 = load ptr, ptr %.pre.i258, align 8, !tbaa !58
  %.phi.trans.insert421 = getelementptr i8, ptr %.pre420, i64 -24
  %.pre422 = load i64, ptr %.phi.trans.insert421, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc259, %bb.cg
  %i.my = phi i64 [ %.pre422, %.noexc259 ], [ %i.mt, %bb.cg ]
  %i.mz = phi ptr [ %.pre.i258, %.noexc259 ], [ %i.mq, %bb.cg ] ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %i.mz, i64 %i.my
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 240
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i322 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i322, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323

.invoke:                                          ; preds = %bb.ci, %bb.cw
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323: ; preds = %bb.ci
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 56
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !103
  %.not.i1.i.i324 = icmp eq i8 %i.ne, 0
  br i1 %.not.i1.i.i324, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 67
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325

bb.ck:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.nc)
          to label %.noexc328 unwind label %.loopexit405

.noexc328:                                        ; preds = %bb.ck
  %i.nh = load ptr, ptr %i.nc, align 8, !tbaa !58
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 48
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = invoke noundef signext i8 %i.nj(ptr noundef nonnull align 8 dereferenceable(570) %i.nc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325 unwind label %.loopexit405, !inline_history !156

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325: ; preds = %.noexc328, %bb.cj
  %.0.i.i.i326 = phi i8 [ %i.ng, %bb.cj ], [ %i.nk, %.noexc328 ]
  %i.nl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.mz, i8 noundef signext %.0.i.i.i326)
          to label %.noexc330 unwind label %.loopexit405

.noexc330:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325
  %i.nm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nl)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit261 unwind label %.loopexit405 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit261:             ; preds = %bb.cf, %.noexc330
  %i.nn = invoke noundef ptr @_ZN10FontEngine13getOrLoadFaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1327) %0, ptr noundef nonnull align 8 dereferenceable(32) %.0.ptr414)
          to label %bb.cl unwind label %.loopexit406 ; 2 uses

bb.cl:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit261
  %.not99 = icmp eq ptr %i.nn, null
  br i1 %.not99, label %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit276", label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.no = load ptr, ptr %0, align 8, !tbaa !30
  %.not423 = icmp ne i8 %.sroa.4.0.extract.trunc, 2
  %i.np = load i16, ptr %i.m, align 2, !tbaa !167
  %i.nq = zext i16 %i.np to i32
  %i.nr = load i16, ptr %i.n, align 2, !tbaa !167
  %i.ns = zext i16 %i.nr to i32
  %i.nt = invoke noundef ptr @_ZN3gui10CGUITTFont12createTTFontEPNS_15IGUIEnvironmentEPNS_10SGUITTFaceEjbbjj(ptr noundef %i.no, ptr noundef nonnull %i.nn, i32 noundef %.0390, i1 noundef zeroext true, i1 noundef zeroext %.not423, i32 noundef %i.nq, i32 noundef %i.ns)
          to label %.noexc273 unwind label %.loopexit.split-lp407, !inline_history !154 ; 4 uses

.noexc273:                                        ; preds = %bb.cm
  %.not.i262 = icmp eq ptr %i.nt, null
  %brmerge = or i1 %.not.i262, %i.o
  br i1 %brmerge, label %.critedge117, label %bb.cn

bb.cn:                                            ; preds = %.noexc273
  %.sroa.12.sroa.5.0.insert.shift = shl nuw nsw i64 %sum.shift, 16
  %.sroa.12.sroa.4.0.insert.ext = shl nuw nsw i64 %.sroa.12.sroa.4.0.extract.shift402, 8
  %.sroa.12.sroa.4.0.insert.shift = and i64 %.sroa.12.sroa.4.0.insert.ext, 65280
  %.sroa.12.sroa.4.0.insert.insert = or disjoint i64 %.sroa.12.sroa.5.0.insert.shift, %.sroa.12.sroa.4.0.insert.shift
  %.sroa.12.sroa.0.0.insert.ext = and i64 %.sroa.12.0.extract.shift, 255
  %.sroa.12.sroa.0.0.insert.insert = or disjoint i64 %.sroa.12.sroa.4.0.insert.insert, %.sroa.12.sroa.0.0.insert.ext
  %.sroa.5.0.insert.shift.i268 = shl nuw i64 %.sroa.12.sroa.0.0.insert.insert, 40
  %.sroa.01.0.insert.ext.i269 = and i64 %1, 4294967295
  %.sroa.4.0.insert.insert.i270 = or disjoint i64 %.sroa.5.0.insert.shift.i268, %.sroa.01.0.insert.ext.i269
  %.sroa.01.0.insert.insert.i271 = or disjoint i64 %.sroa.4.0.insert.insert.i270, 8589934592
  %i.nu = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpecb(ptr noundef nonnull align 8 dereferenceable(1327) %0, i64 %.sroa.01.0.insert.insert.i271, i1 noundef zeroext true)
          to label %.noexc274 unwind label %.loopexit.split-lp407, !inline_history !154

.noexc274:                                        ; preds = %bb.cn
  invoke void @_ZN3gui10CGUITTFont11setFallbackEPNS_8IGUIFontE(ptr noundef nonnull align 8 dereferenceable(248) %i.nt, ptr noundef %i.nu)
          to label %.critedge117 unwind label %.loopexit.split-lp407, !inline_history !154

.loopexit405:                                     ; preds = %_ZTW10infostream.exit, %.noexc245, %bb.bz, %bb.ca, %bb.cd, %bb.ce, %_ZN11StreamProxylsIRjEERS_OT_.exit, %bb.ch, %_ZTW11errorstream.exit278, %.noexc280, %bb.cr, %bb.cs, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.cv, %bb.ck, %.noexc328, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325, %.noexc330, %bb.cy, %.noexc339, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336, %.noexc341
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit406:                                     ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit261
  %lpad.loopexit408 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp407:                            ; preds = %bb.cm, %bb.cn, %.noexc274
  %lpad.loopexit.split-lp409 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit276": ; preds = %bb.cl
  br i1 %.not.i277, label %_ZTW11errorstream.exit278, label %bb.co

bb.co:                                            ; preds = %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit276"
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit278

_ZTW11errorstream.exit278:                        ; preds = %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit276", %bb.co
  %i.nv = load ptr, ptr %i.lq, align 8, !tbaa !81, !nonnull !82, !align !83 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !58
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = invoke noundef zeroext i1 %i.nx(ptr noundef nonnull align 8 dereferenceable(8) %i.nv)
          to label %.noexc280 unwind label %.loopexit405, !inline_history !164

.noexc280:                                        ; preds = %_ZTW11errorstream.exit278
  %.v.i279 = select i1 %i.ny, i64 976, i64 984
  %i.nz = getelementptr inbounds nuw i8, ptr %i.lq, i64 %.v.i279 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.34, ptr %i.b, align 8, !tbaa !47
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.cp unwind label %.loopexit405 ; 0 uses

bb.cp:                                            ; preds = %.noexc280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ob = load ptr, ptr %i.nz, align 8, !tbaa !84 ; 5 uses
  %.not.i282 = icmp eq ptr %i.ob, null
  br i1 %.not.i282, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !58
  %i.od = getelementptr i8, ptr %i.oc, i64 -24
  %i.oe = load i64, ptr %i.od, align 8
  %i.of = getelementptr inbounds i8, ptr %i.ob, i64 %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !91
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ob)
          to label %.noexc284 unwind label %.loopexit405

.noexc284:                                        ; preds = %bb.cr
  %.pre.i283 = load ptr, ptr %i.nz, align 8, !tbaa !84
  br label %bb.cs

bb.cs:                                            ; preds = %.noexc284, %bb.cq
  %i.oj = phi ptr [ %.pre.i283, %.noexc284 ], [ %i.ob, %bb.cq ]
  %i.ok = load ptr, ptr %.0.ptr414, align 16, !tbaa !54
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.ptr414, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !56
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, ptr noundef %i.ok, i64 noundef %i.om)
          to label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %.loopexit405 ; 0 uses

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.cp, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.35, ptr %i.a, align 8, !tbaa !47
  %i.oo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ct unwind label %.loopexit405 ; 2 uses

bb.ct:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !84 ; 5 uses
  %.not.i288 = icmp eq ptr %i.op, null
  br i1 %.not.i288, label %_ZN11StreamProxylsEPFRSoS0_E.exit292, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !58
  %i.or = getelementptr i8, ptr %i.oq, i64 -24
  %i.os = load i64, ptr %i.or, align 8            ; 2 uses
  %i.ot = getelementptr inbounds i8, ptr %i.op, i64 %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !91
  %i.ow = icmp eq i32 %i.ov, 0
  br i1 %i.ow, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.op)
          to label %.noexc290 unwind label %.loopexit405

.noexc290:                                        ; preds = %bb.cv
  %.pre.i289 = load ptr, ptr %i.oo, align 8, !tbaa !84 ; 2 uses
  %.pre424 = load ptr, ptr %.pre.i289, align 8, !tbaa !58
  %.phi.trans.insert425 = getelementptr i8, ptr %.pre424, i64 -24
  %.pre426 = load i64, ptr %.phi.trans.insert425, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %.noexc290, %bb.cu
  %i.ox = phi i64 [ %.pre426, %.noexc290 ], [ %i.os, %bb.cu ]
  %i.oy = phi ptr [ %.pre.i289, %.noexc290 ], [ %i.op, %bb.cu ] ; 2 uses
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 %i.ox
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 240
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i333 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i333, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334: ; preds = %bb.cw
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 56
  %i.pd = load i8, ptr %i.pc, align 8, !tbaa !103
  %.not.i1.i.i335 = icmp eq i8 %i.pd, 0
  br i1 %.not.i1.i.i335, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 67
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336

bb.cy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.pb)
          to label %.noexc339 unwind label %.loopexit405

.noexc339:                                        ; preds = %bb.cy
  %i.pg = load ptr, ptr %i.pb, align 8, !tbaa !58
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = invoke noundef signext i8 %i.pi(ptr noundef nonnull align 8 dereferenceable(570) %i.pb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336 unwind label %.loopexit405, !inline_history !156

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336: ; preds = %.noexc339, %bb.cx
  %.0.i.i.i337 = phi i8 [ %i.pf, %bb.cx ], [ %i.pj, %.noexc339 ]
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, i8 noundef signext %.0.i.i.i337)
          to label %.noexc341 unwind label %.loopexit405

.noexc341:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pk)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit292 unwind label %.loopexit405 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit292:             ; preds = %.noexc341, %bb.ct
  %.0.add = add nuw nsw i64 %.0.idx413, 32        ; 2 uses
  %.not98 = icmp eq i64 %.0.add, 64
  br i1 %.not98, label %.critedge117, label %bb.bx

bb.cz:                                            ; preds = %.loopexit406, %.loopexit.split-lp407, %.loopexit405, %.loopexit.split-lp
  %.pn100 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit405 ], [ %lpad.loopexit408, %.loopexit406 ], [ %lpad.loopexit.split-lp409, %.loopexit.split-lp407 ] ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.pn = load ptr, ptr %i.pm, align 16, !tbaa !54 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

.critedge117:                                     ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit292, %.noexc273, %.noexc274
  %spec.select = phi ptr [ %i.nt, %.noexc273 ], [ %i.nt, %.noexc274 ], [ null, %_ZN11StreamProxylsEPFRSoS0_E.exit292 ]
  %i.pq = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.pr = load ptr, ptr %i.pq, align 16, !tbaa !54 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.pt = icmp eq ptr %i.pr, %i.ps
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %.critedge117
  %i.pu = load i64, ptr %i.ps, align 16, !tbaa !55
end_hunk_1
