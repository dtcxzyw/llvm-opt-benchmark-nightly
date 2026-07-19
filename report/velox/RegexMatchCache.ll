inline.NumInlined: 9148
inline.NumDeleted: 3321
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEEixERS9_:bb.a
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !20048 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !20318

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19738 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19733
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #41 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store ptr %1, ptr %2, align 8, !tbaa !19858
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5boost13re_detail_50016find_sort_syntaxINS0_31cpp_regex_traits_implementationIcEEcEEjPKT_PT0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca [2 x i8], align 2                 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca [2 x i8], align 2                 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i16 97, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19738 ; 3 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #41
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !19733
  %bcmp.i = call i32 @bcmp(ptr %i.j, ptr nonnull %i.a, i64 %i.f)
  %i.k = icmp eq i32 %bcmp.i, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i8 0, ptr %1, align 1, !tbaa !19747
  br label %bb.k

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i16 65, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i16 59, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  invoke void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.m)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %bb.c
  %i.n = load i64, ptr %i.e, align 8, !tbaa !19738 ; 22 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %.fr77 = freeze i64 %i.q                        ; 12 uses
  %i.r = trunc i64 %.fr77 to i32
  %invariant.smin = call i32 @llvm.smin.i32(i32 %i.o, i32 %i.r) ; 2 uses
  %or.cond71 = icmp slt i32 %invariant.smin, 0
  br i1 %or.cond71, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = load ptr, ptr %2, align 8, !tbaa !19733
  %i.t = load ptr, ptr %3, align 8, !tbaa !19733
  %i.u = add nuw i32 %invariant.smin, 1           ; 2 uses
  %wide.trip.count = zext i32 %i.u to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19747
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19747
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread94, label %bb.d, !llvm.loop !20319

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.ac = load ptr, ptr %3, align 8, !tbaa !19733 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !19747
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge:                                        ; preds = %bb.d
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = icmp eq i64 %indvars.iv, 0
  br i1 %i.ai, label %.critedge.thread, label %.critedge.thread94

