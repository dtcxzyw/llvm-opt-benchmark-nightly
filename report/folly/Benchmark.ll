inline.NumInlined: 7391
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEEixERS9_:bb.a
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  store ptr %1, ptr %2, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store i16 97, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #42
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !20
  %bcmp.i = call i32 @bcmp(ptr %i.j, ptr nonnull %i.a, i64 %i.f)
  %i.k = icmp eq i32 %bcmp.i, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i8 0, ptr %1, align 1, !tbaa !23
  br label %bb.k

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  store i16 65, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #42
  store i16 59, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  invoke void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.m)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %bb.c
  %i.n = load i64, ptr %i.e, align 8, !tbaa !24   ; 14 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %.fr80 = freeze i64 %i.q                        ; 8 uses
  %i.r = trunc i64 %.fr80 to i32
  %invariant.smin = call i32 @llvm.smin.i32(i32 %i.o, i32 %i.r) ; 2 uses
  %or.cond74 = icmp slt i32 %invariant.smin, 0
  br i1 %or.cond74, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = load ptr, ptr %2, align 8, !tbaa !20
  %i.t = load ptr, ptr %3, align 8, !tbaa !20
  %i.u = add nuw i32 %invariant.smin, 1           ; 2 uses
  %wide.trip.count = zext i32 %i.u to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread97, label %bb.d, !llvm.loop !1806

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  %i.ac = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge:                                        ; preds = %bb.d
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = icmp eq i64 %indvars.iv, 0
  br i1 %i.ai, label %.critedge.thread, label %.critedge.thread97

.critedge.thread97:                               ; preds = %bb.e, %.critedge
  %.0.lcssa99 = phi i32 [ %i.ah, %.critedge ], [ %i.u, %bb.e ] ; 2 uses
  %i.aj = add nsw i32 %.0.lcssa99, -1             ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = load ptr, ptr %2, align 8, !tbaa !20    ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23  ; 9 uses
  %.not31 = icmp eq i32 %i.aj, 0
  br i1 %.not31, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge.thread97
  %.not.i = icmp eq i64 %i.n, 0                   ; 2 uses
  br i1 %.not.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader168, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.ao = add i64 %i.n, -1                        ; 2 uses
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = icmp eq i64 %i.ap, 4294967295
  %i.ar = icmp ugt i64 %i.ao, 4294967295
  %i.as = or i1 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.n, 8589934584               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi103 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %wide.load = load <4 x i8>, ptr %i.at, align 1, !tbaa !23
  %wide.load104 = load <4 x i8>, ptr %i.au, align 1, !tbaa !23
  %i.av = icmp eq <4 x i8> %wide.load, %broadcast.splat
  %i.aw = icmp eq <4 x i8> %wide.load104, %broadcast.splat
  %i.ax = zext <4 x i1> %i.av to <4 x i32>
  %i.ay = zext <4 x i1> %i.aw to <4 x i32>
  %i.az = add <4 x i32> %vec.phi, %i.ax           ; 2 uses
  %i.ba = add <4 x i32> %vec.phi103, %i.ay        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1807

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ba, %i.az
  %i.bc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %.lr.ph.i.preheader168

.lr.ph.i.preheader168:                            ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader168, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader168 ] ; 2 uses
  %.079.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader168 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !23
  %i.bf = icmp eq i8 %i.be, %i.an
  %i.bg = zext i1 %i.bf to i32
  %spec.select.i = add i32 %.079.i, %i.bg         ; 2 uses
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bh = and i64 %indvars.iv.next.i, 4294967295
  %i.bi = icmp ugt i64 %i.n, %i.bh
  br i1 %i.bi, label %.lr.ph.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, !llvm.loop !1810

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.h
  %.07.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.bc, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.not.i32 = icmp eq i64 %.fr80, 0
  br i1 %.not.i32, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit
  %i.bj = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %min.iters.check107 = icmp ult i64 %.fr80, 8
  br i1 %min.iters.check107, label %scalar.ph106.preheader, label %vector.scevcheck105

vector.scevcheck105:                              ; preds = %.lr.ph.i33
  %i.bk = add i64 %.fr80, -1                      ; 2 uses
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = icmp eq i64 %i.bl, 4294967295
  %i.bn = icmp ugt i64 %i.bk, 4294967295
  %i.bo = or i1 %i.bm, %i.bn
  br i1 %i.bo, label %scalar.ph106.preheader, label %vector.ph108

vector.ph108:                                     ; preds = %vector.scevcheck105
  %n.vec109 = and i64 %.fr80, 8589934584          ; 3 uses
  %broadcast.splatinsert110 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat111 = shufflevector <4 x i8> %broadcast.splatinsert110, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph108
  %index113 = phi i64 [ 0, %vector.ph108 ], [ %index.next118, %vector.body112 ] ; 2 uses
  %vec.phi114 = phi <4 x i32> [ zeroinitializer, %vector.ph108 ], [ %i.bv, %vector.body112 ]
  %vec.phi115 = phi <4 x i32> [ zeroinitializer, %vector.ph108 ], [ %i.bw, %vector.body112 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index113 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %wide.load116 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !23
  %wide.load117 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !23
  %i.br = icmp eq <4 x i8> %wide.load116, %broadcast.splat111
  %i.bs = icmp eq <4 x i8> %wide.load117, %broadcast.splat111
  %i.bt = zext <4 x i1> %i.br to <4 x i32>
  %i.bu = zext <4 x i1> %i.bs to <4 x i32>
  %i.bv = add <4 x i32> %vec.phi114, %i.bt        ; 2 uses
  %i.bw = add <4 x i32> %vec.phi115, %i.bu        ; 2 uses
  %index.next118 = add nuw i64 %index113, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next118, %n.vec109
  br i1 %i.bx, label %middle.block119, label %vector.body112, !llvm.loop !1811

middle.block119:                                  ; preds = %vector.body112
  %bin.rdx120 = add <4 x i32> %i.bw, %i.bv
  %i.by = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx120) ; 2 uses
  %cmp.n121 = icmp eq i64 %.fr80, %n.vec109
  br i1 %cmp.n121, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %vector.scevcheck105, %.lr.ph.i33, %middle.block119
  %indvars.iv.i34.ph = phi i64 [ 0, %vector.scevcheck105 ], [ 0, %.lr.ph.i33 ], [ %n.vec109, %middle.block119 ]
  %.079.i35.ph = phi i32 [ 0, %vector.scevcheck105 ], [ 0, %.lr.ph.i33 ], [ %i.by, %middle.block119 ]
  br label %scalar.ph106

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i37, %scalar.ph106 ], [ %indvars.iv.i34.ph, %scalar.ph106.preheader ] ; 2 uses
  %.079.i35 = phi i32 [ %spec.select.i36, %scalar.ph106 ], [ %.079.i35.ph, %scalar.ph106.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i34
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !23
  %i.cb = icmp eq i8 %i.ca, %i.an
  %i.cc = zext i1 %i.cb to i32
  %spec.select.i36 = add i32 %.079.i35, %i.cc     ; 2 uses
  %indvars.iv.next.i37 = add nuw i64 %indvars.iv.i34, 1 ; 2 uses
  %i.cd = and i64 %indvars.iv.next.i37, 4294967295
  %i.ce = icmp ugt i64 %.fr80, %i.cd
  br i1 %i.ce, label %scalar.ph106, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, !llvm.loop !1812

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39: ; preds = %scalar.ph106, %middle.block119, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit
  %.07.lcssa.i38 = phi i32 [ 0, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit ], [ %i.by, %middle.block119 ], [ %spec.select.i36, %scalar.ph106 ]
  %i.cf = icmp eq i32 %.07.lcssa.i, %.07.lcssa.i38
  br i1 %i.cf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39
  br i1 %.not.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47, label %.lr.ph.i41.preheader

.lr.ph.i41.preheader:                             ; preds = %bb.i
  %min.iters.check126 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check126, label %.lr.ph.i41.preheader163, label %vector.scevcheck124

vector.scevcheck124:                              ; preds = %.lr.ph.i41.preheader
  %i.cg = add i64 %i.n, -1                        ; 2 uses
  %i.ch = and i64 %i.cg, 4294967295
  %i.ci = icmp eq i64 %i.ch, 4294967295
  %i.cj = icmp ugt i64 %i.cg, 4294967295
  %i.ck = or i1 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph.i41.preheader163, label %vector.ph127

vector.ph127:                                     ; preds = %vector.scevcheck124
  %n.vec128 = and i64 %i.n, 8589934584            ; 3 uses
  %broadcast.splatinsert129 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat130 = shufflevector <4 x i8> %broadcast.splatinsert129, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next137, %vector.body131 ] ; 2 uses
  %vec.phi133 = phi <4 x i32> [ zeroinitializer, %vector.ph127 ], [ %i.cr, %vector.body131 ]
  %vec.phi134 = phi <4 x i32> [ zeroinitializer, %vector.ph127 ], [ %i.cs, %vector.body131 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.al, i64 %index132 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %wide.load135 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !23
  %wide.load136 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !23
  %i.cn = icmp eq <4 x i8> %wide.load135, %broadcast.splat130
  %i.co = icmp eq <4 x i8> %wide.load136, %broadcast.splat130
  %i.cp = zext <4 x i1> %i.cn to <4 x i32>
  %i.cq = zext <4 x i1> %i.co to <4 x i32>
  %i.cr = add <4 x i32> %vec.phi133, %i.cp        ; 2 uses
  %i.cs = add <4 x i32> %vec.phi134, %i.cq        ; 2 uses
  %index.next137 = add nuw i64 %index132, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next137, %n.vec128
  br i1 %i.ct, label %middle.block138, label %vector.body131, !llvm.loop !1813

middle.block138:                                  ; preds = %vector.body131
  %bin.rdx139 = add <4 x i32> %i.cs, %i.cr
  %i.cu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx139) ; 2 uses
  %cmp.n140 = icmp eq i64 %i.n, %n.vec128
  br i1 %cmp.n140, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47, label %.lr.ph.i41.preheader163

.lr.ph.i41.preheader163:                          ; preds = %vector.scevcheck124, %.lr.ph.i41.preheader, %middle.block138
  %indvars.iv.i42.ph = phi i64 [ 0, %vector.scevcheck124 ], [ 0, %.lr.ph.i41.preheader ], [ %n.vec128, %middle.block138 ]
  %.079.i43.ph = phi i32 [ 0, %vector.scevcheck124 ], [ 0, %.lr.ph.i41.preheader ], [ %i.cu, %middle.block138 ]
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.preheader163, %.lr.ph.i41
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i45, %.lr.ph.i41 ], [ %indvars.iv.i42.ph, %.lr.ph.i41.preheader163 ] ; 2 uses
  %.079.i43 = phi i32 [ %spec.select.i44, %.lr.ph.i41 ], [ %.079.i43.ph, %.lr.ph.i41.preheader163 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i42
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !23
  %i.cx = icmp eq i8 %i.cw, %i.an
  %i.cy = zext i1 %i.cx to i32
  %spec.select.i44 = add i32 %.079.i43, %i.cy     ; 2 uses
  %indvars.iv.next.i45 = add nuw i64 %indvars.iv.i42, 1 ; 2 uses
  %i.cz = and i64 %indvars.iv.next.i45, 4294967295
  %i.da = icmp samesign ugt i64 %i.n, %i.cz
  br i1 %i.da, label %.lr.ph.i41, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47, !llvm.loop !1814

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47: ; preds = %.lr.ph.i41, %middle.block138, %bb.i
  %.07.lcssa.i46 = phi i32 [ 0, %bb.i ], [ %i.cu, %middle.block138 ], [ %spec.select.i44, %.lr.ph.i41 ]
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !24 ; 6 uses
  %.not.i48 = icmp eq i64 %i.dc, 0
  br i1 %.not.i48, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47
  %i.dd = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.dc, 8
  br i1 %min.iters.check145, label %scalar.ph144.preheader, label %vector.scevcheck143

vector.scevcheck143:                              ; preds = %.lr.ph.i49
  %i.de = add i64 %i.dc, -1                       ; 2 uses
  %i.df = and i64 %i.de, 4294967295
  %i.dg = icmp eq i64 %i.df, 4294967295
  %i.dh = icmp ugt i64 %i.de, 4294967295
  %i.di = or i1 %i.dg, %i.dh
  br i1 %i.di, label %scalar.ph144.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %vector.scevcheck143
  %n.vec147 = and i64 %i.dc, 8589934584           ; 3 uses
  %broadcast.splatinsert148 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat149 = shufflevector <4 x i8> %broadcast.splatinsert148, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph146
  %index151 = phi i64 [ 0, %vector.ph146 ], [ %index.next156, %vector.body150 ] ; 2 uses
  %vec.phi152 = phi <4 x i32> [ zeroinitializer, %vector.ph146 ], [ %i.dp, %vector.body150 ]
  %vec.phi153 = phi <4 x i32> [ zeroinitializer, %vector.ph146 ], [ %i.dq, %vector.body150 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index151 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %wide.load154 = load <4 x i8>, ptr %i.dj, align 1, !tbaa !23
  %wide.load155 = load <4 x i8>, ptr %i.dk, align 1, !tbaa !23
  %i.dl = icmp eq <4 x i8> %wide.load154, %broadcast.splat149
  %i.dm = icmp eq <4 x i8> %wide.load155, %broadcast.splat149
  %i.dn = zext <4 x i1> %i.dl to <4 x i32>
  %i.do = zext <4 x i1> %i.dm to <4 x i32>
  %i.dp = add <4 x i32> %vec.phi152, %i.dn        ; 2 uses
  %i.dq = add <4 x i32> %vec.phi153, %i.do        ; 2 uses
  %index.next156 = add nuw i64 %index151, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next156, %n.vec147
  br i1 %i.dr, label %middle.block157, label %vector.body150, !llvm.loop !1815

middle.block157:                                  ; preds = %vector.body150
  %bin.rdx158 = add <4 x i32> %i.dq, %i.dp
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx158) ; 2 uses
  %cmp.n159 = icmp eq i64 %i.dc, %n.vec147
  br i1 %cmp.n159, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, label %scalar.ph144.preheader

scalar.ph144.preheader:                           ; preds = %vector.scevcheck143, %.lr.ph.i49, %middle.block157
  %indvars.iv.i50.ph = phi i64 [ 0, %vector.scevcheck143 ], [ 0, %.lr.ph.i49 ], [ %n.vec147, %middle.block157 ]
  %.079.i51.ph = phi i32 [ 0, %vector.scevcheck143 ], [ 0, %.lr.ph.i49 ], [ %i.ds, %middle.block157 ]
  br label %scalar.ph144

scalar.ph144:                                     ; preds = %scalar.ph144.preheader, %scalar.ph144
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i53, %scalar.ph144 ], [ %indvars.iv.i50.ph, %scalar.ph144.preheader ] ; 2 uses
  %.079.i51 = phi i32 [ %spec.select.i52, %scalar.ph144 ], [ %.079.i51.ph, %scalar.ph144.preheader ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i50
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !23
  %i.dv = icmp eq i8 %i.du, %i.an
  %i.dw = zext i1 %i.dv to i32
  %spec.select.i52 = add i32 %.079.i51, %i.dw     ; 2 uses
  %indvars.iv.next.i53 = add nuw i64 %indvars.iv.i50, 1 ; 2 uses
  %i.dx = and i64 %indvars.iv.next.i53, 4294967295
  %i.dy = icmp ugt i64 %i.dc, %i.dx
  br i1 %i.dy, label %scalar.ph144, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, !llvm.loop !1816

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55: ; preds = %scalar.ph144, %middle.block157, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47
  %.07.lcssa.i54 = phi i32 [ 0, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47 ], [ %i.ds, %middle.block157 ], [ %spec.select.i52, %scalar.ph144 ]
  %i.dz = icmp eq i32 %.07.lcssa.i46, %.07.lcssa.i54
  br i1 %i.dz, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, %.critedge.thread97
  %i.ea = icmp eq i64 %i.n, %.fr80
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = icmp eq i64 %i.n, %i.ec
  %or.cond73 = select i1 %i.ea, i1 %i.ed, i1 false ; 2 uses
  %i.ee = trunc i32 %.0.lcssa99 to i8
  %spec.select = select i1 %or.cond73, i8 %i.ee, i8 0
  %spec.select101 = select i1 %or.cond73, i32 1, i32 3
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, %.critedge, %.preheader
  %.sink = phi i8 [ 0, %.critedge ], [ %spec.select, %bb.j ], [ %i.an, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55 ], [ 0, %.preheader ]
  %.1 = phi i32 [ 3, %.critedge ], [ %spec.select101, %bb.j ], [ 2, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55 ], [ 3, %.preheader ]
  store i8 %.sink, ptr %1, align 1, !tbaa !23
  %i.ef = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %.critedge.thread
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !23
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %.critedge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  %i.ek = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.en = load i64, ptr %i.el, align 8, !tbaa !23
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ab, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  %i.ep = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !23
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.2 = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  %i.eu = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.k
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !23
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret i32 %.2
}

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const int, std::__cxx11::basic_string<char>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  store ptr %0, ptr %5, align 8, !tbaa !1817
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #45 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !574
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  store i32 %i.f, ptr %i.c, align 8, !tbaa !1819
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !24
  store i8 0, ptr %i.h, align 8, !tbaa !23
  store ptr %i.b, ptr %i.a, align 8, !tbaa !1821
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
  %i.p = load i32, ptr %i.c, align 8, !tbaa !44
  %i.q = load i32, ptr %i.o, align 4, !tbaa !44
  %i.r = icmp slt i32 %i.p, %i.q
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.s = phi i1 [ %i.r, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #42
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !238
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !238
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.h, align 8, !tbaa !23
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #43
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #43
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.k, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !238
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !44
  %i.i = load i32, ptr %2, align 4, !tbaa !44
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !245 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE21parse_extended_escapeEv:bb.a
  %i.yk = ptrtoint ptr %i.yi to i64
  %i.yl = sub i64 %i.yj, %i.yk
  invoke void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 5, i64 noundef %i.yl, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.ym = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.yo = icmp eq ptr %i.ym, %i.yn
  br i1 %i.yo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.dx
  %i.yp = load i64, ptr %i.yn, align 8, !tbaa !23
  %i.yq = add i64 %i.yp, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yq) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %bb.fg

