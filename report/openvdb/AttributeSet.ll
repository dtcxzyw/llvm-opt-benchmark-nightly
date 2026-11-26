Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeSet?download=true
inline.NumInlined: 3012
inline.NumDeleted: 1016
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK7openvdb5v13_06points12AttributeSet10Descriptor10groupIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i.i = select i1 %i.n, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.b, !llvm.loop !7

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.o, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !70   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !100  ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.m

_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i, %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !70
  store i8 0, ptr %i.aa, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.20, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !70
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.21, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.ai = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #32 ; 0 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !43
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.k

bb.f:                                             ; preds = %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ap, %bb.g ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.ao, %bb.f ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ar = call ptr @__cxa_begin_catch(ptr %.1) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_011LookupErrorE, i64 16), ptr %i.as, align 8, !tbaa !86
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN7openvdb5v13_011LookupErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aa
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.l
  %i.aw = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.at

bb.m:                                             ; preds = %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = tail call { i64, i8 } @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor10groupIndexEm(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %i.y)
  ret { i64, i8 } %i.ay

bb.n:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define { i64, i8 } @_ZNK7openvdb5v13_06points12AttributeSet10groupIndexEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = tail call { i64, i8 } @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor10groupIndexEm(ptr noundef nonnull align 8 dereferenceable(240) %i.a, i64 noundef %1)
  ret { i64, i8 } %i.b
}

; Function Attrs: mustprogress uwtable
define { i64, i8 } @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor10groupIndexEm(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(240) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4763 = icmp eq ptr %i.d, %i.e
  br i1 %.not4763, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.g = ptrtoint ptr %.sroa.11.1 to i64
  %i.h = ptrtoint ptr %.sroa.034.1 to i64         ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.w, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.sroa.034.067 = phi ptr [ null, %.lr.ph ], [ %.sroa.034.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 12 uses
  %.sroa.031.066 = phi ptr [ %i.d, %.lr.ph ], [ %i.bc, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.sroa.16.065 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 10 uses
  %.sroa.11.064 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.031.066, i64 64 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !100
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.l ; 4 uses
  %i.o = load atomic i8, ptr @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11 acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, !prof !101

bb.c:                                             ; preds = %bb.b
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #32
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !204
  store ptr @.str.44, ptr %i.a, align 8, !tbaa !102, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !204
  store ptr @.str.45, ptr %i.b, align 8, !tbaa !102, !noalias !204
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IPKcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !204
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, ptr nonnull @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #32
  br label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #32
  br label %.body

_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit: ; preds = %bb.e, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 8), align 8, !tbaa !70
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.g:                                             ; preds = %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.g
  %i.y = load ptr, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, align 8, !tbaa !69
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !69
  %bcmp.i.i = call i32 @bcmp(ptr %i.z, ptr %i.y, i64 %i.u)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !70 ; 3 uses
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 40), align 8, !tbaa !70
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread46, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit: ; preds = %bb.h
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 32), align 8, !tbaa !69
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !69
  %bcmp.i4.i = call i32 @bcmp(ptr %i.ai, ptr %i.ah, i64 %i.ad)
  %i.aj = icmp eq i32 %bcmp.i4.i, 0
  br i1 %i.aj, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread46, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread46: ; preds = %bb.h, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit
  %.not.i17 = icmp eq ptr %.sroa.11.064, %.sroa.16.065
  br i1 %.not.i17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread46
  %i.ak = load i64, ptr %i.k, align 8, !tbaa !73
  store i64 %i.ak, ptr %.sroa.11.064, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.11.064, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.j:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread46
  %i.am = ptrtoint ptr %.sroa.16.065 to i64
  %i.an = ptrtoint ptr %.sroa.034.067 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #30
          to label %.noexc18 unwind label %.loopexit ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !73
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !73
  %i.az = icmp sgt i64 %i.ao, 0
  br i1 %i.az, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %.noexc18
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %.sroa.034.067, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %.noexc18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.034.067, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.067, i64 noundef %i.ao) #31
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.i, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit
  %.sroa.11.1 = phi ptr [ %i.al, %bb.i ], [ %.sroa.11.064, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.11.064, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.11.064, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.11.064, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ] ; 5 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.065, %bb.i ], [ %.sroa.16.065, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %i.bb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.16.065, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.16.065, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.16.065, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ] ; 5 uses
  %.sroa.034.1 = phi ptr [ %.sroa.034.067, %bb.i ], [ %.sroa.034.067, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %i.aw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.034.067, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.034.067, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.034.067, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ] ; 10 uses
  %i.bc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.031.066) #34 ; 2 uses
  %.not47 = icmp eq ptr %i.bc, %i.e
  br i1 %.not47, label %._crit_edge, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.sroa.034.0.lcssa95 = phi ptr [ %.sroa.034.1, %._crit_edge ], [ null, %bb.a ]
  %.sroa.16.0.lcssa93 = phi ptr [ %.sroa.16.1, %._crit_edge ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.bd, ptr %2, align 8, !tbaa !71
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !70
  store i8 0, ptr %i.bd, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %._crit_edge.thread
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.22, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.q

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.21, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZNSolsEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #32 ; 0 uses
  %i.bj = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !43
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.u

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.x, %.noexc26, %bb.k
  %.sroa.16.059 = phi ptr [ %.sroa.16.1, %bb.x ], [ %.sroa.16.1, %.noexc26 ], [ %.sroa.16.065, %bb.k ]
  %.sroa.034.053 = phi ptr [ %.sroa.034.1, %bb.x ], [ %.sroa.034.1, %.noexc26 ], [ %.sroa.034.067, %bb.k ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %._crit_edge.thread
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.t

bb.q:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.n
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.r ], [ %i.bp, %bb.q ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %i.bo, %bb.p ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.br = call ptr @__cxa_begin_catch(ptr %.1) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_011LookupErrorE, i64 16), ptr %i.bs, align 8, !tbaa !86
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN7openvdb5v13_011LookupErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.z unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bd
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.v
  %i.bw = load i64, ptr %i.bd, align 8, !tbaa !43
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.body

bb.w:                                             ; preds = %._crit_edge
  %.not.i.i = icmp eq ptr %.sroa.034.1, %.sroa.11.1
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.034.1, ptr %.sroa.11.1, i64 noundef %i.ca)
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.x
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.034.1, ptr %.sroa.11.1)
          to label %_ZNSt6vectorImSaImEED2Ev.exit unwind label %.loopexit.split-lp

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.w, %.noexc26
  %i.cb = lshr i64 %1, 3
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.1, i64 %i.cb
  %i.cd = trunc i64 %1 to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !73
  %i.cg = ptrtoint ptr %.sroa.16.1 to i64
  %i.ch = sub i64 %i.cg, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.1, i64 noundef %i.ch) #31
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %i.cf, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %i.ce, 1
  ret { i64, i8 } %.fca.1.insert

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.sroa.16.057 = phi ptr [ %.sroa.16.065, %bb.f ], [ %.sroa.16.0.lcssa93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %.sroa.16.065, %.loopexit ], [ %.sroa.16.059, %.loopexit.split-lp ]
  %.sroa.034.051 = phi ptr [ %.sroa.034.067, %bb.f ], [ %.sroa.034.0.lcssa95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %.sroa.034.067, %.loopexit ], [ %.sroa.034.053, %.loopexit.split-lp ] ; 3 uses
  %.pn15 = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i29 = icmp eq ptr %.sroa.034.051, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorImSaImEED2Ev.exit30, label %bb.y

bb.y:                                             ; preds = %.body
  %i.ci = ptrtoint ptr %.sroa.16.057 to i64
  %i.cj = ptrtoint ptr %.sroa.034.051 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.051, i64 noundef %i.ck) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit30

