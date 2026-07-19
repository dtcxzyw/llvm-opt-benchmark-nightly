inline.NumInlined: 1164
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0
@_ZN9Stockfish9RayPassBBE = external local_unnamed_addr global [64 x [64 x i64]], align 16
@_ZN9Stockfish9BetweenBBE = external local_unnamed_addr global [64 x [64 x i64]], align 16
@_ZN9Stockfish6LineBBE = external local_unnamed_addr global [64 x [64 x i64]], align 16
@_ZN9Stockfish6MagicsE = external local_unnamed_addr global [64 x [2 x %"struct.Stockfish::Magic"]], align 16
@.str.28 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@llvm.global_ctors = appending global [3 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.25, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_position.cpp, ptr null }]
@llvm.used = appending global [2 x ptr] [ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" comdat($_ZN9Stockfish17SYSTEM_THREADS_NBE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN9Stockfish17SYSTEM_THREADS_NBE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN9Stockfish17SYSTEM_THREADS_NBE) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #26
  %i.e = tail call i32 @llvm.umax.i32(i32 %i.d, i32 1)
  %.sroa.speculated = zext i32 %i.e to i64
  store i64 %.sroa.speculated, ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE, align 8, !tbaa !11
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN9Stockfish17SYSTEM_THREADS_NBE) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN9Stockfish17SYSTEM_THREADS_NBE) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind noalias writable sret(%"class.std::set") align 8 %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !22
  %i.f = tail call ptr @__sched_cpualloc(i64 noundef 65536) #26 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.f, i8 0, i64 8192, i1 false)
  %i.h = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 8192, ptr noundef nonnull %i.f) #26
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__sched_cpufree(ptr noundef nonnull %i.f) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.e:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  tail call void @__sched_cpufree(ptr noundef nonnull %i.f) #26
  ret void

.preheader:                                       ; preds = %bb.c, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  %storemerge16 = phi i64 [ %i.af, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ], [ 0, %bb.c ] ; 7 uses
  %i.i = and i64 %storemerge16, 63
  %i.j = lshr i64 %storemerge16, 6
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = shl nuw i64 1, %i.i
  %i.n = and i64 %i.l, %i.m
  %.not13 = icmp eq i64 %i.n, 0
  br i1 %.not13, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %.02022.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.f ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %i.q = icmp ult i64 %storemerge16, %i.p         ; 2 uses
  %.in.v.i.i.i = select i1 %i.q, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !24

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.q, label %._crit_edge.thread.i.i.i, label %bb.h

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.f
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.a, %bb.f ] ; 4 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.s = icmp eq ptr %.019.lcssa29.i.i.i, %i.r
  br i1 %i.s, label %select.unfold.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %i.u = phi i64 [ %.pre.i.i, %bb.g ], [ %i.p, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.g ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.v = icmp ult i64 %i.u, %storemerge16
  br i1 %i.v, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

select.unfold.i.i:                                ; preds = %bb.h, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.h ] ; 3 uses
  %i.w = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.a
  br i1 %i.w, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %select.unfold.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = icmp ult i64 %storemerge16, %i.y
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.i, %select.unfold.i.i
  %i.aa = phi i1 [ %i.z, %bb.i ], [ true, %select.unfold.i.i ]
  %i.ab = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %storemerge16, ptr %i.ac, align 8, !tbaa !11
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #26
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !22
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit:      ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.h, %.preheader
  %i.af = add nuw nsw i64 %storemerge16, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, 65536
  br i1 %exitcond.not, label %bb.e, label %.preheader, !llvm.loop !26
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoRKNS_8PositionE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 32 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %5 = alloca %"class.Stockfish::Position", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 36) #26 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.7, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.7 ], [ 7, %bb.a ] ; 4 uses
  %i.e = shl nuw nsw i64 %indvars.iv, 3           ; 8 uses
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.h = load i8, ptr %i.g, align 8, !tbaa !27
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.k, ptr %i.a, align 1, !tbaa !29
  %i.l = load ptr, ptr %0, align 8, !tbaa !30
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !32
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.k) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !29    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.z, ptr %i.a, align 1, !tbaa !29
  %i.aa = load ptr, ptr %0, align 8, !tbaa !30
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !32
  %.not.i.1 = icmp eq i64 %i.af, 0
  br i1 %.not.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.1

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.z) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.1

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.1: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !27
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ao, ptr %i.a, align 1, !tbaa !29
  %i.ap = load ptr, ptr %0, align 8, !tbaa !30
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !32
  %.not.i.2 = icmp eq i64 %i.au, 0
  br i1 %.not.i.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.1
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.2

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.1
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.ao) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.2

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.2: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !27
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bd, ptr %i.a, align 1, !tbaa !29
  %i.be = load ptr, ptr %0, align 8, !tbaa !30
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !32
  %.not.i.3 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.2
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.3

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.2
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.bd) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.3

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.3: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !27
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bs, ptr %i.a, align 1, !tbaa !29
  %i.bt = load ptr, ptr %0, align 8, !tbaa !30
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !32
  %.not.i.4 = icmp eq i64 %i.by, 0
  br i1 %.not.i.4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.3
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.4

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.3
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.bs) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.4

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.4: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 5
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !27
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ch, ptr %i.a, align 1, !tbaa !29
  %i.ci = load ptr, ptr %0, align 8, !tbaa !30
  %i.cj = getelementptr i8, ptr %i.ci, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %0, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !32
  %.not.i.5 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.4
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.5

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.4
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.ch) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.5

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.5: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !27
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.cw, ptr %i.a, align 1, !tbaa !29
  %i.cx = load ptr, ptr %0, align 8, !tbaa !30
  %i.cy = getelementptr i8, ptr %i.cx, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds i8, ptr %0, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !32
  %.not.i.6 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.5
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.6

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.5
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.cw) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.6

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.6: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 7
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !27
  %i.dj = zext i8 %i.di to i64
