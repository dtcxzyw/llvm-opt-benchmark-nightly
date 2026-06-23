inline.NumInlined: 6243
inline.NumDeleted: 1690
begin_hunk_0_@_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_:bb.a
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev.exit
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !336
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.aw to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cj) #54
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.ck = load ptr, ptr %3, align 8, !tbaa !292   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorImSaImEED2Ev.exit29, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !336
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #54
  br label %_ZNSt6vectorImSaImEED2Ev.exit29

_ZNSt6vectorImSaImEED2Ev.exit29:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret void

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit37, %.loopexit.split-lp38
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp40, %.loopexit.split-lp38 ], [ %lpad.loopexit39, %.loopexit37 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %.pre = load ptr, ptr %4, align 8, !tbaa !292
  br label %bb.v

bb.u:                                             ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cr = phi ptr [ %.pre, %bb.t ], [ %i.aw, %bb.u ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.cq, %bb.u ]
  %.not.i.i.i30 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorImSaImEED2Ev.exit31, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !336
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #54
  br label %_ZNSt6vectorImSaImEED2Ev.exit31

_ZNSt6vectorImSaImEED2Ev.exit31:                  ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.cx = load ptr, ptr %3, align 8, !tbaa !292   ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorImSaImEED2Ev.exit33, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit31
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !336
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #54
  br label %_ZNSt6vectorImSaImEED2Ev.exit33

_ZNSt6vectorImSaImEED2Ev.exit33:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit31, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStrings5GetIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #53 ; 2 uses
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
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !339 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !340

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #53 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !341
  br label %bb.e

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !335 ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, %bb.d
  %.0 = phi i64 [ %i.y, %bb.d ], [ %i.aa, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #59
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13edit_distance17CreateUnifiedDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_m(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::vector.44", align 8    ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.testing::internal::edit_distance::(anonymous namespace)::Hunk", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.44") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %.sink21.i.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 9 uses
  %.sink21.i.sroa.gep110 = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 8 uses
  %.sink21.i.sroa.gep111 = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 17 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.preheader134 unwind label %bb.d

.preheader134:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %7 = load ptr, ptr %i.b, align 8, !tbaa !310    ; 4 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !305    ; 7 uses
  %8 = ptrtoint ptr %7 to i64
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %9 = sub i64 %8, %i.d
  %10 = ashr exact i64 %9, 2                      ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 13 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader134, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit
  %.0128 = phi i64 [ %.2130.lcssa, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit ], [ 0, %.preheader134 ] ; 2 uses
  %.051 = phi i64 [ %.253.lcssa, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit ], [ 0, %.preheader134 ] ; 4 uses
  %.0 = phi i64 [ %.2.lcssa, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit ], [ 0, %.preheader134 ] ; 2 uses
  %i.p = icmp ult i64 %.051, %10
  br i1 %i.p, label %.preheader133.preheader, label %bb.af

.preheader133.preheader:                          ; preds = %bb.b
  %i.q = add i64 %10, %.0128
  %i.r = sub i64 %i.q, %.051
  %i.s = add i64 %10, %.0
  %i.t = sub i64 %i.s, %.051
  br label %.preheader133

.preheader133:                                    ; preds = %.preheader133.preheader, %bb.c
  %.1140 = phi i64 [ %i.y, %bb.c ], [ %.0, %.preheader133.preheader ] ; 2 uses
  %.152139 = phi i64 [ %i.z, %bb.c ], [ %.051, %.preheader133.preheader ] ; 3 uses
  %.1129138 = phi i64 [ %i.x, %bb.c ], [ %.0128, %.preheader133.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.152139
  %i.v = load i32, ptr %i.u, align 4, !tbaa !308
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader133
  %i.x = add i64 %.1129138, 1
  %i.y = add i64 %.1140, 1
  %i.z = add i64 %.152139, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %10
  br i1 %exitcond.not, label %.critedge, label %.preheader133, !llvm.loop !343

bb.d:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %4, align 8, !tbaa !305
  br label %bb.ak

.critedge:                                        ; preds = %bb.c, %.preheader133
  %.1129.lcssa = phi i64 [ %i.r, %bb.c ], [ %.1129138, %.preheader133 ] ; 5 uses
  %.152.lcssa = phi i64 [ %10, %bb.c ], [ %.152139, %.preheader133 ] ; 3 uses
  %.1.lcssa = phi i64 [ %i.t, %bb.c ], [ %.1140, %.preheader133 ] ; 3 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %3, i64 %.1129.lcssa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  %i.ab = add i64 %.1129.lcssa, 1
  %i.ac = sub i64 %i.ab, %.sroa.speculated
  %reass.sub = sub i64 %.1.lcssa, %.sroa.speculated
  %i.ad = add i64 %reass.sub, 1
  store i64 %i.ac, ptr %6, align 8, !tbaa !344
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.g, ptr %i.h, align 8, !tbaa !353
  store ptr %i.g, ptr %i.g, align 8, !tbaa !354
  store i64 0, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !355
  store ptr %i.i, ptr %i.j, align 8, !tbaa !353
  store ptr %i.i, ptr %i.i, align 8, !tbaa !354
  store i64 0, ptr %.sink21.i.sroa.gep, align 8, !tbaa !355
  store ptr %i.k, ptr %i.l, align 8, !tbaa !353
  store ptr %i.k, ptr %i.k, align 8, !tbaa !354
  store i64 0, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !355
  %.not141 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not141, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.g, %.critedge
  %i.ae = icmp ult i64 %.152.lcssa, %10
  br i1 %i.ae, label %.lr.ph152, label %.critedge4.thread

.lr.ph:                                           ; preds = %.critedge, %bb.g
  %.050142 = phi i64 [ %i.az, %bb.g ], [ %.sroa.speculated, %.critedge ] ; 2 uses
  %i.af = sub i64 %.1129.lcssa, %.050142
  %i.ag = load ptr, ptr %1, align 8, !tbaa !145
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !7
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !356
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.m, align 8, !tbaa !356
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !354 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.k
  br i1 %i.am, label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #53
  %i.an = load i64, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !357
  %i.ao = load i64, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  %i.ap = add i64 %i.ao, %i.an
  store i64 %i.ap, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  store i64 0, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !357
  br label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i

_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i: ; preds = %bb.e, %.lr.ph
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !354 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.i
  br i1 %i.ar, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #53
  %i.as = load i64, ptr %.sink21.i.sroa.gep, align 8, !tbaa !357
  %i.at = load i64, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  %i.au = add i64 %i.at, %i.as
  store i64 %i.au, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  store i64 0, ptr %.sink21.i.sroa.gep, align 8, !tbaa !357
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i
  %i.av = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #57
          to label %bb.g unwind label %bb.h       ; 3 uses

bb.g:                                             ; preds = %.sink.split.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i8 32, ptr %i.aw, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.ai, ptr %.sroa.45.0..sroa_idx.i, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.g) #53
  %i.ax = load i64, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  %i.az = add i64 %.050142, -1                    ; 2 uses
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !358

bb.h:                                             ; preds = %.sink.split.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.lr.ph152:                                        ; preds = %.preheader, %bb.s
  %.2151 = phi i64 [ %i.db, %bb.s ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.049150 = phi i64 [ %i.bo, %bb.s ], [ 0, %.preheader ] ; 2 uses
  %.253149 = phi i64 [ %i.dc, %bb.s ], [ %.152.lcssa, %.preheader ] ; 8 uses
  %.2130148 = phi i64 [ %i.cy, %bb.s ], [ %.1129.lcssa, %.preheader ] ; 6 uses
  %.not61 = icmp ult i64 %.049150, %3
  br i1 %.not61, label %.critedge4, label %bb.i

bb.i:                                             ; preds = %.lr.ph152
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.253149 ; 2 uses
  %.not132143 = icmp eq ptr %i.bb, %7
  br i1 %.not132143, label %.critedge4.thread, label %.lr.ph145

.lr.ph145:                                        ; preds = %bb.i, %bb.j
  %.sroa.0105.0144 = phi ptr [ %i.be, %bb.j ], [ %i.bb, %bb.i ] ; 4 uses
  %i.bc = load i32, ptr %.sroa.0105.0144, align 4, !tbaa !308
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %.lr.ph145
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0105.0144, i64 4 ; 2 uses
  %.not132 = icmp eq ptr %i.be, %7
  br i1 %.not132, label %.critedge4.thread, label %.lr.ph145, !llvm.loop !359

.critedge2:                                       ; preds = %.lr.ph145
  %i.bf = icmp eq ptr %.sroa.0105.0144, %7
  br i1 %i.bf, label %.critedge4.thread, label %bb.k

bb.k:                                             ; preds = %.critedge2
  %i.bg = ptrtoint ptr %.sroa.0105.0144 to i64
  %i.bh = sub i64 %i.bg, %i.d
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = sub i64 %i.bi, %.253149
  %.not62 = icmp ult i64 %i.bj, %3
  br i1 %.not62, label %.critedge4, label %.critedge4.thread

.critedge4:                                       ; preds = %bb.k, %.lr.ph152
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.253149
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !308 ; 5 uses
  %i.bm = icmp eq i32 %i.bl, 0                    ; 3 uses
  %i.bn = add i64 %.049150, 1
  %i.bo = select i1 %i.bm, i64 %i.bn, i64 0
  switch i32 %i.bl, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit73 [
    i32 3, label %bb.l
    i32 2, label %bb.l
    i32 0, label %bb.l
  ]

bb.l:                                             ; preds = %.critedge4, %.critedge4, %.critedge4
  %i.bp = select i1 %i.bm, i8 32, i8 45
  %i.bq = load ptr, ptr %1, align 8, !tbaa !145
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %.2130148
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !7
  br i1 %i.bm, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bt = load i64, ptr %i.m, align 8, !tbaa !356
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.m, align 8, !tbaa !356
  %i.bv = load ptr, ptr %i.k, align 8, !tbaa !354 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.k
  br i1 %i.bw, label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i72, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #53
  %i.bx = load i64, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !357
  %i.by = load i64, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  %i.bz = add i64 %i.by, %i.bx
  store i64 %i.bz, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  store i64 0, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !357
  br label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i72

_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i72: ; preds = %bb.n, %bb.m
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !354 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.i
  br i1 %i.cb, label %.sink.split.i70, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i72
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #53
  %i.cc = load i64, ptr %.sink21.i.sroa.gep, align 8, !tbaa !357
  %i.cd = load i64, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  %i.ce = add i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  store i64 0, ptr %.sink21.i.sroa.gep, align 8, !tbaa !357
  br label %.sink.split.i70

bb.p:                                             ; preds = %bb.l
  %i.cf = load i64, ptr %i.n, align 8, !tbaa !360
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.n, align 8, !tbaa !360
  br label %.sink.split.i70

.sink.split.i70:                                  ; preds = %bb.p, %bb.o, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i72
  %.sink22.i = phi ptr [ %i.g, %bb.o ], [ %i.k, %bb.p ], [ %i.g, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i72 ]
  %.sink21.i.sroa.phi = phi ptr [ %.sink21.i.sroa.gep111, %bb.o ], [ %.sink21.i.sroa.gep110, %bb.p ], [ %.sink21.i.sroa.gep111, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i72 ] ; 2 uses
  %i.ch = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #57
          to label %.noexc unwind label %bb.q     ; 3 uses

.noexc:                                           ; preds = %.sink.split.i70
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i8 %i.bp, ptr %i.ci, align 8
  %.sroa.45.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.bs, ptr %.sroa.45.0..sroa_idx.i71, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %.sink22.i) #53
  %i.cj = load i64, ptr %.sink21.i.sroa.phi, align 8, !tbaa !357
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %.sink21.i.sroa.phi, align 8, !tbaa !357
  br label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit73

bb.q:                                             ; preds = %bb.r, %.sink.split.i70
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit73: ; preds = %.noexc, %.critedge4
  %i.cm = and i32 %i.bl, -3
  %or.cond9 = icmp eq i32 %i.cm, 1
  br i1 %or.cond9, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit73
  %i.cn = load ptr, ptr %2, align 8, !tbaa !145
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %.2151
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !7
  %i.cq = load i64, ptr %i.f, align 8, !tbaa !361
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.f, align 8, !tbaa !361
  %i.cs = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #57
          to label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit79 unwind label %bb.q ; 3 uses

_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit79: ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i8 43, ptr %i.ct, align 8
  %.sroa.45.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.cp, ptr %.sroa.45.0..sroa_idx.i77, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #53
  %i.cu = load i64, ptr %.sink21.i.sroa.gep, align 8, !tbaa !357
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %.sink21.i.sroa.gep, align 8, !tbaa !357
  br label %bb.s

bb.s:                                             ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit79, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit73
  %i.cw = icmp ne i32 %i.bl, 1
  %i.cx = zext i1 %i.cw to i64
  %i.cy = add i64 %.2130148, %i.cx                ; 2 uses
  %i.cz = icmp ne i32 %i.bl, 2
  %i.da = zext i1 %i.cz to i64
  %i.db = add i64 %.2151, %i.da                   ; 2 uses
  %i.dc = add nuw i64 %.253149, 1                 ; 2 uses
  %exitcond163.not = icmp eq i64 %i.dc, %10
  br i1 %exitcond163.not, label %.critedge4.thread, label %.lr.ph152, !llvm.loop !362

.critedge4.thread:                                ; preds = %bb.i, %bb.s, %bb.k, %.critedge2, %bb.j, %.preheader
  %.2130.lcssa = phi i64 [ %.1129.lcssa, %.preheader ], [ %.2130148, %bb.j ], [ %.2130148, %bb.i ], [ %.2130148, %.critedge2 ], [ %.2130148, %bb.k ], [ %i.cy, %bb.s ]
  %.253.lcssa = phi i64 [ %.152.lcssa, %.preheader ], [ %.253149, %bb.j ], [ %.253149, %bb.i ], [ %.253149, %.critedge2 ], [ %.253149, %bb.k ], [ %10, %bb.s ]
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader ], [ %.2151, %bb.j ], [ %.2151, %bb.i ], [ %.2151, %.critedge2 ], [ %.2151, %bb.k ], [ %i.db, %bb.s ]
  %.val = load i64, ptr %i.f, align 8, !tbaa !361
  %.val69 = load i64, ptr %i.n, align 8
  %.not.i = icmp ne i64 %.val, 0
  %i.dd = icmp ne i64 %.val69, 0
  %i.de = select i1 %.not.i, i1 true, i1 %i.dd    ; 2 uses
  br i1 %i.de, label %bb.t, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit

.loopexit:                                        ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.t, %bb.u, %.noexc83, %.noexc84, %.noexc85, %bb.v, %bb.x, %.noexc88, %.noexc89, %.noexc90, %_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.t:                                             ; preds = %.critedge4.thread
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.340, i64 noundef 3)
          to label %.noexc82 unwind label %.loopexit.split-lp ; 0 uses

.noexc82:                                         ; preds = %bb.t
  %i.dg = load i64, ptr %i.n, align 8, !tbaa !360
  %.not.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.u

.thread.i.i:                                      ; preds = %.noexc82
  %i.dh = load i64, ptr %i.f, align 8
  br label %bb.w

bb.u:                                             ; preds = %.noexc82
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.181, i64 noundef 1)
          to label %.noexc83 unwind label %.loopexit.split-lp ; 0 uses