_ZNSt6vectorImSaImEED2Ev.exit30:                  ; preds = %.body, %bb.y
  resume { ptr, i32 } %.pn15

bb.z:                                             ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet21groupAttributeIndicesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.44") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.c, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.ak, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  store ptr %.lcssa, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.al, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ak, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 32
  %i.k = tail call noundef ptr @_ZNK7openvdb5v13_06points12AttributeSet8getConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  %i.l = invoke noundef zeroext i1 @_ZNK7openvdb5v13_06points14AttributeArray6isTypeINS1_19TypedAttributeArrayIhNS1_10GroupCodecEEEEEbv(ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit unwind label %.loopexit

_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.m, align 8, !tbaa !73
  store i64 %i.n, ptr %i.h, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !105
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #30
          to label %.noexc8 unwind label %.loopexit ; 4 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !73
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !73
  %i.ac = icmp sgt i64 %i.r, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.i, i64 %i.r, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.r) #31
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x ; 2 uses
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !106
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i9 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %i.g to i64
  %i.ag = ptrtoint ptr %i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ah) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.d, %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit
  %i.ai = phi ptr [ %i.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit ]
  %i.aj = phi ptr [ %i.ad, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.o, %bb.d ], [ %i.h, %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit ]
  %i.ak = phi ptr [ %i.z, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.i, %bb.d ], [ %i.i, %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit ] ; 2 uses
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.016) #34 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7openvdb5v13_06points12AttributeSet8isSharedEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNKSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i32, ptr %i.f monotonic, align 8
  %i.h = icmp ne i32 %i.g, 1
  br label %_ZNKSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit

_ZNKSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet15appendAttributeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairIS8_S8_EjbPKNS0_8MetadataE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.a = load ptr, ptr %1, align 8, !tbaa !41
  call void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15duplicateAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairIS9_S9_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %7, align 8, !tbaa !41
  invoke void @_ZN7openvdb5v13_06points12AttributeSet10Descriptor15setDefaultValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8MetadataE(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %7, align 8, !tbaa !41     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i.i, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70   ; 4 uses
  %i.i = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.d
  %i.p = sub i64 %i.k, %i.h
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i.i = select i1 %i.q, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.d, !llvm.loop !7

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.r, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !70   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.h) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69
  %i.x = call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
  %i.y = sub i64 %i.h, %i.t
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !100
  br label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.c
  %.0.i = phi i64 [ %i.ab, %bb.f ], [ -1, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i ], [ -1, %bb.c ], [ -1, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ]
  %i.ac = load ptr, ptr %1, align 8, !tbaa !41
  invoke void @_ZN7openvdb5v13_06points12AttributeSet15appendAttributeERKNS2_10DescriptorERSt10shared_ptrIS3_EmjbPKNS0_8MetadataEPKNS1_14AttributeArray18ScopedRegistryLockE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(240) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %.0.i, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef null)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !91
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !92
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !86
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #32, !inline_history !8
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #32, !inline_history !8
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_06points12AttributeSet15removeAttributeEm:bb.a
  br label %.body

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %3, align 8, !tbaa !123
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !106
  store i64 %2, ptr %i.l, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !105
  invoke void @_ZN7openvdb5v13_06points12AttributeSet14dropAttributesERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorImSaImEED2Ev.exit unwind label %_ZNSt6vectorImSaImEED2Ev.exit12

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.e

