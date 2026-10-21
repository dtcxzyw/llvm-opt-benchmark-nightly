Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/fontengine?download=true
inline.NumInlined: 907
inline.NumDeleted: 389
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN10FontEngine7getFontE8FontSpecb:bb.a
  store i8 0, ptr %i.f, align 4, !tbaa !139
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 0, ptr %i.g, align 1, !tbaa !140
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
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i64 %1, 40     ; 3 uses
  %.sroa.12.sroa.4.0.extract.shift402 = lshr i64 %1, 48 ; 3 uses
  %sum.shift = lshr i64 %1, 56                    ; 2 uses
  %i.o = icmp eq i8 %.sroa.4.0.extract.trunc, 2   ; 6 uses
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
  br label %bb.cw

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
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.y = trunc i64 %.sroa.12.sroa.4.0.extract.shift402 to i1
  br i1 %i.y, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit130

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.z = load i64, ptr %i.v, align 8, !tbaa !56
  %i.aa = add i64 %i.z, -4611686018427387897
  %i.ab = icmp ult i64 %i.aa, 7
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i127

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
          to label %.noexc128 unwind label %bb.n

.noexc128:                                        ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i127: ; preds = %bb.c
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.20, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit130 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit130: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.ad = invoke noundef float @_ZN15RenderingEngine17getDisplayDensityEv()
          to label %._crit_edge.i.i131 unwind label %bb.n

._crit_edge.i.i131:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit130
  %i.ae = load ptr, ptr @g_settings, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.af, ptr noundef nonnull align 1 dereferenceable(11) @.str.21, i64 11, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 11, ptr %i.ag, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 27
  store i8 0, ptr %i.ah, align 1, !tbaa !55
  %i.ai = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_Z8rangelimIfjjET_RKS0_RKT0_RKT1_.exit unwind label %bb.i

_Z8rangelimIfjjET_RKS0_RKT0_RKT1_.exit:           ; preds = %._crit_edge.i.i131
  %i.aj = uitofp nsz i32 %.sroa.0.0.extract.trunc to float
  %i.ak = fmul nsz float %i.ad, %i.aj
  %i.al = fmul nsz float %i.ak, %i.ai             ; 3 uses
  %i.am = fcmp nsz olt float %i.al, 1.000000e+00
  %i.an = fcmp nsz ogt float %i.al, 5.000000e+02
  %..i = select nsz i1 %i.an, float 5.000000e+02, float %i.al
  %.0.i = select nsz i1 %i.am, float 1.000000e+00, float %..i
  %i.ao = fptoui float %.0.i to i32               ; 3 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.af
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_Z8rangelimIfjjET_RKS0_RKT0_RKT1_.exit
  %i.ar = load i64, ptr %i.af, align 8, !tbaa !55
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_Z8rangelimIfjjET_RKS0_RKT0_RKT1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.at = load ptr, ptr @g_settings, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.au = load ptr, ptr %2, align 8, !tbaa !54, !noalias !165
  %i.av = load i64, ptr %i.q, align 8, !tbaa !56, !noalias !165 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !51, !alias.scope !166
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !56, !alias.scope !166
  store i8 0, ptr %i.aw, align 8, !tbaa !55, !alias.scope !166
  %i.ay = add i64 %i.av, 22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ay)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !56, !alias.scope !166
  %i.ba = sub i64 4611686018427387903, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.av
  br i1 %i.bb, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.e
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.au, i64 noundef %i.av)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !56, !alias.scope !166
  %i.be = add i64 %i.bd, -4611686018427387882
  %i.bf = icmp ult i64 %i.be, 22
  br i1 %i.bf, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
          to label %.cont.i.i unwind label %bb.f

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.22, i64 noundef 22)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !54, !alias.scope !166 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.aw
  br i1 %i.bj, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bk = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j       ; 3 uses

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bl = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aw
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.g
  %i.bn = load i64, ptr %i.aw, align 8, !tbaa !55
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bp = icmp ugt i16 %i.bk, 1
  br i1 %i.bp, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.bq = zext i16 %i.bk to i32
  %i.br = uitofp nsz i32 %i.ao to float
  %i.bs = uitofp i16 %i.bk to float               ; 2 uses
  %i.bt = fdiv nsz float %i.br, %i.bs
  %i.bu = call nsz noundef float @llvm.round.f32(float %i.bt)
  %i.bv = fmul nsz float %i.bu, %i.bs
  %i.bw = fptoui float %i.bv to i32
  %spec.select401 = call i32 @llvm.umax.i32(i32 %i.bw, i32 %i.bq)
  br label %.thread

