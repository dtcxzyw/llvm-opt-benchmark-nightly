Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTest?download=true
inline.NumInlined: 10483
inline.NumDeleted: 3377
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_:bb.a
  %i.an = add i64 %i.a, -2
  %i.ao = sub i64 %i.an, %.sroa.08.0.in.sroa.speculated.i.i.i39
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.m
  %.sroa.07.029.i.prol = phi ptr [ %.sroa.07.0.i.prol, %bb.m ], [ %.sroa.07.026.i, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.013.028.i.prol = phi ptr [ %.sroa.013.1.i.prol, %bb.m ], [ %.sroa.08.0.in.sroa.speculated.i.i.i, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.m ], [ 0, %.lr.ph.i.preheader ]
  %i.ap = load i8, ptr %.sroa.07.029.i.prol, align 1, !tbaa !53 ; 2 uses
  %i.aq = load i8, ptr %2, align 1, !tbaa !53
  %i.ar = icmp eq i8 %i.ap, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.prol
  store i8 %i.ap, ptr %.sroa.013.028.i.prol, align 1, !tbaa !53
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.prol, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.prol
  %.sroa.013.1.i.prol = phi ptr [ %.sroa.013.028.i.prol, %.lr.ph.i.prol ], [ %i.as, %bb.l ] ; 3 uses
  %.sroa.07.0.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2964

.lr.ph.i.prol.loopexit:                           ; preds = %bb.m, %.lr.ph.i.preheader
  %.sroa.013.1.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.1.i.prol, %bb.m ]
  %.sroa.07.029.i.unr = phi ptr [ %.sroa.07.026.i, %.lr.ph.i.preheader ], [ %.sroa.07.0.i.prol, %bb.m ]
  %.sroa.013.028.i.unr = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i, %.lr.ph.i.preheader ], [ %.sroa.013.1.i.prol, %bb.m ]
  %i.at = icmp ult i64 %i.ao, 3
  br i1 %i.at, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.r
  %.sroa.07.029.i = phi ptr [ %.sroa.07.0.i.3, %bb.r ], [ %.sroa.07.029.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.sroa.013.028.i = phi ptr [ %.sroa.013.1.i.3, %bb.r ], [ %.sroa.013.028.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.au = load i8, ptr %.sroa.07.029.i, align 1, !tbaa !53 ; 2 uses
  %i.av = load i8, ptr %2, align 1, !tbaa !53
  %i.aw = icmp eq i8 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph.i.1, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  store i8 %i.au, ptr %.sroa.013.028.i, align 1, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i, i64 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.n, %.lr.ph.i
  %.sroa.013.1.i = phi ptr [ %.sroa.013.028.i, %.lr.ph.i ], [ %i.ax, %bb.n ] ; 3 uses
  %.sroa.07.0.i = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i, i64 1
  %i.ay = load i8, ptr %.sroa.07.0.i, align 1, !tbaa !53 ; 2 uses
  %i.az = load i8, ptr %2, align 1, !tbaa !53
  %i.ba = icmp eq i8 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.i.2, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.1
  store i8 %i.ay, ptr %.sroa.013.1.i, align 1, !tbaa !53
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i, i64 1
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.o, %.lr.ph.i.1
  %.sroa.013.1.i.1 = phi ptr [ %.sroa.013.1.i, %.lr.ph.i.1 ], [ %i.bb, %bb.o ] ; 3 uses
  %.sroa.07.0.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i, i64 2
  %i.bc = load i8, ptr %.sroa.07.0.i.1, align 1, !tbaa !53 ; 2 uses
  %i.bd = load i8, ptr %2, align 1, !tbaa !53
  %i.be = icmp eq i8 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph.i.3, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.2
  store i8 %i.bc, ptr %.sroa.013.1.i.1, align 1, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.1, i64 1
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.p, %.lr.ph.i.2
  %.sroa.013.1.i.2 = phi ptr [ %.sroa.013.1.i.1, %.lr.ph.i.2 ], [ %i.bf, %bb.p ] ; 3 uses
  %.sroa.07.0.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i, i64 3
  %i.bg = load i8, ptr %.sroa.07.0.i.2, align 1, !tbaa !53 ; 2 uses
  %i.bh = load i8, ptr %2, align 1, !tbaa !53
  %i.bi = icmp eq i8 %i.bg, %i.bh
  br i1 %i.bi, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.3
  store i8 %i.bg, ptr %.sroa.013.1.i.2, align 1, !tbaa !53
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.2, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.3
  %.sroa.013.1.i.3 = phi ptr [ %.sroa.013.1.i.2, %.lr.ph.i.3 ], [ %i.bj, %bb.q ] ; 2 uses
  %.sroa.07.0.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i, i64 4 ; 2 uses
  %.not.i.3 = icmp eq ptr %.sroa.07.0.i.3, %1
  br i1 %.not.i.3, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit, label %.lr.ph.i, !llvm.loop !2965

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.r, %._crit_edge.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i
  %.sroa.013.2.i = phi ptr [ %1, %._crit_edge.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i ], [ %.sroa.013.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.1.i.3, %bb.r ]
  ret ptr %.sroa.013.2.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK7cmCTest12GetColorCodeB5cxx11ENS_5ColorE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [3 x %"struct.std::pair.1330"], align 8 ; 12 uses
  %4 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %5 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1977
  %i.c = load i8, ptr %i.b, align 1, !tbaa !333, !range !137, !noundef !138
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !2975
  store i64 4, ptr %3, align 8, !tbaa !27, !alias.scope !2976, !noalias !2975
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.389, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !142, !alias.scope !2976, !noalias !2975
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !173, !alias.scope !2976, !noalias !2975
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38, !noalias !2975
  call void @_ZN10cmAlphaNumC1Ei(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %2), !noalias !2975
  call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  %i.g = load ptr, ptr %4, align 8, !tbaa !2979, !noalias !2980 ; 4 uses
  %.not.i.i3.i = icmp eq ptr %i.g, null           ; 2 uses
  %.sroa.3.0..sroa_idx.i.i4.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pn.in.i.i6.i = select i1 %.not.i.i3.i, ptr %.sroa.3.0..sroa_idx.i.i4.i, ptr %i.g
  %.pn.i.i7.i = load ptr, ptr %.pn.in.i.i6.i, align 8, !tbaa !142, !noalias !2980
  %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i3.i, ptr %4, ptr %i.g
  %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i9.i = load i64, ptr %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !27, !noalias !2980
  store i64 %.pn2.i.i9.i, ptr %i.f, align 8, !tbaa !27, !alias.scope !2977, !noalias !2975
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.pn.i.i7.i, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !142, !alias.scope !2977, !noalias !2975
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.g, ptr %i.h, align 8, !tbaa !173, !alias.scope !2977, !noalias !2975
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38, !noalias !2975
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i64 0, ptr %5, align 8, !noalias !2975
  store i8 109, ptr %i.k, align 8, !tbaa !53, !noalias !2975
  store i64 1, ptr %i.j, align 8, !tbaa !27, !noalias !2975
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !142, !noalias !2975
  store i64 1, ptr %i.i, align 8, !tbaa !27, !alias.scope !2981, !noalias !2975
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !142, !alias.scope !2981, !noalias !2975
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr null, ptr %i.l, align 8, !tbaa !173, !alias.scope !2981, !noalias !2975
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %3, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !2975
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !2975
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !2975
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !58
  store i8 0, ptr %i.m, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local double @_ZNK7cmCTest14GetElapsedTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #38
  %i.b = load ptr, ptr %0, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1696
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.c, align 8, !tbaa !27
  %i.d = sub nsw i64 %i.a, %.sroa.0.0.copyload.i2.i
  %i.e = sitofp i64 %i.d to double
  %i.f = fdiv double %i.e, 1.000000e+09
  ret double %i.f
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7cmCTest14CompressStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.z_stream_s, align 8         ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = call i32 @cm_zlib_deflateInit_(ptr noundef nonnull %2, i32 noundef -1, ptr noundef nonnull @.str.390, i32 noundef 112)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZNSt6vectorIhSaIhEED2Ev.exit45

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58
  %i.f = uitofp i64 %i.e to double
  %i.g = call double @llvm.fmuladd.f64(double %i.f, double 1.001000e+00, double 1.300000e+01)
  %i.h = fptosi double %i.g to i32                ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %.noexc28

.noexc28:                                         ; preds = %bb.b
  %5 = zext nneg i32 %i.h to i64                  ; 3 uses
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #41 ; 5 uses
  %i.j = getelementptr i8, ptr %i.i, i64 %5       ; 2 uses
  store i8 0, ptr %i.i, align 1, !tbaa !53
  %i.k = add nsw i64 %5, -1                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc28
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.c, %.noexc28, %bb.b
  %.sroa.1165.0 = phi ptr [ %i.j, %bb.c ], [ %i.j, %.noexc28 ], [ null, %bb.b ] ; 2 uses
  %.sroa.060.0 = phi ptr [ %i.i, %bb.c ], [ %i.i, %.noexc28 ], [ null, %bb.b ] ; 8 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !58
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !2988
  store ptr %i.c, ptr %2, align 8, !tbaa !2989
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.h, ptr %i.q, align 8, !tbaa !2990
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.060.0, ptr %i.r, align 8, !tbaa !2991
  %i.s = invoke i32 @cm_zlib_deflate(ptr noundef nonnull %2, i32 noundef 4)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.not21 = icmp eq i32 %i.s, 1                   ; 3 uses
  br i1 %.not21, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.391, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.u = load ptr, ptr %3, align 8, !tbaa !29
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %3, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 6 uses
  %.not.i.i.i48 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i48, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #39
          to label %.noexc49.a unwind label %bb.p

.noexc49.a:                                       ; preds = %bb.g
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !52
  %.not.i1.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !53
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.z)
          to label %.noexc50 unwind label %bb.p

.noexc50:                                         ; preds = %bb.i
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef signext i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(570) %i.z, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.p, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc50, %bb.h
  %.0.i.i.i = phi i8 [ %i.ad, %bb.h ], [ %i.ah, %.noexc50 ]
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext %.0.i.i.i)
          to label %.noexc52 unwind label %bb.p