_ZNSt6vectorImSaImEED2Ev.exit12:                  ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 8) #31
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseImSaImEED2Ev.exit.i, %_ZNSt6vectorImSaImEED2Ev.exit12
  %.pn = phi { ptr, i32 } [ %i.q, %_ZNSt6vectorImSaImEED2Ev.exit12 ], [ %i.m, %_ZNSt12_Vector_baseImSaImEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  tail call void @_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet14dropAttributesERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.e = load ptr, ptr %0, align 8, !tbaa !41
  call void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor13duplicateDropERKSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(240) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.f = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN7openvdb5v13_06points12AttributeSet14dropAttributesERKSt6vectorImSaImEERKNS2_10DescriptorERSt10shared_ptrIS8_E(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(240) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !92
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #32, !inline_history !8
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #32, !inline_history !8
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !93

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #32
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.k:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet21removeAttributeUnsafeEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.18") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not = icmp ult i64 %2, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %2 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !72
  store ptr null, ptr %i.i, align 8, !tbaa !122
  store ptr null, ptr %i.j, align 8, !tbaa !42
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !72
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor13duplicateDropERKSt6vectorImSaImEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::vector.63", align 8    ; 17 uses
  %5 = alloca %"class.std::map", align 8          ; 13 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor8appendToERSt6vectorINS2_4Util11NameAndTypeESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.bs, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.i = load ptr, ptr %4, align 8, !tbaa !112    ; 2 uses
  %.not239 = icmp eq ptr %i.h, %i.i
  br i1 %.not239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit61, %.preheader
  %.sroa.0139.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0139.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 10 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 2 uses
  %.sroa.17.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.17.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 4 uses
  %.sroa.14.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.14.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 4 uses
  %.sroa.0151.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0151.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 9 uses
  invoke fastcc void @_ZN7openvdb5v13_06points12_GLOBAL__N_112eraseIndicesINS1_12AttributeSet4Util11NameAndTypeEEEvRSt6vectorIT_SaIS8_EERKS7_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ad unwind label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit61
  %i.l = phi ptr [ %i.i, %.lr.ph ], [ %i.cy, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ]
  %storemerge212 = phi i64 [ 0, %.lr.ph ], [ %i.cw, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 13 uses
  %.sroa.0151.0211 = phi ptr [ null, %.lr.ph ], [ %.sroa.0151.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 12 uses
  %.sroa.11.0210 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 10 uses
  %.sroa.14.0209 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 7 uses
  %.sroa.17.0208 = phi ptr [ null, %.lr.ph ], [ %.sroa.17.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 12 uses
  %.sroa.12.0206 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 9 uses
  %.sroa.0139.0205 = phi ptr [ null, %.lr.ph ], [ %.sroa.0139.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 14 uses
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %i.l, i64 %storemerge212 ; 4 uses
  %i.n = load atomic i8, ptr @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11 acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, !prof !101

bb.e:                                             ; preds = %bb.d
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #32
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !218
  store ptr @.str.44, ptr %i.a, align 8, !tbaa !102, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !218
  store ptr @.str.45, ptr %i.b, align 8, !tbaa !102, !noalias !218
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IPKcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !218
  %i.q = call i32 @__cxa_atexit(ptr nonnull @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, ptr nonnull @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #32
  br label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #32
  br label %.body

_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit: ; preds = %bb.g, %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 8), align 8, !tbaa !70
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

bb.i:                                             ; preds = %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.i
  %i.y = load ptr, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, align 8, !tbaa !69
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !69
  %bcmp.i.i = call i32 @bcmp(ptr %i.z, ptr %i.y, i64 %i.u)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !70 ; 3 uses
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 40), align 8, !tbaa !70
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread160, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit: ; preds = %bb.j
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 32), align 8, !tbaa !69
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !69
  %bcmp.i4.i = call i32 @bcmp(ptr %i.ai, ptr %i.ah, i64 %i.ad)
  %i.aj = icmp eq i32 %bcmp.i4.i, 0
  br i1 %i.aj, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread160, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread160: ; preds = %bb.j, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit
  %.not.i50 = icmp eq ptr %.sroa.11.0210, %.sroa.14.0209
  br i1 %.not.i50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread160
  store i64 %storemerge212, ptr %.sroa.11.0210, align 8, !tbaa !73
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.l:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread160
  %i.ak = ptrtoint ptr %.sroa.11.0210 to i64
  %i.al = ptrtoint ptr %.sroa.0151.0211 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #30
          to label %.noexc51 unwind label %.loopexit ; 4 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store i64 %storemerge212, ptr %i.av, align 8, !tbaa !73
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %.noexc51
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %.sroa.0151.0211, i64 %i.am, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %.noexc51
  %.not.i17.i.i = icmp eq ptr %.sroa.0151.0211, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.0211, i64 noundef %i.am) #31
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.k
  %.sroa.14.5 = phi ptr [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.14.0209, %bb.k ] ; 6 uses
  %.pn = phi ptr [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.11.0210, %bb.k ]
  %.sroa.0151.5 = phi ptr [ %i.au, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0151.0211, %bb.k ] ; 6 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 4 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !124   ; 4 uses
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !124 ; 3 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = ashr i64 %i.bc, 5                       ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.bf = and i64 %i.bc, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.ay, i64 %i.bf ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i ], [ %i.bs, %bb.t ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.br, %bb.t ] ; 9 uses
  %i.bg = load i64, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !73
  %i.bh = icmp eq i64 %i.bg, %storemerge212
  br i1 %i.bh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !73
  %i.bk = icmp eq i64 %i.bj, %storemerge212
  br i1 %i.bk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit319, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !73
  %i.bn = icmp eq i64 %i.bm, %storemerge212
  br i1 %i.bn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit317, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !73
  %i.bq = icmp eq i64 %i.bp, %storemerge212
  br i1 %i.bq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.bs = add nsw i64 %.052.i.i.i, -1
  %i.bt = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bt, label %bb.p, label %._crit_edge.loopexit.i.i.i, !llvm.loop !214

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.t
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ba, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bc, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ay, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.bu = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.bu, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61 [
    i64 3, label %bb.u
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i64, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !73
  %i.bw = icmp eq i64 %i.bv, %storemerge212
  br i1 %i.bw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.v
  %.sroa.032.1.i.i.i = phi ptr [ %i.bx, %bb.v ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.by = load i64, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !73
  %i.bz = icmp eq i64 %i.by, %storemerge212
  br i1 %i.bz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.w
  %.sroa.032.2.i.i.i = phi ptr [ %i.ca, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.cb = load i64, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !73
  %i.cc = icmp eq i64 %i.cb, %storemerge212
  %spec.select.i.i.i = select i1 %i.cc, ptr %.sroa.032.2.i.i.i, ptr %i.az
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit317: ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit319: ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit: ; preds = %bb.p, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit317, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit319, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.u
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.u ], [ %i.cf, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit319 ], [ %i.ce, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit317 ], [ %i.cd, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.p ]
  %.not166 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.az
  br i1 %.not166, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61, label %bb.x

bb.x:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit
  %.not.i52 = icmp eq ptr %.sroa.12.0206, %.sroa.17.0208
  br i1 %.not.i52, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %storemerge212, ptr %.sroa.12.0206, align 8, !tbaa !73
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.12.0206, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

bb.z:                                             ; preds = %bb.x
  %i.ch = ptrtoint ptr %.sroa.17.0208 to i64
  %i.ci = ptrtoint ptr %.sroa.0139.0205 to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 6 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.aa, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53: ; preds = %bb.z
  %i.cl = ashr exact i64 %i.cj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i54 = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i54, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.cm, i64 1152921504606846975)
  %i.cp = select i1 %i.cn, i64 1152921504606846975, i64 %i.co ; 3 uses
  %.not.i.i.i55 = icmp ne i64 %i.cp, 0
  call void @llvm.assume(i1 %.not.i.i.i55)
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #30
          to label %.noexc60 unwind label %.loopexit ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 2 uses
  store i64 %storemerge212, ptr %i.cs, align 8, !tbaa !73
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.ab, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i56

bb.ab:                                            ; preds = %.noexc60
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr align 8 %.sroa.0139.0205, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i56

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i56: ; preds = %bb.ab, %.noexc60
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.not.i17.i.i57 = icmp eq ptr %.sroa.0139.0205, null
  br i1 %.not.i17.i.i57, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0139.0205, i64 noundef %i.cj) #31
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58: ; preds = %bb.ac, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i56
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53
  %.sroa.14.1.ph = phi ptr [ %.sroa.11.0210, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.14.5, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53 ]
  %.sroa.0151.1.ph = phi ptr [ %.sroa.0151.0211, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0151.5, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.m, %bb.aa
  %.sroa.14.1.ph167 = phi ptr [ %.sroa.14.5, %bb.aa ], [ %.sroa.11.0210, %bb.m ]
  %.sroa.0151.1.ph168 = phi ptr [ %.sroa.0151.5, %bb.aa ], [ %.sroa.0151.0211, %bb.m ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorImSaImEE9push_backERKm.exit61:        ; preds = %._crit_edge.i.i.i, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58, %bb.y, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit
  %.sroa.0139.1 = phi ptr [ %.sroa.0139.0205, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.0139.0205, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.0139.0205, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %.sroa.0139.0205, %bb.y ], [ %i.cr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.0139.0205, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.0139.0205, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.0139.0205, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0206, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.12.0206, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.12.0206, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %i.cg, %bb.y ], [ %i.cu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.12.0206, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.12.0206, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.12.0206, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.0208, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.17.0208, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.17.0208, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %.sroa.17.0208, %bb.y ], [ %i.cv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.17.0208, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.17.0208, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.17.0208, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.0209, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.14.5, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.14.0209, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %.sroa.14.5, %bb.y ], [ %.sroa.14.5, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.14.0209, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.14.0209, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.14.5, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0210, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.11.2, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.11.0210, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %.sroa.11.2, %bb.y ], [ %.sroa.11.2, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.11.0210, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.11.0210, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.11.2, %._crit_edge.i.i.i ]
  %.sroa.0151.2 = phi ptr [ %.sroa.0151.0211, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.0151.5, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.0151.0211, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %.sroa.0151.5, %bb.y ], [ %.sroa.0151.5, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.0151.0211, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.0151.0211, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.0151.5, %._crit_edge.i.i.i ] ; 2 uses
  %i.cw = add nuw i64 %storemerge212, 1           ; 2 uses
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.cy = load ptr, ptr %4, align 8, !tbaa !112   ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = sdiv exact i64 %i.db, 104
  %i.dd = icmp ult i64 %i.cw, %i.dc
  br i1 %i.dd, label %bb.d, label %._crit_edge, !llvm.loop !215

bb.ad:                                            ; preds = %._crit_edge
  %i.de = icmp eq ptr %.sroa.0139.0.lcssa, %.sroa.12.0.lcssa
  br i1 %i.de, label %.critedge49, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.df, align 8, !tbaa !125
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.dg, align 8, !tbaa !94
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.df, ptr %i.di, align 8, !tbaa !126
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i64 0, ptr %i.dj, align 8, !tbaa !61
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !94 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %._crit_edge238, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %5, ptr %3, align 8, !tbaa !128
  %i.dm = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.df, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i unwind label %bb.ai ; 3 uses

.noexc.i.i:                                       ; preds = %bb.af, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.do, %.noexc.i.i ], [ %i.dm, %bb.af ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !11

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.dh, align 8, !tbaa !95
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.dm, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.dq, %bb.ag ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !130 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEC2ERKSC_.exit, label %bb.ag, !llvm.loop !12

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEC2ERKSC_.exit: ; preds = %bb.ag
  store ptr %.0.i.i7.i.i.i.i, ptr %i.di, align 8, !tbaa !95
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !61
  store i64 %i.dr, ptr %i.dj, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  store ptr %i.dm, ptr %i.dg, align 8, !tbaa !95
  %.not163235 = icmp eq ptr %.0.i.i.i.i.i.i, %i.df
  br i1 %.not163235, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEC2ERKSC_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.aj

._crit_edge238:                                   ; preds = %bb.au, %bb.ae, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEC2ERKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_ZN7openvdb5v13_06points12AttributeSet10Descriptor6createERKSt6vectorINS2_4Util11NameAndTypeESaIS6_EERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessISH_ESaISt4pairIKSH_mEEERKNS0_7MetaMapE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.dt)
          to label %bb.av unwind label %bb.bm

bb.ah:                                            ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.aj:                                            ; preds = %.lr.ph237, %bb.au
  %.sroa.0123.0236 = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph237 ], [ %.sroa.0123.1, %bb.au ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0123.0236, i64 64 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !100 ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0151.0.lcssa, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !73 ; 8 uses
  %i.eb = load ptr, ptr %2, align 8, !tbaa !124   ; 4 uses
  %i.ec = load ptr, ptr %i.ds, align 8, !tbaa !124 ; 3 uses
  %i.ed = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = ashr i64 %i.ef, 5                       ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.i.i.i74, label %._crit_edge.i.i.i63

.lr.ph.i.i.i74:                                   ; preds = %bb.aj
  %i.ei = and i64 %i.ef, -32
  %scevgep.i.i.i75 = getelementptr i8, ptr %i.eb, i64 %i.ei ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.lr.ph.i.i.i74
  %.052.i.i.i76 = phi i64 [ %i.eg, %.lr.ph.i.i.i74 ], [ %i.ev, %bb.ao ] ; 2 uses
  %.sroa.032.051.i.i.i77 = phi ptr [ %i.eb, %.lr.ph.i.i.i74 ], [ %i.eu, %bb.ao ] ; 9 uses
  %i.ej = load i64, ptr %.sroa.032.051.i.i.i77, align 8, !tbaa !73
  %i.ek = icmp eq i64 %i.ej, %i.ea
  br i1 %i.ek, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i77, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !73
  %i.en = icmp eq i64 %i.em, %i.ea
  br i1 %i.en, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84.loopexit.split.loop.exit327, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i77, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !73
  %i.eq = icmp eq i64 %i.ep, %i.ea
  br i1 %i.eq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84.loopexit.split.loop.exit325, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i77, i64 24
  %i.es = load i64, ptr %i.er, align 8, !tbaa !73
  %i.et = icmp eq i64 %i.es, %i.ea
  br i1 %i.et, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84.loopexit.split.loop.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i77, i64 32
  %i.ev = add nsw i64 %.052.i.i.i76, -1
  %i.ew = icmp sgt i64 %.052.i.i.i76, 1
  br i1 %i.ew, label %bb.ak, label %._crit_edge.loopexit.i.i.i78, !llvm.loop !214

._crit_edge.loopexit.i.i.i78:                     ; preds = %bb.ao
  %.pre59.i.i.i79 = ptrtoint ptr %scevgep.i.i.i75 to i64
  %.pre60.i.i.i80 = sub i64 %i.ed, %.pre59.i.i.i79
  br label %._crit_edge.i.i.i63

._crit_edge.i.i.i63:                              ; preds = %._crit_edge.loopexit.i.i.i78, %bb.aj
  %.pre-phi61.i.i.i64 = phi i64 [ %.pre60.i.i.i80, %._crit_edge.loopexit.i.i.i78 ], [ %i.ef, %bb.aj ]
  %.sroa.032.0.lcssa.i.i.i65 = phi ptr [ %scevgep.i.i.i75, %._crit_edge.loopexit.i.i.i78 ], [ %i.eb, %bb.aj ] ; 5 uses
  %i.ex = ashr exact i64 %.pre-phi61.i.i.i64, 3
  switch i64 %i.ex, label %.lr.ph230.preheader [
    i64 3, label %bb.ap
    i64 2, label %._crit_edge._crit_edge.i.i.i71
    i64 1, label %._crit_edge._crit_edge57.i.i.i66
  ]

.lr.ph230.preheader:                              ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84, %._crit_edge.i.i.i63
  br label %.lr.ph230

bb.ap:                                            ; preds = %._crit_edge.i.i.i63
  %i.ey = load i64, ptr %.sroa.032.0.lcssa.i.i.i65, align 8, !tbaa !73
  %i.ez = icmp eq i64 %i.ey, %i.ea
  br i1 %i.ez, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i65, i64 8
  br label %._crit_edge._crit_edge.i.i.i71

._crit_edge._crit_edge.i.i.i71:                   ; preds = %._crit_edge.i.i.i63, %bb.aq
  %.sroa.032.1.i.i.i73 = phi ptr [ %i.fa, %bb.aq ], [ %.sroa.032.0.lcssa.i.i.i65, %._crit_edge.i.i.i63 ] ; 3 uses
  %i.fb = load i64, ptr %.sroa.032.1.i.i.i73, align 8, !tbaa !73
  %i.fc = icmp eq i64 %i.fb, %i.ea
  br i1 %i.fc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge._crit_edge.i.i.i71
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i73, i64 8
  br label %._crit_edge._crit_edge57.i.i.i66

._crit_edge._crit_edge57.i.i.i66:                 ; preds = %._crit_edge.i.i.i63, %bb.ar
  %.sroa.032.2.i.i.i68 = phi ptr [ %i.fd, %bb.ar ], [ %.sroa.032.0.lcssa.i.i.i65, %._crit_edge.i.i.i63 ] ; 2 uses
  %i.fe = load i64, ptr %.sroa.032.2.i.i.i68, align 8, !tbaa !73
  %i.ff = icmp eq i64 %i.fe, %i.ea
  %spec.select.i.i.i69 = select i1 %i.ff, ptr %.sroa.032.2.i.i.i68, ptr %i.ec
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84.loopexit.split.loop.exit: ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i77, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84.loopexit.split.loop.exit325: ; preds = %bb.am
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i77, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84

end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_06points12AttributeSet14dropAttributesERKSt6vectorImSaImEERKNS2_10DescriptorERSt10shared_ptrIS8_E:bb.a
          cleanup
  %i.v = load ptr, ptr %11, align 8, !tbaa !69    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.g
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.l
  %i.x = load i64, ptr %i.g, align 8, !tbaa !43
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

common.resume:                                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit27.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ], [ %.pn14.i, %_ZNSt6vectorImSaImEED2Ev.exit27.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %common.resume

bb.m:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %3, align 8, !tbaa !41
  store ptr %i.z, ptr %0, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 4 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEaSERKS5_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not7.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !44
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !44
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.n
  %i.aj = phi ptr [ %i.ad, %bb.n ], [ %i.ad, %bb.p ], [ %.pr.pre.i.i.i, %bb.q ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ak, align 8, !tbaa !91
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !92
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !86
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #32, !inline_history !10
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #32, !inline_history !10
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i9.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i9.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.u ], [ %i.ax, %bb.v ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.w, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !93

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !42
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEaSERKS5_.exit

_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEaSERKS5_.exit: ; preds = %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !124   ; 2 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN7openvdb5v13_06points12_GLOBAL__N_112eraseIndicesISt10shared_ptrINS1_14AttributeArrayEEEEvRSt6vectorIT_SaIS8_EERKS7_ImSaImEE.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEaSERKS5_.exit
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = icmp ugt i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %.noexc.i.i.i, label %bb.y, !prof !93

.noexc.i.i.i:                                     ; preds = %bb.x
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #30 ; 11 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !124   ; 4 uses
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 5 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !131

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.bi, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i64, ptr %i.bi, align 8, !tbaa !73
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !73
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt6vectorImSaImEEC2ERKS1_.exit.i:              ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bh, i64 %i.bm ; 8 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.bh to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %.not.i.i.i10 = icmp eq ptr %i.bj, %i.bi
  br i1 %.not.i.i.i10, label %.thread.i, label %bb.ac

.thread.i:                                        ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  store i64 %i.br, ptr %4, align 8, !tbaa !124
  store i64 %i.bs, ptr %5, align 8, !tbaa !124
  %i.bt = ashr exact i64 %i.bm, 3
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bt, i1 true)
  %i.bv = shl nuw nsw i64 %i.bu, 1
  %i.bw = sub nuw nsw i64 126, %i.bv
  invoke void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEElNS1_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %i.bw)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.ac
  store i64 %i.br, ptr %6, align 8, !tbaa !124
  store i64 %i.bs, ptr %7, align 8, !tbaa !124
  invoke void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %7)
          to label %.preheader.i.i.i.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i.i.i.preheader.i:                     ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ad, %.preheader.i.i.i.preheader.i
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.bx, %bb.ad ], [ %i.bh, %.preheader.i.i.i.preheader.i ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.bx, %i.bq
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.preheader.i.i.i.i
  %i.by = load i64, ptr %.sroa.09.0.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.ca = icmp eq i64 %i.by, %i.bz
  br i1 %i.ca, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !13

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i: ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 16 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.cb, %i.bq
  br i1 %.not18.i.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.i.a, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i, %14
  %i.cc = phi i64 [ %i.ce, %14 ], [ %i.by, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i ]
  %i.cd = phi ptr [ %15, %14 ], [ %i.cb, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i ] ; 2 uses
  %.sroa.0.019.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %14 ], [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i ] ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !73 ; 3 uses
  %i.cf = icmp eq i64 %i.cc, %i.ce
  br i1 %i.cf, label %14, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 8 ; 2 uses
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !73
  br label %14