bb.i:                                             ; preds = %._crit_edge.i.i131
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.af
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.i
  %i.ca = load i64, ptr %i.af, align 8, !tbaa !55
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.cv

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.aw
  br i1 %i.ce, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.j, %bb.f
  %.sink = phi ptr [ %i.bi, %bb.f ], [ %i.cd, %bb.j ]
  %.pn84.ph = phi { ptr, i32 } [ %i.bh, %bb.f ], [ %i.cc, %bb.j ]
  %i.cf = load i64, ptr %i.aw, align 8, !tbaa !55
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cg) #26
end_hunk_0
begin_hunk_1_@_ZN10FontEngine8initFontE8FontSpec:._crit_edge.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.dd = trunc i64 %sum.shift to i1
  %not. = xor i1 %i.o, true
  %i.de = select i1 %not., i1 %i.dd, i1 false
  br i1 %i.de, label %bb.q, label %bb.ar

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  br i1 %i.r, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.df = load ptr, ptr %3, align 8, !tbaa !54, !noalias !168
  %i.dg = load i64, ptr %i.v, align 8, !tbaa !56, !noalias !168 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.dh, ptr %8, align 8, !tbaa !51, !alias.scope !169
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.di, align 8, !tbaa !56, !alias.scope !169
  store i8 0, ptr %i.dh, align 8, !tbaa !55, !alias.scope !169
  %i.dj = add i64 %i.dg, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.dj)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !56, !alias.scope !169
  %i.dl = and i64 %i.dk, -4
  %i.dm = icmp eq i64 %i.dl, 4611686018427387900
  br i1 %i.dm, label %.invoke.i.i165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i162: ; preds = %bb.s
  %i.dn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.10, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i163 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i163: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i162
  %i.do = load i64, ptr %i.di, align 8, !tbaa !56, !alias.scope !169
  %i.dp = sub i64 4611686018427387903, %i.do
  %i.dq = icmp ult i64 %i.dp, %i.dg
  br i1 %i.dq, label %.invoke.i.i165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i164

.invoke.i.i165:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i163, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
          to label %.cont.i.i166 unwind label %bb.t

.cont.i.i166:                                     ; preds = %.invoke.i.i165
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i163
  %i.dr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.df, i64 noundef %i.dg)
          to label %.critedge unwind label %bb.t  ; 0 uses

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i164, %.invoke.i.i165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i162, %bb.r
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %8, align 8, !tbaa !54, !alias.scope !169 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dh
  br i1 %i.du, label %.critedge113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159: ; preds = %bb.t
  %i.dv = load i64, ptr %i.dh, align 8, !tbaa !55, !alias.scope !169
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #26
  br label %.critedge113

bb.u:                                             ; preds = %bb.q
  %i.dx = load i64, ptr %i.v, align 8, !tbaa !56  ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %._crit_edge.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

._crit_edge.i.i169:                               ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.dz, ptr %8, align 8, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ea, align 8, !tbaa !56
  store i8 0, ptr %i.dz, align 8, !tbaa !55
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.eb, ptr %8, align 8, !tbaa !51, !alias.scope !170
  %i.ec = load ptr, ptr %3, align 8, !tbaa !54, !noalias !170
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 2 uses
  %i.ee = add i64 %i.dx, -1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24, !noalias !170
  store i64 %i.ee, ptr %i.k, align 8, !tbaa !52, !noalias !170
  %i.ef = icmp ugt i64 %i.ee, 15
  br i1 %i.ef, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc174 unwind label %bb.ab ; 2 uses

