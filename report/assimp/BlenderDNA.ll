inline.NumInlined: 851
inline.NumDeleted: 406
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixEOS5_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !21

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #20 ; 2 uses
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

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %1, ptr %2, align 8, !alias.scope !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7Blender13SectionParser4NextEv(ptr noundef nonnull align 8 captures(address) dereferenceable(81) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.059 = alloca i32, align 4                ; 8 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 %i.c
  %i.i = getelementptr i8, ptr %i.h, i64 %i.e     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ugt ptr %i.i, %i.l
  br i1 %i.m, label %bb.b, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.28)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

common.resume:                                    ; preds = %bb.aw, %bb.ar, %bb.am, %bb.ag, %bb.z, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.x, %bb.g ], [ %i.ah, %bb.j ], [ %i.ar, %bb.m ], [ %i.bb, %bb.p ], [ %i.cf, %bb.z ], [ %i.cy, %bb.ag ], [ %i.dp, %bb.am ], [ %i.ee, %bb.ar ], [ %i.ff, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #20
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059)
  %i.p = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp ugt ptr %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit

bb.e:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str.29)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.w) #20
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit:  ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.y = load i8, ptr %i.r, align 1               ; 2 uses
  store ptr %i.s, ptr %i.q, align 8
  store i8 %i.y, ptr %.sroa.059, align 4
  %i.z = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp ugt ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit6

bb.h:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.29)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ag) #20
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit6: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit
  %i.ai = load i8, ptr %i.ab, align 1             ; 2 uses
  store ptr %i.ac, ptr %i.aa, align 8
  %.sroa.059.1..sroa_idx80 = getelementptr inbounds nuw i8, ptr %.sroa.059, i64 1
  store i8 %i.ai, ptr %.sroa.059.1..sroa_idx80, align 1
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp ugt ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit7

bb.k:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit6
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull @.str.29)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aq) #20
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit7: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit6
  %i.as = load i8, ptr %i.al, align 1             ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8
  %.sroa.059.2..sroa_idx81 = getelementptr inbounds nuw i8, ptr %.sroa.059, i64 2
  store i8 %i.as, ptr %.sroa.059.2..sroa_idx81, align 2
  %i.at = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp ugt ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.n, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit8

bb.n:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit7
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull @.str.29)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ba) #20
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit8: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit7
  %i.bc = load i8, ptr %i.av, align 1             ; 2 uses
  store ptr %i.aw, ptr %i.au, align 8
  %.sroa.059.3..sroa_idx82 = getelementptr inbounds nuw i8, ptr %.sroa.059, i64 3
  store i8 %i.bc, ptr %.sroa.059.3..sroa_idx82, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %.not = icmp eq i8 %i.bc, 0
  br i1 %.not, label %bb.q, label %.thread

bb.q:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit8
  %.not3 = icmp eq i8 %i.as, 0
  br i1 %.not3, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.q, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit8
  %.ph = phi i64 [ 4, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit8 ], [ 3, %bb.q ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.bd, ptr %1, align 8
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not4 = icmp eq i8 %i.ai, 0
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.be, ptr %1, align 8
  br i1 %.not4, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 %i.y, ptr %i.be, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

bb.t:                                             ; preds = %bb.r, %.thread
  %i.bf = phi ptr [ %i.bd, %.thread ], [ %i.be, %bb.r ] ; 2 uses
  %i.bg = phi i64 [ %.ph, %.thread ], [ 2, %bb.r ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bf, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.059, i64 %i.bg, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.t, %bb.s
  %i.bh = phi ptr [ %i.bf, %bb.t ], [ %i.be, %bb.s ] ; 6 uses
  %i.bi = phi i64 [ %i.bg, %bb.t ], [ 1, %bb.s ]  ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  store i8 0, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not21.i = icmp eq ptr %1, %i.bl
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.u, !prof !20

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %cond67 = icmp eq i64 %i.bi, 1
  br i1 %cond67, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bn = load i8, ptr %i.bh, align 1
  store i8 %i.bn, ptr %i.bm, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bh, i64 %i.bi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.w, %bb.v
  %i.bo = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.bl, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1
  %.pre.i = load ptr, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.bs = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  store i64 0, ptr %i.bj, align 8
  store i8 0, ptr %i.bs, align 1
  %i.bt = load ptr, ptr %1, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bh
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bv = load i64, ptr %i.bh, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.bx = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.29)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ce) #20
  br label %common.resume

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = load i32, ptr %i.bz, align 1            ; 5 uses
  %.sroa.6.0.extract.shift.i.i = lshr i32 %i.cg, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i.i = lshr i32 %i.cg, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i.i = lshr i32 %i.cg, 24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.ci = load i8, ptr %i.ch, align 8, !range !5, !noundef !3
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = and i32 %i.cg, 255
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit:  ; preds = %bb.aa, %bb.ab
  %.sroa.8.0.i.i = phi i32 [ %.sroa.8.0.extract.shift.i.i, %bb.aa ], [ %.sroa.6.0.extract.shift.i.i, %bb.ab ]
  %.sroa.6.0.in.i.i = phi i32 [ %.sroa.6.0.extract.shift.i.i, %bb.aa ], [ %.sroa.8.0.extract.shift.i.i, %bb.ab ]
  %.sroa.02.0.in.i.i = phi i32 [ %i.cg, %bb.aa ], [ %.sroa.10.0.extract.shift.i.i, %bb.ab ]
  %.sroa.10.0.i.i = phi i32 [ %.sroa.10.0.extract.shift.i.i, %bb.aa ], [ %i.ck, %bb.ab ]
  store ptr %i.ca, ptr %i.by, align 8
  %.sroa.10.0.insert.shift.i.i = shl nuw i32 %.sroa.10.0.i.i, 24
  %.sroa.8.0.insert.ext.i.i = shl i32 %.sroa.8.0.i.i, 16
  %.sroa.8.0.insert.shift.i.i = and i32 %.sroa.8.0.insert.ext.i.i, 16711680
  %.sroa.8.0.insert.insert.i.i = or disjoint i32 %.sroa.10.0.insert.shift.i.i, %.sroa.8.0.insert.shift.i.i
  %.sroa.6.0.insert.ext.i.i = shl nuw i32 %.sroa.6.0.in.i.i, 8
  %.sroa.6.0.insert.shift.i.i = and i32 %.sroa.6.0.insert.ext.i.i, 65280
  %.sroa.6.0.insert.insert.i.i = or disjoint i32 %.sroa.8.0.insert.insert.i.i, %.sroa.6.0.insert.shift.i.i
  %.sroa.02.0.insert.ext.i.i = and i32 %.sroa.02.0.in.i.i, 255
  %.sroa.02.0.insert.insert.i.i = or disjoint i32 %.sroa.6.0.insert.insert.i.i, %.sroa.02.0.insert.ext.i.i
  %i.cl = sext i32 %.sroa.02.0.insert.insert.i.i to i64
  store i64 %i.cl, ptr %i.d, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cn = load i8, ptr %i.cm, align 8, !range !5, !noundef !3
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 4 uses
  br i1 %i.co, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit
  %i.cq = call noundef i64 @_ZN6Assimp12StreamReaderILb1ELb1EE3GetImEET_v(ptr noundef nonnull align 8 dereferenceable(49) %i.cp)
  br label %bb.aj