.noexc83:                                         ; preds = %bb.u
  %i.dj = load i64, ptr %6, align 8, !tbaa !344
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.dj)
          to label %.noexc84 unwind label %.loopexit.split-lp ; 2 uses

.noexc84:                                         ; preds = %.noexc83
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.341, i64 noundef 1)
          to label %.noexc85 unwind label %.loopexit.split-lp ; 0 uses

.noexc85:                                         ; preds = %.noexc84
  %i.dm = load i64, ptr %i.n, align 8, !tbaa !360
  %i.dn = load i64, ptr %i.m, align 8, !tbaa !356
  %i.do = add i64 %i.dn, %i.dm
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i64 noundef %i.do)
          to label %.noexc86 unwind label %.loopexit.split-lp ; 0 uses

.noexc86:                                         ; preds = %.noexc85
  %.pre.i.i = load i64, ptr %i.n, align 8, !tbaa !360
  %i.dq = icmp eq i64 %.pre.i.i, 0
  %i.dr = load i64, ptr %i.f, align 8             ; 2 uses
  %.not7.i.i = icmp eq i64 %i.dr, 0
  %or.cond.i.i = select i1 %i.dq, i1 true, i1 %.not7.i.i
  br i1 %or.cond.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc86
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.191, i64 noundef 1)
          to label %.noexc87 unwind label %.loopexit.split-lp ; 0 uses