.critedge.thread94:                               ; preds = %bb.e, %.critedge
  %.025.lcssa96 = phi i32 [ %i.ah, %.critedge ], [ %i.u, %bb.e ] ; 2 uses
  %i.aj = add nsw i32 %.025.lcssa96, -1           ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = load ptr, ptr %2, align 8, !tbaa !19733 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19747 ; 13 uses
  %.not31 = icmp eq i32 %i.aj, 0
  br i1 %.not31, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge.thread94
  %.not.i = icmp eq i64 %i.n, 0                   ; 2 uses
  br i1 %.not.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ao = add i64 %i.n, -1                        ; 2 uses
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = icmp eq i64 %i.ap, 4294967295
  %i.ar = icmp ugt i64 %i.ao, 4294967295
  %i.as = or i1 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check100 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check100, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 28
  %n.vec = and i64 %i.n, 8589934560               ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi101 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi102 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi103 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %index ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %wide.load = load <8 x i8>, ptr %i.at, align 1, !tbaa !19747
  %wide.load104 = load <8 x i8>, ptr %i.au, align 1, !tbaa !19747
  %wide.load105 = load <8 x i8>, ptr %i.av, align 1, !tbaa !19747
  %wide.load106 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !19747
  %i.ax = icmp eq <8 x i8> %wide.load, %broadcast.splat
  %i.ay = icmp eq <8 x i8> %wide.load104, %broadcast.splat
  %i.az = icmp eq <8 x i8> %wide.load105, %broadcast.splat
  %i.ba = icmp eq <8 x i8> %wide.load106, %broadcast.splat
  %i.bb = zext <8 x i1> %i.ax to <8 x i32>
  %i.bc = zext <8 x i1> %i.ay to <8 x i32>
  %i.bd = zext <8 x i1> %i.az to <8 x i32>
  %i.be = zext <8 x i1> %i.ba to <8 x i32>
  %i.bf = add <8 x i32> %vec.phi, %i.bb           ; 2 uses
  %i.bg = add <8 x i32> %vec.phi101, %i.bc        ; 2 uses
  %i.bh = add <8 x i32> %vec.phi102, %i.bd        ; 2 uses
  %i.bi = add <8 x i32> %vec.phi103, %i.be        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !20320

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.bg, %i.bf
  %bin.rdx107 = add <8 x i32> %i.bh, %bin.rdx
  %bin.rdx108 = add <8 x i32> %i.bi, %bin.rdx107
  %i.bk = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx108) ; 3 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !20323

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bk, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.n, 8589934588            ; 3 uses
  %i.bl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert111 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat112 = shufflevector <4 x i8> %broadcast.splatinsert111, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi114 = phi <4 x i32> [ %i.bl, %vec.epilog.ph ], [ %i.bp, %vec.epilog.vector.body ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 %index113
  %wide.load115 = load <4 x i8>, ptr %i.bm, align 1, !tbaa !19747
  %i.bn = icmp eq <4 x i8> %wide.load115, %broadcast.splat112
  %i.bo = zext <4 x i1> %i.bn to <4 x i32>
  %i.bp = add <4 x i32> %vec.phi114, %i.bo        ; 2 uses
  %index.next116 = add nuw i64 %index113, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next116, %n.vec110
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20324

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.br = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bp) ; 2 uses
  %cmp.n117 = icmp eq i64 %i.n, %n.vec110
  br i1 %cmp.n117, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph275 = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec110, %vec.epilog.middle.block ]
  %.079.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bs = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %.ph275, %.lr.ph.i.preheader ] ; 2 uses
  %.079.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !19747
  %i.bv = icmp eq i8 %i.bu, %i.an
  %i.bw = zext i1 %i.bv to i32
  %spec.select.i = add i32 %.079.i, %i.bw         ; 2 uses
  %indvars.iv.next.i = add i64 %i.bs, 1           ; 2 uses
  %5 = and i64 %indvars.iv.next.i, 4294967295
  %i.bx = icmp ugt i64 %i.n, %5
  br i1 %i.bx, label %.lr.ph.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, !llvm.loop !20325

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.07.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.br, %vec.epilog.middle.block ], [ %i.bk, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.not.i32 = icmp eq i64 %.fr77, 0
  br i1 %.not.i32, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit38, label %iter.check148

iter.check148:                                    ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit
  %i.by = load ptr, ptr %3, align 8, !tbaa !19733 ; 3 uses
  %min.iters.check122 = icmp ult i64 %.fr77, 4
  br i1 %min.iters.check122, label %vec.epilog.scalar.ph149.preheader, label %vector.scevcheck121

vector.scevcheck121:                              ; preds = %iter.check148
  %i.bz = add i64 %.fr77, -1                      ; 2 uses
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = icmp eq i64 %i.ca, 4294967295
  %i.cc = icmp ugt i64 %i.bz, 4294967295
  %i.cd = or i1 %i.cb, %i.cc
  br i1 %i.cd, label %vec.epilog.scalar.ph149.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %vector.scevcheck121
  %min.iters.check124 = icmp ult i64 %.fr77, 32
  br i1 %min.iters.check124, label %vec.epilog.ph152, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %n.mod.vf126 = and i64 %.fr77, 28
  %n.vec127 = and i64 %.fr77, 8589934560          ; 4 uses
  %broadcast.splatinsert128 = insertelement <8 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat129 = shufflevector <8 x i8> %broadcast.splatinsert128, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph125
  %index131 = phi i64 [ 0, %vector.ph125 ], [ %index.next140, %vector.body130 ] ; 2 uses
  %vec.phi132 = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.cq, %vector.body130 ]
  %vec.phi133 = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.cr, %vector.body130 ]
  %vec.phi134 = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.cs, %vector.body130 ]
  %vec.phi135 = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.ct, %vector.body130 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %index131 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %wide.load136 = load <8 x i8>, ptr %i.ce, align 1, !tbaa !19747
  %wide.load137 = load <8 x i8>, ptr %i.cf, align 1, !tbaa !19747
  %wide.load138 = load <8 x i8>, ptr %i.cg, align 1, !tbaa !19747
  %wide.load139 = load <8 x i8>, ptr %i.ch, align 1, !tbaa !19747
  %i.ci = icmp eq <8 x i8> %wide.load136, %broadcast.splat129
  %i.cj = icmp eq <8 x i8> %wide.load137, %broadcast.splat129
  %i.ck = icmp eq <8 x i8> %wide.load138, %broadcast.splat129
  %i.cl = icmp eq <8 x i8> %wide.load139, %broadcast.splat129
  %i.cm = zext <8 x i1> %i.ci to <8 x i32>
  %i.cn = zext <8 x i1> %i.cj to <8 x i32>
  %i.co = zext <8 x i1> %i.ck to <8 x i32>
  %i.cp = zext <8 x i1> %i.cl to <8 x i32>
  %i.cq = add <8 x i32> %vec.phi132, %i.cm        ; 2 uses
  %i.cr = add <8 x i32> %vec.phi133, %i.cn        ; 2 uses
  %i.cs = add <8 x i32> %vec.phi134, %i.co        ; 2 uses
  %i.ct = add <8 x i32> %vec.phi135, %i.cp        ; 2 uses
  %index.next140 = add nuw i64 %index131, 32      ; 2 uses
  %i.cu = icmp eq i64 %index.next140, %n.vec127
  br i1 %i.cu, label %middle.block141, label %vector.body130, !llvm.loop !20326