end_hunk_0
begin_hunk_1_@_ZN9StockfishlsERSoRKNS_8PositionE:bb.a
  %i.gy = and i32 %i.gx, -75
  %i.gz = or disjoint i32 %i.gy, 2
  store i32 %i.gz, ptr %i.gw, align 8, !tbaa !48
  %i.ha = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull @.str.6, i64 noundef 11) #26 ; 0 uses
  %i.hb = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit25
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !29
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.hg = load ptr, ptr %i.fn, align 8, !tbaa !68
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 72
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !82 ; 2 uses
  %.not44 = icmp eq i64 %i.hi, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.aa

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hl = load i32, ptr @_ZN9Stockfish10Tablebases14MaxCardinalityE, align 4, !tbaa !83
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !11
  %i.ho = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hn)
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %.not20 = icmp slt i32 %i.hl, %i.hp
  br i1 %.not20, label %bb.ad, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.045 = phi i64 [ %i.hi, %.lr.ph ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.hq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.045, i1 true)
  %i.hr = trunc nuw nsw i64 %i.hq to i8
  %i.hs = add i64 %.045, -1
  %i.ht = and i64 %i.hs, %.045                    ; 2 uses
  call void @_ZN9Stockfish9UCIEngine6squareB5cxx11ENS_6SquareE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i8 noundef zeroext %i.hr) #26
  %i.hu = load ptr, ptr %3, align 8, !tbaa !42
  %i.hv = load i64, ptr %i.hj, align 8, !tbaa !46
  %i.hw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hu, i64 noundef %i.hv) #26
  %i.hx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull @.str.7, i64 noundef 1) #26 ; 0 uses
  %i.hy = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hk
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.aa
  %i.ia = load i64, ptr %i.hk, align 8, !tbaa !29
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not = icmp eq i64 %i.ht, 0
  br i1 %.not, label %._crit_edge, label %bb.aa, !llvm.loop !84