14:                                               ; preds = %bb.ae, %.lr.ph.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.019.i.i.i, %.lr.ph.i.i.i ], [ %i.cg, %bb.ae ] ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %.not.i.i17.i = icmp eq ptr %15, %i.bq
  br i1 %.not.i.i17.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.i.a, label %.lr.ph.i.i.i, !llvm.loop !14

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.i.a: ; preds = %14, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i.a = phi ptr [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %14 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.a, i64 8 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %i.ch, %i.bq
  br i1 %.not.i.i18.i, label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.i.a
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.bs
  %i.ck = getelementptr inbounds i8, ptr %i.bh, i64 %i.cj
  br label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i

_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i: ; preds = %.preheader.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.i.a, %.thread.i
  %.sroa.12.0.i = phi ptr [ %i.bq, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.i.a ], [ %i.ck, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i ], [ %i.bq, %.thread.i ], [ %i.bq, %.preheader.i.i.i.i ] ; 2 uses
  %i.cl = load i64, ptr %i.bh, align 8, !tbaa !73
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !52
  %i.co = load ptr, ptr %i.az, align 8, !tbaa !51
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %.not.i = icmp ult i64 %i.cl, %i.cs
  br i1 %.not.i, label %.preheader.i, label %bb.af

.preheader.i:                                     ; preds = %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i
  %.not5557.i = icmp eq ptr %i.bh, %.sroa.12.0.i
  br i1 %.not5557.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %.lr.ph.i

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.ct, ptr %8, align 8, !tbaa !71
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.cu, align 8, !tbaa !70
  store i8 0, ptr %i.ct, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.41, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.cw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10) #32 ; 0 uses
  %i.cx = load ptr, ptr %10, align 8, !tbaa !69   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !43
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.an