.noexc174:                                        ; preds = %.noexc10.i.i
  store ptr %i.eg, ptr %8, align 8, !tbaa !54, !alias.scope !170
  %i.eh = load i64, ptr %i.k, align 8, !tbaa !52, !noalias !170
  store i64 %i.eh, ptr %i.eb, align 8, !tbaa !55, !alias.scope !170
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ei = phi ptr [ %i.eg, %.noexc174 ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.ee, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !55
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !55
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.w:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr nonnull align 1 %i.ed, i64 %i.ee, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.v, %bb.w
  %i.ek = load i64, ptr %i.k, align 8, !tbaa !52, !noalias !170 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !56, !alias.scope !170
  %i.em = load ptr, ptr %8, align 8, !tbaa !54, !alias.scope !170
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  store i8 0, ptr %i.en, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24, !noalias !170
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %._crit_edge.i.i169
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !56
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit176

bb.x:                                             ; preds = %.critedge
  %i.er = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit176 unwind label %bb.aq ; 0 uses

bb.y:                                             ; preds = %.thread
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.cj
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.y
  %i.ev = load i64, ptr %i.cj, align 8, !tbaa !55
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.cu

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.aa:                                            ; preds = %.noexc154
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.cs
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.aa
  %i.fb = load i64, ptr %i.cs, align 8, !tbaa !55
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.z
  %.pn88 = phi { ptr, i32 } [ %i.ex, %bb.z ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %i.ey, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cu

bb.ab:                                            ; preds = %.noexc10.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.critedge113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit176: ; preds = %bb.x, %.critedge
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.ff = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_7irr_ptrIN3gui10SGUITTFaceEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.fe, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit unwind label %bb.aq ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit176
  %.not404 = icmp eq ptr %i.ff, null
  br i1 %.not404, label %.critedge115, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !68
  %i.fi = load ptr, ptr %0, align 8, !tbaa !30
  %.not414 = xor i1 %i.o, true
  %i.fj = load i16, ptr %i.m, align 2, !tbaa !167
  %i.fk = zext i16 %i.fj to i32
  %i.fl = load i16, ptr %i.n, align 2, !tbaa !167
  %i.fm = zext i16 %i.fl to i32
  %i.fn = invoke noundef ptr @_ZN3gui10CGUITTFont12createTTFontEPNS_15IGUIEnvironmentEPNS_10SGUITTFaceEjbbjj(ptr noundef %i.fi, ptr noundef %i.fh, i32 noundef %.0390, i1 noundef zeroext true, i1 noundef zeroext %.not414, i32 noundef %i.fk, i32 noundef %i.fm)
          to label %.noexc185 unwind label %bb.aq, !inline_history !154 ; 4 uses

.noexc185:                                        ; preds = %bb.ac
  %.not.i = icmp eq ptr %i.fn, null
  br i1 %.not.i, label %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit", label %13

13:                                               ; preds = %.noexc185
  br i1 %i.o, label %.critedge115, label %bb.ad

bb.ad:                                            ; preds = %13
  %.sroa.12.sroa.4.0.insert.ext376 = shl nuw nsw i64 %.sroa.12.sroa.4.0.extract.shift402, 8
  %.sroa.12.sroa.4.0.insert.shift377 = and i64 %.sroa.12.sroa.4.0.insert.ext376, 65280
  %.sroa.12.sroa.0.0.insert.ext373 = and i64 %.sroa.12.0.extract.shift, 255
  %.sroa.12.sroa.4.0.insert.insert379 = or disjoint i64 %.sroa.12.sroa.4.0.insert.shift377, %.sroa.12.sroa.0.0.insert.ext373
  %.sroa.12.sroa.0.0.insert.insert375 = shl nuw nsw i64 %.sroa.12.sroa.4.0.insert.insert379, 40
  %.sroa.01.0.insert.ext.i = and i64 %1, 4294967295
  %.sroa.5.0.insert.shift.i = or disjoint i64 %.sroa.12.sroa.0.0.insert.insert375, %.sroa.01.0.insert.ext.i
  %.sroa.01.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 72057602627862528
  %i.fo = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpecb(ptr noundef nonnull align 8 dereferenceable(1327) %0, i64 %.sroa.01.0.insert.insert.i, i1 noundef zeroext true)
          to label %.noexc186 unwind label %bb.aq, !inline_history !154

.noexc186:                                        ; preds = %bb.ad
  invoke void @_ZN3gui10CGUITTFont11setFallbackEPNS_8IGUIFontE(ptr noundef nonnull align 8 dereferenceable(248) %i.fn, ptr noundef %i.fo)
          to label %.critedge115 unwind label %bb.aq, !inline_history !154

"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit": ; preds = %.noexc185
  %.not.i188 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i188, label %_ZTW11errorstream.exit, label %bb.ae

bb.ae:                                            ; preds = %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit"
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit", %bb.ae
  %i.fp = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !81, !nonnull !82, !align !83 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !58
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = invoke noundef zeroext i1 %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %i.fq)
          to label %.noexc189 unwind label %bb.aq, !inline_history !155

.noexc189:                                        ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.ft, i64 976, i64 984
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @.str.27, ptr %i.j, align 8, !tbaa !47
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.af unwind label %bb.aq     ; 0 uses

bb.af:                                            ; preds = %.noexc189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !84 ; 5 uses
  %.not.i191 = icmp eq ptr %i.fw, null
  br i1 %.not.i191, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !58
  %i.fy = getelementptr i8, ptr %i.fx, i64 -24
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds i8, ptr %i.fw, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !91
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %.noexc192 unwind label %bb.aq

.noexc192:                                        ; preds = %bb.ah
  %.pre.i = load ptr, ptr %i.fu, align 8, !tbaa !84
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc192, %bb.ag
  %i.ge = phi ptr [ %.pre.i, %.noexc192 ], [ %i.fw, %bb.ag ]
  %i.gf = load ptr, ptr %8, align 8, !tbaa !54
  %i.gg = load i64, ptr %i.eo, align 8, !tbaa !56
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef %i.gf, i64 noundef %i.gg)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %bb.aq ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.af, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @.str.28, ptr %i.i, align 8, !tbaa !47
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.aj unwind label %bb.aq     ; 2 uses

bb.aj:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !84 ; 5 uses
  %.not.i195 = icmp eq ptr %i.gj, null
  br i1 %.not.i195, label %.critedge115, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !58
  %i.gl = getelementptr i8, ptr %i.gk, i64 -24
  %i.gm = load i64, ptr %i.gl, align 8            ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gj, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !91
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.gj)
          to label %.noexc197 unwind label %bb.aq

.noexc197:                                        ; preds = %bb.al
  %.pre.i196 = load ptr, ptr %i.gi, align 8, !tbaa !84 ; 2 uses
  %.pre = load ptr, ptr %.pre.i196, align 8, !tbaa !58
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre415 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.am

bb.am:                                            ; preds = %.noexc197, %bb.ak
  %i.gr = phi i64 [ %.pre415, %.noexc197 ], [ %i.gm, %bb.ak ]
  %i.gs = phi ptr [ %.pre.i196, %.noexc197 ], [ %i.gj, %bb.ak ] ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.gr
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 240
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i, label %bb.an, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc317 unwind label %bb.aq

.noexc317:                                        ; preds = %bb.an
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.am
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !103
  %.not.i1.i.i = icmp eq i8 %i.gx, 0
  br i1 %.not.i1.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 67
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gv)
          to label %.noexc318 unwind label %bb.aq