bb.ad:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = icmp ugt ptr %i.ct, %i.cv
  br i1 %i.cw, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.cx = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.29)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cx) #20
  br label %common.resume

bb.ah:                                            ; preds = %bb.ad
  %i.cz = load i32, ptr %i.cs, align 1            ; 5 uses
  %.sroa.6.0.extract.shift.i.i9 = lshr i32 %i.cz, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i.i10 = lshr i32 %i.cz, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i.i11 = lshr i32 %i.cz, 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.db = load i8, ptr %i.da, align 8, !range !5, !noundef !3
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = and i32 %i.cz, 255
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit

_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit:  ; preds = %bb.ah, %bb.ai
  %.sroa.8.0.i.i12 = phi i32 [ %.sroa.8.0.extract.shift.i.i10, %bb.ah ], [ %.sroa.6.0.extract.shift.i.i9, %bb.ai ]
  %.sroa.6.0.in.i.i13 = phi i32 [ %.sroa.6.0.extract.shift.i.i9, %bb.ah ], [ %.sroa.8.0.extract.shift.i.i10, %bb.ai ]
  %.sroa.02.0.in.i.i14 = phi i32 [ %i.cz, %bb.ah ], [ %.sroa.10.0.extract.shift.i.i11, %bb.ai ]
  %.sroa.10.0.i.i15 = phi i32 [ %.sroa.10.0.extract.shift.i.i11, %bb.ah ], [ %i.dd, %bb.ai ]
  store ptr %i.ct, ptr %i.cr, align 8
  %.sroa.10.0.insert.shift.i.i16 = shl nuw i32 %.sroa.10.0.i.i15, 24
  %.sroa.8.0.insert.ext.i.i17 = shl i32 %.sroa.8.0.i.i12, 16
  %.sroa.8.0.insert.shift.i.i18 = and i32 %.sroa.8.0.insert.ext.i.i17, 16711680
  %.sroa.8.0.insert.insert.i.i19 = or disjoint i32 %.sroa.10.0.insert.shift.i.i16, %.sroa.8.0.insert.shift.i.i18
  %.sroa.6.0.insert.ext.i.i20 = shl nuw i32 %.sroa.6.0.in.i.i13, 8
  %.sroa.6.0.insert.shift.i.i21 = and i32 %.sroa.6.0.insert.ext.i.i20, 65280
  %.sroa.6.0.insert.insert.i.i22 = or disjoint i32 %.sroa.8.0.insert.insert.i.i19, %.sroa.6.0.insert.shift.i.i21
  %.sroa.02.0.insert.ext.i.i23 = and i32 %.sroa.02.0.in.i.i14, 255
  %.sroa.02.0.insert.insert.i.i24 = or disjoint i32 %.sroa.6.0.insert.insert.i.i22, %.sroa.02.0.insert.ext.i.i23
  %i.de = zext i32 %.sroa.02.0.insert.insert.i.i24 to i64
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit, %bb.ac
  %i.df = phi i64 [ %i.cq, %bb.ac ], [ %i.de, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.df, ptr %i.dg, align 8
end_hunk_0
