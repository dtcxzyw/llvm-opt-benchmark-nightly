Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix?download=true
inline.NumInlined: 721
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv8MatShape7assign_EPKiS2_:bb.a
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !105

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %bb.e
  ret void

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.r, ptr %i.s, align 4, !tbaa !32
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next
  store i32 %i.u, ptr %i.v, align 4, !tbaa !32
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store i32 %i.x, ptr %i.y, align 4, !tbaa !32
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN2cv8MatShape5beginEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(52) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK2cv8MatShape5beginEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(52) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @_ZN2cv8MatShape3endEv(ptr nofree noundef nonnull readonly align 4 captures(ret: address, provenance) dereferenceable(52) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %0, align 4, !tbaa !32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %i.c = zext nneg i32 %.sroa.speculated to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @_ZNK2cv8MatShape3endEv(ptr nofree noundef nonnull readonly align 4 captures(ret: address, provenance) dereferenceable(52) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %0, align 4, !tbaa !32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %i.c = zext nneg i32 %.sroa.speculated to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv8MatShape4backEv(ptr nofree noundef nonnull readonly align 4 captures(ret: address, provenance) dereferenceable(52) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !29
  %i.b = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr [4 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 8
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr nofree noundef nonnull readonly align 4 captures(ret: address, provenance) dereferenceable(52) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !29
  %i.b = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr [4 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 8
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8MatShape9push_backEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(52) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  %i.b = icmp slt i32 %i.a, 9
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShape9push_backEi, ptr noundef nonnull @.str.10, i32 noundef 113) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !25
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.a, i32 0)
  %.sroa.speculated = add nuw nsw i32 %i.i, 1     ; 2 uses
  store i32 %.sroa.speculated, ptr %0, align 4, !tbaa !29
  %i.j = zext nneg i32 %.sroa.speculated to i64
  %i.k = getelementptr [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store i32 %1, ptr %i.l, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8MatShape12emplace_backEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(52) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  %i.b = icmp slt i32 %i.a, 9
  br i1 %i.b, label %_ZN2cv8MatShape9push_backEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShape9push_backEi, ptr noundef nonnull @.str.10, i32 noundef 113) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !25
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.c

_ZN2cv8MatShape9push_backEi.exit:                 ; preds = %bb.a
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.a, i32 0)
  %.sroa.speculated.i = add nuw nsw i32 %i.i, 1   ; 2 uses
  store i32 %.sroa.speculated.i, ptr %0, align 4, !tbaa !29
  %i.j = zext nneg i32 %.sroa.speculated.i to i64
  %i.k = getelementptr [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store i32 %1, ptr %i.l, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8MatShape6insertEPii(ptr noundef nonnull align 4 dereferenceable(52) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !32     ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.a, i32 0) ; 9 uses
  %i.b = add nuw nsw i32 %.sroa.speculated, 1
  %i.c = icmp slt i32 %i.a, 9
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShape6insertEPii, ptr noundef nonnull @.str.10, i32 noundef 126) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !25
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = zext nneg i32 %.sroa.speculated to i64   ; 2 uses
  %or.cond = icmp ugt i64 %i.o, %i.p
  br i1 %or.cond, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShape6insertEPii, ptr noundef nonnull @.str.10, i32 noundef 128) #25
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.l:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.l
  %i.v = load i64, ptr %i.t, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.r, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  store i32 %i.b, ptr %0, align 4, !tbaa !29
  %i.x = trunc nuw nsw i64 %i.o to i32            ; 3 uses
  %.not26.not31 = icmp samesign ugt i32 %.sroa.speculated, %i.x
  br i1 %.not26.not31, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %7 = sub nuw i32 %.sroa.speculated, %i.x        ; 3 uses
  %min.iters.check = icmp samesign ult i32 %7, 16
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %8 = add nsw i32 %.sroa.speculated, -1
  %9 = zext i32 %8 to i64
  %10 = sub nsw i64 %9, %i.p
  %11 = and i64 %10, 4611686018427387896
  %diff.check = icmp eq i64 %11, 0
  br i1 %diff.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %7, 2147483640                 ; 3 uses
  %12 = sub nsw i32 %.sroa.speculated, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %13 = sub i32 %.sroa.speculated, %index         ; 2 uses
  %14 = sext i32 %13 to i64
  %15 = getelementptr [4 x i8], ptr %i.k, i64 %14 ; 2 uses
  %16 = getelementptr i8, ptr %15, i64 -16
  %17 = getelementptr i8, ptr %15, i64 -32
  %wide.load = load <4 x i32>, ptr %16, align 4, !tbaa !32
  %wide.load39 = load <4 x i32>, ptr %17, align 4, !tbaa !32
  %i.y = zext nneg i32 %13 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %18 = getelementptr inbounds i8, ptr %i.z, i64 -12
  %19 = getelementptr inbounds i8, ptr %i.z, i64 -28
  store <4 x i32> %wide.load, ptr %18, align 4, !tbaa !32
  store <4 x i32> %wide.load39, ptr %19, align 4, !tbaa !32
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.aa = icmp eq i32 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %7, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0.in32.ph = phi i32 [ %.sroa.speculated, %vector.memcheck ], [ %.sroa.speculated, %.lr.ph.preheader ], [ %12, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  store i32 %2, ptr %i.ab, align 4, !tbaa !32
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %.0.in32 = phi i32 [ %.0.a, %.lr.ph ], [ %.0.in32.ph, %.lr.ph.preheader40 ] ; 2 uses
  %.0.a = add nsw i32 %.0.in32, -1                ; 3 uses
  %i.ac = zext nneg i32 %.0.a to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = zext nneg i32 %.0.in32 to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.af
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !32
  %.not26.not = icmp samesign ugt i32 %.0.a, %i.x
  br i1 %.not26.not, label %.lr.ph, label %._crit_edge, !llvm.loop !107

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn23.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8MatShape6insertEPimi(ptr noundef nonnull align 4 dereferenceable(52) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.a, i32 0) ; 6 uses
  %i.b = zext nneg i32 %.sroa.speculated to i64   ; 2 uses
  %i.c = add i64 %2, %i.b                         ; 2 uses
  %i.d = icmp ult i64 %i.c, 10
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShape6insertEPii, ptr noundef nonnull @.str.10, i32 noundef 138) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %or.cond = icmp ugt i64 %i.p, %i.b
  br i1 %or.cond, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShape6insertEPii, ptr noundef nonnull @.str.10, i32 noundef 140) #25
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.l:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !24     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.l
  %i.v = load i64, ptr %i.t, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.k
  %.pn31 = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.r, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.x = trunc nuw nsw i64 %i.c to i32
  store i32 %i.x, ptr %0, align 4, !tbaa !29
  %i.y = trunc nuw nsw i64 %i.p to i32            ; 3 uses
  %.not34.not39 = icmp samesign ugt i32 %.sroa.speculated, %i.y
  br i1 %.not34.not39, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.m
  %i.z = getelementptr [4 x i8], ptr %i.l, i64 %2 ; 2 uses
  %i.aa = sub nuw i32 %.sroa.speculated, %i.y     ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.aa, 12
  %i.ab = shl i64 %2, 2
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond62 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond62, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i32 %i.aa, 2147483640              ; 3 uses
  %i.ac = sub nsw i32 %.sroa.speculated, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = xor i32 %index, -1
  %i.ae = add i32 %.sroa.speculated, %i.ad
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -12
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !tbaa !32
  %wide.load51 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !32
  %i.aj = getelementptr [4 x i8], ptr %i.z, i64 %i.af ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -12
  %i.al = getelementptr i8, ptr %i.aj, i64 -28
  store <4 x i32> %wide.load, ptr %i.ak, align 4, !tbaa !32
  store <4 x i32> %wide.load51, ptr %i.al, align 4, !tbaa !32
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.am = icmp eq i32 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.aa, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.023.in40.ph = phi i32 [ %.sroa.speculated, %.lr.ph ], [ %i.ac, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %bb.m
  %i.an = trunc i64 %2 to i32
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph42, label %._crit_edge

.lr.ph42:                                         ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o ; 2 uses
  %wide.trip.count = and i64 %2, 2147483647       ; 3 uses
  %min.iters.check53 = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check53, label %scalar.ph52.preheader, label %vector.ph54

vector.ph54:                                      ; preds = %.lr.ph42
  %n.vec55 = and i64 %2, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next58, %vector.body56 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index57 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.aq, align 4, !tbaa !32
  store <4 x i32> %broadcast.splat, ptr %i.ar, align 4, !tbaa !32
  %index.next58 = add nuw i64 %index57, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next58, %n.vec55
  br i1 %i.as, label %middle.block59, label %vector.body56, !llvm.loop !109

middle.block59:                                   ; preds = %vector.body56
  %cmp.n60 = icmp eq i64 %wide.trip.count, %n.vec55
  br i1 %cmp.n60, label %._crit_edge, label %scalar.ph52.preheader

scalar.ph52.preheader:                            ; preds = %.lr.ph42, %middle.block59
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph42 ], [ %n.vec55, %middle.block59 ]
  br label %scalar.ph52

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.023.in40 = phi i32 [ %.023, %scalar.ph ], [ %.023.in40.ph, %scalar.ph.preheader ]
  %.023 = add nsw i32 %.023.in40, -1              ; 3 uses
  %i.at = zext nneg i32 %.023 to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !32
  %i.aw = getelementptr [4 x i8], ptr %i.z, i64 %i.at
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !32
end_hunk_0
begin_hunk_1_@_ZN2cv8UMatDataC1EPKNS_12MatAllocatorE
declare void @_ZN2cv8UMatDataC1EPKNS_12MatAllocatorE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #6