.noexc87:                                         ; preds = %bb.v
  %.pr.i.i = load i64, ptr %i.f, align 8, !tbaa !361
  br label %bb.w

bb.w:                                             ; preds = %.noexc87, %.noexc86, %.thread.i.i
  %i.dt = phi i64 [ %.pr.i.i, %.noexc87 ], [ %i.dr, %.noexc86 ], [ %i.dh, %.thread.i.i ]
  %.not8.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not8.i.i, label %_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.342, i64 noundef 1)
          to label %.noexc88 unwind label %.loopexit.split-lp ; 0 uses

.noexc88:                                         ; preds = %bb.x
  %i.dv = load i64, ptr %i.e, align 8, !tbaa !352
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.dv)
          to label %.noexc89 unwind label %.loopexit.split-lp ; 2 uses

.noexc89:                                         ; preds = %.noexc88
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.341, i64 noundef 1)
          to label %.noexc90 unwind label %.loopexit.split-lp ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN7testing8internal13edit_distance17CreateUnifiedDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_m:bb.a
  %i.ek = load i64, ptr %.sink21.i.sroa.gep, align 8, !tbaa !357
  %i.el = load i64, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  %i.em = add i64 %i.el, %i.ek
  store i64 %i.em, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  store i64 0, ptr %.sink21.i.sroa.gep, align 8, !tbaa !357
  br label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i