.noexc52:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.p ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc52
  call void @llvm.experimental.noalias.scope.decl(metadata !2992)
  call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !59, !alias.scope !2994
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !58, !alias.scope !2994
  store i8 0, ptr %i.ak, align 8, !tbaa !53, !alias.scope !2994
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !61, !noalias !2994 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !2994 ; 2 uses
  %i.aq = icmp ugt ptr %i.an, %i.ap
  %.08.i.i.i = select i1 %i.aq, ptr %i.an, ptr %i.ap ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62, !noalias !2994 ; 2 uses
  %i.at = ptrtoint ptr %.08.i.i.i to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.as, i64 noundef %i.av)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !57, !alias.scope !2994 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ak
  br i1 %i.az, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ba = load i64, ptr %i.ak, align 8, !tbaa !53, !alias.scope !2994
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #40
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  invoke void @_ZN7cmCTest3LogENS_7LogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 7, ptr noundef nonnull align 8 %4, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bd = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ak
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bf = load i64, ptr %i.ak, align 8, !tbaa !53
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bh = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bh, ptr %3, align 8, !tbaa !29
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bj = getelementptr i8, ptr %i.bh, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %3, i64 %i.bk
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bm, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !57 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !53
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #40
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bm, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #38
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bu) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.n:                                             ; preds = %bb.s, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit43

bb.o:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %.noexc52, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc50, %bb.i, %bb.g, %bb.f
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.ak
  br i1 %i.ca, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.q
  %i.cb = load i64, ptr %i.ak, align 8, !tbaa !53
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #40
  br label %.body

.body:                                            ; preds = %bb.q, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn23 = phi { ptr, i32 } [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.bx, %bb.p ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ax, %bb.k ], [ %i.by, %bb.q ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #38
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.o
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.bw, %bb.o ]
end_hunk_0