bb.dy:                                            ; preds = %bb.dv
  %i.yr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

bb.dz:                                            ; preds = %bb.dw
  %i.ys = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yt = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.yv = icmp eq ptr %i.yt, %i.yu
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %bb.dz
  %i.yw = load i64, ptr %i.yu, align 8, !tbaa !23
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yt, i64 noundef %i.yx) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269, %bb.dy
  %.pn112 = phi { ptr, i32 } [ %i.yr, %bb.dy ], [ %i.ys, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269 ], [ %i.ys, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %bb.fh

bb.ea:                                            ; preds = %bb.du
  %switch.select = select i1 %i.yc, i32 21, i32 25
  %switch.select136 = select i1 %i.yb, i32 16, i32 %switch.select
  %.pre = load i8, ptr %i.yf, align 1, !tbaa !23
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dt
  %i.yy = phi i8 [ %i.xx, %bb.dt ], [ %.pre, %bb.ea ]
  %i.yz = phi ptr [ %i.xe, %bb.dt ], [ %i.yf, %bb.ea ] ; 2 uses
  %.059 = phi i32 [ 0, %bb.dt ], [ %switch.select136, %bb.ea ] ; 2 uses
  %i.za = icmp eq i8 %i.yy, 45                    ; 2 uses
  br i1 %i.za, label %bb.ec, label %bb.ei

bb.ec:                                            ; preds = %bb.eb
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 1 ; 3 uses
  store ptr %i.zb, ptr %i.b, align 8, !tbaa !1879
  %i.zc = icmp eq ptr %i.zb, %i.f
  br i1 %i.zc, label %bb.ed, label %bb.ei

bb.ed:                                            ; preds = %bb.ec
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !1878
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #42
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @_ZZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE21parse_extended_escapeEvE18incomplete_message, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ee unwind label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.zf = ptrtoint ptr %i.f to i64
  %i.zg = ptrtoint ptr %i.ze to i64
  %i.zh = sub i64 %i.zf, %i.zg
  invoke void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 5, i64 noundef %i.zh, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ef unwind label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.zi = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.zk = icmp eq ptr %i.zi, %i.zj
  br i1 %i.zk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %bb.ef
  %i.zl = load i64, ptr %i.zj, align 8, !tbaa !23
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zi, i64 noundef %i.zm) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  br label %bb.fg

bb.eg:                                            ; preds = %bb.ed
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

bb.eh:                                            ; preds = %bb.ee
  %i.zo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zp = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.zr = icmp eq ptr %i.zp, %i.zq
  br i1 %i.zr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %bb.eh
  %i.zs = load i64, ptr %i.zq, align 8, !tbaa !23
  %i.zt = add i64 %i.zs, 1
  call void @_ZdlPvm(ptr noundef %i.zp, i64 noundef %i.zt) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275, %bb.eg
  %.pn110 = phi { ptr, i32 } [ %i.zn, %bb.eg ], [ %i.zo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275 ], [ %i.zo, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  br label %bb.fh

bb.ei:                                            ; preds = %bb.ec, %bb.eb
  %i.zu = phi ptr [ %i.zb, %bb.ec ], [ %i.yz, %bb.eb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store ptr %i.zu, ptr %i.a, align 8, !tbaa !124
  %i.zv = call noundef i64 @_ZNK5boost16cpp_regex_traitsIcE3toiERPKcS3_i(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.f, i32 noundef 10) ; 2 uses
  %i.zw = icmp slt i64 %i.zv, 0
  %or.cond8 = and i1 %or.cond6, %i.zw
  br i1 %or.cond8, label %bb.ej, label %bb.em

bb.ej:                                            ; preds = %bb.ei
  %i.zx = load ptr, ptr %i.b, align 8, !tbaa !1879 ; 7 uses
  %i.zy = ptrtoaddr ptr %i.zx to i64              ; 2 uses
  %i.zz = load ptr, ptr %i.e, align 8, !tbaa !1880 ; 2 uses
  %.not310 = icmp eq ptr %i.zx, %i.zz
  br i1 %.not310, label %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ej
  %i.aaa = load ptr, ptr %i.aa, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !542
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 32
  br label %bb.ek

bb.ek:                                            ; preds = %.lr.ph, %bb.el
  %i.aad = phi ptr [ %i.zx, %.lr.ph ], [ %i.aaj, %bb.el ] ; 5 uses
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !23
  %i.aaf = zext i8 %i.aae to i64
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.aaf
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !23
  %i.aai = zext i8 %i.aah to i32
  %.not107 = icmp eq i32 %.059, %i.aai
  br i1 %.not107, label %.critedge10, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aad, i64 1 ; 4 uses
  store ptr %i.aaj, ptr %i.b, align 8, !tbaa !1879
  %.not = icmp eq ptr %i.aaj, %i.zz
  br i1 %.not, label %.lr.ph.i.preheader, label %bb.ek, !llvm.loop !1980

.critedge10:                                      ; preds = %bb.ek
  %.not9.i = icmp eq ptr %i.zx, %i.aad
  br i1 %.not9.i, label %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.el, %.critedge10
  %.lcssa309409 = phi ptr [ %i.aad, %.critedge10 ], [ %i.aaj, %bb.el ] ; 2 uses
  %.lcssa309409425 = ptrtoaddr ptr %.lcssa309409 to i64 ; 2 uses
  %i.aak = sub i64 %.lcssa309409425, %i.zy        ; 3 uses
  %xtraiter = and i64 %i.aak, 1
  %i.aal = add i64 %.lcssa309409425, -1
  %i.aam = icmp eq i64 %i.aal, %i.zy
  br i1 %i.aam, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aak, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.abd, %.lr.ph.i ] ; 3 uses
  %.0810.i = phi ptr [ %i.zx, %.lr.ph.i.preheader.new ], [ %i.abe, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.aan = load i8, ptr %.0810.i, align 1, !tbaa !23
  %i.aao = sext i8 %i.aan to i64
  %i.aap = shl i64 %.011.i, 6
  %i.aaq = lshr i64 %.011.i, 2
  %i.aar = add i64 %i.aap, 2654435769
  %i.aas = add i64 %i.aar, %i.aaq
  %i.aat = add i64 %i.aas, %i.aao
  %i.aau = xor i64 %i.aat, %.011.i                ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.0810.i, i64 1
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !23
  %i.aax = sext i8 %i.aaw to i64
  %i.aay = shl i64 %i.aau, 6
  %i.aaz = lshr i64 %i.aau, 2
  %i.aba = add i64 %i.aay, 2654435769
  %i.abb = add i64 %i.aba, %i.aaz
  %i.abc = add i64 %i.abb, %i.aax
  %i.abd = xor i64 %i.abc, %i.aau                 ; 3 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.0810.i, i64 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !1981

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.abd, %._crit_edge.loopexit.i.unr-lcssa ] ; 3 uses
  %.0810.i.epil.init = phi ptr [ %i.zx, %.lr.ph.i.preheader ], [ %i.abe, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod427 = trunc i64 %i.aak to i1
  call void @llvm.assume(i1 %lcmp.mod427)
  %i.abf = load i8, ptr %.0810.i.epil.init, align 1, !tbaa !23
  %i.abg = sext i8 %i.abf to i64
  %i.abh = shl i64 %.011.i.epil.init, 6
  %i.abi = lshr i64 %.011.i.epil.init, 2
  %i.abj = add i64 %i.abh, 2654435769
  %i.abk = add i64 %i.abj, %i.abi
  %i.abl = add i64 %i.abk, %i.abg
  %i.abm = xor i64 %i.abl, %.011.i.epil.init
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa421 = phi i64 [ %i.abd, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.abm, %.lr.ph.i.epil.preheader ]
  %i.abn = urem i64 %.lcssa421, 2147483647
  %i.abo = or i64 %i.abn, 1073741824
  br label %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit

_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit: ; preds = %bb.ej, %.critedge10, %._crit_edge.loopexit.i
  %.lcssa309405 = phi ptr [ %i.aad, %.critedge10 ], [ %.lcssa309409, %._crit_edge.loopexit.i ], [ %i.zx, %bb.ej ]
  %.0.lcssa.i = phi i64 [ 1073741824, %.critedge10 ], [ %i.abo, %._crit_edge.loopexit.i ], [ 1073741824, %bb.ej ]
  store ptr %.lcssa309405, ptr %i.a, align 8, !tbaa !124
  br label %bb.em

bb.em:                                            ; preds = %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit, %bb.ei
  %.0 = phi i64 [ %.0.lcssa.i, %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit ], [ %i.zv, %bb.ei ] ; 2 uses
  br i1 %i.za, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !1896
  %i.abr = zext i32 %i.abq to i64
  %reass.sub = sub i64 %i.abr, %.0
  %i.abs = add i64 %reass.sub, 1
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.1 = phi i64 [ %i.abs, %bb.en ], [ %.0, %bb.em ] ; 6 uses
  %i.abt = icmp samesign ult i64 %.1, 1073741824
  %i.abu = add i64 %.1, -1
  %or.cond12 = icmp ult i64 %i.abu, 1073741823
  br i1 %or.cond12, label %._crit_edge331, label %bb.ep

._crit_edge331:                                   ; preds = %bb.eo
  %.pre332 = trunc nuw nsw i64 %.1 to i32
  br label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.abv = icmp sgt i64 %.1, 1073741823
  br i1 %i.abv, label %bb.eq, label %bb.eu

bb.eq:                                            ; preds = %bb.ep
  %i.abw = load ptr, ptr %0, align 8, !tbaa !1866
  %i.abx = trunc i64 %.1 to i32                   ; 2 uses
  %i.aby = call noundef i32 @_ZNK5boost13re_detail_50020named_subexpressions6get_idEi(ptr noundef nonnull align 8 dereferenceable(24) %i.abw, i32 noundef %i.abx)
  %i.abz = icmp sgt i32 %i.aby, 0
  br i1 %i.abz, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %._crit_edge331, %bb.eq
  %.pre-phi = phi i32 [ %.pre332, %._crit_edge331 ], [ %i.abx, %bb.eq ] ; 2 uses
  %i.aca = load ptr, ptr %i.a, align 8, !tbaa !124
  store ptr %i.aca, ptr %i.b, align 8, !tbaa !1879
  %i.acb = call noundef ptr @_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 13, i64 noundef 24) ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  store i32 %.pre-phi, ptr %i.acc, align 8, !tbaa !1892
  %i.acd = load ptr, ptr %0, align 8, !tbaa !1866
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 40
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !1867
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acb, i64 20
  %i.ach = lshr i32 %i.acf, 20
  %i.aci = trunc i32 %i.ach to i8
  %i.acj = and i8 %i.aci, 1
  store i8 %i.acj, ptr %i.acg, align 4, !tbaa !1894
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.acl = load i32, ptr %i.ack, align 8, !tbaa !498
  %i.acm = zext i32 %i.acl to i64
  %i.acn = icmp samesign ugt i64 %.1, %i.acm
  %or.cond14 = and i1 %i.abt, %i.acn
  br i1 %or.cond14, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  store i32 %.pre-phi, ptr %i.ack, align 8, !tbaa !498
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.aco = load ptr, ptr %i.a, align 8, !tbaa !124 ; 5 uses
  store ptr %i.aco, ptr %i.b, align 8, !tbaa !1879
  switch i8 %i.ya, label %bb.fd [
    i8 25, label %bb.ev
    i8 20, label %bb.ev
    i8 15, label %bb.ev
  ]

bb.eu:                                            ; preds = %bb.eq, %bb.ep
  %i.acp = load ptr, ptr %i.b, align 8, !tbaa !1879
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !1878
  %i.acs = ptrtoint ptr %i.acp to i64
  %i.act = ptrtoint ptr %i.acr to i64
  %i.acu = sub i64 %i.acs, %i.act
  call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 6, i64 noundef %i.acu)
  br label %bb.fd

bb.ev:                                            ; preds = %bb.et, %bb.et, %bb.et
  %i.acv = load ptr, ptr %i.e, align 8, !tbaa !1880
  %i.acw = icmp eq ptr %i.aco, %i.acv
  br i1 %i.acw, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.acx = load ptr, ptr %i.aa, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.acy = load i8, ptr %i.aco, align 1, !tbaa !23
  %i.acz = load ptr, ptr %i.acx, align 8, !tbaa !542
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 32
  %i.adb = zext i8 %i.acy to i64
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ada, i64 %i.adb
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !23
  %i.ade = zext i8 %i.add to i32
  %.not108 = icmp eq i32 %.059, %i.ade
  br i1 %.not108, label %bb.fc, label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !1878
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #42
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @_ZZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE21parse_extended_escapeEvE18incomplete_message, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.adh = ptrtoint ptr %i.aco to i64
  %i.adi = ptrtoint ptr %i.adg to i64
  %i.adj = sub i64 %i.adh, %i.adi
  invoke void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 5, i64 noundef %i.adj, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ez unwind label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.adk = load ptr, ptr %16, align 8, !tbaa !20  ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.adm = icmp eq ptr %i.adk, %i.adl
  br i1 %i.adm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.ez
  %i.adn = load i64, ptr %i.adl, align 8, !tbaa !23
  %i.ado = add i64 %i.adn, 1
  call void @_ZdlPvm(ptr noundef %i.adk, i64 noundef %i.ado) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #42
  br label %bb.fd