_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i: ; preds = %bb.z, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i80
  %.sroa.07.011.i = load ptr, ptr %i.g, align 8, !tbaa !354 ; 2 uses
  %.not12.i = icmp eq ptr %.sroa.07.011.i, %i.g
  br i1 %.not12.i, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i, %.noexc97
  %.sroa.07.013.i = phi ptr [ %.sroa.07.0.i, %.noexc97 ], [ %.sroa.07.011.i, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i, i64 16
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !363 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.eo, ptr %i.a, align 1, !tbaa !13
  %i.ep = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.eq = getelementptr i8, ptr %i.ep, i64 -24
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds i8, ptr %i.o, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !365
  %.not.i3.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i3.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit

bb.ab:                                            ; preds = %.lr.ph.i
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef signext %i.eo)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i = phi ptr [ %i.ev, %bb.aa ], [ %i.o, %bb.ab ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !366 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.ey, null
  br i1 %.not.i4.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.ez = load ptr, ptr %.0.i.i, align 8, !tbaa !26
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !367
  %i.ff = or i32 %i.fe, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fc, i32 noundef %i.ff)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.fg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ey) #53
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull %i.ey, i64 noundef %i.fg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.ad, %bb.ac
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %.noexc97 unwind label %.loopexit ; 0 uses

.noexc97:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %.sroa.07.0.i = load ptr, ptr %.sroa.07.013.i, align 8, !tbaa !354 ; 2 uses
  %.not.i81 = icmp eq ptr %.sroa.07.0.i, %i.g
  br i1 %.not.i81, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit, label %.lr.ph.i, !llvm.loop !368

_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit: ; preds = %.noexc97, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i, %.critedge4.thread
  %i.fj = load ptr, ptr %i.k, align 8, !tbaa !354 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.fj, %i.k
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i ], [ %i.fj, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit ] ; 2 uses
  %i.fk = load ptr, ptr %.09.i.i.i, align 8, !tbaa !354 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 32) #54
  %.not.i.i.i = icmp eq ptr %i.fk, %i.k
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !369

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit
  %i.fl = load ptr, ptr %i.i, align 8, !tbaa !354 ; 2 uses
  %.not8.i.i1.i = icmp eq ptr %i.fl, %i.i
  br i1 %.not8.i.i1.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i, label %.lr.ph.i.i2.i

.lr.ph.i.i2.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i, %.lr.ph.i.i2.i
  %.09.i.i3.i = phi ptr [ %i.fm, %.lr.ph.i.i2.i ], [ %i.fl, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i ] ; 2 uses
  %i.fm = load ptr, ptr %.09.i.i3.i, align 8, !tbaa !354 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i3.i, i64 noundef 32) #54
  %.not.i.i4.i = icmp eq ptr %i.fm, %i.i
  br i1 %.not.i.i4.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i, label %.lr.ph.i.i2.i, !llvm.loop !369

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i: ; preds = %.lr.ph.i.i2.i, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i
  %i.fn = load ptr, ptr %i.g, align 8, !tbaa !354 ; 2 uses
  %.not8.i.i6.i = icmp eq ptr %i.fn, %i.g
  br i1 %.not8.i.i6.i, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit, label %.lr.ph.i.i7.i

.lr.ph.i.i7.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i, %.lr.ph.i.i7.i
  %.09.i.i8.i = phi ptr [ %i.fo, %.lr.ph.i.i7.i ], [ %i.fn, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i ] ; 2 uses
  %i.fo = load ptr, ptr %.09.i.i8.i, align 8, !tbaa !354 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i8.i, i64 noundef 32) #54
  %.not.i.i9.i = icmp eq ptr %i.fo, %i.g
  br i1 %.not.i.i9.i, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit, label %.lr.ph.i.i7.i, !llvm.loop !369

_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit: ; preds = %.lr.ph.i.i7.i, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br i1 %i.de, label %bb.b, label %bb.af

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.h
  %.pn64 = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.cl, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br label %.body

