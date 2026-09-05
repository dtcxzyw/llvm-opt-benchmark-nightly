Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/file_utils?download=true
inline.NumInlined: 300
inline.NumDeleted: 135
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5draco17WriteBufferToFileEPKhmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !26     ; 3 uses
  %.not.i5.i = icmp eq ptr %i.g, null
  br i1 %.not.i5.i, label %_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #10, !inline_history !1
  br label %_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.b
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !26   ; 3 uses
  %.not.i6.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i6.i, label %_ZN5draco17WriteBufferToFileEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i7.i: ; preds = %bb.d
  %i.k = load ptr, ptr %.pr.i, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i) #10, !inline_history !1
  br label %_ZN5draco17WriteBufferToFileEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5draco17WriteBufferToFileEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.d, %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i7.i
  %.011.i = phi i1 [ %i.e, %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i7.i ], [ %i.e, %bb.d ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %.011.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5draco17WriteBufferToFileEPKvmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.2", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN5draco17FileWriterFactory10OpenWriterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !26     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN5draco17WriteBufferToFileEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %0, i64 noundef %1)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !26     ; 3 uses
  %.not.i5.i = icmp eq ptr %i.g, null
  br i1 %.not.i5.i, label %_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #10, !inline_history !1
  br label %_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.b
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !26   ; 3 uses
  %.not.i6.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i6.i, label %_ZN5draco17WriteBufferToFileEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i7.i: ; preds = %bb.d
  %i.k = load ptr, ptr %.pr.i, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i) #10, !inline_history !1
  br label %_ZN5draco17WriteBufferToFileEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5draco17WriteBufferToFileEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.d, %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i7.i
  %.011.i = phi i1 [ %i.e, %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i7.i ], [ %i.e, %bb.d ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %.011.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN5draco11GetFileSizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @_ZN5draco17FileReaderFactory10OpenReaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco19FileReaderInterfaceESt14default_deleteIS1_EED2Ev.exit6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %.not.i3 = icmp eq ptr %i.g, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN5draco19FileReaderInterfaceESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco19FileReaderInterfaceEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5draco19FileReaderInterfaceEEclEPS1_.exit.i: ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #10, !inline_history !0
  br label %_ZNSt10unique_ptrIN5draco19FileReaderInterfaceESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco19FileReaderInterfaceESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN5draco19FileReaderInterfaceEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.b
  %.pr = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %.not.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN5draco19FileReaderInterfaceESt14default_deleteIS1_EED2Ev.exit6, label %_ZNKSt14default_deleteIN5draco19FileReaderInterfaceEEclEPS1_.exit.i5

_ZNKSt14default_deleteIN5draco19FileReaderInterfaceEEclEPS1_.exit.i5: ; preds = %bb.d
  %i.k = load ptr, ptr %.pr, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #10, !inline_history !0
  br label %_ZNSt10unique_ptrIN5draco19FileReaderInterfaceESt14default_deleteIS1_EED2Ev.exit6

_ZNSt10unique_ptrIN5draco19FileReaderInterfaceESt14default_deleteIS1_EED2Ev.exit6: ; preds = %bb.a, %bb.d, %_ZNKSt14default_deleteIN5draco19FileReaderInterfaceEEclEPS1_.exit.i5
  %.09 = phi i64 [ %i.e, %_ZNKSt14default_deleteIN5draco19FileReaderInterfaceEEclEPS1_.exit.i5 ], [ %i.e, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.09
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEERS4_NS7_IPKcS4_EESF_T_SG_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = ptrtoint ptr %4 to i64                   ; 3 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 10 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !20
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !16
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi i64 [ %i.i, %.noexc.i ], [ %i.f, %bb.a ]
  %i.k = phi ptr [ %i.h, %.noexc.i ], [ %i.b, %bb.a ] ; 7 uses
  %.not5.i.i.i = icmp eq ptr %3, %4
  br i1 %.not5.i.i.i, label %bb.b, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i
  %i.l = ptrtoaddr ptr %i.k to i64
  %min.iters.check = icmp ult i64 %i.f, 8
  %i.m = sub i64 %i.e, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.f, 24
  %n.vec = and i64 %i.f, -32                      ; 5 uses
  %i.o = getelementptr i8, ptr %i.k, i64 %n.vec
  %i.p = getelementptr i8, ptr %3, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %next.gep21 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep21, align 1, !tbaa !19
  %wide.load22 = load <16 x i8>, ptr %i.q, align 1, !tbaa !19
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load22, ptr %i.r, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.f, -8                     ; 4 uses
  %i.t = getelementptr i8, ptr %i.k, i64 %n.vec24
  %i.u = getelementptr i8, ptr %3, i64 %n.vec24
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %next.gep26 = getelementptr i8, ptr %i.k, i64 %index25
  %next.gep27 = getelementptr i8, ptr %3, i64 %index25
  %wide.load28 = load <8 x i8>, ptr %next.gep27, align 1, !tbaa !19
  store <8 x i8> %wide.load28, ptr %next.gep26, align 1, !tbaa !19
  %index.next29 = add nuw i64 %index25, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next29, %n.vec24
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.f, %n.vec24
  br i1 %cmp.n30, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.02.06.i.i.i.ph = phi ptr [ %3, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.02.06.i.i.i.ph33 = ptrtoaddr ptr %.sroa.02.06.i.i.i.ph to i64 ; 2 uses
  %i.w = sub i64 %i.d, %.sroa.02.06.i.i.i.ph33
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.i.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.prol ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.x = load i8, ptr %.sroa.02.06.i.i.i.prol, align 1, !tbaa !19
  store i8 %i.x, ptr %.07.i.i.i.prol, align 1, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !63

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.07.i.i.i.unr = phi ptr [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.prol ]
  %.sroa.02.06.i.i.i.unr = phi ptr [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.prol ]
  %i.aa = sub i64 %.sroa.02.06.i.i.i.ph33, %i.d
  %i.ab = icmp ugt i64 %i.aa, -8
  br i1 %i.ab, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.sroa.02.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ac = load i8, ptr %.sroa.02.06.i.i.i, align 1, !tbaa !19
  store i8 %i.ac, ptr %.07.i.i.i, align 1, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !19
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 2
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !19
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 3
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !19
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !19
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5
  %i.aq = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 5
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !19
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6
  %i.at = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 6
  %i.au = load i8, ptr %i.as, align 1, !tbaa !19
  store i8 %i.au, ptr %i.at, align 1, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 7
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !19
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.ay, %4
  br i1 %.not.i.i.i.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !64

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre16.i.i = load i64, ptr %i.a, align 8, !tbaa !20
  %.pre17.i.i = load ptr, ptr %5, align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i
  %i.ba = phi ptr [ %.pre17.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.k, %._crit_edge.i.i ]
  %i.bb = phi i64 [ %.pre16.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.j, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.bb, ptr %i.c, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  store i8 0, ptr %i.bc, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = load ptr, ptr %0, align 8, !tbaa !16
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.be, %i.bh
  %i.bj = load ptr, ptr %5, align 8, !tbaa !16
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !17
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bi, i64 noundef %i.bf, ptr noundef %i.bj, i64 noundef %i.bk)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.b
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !19
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret ptr %i.bl

bb.d:                                             ; preds = %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.b
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !19
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  resume { ptr, i32 } %i.bq
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null}
!1 = distinct !{ptr @_ZN5draco17WriteBufferToFileEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !7, i64 16}
!16 = !{!15, !12, i64 0}
!17 = !{!15, !14, i64 8}
!18 = !{!13, !12, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!14, !14, i64 0}
!21 = !{!"p1 _ZTSN5draco19FileReaderInterfaceE", !11, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"vtable pointer", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTSN5draco19FileWriterInterfaceE", !11, i64 0}
!26 = !{!25, !25, i64 0}
!27 = distinct !{!27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!28 = distinct !{!28, !27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!29 = distinct !{!29, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!30 = distinct !{!30, !29, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!31 = distinct !{!31, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!32 = distinct !{!32, !31, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!33 = distinct !{!33, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!34 = distinct !{!34, !33, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!35 = distinct !{!35, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!36 = distinct !{!36, !35, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!37 = !{!28}
!38 = !{!30, !28}
!39 = !{!32}
!40 = !{!34}
!41 = !{!36}
!42 = distinct !{!42, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!43 = distinct !{!43, !42, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!44 = !{!43}
!45 = distinct !{!45, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!46 = distinct !{!46, !45, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!47 = !{!46}
!48 = distinct !{!48, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!49 = distinct !{!49, !48, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!50 = !{!49}
!51 = distinct !{!51, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!52 = distinct !{!52, !51, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!53 = !{!52}
!54 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!55 = distinct !{ptr @_ZN5draco16ReadFileToBufferERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIcS4_E, null, null}
!56 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!57 = !{!56, !12, i64 0}
!58 = !{!56, !12, i64 16}
!59 = !{!12, !12, i64 0}
!60 = distinct !{null, null}
!61 = distinct !{!61, !65, !66, !67}
!62 = distinct !{!62, !65, !66, !67}
!63 = distinct !{!63, !69}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = !{!"branch_weights", i32 8, i32 24}
!69 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