.noexc318:                                        ; preds = %bb.ap
  %i.ha = load ptr, ptr %i.gv, align 8, !tbaa !58
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = invoke noundef signext i8 %i.hc(ptr noundef nonnull align 8 dereferenceable(570) %i.gv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.aq, !inline_history !156

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc318, %bb.ao
  %.0.i.i.i = phi i8 [ %i.gz, %bb.ao ], [ %i.hd, %.noexc318 ]
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, i8 noundef signext %.0.i.i.i)
          to label %.noexc320 unwind label %bb.aq

.noexc320:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.he)
          to label %.critedge115 unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %bb.x, %.noexc320, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc318, %bb.ap, %bb.an, %bb.al, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.ai, %bb.ah, %.noexc189, %_ZTW11errorstream.exit, %.noexc186, %bb.ad, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit176
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %.critedge113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

.critedge115:                                     ; preds = %.noexc186, %13, %.noexc320, %bb.aj, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit
  %.272 = phi ptr [ null, %.noexc320 ], [ undef, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit ], [ null, %bb.aj ], [ %i.fn, %13 ], [ %i.fn, %.noexc186 ]
  %cond3 = phi i1 [ true, %.noexc320 ], [ true, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit ], [ true, %bb.aj ], [ false, %13 ], [ false, %.noexc186 ]
  %i.hk = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %.critedge115
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !55
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %.critedge115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %cond3, label %bb.ar, label %bb.ct

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.aq
  %i.hp = load i64, ptr %i.hi, align 8, !tbaa !55
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hq) #26
  br label %.critedge113

.critedge113:                                     ; preds = %bb.aq, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159, %bb.ab
  %.pn91.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159 ], [ %i.ds, %bb.t ], [ %i.fd, %bb.ab ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ], [ %i.hg, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.cu

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.hr, ptr %9, align 8, !tbaa !51
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.hs, align 8, !tbaa !56
  store i8 0, ptr %i.hr, align 8, !tbaa !55
  br i1 %i.o, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ht = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.29, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit206 unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.hv = load ptr, ptr %2, align 8, !tbaa !54, !noalias !171
  %i.hw = load i64, ptr %i.q, align 8, !tbaa !56, !noalias !171 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.hx, ptr %11, align 8, !tbaa !51, !alias.scope !172
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.hy, align 8, !tbaa !56, !alias.scope !172
  store i8 0, ptr %i.hx, align 8, !tbaa !55, !alias.scope !172
  %i.hz = add i64 %i.hw, 9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.hz)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !56, !alias.scope !172
  %i.ib = sub i64 4611686018427387903, %i.ia
  %i.ic = icmp ult i64 %i.ib, %i.hw
  br i1 %i.ic, label %.invoke.i.i213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i210: ; preds = %bb.av
  %i.id = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.hv, i64 noundef %i.hw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i211 unwind label %bb.aw ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i211: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i210
  %i.ie = load i64, ptr %i.hy, align 8, !tbaa !56, !alias.scope !172
  %i.if = add i64 %i.ie, -4611686018427387895
  %i.ig = icmp ult i64 %i.if, 9
  br i1 %i.ig, label %.invoke.i.i213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i212

.invoke.i.i213:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i211, %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
          to label %.cont.i.i214 unwind label %bb.aw

.cont.i.i214:                                     ; preds = %.invoke.i.i213
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i211
  %i.ih = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.30, i64 noundef 9)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit217 unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i212, %.invoke.i.i213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i210, %bb.au
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ij = load ptr, ptr %11, align 8, !tbaa !54, !alias.scope !172 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.hx
  br i1 %i.ik, label %.body215, label %.body215.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit217: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i212
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.il = load i64, ptr %i.v, align 8, !tbaa !56, !noalias !173 ; 2 uses
  %i.im = load i64, ptr %i.hy, align 8, !tbaa !56, !noalias !173
  %i.in = sub i64 4611686018427387903, %i.im
  %i.io = icmp ult i64 %i.in, %i.il
  br i1 %i.io, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ax:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit217
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
          to label %.noexc220 unwind label %bb.bf

.noexc220:                                        ; preds = %bb.ax
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit217
  %i.ip = load ptr, ptr %3, align 8, !tbaa !54, !noalias !173
  %i.iq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.ip, i64 noundef %i.il)
          to label %.noexc221 unwind label %bb.bf ; 6 uses

.noexc221:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ir = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.ir, ptr %10, align 8, !tbaa !51, !alias.scope !173
  %i.is = load ptr, ptr %i.iq, align 8, !tbaa !54 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 5 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