bb.af:                                            ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.fp, ptr %0, align 8, !tbaa !14, !alias.scope !376
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fq, align 8, !tbaa !16, !alias.scope !376
  store i8 0, ptr %i.fp, align 8, !tbaa !13, !alias.scope !376
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !282, !noalias !376 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fs, null
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !376 ; 2 uses
  %i.fv = icmp ugt ptr %i.fs, %i.fu
  %.08.i.i.i = select i1 %i.fv, ptr %i.fs, ptr %i.fu ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i98 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i98, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !284, !noalias !376 ; 2 uses
  %i.fy = ptrtoint ptr %.08.i.i.i to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.fx, i64 noundef %i.ga)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !376 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fp
  br i1 %i.ge, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ah
  %i.gf = load i64, ptr %i.fp, align 8, !tbaa !13, !alias.scope !376
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #54
  br label %.body

bb.ai:                                            ; preds = %bb.af
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gh)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ah

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ai, %bb.ag
  %i.gi = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gi, ptr %5, align 8, !tbaa !26
  %i.gj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.gk = getelementptr i8, ptr %i.gi, i64 -24
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds i8, ptr %5, i64 %i.gl
  store ptr %i.gj, ptr %i.gm, align 8, !tbaa !26
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.gn, ptr %i.o, align 8, !tbaa !26
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.go, align 8, !tbaa !26
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !7  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !13
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #54
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.go, align 8, !tbaa !26
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gv) #53
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gw, ptr %5, align 8, !tbaa !26
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gy = getelementptr i8, ptr %i.gw, i64 -24
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds i8, ptr %5, i64 %i.gz
  store ptr %i.gx, ptr %i.ha, align 8, !tbaa !26
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.hb, align 8, !tbaa !377
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.hc) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %.not.i.i.i99 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !307
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hf, %i.d
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.hg) #54
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  ret void

.body:                                            ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ae
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %bb.ae ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.gc, %bb.ah ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #53
  br label %bb.ak

bb.ak:                                            ; preds = %.body, %bb.d
  %11 = phi ptr [ %i.c, %.body ], [ %.pre, %bb.d ] ; 3 uses
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %.body ], [ %i.aa, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %.not.i.i.i100 = icmp eq ptr %11, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit101, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !307
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %11 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %i.hl) #54
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit101

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit101: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  resume { ptr, i32 } %.pn64.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(112) dereferenceable(112) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !354 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #54
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !369

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !354  ; 2 uses
  %.not8.i.i1 = icmp eq ptr %i.e, %i.d
  br i1 %.not8.i.i1, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit, %.lr.ph.i.i2
  %.09.i.i3 = phi ptr [ %i.f, %.lr.ph.i.i2 ], [ %i.e, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit ] ; 2 uses
  %i.f = load ptr, ptr %.09.i.i3, align 8, !tbaa !354 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i3, i64 noundef 32) #54
  %.not.i.i4 = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i4, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5, label %.lr.ph.i.i2, !llvm.loop !369

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5: ; preds = %.lr.ph.i.i2, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !354  ; 2 uses
  %.not8.i.i6 = icmp eq ptr %i.h, %i.g
  br i1 %.not8.i.i6, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit10, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5, %.lr.ph.i.i7
  %.09.i.i8 = phi ptr [ %i.i, %.lr.ph.i.i7 ], [ %i.h, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5 ] ; 2 uses
  %i.i = load ptr, ptr %.09.i.i8, align 8, !tbaa !354 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i8, i64 noundef 32) #54
  %.not.i.i9 = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i9, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit10, label %.lr.ph.i.i7, !llvm.loop !369

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit10: ; preds = %.lr.ph.i.i7, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %15 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %16 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %17 = alloca %"class.testing::Message", align 8 ; 18 uses
  %18 = alloca %"class.std::vector.33", align 8   ; 11 uses
  %19 = alloca %"class.std::vector.33", align 8   ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #53
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %i.a = load ptr, ptr %17, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #53
  %i.c = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %16, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.b, ptr %i.e, align 8, !tbaa !28
  %i.f = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull @.str.52, i64 noundef 16)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %16) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #53
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %16) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #53
  %i.h = icmp eq ptr %1, null
  %i.i = load ptr, ptr %17, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.h, label %bb.d, label %_ZN4llvh9StringRefC2EPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.83, i64 noundef 6)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.k ; 0 uses

_ZN4llvh9StringRefC2EPKc.exit.i.i.i:              ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #53
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %15, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %i.j, ptr %i.n, align 8, !tbaa !28
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 2 uses
  %.not.i.i23 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i23, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i.i.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull %1, i64 noundef %i.o)
          to label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #53
  br label %.body

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i: ; preds = %bb.e, %_ZN4llvh9StringRefC2EPKc.exit.i.i.i
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #53
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16   ; 3 uses
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.g:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.g
  %i.w = load ptr, ptr %3, align 8, !tbaa !7
  %bcmp.i.i = call i32 @bcmp(ptr %i.w, ptr nonnull %1, i64 %i.s)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.x = load ptr, ptr %17, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #53
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.z, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %14, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !28
  %i.ac = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull @.str.53, i64 noundef 17)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %14) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #53
  br label %.body

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %14) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #53
  %i.ae = load ptr, ptr %17, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #53
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.ag, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %13, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !28
  %i.aj = load ptr, ptr %3, align 8, !tbaa !7
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !16
  %i.al = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef %i.aj, i64 noundef %i.ak)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %13) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #53
  br label %.body