bb.fa:                                            ; preds = %bb.ex
  %i.adp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

bb.fb:                                            ; preds = %bb.ey
  %i.adq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adr = load ptr, ptr %16, align 8, !tbaa !20  ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.adt = icmp eq ptr %i.adr, %i.ads
  br i1 %i.adt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.fb
  %i.adu = load i64, ptr %i.ads, align 8, !tbaa !23
  %i.adv = add i64 %i.adu, 1
  call void @_ZdlPvm(ptr noundef %i.adr, i64 noundef %i.adv) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282, %bb.fa
  %.pn = phi { ptr, i32 } [ %i.adp, %bb.fa ], [ %i.adq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282 ], [ %i.adq, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %bb.fh

bb.fc:                                            ; preds = %bb.ew
  %i.adw = getelementptr inbounds nuw i8, ptr %i.aco, i64 1
  store ptr %i.adw, ptr %i.b, align 8, !tbaa !1879
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %bb.eu
  %.5 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ false, %bb.eu ], [ true, %bb.et ], [ true, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %bb.fg

bb.fe:                                            ; preds = %bb.e
  %i.adx = load ptr, ptr %0, align 8, !tbaa !1866
end_hunk_1
begin_hunk_2_@_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE20parse_perl_extensionEv:bb.a
  %i.si = add i64 %reass.sub762, 7
  %i.sj = and i64 %i.si, -8                       ; 2 uses
  %i.sk = getelementptr inbounds i8, ptr %i.sb, i64 %i.sj
  store ptr %i.sk, ptr %i.sf, align 8, !tbaa !1885
  store i64 %i.sj, ptr %i.cz, align 8, !tbaa !1922
  br label %.thread618

bb.cd:                                            ; preds = %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit
  %i.sl = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i32 -4, ptr %i.sl, align 8, !tbaa !1892
  %i.sm = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  store ptr %i.sm, ptr %i.a, align 8, !tbaa !1879
  %i.sn = load ptr, ptr %i.d, align 8, !tbaa !1880 ; 2 uses
  %i.so = icmp eq ptr %i.sm, %i.sn
  br i1 %i.so, label %.preheader661, label %bb.cf

.preheader661:                                    ; preds = %bb.cd, %.preheader661
  %storemerge317 = phi ptr [ %i.st, %.preheader661 ], [ %i.dp, %bb.cd ] ; 4 uses
  store ptr %storemerge317, ptr %i.a, align 8, !tbaa !1879
  %i.sp = load i8, ptr %storemerge317, align 1, !tbaa !23
  %i.sq = zext i8 %i.sp to i64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.sq
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !23
  %.not318 = icmp eq i8 %i.ss, 1
  %i.st = getelementptr inbounds i8, ptr %storemerge317, i64 -1
  br i1 %.not318, label %bb.ce, label %.preheader661, !llvm.loop !2025

bb.ce:                                            ; preds = %.preheader661
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !1878
  %i.sw = ptrtoint ptr %storemerge317 to i64
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = sub i64 %i.sw, %i.sx
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.sy)
  br label %.critedge

bb.cf:                                            ; preds = %bb.cd
  %i.sz = tail call noundef i64 @_ZNK5boost16cpp_regex_traitsIcE3toiERPKcS3_i(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.sn, i32 noundef 10) ; 2 uses
  %i.ta = load ptr, ptr %i.a, align 8, !tbaa !1879 ; 22 uses
  %i.tb = ptrtoaddr ptr %i.ta to i64              ; 2 uses
  %i.tc = load ptr, ptr %i.d, align 8, !tbaa !1880 ; 14 uses
  %i.td = ptrtoaddr ptr %i.tc to i64              ; 2 uses
  %i.te = icmp eq ptr %i.ta, %i.tc
  br i1 %i.te, label %.preheader662, label %bb.ci

.preheader662:                                    ; preds = %bb.cf
  %i.tf = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !542
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  br label %bb.cg

bb.cg:                                            ; preds = %.preheader662, %bb.cg
  %.pn316 = phi ptr [ %storemerge314, %bb.cg ], [ %i.ta, %.preheader662 ]
  %storemerge314 = getelementptr inbounds i8, ptr %.pn316, i64 -1 ; 4 uses
  store ptr %storemerge314, ptr %i.a, align 8, !tbaa !1879
  %i.ti = load i8, ptr %storemerge314, align 1, !tbaa !23
  %i.tj = zext i8 %i.ti to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !23
  %.not315 = icmp eq i8 %i.tl, 1
  br i1 %.not315, label %bb.ch, label %bb.cg, !llvm.loop !2026

bb.ch:                                            ; preds = %bb.cg
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !1878
  %i.to = ptrtoint ptr %storemerge314 to i64
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = sub i64 %i.to, %i.tp
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.tq)
  br label %.critedge

bb.ci:                                            ; preds = %bb.cf
  %i.tr = load i8, ptr %i.ta, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.tr, label %bb.eb [
    i8 82, label %bb.cj
    i8 39, label %bb.cx
    i8 60, label %bb.cx
    i8 68, label %.preheader677
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ta, i64 1 ; 3 uses
  store ptr %i.ts, ptr %i.a, align 8, !tbaa !1879
  %i.tt = icmp eq ptr %i.ts, %i.tc
  br i1 %i.tt, label %.preheader670, label %bb.cm

.preheader670:                                    ; preds = %bb.cj
  %i.tu = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !542
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 32
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.preheader670
  %storemerge312 = phi ptr [ %i.ub, %bb.ck ], [ %i.ta, %.preheader670 ] ; 4 uses
  store ptr %storemerge312, ptr %i.a, align 8, !tbaa !1879
  %i.tx = load i8, ptr %storemerge312, align 1, !tbaa !23
  %i.ty = zext i8 %i.tx to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !23
  %.not313 = icmp eq i8 %i.ua, 1
  %i.ub = getelementptr inbounds i8, ptr %storemerge312, i64 -1
  br i1 %.not313, label %bb.cl, label %bb.ck, !llvm.loop !2027

bb.cl:                                            ; preds = %bb.ck
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !1878
  %i.ue = ptrtoint ptr %storemerge312 to i64
  %i.uf = ptrtoint ptr %i.ud to i64
  %i.ug = sub i64 %i.ue, %i.uf
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.ug)
  br label %.critedge

bb.cm:                                            ; preds = %bb.cj
  %i.uh = load i8, ptr %i.ts, align 1, !tbaa !23
  %i.ui = icmp eq i8 %i.uh, 38
  br i1 %i.ui, label %bb.cn, label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %.ptr624 = getelementptr inbounds nuw i8, ptr %i.ta, i64 2 ; 6 uses
  store ptr %.ptr624, ptr %i.a, align 8, !tbaa !1879
  %.not300708 = icmp eq ptr %.ptr624, %i.tc
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !1904
  %.pre798 = load ptr, ptr %.pre, align 8, !tbaa !542 ; 2 uses
  br i1 %.not300708, label %.critedge12.preheader, label %.lr.ph711

.lr.ph711:                                        ; preds = %bb.cn
  %i.uj = getelementptr inbounds nuw i8, ptr %.pre798, i64 32
  %i.uk = sub i64 %i.td, %i.tb
  br label %bb.co

.critedge12.preheader:                            ; preds = %bb.cp, %bb.cn
  %storemerge299.ptr.lcssa = phi ptr [ %.ptr624, %bb.cn ], [ %storemerge299.ptr, %bb.cp ]
  %i.ul = getelementptr inbounds nuw i8, ptr %.pre798, i64 32
  br label %.critedge12

bb.co:                                            ; preds = %.lr.ph711, %bb.cp
  %indvar984 = phi i64 [ 0, %.lr.ph711 ], [ %indvar.next985, %bb.cp ] ; 5 uses
  %storemerge299.ptr710 = phi ptr [ %.ptr624, %.lr.ph711 ], [ %storemerge299.ptr, %bb.cp ]
  %storemerge299.idx709 = phi i64 [ 2, %.lr.ph711 ], [ %storemerge299.add, %bb.cp ] ; 2 uses
  %i.um = load i8, ptr %storemerge299.ptr710, align 1, !tbaa !23
  %i.un = zext i8 %i.um to i64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.un
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !23
  %.not301 = icmp eq i8 %i.up, 2
  br i1 %.not301, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %storemerge299.add = add nuw i64 %storemerge299.idx709, 1 ; 3 uses
  %storemerge299.ptr = getelementptr inbounds nuw i8, ptr %i.ta, i64 %storemerge299.add ; 3 uses
  store ptr %storemerge299.ptr, ptr %i.a, align 8, !tbaa !1879
  %exitcond792 = icmp eq i64 %storemerge299.add, %i.uk
  %indvar.next985 = add i64 %indvar984, 1
  br i1 %exitcond792, label %.critedge12.preheader, label %bb.co, !llvm.loop !2028

.critedge12:                                      ; preds = %.critedge12.preheader, %.critedge12
  %.pn311 = phi ptr [ %storemerge302, %.critedge12 ], [ %storemerge299.ptr.lcssa, %.critedge12.preheader ]
  %storemerge302 = getelementptr inbounds i8, ptr %.pn311, i64 -1 ; 4 uses
  store ptr %storemerge302, ptr %i.a, align 8, !tbaa !1879
  %i.uq = load i8, ptr %storemerge302, align 1, !tbaa !23
  %i.ur = zext i8 %i.uq to i64
  %i.us = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !23
  %.not303 = icmp eq i8 %i.ut, 1
  br i1 %.not303, label %bb.cr, label %.critedge12, !llvm.loop !2029

bb.cq:                                            ; preds = %bb.co
  %.not9.i = icmp eq i64 %storemerge299.idx709, 2
  br i1 %.not9.i, label %.thread611, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.cq
  %xtraiter987 = and i64 %indvar984, 1
  %i.uu = icmp eq i64 %indvar984, 1
  br i1 %i.uu, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter991 = and i64 %indvar984, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.vl, %.lr.ph.i ] ; 3 uses
  %.0810.i = phi ptr [ %.ptr624, %.lr.ph.i.preheader.new ], [ %i.vm, %.lr.ph.i ] ; 3 uses
  %niter992 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter992.next.1, %.lr.ph.i ]
  %i.uv = load i8, ptr %.0810.i, align 1, !tbaa !23
  %i.uw = sext i8 %i.uv to i64
  %i.ux = shl i64 %.011.i, 6
  %i.uy = lshr i64 %.011.i, 2
  %i.uz = add i64 %i.ux, 2654435769
  %i.va = add i64 %i.uz, %i.uy
  %i.vb = add i64 %i.va, %i.uw
  %i.vc = xor i64 %i.vb, %.011.i                  ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.0810.i, i64 1
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !23
  %i.vf = sext i8 %i.ve to i64
  %i.vg = shl i64 %i.vc, 6
  %i.vh = lshr i64 %i.vc, 2
  %i.vi = add i64 %i.vg, 2654435769
  %i.vj = add i64 %i.vi, %i.vh
  %i.vk = add i64 %i.vj, %i.vf
  %i.vl = xor i64 %i.vk, %i.vc                    ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.0810.i, i64 2 ; 2 uses
  %niter992.next.1 = add nuw i64 %niter992, 2     ; 2 uses
  %niter992.ncmp.1 = icmp eq i64 %niter992.next.1, %unroll_iter991
  br i1 %niter992.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !1981

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod988.not = icmp eq i64 %xtraiter987, 0
  br i1 %lcmp.mod988.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.vl, %._crit_edge.loopexit.i.unr-lcssa ] ; 3 uses
  %.0810.i.epil.init = phi ptr [ %.ptr624, %.lr.ph.i.preheader ], [ %i.vm, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod990 = trunc i64 %indvar984 to i1
  tail call void @llvm.assume(i1 %lcmp.mod990)
  %i.vn = load i8, ptr %.0810.i.epil.init, align 1, !tbaa !23
  %i.vo = sext i8 %i.vn to i64
  %i.vp = shl i64 %.011.i.epil.init, 6
  %i.vq = lshr i64 %.011.i.epil.init, 2
  %i.vr = add i64 %i.vp, 2654435769
  %i.vs = add i64 %i.vr, %i.vq
  %i.vt = add i64 %i.vs, %i.vo
  %i.vu = xor i64 %i.vt, %.011.i.epil.init
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa973 = phi i64 [ %i.vl, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.vu, %.lr.ph.i.epil.preheader ]
  %i.vv = urem i64 %.lcssa973, 2147483647
  %i.vw = shl nuw nsw i64 %i.vv, 32
  %i.vx = or i64 %i.vw, 4611686018427387904
  br label %.thread611

.thread611:                                       ; preds = %._crit_edge.loopexit.i, %bb.cq
  %.0.lcssa.i = phi i64 [ 4611686018427387904, %bb.cq ], [ %i.vx, %._crit_edge.loopexit.i ]
  %sext = sub nsw i64 0, %.0.lcssa.i
  %i.vy = ashr i64 %sext, 32
  br label %bb.ct

bb.cr:                                            ; preds = %.critedge12
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !1878
  %i.wb = ptrtoint ptr %storemerge302 to i64
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = sub i64 %i.wb, %i.wc
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.wd)
  br label %.critedge

bb.cs:                                            ; preds = %bb.cm
  %i.we = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.wf = tail call noundef i64 @_ZNK5boost16cpp_regex_traitsIcE3toiERPKcS3_i(ptr noundef nonnull align 8 dereferenceable(16) %i.we, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.tc, i32 noundef 10)
  %i.wg = sub nsw i64 0, %i.wf
  br label %bb.ct

bb.ct:                                            ; preds = %.thread611, %bb.cs
  %.2174 = phi i64 [ %i.vy, %.thread611 ], [ %i.wg, %bb.cs ] ; 2 uses
  %i.wh = tail call noundef ptr @_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 27, i64 noundef 24)
  %i.wi = icmp slt i64 %.2174, 0
  %i.wj = trunc i64 %.2174 to i32
  %i.wk = add i32 %i.wj, -1
  %i.wl = select i1 %i.wi, i32 %i.wk, i32 0
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  store i32 %i.wl, ptr %i.wm, align 8, !tbaa !1892
  %i.wn = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.wo = load ptr, ptr %i.a, align 8, !tbaa !1879 ; 4 uses
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !23
  %i.wq = load ptr, ptr %i.wn, align 8, !tbaa !542
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 32 ; 3 uses
  %i.ws = zext i8 %i.wp to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !23
  %.not305 = icmp eq i8 %i.wu, 2
  br i1 %.not305, label %bb.cv, label %.preheader672