bb.ay:                                            ; preds = %.noexc221
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !56 ; 3 uses
  %i.ix = icmp ult i64 %i.iw, 16
  call void @llvm.assume(i1 %i.ix)
  %i.iy = add nuw nsw i64 %i.iw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ir, ptr noundef nonnull align 8 dereferenceable(1) %i.it, i64 %i.iy, i1 false)
  br label %bb.az

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %.noexc221
  store ptr %i.is, ptr %10, align 8, !tbaa !54, !alias.scope !173
  %i.iz = load i64, ptr %i.it, align 8, !tbaa !55
  store i64 %i.iz, ptr %i.ir, align 8, !tbaa !55, !alias.scope !173
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %.pre.i219 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !56
  br label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218, %bb.ay
  %i.ja = phi i64 [ %i.iw, %bb.ay ], [ %.pre.i219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218 ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.ja, ptr %i.jc, align 8, !tbaa !56, !alias.scope !173
  store ptr %i.it, ptr %i.iq, align 8, !tbaa !54
  store i64 0, ptr %i.jb, align 8, !tbaa !56
  store i8 0, ptr %i.it, align 8, !tbaa !55
  %i.jd = load ptr, ptr %9, align 8, !tbaa !54    ; 6 uses
  %i.je = icmp eq ptr %i.jd, %i.hr
  %i.jf = load ptr, ptr %10, align 8, !tbaa !54   ; 5 uses
  %i.jg = icmp eq ptr %i.jf, %i.ir                ; 2 uses
  br i1 %i.je, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.az
  br i1 %i.jg, label %bb.ba, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.az
  br i1 %i.jg, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.jh = load i64, ptr %i.jc, align 8, !tbaa !56 ; 3 uses
  %i.ji = icmp ult i64 %i.jh, 16
  call void @llvm.assume(i1 %i.ji)
  switch i64 %i.jh, label %bb.bc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.jj = load i8, ptr %i.jf, align 1, !tbaa !55
  store i8 %i.jj, ptr %i.jd, align 1, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jd, ptr align 1 %i.jf, i64 %i.jh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.jk = load i64, ptr %i.jc, align 8, !tbaa !56 ; 2 uses
  store i64 %i.jk, ptr %i.hs, align 8, !tbaa !56
  %i.jl = load ptr, ptr %9, align 8, !tbaa !54
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jk
  store i8 0, ptr %i.jm, align 1, !tbaa !55
  %.pre.i223 = load ptr, ptr %10, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.jf, ptr %9, align 8, !tbaa !54
  %14 = load <2 x i64>, ptr %i.jc, align 8, !tbaa !55
  store <2 x i64> %14, ptr %i.hs, align 8, !tbaa !55
  br label %bb.be

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.jn = load i64, ptr %i.hr, align 8, !tbaa !55
  store ptr %i.jf, ptr %9, align 8, !tbaa !54
  %15 = load <2 x i64>, ptr %i.jc, align 8, !tbaa !55
  store <2 x i64> %15, ptr %i.hs, align 8, !tbaa !55
  %.not.i222 = icmp eq ptr %i.jd, null
  br i1 %.not.i222, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.jd, ptr %10, align 8, !tbaa !54
  store i64 %i.jn, ptr %i.ir, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ir, ptr %10, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bd, %bb.be
  %i.jo = phi ptr [ %.pre.i223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.jd, %bb.bd ], [ %i.ir, %bb.be ]
  store i64 0, ptr %i.jc, align 8, !tbaa !56
  store i8 0, ptr %i.jo, align 1, !tbaa !55
  %i.jp = load ptr, ptr %10, align 8, !tbaa !54   ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.ir
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.jr = load i64, ptr %i.ir, align 8, !tbaa !55
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  %i.jt = load ptr, ptr %11, align 8, !tbaa !54   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.hx
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %i.jv = load i64, ptr %i.hx, align 8, !tbaa !55
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit206

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.ax
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = load ptr, ptr %11, align 8, !tbaa !54   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.hx
  br i1 %i.jz, label %.body215, label %.body215.sink.split

.body215.sink.split:                              ; preds = %bb.bf, %bb.aw
  %.sink510 = phi ptr [ %i.ij, %bb.aw ], [ %i.jy, %bb.bf ]
  %.pn96.ph = phi { ptr, i32 } [ %i.ii, %bb.aw ], [ %i.jx, %bb.bf ]
  %i.ka = load i64, ptr %i.hx, align 8, !tbaa !55
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %.sink510, i64 noundef %i.kb) #26
  br label %.body215