middle.block141:                                  ; preds = %vector.body130
  %bin.rdx142 = add <8 x i32> %i.cr, %i.cq
  %bin.rdx143 = add <8 x i32> %i.cs, %bin.rdx142
  %bin.rdx144 = add <8 x i32> %i.ct, %bin.rdx143
  %i.cv = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx144) ; 3 uses
  %cmp.n145 = icmp eq i64 %.fr77, %n.vec127
  br i1 %cmp.n145, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit38, label %vec.epilog.iter.check150

vec.epilog.iter.check150:                         ; preds = %middle.block141
  %min.epilog.iters.check151 = icmp eq i64 %n.mod.vf126, 0
  br i1 %min.epilog.iters.check151, label %vec.epilog.scalar.ph149.preheader, label %vec.epilog.ph152, !prof !20323

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check150
  %vec.epilog.resume.val146 = phi i64 [ %n.vec127, %vec.epilog.iter.check150 ], [ 0, %vector.main.loop.iter.check123 ]
  %bc.merge.rdx147 = phi i32 [ %i.cv, %vec.epilog.iter.check150 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec154 = and i64 %.fr77, 8589934588          ; 3 uses
  %i.cw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx147, i64 0
  %broadcast.splatinsert155 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat156 = shufflevector <4 x i8> %broadcast.splatinsert155, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body157

vec.epilog.vector.body157:                        ; preds = %vec.epilog.vector.body157, %vec.epilog.ph152
  %index158 = phi i64 [ %vec.epilog.resume.val146, %vec.epilog.ph152 ], [ %index.next161, %vec.epilog.vector.body157 ] ; 2 uses
  %vec.phi159 = phi <4 x i32> [ %i.cw, %vec.epilog.ph152 ], [ %i.da, %vec.epilog.vector.body157 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 %index158
  %wide.load160 = load <4 x i8>, ptr %i.cx, align 1, !tbaa !19747
  %i.cy = icmp eq <4 x i8> %wide.load160, %broadcast.splat156
  %i.cz = zext <4 x i1> %i.cy to <4 x i32>
  %i.da = add <4 x i32> %vec.phi159, %i.cz        ; 2 uses
  %index.next161 = add nuw i64 %index158, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.db, label %vec.epilog.middle.block162, label %vec.epilog.vector.body157, !llvm.loop !20327

vec.epilog.middle.block162:                       ; preds = %vec.epilog.vector.body157
  %i.dc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.da) ; 2 uses
  %cmp.n163 = icmp eq i64 %.fr77, %n.vec154
  br i1 %cmp.n163, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit38, label %vec.epilog.scalar.ph149.preheader

vec.epilog.scalar.ph149.preheader:                ; preds = %vector.scevcheck121, %iter.check148, %vec.epilog.iter.check150, %vec.epilog.middle.block162
  %.ph269 = phi i64 [ 0, %iter.check148 ], [ 0, %vector.scevcheck121 ], [ %n.vec127, %vec.epilog.iter.check150 ], [ %n.vec154, %vec.epilog.middle.block162 ]
  %.079.i35.ph = phi i32 [ 0, %iter.check148 ], [ 0, %vector.scevcheck121 ], [ %i.cv, %vec.epilog.iter.check150 ], [ %i.dc, %vec.epilog.middle.block162 ]
  br label %vec.epilog.scalar.ph149

vec.epilog.scalar.ph149:                          ; preds = %vec.epilog.scalar.ph149.preheader, %vec.epilog.scalar.ph149
  %i.dd = phi i64 [ %indvars.iv.next.i37, %vec.epilog.scalar.ph149 ], [ %.ph269, %vec.epilog.scalar.ph149.preheader ] ; 2 uses
  %.079.i35 = phi i32 [ %spec.select.i36, %vec.epilog.scalar.ph149 ], [ %.079.i35.ph, %vec.epilog.scalar.ph149.preheader ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19747
  %i.dg = icmp eq i8 %i.df, %i.an
  %i.dh = zext i1 %i.dg to i32
  %spec.select.i36 = add i32 %.079.i35, %i.dh     ; 2 uses
  %indvars.iv.next.i37 = add i64 %i.dd, 1         ; 2 uses
  %6 = and i64 %indvars.iv.next.i37, 4294967295
  %i.di = icmp ugt i64 %.fr77, %6
  br i1 %i.di, label %vec.epilog.scalar.ph149, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit38, !llvm.loop !20328

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit38: ; preds = %vec.epilog.scalar.ph149, %middle.block141, %vec.epilog.middle.block162, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit
  %.07.lcssa.i37 = phi i32 [ 0, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit ], [ %i.dc, %vec.epilog.middle.block162 ], [ %i.cv, %middle.block141 ], [ %spec.select.i36, %vec.epilog.scalar.ph149 ]
  %i.dj = icmp eq i32 %.07.lcssa.i, %.07.lcssa.i37
  br i1 %i.dj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit38
  br i1 %.not.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45, label %iter.check194

iter.check194:                                    ; preds = %bb.i
  %min.iters.check168 = icmp ult i64 %i.n, 4
  br i1 %min.iters.check168, label %.lr.ph.i40.preheader, label %vector.scevcheck167

vector.scevcheck167:                              ; preds = %iter.check194
  %i.dk = add i64 %i.n, -1                        ; 2 uses
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = icmp eq i64 %i.dl, 4294967295
  %i.dn = icmp ugt i64 %i.dk, 4294967295
  %i.do = or i1 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph.i40.preheader, label %vector.main.loop.iter.check169

vector.main.loop.iter.check169:                   ; preds = %vector.scevcheck167
  %min.iters.check170 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check170, label %vec.epilog.ph198, label %vector.ph171

vector.ph171:                                     ; preds = %vector.main.loop.iter.check169
  %n.mod.vf172 = and i64 %i.n, 28
  %n.vec173 = and i64 %i.n, 8589934560            ; 4 uses
  %broadcast.splatinsert174 = insertelement <8 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat175 = shufflevector <8 x i8> %broadcast.splatinsert174, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph171
  %index177 = phi i64 [ 0, %vector.ph171 ], [ %index.next186, %vector.body176 ] ; 2 uses
  %vec.phi178 = phi <8 x i32> [ zeroinitializer, %vector.ph171 ], [ %i.eb, %vector.body176 ]
  %vec.phi179 = phi <8 x i32> [ zeroinitializer, %vector.ph171 ], [ %i.ec, %vector.body176 ]
  %vec.phi180 = phi <8 x i32> [ zeroinitializer, %vector.ph171 ], [ %i.ed, %vector.body176 ]
  %vec.phi181 = phi <8 x i32> [ zeroinitializer, %vector.ph171 ], [ %i.ee, %vector.body176 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.al, i64 %index177 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %wide.load182 = load <8 x i8>, ptr %i.dp, align 1, !tbaa !19747
  %wide.load183 = load <8 x i8>, ptr %i.dq, align 1, !tbaa !19747
  %wide.load184 = load <8 x i8>, ptr %i.dr, align 1, !tbaa !19747
  %wide.load185 = load <8 x i8>, ptr %i.ds, align 1, !tbaa !19747
  %i.dt = icmp eq <8 x i8> %wide.load182, %broadcast.splat175
  %i.du = icmp eq <8 x i8> %wide.load183, %broadcast.splat175
  %i.dv = icmp eq <8 x i8> %wide.load184, %broadcast.splat175
  %i.dw = icmp eq <8 x i8> %wide.load185, %broadcast.splat175
  %i.dx = zext <8 x i1> %i.dt to <8 x i32>
  %i.dy = zext <8 x i1> %i.du to <8 x i32>
  %i.dz = zext <8 x i1> %i.dv to <8 x i32>
  %i.ea = zext <8 x i1> %i.dw to <8 x i32>
  %i.eb = add <8 x i32> %vec.phi178, %i.dx        ; 2 uses
  %i.ec = add <8 x i32> %vec.phi179, %i.dy        ; 2 uses
  %i.ed = add <8 x i32> %vec.phi180, %i.dz        ; 2 uses
  %i.ee = add <8 x i32> %vec.phi181, %i.ea        ; 2 uses
  %index.next186 = add nuw i64 %index177, 32      ; 2 uses
  %i.ef = icmp eq i64 %index.next186, %n.vec173
  br i1 %i.ef, label %middle.block187, label %vector.body176, !llvm.loop !20329

middle.block187:                                  ; preds = %vector.body176
  %bin.rdx188 = add <8 x i32> %i.ec, %i.eb
  %bin.rdx189 = add <8 x i32> %i.ed, %bin.rdx188
  %bin.rdx190 = add <8 x i32> %i.ee, %bin.rdx189
  %i.eg = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx190) ; 3 uses
  %cmp.n191 = icmp eq i64 %i.n, %n.vec173
  br i1 %cmp.n191, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block187
  %min.epilog.iters.check197 = icmp eq i64 %n.mod.vf172, 0
  br i1 %min.epilog.iters.check197, label %.lr.ph.i40.preheader, label %vec.epilog.ph198, !prof !20323

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check169, %vec.epilog.iter.check196
  %vec.epilog.resume.val192 = phi i64 [ %n.vec173, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check169 ]
  %bc.merge.rdx193 = phi i32 [ %i.eg, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check169 ]
  %n.vec200 = and i64 %i.n, 8589934588            ; 3 uses
  %i.eh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx193, i64 0
  %broadcast.splatinsert201 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat202 = shufflevector <4 x i8> %broadcast.splatinsert201, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body203

vec.epilog.vector.body203:                        ; preds = %vec.epilog.vector.body203, %vec.epilog.ph198
  %index204 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph198 ], [ %index.next207, %vec.epilog.vector.body203 ] ; 2 uses
  %vec.phi205 = phi <4 x i32> [ %i.eh, %vec.epilog.ph198 ], [ %i.el, %vec.epilog.vector.body203 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.al, i64 %index204
  %wide.load206 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !19747
  %i.ej = icmp eq <4 x i8> %wide.load206, %broadcast.splat202
  %i.ek = zext <4 x i1> %i.ej to <4 x i32>
  %i.el = add <4 x i32> %vec.phi205, %i.ek        ; 2 uses
  %index.next207 = add nuw i64 %index204, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next207, %n.vec200
  br i1 %i.em, label %vec.epilog.middle.block208, label %vec.epilog.vector.body203, !llvm.loop !20330

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body203
  %i.en = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.el) ; 2 uses
  %cmp.n209 = icmp eq i64 %i.n, %n.vec200
  br i1 %cmp.n209, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45, label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %vector.scevcheck167, %iter.check194, %vec.epilog.iter.check196, %vec.epilog.middle.block208
  %.ph263 = phi i64 [ 0, %iter.check194 ], [ 0, %vector.scevcheck167 ], [ %n.vec173, %vec.epilog.iter.check196 ], [ %n.vec200, %vec.epilog.middle.block208 ]
  %.079.i42.ph = phi i32 [ 0, %iter.check194 ], [ 0, %vector.scevcheck167 ], [ %i.eg, %vec.epilog.iter.check196 ], [ %i.en, %vec.epilog.middle.block208 ]
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader, %.lr.ph.i40
  %i.eo = phi i64 [ %indvars.iv.next.i45, %.lr.ph.i40 ], [ %.ph263, %.lr.ph.i40.preheader ] ; 2 uses
  %.079.i42 = phi i32 [ %spec.select.i43, %.lr.ph.i40 ], [ %.079.i42.ph, %.lr.ph.i40.preheader ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !19747
  %i.er = icmp eq i8 %i.eq, %i.an
  %i.es = zext i1 %i.er to i32
  %spec.select.i43 = add i32 %.079.i42, %i.es     ; 2 uses
  %indvars.iv.next.i45 = add i64 %i.eo, 1         ; 2 uses
  %7 = and i64 %indvars.iv.next.i45, 4294967295
  %i.et = icmp samesign ugt i64 %i.n, %7
  br i1 %i.et, label %.lr.ph.i40, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45, !llvm.loop !20331

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45: ; preds = %.lr.ph.i40, %middle.block187, %vec.epilog.middle.block208, %bb.i
  %.07.lcssa.i44 = phi i32 [ 0, %bb.i ], [ %i.en, %vec.epilog.middle.block208 ], [ %i.eg, %middle.block187 ], [ %spec.select.i43, %.lr.ph.i40 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !19738 ; 10 uses
  %.not.i46 = icmp eq i64 %i.ev, 0
  br i1 %.not.i46, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, label %iter.check240

iter.check240:                                    ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45
  %i.ew = load ptr, ptr %4, align 8, !tbaa !19733 ; 3 uses
  %min.iters.check214 = icmp ult i64 %i.ev, 4
  br i1 %min.iters.check214, label %vec.epilog.scalar.ph241.preheader, label %vector.scevcheck213

vector.scevcheck213:                              ; preds = %iter.check240
  %i.ex = add i64 %i.ev, -1                       ; 2 uses
  %i.ey = and i64 %i.ex, 4294967295
  %i.ez = icmp eq i64 %i.ey, 4294967295
  %i.fa = icmp ugt i64 %i.ex, 4294967295
  %i.fb = or i1 %i.ez, %i.fa
  br i1 %i.fb, label %vec.epilog.scalar.ph241.preheader, label %vector.main.loop.iter.check215

vector.main.loop.iter.check215:                   ; preds = %vector.scevcheck213
  %min.iters.check216 = icmp ult i64 %i.ev, 32
  br i1 %min.iters.check216, label %vec.epilog.ph244, label %vector.ph217

vector.ph217:                                     ; preds = %vector.main.loop.iter.check215
  %n.mod.vf218 = and i64 %i.ev, 28
  %n.vec219 = and i64 %i.ev, 8589934560           ; 4 uses
  %broadcast.splatinsert220 = insertelement <8 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat221 = shufflevector <8 x i8> %broadcast.splatinsert220, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph217
  %index223 = phi i64 [ 0, %vector.ph217 ], [ %index.next232, %vector.body222 ] ; 2 uses
  %vec.phi224.a = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.fo, %vector.body222 ]
  %vec.phi225.a = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.fp, %vector.body222 ]
  %vec.phi226.a = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.fq, %vector.body222 ]
  %vec.phi227 = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.fr, %vector.body222 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %index223 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %wide.load228.a = load <8 x i8>, ptr %i.fc, align 1, !tbaa !19747
  %wide.load229.a = load <8 x i8>, ptr %i.fd, align 1, !tbaa !19747
  %wide.load230.a = load <8 x i8>, ptr %i.fe, align 1, !tbaa !19747
  %wide.load231 = load <8 x i8>, ptr %i.ff, align 1, !tbaa !19747
  %i.fg = icmp eq <8 x i8> %wide.load228.a, %broadcast.splat221
  %i.fh = icmp eq <8 x i8> %wide.load229.a, %broadcast.splat221
  %i.fi = icmp eq <8 x i8> %wide.load230.a, %broadcast.splat221
  %i.fj = icmp eq <8 x i8> %wide.load231, %broadcast.splat221
  %i.fk = zext <8 x i1> %i.fg to <8 x i32>
  %i.fl = zext <8 x i1> %i.fh to <8 x i32>
  %i.fm = zext <8 x i1> %i.fi to <8 x i32>
  %i.fn = zext <8 x i1> %i.fj to <8 x i32>
  %i.fo = add <8 x i32> %vec.phi224.a, %i.fk      ; 2 uses
  %i.fp = add <8 x i32> %vec.phi225.a, %i.fl      ; 2 uses
  %i.fq = add <8 x i32> %vec.phi226.a, %i.fm      ; 2 uses
  %i.fr = add <8 x i32> %vec.phi227, %i.fn        ; 2 uses
  %index.next232 = add nuw i64 %index223, 32      ; 2 uses
  %i.fs = icmp eq i64 %index.next232, %n.vec219
  br i1 %i.fs, label %middle.block233, label %vector.body222, !llvm.loop !20332