declare void @_ZN2cv8fastFreeEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv8UMatDataD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #18

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{!2, !33}
!3 = distinct !{!3, !33}
!4 = distinct !{null}
!5 = distinct !{!5, !33}
!6 = distinct !{!6, !33}
!7 = distinct !{!7, !33}
!8 = distinct !{ptr @_ZN2cv3Mat19getDefaultAllocatorEv, null}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"long", !13, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !21, i64 8, !13, i64 16}
!24 = !{!23, !18, i64 0}
!25 = !{!13, !13, i64 0}
!26 = !{!23, !21, i64 8}
!27 = !{!"_ZTSN2cv10DataLayoutE", !13, i64 0}
!28 = !{!"_ZTSN2cv8MatShapeE", !14, i64 0, !27, i64 4, !14, i64 8, !13, i64 12}
!29 = !{!28, !14, i64 0}
!30 = !{!28, !27, i64 4}
!31 = !{!28, !14, i64 8}
!32 = !{!14, !14, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!"p1 int", !17, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!38, !37, i64 0}
!40 = !{!38, !37, i64 8}
!41 = !{!"vtable pointer", !12, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSN2cv12MatAllocatorE", !17, i64 0}
!44 = !{!"_ZTSN2cv8UMatData10MemoryFlagE", !13, i64 0}
!45 = !{!"p1 _ZTSN2cv8UMatDataE", !17, i64 0}
!46 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!47 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !47, i64 8}
!49 = !{!"_ZTSSt10shared_ptrIvE", !48, i64 0}
!50 = !{!"_ZTSN2cv8UMatDataE", !43, i64 0, !43, i64 8, !14, i64 16, !14, i64 20, !18, i64 24, !18, i64 32, !21, i64 40, !44, i64 48, !17, i64 56, !17, i64 64, !14, i64 72, !14, i64 76, !45, i64 80, !49, i64 88}
!51 = !{!50, !14, i64 16}
!52 = !{!50, !14, i64 20}
!53 = !{!50, !18, i64 24}
!54 = !{!"p1 _ZTSN2cv3MatE", !17, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"any p2 pointer", !17, i64 0}
!57 = !{!"p2 _ZTSN2cv3MatE", !56, i64 0}
!58 = !{!"p2 omnipotent char", !56, i64 0}
!59 = !{!"_ZTSN2cv15NAryMatIteratorE", !57, i64 0, !54, i64 8, !58, i64 16, !14, i64 24, !21, i64 32, !21, i64 40, !14, i64 48, !21, i64 56}
!60 = !{!59, !21, i64 40}
!61 = !{!59, !21, i64 32}
!62 = !{!18, !18, i64 0}
!63 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !17, i64 0}
!64 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !63, i64 0, !14, i64 8}
!65 = !{!64, !14, i64 8}
!66 = !{!"branch_weights", i32 1, i32 1048575}
!67 = !{!43, !43, i64 0}
!68 = !{!"_ZTSN2cv7MatStepE", !13, i64 0}
!69 = !{!"_ZTSN2cv3MatE", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !43, i64 56, !45, i64 64, !28, i64 72, !68, i64 128}
!70 = !{!69, !14, i64 4}
!71 = !{!69, !14, i64 0}
!72 = !{!69, !14, i64 12}
!73 = !{!69, !14, i64 8}
!74 = !{!69, !45, i64 64}
!75 = !{!69, !18, i64 24}
!76 = !{!69, !18, i64 32}
!77 = !{!69, !18, i64 48}
!78 = !{!69, !18, i64 40}
!79 = !{!69, !14, i64 16}
!80 = !{!69, !43, i64 56}
!81 = !{!69, !14, i64 72}
!82 = !{!17, !17, i64 0}
!83 = !{i64 0, i64 80, !25}
!84 = !{!50, !43, i64 8}
!85 = !{!"_ZTSN2cv5Size_IiEE", !14, i64 0, !14, i64 4}
!86 = !{!"_ZTSN2cv11_InputArrayE", !14, i64 0, !17, i64 8, !85, i64 16}
!87 = !{!86, !14, i64 0}
!88 = !{!86, !17, i64 8}
!89 = !{!50, !21, i64 40}
!90 = !{!"_ZTSN2cv5RangeE", !14, i64 0, !14, i64 4}
!91 = !{!90, !14, i64 0}
!92 = !{!90, !14, i64 4}
!93 = !{!"_ZTSN2cv6Point_IiEE", !14, i64 0, !14, i64 4}
!94 = !{!93, !14, i64 4}
!95 = !{!93, !14, i64 0}
!96 = !{!85, !14, i64 4}
!97 = !{!85, !14, i64 0}
!98 = !{!50, !18, i64 32}
!99 = !{!44, !44, i64 0}
!100 = distinct !{!100, !33, !34, !35}
!101 = distinct !{!101, !33, !35, !34}
!102 = distinct !{!102, !36}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !33, !34, !35}
!107 = distinct !{!107, !33, !34}
!108 = distinct !{!108, !33, !34, !35}
!109 = distinct !{!109, !33, !34, !35}
!110 = distinct !{!110, !33, !34}
!111 = distinct !{!111, !33, !35, !34}
!112 = distinct !{!112, !33, !34, !35}
!113 = distinct !{!113, !33, !34, !35}
!114 = distinct !{!114, !36}
!115 = distinct !{!115, !33, !34}
!116 = distinct !{!116, !33, !34}
!117 = distinct !{!117, !33, !34, !35}
!118 = distinct !{!118, !33, !35, !34}
!119 = distinct !{!119, !36}
!120 = !{!38, !37, i64 16}
!121 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!122 = distinct !{!122, !36}
!123 = distinct !{!123, !33, !128}
!124 = distinct !{!124, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!125 = distinct !{!125, !124, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!126 = distinct !{!126, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!127 = distinct !{!127, !126, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!128 = !{!"llvm.loop.peeled.count", i32 1}
!129 = !{!125}
!130 = !{!127}
!131 = !{!127, !125}
!132 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!133 = !{!"_ZTSSt6locale", !132, i64 0}
!134 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !133, i64 56}
!135 = !{!134, !18, i64 40}
!136 = !{!134, !18, i64 32}
!137 = !{!"_ZTSSi", !21, i64 8}
!138 = !{!137, !21, i64 8}
!139 = distinct !{!139, !36}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !36}
!142 = distinct !{!142, !33}
!143 = distinct !{!143, !36}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !36}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !36}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !36}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = distinct !{!158, !33}
!159 = distinct !{!159, !33}
!160 = distinct !{!160, !33}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !33}
!163 = distinct !{!163, !36}
!164 = distinct !{!164, !36}
!165 = distinct !{!165, !36}
!166 = distinct !{!166, !36}
!167 = distinct !{ptr @_ZN2cv3Mat10deallocateEv, ptr @_ZN2cv3Mat19getDefaultAllocatorEv, null}
!168 = !{ptr @_ZN2cv3Mat10deallocateEv}
!169 = distinct !{!169, !36}
!170 = distinct !{!170, !33}
!171 = distinct !{!171, !36}
!172 = distinct !{!172, !33}
!173 = !{!"_ZTSN2cv5Rect_IiEE", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!174 = !{!173, !14, i64 4}
!175 = !{!173, !14, i64 0}
!176 = !{!173, !14, i64 8}
!177 = !{!173, !14, i64 12}
!178 = distinct !{!178, !33}
!179 = distinct !{!179, !33}
!180 = distinct !{!180, !33}
!181 = distinct !{!181, !33}
!182 = !{!"p1 _ZTSN2cv5RangeE", !17, i64 0}
!183 = !{!"_ZTSNSt12_Vector_baseIN2cv5RangeESaIS1_EE17_Vector_impl_dataE", !182, i64 0, !182, i64 8, !182, i64 16}
!184 = !{!183, !182, i64 8}
!185 = !{!183, !182, i64 0}
!186 = distinct !{!186, i1 false, !"_ZNK2cv3Mat8rowRangeEii"}
!187 = distinct !{!187, !186, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!188 = !{!187}
!189 = distinct !{!189, !36}
!190 = distinct !{!190, !33}
!191 = distinct !{!191, !36}
!192 = distinct !{!192, !36}
!193 = distinct !{!193, i1 false, !"_ZNK2cv3Mat8rowRangeEii"}
!194 = distinct !{!194, !193, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!195 = !{!194}
!196 = distinct !{!196, i1 false, !"_ZNK2cv3Mat8rowRangeEii"}
!197 = distinct !{!197, !196, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!198 = !{!197}
!199 = distinct !{!199, i1 false, !"_ZNK2cv3Mat5cloneEv"}
!200 = distinct !{!200, !199, !"_ZNK2cv3Mat5cloneEv: argument 0"}
!201 = distinct !{!201, !36}
!202 = distinct !{!202, i1 false, !"_ZNK2cv3Mat8rowRangeEii"}
!203 = distinct !{!203, !202, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!204 = !{!200}
!205 = !{!203}
!206 = distinct !{!206, !36}
!207 = distinct !{!207, !36}
!208 = distinct !{!208, !33}
!209 = !{!"_ZTSN2cv10AutoBufferIiLm4EEE", !37, i64 0, !21, i64 8, !13, i64 16}
!210 = !{!209, !37, i64 0}
!211 = !{!209, !21, i64 8}
!212 = distinct !{!212, !36}
!213 = distinct !{!213, !33}
!214 = distinct !{!214, !36}
end_hunk_1