end_hunk_1
begin_hunk_2_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
  call void @llvm.assume(i1 %i.acz)
  %i.ada = add nuw nsw i64 %i.acy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.act, ptr noundef nonnull align 8 dereferenceable(1) %i.acv, i64 %i.ada, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i473

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i472: ; preds = %.noexc481
  store ptr %i.acu, ptr %91, align 8, !tbaa !7, !alias.scope !1368
  %i.adb = load i64, ptr %i.acv, align 8, !tbaa !13
  store i64 %i.adb, ptr %i.act, align 8, !tbaa !13, !alias.scope !1368
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i473

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i473: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i472, %bb.eo
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acs, i64 8 ; 2 uses
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !16
  %i.ade = getelementptr inbounds nuw i8, ptr %91, i64 8
  store i64 %i.add, ptr %i.ade, align 8, !tbaa !16, !alias.scope !1368
  store ptr %i.acv, ptr %i.acs, align 8, !tbaa !7
  store i64 0, ptr %i.adc, align 8, !tbaa !16
  store i8 0, ptr %i.acv, align 8, !tbaa !13
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit482

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit482: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i473, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i478
  %i.adf = load ptr, ptr %104, align 8, !tbaa !7  ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %104, i64 16 ; 2 uses
  %i.adh = icmp eq ptr %i.adf, %i.adg
  br i1 %i.adh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit482
  %i.adi = load i64, ptr %i.adg, align 8, !tbaa !13
  %i.adj = add i64 %i.adi, 1
  call void @_ZdlPvm(ptr noundef %i.adf, i64 noundef %i.adj) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit482, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #53
  %i.adk = load ptr, ptr %92, align 8, !tbaa !7   ; 2 uses
  %i.adl = icmp eq ptr %i.adk, %i.aah
  br i1 %i.adl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485
  %i.adm = load i64, ptr %i.aah, align 8, !tbaa !13
  %i.adn = add i64 %i.adm, 1
  call void @_ZdlPvm(ptr noundef %i.adk, i64 noundef %i.adn) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486
  %i.ado = load ptr, ptr %93, align 8, !tbaa !7   ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 2 uses
  %i.adq = icmp eq ptr %i.ado, %i.adp
  br i1 %i.adq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488
  %i.adr = load i64, ptr %i.adp, align 8, !tbaa !13
  %i.ads = add i64 %i.adr, 1
  call void @_ZdlPvm(ptr noundef %i.ado, i64 noundef %i.ads) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489
  %i.adt = load ptr, ptr %103, align 8, !tbaa !7  ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %103, i64 16 ; 2 uses
  %i.adv = icmp eq ptr %i.adt, %i.adu
  br i1 %i.adv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491
  %i.adw = load i64, ptr %i.adu, align 8, !tbaa !13
  %i.adx = add i64 %i.adw, 1
  call void @_ZdlPvm(ptr noundef %i.adt, i64 noundef %i.adx) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #53
  %i.ady = load ptr, ptr %94, align 8, !tbaa !7   ; 2 uses
  %i.adz = icmp eq ptr %i.ady, %i.xg
  br i1 %i.adz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494
  %i.aea = load i64, ptr %i.xg, align 8, !tbaa !13
  %i.aeb = add i64 %i.aea, 1
  call void @_ZdlPvm(ptr noundef %i.ady, i64 noundef %i.aeb) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495
  %i.aec = load ptr, ptr %95, align 8, !tbaa !7   ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 2 uses
  %i.aee = icmp eq ptr %i.aec, %i.aed
  br i1 %i.aee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i498

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i498: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497
  %i.aef = load i64, ptr %i.aed, align 8, !tbaa !13
  %i.aeg = add i64 %i.aef, 1
  call void @_ZdlPvm(ptr noundef %i.aec, i64 noundef %i.aeg) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i498
  %i.aeh = load ptr, ptr %102, align 8, !tbaa !7  ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %102, i64 16 ; 2 uses
  %i.aej = icmp eq ptr %i.aeh, %i.aei
  br i1 %i.aej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500
  %i.aek = load i64, ptr %i.aei, align 8, !tbaa !13
  %i.ael = add i64 %i.aek, 1
  call void @_ZdlPvm(ptr noundef %i.aeh, i64 noundef %i.ael) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #53
  %i.aem = load ptr, ptr %96, align 8, !tbaa !7   ; 2 uses
  %i.aen = icmp eq ptr %i.aem, %i.uw
  br i1 %i.aen, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503
  %i.aeo = load i64, ptr %i.uw, align 8, !tbaa !13
  %i.aep = add i64 %i.aeo, 1
  call void @_ZdlPvm(ptr noundef %i.aem, i64 noundef %i.aep) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504
  %i.aeq = load ptr, ptr %97, align 8, !tbaa !7   ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, %i.uh
  br i1 %i.aer, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506
  %i.aes = load i64, ptr %i.uh, align 8, !tbaa !13
  %i.aet = add i64 %i.aes, 1
  call void @_ZdlPvm(ptr noundef %i.aeq, i64 noundef %i.aet) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507
  %i.aeu = load ptr, ptr %98, align 8, !tbaa !7   ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.to
  br i1 %i.aev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509
  %i.aew = load i64, ptr %i.to, align 8, !tbaa !13
  %i.aex = add i64 %i.aew, 1
  call void @_ZdlPvm(ptr noundef %i.aeu, i64 noundef %i.aex) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510
  %i.aey = load ptr, ptr %99, align 8, !tbaa !7   ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.sz
  br i1 %i.aez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512
  %i.afa = load i64, ptr %i.sz, align 8, !tbaa !13
  %i.afb = add i64 %i.afa, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afb) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513
  %i.afc = load ptr, ptr %100, align 8, !tbaa !7  ; 2 uses
  %i.afd = icmp eq ptr %i.afc, %i.sj
  br i1 %i.afd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515
  %i.afe = load i64, ptr %i.sj, align 8, !tbaa !13
  %i.aff = add i64 %i.afe, 1
  call void @_ZdlPvm(ptr noundef %i.afc, i64 noundef %i.aff) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516
  %i.afg = load ptr, ptr %101, align 8, !tbaa !7  ; 2 uses
  %i.afh = icmp eq ptr %i.afg, %i.sf
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518
  %i.afi = load i64, ptr %i.sf, align 8, !tbaa !13
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.afg, i64 noundef %i.afj) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #53
  %i.afk = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57
          to label %bb.ep unwind label %bb.pk     ; 3 uses