middle.block233:                                  ; preds = %vector.body222
  %bin.rdx234.a = add <8 x i32> %i.fp, %i.fo
  %bin.rdx235.a = add <8 x i32> %i.fq, %bin.rdx234.a
  %bin.rdx236 = add <8 x i32> %i.fr, %bin.rdx235.a
  %i.ft = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx236) ; 3 uses
  %cmp.n237 = icmp eq i64 %i.ev, %n.vec219
  br i1 %cmp.n237, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, label %vec.epilog.iter.check242

vec.epilog.iter.check242:                         ; preds = %middle.block233
  %min.epilog.iters.check243 = icmp eq i64 %n.mod.vf218, 0
  br i1 %min.epilog.iters.check243, label %vec.epilog.scalar.ph241.preheader, label %vec.epilog.ph244, !prof !20323

vec.epilog.ph244:                                 ; preds = %vector.main.loop.iter.check215, %vec.epilog.iter.check242
  %vec.epilog.resume.val238 = phi i64 [ %n.vec219, %vec.epilog.iter.check242 ], [ 0, %vector.main.loop.iter.check215 ]
  %bc.merge.rdx239 = phi i32 [ %i.ft, %vec.epilog.iter.check242 ], [ 0, %vector.main.loop.iter.check215 ]
  %n.vec246 = and i64 %i.ev, 8589934588           ; 3 uses
  %i.fu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx239, i64 0
  %broadcast.splatinsert247 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat248 = shufflevector <4 x i8> %broadcast.splatinsert247, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body249