.preheader672:                                    ; preds = %bb.ct, %.preheader672
  %.pn310714 = phi ptr [ %storemerge308, %.preheader672 ], [ %i.wo, %bb.ct ]
  %storemerge308 = getelementptr inbounds i8, ptr %.pn310714, i64 -1 ; 4 uses
  store ptr %storemerge308, ptr %i.a, align 8, !tbaa !1879
  %i.wv = load i8, ptr %storemerge308, align 1, !tbaa !23
  %i.ww = zext i8 %i.wv to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !23
  %.not309 = icmp eq i8 %i.wy, 1
  br i1 %.not309, label %bb.cu, label %.preheader672, !llvm.loop !2030

bb.cu:                                            ; preds = %.preheader672
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !1878
  %i.xb = ptrtoint ptr %storemerge308 to i64
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = sub i64 %i.xb, %i.xc
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.xd)
  br label %.critedge

bb.cv:                                            ; preds = %bb.ct
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wo, i64 1 ; 2 uses
  store ptr %i.xe, ptr %i.a, align 8, !tbaa !1879
  %i.xf = load ptr, ptr %i.d, align 8, !tbaa !1880
  %i.xg = icmp eq ptr %i.xe, %i.xf
  br i1 %i.xg, label %.preheader671, label %.thread618

.preheader671:                                    ; preds = %bb.cv, %.preheader671
  %storemerge306 = phi ptr [ %i.xl, %.preheader671 ], [ %i.wo, %bb.cv ] ; 4 uses
  store ptr %storemerge306, ptr %i.a, align 8, !tbaa !1879
  %i.xh = load i8, ptr %storemerge306, align 1, !tbaa !23
  %i.xi = zext i8 %i.xh to i64
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !23
  %.not307 = icmp eq i8 %i.xk, 1
  %i.xl = getelementptr inbounds i8, ptr %storemerge306, i64 -1
  br i1 %.not307, label %bb.cw, label %.preheader671, !llvm.loop !2031

bb.cw:                                            ; preds = %.preheader671
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !1878
  %i.xo = ptrtoint ptr %storemerge306 to i64
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = sub i64 %i.xo, %i.xp
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.xq)
  br label %.critedge

bb.cx:                                            ; preds = %bb.ci, %bb.ci
  %.ptr623 = getelementptr inbounds nuw i8, ptr %i.ta, i64 1 ; 6 uses
  store ptr %.ptr623, ptr %i.a, align 8, !tbaa !1879
  %.not280700 = icmp eq ptr %.ptr623, %i.tc
  br i1 %.not280700, label %.critedge14.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.cx
  %i.xr = sub i64 %i.td, %i.tb
  br label %.lr.ph

.critedge14.preheader:                            ; preds = %bb.cy, %bb.cx
  %storemerge279.ptr.lcssa = phi ptr [ %.ptr623, %bb.cx ], [ %storemerge279.ptr, %bb.cy ]
  %i.xs = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !542
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  br label %.critedge14

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cy
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.cy ] ; 5 uses
  %storemerge279.ptr702 = phi ptr [ %.ptr623, %.lr.ph.preheader ], [ %storemerge279.ptr, %bb.cy ]
  %storemerge279.idx701 = phi i64 [ 1, %.lr.ph.preheader ], [ %storemerge279.add, %bb.cy ] ; 2 uses
  %i.xv = load i8, ptr %storemerge279.ptr702, align 1, !tbaa !23
  switch i8 %i.xv, label %bb.cy [
    i8 62, label %bb.da
    i8 39, label %bb.da
  ]

bb.cy:                                            ; preds = %.lr.ph
  %storemerge279.add = add nuw i64 %storemerge279.idx701, 1 ; 3 uses
  %storemerge279.ptr = getelementptr inbounds nuw i8, ptr %i.ta, i64 %storemerge279.add ; 3 uses
  store ptr %storemerge279.ptr, ptr %i.a, align 8, !tbaa !1879
  %exitcond = icmp eq i64 %storemerge279.add, %i.xr
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond, label %.critedge14.preheader, label %.lr.ph, !llvm.loop !2032

.critedge14:                                      ; preds = %.critedge14.preheader, %.critedge14
  %.pn298 = phi ptr [ %storemerge296, %.critedge14 ], [ %storemerge279.ptr.lcssa, %.critedge14.preheader ]
  %storemerge296 = getelementptr inbounds i8, ptr %.pn298, i64 -1 ; 4 uses
  store ptr %storemerge296, ptr %i.a, align 8, !tbaa !1879
  %i.xw = load i8, ptr %storemerge296, align 1, !tbaa !23
  %i.xx = zext i8 %i.xw to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.xx
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !23
  %.not297 = icmp eq i8 %i.xz, 1
  br i1 %.not297, label %bb.cz, label %.critedge14, !llvm.loop !2033

bb.cz:                                            ; preds = %.critedge14
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !1878
  %i.yc = ptrtoint ptr %storemerge296 to i64
  %i.yd = ptrtoint ptr %i.yb to i64
  %i.ye = sub i64 %i.yc, %i.yd
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.ye)
  br label %.critedge

bb.da:                                            ; preds = %.lr.ph, %.lr.ph
  %.not9.i514 = icmp eq i64 %storemerge279.idx701, 1
  br i1 %.not9.i514, label %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit521, label %.lr.ph.i515.preheader

.lr.ph.i515.preheader:                            ; preds = %bb.da
  %xtraiter = and i64 %indvar, 1
  %i.yf = icmp eq i64 %indvar, 1
  br i1 %i.yf, label %.lr.ph.i515.epil.preheader, label %.lr.ph.i515.preheader.new

.lr.ph.i515.preheader.new:                        ; preds = %.lr.ph.i515.preheader
  %unroll_iter = and i64 %indvar, -2
  br label %.lr.ph.i515

.lr.ph.i515:                                      ; preds = %.lr.ph.i515, %.lr.ph.i515.preheader.new
  %.011.i516 = phi i64 [ 0, %.lr.ph.i515.preheader.new ], [ %i.yw, %.lr.ph.i515 ] ; 3 uses
  %.0810.i517 = phi ptr [ %.ptr623, %.lr.ph.i515.preheader.new ], [ %i.yx, %.lr.ph.i515 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i515.preheader.new ], [ %niter.next.1, %.lr.ph.i515 ]
  %i.yg = load i8, ptr %.0810.i517, align 1, !tbaa !23
  %i.yh = sext i8 %i.yg to i64
  %i.yi = shl i64 %.011.i516, 6
  %i.yj = lshr i64 %.011.i516, 2
  %i.yk = add i64 %i.yi, 2654435769
  %i.yl = add i64 %i.yk, %i.yj
  %i.ym = add i64 %i.yl, %i.yh
  %i.yn = xor i64 %i.ym, %.011.i516               ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.0810.i517, i64 1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !23
  %i.yq = sext i8 %i.yp to i64
  %i.yr = shl i64 %i.yn, 6
  %i.ys = lshr i64 %i.yn, 2
  %i.yt = add i64 %i.yr, 2654435769
  %i.yu = add i64 %i.yt, %i.ys
  %i.yv = add i64 %i.yu, %i.yq
  %i.yw = xor i64 %i.yv, %i.yn                    ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.0810.i517, i64 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i519.unr-lcssa, label %.lr.ph.i515, !llvm.loop !1981

._crit_edge.loopexit.i519.unr-lcssa:              ; preds = %.lr.ph.i515
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i519, label %.lr.ph.i515.epil.preheader

.lr.ph.i515.epil.preheader:                       ; preds = %._crit_edge.loopexit.i519.unr-lcssa, %.lr.ph.i515.preheader
  %.011.i516.epil.init = phi i64 [ 0, %.lr.ph.i515.preheader ], [ %i.yw, %._crit_edge.loopexit.i519.unr-lcssa ] ; 3 uses
  %.0810.i517.epil.init = phi ptr [ %.ptr623, %.lr.ph.i515.preheader ], [ %i.yx, %._crit_edge.loopexit.i519.unr-lcssa ]
  %lcmp.mod983 = trunc i64 %indvar to i1
  tail call void @llvm.assume(i1 %lcmp.mod983)
  %i.yy = load i8, ptr %.0810.i517.epil.init, align 1, !tbaa !23
  %i.yz = sext i8 %i.yy to i64
  %i.za = shl i64 %.011.i516.epil.init, 6
  %i.zb = lshr i64 %.011.i516.epil.init, 2
  %i.zc = add i64 %i.za, 2654435769
  %i.zd = add i64 %i.zc, %i.zb
  %i.ze = add i64 %i.zd, %i.yz
  %i.zf = xor i64 %i.ze, %.011.i516.epil.init
  br label %._crit_edge.loopexit.i519

._crit_edge.loopexit.i519:                        ; preds = %._crit_edge.loopexit.i519.unr-lcssa, %.lr.ph.i515.epil.preheader
  %.lcssa977 = phi i64 [ %i.yw, %._crit_edge.loopexit.i519.unr-lcssa ], [ %i.zf, %.lr.ph.i515.epil.preheader ]
  %i.zg = urem i64 %.lcssa977, 2147483647
  %i.zh = trunc nuw nsw i64 %i.zg to i32
  %i.zi = or i32 %i.zh, 1073741824
  br label %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit521

_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit521: ; preds = %bb.da, %._crit_edge.loopexit.i519
  %.0.lcssa.i520 = phi i32 [ 1073741824, %bb.da ], [ %i.zi, %._crit_edge.loopexit.i519 ]
  %i.zj = tail call noundef ptr @_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 27, i64 noundef 24)
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  store i32 %.0.lcssa.i520, ptr %i.zk, align 8, !tbaa !1892
  %i.zl = load ptr, ptr %i.a, align 8, !tbaa !1879 ; 4 uses
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !23
  switch i8 %i.zm, label %bb.dc [
    i8 62, label %bb.db
    i8 39, label %bb.db
  ]

bb.db:                                            ; preds = %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit521, %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit521
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 1 ; 6 uses
  store ptr %i.zn, ptr %i.a, align 8, !tbaa !1879
  %i.zo = load ptr, ptr %i.d, align 8, !tbaa !1880 ; 2 uses
  %i.zp = icmp eq ptr %i.zn, %i.zo
  br i1 %i.zp, label %bb.dc, label %bb.dj

bb.dc:                                            ; preds = %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit521, %bb.db
  %.promoted705 = phi ptr [ %i.zl, %_ZN5boost13re_detail_50028hash_value_from_capture_nameIPKcEEiT_S4_.exit521 ], [ %i.zn, %bb.db ]
  %i.zq = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !542
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 32
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %bb.dc
  %.pn295706 = phi ptr [ %storemerge291, %bb.dd ], [ %.promoted705, %bb.dc ]
  %storemerge291 = getelementptr inbounds i8, ptr %.pn295706, i64 -1 ; 4 uses
  store ptr %storemerge291, ptr %i.a, align 8, !tbaa !1879
  %i.zt = load i8, ptr %storemerge291, align 1, !tbaa !23
  %i.zu = zext i8 %i.zt to i64
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zu
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !23
  %.not292 = icmp eq i8 %i.zw, 1
  br i1 %.not292, label %bb.de, label %bb.dd, !llvm.loop !2034

bb.de:                                            ; preds = %bb.dd
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !1878
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #42
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.241, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.zz = ptrtoint ptr %storemerge291 to i64
  %i.aaa = ptrtoint ptr %i.zy to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  invoke void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.aab, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.dg unwind label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.aac = load ptr, ptr %12, align 8, !tbaa !20  ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aae = icmp eq ptr %i.aac, %i.aad
  br i1 %i.aae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522: ; preds = %bb.dg
  %i.aaf = load i64, ptr %i.aad, align 8, !tbaa !23
  %i.aag = add i64 %i.aaf, 1
  call void @_ZdlPvm(ptr noundef %i.aac, i64 noundef %i.aag) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %.critedge

bb.dh:                                            ; preds = %bb.de
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527

bb.di:                                            ; preds = %bb.df
  %i.aai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaj = load ptr, ptr %12, align 8, !tbaa !20  ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aal = icmp eq ptr %i.aaj, %i.aak
  br i1 %i.aal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525: ; preds = %bb.di
  %i.aam = load i64, ptr %i.aak, align 8, !tbaa !23
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aaj, i64 noundef %i.aan) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525, %bb.dh
  %.pn293 = phi { ptr, i32 } [ %i.aah, %bb.dh ], [ %i.aai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525 ], [ %i.aai, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %common.resume

bb.dj:                                            ; preds = %bb.db
  %i.aao = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.aap = load i8, ptr %i.zn, align 1, !tbaa !23
  %i.aaq = load ptr, ptr %i.aao, align 8, !tbaa !542
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 32 ; 3 uses
  %i.aas = zext i8 %i.aap to i64
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aas
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !23
  %.not285 = icmp eq i8 %i.aau, 2
  br i1 %.not285, label %bb.dl, label %.preheader674

.preheader674:                                    ; preds = %bb.dj, %.preheader674
  %.pn290704 = phi ptr [ %storemerge288, %.preheader674 ], [ %i.zn, %bb.dj ]
  %storemerge288 = getelementptr inbounds i8, ptr %.pn290704, i64 -1 ; 4 uses
  store ptr %storemerge288, ptr %i.a, align 8, !tbaa !1879
  %i.aav = load i8, ptr %storemerge288, align 1, !tbaa !23
  %i.aaw = zext i8 %i.aav to i64
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !23
  %.not289 = icmp eq i8 %i.aay, 1
  br i1 %.not289, label %bb.dk, label %.preheader674, !llvm.loop !2035

bb.dk:                                            ; preds = %.preheader674
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !1878
  %i.abb = ptrtoint ptr %storemerge288 to i64
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = sub i64 %i.abb, %i.abc
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.abd)
  br label %.critedge

bb.dl:                                            ; preds = %bb.dj
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zl, i64 2 ; 2 uses
  store ptr %i.abe, ptr %i.a, align 8, !tbaa !1879
  %i.abf = icmp eq ptr %i.abe, %i.zo
  br i1 %i.abf, label %.preheader673, label %.thread618

.preheader673:                                    ; preds = %bb.dl, %.preheader673
  %storemerge286 = phi ptr [ %i.abk, %.preheader673 ], [ %i.zn, %bb.dl ] ; 4 uses
  store ptr %storemerge286, ptr %i.a, align 8, !tbaa !1879
  %i.abg = load i8, ptr %storemerge286, align 1, !tbaa !23
  %i.abh = zext i8 %i.abg to i64
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.abh
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !23
  %.not287 = icmp eq i8 %i.abj, 1
  %i.abk = getelementptr inbounds i8, ptr %storemerge286, i64 -1
  br i1 %.not287, label %bb.dm, label %.preheader673, !llvm.loop !2036

bb.dm:                                            ; preds = %.preheader673
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !1878
  %i.abn = ptrtoint ptr %storemerge286 to i64
  %i.abo = ptrtoint ptr %i.abm to i64
  %i.abp = sub i64 %i.abn, %i.abo
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.abp)
  br label %.critedge

.preheader677:                                    ; preds = %bb.ci
  %i.abq = getelementptr inbounds nuw i8, ptr %i.ta, i64 1 ; 5 uses
  store ptr %i.abq, ptr %i.a, align 8, !tbaa !1879
  %.not268.1 = icmp eq ptr %i.abq, %i.tc
  br i1 %.not268.1, label %.critedge16, label %bb.dn

bb.dn:                                            ; preds = %.preheader677
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !23
  %i.abs = icmp eq i8 %i.abr, 69
  br i1 %i.abs, label %bb.do, label %.critedge16

