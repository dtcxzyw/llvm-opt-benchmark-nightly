Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/string_util?download=true
inline.NumInlined: 330
inline.NumDeleted: 181
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4bssl11string_util21NumberToDecimalStringB5cxx11Ei:bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.w, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bssl11string_util11SplitStringESt17basic_string_viewIcSt11char_traitsIcEEc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, i64 %1, ptr %2, i8 noundef signext %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = sext i8 %3 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.k
  %i.e = phi ptr [ %i.aa, %bb.k ], [ null, %.preheader ] ; 10 uses
  %i.f = phi ptr [ %i.ab, %bb.k ], [ null, %.preheader ] ; 9 uses
  %i.g = phi ptr [ %i.ac, %bb.k ], [ null, %.preheader ] ; 6 uses
  %.sroa.624.0 = phi ptr [ %i.ag, %bb.k ], [ %2, %.preheader ] ; 5 uses
  %.sroa.020.0 = phi i64 [ %i.af, %bb.k ], [ %1, %.preheader ] ; 6 uses
  %.not = icmp eq i64 %.sroa.020.0, 0
  br i1 %.not, label %bb.d, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.b
  %i.h = tail call ptr @memchr(ptr noundef %.sroa.624.0, i32 noundef %i.d, i64 noundef %.sroa.020.0) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.sroa.624.0 to i64
  %i.k = sub i64 %i.i, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.b
  %.1.i = phi i64 [ -1, %bb.b ], [ %i.k, %bb.c ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 4 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.020.0, i64 %.1.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.speculated.i, ptr %i.g, align 8, !tbaa !21
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.624.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !80
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.g, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.g, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store ptr %i.e, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487)
  %i.t = select i1 %i.r, i64 576460752303423487, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #18
          to label %.noexc12 unwind label %.loopexit ; 5 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.w, align 8, !tbaa !21
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.624.0, ptr %.sroa.6.0..sroa_idx18, align 8, !tbaa !80
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc12, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.noexc12 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %.noexc12 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !81, !alias.scope !82
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !79

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc12
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc12 ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.n) #17
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e
  %i.aa = phi ptr [ %i.v, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.e, %bb.e ] ; 4 uses
  %i.ab = phi ptr [ %i.z, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.f, %bb.e ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 3 uses
  %i.ad = icmp eq i64 %.1.i, -1
  br i1 %i.ad, label %.thread.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  %i.ae = add nuw i64 %.1.i, 1                    ; 3 uses
  %.not30 = icmp ult i64 %.1.i, %.sroa.020.0
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ac, ptr %i.b, align 8
  store ptr %i.ab, ptr %i.c, align 8
  store ptr %i.aa, ptr %0, align 8
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %i.ae, i64 noundef %.sroa.020.0) #16
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = sub nuw i64 %.sroa.020.0, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.624.0, i64 %i.ae
  br label %bb.b

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.g, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store ptr %i.e, ptr %0, align 8
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j, %bb.g
  %i.ah = phi ptr [ %i.ab, %bb.j ], [ %i.f, %bb.g ]
  %i.ai = phi ptr [ %i.aa, %bb.j ], [ %i.e, %bb.g ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.aj = phi ptr [ %i.f, %.loopexit ], [ %i.ah, %.loopexit.split-lp ]
  %i.ak = phi ptr [ %i.e, %.loopexit ], [ %i.ai, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #17
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %lpad.phi

.thread.loopexit:                                 ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  store ptr %i.ac, ptr %i.b, align 8
  store ptr %i.ab, ptr %i.c, align 8
  store ptr %i.aa, ptr %0, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bssl11string_util23CollapseWhitespaceASCIIB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(address) %2, i1 noundef zeroext %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !20
  store i8 0, ptr %i.a, align 8, !tbaa !12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not3137 = icmp samesign eq i64 %1, 0
  br i1 %.not3137, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader
  br i1 %3, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %1, 1
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1, %.lr.ph.split.us.preheader.new
  %.041.us = phi ptr [ %2, %.lr.ph.split.us.preheader.new ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1 ] ; 3 uses
  %.02240.us = phi i32 [ 0, %.lr.ph.split.us.preheader.new ], [ %.2.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1 ] ; 3 uses
  %.02339.us = phi i8 [ 1, %.lr.ph.split.us.preheader.new ], [ %.124.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1 ] ; 2 uses
  %.02538.us = phi i8 [ 1, %.lr.ph.split.us.preheader.new ], [ %.227.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1 ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1 ]
  %i.e = load i8, ptr %.041.us, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us
  %i.f = trunc nuw i8 %.02538.us to i1
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split: ; preds = %.lr.ph.split.us, %bb.b
  %.sink = phi i8 [ 32, %bb.b ], [ %i.e, %.lr.ph.split.us ]
  %.227.us.ph = phi i1 [ true, %bb.b ], [ false, %.lr.ph.split.us ]
  %.124.us.ph = phi i8 [ %.02339.us, %bb.b ], [ 0, %.lr.ph.split.us ]
  %i.g = add nsw i32 %.02240.us, 1
  %i.h = sext i32 %.02240.us to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 %.sink, ptr %i.j, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split, %bb.b
  %.227.us = phi i1 [ true, %bb.b ], [ %.227.us.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split ]
  %.124.us = phi i8 [ %.02339.us, %bb.b ], [ %.124.us.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split ] ; 2 uses
  %.2.us = phi i32 [ %.02240.us, %bb.b ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.041.us, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12    ; 2 uses
  switch i8 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1 [
    i8 32, label %bb.c
    i8 13, label %bb.c
    i8 12, label %bb.c
    i8 11, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us
  br i1 %.227.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us
  %.sink.1 = phi i8 [ 32, %bb.c ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us ]
  %.227.us.ph.1 = phi i8 [ 1, %bb.c ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us ]
  %.124.us.ph.1 = phi i8 [ %.124.us, %bb.c ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us ]
  %i.m = add nsw i32 %.2.us, 1
  %i.n = sext i32 %.2.us to i64
  %i.o = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %.sink.1, ptr %i.p, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1, %bb.c
  %.227.us.1 = phi i8 [ 1, %bb.c ], [ %.227.us.ph.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1 ] ; 3 uses
  %.124.us.1 = phi i8 [ %.124.us, %bb.c ], [ %.124.us.ph.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1 ] ; 3 uses
  %.2.us.1 = phi i32 [ %.2.us, %bb.c ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.041.us, i64 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa, %.lr.ph.split.us.preheader
  %.041.us.epil.init = phi ptr [ %2, %.lr.ph.split.us.preheader ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa ]
  %.02240.us.epil.init = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.2.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa ] ; 3 uses
  %.02339.us.epil.init = phi i8 [ 1, %.lr.ph.split.us.preheader ], [ %.124.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa ] ; 2 uses
  %.02538.us.epil.init = phi i8 [ 1, %.lr.ph.split.us.preheader ], [ %.227.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.r = load i8, ptr %.041.us.epil.init, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil [
    i8 32, label %bb.d
    i8 13, label %bb.d
    i8 12, label %bb.d
    i8 11, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.split.us.epil.preheader, %.lr.ph.split.us.epil.preheader, %.lr.ph.split.us.epil.preheader, %.lr.ph.split.us.epil.preheader, %.lr.ph.split.us.epil.preheader, %.lr.ph.split.us.epil.preheader
  %i.s = trunc nuw i8 %.02538.us.epil.init to i1
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil: ; preds = %bb.d, %.lr.ph.split.us.epil.preheader
  %.sink.epil = phi i8 [ 32, %bb.d ], [ %i.r, %.lr.ph.split.us.epil.preheader ]
  %.227.us.ph.epil = phi i8 [ 1, %bb.d ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %.124.us.ph.epil = phi i8 [ %.02339.us.epil.init, %bb.d ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.t = add nsw i32 %.02240.us.epil.init, 1
  %i.u = sext i32 %.02240.us.epil.init to i64
  %i.v = load ptr, ptr %0, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 %.sink.epil, ptr %i.w, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.025.lcssa = phi i8 [ %.227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.227.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa ], [ 1, %bb.d ], [ %.227.us.ph.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil ]
  %.023.lcssa = phi i8 [ %.124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.124.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa ], [ %.02339.us.epil.init, %bb.d ], [ %.124.us.ph.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil ]
  %.022.lcssa = phi i32 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.2.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit55.unr-lcssa ], [ %.02240.us.epil.init, %bb.d ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil ]
  %i.x = trunc i8 %.025.lcssa to i1
  %i.y = xor i8 %.023.lcssa, 1
  %i.z = select i1 %i.x, i8 %i.y, i8 0
  %i.aa = zext nneg i8 %i.z to i32
  %spec.select.a = sub nsw i32 %.022.lcssa, %i.aa
  %i.ab = sext i32 %spec.select.a to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader
  %spec.select = phi i64 [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %spec.select, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit33 unwind label %bb.k

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.041 = phi ptr [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %2, %.lr.ph ] ; 3 uses
  %.02240 = phi i32 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ 0, %.lr.ph ] ; 5 uses
  %.02339 = phi i8 [ %.124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ 1, %.lr.ph ]
  %.02538 = phi i8 [ %.227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ 1, %.lr.ph ]
  %i.ac = load i8, ptr %.041, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.ac, label %bb.j [
    i8 32, label %bb.e
    i8 13, label %bb.e
    i8 12, label %bb.e
    i8 11, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split
  %i.ad = trunc nuw i8 %.02538 to i1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %.02240, 1
  %i.af = sext i32 %.02240 to i64
  %i.ag = load ptr, ptr %0, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 32, ptr %i.ah, align 1, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %.02240, %bb.e ], [ %i.ae, %bb.f ] ; 3 uses
  %i.ai = trunc nuw i8 %.02339 to i1
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i8, ptr %.041, align 1, !tbaa !12
  switch i8 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit [
    i8 10, label %bb.i
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ak = add nsw i32 %.1, -1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.j:                                             ; preds = %.lr.ph.split
  %i.al = add nsw i32 %.02240, 1
  %i.am = sext i32 %.02240 to i64
  %i.an = load ptr, ptr %0, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 %i.ac, ptr %i.ao, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.h, %bb.j, %bb.i, %bb.g
  %.227 = phi i8 [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %bb.h ], [ 0, %bb.j ] ; 2 uses
  %.124 = phi i8 [ 1, %bb.g ], [ 1, %bb.i ], [ 0, %bb.h ], [ 0, %bb.j ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.g ], [ %i.ak, %bb.i ], [ %.1, %bb.h ], [ %i.al, %bb.j ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.041, i64 1 ; 2 uses
  %.not31 = icmp eq ptr %i.ap, %i.c
  br i1 %.not31, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge, label %.lr.ph.split, !llvm.loop !83

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.thread, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.at = load i64, ptr %i.a, align 8, !tbaa !12
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bssl11string_util12Base64EncodeERKSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i64, ptr %0, align 8, !tbaa !39
  %i.c = call i32 @EVP_EncodedLength(ptr noundef nonnull %i.a, i64 noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt6vectorIcSaIcEED2Ev.exit13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %.noexc10

.noexc10:                                         ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.f = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 %i.d     ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !12
  %i.h = add nsw i64 %i.d, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc10
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.c, %.noexc10, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.g, %bb.c ], [ %i.g, %.noexc10 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.014.0 = phi ptr [ %i.f, %bb.c ], [ %i.f, %.noexc10 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = load i64, ptr %0, align 8, !tbaa !39
  %i.n = invoke i64 @EVP_EncodeBlock(ptr noundef %.sroa.014.0, ptr noundef %i.l, i64 noundef %i.m)
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  store i64 %i.n, ptr %i.a, align 8, !tbaa !21
  %.not8 = icmp ne i64 %i.n, 0                    ; 3 uses
  br i1 %.not8, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

bb.e:                                             ; preds = %bb.g, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.014.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %.sroa.11.0 to i64
  %i.q = ptrtoint ptr %.sroa.014.0 to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.014.0, i64 noundef %i.r) #17
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.t, ptr noundef %.sroa.014.0, i64 noundef %i.n)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.g, %bb.d
  %.not.i.i.i12 = icmp eq ptr %.sroa.014.0, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIcSaIcEED2Ev.exit13, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.v = ptrtoint ptr %.sroa.11.0 to i64
  %i.w = ptrtoint ptr %.sroa.014.0 to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.014.0, i64 noundef %i.x) #17
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit13

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.o

_ZNSt6vectorIcSaIcEED2Ev.exit13:                  ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.not8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit ], [ %.not8, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 %.1
}

declare i32 @EVP_EncodedLength(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @EVP_EncodeBlock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bssl11string_util12Base64DecodeERKSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i64, ptr %0, align 8, !tbaa !39
  %i.c = call i32 @EVP_DecodedLength(ptr noundef nonnull %i.a, i64 noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt6vectorIcSaIcEED2Ev.exit13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %.noexc10

.noexc10:                                         ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.f = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 %i.d     ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !12
  %i.h = add nsw i64 %i.d, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc10
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.c, %.noexc10, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.g, %bb.c ], [ %i.g, %.noexc10 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.014.0 = phi ptr [ %i.f, %bb.c ], [ %i.f, %.noexc10 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = load i64, ptr %0, align 8, !tbaa !39
  %i.o = invoke i32 @EVP_DecodeBase64(ptr noundef %.sroa.014.0, ptr noundef nonnull %i.a, i64 noundef %i.k, ptr noundef %i.m, i64 noundef %i.n)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %.not8 = icmp ne i32 %i.o, 0                    ; 3 uses
  br i1 %.not8, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

bb.e:                                             ; preds = %bb.g, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.014.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %.sroa.11.0 to i64
  %i.r = ptrtoint ptr %.sroa.014.0 to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.014.0, i64 noundef %i.s) #17
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.a, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.v, ptr noundef %.sroa.014.0, i64 noundef %i.t)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.g, %bb.d
  %.not.i.i.i12 = icmp eq ptr %.sroa.014.0, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIcSaIcEED2Ev.exit13, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.x = ptrtoint ptr %.sroa.11.0 to i64
  %i.y = ptrtoint ptr %.sroa.014.0 to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.014.0, i64 noundef %i.z) #17
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit13

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.p

_ZNSt6vectorIcSaIcEED2Ev.exit13:                  ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.not8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit ], [ %.not8, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 %.1
}

declare i32 @EVP_DecodedLength(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DecodeBase64(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7
end_hunk_0