vec.epilog.vector.body249:                        ; preds = %vec.epilog.vector.body249, %vec.epilog.ph244
  %index250 = phi i64 [ %vec.epilog.resume.val238, %vec.epilog.ph244 ], [ %index.next253, %vec.epilog.vector.body249 ] ; 2 uses
  %vec.phi251 = phi <4 x i32> [ %i.fu, %vec.epilog.ph244 ], [ %i.fy, %vec.epilog.vector.body249 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ew, i64 %index250
  %wide.load252 = load <4 x i8>, ptr %i.fv, align 1, !tbaa !19747
  %i.fw = icmp eq <4 x i8> %wide.load252, %broadcast.splat248
  %i.fx = zext <4 x i1> %i.fw to <4 x i32>
  %i.fy = add <4 x i32> %vec.phi251, %i.fx        ; 2 uses
  %index.next253 = add nuw i64 %index250, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.fz, label %vec.epilog.middle.block254, label %vec.epilog.vector.body249, !llvm.loop !20333

vec.epilog.middle.block254:                       ; preds = %vec.epilog.vector.body249
  %i.ga = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fy) ; 2 uses
  %cmp.n255 = icmp eq i64 %i.ev, %n.vec246
  br i1 %cmp.n255, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, label %vec.epilog.scalar.ph241.preheader