bb.do:                                            ; preds = %bb.dn
  %i.abt = getelementptr inbounds nuw i8, ptr %i.ta, i64 2 ; 5 uses
  store ptr %i.abt, ptr %i.a, align 8, !tbaa !1879
  %.not268.2 = icmp eq ptr %i.abt, %i.tc
  br i1 %.not268.2, label %.critedge16, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !23
  %i.abv = icmp eq i8 %i.abu, 70
end_hunk_2
begin_hunk_3_@_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE20parse_perl_extensionEv:bb.a
  %.2131 = phi i32 [ %i.aiw, %bb.ey ], [ %i.aiw, %bb.ex ], [ 0, %bb.ew ] ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i32 %.2131, ptr %i.ajg, align 8, !tbaa !1892
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajf, i64 1 ; 4 uses
  store ptr %i.ajh, ptr %i.a, align 8, !tbaa !1879
  %i.aji = load ptr, ptr %i.d, align 8, !tbaa !1880 ; 2 uses
  %i.ajj = icmp eq ptr %i.ajh, %i.aji
  br i1 %i.ajj, label %.preheader659, label %.lr.ph725

.preheader659:                                    ; preds = %bb.ez
  %i.ajk = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !542
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 32
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fa, %.preheader659
  %storemerge325 = phi ptr [ %i.ajr, %bb.fa ], [ %i.ajf, %.preheader659 ] ; 4 uses
  store ptr %storemerge325, ptr %i.a, align 8, !tbaa !1879
  %i.ajn = load i8, ptr %storemerge325, align 1, !tbaa !23
  %i.ajo = zext i8 %i.ajn to i64
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajo
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !23
  %.not326 = icmp eq i8 %i.ajq, 1
  %i.ajr = getelementptr inbounds i8, ptr %storemerge325, i64 -1
  br i1 %.not326, label %bb.fb, label %bb.fa, !llvm.loop !2052

bb.fb:                                            ; preds = %bb.fa
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !1878
  %i.aju = ptrtoint ptr %storemerge325 to i64
  %i.ajv = ptrtoint ptr %i.ajt to i64
  %i.ajw = sub i64 %i.aju, %i.ajv
  call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.ajw)
  br label %.critedge

.critedge18.preheader:                            ; preds = %bb.fc
  %i.ajx = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !542
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 32
  br label %.critedge18

.lr.ph725:                                        ; preds = %bb.ez, %bb.fc
  %i.aka = phi ptr [ %i.akd, %bb.fc ], [ %i.ajh, %bb.ez ] ; 3 uses
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !23
  %i.akc = sext i8 %i.akb to i32
  %.not321 = icmp eq i32 %.1178, %i.akc
  br i1 %.not321, label %bb.fe, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph725
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aka, i64 1 ; 4 uses
  store ptr %i.akd, ptr %i.a, align 8, !tbaa !1879
  %.not320 = icmp eq ptr %i.akd, %i.aji
  br i1 %.not320, label %.critedge18.preheader, label %.lr.ph725, !llvm.loop !2053

.critedge18:                                      ; preds = %.critedge18.preheader, %.critedge18
  %.pn324 = phi ptr [ %storemerge322, %.critedge18 ], [ %i.akd, %.critedge18.preheader ]
  %storemerge322 = getelementptr inbounds i8, ptr %.pn324, i64 -1 ; 4 uses
  store ptr %storemerge322, ptr %i.a, align 8, !tbaa !1879
  %i.ake = load i8, ptr %storemerge322, align 1, !tbaa !23
  %i.akf = zext i8 %i.ake to i64
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.akf
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !23
  %.not323 = icmp eq i8 %i.akh, 1
  br i1 %.not323, label %bb.fd, label %.critedge18, !llvm.loop !2054

bb.fd:                                            ; preds = %.critedge18
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !1878
  %i.akk = ptrtoint ptr %storemerge322 to i64
  %i.akl = ptrtoint ptr %i.akj to i64
  %i.akm = sub i64 %i.akk, %i.akl
  call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.akm)
  br label %.critedge

bb.fe:                                            ; preds = %.lr.ph725
  %i.akn = load ptr, ptr %0, align 8, !tbaa !1866
  call void @_ZN5boost13re_detail_50020named_subexpressions8set_nameIcEEvPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %i.akn, ptr noundef nonnull %i.ajh, ptr noundef nonnull %i.aka, i32 noundef %.2131)
  %i.ako = load ptr, ptr %i.a, align 8, !tbaa !1879
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 1
  store ptr %i.akp, ptr %i.a, align 8, !tbaa !1879
  br label %.thread618

bb.ff:                                            ; preds = %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit
  switch i8 %i.dr, label %bb.ft [
    i8 82, label %bb.fg
    i8 38, label %bb.fi
    i8 80, label %bb.fm
  ]

bb.fg:                                            ; preds = %bb.ff
  %i.akq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 3 uses
  store ptr %i.akq, ptr %i.a, align 8, !tbaa !1879
  %i.akr = load i8, ptr %i.akq, align 1, !tbaa !23
  %i.aks = zext i8 %i.akr to i64
  %i.akt = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.aks
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !23
  %.not370 = icmp eq i8 %i.aku, 2
  br i1 %.not370, label %.thread614, label %.preheader655

.preheader655:                                    ; preds = %bb.fg, %.preheader655
  %.pn413746 = phi ptr [ %storemerge411, %.preheader655 ], [ %i.akq, %bb.fg ]
  %storemerge411 = getelementptr inbounds i8, ptr %.pn413746, i64 -1 ; 4 uses
  store ptr %storemerge411, ptr %i.a, align 8, !tbaa !1879
  %i.akv = load i8, ptr %storemerge411, align 1, !tbaa !23
  %i.akw = zext i8 %i.akv to i64
  %i.akx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.akw
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !23
  %.not412 = icmp eq i8 %i.aky, 1
  br i1 %.not412, label %bb.fh, label %.preheader655, !llvm.loop !2055

bb.fh:                                            ; preds = %.preheader655
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !1878
  %i.alb = ptrtoint ptr %storemerge411 to i64
  %i.alc = ptrtoint ptr %i.ala to i64
  %i.ald = sub i64 %i.alb, %i.alc
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.ald)
  br label %.critedge

bb.fi:                                            ; preds = %bb.ff
  %.ptr626 = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 6 uses
  %i.ale = load ptr, ptr %i.d, align 8, !tbaa !1880 ; 2 uses
  store ptr %.ptr626, ptr %i.a, align 8, !tbaa !1879
  %.not364740 = icmp eq ptr %.ptr626, %i.ale
  br i1 %.not364740, label %.critedge20.preheader, label %.lr.ph743.preheader

.lr.ph743.preheader:                              ; preds = %bb.fi
  %i.alf = ptrtoaddr ptr %i.ale to i64
  %i.alg = sub i64 %i.alf, %i.dq
  br label %.lr.ph743

.lr.ph743:                                        ; preds = %.lr.ph743.preheader, %bb.fj
  %indvar1002 = phi i64 [ 0, %.lr.ph743.preheader ], [ %indvar.next1003, %bb.fj ] ; 5 uses
  %storemerge363.ptr742 = phi ptr [ %.ptr626, %.lr.ph743.preheader ], [ %storemerge363.ptr, %bb.fj ]
  %storemerge363.idx741 = phi i64 [ 1, %.lr.ph743.preheader ], [ %storemerge363.add, %bb.fj ] ; 2 uses
  %i.alh = load i8, ptr %storemerge363.ptr742, align 1, !tbaa !23
  %i.ali = zext i8 %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ali
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !23
  %.not365 = icmp eq i8 %i.alk, 2
  br i1 %.not365, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph743
  %storemerge363.add = add nuw i64 %storemerge363.idx741, 1 ; 3 uses
  %storemerge363.ptr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %storemerge363.add ; 3 uses
  store ptr %storemerge363.ptr, ptr %i.a, align 8, !tbaa !1879
  %exitcond794 = icmp eq i64 %storemerge363.add, %i.alg
  %indvar.next1003 = add i64 %indvar1002, 1
  br i1 %exitcond794, label %.critedge20.preheader, label %.lr.ph743, !llvm.loop !2056

.critedge20.preheader:                            ; preds = %bb.fj, %bb.fi
  %.pn369.ph = phi ptr [ %.ptr626, %bb.fi ], [ %storemerge363.ptr, %bb.fj ]
  br label %.critedge20

.critedge20:                                      ; preds = %.critedge20.preheader, %.critedge20
  %.pn369 = phi ptr [ %storemerge366, %.critedge20 ], [ %.pn369.ph, %.critedge20.preheader ]
  %storemerge366 = getelementptr inbounds i8, ptr %.pn369, i64 -1 ; 4 uses
  store ptr %storemerge366, ptr %i.a, align 8, !tbaa !1879
  %i.all = load i8, ptr %storemerge366, align 1, !tbaa !23
  %i.alm = zext i8 %i.all to i64
  %i.aln = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.alm
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !23
  %.not367 = icmp eq i8 %i.alo, 1
  br i1 %.not367, label %bb.fl, label %.critedge20, !llvm.loop !2057

bb.fk:                                            ; preds = %.lr.ph743
  %.not9.i534 = icmp eq i64 %storemerge363.idx741, 1
  br i1 %.not9.i534, label %.thread614, label %.lr.ph.i535.preheader

.lr.ph.i535.preheader:                            ; preds = %bb.fk
  %xtraiter1005 = and i64 %indvar1002, 1
  %i.alp = icmp eq i64 %indvar1002, 1
  br i1 %i.alp, label %.lr.ph.i535.epil.preheader, label %.lr.ph.i535.preheader.new

.lr.ph.i535.preheader.new:                        ; preds = %.lr.ph.i535.preheader
  %unroll_iter1009 = and i64 %indvar1002, -2
  br label %.lr.ph.i535

.lr.ph.i535:                                      ; preds = %.lr.ph.i535, %.lr.ph.i535.preheader.new
  %.011.i536 = phi i64 [ 0, %.lr.ph.i535.preheader.new ], [ %i.amg, %.lr.ph.i535 ] ; 3 uses
  %.0810.i537 = phi ptr [ %.ptr626, %.lr.ph.i535.preheader.new ], [ %i.amh, %.lr.ph.i535 ] ; 3 uses
  %niter1010 = phi i64 [ 0, %.lr.ph.i535.preheader.new ], [ %niter1010.next.1, %.lr.ph.i535 ]
  %i.alq = load i8, ptr %.0810.i537, align 1, !tbaa !23
  %i.alr = sext i8 %i.alq to i64
  %i.als = shl i64 %.011.i536, 6
  %i.alt = lshr i64 %.011.i536, 2
  %i.alu = add i64 %i.als, 2654435769
  %i.alv = add i64 %i.alu, %i.alt
  %i.alw = add i64 %i.alv, %i.alr
  %i.alx = xor i64 %i.alw, %.011.i536             ; 3 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.0810.i537, i64 1
  %i.alz = load i8, ptr %i.aly, align 1, !tbaa !23
  %i.ama = sext i8 %i.alz to i64
  %i.amb = shl i64 %i.alx, 6
  %i.amc = lshr i64 %i.alx, 2
  %i.amd = add i64 %i.amb, 2654435769
  %i.ame = add i64 %i.amd, %i.amc
  %i.amf = add i64 %i.ame, %i.ama
  %i.amg = xor i64 %i.amf, %i.alx                 ; 3 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.0810.i537, i64 2 ; 2 uses
  %niter1010.next.1 = add nuw i64 %niter1010, 2   ; 2 uses
  %niter1010.ncmp.1 = icmp eq i64 %niter1010.next.1, %unroll_iter1009
  br i1 %niter1010.ncmp.1, label %._crit_edge.loopexit.i539.unr-lcssa, label %.lr.ph.i535, !llvm.loop !1981

._crit_edge.loopexit.i539.unr-lcssa:              ; preds = %.lr.ph.i535
  %lcmp.mod1006.not = icmp eq i64 %xtraiter1005, 0
  br i1 %lcmp.mod1006.not, label %._crit_edge.loopexit.i539, label %.lr.ph.i535.epil.preheader

.lr.ph.i535.epil.preheader:                       ; preds = %._crit_edge.loopexit.i539.unr-lcssa, %.lr.ph.i535.preheader
  %.011.i536.epil.init = phi i64 [ 0, %.lr.ph.i535.preheader ], [ %i.amg, %._crit_edge.loopexit.i539.unr-lcssa ] ; 3 uses
  %.0810.i537.epil.init = phi ptr [ %.ptr626, %.lr.ph.i535.preheader ], [ %i.amh, %._crit_edge.loopexit.i539.unr-lcssa ]
  %lcmp.mod1008 = trunc i64 %indvar1002 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1008)
  %i.ami = load i8, ptr %.0810.i537.epil.init, align 1, !tbaa !23
  %i.amj = sext i8 %i.ami to i64
  %i.amk = shl i64 %.011.i536.epil.init, 6
  %i.aml = lshr i64 %.011.i536.epil.init, 2
  %i.amm = add i64 %i.amk, 2654435769
  %i.amn = add i64 %i.amm, %i.aml
  %i.amo = add i64 %i.amn, %i.amj
  %i.amp = xor i64 %i.amo, %.011.i536.epil.init
  br label %._crit_edge.loopexit.i539

._crit_edge.loopexit.i539:                        ; preds = %._crit_edge.loopexit.i539.unr-lcssa, %.lr.ph.i535.epil.preheader
  %.lcssa = phi i64 [ %i.amg, %._crit_edge.loopexit.i539.unr-lcssa ], [ %i.amp, %.lr.ph.i535.epil.preheader ]
  %i.amq = urem i64 %.lcssa, 2147483647
  %i.amr = or i64 %i.amq, 1073741824
  br label %.thread614

bb.fl:                                            ; preds = %.critedge20
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !1878
  %i.amu = ptrtoint ptr %storemerge366 to i64
  %i.amv = ptrtoint ptr %i.amt to i64
  %i.amw = sub i64 %i.amu, %i.amv
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.amw)
  br label %.critedge

bb.fm:                                            ; preds = %bb.ff
  %i.amx = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 3 uses
  store ptr %i.amx, ptr %i.a, align 8, !tbaa !1879
  %i.amy = load ptr, ptr %i.d, align 8, !tbaa !1880 ; 3 uses
  %i.amz = ptrtoaddr ptr %i.amy to i64
  %i.ana = icmp eq ptr %i.amx, %i.amy
  br i1 %i.ana, label %.preheader656, label %bb.fo

.preheader656:                                    ; preds = %bb.fm, %.preheader656
  %storemerge361 = phi ptr [ %i.anf, %.preheader656 ], [ %i.dp, %bb.fm ] ; 4 uses
  store ptr %storemerge361, ptr %i.a, align 8, !tbaa !1879
  %i.anb = load i8, ptr %storemerge361, align 1, !tbaa !23
  %i.anc = zext i8 %i.anb to i64
  %i.and = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.anc
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !23
  %.not362 = icmp eq i8 %i.ane, 1
  %i.anf = getelementptr inbounds i8, ptr %storemerge361, i64 -1
  br i1 %.not362, label %bb.fn, label %.preheader656, !llvm.loop !2058

bb.fn:                                            ; preds = %.preheader656
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !1878
  %i.ani = ptrtoint ptr %storemerge361 to i64
  %i.anj = ptrtoint ptr %i.anh to i64
  %i.ank = sub i64 %i.ani, %i.anj
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.ank)
  br label %.critedge