bb.ai:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.aj:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.al

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn13.i = phi { ptr, i32 } [ %i.de, %bb.ak ], [ %i.dd, %bb.aj ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn13.pn.i = phi { ptr, i32 } [ %.pn13.i, %bb.al ], [ %i.dc, %bb.ai ]
  %.2.i = extractvalue { ptr, i32 } %.pn13.pn.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.df = call ptr @__cxa_begin_catch(ptr %.2.i) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dg = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.dg, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %8) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_011LookupErrorE, i64 16), ptr %i.dg, align 8, !tbaa !86
  invoke void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTIN7openvdb5v13_011LookupErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ct
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %bb.ao
  %i.dk = load i64, ptr %i.ct, align 8, !tbaa !43
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit27.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i, %.preheader.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bf) #31
  br label %_ZN7openvdb5v13_06points12_GLOBAL__N_112eraseIndicesISt10shared_ptrINS1_14AttributeArrayEEEEvRSt6vectorIT_SaIS8_EERKS7_ImSaImEE.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i
  %.sroa.031.058.i = phi ptr [ %i.dq, %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i ], [ %i.bh, %.preheader.i ] ; 2 uses
  %i.dm = load ptr, ptr %i.az, align 8, !tbaa !98
  %i.dn = load i64, ptr %.sroa.031.058.i, align 8, !tbaa !73
  %i.do = getelementptr inbounds [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = invoke ptr @_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.do)
          to label %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i: ; preds = %.lr.ph.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.031.058.i, i64 8 ; 2 uses
  %.not55.i = icmp eq ptr %i.dq, %.sroa.12.0.i
  br i1 %.not55.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %.lr.ph.i, !llvm.loop !219

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %.noexc.i, %bb.ac
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit27.i

_ZNSt6vectorImSaImEED2Ev.exit27.i:                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i
  %.pn14.i = phi { ptr, i32 } [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i ], [ %lpad.loopexit.split-lp42, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bf) #31
  br label %common.resume

bb.ap:                                            ; preds = %bb.an
  unreachable

_ZN7openvdb5v13_06points12_GLOBAL__N_112eraseIndicesISt10shared_ptrINS1_14AttributeArrayEEEEvRSt6vectorIT_SaIS8_EERKS7_ImSaImEE.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEaSERKS5_.exit, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.dr = load ptr, ptr %0, align 8, !tbaa !41
  call void @_ZN7openvdb5v13_06points12AttributeSet10Descriptor24pruneUnusedDefaultValuesEv(ptr noundef nonnull align 8 dereferenceable(240) %i.dr)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %_ZN7openvdb5v13_06points12_GLOBAL__N_112eraseIndicesISt10shared_ptrINS1_14AttributeArrayEEEEvRSt6vectorIT_SaIS8_EERKS7_ImSaImEE.exit
  ret void

bb.ar:                                            ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet10Descriptor24pruneUnusedDefaultValuesEv(ptr noundef nonnull align 8 dereferenceable(240) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::vector.54", align 8    ; 13 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.not72 = icmp eq ptr %i.f, %i.g
  br i1 %.not72, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pre = load ptr, ptr %1, align 8, !tbaa !133   ; 3 uses
  %.pre81 = load ptr, ptr %i.q, align 8, !tbaa !133 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not5974 = icmp eq ptr %.pre, %.pre81
  br i1 %.not5974, label %._crit_edge78, label %.lr.ph77

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.sroa.054.073 = phi ptr [ %i.f, %.lr.ph ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.054.073, i64 32
  store ptr %i.h, ptr %2, align 8, !tbaa !71
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.054.073, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !70   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 %i.w, ptr %i.c, align 8, !tbaa !73
  %i.x = icmp ugt i64 %i.w, 15
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_06points12AttributeSet12readMetadataERSi:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.be, align 8, !tbaa !91
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !92
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #32, !inline_history !6
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !86
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #32, !inline_history !6
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.bh, %bb.m ], [ %i.br, %bb.n ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.o, label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit, !prof !93

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #32
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.o
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !42 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bu, align 8, !tbaa !91
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !92
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #32, !inline_history !2
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !86
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #32, !inline_history !2
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i11 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i11, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.bx, %bb.s ], [ %i.ch, %bb.t ]
  %i.ci = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ci, label %bb.u, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !93

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #32
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.cj = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.016
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !76 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !86
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 200
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.cp = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.at
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !228
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet14readAttributesERSi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.m, %.lr.ph ], [ %i.d, %bb.a ]
  %.04 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.04
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.k = add nuw i64 %.04, 1                      ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !19
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet5writeERSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK7openvdb5v13_06points12AttributeSet15writeDescriptorERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi ptr [ %i.m, %.lr.ph.i ], [ %i.d, %bb.a ]
  %.07.i = phi i64 [ %i.k, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.07.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext false), !inline_history !229
  %i.k = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph.i, label %_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb.exit, !llvm.loop !20