.body215:                                         ; preds = %.body215.sink.split, %bb.bf, %bb.aw
  %.pn96 = phi { ptr, i32 } [ %i.ii, %bb.aw ], [ %i.jx, %bb.bf ], [ %.pn96.ph, %.body215.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.cs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit206: ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.kc = load ptr, ptr @g_settings, align 8, !tbaa !49
  %i.kd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8Settings3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bg unwind label %.thread396 ; 2 uses

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit206
  %i.ke = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.ke, ptr %12, align 16, !tbaa !51
  %i.kf = load ptr, ptr %i.kd, align 8, !tbaa !54 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.kh, ptr %i.h, align 8, !tbaa !52
  %i.ki = icmp ugt i64 %i.kh, 15
  br i1 %i.ki, label %.noexc.i234, label %._crit_edge.i.i233

.noexc.i234:                                      ; preds = %bb.bg
  %i.kj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc235 unwind label %.thread396 ; 2 uses

.noexc235:                                        ; preds = %.noexc.i234
  store ptr %i.kj, ptr %12, align 16, !tbaa !54
  %i.kk = load i64, ptr %i.h, align 8, !tbaa !52
  store i64 %i.kk, ptr %i.ke, align 16, !tbaa !55
  br label %._crit_edge.i.i233

._crit_edge.i.i233:                               ; preds = %.noexc235, %bb.bg
  %i.kl = phi ptr [ %i.kj, %.noexc235 ], [ %i.ke, %bb.bg ] ; 2 uses
  switch i64 %i.kh, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %bb.bj
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i233
  %i.km = load i8, ptr %i.kf, align 1, !tbaa !55
  store i8 %i.km, ptr %i.kl, align 1, !tbaa !55
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i233
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kl, ptr align 1 %i.kf, i64 %i.kh, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i233
  %i.kn = load i64, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !56
  %i.kp = load ptr, ptr %12, align 16, !tbaa !54
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kn
  store i8 0, ptr %i.kq, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.kr = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  %i.ks = invoke noundef ptr @_ZN8Settings8getLayerE13SettingsLayer(i32 noundef 0)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.kt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8Settings3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ks, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bl unwind label %bb.bp     ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ku = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  store ptr %i.ku, ptr %i.kr, align 16, !tbaa !51
  %i.kv = load ptr, ptr %i.kt, align 8, !tbaa !54 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i64 %i.kx, ptr %i.g, align 8, !tbaa !52
  %i.ky = icmp ugt i64 %i.kx, 15
  br i1 %i.ky, label %.noexc.i237, label %._crit_edge.i.i236

.noexc.i237:                                      ; preds = %bb.bl
  %i.kz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.kr, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc238 unwind label %bb.bp ; 2 uses

.noexc238:                                        ; preds = %.noexc.i237
  store ptr %i.kz, ptr %i.kr, align 16, !tbaa !54
  %i.la = load i64, ptr %i.g, align 8, !tbaa !52
  store i64 %i.la, ptr %i.ku, align 16, !tbaa !55
  br label %._crit_edge.i.i236

._crit_edge.i.i236:                               ; preds = %.noexc238, %bb.bl
  %i.lb = phi ptr [ %i.kz, %.noexc238 ], [ %i.ku, %bb.bl ] ; 2 uses
  switch i64 %i.kx, label %bb.bn [
    i64 1, label %bb.bm
    i64 0, label %bb.bo
  ]

bb.bm:                                            ; preds = %._crit_edge.i.i236
  %i.lc = load i8, ptr %i.kv, align 1, !tbaa !55
  store i8 %i.lc, ptr %i.lb, align 1, !tbaa !55
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge.i.i236
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr align 1 %i.kv, i64 %i.kx, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %._crit_edge.i.i236
  %i.ld = load i64, ptr %i.g, align 8, !tbaa !52  ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !56
  %i.lf = load ptr, ptr %i.kr, align 16, !tbaa !54
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ld
  store i8 0, ptr %i.lg, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %.not.i243 = icmp eq ptr @_ZTH10infostream, null
  %i.lh = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.li = zext i32 %.0390 to i64
  %.not.i277 = icmp eq ptr @_ZTH11errorstream, null
  %i.lj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  br label %bb.bq

.thread396:                                       ; preds = %.noexc.i234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit206
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.bp:                                            ; preds = %.noexc.i237, %bb.bk, %bb.bj
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lk = load ptr, ptr %12, align 16, !tbaa !54  ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.bp
  %i.ln = load i64, ptr %i.ll, align 16, !tbaa !55
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #26
  br label %.loopexit

bb.bq:                                            ; preds = %bb.bo, %_ZN11StreamProxylsEPFRSoS0_E.exit292
  %.0.idx408 = phi i64 [ 0, %bb.bo ], [ %.0.add, %_ZN11StreamProxylsEPFRSoS0_E.exit292 ] ; 2 uses
  %.0.ptr409 = getelementptr inbounds nuw i8, ptr %12, i64 %.0.idx408 ; 4 uses
  br i1 %.not.i243, label %_ZTW10infostream.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.bq, %bb.br
  %i.lp = load ptr, ptr %i.lh, align 8, !tbaa !81, !nonnull !82, !align !83 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !58
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = invoke noundef zeroext i1 %i.lr(ptr noundef nonnull align 8 dereferenceable(8) %i.lp)
          to label %.noexc245 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !163

.noexc245:                                        ; preds = %_ZTW10infostream.exit
  %.v.i244 = select i1 %i.ls, i64 976, i64 984
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.v.i244 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.31, ptr %i.f, align 8, !tbaa !47
  %i.lu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bs:                                            ; preds = %.noexc245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.lv = load ptr, ptr %.0.ptr409, align 16, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.lv, ptr %i.e, align 8, !tbaa !47
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.32, ptr %i.d, align 8, !tbaa !47
  %i.lx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !84 ; 5 uses
  %.not.i251 = icmp eq ptr %i.ly, null
  br i1 %.not.i251, label %_ZN11StreamProxylsIRjEERS_OT_.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !58
  %i.ma = getelementptr i8, ptr %i.lz, i64 -24
  %i.mb = load i64, ptr %i.ma, align 8
  %i.mc = getelementptr inbounds i8, ptr %i.ly, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  %i.me = load i32, ptr %i.md, align 8, !tbaa !91
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ly)
          to label %.noexc253 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc253:                                        ; preds = %bb.bw
  %.pre.i252 = load ptr, ptr %i.lx, align 8, !tbaa !84
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc253, %bb.bv
  %i.mg = phi ptr [ %.pre.i252, %.noexc253 ], [ %i.ly, %bb.bv ]
  %i.mh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mg, i64 noundef %i.li)
          to label %_ZN11StreamProxylsIRjEERS_OT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIRjEERS_OT_.exit:               ; preds = %bb.bu, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.33, ptr %i.c, align 8, !tbaa !47