bb.fo:                                            ; preds = %bb.fm
  %i.anl = load i8, ptr %i.amx, align 1, !tbaa !23
  %i.anm = icmp eq i8 %i.anl, 62
  br i1 %i.anm, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %bb.fo
  %.ptr625 = getelementptr inbounds nuw i8, ptr %i.dp, i64 2 ; 6 uses
  store ptr %.ptr625, ptr %i.a, align 8, !tbaa !1879
  %.not355734 = icmp eq ptr %.ptr625, %i.amy
  br i1 %.not355734, label %.critedge22.preheader, label %.lr.ph737.preheader

.lr.ph737.preheader:                              ; preds = %bb.fp
  %i.ann = sub i64 %i.amz, %i.dq
  br label %.lr.ph737

.lr.ph737:                                        ; preds = %.lr.ph737.preheader, %bb.fq
  %indvar993 = phi i64 [ 0, %.lr.ph737.preheader ], [ %indvar.next994, %bb.fq ] ; 5 uses
  %storemerge354.ptr736 = phi ptr [ %.ptr625, %.lr.ph737.preheader ], [ %storemerge354.ptr, %bb.fq ]
  %storemerge354.idx735 = phi i64 [ 2, %.lr.ph737.preheader ], [ %storemerge354.add, %bb.fq ] ; 2 uses
  %i.ano = load i8, ptr %storemerge354.ptr736, align 1, !tbaa !23
  %i.anp = zext i8 %i.ano to i64
  %i.anq = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.anp
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !23
  %.not356 = icmp eq i8 %i.anr, 2
  br i1 %.not356, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %.lr.ph737
  %storemerge354.add = add nuw i64 %storemerge354.idx735, 1 ; 3 uses
  %storemerge354.ptr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %storemerge354.add ; 3 uses
  store ptr %storemerge354.ptr, ptr %i.a, align 8, !tbaa !1879
  %exitcond793 = icmp eq i64 %storemerge354.add, %i.ann
  %indvar.next994 = add i64 %indvar993, 1
  br i1 %exitcond793, label %.critedge22.preheader, label %.lr.ph737, !llvm.loop !2059

.critedge22.preheader:                            ; preds = %bb.fq, %bb.fp
  %.pn360.ph = phi ptr [ %.ptr625, %bb.fp ], [ %storemerge354.ptr, %bb.fq ]
  br label %.critedge22

.critedge22:                                      ; preds = %.critedge22.preheader, %.critedge22
  %.pn360 = phi ptr [ %storemerge357, %.critedge22 ], [ %.pn360.ph, %.critedge22.preheader ]
  %storemerge357 = getelementptr inbounds i8, ptr %.pn360, i64 -1 ; 4 uses
  store ptr %storemerge357, ptr %i.a, align 8, !tbaa !1879
  %i.ans = load i8, ptr %storemerge357, align 1, !tbaa !23
  %i.ant = zext i8 %i.ans to i64
  %i.anu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ant
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !23
  %.not358 = icmp eq i8 %i.anv, 1
  br i1 %.not358, label %bb.fs, label %.critedge22, !llvm.loop !2060

bb.fr:                                            ; preds = %.lr.ph737
  %.not9.i542 = icmp eq i64 %storemerge354.idx735, 2
  br i1 %.not9.i542, label %.thread614, label %.lr.ph.i543.preheader

.lr.ph.i543.preheader:                            ; preds = %bb.fr
  %xtraiter996 = and i64 %indvar993, 1
  %i.anw = icmp eq i64 %indvar993, 1
  br i1 %i.anw, label %.lr.ph.i543.epil.preheader, label %.lr.ph.i543.preheader.new

.lr.ph.i543.preheader.new:                        ; preds = %.lr.ph.i543.preheader
  %unroll_iter1000 = and i64 %indvar993, -2
  br label %.lr.ph.i543

.lr.ph.i543:                                      ; preds = %.lr.ph.i543, %.lr.ph.i543.preheader.new
  %.011.i544 = phi i64 [ 0, %.lr.ph.i543.preheader.new ], [ %i.aon, %.lr.ph.i543 ] ; 3 uses
  %.0810.i545 = phi ptr [ %.ptr625, %.lr.ph.i543.preheader.new ], [ %i.aoo, %.lr.ph.i543 ] ; 3 uses
  %niter1001 = phi i64 [ 0, %.lr.ph.i543.preheader.new ], [ %niter1001.next.1, %.lr.ph.i543 ]
  %i.anx = load i8, ptr %.0810.i545, align 1, !tbaa !23
  %i.any = sext i8 %i.anx to i64
  %i.anz = shl i64 %.011.i544, 6
  %i.aoa = lshr i64 %.011.i544, 2
  %i.aob = add i64 %i.anz, 2654435769
  %i.aoc = add i64 %i.aob, %i.aoa
  %i.aod = add i64 %i.aoc, %i.any
  %i.aoe = xor i64 %i.aod, %.011.i544             ; 3 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %.0810.i545, i64 1
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !23
  %i.aoh = sext i8 %i.aog to i64
  %i.aoi = shl i64 %i.aoe, 6
  %i.aoj = lshr i64 %i.aoe, 2
  %i.aok = add i64 %i.aoi, 2654435769
  %i.aol = add i64 %i.aok, %i.aoj
  %i.aom = add i64 %i.aol, %i.aoh
  %i.aon = xor i64 %i.aom, %i.aoe                 ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %.0810.i545, i64 2 ; 2 uses
  %niter1001.next.1 = add nuw i64 %niter1001, 2   ; 2 uses
  %niter1001.ncmp.1 = icmp eq i64 %niter1001.next.1, %unroll_iter1000
  br i1 %niter1001.ncmp.1, label %._crit_edge.loopexit.i547.unr-lcssa, label %.lr.ph.i543, !llvm.loop !1981

._crit_edge.loopexit.i547.unr-lcssa:              ; preds = %.lr.ph.i543
  %lcmp.mod997.not = icmp eq i64 %xtraiter996, 0
  br i1 %lcmp.mod997.not, label %._crit_edge.loopexit.i547, label %.lr.ph.i543.epil.preheader

.lr.ph.i543.epil.preheader:                       ; preds = %._crit_edge.loopexit.i547.unr-lcssa, %.lr.ph.i543.preheader
  %.011.i544.epil.init = phi i64 [ 0, %.lr.ph.i543.preheader ], [ %i.aon, %._crit_edge.loopexit.i547.unr-lcssa ] ; 3 uses
  %.0810.i545.epil.init = phi ptr [ %.ptr625, %.lr.ph.i543.preheader ], [ %i.aoo, %._crit_edge.loopexit.i547.unr-lcssa ]
  %lcmp.mod999 = trunc i64 %indvar993 to i1
  tail call void @llvm.assume(i1 %lcmp.mod999)
  %i.aop = load i8, ptr %.0810.i545.epil.init, align 1, !tbaa !23
  %i.aoq = sext i8 %i.aop to i64
  %i.aor = shl i64 %.011.i544.epil.init, 6
  %i.aos = lshr i64 %.011.i544.epil.init, 2
  %i.aot = add i64 %i.aor, 2654435769
  %i.aou = add i64 %i.aot, %i.aos
  %i.aov = add i64 %i.aou, %i.aoq
  %i.aow = xor i64 %i.aov, %.011.i544.epil.init
  br label %._crit_edge.loopexit.i547

._crit_edge.loopexit.i547:                        ; preds = %._crit_edge.loopexit.i547.unr-lcssa, %.lr.ph.i543.epil.preheader
  %.lcssa967 = phi i64 [ %i.aon, %._crit_edge.loopexit.i547.unr-lcssa ], [ %i.aow, %.lr.ph.i543.epil.preheader ]
  %i.aox = urem i64 %.lcssa967, 2147483647
  %i.aoy = or i64 %i.aox, 1073741824
  br label %.thread614

bb.fs:                                            ; preds = %.critedge22
  %i.aoz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !1878
  %i.apb = ptrtoint ptr %storemerge357 to i64
  %i.apc = ptrtoint ptr %i.apa to i64
  %i.apd = sub i64 %i.apb, %i.apc
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.apd)
  br label %.critedge

bb.ft:                                            ; preds = %bb.ff, %bb.fo, %bb.bb
  %i.ape = tail call noundef i32 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13parse_optionsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) ; 5 uses
  %i.apf = load ptr, ptr %i.a, align 8, !tbaa !1879 ; 5 uses
  %i.apg = load ptr, ptr %i.d, align 8, !tbaa !1880
  %i.aph = icmp eq ptr %i.apf, %i.apg
  br i1 %i.aph, label %.preheader647, label %bb.fw

.preheader647:                                    ; preds = %bb.ft
  %i.api = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !542
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 32
  br label %bb.fu

bb.fu:                                            ; preds = %.preheader647, %bb.fu
  %.pn353 = phi ptr [ %storemerge351, %bb.fu ], [ %i.apf, %.preheader647 ]
  %storemerge351 = getelementptr inbounds i8, ptr %.pn353, i64 -1 ; 4 uses
  store ptr %storemerge351, ptr %i.a, align 8, !tbaa !1879
  %i.apl = load i8, ptr %storemerge351, align 1, !tbaa !23
  %i.apm = zext i8 %i.apl to i64
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apk, i64 %i.apm
  %i.apo = load i8, ptr %i.apn, align 1, !tbaa !23
  %.not352 = icmp eq i8 %i.apo, 1
  br i1 %.not352, label %bb.fv, label %bb.fu, !llvm.loop !2061

bb.fv:                                            ; preds = %bb.fu
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !1878
  %i.apr = ptrtoint ptr %storemerge351 to i64
  %i.aps = ptrtoint ptr %i.apq to i64
  %i.apt = sub i64 %i.apr, %i.aps
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.apt)
  br label %.critedge

bb.fw:                                            ; preds = %bb.ft
  %i.apu = and i32 %i.ape, 1048576                ; 2 uses
  %i.apv = load ptr, ptr %0, align 8, !tbaa !1866
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 40 ; 3 uses
  %i.apx = load i32, ptr %i.apw, align 8, !tbaa !1867
  %i.apy = and i32 %i.apx, 1048576
  %i.apz = icmp ne i32 %i.apu, %i.apy             ; 2 uses
  %i.aqa = zext i1 %i.apz to i8                   ; 2 uses
  store i8 %i.aqa, ptr %i.dh, align 8, !tbaa !1949
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i32 0, ptr %i.aqb, align 8, !tbaa !1892
  %i.aqc = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.aqd = load i8, ptr %i.apf, align 1, !tbaa !23
  %i.aqe = load ptr, ptr %i.aqc, align 8, !tbaa !542
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 32 ; 2 uses
  %i.aqg = zext i8 %i.aqd to i64
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aqg
  %i.aqi = load i8, ptr %i.aqh, align 1, !tbaa !23 ; 2 uses
  %i.aqj = icmp ne i8 %i.aqi, 2                   ; 3 uses
  br i1 %i.aqj, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  store i32 %i.ape, ptr %i.apw, align 8, !tbaa !1867
  %i.aqk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aql = load i8, ptr %i.aqk, align 8, !tbaa !1877, !range !159, !noundef !160
  %i.aqm = zext nneg i8 %i.aql to i32
  %i.aqn = lshr i32 %i.ape, 20
  %.lobit.i = and i32 %i.aqn, 1                   ; 2 uses
  %.not.i550 = icmp eq i32 %.lobit.i, %i.aqm
  br i1 %.not.i550, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEj.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aqo = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.aqo, ptr %i.aqk, align 8, !tbaa !1877
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEj.exit

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEj.exit: ; preds = %bb.fx, %bb.fy
  %i.aqp = or i8 %i.di, %i.aqa
  br label %bb.gd

bb.fz:                                            ; preds = %bb.fw
  %i.aqq = icmp eq i8 %i.aqi, 36
  br i1 %i.aqq, label %bb.ga, label %.preheader654

bb.ga:                                            ; preds = %bb.fz
  store i32 %i.ape, ptr %i.apw, align 8, !tbaa !1867
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aqs = load i8, ptr %i.aqr, align 8, !tbaa !1877, !range !159, !noundef !160
  %i.aqt = zext nneg i8 %i.aqs to i32
  %i.aqu = lshr i32 %i.ape, 20
  %.lobit.i551 = and i32 %i.aqu, 1                ; 2 uses
  %.not.i552 = icmp eq i32 %.lobit.i551, %i.aqt
  br i1 %.not.i552, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEj.exit553, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aqv = trunc nuw nsw i32 %.lobit.i551 to i8
  store i8 %i.aqv, ptr %i.aqr, align 8, !tbaa !1877
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEj.exit553

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEj.exit553: ; preds = %bb.ga, %bb.gb
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.apf, i64 1
  store ptr %i.aqw, ptr %i.a, align 8, !tbaa !1879
  br label %bb.gd

.preheader654:                                    ; preds = %bb.fz, %.preheader654
  %.pn350748 = phi ptr [ %storemerge348, %.preheader654 ], [ %i.apf, %bb.fz ]
  %storemerge348 = getelementptr inbounds i8, ptr %.pn350748, i64 -1 ; 4 uses
  store ptr %storemerge348, ptr %i.a, align 8, !tbaa !1879
  %i.aqx = load i8, ptr %storemerge348, align 1, !tbaa !23
  %i.aqy = zext i8 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aqy
  %i.ara = load i8, ptr %i.aqz, align 1, !tbaa !23
  %.not349 = icmp eq i8 %i.ara, 1
  br i1 %.not349, label %bb.gc, label %.preheader654, !llvm.loop !2062

bb.gc:                                            ; preds = %.preheader654
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !1878
  %i.ard = ptrtoint ptr %storemerge348 to i64
  %i.are = ptrtoint ptr %i.arc to i64
  %i.arf = sub i64 %i.ard, %i.are
  tail call void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.arf)
  br label %.critedge

bb.gd:                                            ; preds = %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEj.exit553, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEj.exit
  %.0179 = phi i8 [ %i.aqp, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEj.exit ], [ %i.di, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEj.exit553 ] ; 2 uses
  br i1 %i.apz, label %bb.ge, label %.thread618

bb.ge:                                            ; preds = %bb.gd
  %i.arg = tail call noundef ptr @_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 28, i64 noundef 24)
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 16
  %.lobit = lshr exact i32 %i.apu, 20
  %i.ari = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.ari, ptr %i.arh, align 8, !tbaa !1950
  br label %.thread618