_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb.exit: ; preds = %.lr.ph.i, %bb.a
  tail call void @_ZNK7openvdb5v13_06points12AttributeSet15writeAttributesERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet15writeDescriptorERSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.44", align 8    ; 12 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %2, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.g = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.ah, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 6 uses
  %storemerge22 = phi i64 [ 0, %.lr.ph ], [ %i.al, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.ak, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 10 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %storemerge22
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !84
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %storemerge22, ptr %i.j, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.e:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = ptrtoint ptr %i.k to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.k, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #30
          to label %.noexc11 unwind label %.loopexit19 ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  store i64 %storemerge22, ptr %i.ac, align 8, !tbaa !73
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.k, i64 %i.t, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.t) #31
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !52
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ag = phi ptr [ %.pre43, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.ah = phi ptr [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.h, %bb.d ], [ %i.h, %bb.b ] ; 2 uses
  %i.ai = phi ptr [ %i.af, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.i, %bb.d ], [ %i.i, %bb.b ] ; 4 uses
  %i.aj = phi ptr [ %i.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.q, %bb.d ], [ %i.j, %bb.b ] ; 3 uses
  %i.ak = phi ptr [ %i.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.k, %bb.d ], [ %i.k, %bb.b ] ; 5 uses
  %i.al = add nuw i64 %storemerge22, 1            ; 2 uses
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 4
  %i.aq = icmp ult i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.b, label %bb.i, !llvm.loop !230

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  store ptr %i.aj, ptr %i.e, align 8
  store ptr %i.ai, ptr %i.f, align 8
  %i.ar = icmp eq ptr %i.ak, %i.aj
  store ptr %i.ak, ptr %3, align 8
  br i1 %i.ar, label %.thread, label %bb.j

.thread:                                          ; preds = %.preheader, %bb.a, %bb.i
  %i.as = phi ptr [ null, %bb.a ], [ %i.ak, %bb.i ], [ null, %.preheader ] ; 2 uses
  %i.at = phi ptr [ null, %bb.a ], [ %i.ai, %bb.i ], [ null, %.preheader ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor5writeERSo(ptr noundef nonnull align 8 dereferenceable(240) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.v unwind label %.loopexit.split-lp

.loopexit19:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.k, ptr %3, align 8
  br label %bb.x

.loopexit.split-lp:                               ; preds = %.thread, %bb.f
  %i.av = phi ptr [ %i.at, %.thread ], [ %i.i, %bb.f ]
  %i.aw = phi ptr [ %i.as, %.thread ], [ %i.k, %bb.f ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.ax = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor13duplicateDropERKSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(240) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %4, align 8, !tbaa !41
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor5writeERSo(ptr noundef nonnull align 8 dereferenceable(240) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !42 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bb, align 8, !tbaa !91
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !92
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #32, !inline_history !8
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #32, !inline_history !8
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i12 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i12, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.be, %bb.p ], [ %i.bo, %bb.q ]
  %i.bp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bp, label %bb.r, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !93

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #32
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %.pre44 = load ptr, ptr %3, align 8, !tbaa !123
  br label %bb.v

bb.s:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.br, %bb.t ], [ %i.bq, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.x

bb.v:                                             ; preds = %.thread, %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bs = phi ptr [ %i.as, %.thread ], [ %.pre44, %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !106
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.x:                                             ; preds = %.loopexit19, %.loopexit.split-lp, %bb.u
  %i.by = phi ptr [ %i.ai, %bb.u ], [ %i.i, %.loopexit19 ], [ %i.av, %.loopexit.split-lp ]
  %i.bz = phi ptr [ %i.ak, %bb.u ], [ %i.k, %.loopexit19 ], [ %i.aw, %.loopexit.split-lp ] ; 3 uses
  %.pn9 = phi { ptr, i32 } [ %.pn, %bb.u ], [ %lpad.loopexit, %.loopexit19 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i14 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorImSaImEED2Ev.exit15, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit15

_ZNSt6vectorImSaImEED2Ev.exit15:                  ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.m, %.lr.ph ], [ %i.d, %bb.a ]
  %.07 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.07
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %i.k = add nuw i64 %.07, 1                      ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = icmp ult i64 %i.k, %i.q
end_hunk_3
begin_hunk_4_@_ZNK7openvdb5v13_06points12AttributeSet10Descriptor8appendToERSt6vectorINS2_4Util11NameAndTypeESaIS6_EE:bb.a
bb.d:                                             ; preds = %.noexc, %bb.c
  %.sroa.06.0.i = phi ptr [ %i.t, %.noexc ], [ %.19.i.i.i.i, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.d
  %i.v = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.018.024) #34 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge29:                                    ; preds = %bb.g, %bb.a, %._crit_edge
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !94
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.w)
          to label %_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %._crit_edge29
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #35
  unreachable

_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev.exit: ; preds = %._crit_edge29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.f:                                             ; preds = %.lr.ph28, %bb.g
  %.sroa.014.026 = phi ptr [ %.pre, %.lr.ph28 ], [ %i.af, %bb.g ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.014.026, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.026, i64 40
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !148
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairISE_SE_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.af = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.014.026) #34 ; 2 uses
  %.not21 = icmp eq ptr %i.af, %i.a
  br i1 %.not21, label %._crit_edge29, label %bb.f

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.critedge.i, %bb.d
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessImESaISt4pairIKmS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %lpad.loopexit.split-lp39
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !43
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.m = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !43
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7openvdb5v13_06points12_GLOBAL__N_112eraseIndicesINS1_12AttributeSet4Util11NameAndTypeEEEvRSt6vectorIT_SaIS8_EERKS7_ImSaImEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %3 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %bb.c, !prof !93

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 11 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !124    ; 4 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp sgt i64 %i.n, 8
  br i1 %i.o, label %bb.d, label %bb.e, !prof !131

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 8
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.j, align 8, !tbaa !73
  store i64 %i.q, ptr %i.i, align 8, !tbaa !73
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

_ZNSt6vectorImSaImEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.n ; 8 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.i to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit
  store i64 %i.s, ptr %2, align 8, !tbaa !124
  store i64 %i.t, ptr %3, align 8, !tbaa !124
  %i.u = ashr exact i64 %i.n, 3
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = sub nuw nsw i64 126, %i.w
  invoke void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEElNS1_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %3, i64 noundef %i.x)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.g
  store i64 %i.s, ptr %4, align 8, !tbaa !124
  store i64 %i.t, ptr %5, align 8, !tbaa !124
  invoke void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %5)
          to label %.preheader.i.i.i.preheader unwind label %bb.m

.preheader.i.i.i.preheader:                       ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %bb.h
  %.sroa.09.0.i.i.i = phi ptr [ %i.y, %bb.h ], [ %i.i, %.preheader.i.i.i.preheader ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i.i
  %i.z = load i64, ptr %.sroa.09.0.i.i.i, align 8, !tbaa !73 ; 2 uses
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !73
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !13

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 16 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.ac, %i.r
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.a, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %9
  %i.ad = phi i64 [ %i.af, %9 ], [ %i.z, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ]
  %i.ae = phi ptr [ %10, %9 ], [ %i.ac, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %9 ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !73 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %9, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !73
  br label %9

9:                                                ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ah, %bb.i ] ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.not.i.i17 = icmp eq ptr %10, %i.r
  br i1 %.not.i.i17, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.a, label %.lr.ph.i.i, !llvm.loop !14

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.a: ; preds = %9, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i.a = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %9 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.a, i64 8 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i.i18, label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.a
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.t
  %i.al = getelementptr inbounds i8, ptr %i.i, i64 %i.ak
  br label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit

_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit: ; preds = %.preheader.i.i.i, %.thread, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.a
  %.sroa.12.0 = phi ptr [ %i.r, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.a ], [ %i.al, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i ], [ %i.r, %.thread ], [ %i.r, %.preheader.i.i.i ] ; 2 uses
  %i.am = load i64, ptr %i.i, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !113
  %i.ap = load ptr, ptr %0, align 8, !tbaa !112
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 104
  %.not = icmp ult i64 %i.am, %i.at
  br i1 %.not, label %.preheader, label %bb.j

.preheader:                                       ; preds = %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit
  %.not5658 = icmp eq ptr %i.i, %.sroa.12.0
  br i1 %.not5658, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.au, ptr %6, align 8, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !70
  store i8 0, ptr %i.au, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.41, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8) #32 ; 0 uses
  %i.ay = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !43
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.s

bb.m:                                             ; preds = %.noexc, %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit28

bb.n:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn13 = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %i.bf, %bb.o ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.q ], [ %i.be, %bb.n ]
  %.2 = extractvalue { ptr, i32 } %.pn13.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.bh = call ptr @__cxa_begin_catch(ptr %.2) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %6) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_011LookupErrorE, i64 16), ptr %i.bi, align 8, !tbaa !86
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN7openvdb5v13_011LookupErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.x unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.au
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.t
  %i.bm = load i64, ptr %i.au, align 8, !tbaa !43
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit28

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, %.preheader
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.g) #31
  br label %bb.w

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %.sroa.032.059 = phi ptr [ %i.cn, %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit ], [ %i.i, %.preheader ] ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !146
  %i.bp = load i64, ptr %.sroa.032.059, align 8, !tbaa !73
  %i.bq = getelementptr inbounds [104 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 104 ; 2 uses
  %i.bs = load ptr, ptr %i.an, align 8, !tbaa !146 ; 3 uses
  %.not.i.i25 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i25, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.bt = call noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES9_EET0_T_SB_SA_(ptr noundef nonnull %i.br, ptr noundef %i.bs, ptr noundef %i.bq) ; 0 uses
  %.pre.i.i26 = load ptr, ptr %i.an, align 8, !tbaa !113
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph
  %i.bu = phi ptr [ %.pre.i.i26, %bb.u ], [ %i.bs, %.lr.ph ] ; 6 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -104 ; 2 uses
  store ptr %i.bv, ptr %i.an, align 8, !tbaa !113
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -72
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 -40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !69 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 -24 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !43
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !69 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.bu, i64 -56 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !43
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #31
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.bu, i64 -88 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i.i
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !43
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #31
  br label %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.059, i64 8 ; 2 uses
  %.not56 = icmp eq ptr %i.cn, %.sroa.12.0
  br i1 %.not56, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph, !llvm.loop !304

bb.w:                                             ; preds = %bb.a, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

_ZNSt6vectorImSaImEED2Ev.exit28:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.m
  %.pn14 = phi { ptr, i32 } [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.bd, %bb.m ]
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.g) #31
  resume { ptr, i32 } %.pn14

