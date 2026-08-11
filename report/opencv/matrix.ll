inline.NumInlined: 721
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv8MatShape6resizeEmi:bb.a
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShape6resizeEmi, ptr noundef nonnull @.str.10, i32 noundef 65) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  %i.h = load i32, ptr %0, align 4, !tbaa !23
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0) ; 2 uses
  %i.i = trunc nuw nsw i64 %1 to i32              ; 2 uses
  store i32 %i.i, ptr %0, align 4, !tbaa !18
  %i.j = icmp samesign ult i32 %.sroa.speculated, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = zext nneg i32 %.sroa.speculated to i64   ; 4 uses
  %i.m = sub nsw i64 %1, %i.l                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  %i.n = add nsw i64 %n.vec, %i.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.k, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !23
  store <4 x i32> %broadcast.splat, ptr %i.o, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %.lr.ph ], [ %i.n, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.e
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %2, ptr %i.q, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %1
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !29
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN2cv8MatShape7reserveEm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(52) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8MatShape6assignEmi(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(52) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShape6assignEmi, ptr noundef nonnull @.str.10, i32 noundef 79) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  %i.h = trunc nuw nsw i64 %1 to i32
  store i32 %i.h, ptr %0, align 4, !tbaa !18
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %i.j = icmp ult i64 %1, 8
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 8
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  store i32 %2, ptr %i.k, align 4, !tbaa !23
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !30

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %bb.e
  ret void

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.g ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.g ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %2, ptr %i.l, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %2, ptr %i.n, align 4, !tbaa !23
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %2, ptr %i.p, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 %2, ptr %i.r, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %2, ptr %i.t, align 4, !tbaa !23
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  store i32 %2, ptr %i.v, align 4, !tbaa !23
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 %2, ptr %i.x, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  store i32 %2, ptr %i.z, align 4, !tbaa !23
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !32
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8MatShape6assignEii(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(52) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = zext i32 %1 to i64                         ; 2 uses
  %i.a = icmp ult i32 %1, 10
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShape6assignEmi, ptr noundef nonnull @.str.10, i32 noundef 79) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 4, !tbaa !18
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN2cv8MatShape6assignEmi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %xtraiter = and i64 %5, 7                       ; 3 uses
  %i.i = icmp ult i32 %1, 8
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %5, 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.f ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.f ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  store i32 %2, ptr %i.j, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %2, ptr %i.l, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %2, ptr %i.n, align 4, !tbaa !23
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %2, ptr %i.p, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 %2, ptr %i.r, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 %2, ptr %i.t, align 4, !tbaa !23
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %2, ptr %i.v, align 4, !tbaa !23
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i32 %2, ptr %i.x, align 4, !tbaa !23
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv8MatShape6assignEmi.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !32

_ZN2cv8MatShape6assignEmi.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv8MatShape6assignEmi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2cv8MatShape6assignEmi.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZN2cv8MatShape6assignEmi.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.epil
  store i32 %2, ptr %i.y, align 4, !tbaa !23
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv8MatShape6assignEmi.exit, label %bb.g, !llvm.loop !33

_ZN2cv8MatShape6assignEmi.exit:                   ; preds = %_ZN2cv8MatShape6assignEmi.exit.loopexit.unr-lcssa, %bb.g, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8MatShape6assignEPKiS2_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(52) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %or.cond.i = icmp ult i64 %i.d, 10
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShape7assign_EPKiS2_, ptr noundef nonnull @.str.10, i32 noundef 98) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.k = trunc nuw nsw i64 %i.d to i32
  store i32 %i.k, ptr %0, align 4, !tbaa !18
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZN2cv8MatShape7assign_EPKiS2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.m = icmp ult i64 %i.d, 4
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.d, 12
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  store i32 %i.o, ptr %i.p, align 4, !tbaa !23
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i
  store i32 %i.r, ptr %i.s, align 4, !tbaa !23
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.1
  store i32 %i.u, ptr %i.v, align 4, !tbaa !23
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.x = load i32, ptr %i.w, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.2
  store i32 %i.x, ptr %i.y, align 4, !tbaa !23
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2cv8MatShape7assign_EPKiS2_.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !34

_ZN2cv8MatShape7assign_EPKiS2_.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv8MatShape7assign_EPKiS2_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2cv8MatShape7assign_EPKiS2_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN2cv8MatShape7assign_EPKiS2_.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !23
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !23
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv8MatShape7assign_EPKiS2_.exit, label %bb.g, !llvm.loop !35

_ZN2cv8MatShape7assign_EPKiS2_.exit:              ; preds = %_ZN2cv8MatShape7assign_EPKiS2_.exit.loopexit.unr-lcssa, %bb.g, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8MatShape7assign_EPKiS2_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(52) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %or.cond = icmp ult i64 %i.d, 10
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShape7assign_EPKiS2_, ptr noundef nonnull @.str.10, i32 noundef 98) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.k = trunc nuw nsw i64 %i.d to i32
  store i32 %i.k, ptr %0, align 4, !tbaa !18
  %.not = icmp eq ptr %2, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.m = icmp ult i64 %i.d, 4
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.d, 12
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod22 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod22)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.o = load i32, ptr %i.n, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.epil
end_hunk_0