.thread618:                                       ; preds = %bb.gd, %bb.ge, %.thread, %bb.fe, %bb.ee, %bb.dz, %bb.dl, %bb.cv, %bb.ep, %bb.er, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit511, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit498, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit486, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit457, %bb.o
  %.2187 = phi i64 [ 0, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit457 ], [ 0, %bb.ee ], [ 0, %bb.o ], [ %i.nl, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit486 ], [ %i.pc, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit498 ], [ %i.qi, %.thread ], [ 0, %bb.fe ], [ %i.se, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit511 ], [ 0, %bb.er ], [ 0, %bb.cv ], [ 0, %bb.dl ], [ 0, %bb.dz ], [ 0, %bb.ep ], [ 0, %bb.ge ], [ 0, %bb.gd ] ; 3 uses
  %.2184 = phi i1 [ true, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit457 ], [ true, %bb.ee ], [ true, %bb.o ], [ true, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit486 ], [ true, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit498 ], [ true, %.thread ], [ true, %bb.fe ], [ true, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit511 ], [ true, %bb.er ], [ true, %bb.cv ], [ true, %bb.dl ], [ true, %bb.dz ], [ true, %bb.ep ], [ %i.aqj, %bb.ge ], [ %i.aqj, %bb.gd ]
  %.2181 = phi i8 [ %i.di, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit457 ], [ %i.di, %bb.ee ], [ %i.di, %bb.o ], [ %i.di, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit486 ], [ %i.di, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit498 ], [ %i.di, %.thread ], [ %i.di, %bb.fe ], [ %i.di, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit511 ], [ %i.di, %bb.er ], [ %i.di, %bb.cv ], [ %i.di, %bb.dl ], [ %i.di, %bb.dz ], [ %i.di, %bb.ep ], [ %.0179, %bb.ge ], [ %.0179, %bb.gd ]
  %.4133 = phi i32 [ 0, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit457 ], [ -4, %bb.ee ], [ 0, %bb.o ], [ -1, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit486 ], [ -2, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit498 ], [ %.sink, %.thread ], [ %.2131, %bb.fe ], [ -3, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit511 ], [ -4, %bb.er ], [ -4, %bb.cv ], [ -4, %bb.dl ], [ -4, %bb.dz ], [ -4, %bb.ep ], [ 0, %bb.ge ], [ 0, %bb.gd ] ; 5 uses
  %i.arj = call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9parse_allEv(ptr noundef nonnull align 8 dereferenceable(216) %0) ; 0 uses
  %i.ark = call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE11unwind_altsEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.cy)
  br i1 %i.ark, label %bb.gj, label %.preheader653

.preheader653:                                    ; preds = %.thread618
  %i.arl = load ptr, ptr %i.g, align 8, !tbaa !1904, !nonnull !160, !align !215
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !542
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 32
  %.promoted749 = load ptr, ptr %i.a, align 8, !tbaa !1879
  br label %bb.gf

bb.gf:                                            ; preds = %.preheader653, %bb.gf
  %.pn410750 = phi ptr [ %.promoted749, %.preheader653 ], [ %storemerge405, %bb.gf ]
  %storemerge405 = getelementptr inbounds i8, ptr %.pn410750, i64 -1 ; 4 uses
  store ptr %storemerge405, ptr %i.a, align 8, !tbaa !1879
  %i.aro = load i8, ptr %storemerge405, align 1, !tbaa !23
  %i.arp = zext i8 %i.aro to i64
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.arp
  %i.arr = load i8, ptr %i.arq, align 1, !tbaa !23
  %.not406 = icmp eq i8 %i.arr, 1
  br i1 %.not406, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %bb.gf, !llvm.loop !2063

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.gf
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !1878
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #42
  %i.aru = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.arv = invoke noalias noundef nonnull dereferenceable(51) ptr @_Znwm(i64 noundef 51) #45
          to label %.noexc555 unwind label %bb.gh ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNK5boost16cpp_regex_traitsIcE3toiERPKcS3_i:bb.a
  %.2.i.i.i = phi ptr [ %i.bc, %bb.k ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bd = load i8, ptr %.2.i.i.i, align 1, !tbaa !23
  %i.be = icmp eq i8 %i.bd, %i.ab
  br i1 %i.be, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit49: ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit51: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit:                ; preds = %bb.d, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit49, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit51, %bb.l, %._crit_edge._crit_edge52.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %2, %bb.l ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.i ], [ %i.bh, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit51 ], [ %i.bf, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %i.bg, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit49 ], [ %.02946.i.i.i, %bb.d ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  %i.bi = load ptr, ptr %1, align 8, !tbaa !124   ; 2 uses
  %i.bj = ptrtoint ptr %.028.i.i.i to i64         ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = load ptr, ptr %4, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.bi, i64 noundef %i.bl)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit unwind label %bb.o, !inline_history !2139 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit: ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit
  %i.bq = load ptr, ptr %5, align 8, !tbaa !12
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %5, i64 %i.bs
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bt, i32 noundef 0)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit
  %i.bu = call i32 @llvm.abs.i32(i32 %3, i1 true) ; 2 uses
  %i.bv = load ptr, ptr %5, align 8, !tbaa !12
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %5, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !2140
  %i.cb = and i32 %i.ca, -75
  %switch.selectcmp = icmp eq i32 %i.bu, 8
  %switch.select = select i1 %switch.selectcmp, i32 64, i32 2
  %switch.selectcmp58 = icmp eq i32 %i.bu, 16
  %switch.select59 = select i1 %switch.selectcmp58, i32 8, i32 %switch.select
  %i.cc = or disjoint i32 %i.cb, %switch.select59
  store i32 %i.cc, ptr %i.bz, align 8, !tbaa !2141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  %i.cd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %bb.s       ; 2 uses

bb.n:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit, %bb.c
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  br label %bb.u

bb.o:                                             ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !12
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !2142
  %i.cm = and i32 %i.cl, 5
  %.not.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %1, align 8, !tbaa !124   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2143
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2145
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %.not.i27 = icmp eq i64 %i.cu, 0
  br i1 %.not.i27, label %bb.r, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %4, align 8, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit unwind label %bb.s, !inline_history !2146

_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit: ; preds = %bb.q, %bb.r
  %i.cz = phi i64 [ %i.cu, %bb.q ], [ %i.cy, %bb.r ]
  %i.da = ptrtoint ptr %i.cn to i64
  %i.db = add i64 %i.cz, %i.da
  %i.dc = sub i64 %i.bj, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cn, i64 %i.dc
  store ptr %i.dd, ptr %1, align 8, !tbaa !124
  %i.de = load i64, ptr %i.a, align 8, !tbaa !54
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.m
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %bb.u

bb.t:                                             ; preds = %bb.p, %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit
  %.015 = phi i64 [ %i.de, %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit ], [ -1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  %i.dg = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.dg, ptr %5, align 8, !tbaa !12
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.di = getelementptr i8, ptr %i.dg, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %5, i64 %i.dj
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !12
  store i64 0, ptr %i.i, align 8, !tbaa !2135
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !12
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  ret i64 %.015

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.df, %bb.s ], [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  %i.dl = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.dl, ptr %5, align 8, !tbaa !12
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.dn = getelementptr i8, ptr %i.dl, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %5, i64 %i.do
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !12
  store i64 0, ptr %i.i, align 8, !tbaa !2135
  br label %.body

.body:                                            ; preds = %bb.b, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.l, %bb.b ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !12
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost13re_detail_50020named_subexpressions8set_nameIcEEvPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not9.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i, label %_ZN5boost13re_detail_50020named_subexpressions4nameC2IcEEPKT_S6_i.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.d = add i64 %i.a, -1
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.v, %.lr.ph.i.i ] ; 3 uses
  %.0810.i.i = phi ptr [ %1, %.lr.ph.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.f = load i8, ptr %.0810.i.i, align 1, !tbaa !23
  %i.g = sext i8 %i.f to i64
  %i.h = shl i64 %.011.i.i, 6
  %i.i = lshr i64 %.011.i.i, 2
  %i.j = add i64 %i.h, 2654435769
  %i.k = add i64 %i.j, %i.i
  %i.l = add i64 %i.k, %i.g
  %i.m = xor i64 %i.l, %.011.i.i                  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23
  %i.p = sext i8 %i.o to i64
  %i.q = shl i64 %i.m, 6
  %i.r = lshr i64 %i.m, 2
  %i.s = add i64 %i.q, 2654435769
  %i.t = add i64 %i.s, %i.r
  %i.u = add i64 %i.t, %i.p
  %i.v = xor i64 %i.u, %i.m                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1981

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.v, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 3 uses
  %.0810.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.w, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod33 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.x = load i8, ptr %.0810.i.i.epil.init, align 1, !tbaa !23
  %i.y = sext i8 %i.x to i64
  %i.z = shl i64 %.011.i.i.epil.init, 6
  %i.aa = lshr i64 %.011.i.i.epil.init, 2
  %i.ab = add i64 %i.z, 2654435769
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = add i64 %i.ac, %i.y
  %i.ae = xor i64 %i.ad, %.011.i.i.epil.init
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa31 = phi i64 [ %i.v, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.ae, %.lr.ph.i.i.epil.preheader ]
  %i.af = urem i64 %.lcssa31, 2147483647
  %i.ag = shl nuw nsw i64 %i.af, 32
  %i.ah = or i64 %i.ag, 4611686018427387904
  br label %_ZN5boost13re_detail_50020named_subexpressions4nameC2IcEEPKT_S6_i.exit

_ZN5boost13re_detail_50020named_subexpressions4nameC2IcEEPKT_S6_i.exit: ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ 4611686018427387904, %bb.a ], [ %i.ah, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2147 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !508
  %.not.i.i4 = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost13re_detail_50020named_subexpressions4nameC2IcEEPKT_S6_i.exit
  %.sroa.0.0.insert.ext = zext i32 %3 to i64
  %.sroa.0.0.insert.insert = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.aj, align 4
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !2147
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !2147
  %.pre = load ptr, ptr %0, align 8, !tbaa !2148
  br label %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %_ZN5boost13re_detail_50020named_subexpressions4nameC2IcEEPKT_S6_i.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !505   ; 7 uses
  %i.ap = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.d, label %_ZNKSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #44
  unreachable

_ZNKSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #45 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  %.sroa.0.0.insert.ext6 = zext i32 %3 to i64
  %.sroa.0.0.insert.insert8 = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext6
  store i64 %.sroa.0.0.insert.insert8, ptr %i.ba, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.aj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bb = ptrtoaddr ptr %i.az to i64
  %i.bc = add i64 %i.ap, -8
  %i.bd = sub i64 %i.bc, %i.aq                    ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 72
  %i.bg = sub i64 %i.aq, %i.bb
  %diff.check = icmp ugt i64 %i.bg, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.az, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ao, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bk ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.ao, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  %i.bl = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 4, !alias.scope !2152, !noalias !2149
  %wide.load28 = load <2 x i64>, ptr %i.bl, align 4, !alias.scope !2152, !noalias !2149
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !2149, !noalias !2152
  store <2 x i64> %wide.load28, ptr %i.bm, align 4, !alias.scope !2149, !noalias !2152
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !2154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.preheader30:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !2152, !noalias !2149
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !2149, !noalias !2152
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2155

_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bi, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #43
  br label %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.az, ptr %0, align 8, !tbaa !505
  store ptr %i.br, ptr %i.ai, align 8, !tbaa !2147
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bs, ptr %i.ak, align 8, !tbaa !508
  br label %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.bt = phi ptr [ %i.an, %bb.b ], [ %i.br, %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bu = phi ptr [ %.pre, %bb.b ], [ %i.az, %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bv = icmp eq ptr %i.bu, %i.bt
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bu
  %or.cond.i = select i1 %i.bv, i1 true, i1 %i.bx
  br i1 %or.cond.i, label %_ZN5boost13re_detail_50015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit, %bb.f
  %.sroa.02.012.i = phi ptr [ %i.cd, %bb.f ], [ %i.bw, %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !2156 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.sroa.02.012.i, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !2156 ; 2 uses
  %i.cc = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.f, label %_ZN5boost13re_detail_50015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.cd = getelementptr inbounds i8, ptr %.sroa.02.012.i, i64 -8 ; 4 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !44
  %i.cf = load i32, ptr %.sroa.02.012.i, align 4, !tbaa !44
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !44
  store i32 %i.ce, ptr %.sroa.02.012.i, align 4, !tbaa !44
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !44
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !44
  %i.cg = icmp eq ptr %i.cd, %i.bu
  br i1 %i.cg, label %_ZN5boost13re_detail_50015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !2158

_ZN5boost13re_detail_50015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit: ; preds = %.lr.ph.i, %bb.f, %_ZNSt6vectorIN5boost13re_detail_50020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13parse_optionsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1866   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1867
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %.promoted = load ptr, ptr %i.d, align 8, !tbaa !1879
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br label %bb.b

end_hunk_4
begin_hunk_5_@_ZN6google10LogMessageC1EPKcii
; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN5folly12_GLOBAL__N_112userSetGflagEPKc(ptr noundef %0) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.google::CommandLineFlagInfo", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  call void @_ZN6google27GetCommandLineFlagInfoOrDieEPKc(ptr dead_on_unwind nonnull writable sret(%"struct.google::CommandLineFlagInfo") align 8 %1, ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.b = load i8, ptr %i.a, align 1, !tbaa !6710, !range !159, !noundef !160
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !23
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !23
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !23
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !23
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  %i.ag = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN6google19CommandLineFlagInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !23
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #43
  br label %_ZN6google19CommandLineFlagInfoD2Ev.exit

_ZN6google19CommandLineFlagInfoD2Ev.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  %i.al = trunc nuw i8 %i.b to i1
  %i.am = xor i1 %i.al, true
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  ret i1 %i.am
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5follyL29runBenchmarkGetNSPerIterationB5cxx11ERKSt8functionIFNS_6detail12TimeIterDataEjEEdl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, double noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::vector.377", align 8   ; 10 uses
  %6 = alloca %"struct.folly::detail::TimeIterData", align 8 ; 14 uses
  %7 = alloca %"struct.std::pair.365", align 8    ; 9 uses
  %i.b = mul nsw i64 %3, 1000
  %.sroa.speculated69 = tail call i64 @llvm.smax.i64(i64 %i.b, i64 100000)
  %i.c = load i32, ptr @_ZN3fLI17FLAGS_bm_max_secsE, align 4, !tbaa !44
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  %i.f = load i32, ptr @_ZN3fLU19FLAGS_bm_max_trialsE, align 4, !tbaa !44 ; 3 uses
  %.not.i.i.i.i = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = shl nuw nsw i64 %i.g, 6
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #45 ; 11 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !6682
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !6685
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 48, i1 false)
  store ptr %i.m, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %i.n, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = add nsw i64 %i.g, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i
  %.lcssa139.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.g, %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %i.t = icmp eq i32 %i.f, 1
  br i1 %i.t, label %.lr.ph82, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 15 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.013.i.i.i.i.i, i8 0, i64 48, i1 false)
  store ptr %i.v, ptr %i.u, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i64 1, ptr %i.w, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i8 0, i64 48, i1 false)
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i64 1, ptr %i.ad, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.af, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = add nsw i64 %.01012.i.i.i.i.i, -2       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.1, label %.lr.ph82, label %.lr.ph.i.i.i.i.i, !llvm.loop !6686

.lr.ph82:                                         ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa139 = phi ptr [ %.lcssa139.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ai, %.lr.ph.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.lcssa139, ptr %i.aj, align 8, !tbaa !6687
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ba = mul nsw i64 %i.d, 1000000000
  br label %bb.a

bb.a:                                             ; preds = %.loopexit, %.lr.ph82
  %.02381 = phi i64 [ 0, %.lr.ph82 ], [ %i.ec, %.loopexit ] ; 4 uses
  %i.bb = load i64, ptr @_ZN5fLI6418FLAGS_bm_max_itersE, align 8, !tbaa !54
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = load i32, ptr @_ZN3fLI18FLAGS_bm_min_itersE, align 4, !tbaa !44 ; 2 uses
  %i.be = icmp ult i32 %i.bd, %i.bc
  br i1 %i.be, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %_ZN5folly6detail12TimeIterDataD2Ev.exit55
  %.02678 = phi i32 [ %i.dy, %_ZN5folly6detail12TimeIterDataD2Ev.exit55 ], [ %i.bd, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.02678, ptr %i.a, align 4, !tbaa !44, !noalias !6712
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !33, !noalias !6712
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  invoke void @_ZSt25__throw_bad_function_callv() #44
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !38, !noalias !6712
  invoke void %i.bg(ptr dead_on_unwind nonnull writable sret(%"struct.folly::detail::TimeIterData") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %.loopexit75, !inline_history !6692

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i64, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.bi = icmp slt i64 %i.bh, %.sroa.speculated69
  br i1 %i.bi, label %.critedge, label %bb.f

.loopexit75:                                      ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit75
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit75 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #42
  %i.bj = uitofp nneg i64 %i.bh to double
  %i.bk = load i32, ptr %i.aq, align 8, !tbaa !58
  %i.bl = uitofp i32 %i.bk to double
  %i.bm = fdiv double %i.bj, %i.bl
  %i.bn = fsub double %i.bm, %2                   ; 2 uses
  %i.bo = fcmp ogt double %i.bn, 0.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !6715)
  %.sroa.speculated = select i1 %i.bo, double %i.bn, double 0.000000e+00 ; 2 uses
  store double %.sroa.speculated, ptr %7, align 8, !tbaa !6657, !alias.scope !6715
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !69, !noalias !6715 ; 3 uses
  store ptr %i.bp, ptr %i.ar, align 8, !tbaa !69, !alias.scope !6715
  %i.bq = load i64, ptr %i.ao, align 8, !tbaa !70, !noalias !6715 ; 2 uses
  store i64 %i.bq, ptr %i.as, align 8, !tbaa !70, !alias.scope !6715
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !138, !noalias !6715 ; 3 uses
  store ptr %i.br, ptr %i.at, align 8, !tbaa !110, !alias.scope !6715
  %i.bs = load i64, ptr %i.av, align 8, !tbaa !103, !noalias !6715
  store i64 %i.bs, ptr %i.au, align 8, !tbaa !103, !alias.scope !6715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !139
  store ptr null, ptr %i.ay, align 8, !tbaa !141, !alias.scope !6715
  %i.bt = icmp eq ptr %i.bp, %i.ap
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !69, !alias.scope !6715
  %i.bu = load ptr, ptr %i.ap, align 8, !tbaa !141, !noalias !6715
  store ptr %i.bu, ptr %i.ay, align 8, !tbaa !141, !alias.scope !6715
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bv = phi ptr [ %i.ay, %bb.g ], [ %i.bp, %bb.f ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt9make_pairIRKdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SA_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSK_INSL_IT0_E4typeEE6__typeEEOSM_OSR_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !142
  %i.by = urem i64 %i.bx, %i.bq
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.by
  store ptr %i.at, ptr %i.bz, align 8, !tbaa !144
  br label %_ZSt9make_pairIRKdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SA_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSK_INSL_IT0_E4typeEE6__typeEEOSM_OSR_.exit

_ZSt9make_pairIRKdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SA_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSK_INSL_IT0_E4typeEE6__typeEEOSM_OSR_.exit: ; preds = %bb.h, %bb.i
  store i64 0, ptr %i.az, align 8, !tbaa !145, !noalias !6715
  store i64 1, ptr %i.ao, align 8, !tbaa !70, !noalias !6715
  store ptr null, ptr %i.ap, align 8, !tbaa !141, !noalias !6715
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !69, !noalias !6715
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !noalias !6715
  %i.ca = load ptr, ptr %5, align 8, !tbaa !6682
  %i.cb = getelementptr inbounds nuw [64 x i8], ptr %i.ca, i64 %.02381 ; 2 uses
  store double %.sroa.speculated, ptr %i.cb, align 8, !tbaa !6657
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSN_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(56) %i.ar)
          to label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZSt9make_pairIRKdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SA_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSK_INSL_IT0_E4typeEE6__typeEEOSM_OSR_.exit
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #46
  unreachable

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit: ; preds = %_ZSt9make_pairIRKdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SA_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSK_INSL_IT0_E4typeEE6__typeEEOSM_OSR_.exit
  %i.cf = load ptr, ptr %i.at, align 8, !tbaa !138 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i37

.lr.ph.i.i.i.i.i37:                               ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.cg, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i ], [ %i.cf, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit ] ; 4 uses
  %i.cg = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !110 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i37
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !23
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 72) #43
  %.not.i.i.i.i.i38 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i38, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i37, !llvm.loop !146

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit
  %i.cn = load ptr, ptr %i.ar, align 8, !tbaa !69
  %i.co = load i64, ptr %i.as, align 8, !tbaa !70
  %i.cp = shl i64 %i.co, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cn, i8 0, i64 %i.cp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.cq = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ay
  br i1 %i.cr, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.cs = load i64, ptr %i.as, align 8, !tbaa !70
  %i.ct = shl i64 %i.cs, 3
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #43
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #42
  %i.cu = load ptr, ptr %i.an, align 8, !tbaa !138 ; 2 uses
  %.not5.i.i.i.i.i39 = icmp eq ptr %i.cu, null
  br i1 %.not5.i.i.i.i.i39, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i45, label %.lr.ph.i.i.i.i.i40

.lr.ph.i.i.i.i.i40:                               ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43
  %.06.i.i.i.i.i41 = phi ptr [ %i.cv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43 ], [ %i.cu, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit ] ; 4 uses
  %i.cv = load ptr, ptr %.06.i.i.i.i.i41, align 8, !tbaa !110 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i41, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !20 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i41, i64 24 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i42: ; preds = %.lr.ph.i.i.i.i.i40
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !23
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43: ; preds = %.lr.ph.i.i.i.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i42
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i41, i64 noundef 72) #43
  %.not.i.i.i.i.i44 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i44, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i45, label %.lr.ph.i.i.i.i.i40, !llvm.loop !146

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i45: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit
  %i.dc = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.dd = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.de = shl i64 %i.dd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dc, i8 0, i64 %i.de, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.df = load ptr, ptr %i.am, align 8, !tbaa !69 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ap
  br i1 %i.dg, label %_ZN5folly6detail12TimeIterDataD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i45
  %i.dh = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.di = shl i64 %i.dh, 3
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #43
  br label %_ZN5folly6detail12TimeIterDataD2Ev.exit