end_hunk_1
begin_hunk_2_@_ZN10FontEngine8initFontE8FontSpec:._crit_edge.i.i
.noexc273:                                        ; preds = %bb.cf
  %.not.i262 = icmp eq ptr %i.nm, null
  %brmerge = or i1 %.not.i262, %i.o
  br i1 %brmerge, label %.critedge117, label %bb.cg

bb.cg:                                            ; preds = %.noexc273
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
  %i.nn = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpecb(ptr noundef nonnull align 8 dereferenceable(1327) %0, i64 %.sroa.01.0.insert.insert.i271, i1 noundef zeroext true)
          to label %.noexc274 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !154

.noexc274:                                        ; preds = %bb.cg
  invoke void @_ZN3gui10CGUITTFont11setFallbackEPNS_8IGUIFontE(ptr noundef nonnull align 8 dereferenceable(248) %i.nm, ptr noundef %i.nn)
          to label %.critedge117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !154

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc341, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336, %.noexc339, %bb.cr, %.noexc330, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325, %.noexc328, %bb.cd, %bb.co, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.cl, %bb.ck, %.noexc280, %_ZTW11errorstream.exit278, %bb.ca, %_ZN11StreamProxylsIRjEERS_OT_.exit, %bb.bx, %bb.bw, %bb.bt, %bb.bs, %.noexc245, %_ZTW10infostream.exit, %_ZN11StreamProxylsEPFRSoS0_E.exit261, %.invoke, %.noexc274, %bb.cg, %bb.cf
  %lpad.loopexit.split-lp513 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.np = load ptr, ptr %i.no, align 16, !tbaa !54 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit276": ; preds = %bb.ce
  br i1 %.not.i277, label %_ZTW11errorstream.exit278, label %bb.ch

bb.ch:                                            ; preds = %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit276"
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit278

_ZTW11errorstream.exit278:                        ; preds = %"_ZZN10FontEngine8initFontE8FontSpecENK3$_0clEPN3gui10SGUITTFaceE.exit276", %bb.ch
  %i.ns = load ptr, ptr %i.lj, align 8, !tbaa !81, !nonnull !82, !align !83 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !58
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = invoke noundef zeroext i1 %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %i.ns)
          to label %.noexc280 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !164

.noexc280:                                        ; preds = %_ZTW11errorstream.exit278
  %.v.i279 = select i1 %i.nv, i64 976, i64 984
  %i.nw = getelementptr inbounds nuw i8, ptr %i.lj, i64 %.v.i279 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.34, ptr %i.b, align 8, !tbaa !47
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ci:                                            ; preds = %.noexc280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ny = load ptr, ptr %i.nw, align 8, !tbaa !84 ; 5 uses
  %.not.i282 = icmp eq ptr %i.ny, null
  br i1 %.not.i282, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !58
  %i.oa = getelementptr i8, ptr %i.nz, i64 -24
  %i.ob = load i64, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds i8, ptr %i.ny, i64 %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 32
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !91
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ny)
          to label %.noexc284 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc284:                                        ; preds = %bb.ck
  %.pre.i283 = load ptr, ptr %i.nw, align 8, !tbaa !84
  br label %bb.cl

bb.cl:                                            ; preds = %.noexc284, %bb.cj
  %i.og = phi ptr [ %.pre.i283, %.noexc284 ], [ %i.ny, %bb.cj ]
  %i.oh = load ptr, ptr %.0.ptr409, align 16, !tbaa !54
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.ptr409, i64 8
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !56
  %i.ok = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.og, ptr noundef %i.oh, i64 noundef %i.oj)
          to label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.ci, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.35, ptr %i.a, align 8, !tbaa !47
  %i.ol = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cm:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !84 ; 5 uses
  %.not.i288 = icmp eq ptr %i.om, null
  br i1 %.not.i288, label %_ZN11StreamProxylsEPFRSoS0_E.exit292, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !58
  %i.oo = getelementptr i8, ptr %i.on, i64 -24
  %i.op = load i64, ptr %i.oo, align 8            ; 2 uses
  %i.oq = getelementptr inbounds i8, ptr %i.om, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.os = load i32, ptr %i.or, align 8, !tbaa !91
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.om)
          to label %.noexc290 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc290:                                        ; preds = %bb.co
  %.pre.i289 = load ptr, ptr %i.ol, align 8, !tbaa !84 ; 2 uses
  %.pre420 = load ptr, ptr %.pre.i289, align 8, !tbaa !58
  %.phi.trans.insert421 = getelementptr i8, ptr %.pre420, i64 -24
  %.pre422 = load i64, ptr %.phi.trans.insert421, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %.noexc290, %bb.cn
  %i.ou = phi i64 [ %.pre422, %.noexc290 ], [ %i.op, %bb.cn ]
  %i.ov = phi ptr [ %.pre.i289, %.noexc290 ], [ %i.om, %bb.cn ] ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %i.ov, i64 %i.ou
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 240
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i333 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i333, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334