bb.x:                                             ; preds = %bb.s
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15uniqueGroupNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !71, !alias.scope !337
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cv, align 8, !tbaa !70, !alias.scope !337
  store i8 0, ptr %i.cu, align 8, !tbaa !43, !alias.scope !337
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !118, !noalias !337 ; 3 uses
  %.not.i.not.i.i61 = icmp eq ptr %i.cx, null
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !337 ; 2 uses
  %i.da = icmp ugt ptr %i.cx, %i.cz
  %.08.i.i.i62 = select i1 %i.da, ptr %i.cx, ptr %i.cz ; 2 uses
  %.not5.i.i63 = icmp eq ptr %.08.i.i.i62, null
  %.not.i.i64 = select i1 %.not.i.not.i.i61, i1 true, i1 %.not5.i.i63
  br i1 %.not.i.i64, label %bb.o, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !119, !noalias !337 ; 2 uses
  %i.dd = ptrtoint ptr %.08.i.i.i62 to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.dc, i64 noundef %i.df)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit70 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !69, !alias.scope !337 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cu
  br i1 %i.dj, label %.body68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65: ; preds = %bb.n
  %i.dk = load i64, ptr %i.cu, align 8, !tbaa !43, !alias.scope !337
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #31
  br label %.body68

bb.o:                                             ; preds = %._crit_edge
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit70 unwind label %bb.n

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit70: ; preds = %bb.o, %bb.m
  %i.dn = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dn, ptr %3, align 8, !tbaa !86
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dp = getelementptr i8, ptr %i.dn, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %3, i64 %i.dq
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !86
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ds, align 8, !tbaa !86
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !69 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit70
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !43
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ds, align 8, !tbaa !86
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dz) #32
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ea) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.p