bb.ab:                                            ; preds = %._crit_edge
  %i.ic = load ptr, ptr %i.fn, align 8, !tbaa !68
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !85
  %i.if = and i32 %i.ie, 15
  %.not42 = icmp eq i32 %i.if, 0
  br i1 %.not42, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 1016
  store i64 0, ptr %i.ig, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1048) %1)
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !87, !range !57, !noundef !58
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = call noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.ij, ptr noundef nonnull %4) ; 0 uses
  %i.il = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.ac
  %i.io = load i64, ptr %i.im, align 8, !tbaa !29
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.iq = call noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %5, ptr noundef nonnull %i.b) #26
  %i.ir = call noundef i32 @_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %5, ptr noundef nonnull %i.c) #26
  %i.is = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 17) #26 ; 0 uses
  %i.it = load ptr, ptr %0, align 8, !tbaa !30
  %i.iu = getelementptr i8, ptr %i.it, i64 -24
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds i8, ptr %0, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i64 4, ptr %i.ix, align 8, !tbaa !32
  %i.iy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.iq) #26 ; 2 uses
  %i.iz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.9, i64 noundef 2) #26 ; 0 uses
  %i.ja = load i32, ptr %i.b, align 4, !tbaa !88
  %i.jb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, i32 noundef %i.ja) #26 ; 5 uses
  %i.jc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.10, i64 noundef 1) #26 ; 0 uses
  %i.jd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.11, i64 noundef 17) #26 ; 0 uses
  %i.je = load ptr, ptr %i.jb, align 8, !tbaa !30
  %i.jf = getelementptr i8, ptr %i.je, i64 -24
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds i8, ptr %i.jb, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store i64 4, ptr %i.ji, align 8, !tbaa !32
  %i.jj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, i32 noundef %i.ir) #26 ; 2 uses
  %i.jk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull @.str.9, i64 noundef 2) #26 ; 0 uses
  %i.jl = load i32, ptr %i.c, align 4, !tbaa !88
  %i.jm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, i32 noundef %i.jl) #26
  %i.jn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.10, i64 noundef 1) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.ab, %._crit_edge
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 58 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr null, ptr %i.i, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.j, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 337
  store i8 0, ptr %i.k, align 1, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !30
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p
  store ptr %i.n, ptr %i.q, align 8, !tbaa !30
  %i.r = load ptr, ptr %2, align 8, !tbaa !30
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.u, ptr noundef null) #26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.h, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.v, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 16, ptr %i.y, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 0, ptr %i.ab, align 8, !tbaa !46
  store i8 0, ptr %i.aa, align 8, !tbaa !29
  %i.ac = load ptr, ptr %2, align 8, !tbaa !30
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.af, ptr noundef nonnull %i.v) #26
  br label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27, %bb.a
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27 ], [ 7, %bb.a ] ; 3 uses
  %i.ag = shl nuw nsw i64 %indvars.iv73, 3        ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %invariant.gep.a = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.i
  %.06169 = phi i8 [ 0, %bb.b ], [ %i.bb, %bb.i ]
  %i.ah = zext nneg i8 %.06169 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.i
  %i.ai = icmp eq i64 %indvars.iv73, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.d:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.ah, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %.01468 = phi i32 [ 0, %.preheader ], [ %i.ak, %bb.e ] ; 3 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.aj = load i8, ptr %gep, align 1, !tbaa !27
  %.not70 = icmp eq i8 %i.aj, 0
  br i1 %.not70, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ak = add nuw nsw i32 %.01468, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, 7
  br i1 %exitcond.not, label %.thread112, label %bb.d, !llvm.loop !96

.thread112:                                       ; preds = %bb.e
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.ak) #26 ; 0 uses
  br label %bb.i