_ZN5folly6detail12TimeIterDataD2Ev.exit:          ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i45, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  br label %.loopexit

.critedge:                                        ; preds = %bb.d
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !138 ; 2 uses
  %.not5.i.i.i.i.i47 = icmp eq ptr %i.dj, null
  br i1 %.not5.i.i.i.i.i47, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i53, label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.critedge, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51
  %.06.i.i.i.i.i49 = phi ptr [ %i.dk, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51 ], [ %i.dj, %.critedge ] ; 4 uses
  %i.dk = load ptr, ptr %.06.i.i.i.i.i49, align 8, !tbaa !110 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i49, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !20 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i49, i64 24 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i50: ; preds = %.lr.ph.i.i.i.i.i48
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !23
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51: ; preds = %.lr.ph.i.i.i.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i50
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i49, i64 noundef 72) #43
  %.not.i.i.i.i.i52 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i52, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i53, label %.lr.ph.i.i.i.i.i48, !llvm.loop !146

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i53: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51, %.critedge
  %i.dr = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.ds = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.dt = shl i64 %i.ds, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dr, i8 0, i64 %i.dt, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.du = load ptr, ptr %i.am, align 8, !tbaa !69 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ap
  br i1 %i.dv, label %_ZN5folly6detail12TimeIterDataD2Ev.exit55, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i53
  %i.dw = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.dx = shl i64 %i.dw, 3
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #43
  br label %_ZN5folly6detail12TimeIterDataD2Ev.exit55

_ZN5folly6detail12TimeIterDataD2Ev.exit55:        ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i53, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  %i.dy = shl i32 %.02678, 1                      ; 2 uses
  %i.dz = icmp ult i32 %i.dy, %i.bc
  br i1 %i.dz, label %.lr.ph, label %.loopexit, !llvm.loop !6718

.loopexit:                                        ; preds = %_ZN5folly6detail12TimeIterDataD2Ev.exit55, %bb.a, %_ZN5folly6detail12TimeIterDataD2Ev.exit
  %i.ea = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #42
  %i.eb = sub nsw i64 %i.ea, %i.e
  %.not = icmp slt i64 %i.eb, %i.ba
  %i.ec = add nuw nsw i64 %.02381, 1              ; 3 uses
  %i.ed = load i32, ptr @_ZN3fLU19FLAGS_bm_max_trialsE, align 4
  %i.ee = zext i32 %i.ed to i64
  %i.ef = icmp samesign ult i64 %i.ec, %i.ee
  %or.cond = select i1 %.not, i1 %i.ef, i1 false
  br i1 %or.cond, label %bb.a, label %.split.loop.exit79, !llvm.loop !6719

.split.loop.exit79:                               ; preds = %.loopexit
  %i.eg = load ptr, ptr %5, align 8, !tbaa !6697  ; 6 uses
  %.idx = shl nsw i64 %i.ec, 6
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx
  %or.cond.i.i = icmp eq i64 %.02381, 0
  br i1 %or.cond.i.i, label %"_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEEZNSA_L29runBenchmarkGetNSPerIterationERKSt8functionIFNSA_6detail12TimeIterDataEjEEdlE3$_0ET_SY_SY_T0_.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit79
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 64 ; 2 uses
  %.val1.i.pre.i.i = load double, ptr %i.eg, align 8, !tbaa !6657 ; 2 uses
  %xtraiter143 = and i64 %.02381, 3               ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.val1.i.i.i.prol = phi double [ %i.em, %.lr.ph.i.i.prol ], [ %.val1.i.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ej = phi ptr [ %i.el, %.lr.ph.i.i.prol ], [ %i.ei, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.09.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.eg, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %.val.i.i.i.prol = load double, ptr %i.ej, align 8, !tbaa !6657 ; 2 uses
  %i.ek = fcmp olt double %.val.i.i.i.prol, %.val1.i.i.i.prol ; 2 uses
  %spec.select.i.i.prol = select i1 %i.ek, ptr %i.ej, ptr %.sroa.02.09.i.i.prol ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 64 ; 2 uses
  %i.em = select i1 %i.ek, double %.val.i.i.i.prol, double %.val1.i.i.i.prol ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter143
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !6720

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.val1.i.i.i.unr = phi double [ %.val1.i.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.em, %.lr.ph.i.i.prol ]
  %.unr = phi ptr [ %i.ei, %.lr.ph.preheader.i.i ], [ %i.el, %.lr.ph.i.i.prol ]
  %.sroa.02.09.i.i.unr = phi ptr [ %i.eg, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val1.i.i.i = phi double [ %.val1.i.i.i.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.fa, %.lr.ph.i.i ] ; 2 uses
  %i.en = phi ptr [ %.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ey, %.lr.ph.i.i ] ; 6 uses
  %.sroa.02.09.i.i = phi ptr [ %.sroa.02.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %.val.i.i.i = load double, ptr %i.en, align 8, !tbaa !6657 ; 2 uses
  %i.eo = fcmp olt double %.val.i.i.i, %.val1.i.i.i ; 2 uses
  %spec.select.i.i = select i1 %i.eo, ptr %i.en, ptr %.sroa.02.09.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 64 ; 2 uses
  %i.eq = select i1 %i.eo, double %.val.i.i.i, double %.val1.i.i.i ; 2 uses
  %.val.i.i.i.1 = load double, ptr %i.ep, align 8, !tbaa !6657 ; 2 uses
  %i.er = fcmp olt double %.val.i.i.i.1, %i.eq    ; 2 uses
  %spec.select.i.i.1 = select i1 %i.er, ptr %i.ep, ptr %spec.select.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 128 ; 2 uses
  %i.et = select i1 %i.er, double %.val.i.i.i.1, double %i.eq ; 2 uses
  %.val.i.i.i.2 = load double, ptr %i.es, align 8, !tbaa !6657 ; 2 uses
  %i.eu = fcmp olt double %.val.i.i.i.2, %i.et    ; 2 uses
  %spec.select.i.i.2 = select i1 %i.eu, ptr %i.es, ptr %spec.select.i.i.1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 192 ; 2 uses
  %i.ew = select i1 %i.eu, double %.val.i.i.i.2, double %i.et ; 2 uses
  %.val.i.i.i.3 = load double, ptr %i.ev, align 8, !tbaa !6657 ; 2 uses
  %i.ex = fcmp olt double %.val.i.i.i.3, %i.ew    ; 2 uses
  %spec.select.i.i.3 = select i1 %i.ex, ptr %i.ev, ptr %spec.select.i.i.2 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 256 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.eh
  %i.fa = select i1 %i.ex, double %.val.i.i.i.3, double %i.ew
  br i1 %i.ez, label %"_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEEZNSA_L29runBenchmarkGetNSPerIterationERKSt8functionIFNSA_6detail12TimeIterDataEjEEdlE3$_0ET_SY_SY_T0_.exit", label %.lr.ph.i.i, !llvm.loop !6721

"_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEEZNSA_L29runBenchmarkGetNSPerIterationERKSt8functionIFNSA_6detail12TimeIterDataEjEEdlE3$_0ET_SY_SY_T0_.exit": ; preds = %.lr.ph.i.i, %.split.loop.exit79
  %.sroa.02.2.i.i = phi ptr [ %i.eg, %.split.loop.exit79 ], [ %spec.select.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %i.fb = load double, ptr %.sroa.02.2.i.i, align 8, !tbaa !113 ; 2 uses
  %i.fc = fcmp ogt double %i.fb, 0.000000e+00
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6722)
  %i.fe = select i1 %i.fc, double %i.fb, double 0.000000e+00
  store double %i.fe, ptr %0, align 8, !tbaa !6657, !alias.scope !6722
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.ff, align 8, !tbaa !69, !alias.scope !6722
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !70, !noalias !6722
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !70, !alias.scope !6722
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.fj, align 8, !tbaa !110, !alias.scope !6722
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !103, !noalias !6722
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !103, !alias.scope !6722
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 16, i1 false), !tbaa.struct !139
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.fp, align 8, !tbaa !141, !alias.scope !6722
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42, !noalias !6722
  store ptr %i.ff, ptr %4, align 8, !tbaa !272, !noalias !6722
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSN_NSC_10_AllocNodeISaINSC_10_Hash_nodeISA_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ff, ptr noundef nonnull align 8 dereferenceable(56) %i.fd, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %"_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEEZNSA_L29runBenchmarkGetNSPerIterationERKSt8functionIFNSA_6detail12TimeIterDataEjEEdlE3$_0ET_SY_SY_T0_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42, !noalias !6722
  call void @_ZNSt6vectorISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  ret void

bb.o:                                             ; preds = %"_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEEZNSA_L29runBenchmarkGetNSPerIterationERKSt8functionIFNSA_6detail12TimeIterDataEjEEdlE3$_0ET_SY_SY_T0_.exit"
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.e
  %.pn30.pn = phi { ptr, i32 } [ %lpad.phi, %bb.e ], [ %i.fq, %bb.o ]
  call void @_ZNSt6vectorISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !110 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !23
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 72) #43
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !146

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !70
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #43
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_123BenchmarkResultsPrinter5printERKSt6vectorINS_6detail15BenchmarkResultESaIS4_EERKS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 50 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge720, label %.lr.ph719

.lr.ph719:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 32 uses
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 30 uses
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

._crit_edge720:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph719, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.ax = phi ptr [ %i.c, %.lr.ph719 ], [ %i.zg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ]
  %.0716 = phi i64 [ 0, %.lr.ph719 ], [ %i.ze, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %i.ax, i64 %.0716 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #42
  store ptr %i.d, ptr %14, align 8, !tbaa !15
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !24 ; 8 uses
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.bd = icmp slt i64 %i.bb, 0
  br i1 %i.bd, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #44
  unreachable

end_hunk_5