.body68:                                          ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65, %bb.l, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn11.pn = phi { ptr, i32 } [ %i.bn, %.body ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.ct, %bb.l ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65 ], [ %i.dh, %bb.n ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn11.pn

bb.p:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15availableGroupsEv(ptr noundef nonnull align 8 dereferenceable(240) %0) ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61
  %i.e = sub i64 %i.a, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor16canCompactGroupsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15availableGroupsEv(ptr noundef nonnull readonly align 8 dereferenceable(240) %0) ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61
  %i.e = sub i64 %i.a, %i.d
  %i.f = icmp ugt i64 %i.e, 7
  br label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit

_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor17unusedGroupOffsetEm(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(240) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15availableGroupsEv(ptr noundef nonnull readonly align 8 dereferenceable(240) %0) ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit

_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61   ; 5 uses
  %i.e = icmp eq i64 %i.a, %i.d
  br i1 %i.e, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit
  %i.f = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #33
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not75 = icmp eq i64 %i.d, 0
  br i1 %.not75, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.g = shl nuw nsw i64 %i.d, 3
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i unwind label %bb.f ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.d
  %.sroa.040.3 = phi ptr [ %i.h, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.d ] ; 4 uses
  %.sroa.24.3 = phi ptr [ %i.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.not7691 = icmp eq ptr %i.k, %i.l
  br i1 %.not7691, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.not.i.i = icmp eq ptr %.sroa.040.4, %.sroa.14.2
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.m = ptrtoint ptr %.sroa.14.2 to i64
  %i.n = ptrtoint ptr %.sroa.040.4 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = xor i64 %i.r, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.040.4, ptr nonnull %.sroa.14.2, i64 noundef %i.s)
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.040.4, ptr nonnull %.sroa.14.2)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc24, %bb.e, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.c, %bb.l
  %.sroa.040.1 = phi ptr [ null, %bb.c ], [ %.sroa.040.0.lcssa133, %bb.l ], [ %.sroa.040.4, %.noexc24 ], [ %.sroa.040.4, %bb.e ], [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ]
  %.sroa.24.1 = phi ptr [ null, %bb.c ], [ %.sroa.24.0.lcssa138, %bb.l ], [ %.sroa.24.4, %.noexc24 ], [ %.sroa.24.4, %bb.e ], [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ]
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.sroa.037.095 = phi ptr [ %i.al, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.k, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.sroa.24.094 = phi ptr [ %.sroa.24.4, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.24.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 4 uses
  %.sroa.14.093 = phi ptr [ %.sroa.14.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.040.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 3 uses
  %.sroa.040.092 = phi ptr [ %.sroa.040.4, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.040.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.037.095, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.14.093, %.sroa.24.094
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73
  store i64 %i.v, ptr %.sroa.14.093, align 8, !tbaa !73
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.h:                                             ; preds = %.lr.ph
  %i.w = ptrtoint ptr %.sroa.24.094 to i64
  %i.x = ptrtoint ptr %.sroa.040.092 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #30
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !73
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !73
  %i.aj = icmp sgt i64 %i.y, 0
  br i1 %i.aj, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %.sroa.040.092, i64 %i.y, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc27
  %.not.i17.i.i = icmp eq ptr %.sroa.040.092, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.092, i64 noundef %i.y) #31
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.g
  %.sroa.040.4 = phi ptr [ %i.ag, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.040.092, %bb.g ] ; 9 uses
  %.pn78 = phi ptr [ %i.ah, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.14.093, %bb.g ]
  %.sroa.24.4 = phi ptr [ %i.ak, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.24.094, %bb.g ] ; 5 uses
  %.sroa.14.2 = getelementptr inbounds nuw i8, ptr %.pn78, i64 8 ; 7 uses
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.037.095) #34 ; 2 uses
  %.not76 = icmp eq ptr %i.al, %i.l
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.i
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %._crit_edge, %.noexc24
  %.not.i.i140 = phi i1 [ false, %.noexc24 ], [ true, %._crit_edge ], [ true, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.sroa.24.0.lcssa138 = phi ptr [ %.sroa.24.4, %.noexc24 ], [ %.sroa.24.4, %._crit_edge ], [ %.sroa.24.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.sroa.14.0.lcssa137 = phi ptr [ %.sroa.14.2, %.noexc24 ], [ %.sroa.14.2, %._crit_edge ], [ %.sroa.040.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 4 uses
  %.sroa.040.0.lcssa133 = phi ptr [ %.sroa.040.4, %.noexc24 ], [ %.sroa.040.4, %._crit_edge ], [ %.sroa.040.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 9 uses
  %.not = icmp eq i64 %1, 4294967295
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.am = invoke noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15availableGroupsEv(ptr noundef nonnull align 8 dereferenceable(240) %0)
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %bb.l
  %i.an = icmp ult i64 %1, %i.am
  br i1 %i.an, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ao = ptrtoint ptr %.sroa.14.0.lcssa137 to i64 ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.040.0.lcssa133 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = ashr i64 %i.aq, 5                       ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.at = and i64 %i.aq, -32
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.040.0.lcssa133, i64 %i.at ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ %i.bg, %bb.s ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.040.0.lcssa133, %.lr.ph.i.i.i ], [ %i.bf, %bb.s ] ; 9 uses
  %i.au = load i64, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !73
  %i.av = icmp eq i64 %i.au, %1
  br i1 %i.av, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !73
  %i.ay = icmp eq i64 %i.ax, %1
  br i1 %i.ay, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit147, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !73
  %i.bb = icmp eq i64 %i.ba, %1
  br i1 %i.bb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit145, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !73
  %i.be = icmp eq i64 %i.bd, %1
  br i1 %i.be, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.bg = add nsw i64 %.052.i.i.i, -1
  %i.bh = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bh, label %bb.o, label %._crit_edge.loopexit.i.i.i, !llvm.loop !338

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.s
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ao, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.n
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aq, %bb.n ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.040.0.lcssa133, %bb.n ] ; 5 uses
  %i.bi = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.bi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.t
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.bj = load i64, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !73
  %i.bk = icmp eq i64 %i.bj, %1
  br i1 %i.bk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.u
  %.sroa.032.1.i.i.i = phi ptr [ %i.bl, %bb.u ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bm = load i64, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !73
  %i.bn = icmp eq i64 %i.bm, %1
  br i1 %i.bn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.v
  %.sroa.032.2.i.i.i = phi ptr [ %i.bo, %bb.v ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bp = load i64, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !73
  %i.bq = icmp eq i64 %i.bp, %1
  %spec.select.i.i.i = select i1 %i.bq, ptr %.sroa.032.2.i.i.i, ptr %.sroa.14.0.lcssa137
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit145: ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit147: ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit: ; preds = %bb.o, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit145, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit147, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.t
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.t ], [ %i.bt, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit147 ], [ %i.bs, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit145 ], [ %i.br, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.o ]
  %i.bu = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %.sroa.14.0.lcssa137 ; 2 uses
  %brmerge = or i1 %i.bu, %.not.i.i140
  %.mux = select i1 %i.bu, i64 %1, i64 0
  br i1 %brmerge, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, label %.lr.ph109.preheader

.critedge:                                        ; preds = %bb.m, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  br i1 %.not.i.i140, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, %.critedge
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.w
  %.0108 = phi i64 [ %i.bw, %bb.w ], [ 0, %.lr.ph109.preheader ] ; 3 uses
  %.sroa.031.0107 = phi ptr [ %i.bx, %bb.w ], [ %.sroa.040.0.lcssa133, %.lr.ph109.preheader ] ; 2 uses
  %i.bv = load i64, ptr %.sroa.031.0107, align 8, !tbaa !73
  %.not21 = icmp eq i64 %i.bv, %.0108
  br i1 %.not21, label %bb.w, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread

bb.w:                                             ; preds = %.lr.ph109
  %i.bw = add i64 %.0108, 1                       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.031.0107, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.bx, %.sroa.14.0.lcssa137
  br i1 %.not77, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, label %.lr.ph109

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread: ; preds = %bb.w, %.lr.ph109, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, %.critedge, %._crit_edge.i.i.i
  %.017 = phi i64 [ %.mux, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit ], [ %1, %._crit_edge.i.i.i ], [ 0, %.critedge ], [ %i.bw, %bb.w ], [ %.0108, %.lr.ph109 ] ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %.sroa.040.0.lcssa133, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread
  %i.by = ptrtoint ptr %.sroa.24.0.lcssa138 to i64
  %i.bz = ptrtoint ptr %.sroa.040.0.lcssa133 to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0.lcssa133, i64 noundef %i.ca) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.y:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.sroa.040.2 = phi ptr [ %.sroa.040.1, %bb.f ], [ %.sroa.040.092, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.24.2 = phi ptr [ %.sroa.24.1, %bb.f ], [ %.sroa.24.094, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %lpad.loopexit.split-lp165, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i29 = icmp eq ptr %.sroa.040.2, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorImSaImEED2Ev.exit30, label %.thread

.thread:                                          ; preds = %bb.y
  %i.cb = ptrtoint ptr %.sroa.24.2 to i64
  %i.cc = ptrtoint ptr %.sroa.040.2 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.2, i64 noundef %i.cd) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit30

_ZNSt6vectorImSaImEED2Ev.exit30:                  ; preds = %bb.y, %.thread
  resume { ptr, i32 } %.pn

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.x, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit
  %.118 = phi i64 [ -1, %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit ], [ %.017, %bb.x ], [ %.017, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread ], [ -1, %bb.a ]
  ret i64 %.118
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor17requiresGroupMoveERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmSB_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor17unusedGroupOffsetEm(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef -1) ; 2 uses
  store i64 %i.a, ptr %3, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
end_hunk_5