vec.epilog.scalar.ph241.preheader:                ; preds = %vector.scevcheck213, %iter.check240, %vec.epilog.iter.check242, %vec.epilog.middle.block254
  %.ph = phi i64 [ 0, %iter.check240 ], [ 0, %vector.scevcheck213 ], [ %n.vec219, %vec.epilog.iter.check242 ], [ %n.vec246, %vec.epilog.middle.block254 ]
  %.079.i49.ph = phi i32 [ 0, %iter.check240 ], [ 0, %vector.scevcheck213 ], [ %i.ft, %vec.epilog.iter.check242 ], [ %i.ga, %vec.epilog.middle.block254 ]
  br label %vec.epilog.scalar.ph241

vec.epilog.scalar.ph241:                          ; preds = %vec.epilog.scalar.ph241.preheader, %vec.epilog.scalar.ph241
  %i.gb = phi i64 [ %indvars.iv.next.i53, %vec.epilog.scalar.ph241 ], [ %.ph, %vec.epilog.scalar.ph241.preheader ] ; 2 uses
  %.079.i49 = phi i32 [ %spec.select.i50, %vec.epilog.scalar.ph241 ], [ %.079.i49.ph, %vec.epilog.scalar.ph241.preheader ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !19747
  %i.ge = icmp eq i8 %i.gd, %i.an
  %i.gf = zext i1 %i.ge to i32
  %spec.select.i50 = add i32 %.079.i49, %i.gf     ; 2 uses
  %indvars.iv.next.i53 = add i64 %i.gb, 1         ; 2 uses
  %8 = and i64 %indvars.iv.next.i53, 4294967295
  %i.gg = icmp ugt i64 %i.ev, %8
  br i1 %i.gg, label %vec.epilog.scalar.ph241, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, !llvm.loop !20334

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52: ; preds = %vec.epilog.scalar.ph241, %middle.block233, %vec.epilog.middle.block254, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45
  %.07.lcssa.i51 = phi i32 [ 0, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45 ], [ %i.ga, %vec.epilog.middle.block254 ], [ %i.ft, %middle.block233 ], [ %spec.select.i50, %vec.epilog.scalar.ph241 ]
  %i.gh = icmp eq i32 %.07.lcssa.i44, %.07.lcssa.i51
  br i1 %i.gh, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit38, %.critedge.thread94
  %i.gi = icmp eq i64 %i.n, %.fr77
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = icmp eq i64 %i.n, %i.gk
  %or.cond70 = select i1 %i.gi, i1 %i.gl, i1 false ; 2 uses
  %i.gm = trunc i32 %.025.lcssa96 to i8
  %spec.select = select i1 %or.cond70, i8 %i.gm, i8 0
  %spec.select98 = select i1 %or.cond70, i32 1, i32 3
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, %.critedge, %.preheader
  %.sink = phi i8 [ 0, %.critedge ], [ %spec.select, %bb.j ], [ %i.an, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52 ], [ 0, %.preheader ]
  %.1 = phi i32 [ 3, %.critedge ], [ %spec.select98, %bb.j ], [ 2, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52 ], [ 3, %.preheader ]
  store i8 %.sink, ptr %1, align 1, !tbaa !19747
  %i.gn = load ptr, ptr %4, align 8, !tbaa !19733 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %.critedge.thread
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !19747
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %.critedge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.gs = load ptr, ptr %3, align 8, !tbaa !19733 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !19747
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ab, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %i.gx = load ptr, ptr %2, align 8, !tbaa !19733 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !19747
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.2 = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  %i.hc = load ptr, ptr %2, align 8, !tbaa !19733 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.k
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !19747
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const int, std::__cxx11::basic_string<char>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store ptr %0, ptr %5, align 8, !tbaa !20335
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #45 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !20086
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  store i32 %i.f, ptr %i.c, align 8, !tbaa !20337
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !19863
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !19738
  store i8 0, ptr %i.h, align 8, !tbaa !19747
  store ptr %i.b, ptr %i.a, align 8, !tbaa !20339
  %i.j = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 4 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = load i32, ptr %i.c, align 8, !tbaa !7
  %i.q = load i32, ptr %i.o, align 4, !tbaa !7
  %i.r = icmp slt i32 %i.p, %i.q
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.s = phi i1 [ %i.r, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #41
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20047
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !20047
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !19733 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.h, align 8, !tbaa !19747
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #42
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #42
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.k, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20047
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20048 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = load i32, ptr %2, align 4, !tbaa !7
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !20048 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
end_hunk_0