.invoke:                                          ; preds = %bb.cb, %bb.cp
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334: ; preds = %bb.cp
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 56
  %i.pa = load i8, ptr %i.oz, align 8, !tbaa !103
  %.not.i1.i.i335 = icmp eq i8 %i.pa, 0
  br i1 %.not.i1.i.i335, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 67
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336

bb.cr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.oy)
          to label %.noexc339 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc339:                                        ; preds = %bb.cr
  %i.pd = load ptr, ptr %i.oy, align 8, !tbaa !58
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 48
  %i.pf = load ptr, ptr %i.pe, align 8
  %i.pg = invoke noundef signext i8 %i.pf(ptr noundef nonnull align 8 dereferenceable(570) %i.oy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !156

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336: ; preds = %.noexc339, %bb.cq
  %.0.i.i.i337 = phi i8 [ %i.pc, %bb.cq ], [ %i.pg, %.noexc339 ]
  %i.ph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, i8 noundef signext %.0.i.i.i337)
          to label %.noexc341 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc341:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336
  %i.pi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ph)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit292 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit292:             ; preds = %.noexc341, %bb.cm
  %.0.add = add nuw nsw i64 %.0.idx408, 32        ; 2 uses
  %.not98 = icmp eq i64 %.0.add, 64
  br i1 %.not98, label %.critedge117, label %bb.bq

.critedge117:                                     ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit292, %.noexc273, %.noexc274
  %spec.select = phi ptr [ %i.nm, %.noexc273 ], [ %i.nm, %.noexc274 ], [ null, %_ZN11StreamProxylsEPFRSoS0_E.exit292 ]
  %i.pj = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.pk = load ptr, ptr %i.pj, align 16, !tbaa !54 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.pm = icmp eq ptr %i.pk, %i.pl
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %.critedge117
  %i.pn = load i64, ptr %i.pl, align 16, !tbaa !55
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.po) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %.critedge117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  %i.pp = load ptr, ptr %12, align 16, !tbaa !54  ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %i.ps = load i64, ptr %i.pq, align 16, !tbaa !55
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.pt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293.1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.pu = load ptr, ptr %9, align 8, !tbaa !54    ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.hr
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295.1
  %i.pw = load i64, ptr %i.hr, align 8, !tbaa !55
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ct

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.py = load i64, ptr %i.nq, align 16, !tbaa !55
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.pz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299
  %i.qa = load ptr, ptr %12, align 16, !tbaa !54  ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  %i.qd = load i64, ptr %i.qb, align 16, !tbaa !55
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #26
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %.thread396
  %.pn100.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %lpad.thr_comm, %.thread396 ], [ %lpad.loopexit.split-lp513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299.1 ], [ %lpad.thr_comm.split-lp, %bb.bp ], [ %lpad.loopexit.split-lp513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit, %.body215, %bb.at
  %.pn100.pn.pn = phi { ptr, i32 } [ %.pn100.pn, %.loopexit ], [ %i.hu, %bb.at ], [ %.pn96, %.body215 ]
  %i.qf = load ptr, ptr %9, align 8, !tbaa !54    ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.hr
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302: ; preds = %bb.cs
  %i.qh = load i64, ptr %i.hr, align 8, !tbaa !55
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.cu

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %.878 = phi ptr [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ], [ %.272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  %i.qj = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.u
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.ct
  %i.ql = load i64, ptr %i.u, align 8, !tbaa !55
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.qn = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.p
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %i.qp = load i64, ptr %i.p, align 8, !tbaa !55
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %.878

bb.cu:                                            ; preds = %.critedge113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %.pn100.pn.pn.pn.pn = phi { ptr, i32 } [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %.pn100.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304 ], [ %.pn91.pn.pn.pn, %.critedge113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.n, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %.pn100.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.pn84, %.body ], [ %.pn100.pn.pn.pn.pn, %bb.cu ], [ %i.ch, %bb.n ]
  %i.qr = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.u
  br i1 %i.qs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311: ; preds = %bb.cv
  %i.qt = load i64, ptr %i.u, align 8, !tbaa !55
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, %bb.b
  %.pn100.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313 ], [ %i.t, %bb.b ]
  %i.qv = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %i.p
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %bb.cw
  %i.qx = load i64, ptr %i.p, align 8, !tbaa !55
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn100.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) local_unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !52
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !54
  %i.i = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.i, ptr %i.c, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !55
  store i8 %i.k, ptr %i.j, align 1, !tbaa !55
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !56
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.e:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !55
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !45     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45
  %i.g = icmp ult i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE11lower_boundERS6_.exit, label %bb.b, !llvm.loop !174

_ZNSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE11lower_boundERS6_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjPN3gui8IGUIFontESt4lessIjESaISt4pairIKjS2_EEE11lower_boundERS6_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
end_hunk_2