bb.ep:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521
  %i.afl = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %105, i64 8 ; 6 uses
  store ptr null, ptr %i.afk, align 8, !tbaa !392
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 8 ; 2 uses
  store ptr %i.afk, ptr %105, align 8, !tbaa !1371
  store ptr %i.afn, ptr %i.afm, align 8, !tbaa !1374
  store ptr %i.afn, ptr %i.afl, align 8, !tbaa !1375
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.afo = load ptr, ptr @_ZN7testing8internalL21g_injected_test_argvsB5cxx11E, align 8, !tbaa !1379, !noalias !1376 ; 2 uses
  %.not.i.i523 = icmp eq ptr %i.afo, null
  %spec.select.i.i = select i1 %.not.i.i523, ptr @_ZN7testing8internal7g_argvsB5cxx11E, ptr %i.afo ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !148, !noalias !1376 ; 3 uses
  %i.afr = load ptr, ptr %spec.select.i.i, align 8, !tbaa !145, !noalias !1376 ; 3 uses
  %i.afs = ptrtoint ptr %i.afq to i64
  %i.aft = ptrtoint ptr %i.afr to i64
  %i.afu = sub i64 %i.afs, %i.aft                 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.afq, %i.afr
  br i1 %.not.i.i.i.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.afv = icmp ugt i64 %i.afu, 9223372036854775776
  br i1 %i.afv, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !1381

.noexc.i.i.i:                                     ; preds = %bb.eq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #56
          to label %.noexc526.a unwind label %bb.pl

.noexc526.a:                                      ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.eq
  %i.afw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afu) #57
          to label %bb.er unwind label %bb.pl

bb.er:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.ep
  %.pr.i = phi ptr [ null, %bb.ep ], [ %i.afw, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 10 uses
  store ptr %.pr.i, ptr %106, align 8, !tbaa !145, !alias.scope !1376
  %i.afx = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.afu
  %i.afy = getelementptr inbounds nuw i8, ptr %106, i64 16
  store ptr %i.afx, ptr %i.afy, align 8, !tbaa !150, !alias.scope !1376
  %i.afz = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.afr, ptr %i.afq, ptr noundef %.pr.i)
          to label %bb.eu unwind label %bb.es, !noalias !1376 ; 4 uses

bb.es:                                            ; preds = %bb.er
  %i.aga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i525 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i525, label %.body528, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.afu) #54, !noalias !1376
  br label %.body528

bb.eu:                                            ; preds = %bb.er
  %i.agb = getelementptr inbounds nuw i8, ptr %106, i64 8
  store ptr %i.afz, ptr %i.agb, align 8, !tbaa !148, !alias.scope !1376
  %.not9.i = icmp eq ptr %.pr.i, %i.afz
  br i1 %.not9.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.eu, %.noexc531
  %.sroa.06.010.i = phi ptr [ %i.agh, %.noexc531 ], [ %.pr.i, %bb.eu ] ; 2 uses
  %i.agc = load ptr, ptr %i.afm, align 8, !tbaa !1382
  %i.agd = getelementptr inbounds i8, ptr %i.agc, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #53
  %i.age = load ptr, ptr %.sroa.06.010.i, align 8, !tbaa !7
  %i.agf = call noalias noundef ptr @strdup(ptr noundef %i.age) #53
  store ptr %i.agf, ptr %i.l, align 8, !tbaa !392
  %i.agg = invoke ptr @_ZNSt6vectorIPcSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %105, ptr nonnull %i.agd, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.noexc531 unwind label %bb.pm ; 0 uses

.noexc531:                                        ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #53
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 32 ; 2 uses
  %.not.i530 = icmp eq ptr %i.agh, %i.afz
  br i1 %.not.i530, label %.lr.ph.i.i.i, label %.lr.ph.i, !llvm.loop !1383

.lr.ph.i.i.i:                                     ; preds = %.noexc531, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.agn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pr.i, %.noexc531 ] ; 3 uses
  %i.agi = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.agk = icmp eq ptr %i.agi, %i.agj
  br i1 %i.agk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.agl = load i64, ptr %i.agj, align 8, !tbaa !13
  %i.agm = add i64 %i.agl, 1
  call void @_ZdlPvm(ptr noundef %i.agi, i64 noundef %i.agm) #54
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.agn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.agn, %i.afz
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !149

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %bb.eu
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ev

bb.ev:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.afu) #54
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #53
  %i.ago = load ptr, ptr %84, align 8, !tbaa !7
  %i.agp = load ptr, ptr %i.afm, align 8, !tbaa !1382
  %i.agq = getelementptr inbounds i8, ptr %i.agp, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #53
  %i.agr = call noalias noundef ptr @strdup(ptr noundef %i.ago) #53
  store ptr %i.agr, ptr %i.k, align 8, !tbaa !392
  %i.ags = invoke ptr @_ZNSt6vectorIPcSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %105, ptr nonnull %i.agq, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.ew unwind label %bb.pn     ; 0 uses

