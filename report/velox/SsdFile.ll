inline.NumInlined: 4657
inline.NumDeleted: 2099
begin_hunk_0_@_ZN8facebook5velox11StringIdMap6stringB5cxx11Em:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11AsyncSourceIiE4moveEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.265") align 8 %0, ptr noundef nonnull align 8 dereferenceable(248) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.291", align 16 ; 15 uses
  %3 = alloca %"class.folly::SemiFuture.517", align 8 ; 11 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox11AsyncSourceIiE4moveEv:bb.a
          to label %bb.au unwind label %bb.q

bb.au:                                            ; preds = %bb.at
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !562
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.bf, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !318
  %i.bo = load <2 x ptr>, ptr %i.bm, align 16, !tbaa !318
  store <2 x ptr> %i.bn, ptr %i.bm, align 16, !tbaa !318
  store <2 x ptr> %i.bo, ptr %i.bg, align 8, !tbaa !318
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit, %bb.au
  %i.bp = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #33 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !260
  %.not.i.i.not.i35 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.not.i35, label %bb.ay, label %bb.aw

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox11AsyncSourceIiE4moveEv:bb.a
_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit46:      ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !260 ; 2 uses
  %.not.i47 = icmp eq ptr %i.cp, null
  br i1 %.not.i47, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.bt

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox11AsyncSourceIiE4moveEv:bb.a
  %.pn17.pn.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.bt, %bb.ax ], [ %.pn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24 ], [ %.pn17, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44 ], [ %i.ca, %bb.bf ]
  call void @_ZN5folly10SemiFutureINS_4UnitEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre57 = load ptr, ptr %.phi.trans.insert, align 16, !tbaa !260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.not.i48 = icmp eq ptr %.pre57, null
  br i1 %.not.i48, label %_ZNSt14_Function_baseD2Ev.exit49, label %bb.bw
end_hunk_3
begin_hunk_4_@_ZNSt17bad_function_callD1Ev
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11AsyncSourceIiE7prepareEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.291", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox11AsyncSourceIiE7prepareEv:bb.a

bb.k:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 16, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 16, i1 false), !tbaa.struct !562
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !318
  %i.o = load <2 x ptr>, ptr %i.l, align 16, !tbaa !318
  store <2 x ptr> %i.n, ptr %i.l, align 16, !tbaa !318
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !318
  %i.p = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #33 ; 0 uses
  invoke void @_ZN8facebook5velox11AsyncSourceIiE8makeItemEOSt8functionIFSt10unique_ptrIiSt14default_deleteIiEEvEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox11AsyncSourceIiE7prepareEv:bb.a

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !260 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.m

end_hunk_6
begin_hunk_7_@_ZN8facebook5velox11AsyncSourceIiE7prepareEv:bb.a
bb.q:                                             ; preds = %bb.f, %bb.o, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.p ], [ %.pn, %bb.o ], [ %i.g, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !260 ; 2 uses
  %.not.i10 = icmp eq ptr %i.y, null
  br i1 %.not.i10, label %_ZNSt14_Function_baseD2Ev.exit11, label %bb.r

end_hunk_7
begin_hunk_8_@_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE14_M_move_assignEOS4_:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox7process15ThreadDebugInfoaSEOS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.279", align 16 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox7process15ThreadDebugInfoaSEOS2_:bb.a
  store i8 0, ptr %i.ay, align 1, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !318
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !260
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox7process15ThreadDebugInfoaSEOS2_:bb.a

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 16, i1 false), !tbaa.struct !562
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 16, i1 false), !tbaa.struct !562
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ba, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !318
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !318 ; 2 uses
  store <2 x ptr> %i.bh, ptr %i.bf, align 16, !tbaa !318
  store <2 x ptr> %i.bc, ptr %i.bg, align 8, !tbaa !318
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvvEEaSEOS1_.exit, label %bb.o
end_hunk_10