.critedge:                                        ; preds = %bb.d
  %i.am = trunc nuw i64 %indvars.iv to i8
  %.not15 = icmp eq i32 %.01468, 0
  br i1 %.not15, label %.thread, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.01468) #26 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %invariant.gep.a, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !27
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %i.as, ptr %i.g, align 1, !tbaa !29
  %i.at = load ptr, ptr %2, align 8, !tbaa !30
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !32
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.g, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.h:                                             ; preds = %.thread
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.as) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.i:                                             ; preds = %.thread112, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %.1.lcssa107111 = phi i8 [ 8, %.thread112 ], [ %i.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ] ; 2 uses
  %i.bb = add nuw nsw i8 %.1.lcssa107111, 1
  %i.bc = icmp ult i8 %.1.lcssa107111, 7
  br i1 %i.bc, label %.preheader, label %bb.c, !llvm.loop !97

bb.j:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !98
  %i.bf = icmp eq i8 %i.be, 0
  %i.bg = select i1 %i.bf, ptr @.str.15, ptr @.str.16
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bg, i64 noundef 3) #26 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 7 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !85 ; 2 uses
  %i.bm = and i32 %i.bl, 1
  %.not62 = icmp eq i32 %i.bm, 0
  br i1 %.not62, label %bb.s, label %bb.n

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 47, ptr %i.f, align 1, !tbaa !29
  %i.bn = load ptr, ptr %2, align 8, !tbaa !30
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %2, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !32
  %.not.i25 = icmp eq i64 %i.bs, 0
  br i1 %.not.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.f, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27

bb.m:                                             ; preds = %bb.k
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 47) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br label %bb.b, !llvm.loop !99

bb.n:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !87, !range !57, !noundef !58
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 465
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !100
  %i.ca = and i8 %i.bz, 7
  %i.cb = add nuw nsw i8 %i.ca, 65
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cc = phi i8 [ %i.cb, %bb.o ], [ 75, %bb.n ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.cc, ptr %i.e, align 1, !tbaa !29
  %i.cd = load ptr, ptr %2, align 8, !tbaa !30
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %2, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !32
  %.not.i28 = icmp eq i64 %i.ci, 0
  br i1 %.not.i28, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.e, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30

bb.r:                                             ; preds = %bb.p
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.cc) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre76 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30, %bb.j
  %i.cl = phi i32 [ %.pre76, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30 ], [ %i.bl, %bb.j ] ; 2 uses
  %i.cm = phi ptr [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30 ], [ %i.bj, %bb.j ]
  %i.cn = and i32 %i.cl, 2
  %.not63 = icmp eq i32 %i.cn, 0
  br i1 %.not63, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !87, !range !57, !noundef !58
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 466
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !100
  %i.ct = and i8 %i.cs, 7
  %i.cu = add nuw nsw i8 %i.ct, 65
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cv = phi i8 [ %i.cu, %bb.u ], [ 81, %bb.t ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.cv, ptr %i.d, align 1, !tbaa !29
  %i.cw = load ptr, ptr %2, align 8, !tbaa !30
  %i.cx = getelementptr i8, ptr %i.cw, i64 -24
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds i8, ptr %2, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %.not.i31 = icmp eq i64 %i.db, 0
  br i1 %.not.i31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.d, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33

bb.x:                                             ; preds = %bb.v
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.cv) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre77 = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %.pre77, i64 48
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 8, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33, %bb.s
  %i.de = phi i32 [ %.pre79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33 ], [ %i.cl, %bb.s ] ; 2 uses
  %i.df = phi ptr [ %.pre77, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33 ], [ %i.cm, %bb.s ]
  %i.dg = and i32 %i.de, 4
  %.not64 = icmp eq i32 %i.dg, 0
  br i1 %.not64, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !87, !range !57, !noundef !58
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !100
  %i.dm = and i8 %i.dl, 7
  %i.dn = add nuw nsw i8 %i.dm, 97
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.do = phi i8 [ %i.dn, %bb.aa ], [ 107, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.do, ptr %i.c, align 1, !tbaa !29
  %i.dp = load ptr, ptr %2, align 8, !tbaa !30
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %2, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !32
  %.not.i34 = icmp eq i64 %i.du, 0
  br i1 %.not.i34, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.c, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36

bb.ad:                                            ; preds = %bb.ab
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.do) #26 ; 0 uses
end_hunk_1