bb.ew:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #53
  %i.agt = load ptr, ptr %91, align 8, !tbaa !7
  %i.agu = load ptr, ptr %i.afm, align 8, !tbaa !1382
  %i.agv = getelementptr inbounds i8, ptr %i.agu, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #53
  %i.agw = call noalias noundef ptr @strdup(ptr noundef %i.agt) #53
  store ptr %i.agw, ptr %i.j, align 8, !tbaa !392
  %i.agx = invoke ptr @_ZNSt6vectorIPcSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %105, ptr nonnull %i.agv, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %._crit_edge.i.i535 unwind label %bb.pn ; 0 uses

._crit_edge.i.i535:                               ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #53
  %i.agy = getelementptr inbounds nuw i8, ptr %107, i64 16 ; 6 uses
  store ptr %i.agy, ptr %107, align 8, !tbaa !14
  %i.agz = getelementptr inbounds nuw i8, ptr %107, i64 8
  store i64 0, ptr %i.agz, align 8, !tbaa !16
  store i8 0, ptr %i.agy, align 8, !tbaa !13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %107)
          to label %_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.po

_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i535
  %i.aha = load ptr, ptr %107, align 8, !tbaa !7  ; 2 uses
  %i.ahb = icmp eq ptr %i.aha, %i.agy
  br i1 %i.ahb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ahc = load i64, ptr %i.agy, align 8, !tbaa !13
  %i.ahd = add i64 %i.ahc, 1
  call void @_ZdlPvm(ptr noundef %i.aha, i64 noundef %i.ahd) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #53
  invoke void @_ZN7testing8internal13CaptureStreamEiPKcPPNS0_14CapturedStreamE(i32 noundef 2, ptr noundef nonnull @.str.312, ptr noundef nonnull @_ZN7testing8internalL17g_captured_stderrE)
          to label %bb.ex unwind label %bb.pn

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542
  %i.ahe = call i32 @fflush(ptr noundef null)     ; 0 uses
  %i.ahf = load ptr, ptr %105, align 8, !tbaa !1371
  %i.ahg = load i32, ptr %i.o, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #53
  store ptr %i.ahf, ptr %15, align 8, !tbaa !1384
  %i.ahh = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.ahg, ptr %i.ahh, align 8, !tbaa !1386
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %17, i8 0, i64 152, i1 false)
  %i.ahi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ahj = call i32 @sigemptyset(ptr noundef nonnull %i.ahi) #53, !inline_history !1387 ; 0 uses
  store ptr inttoptr (i64 1 to ptr), ptr %17, align 8, !tbaa !13
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ez, %bb.ex
  %i.ahk = call i32 @sigaction(i32 noundef 27, ptr noundef nonnull %17, ptr noundef nonnull %16) #53, !inline_history !1387
  %i.ahl = icmp eq i32 %i.ahk, -1
  br i1 %i.ahl, label %bb.ez, label %.critedge126.i

bb.ez:                                            ; preds = %bb.ey
  %i.ahm = tail call ptr @__errno_location() #58, !inline_history !1387
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !3
  %i.aho = icmp eq i32 %i.ahn, 4
  br i1 %i.aho, label %bb.ey, label %.critedge.i545, !llvm.loop !1388

.critedge.i545:                                   ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #53
  %i.ahp = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  store ptr %i.ahp, ptr %24, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #53
  store i64 19, ptr %i.i, align 8, !tbaa !15
  %i.ahq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc.i546 unwind label %bb.gc, !inline_history !1387 ; 2 uses

.noexc.i546:                                      ; preds = %.critedge.i545
  store ptr %i.ahq, ptr %24, align 8, !tbaa !7
  %i.ahr = load i64, ptr %i.i, align 8, !tbaa !15 ; 3 uses
  store i64 %i.ahr, ptr %i.ahp, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ahq, ptr noundef nonnull align 1 dereferenceable(19) @.str.265, i64 19, i1 false)
  %i.ahs = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i64 %i.ahr, ptr %i.ahs, align 8, !tbaa !16
  %i.aht = load ptr, ptr %24, align 8, !tbaa !7
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.ahr
  store i8 0, ptr %i.ahu, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.ahv = load i64, ptr %i.ahs, align 8, !tbaa !16, !noalias !1389
  %i.ahw = add i64 %i.ahv, -4611686018427387811
  %i.ahx = icmp ult i64 %i.ahw, 93
  br i1 %i.ahx, label %bb.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.fa:                                            ; preds = %.noexc.i546
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc128.i unwind label %bb.gd, !inline_history !1387

.noexc128.i:                                      ; preds = %bb.fa
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %.noexc.i546
  %i.ahy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.261, i64 noundef 93)
          to label %.noexc129.i unwind label %bb.gd, !inline_history !1387 ; 6 uses

.noexc129.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 5 uses
  store ptr %i.ahz, ptr %23, align 8, !tbaa !14, !alias.scope !1389
  %i.aia = load ptr, ptr %i.ahy, align 8, !tbaa !7 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16 ; 5 uses
  %i.aic = icmp eq ptr %i.aia, %i.aib
  br i1 %i.aic, label %bb.fb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.fb:                                            ; preds = %.noexc129.i
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !16 ; 3 uses
  %i.aif = icmp ult i64 %i.aie, 16
  call void @llvm.assume(i1 %i.aif)
  %i.aig = add nuw nsw i64 %i.aie, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ahz, ptr noundef nonnull align 8 dereferenceable(1) %i.aib, i64 %i.aig, i1 false)
  br label %bb.fc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc129.i
  store ptr %i.aia, ptr %23, align 8, !tbaa !7, !alias.scope !1389
  %i.aih = load i64, ptr %i.aib, align 8, !tbaa !13
end_hunk_2
