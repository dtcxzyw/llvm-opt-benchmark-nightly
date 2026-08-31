Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/string_util?download=true
inline.NumInlined: 330
inline.NumDeleted: 181
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4bssl11string_util11SplitStringESt17basic_string_viewIcSt11char_traitsIcEEc:bb.a
  store ptr %i.f, ptr %i.c, align 8
  store ptr %i.e, ptr %0, align 8
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  %i.ae = add nuw i64 %.1.i, 1                    ; 3 uses
  %.not30 = icmp ult i64 %.1.i, %.sroa.020.0
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ac, ptr %i.b, align 8
  store ptr %i.ab, ptr %i.c, align 8
  store ptr %i.aa, ptr %0, align 8
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %i.ae, i64 noundef %.sroa.020.0) #16
          to label %.noexc16 unwind label %bb.l

.noexc16:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = sub nuw i64 %.sroa.020.0, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.624.0, i64 %i.ae
  br label %bb.b

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %i.ai = phi ptr [ %i.ab, %bb.l ], [ %i.f, %.loopexit ], [ %i.f, %.loopexit.split-lp ]
  %i.aj = phi ptr [ %i.aa, %bb.l ], [ %i.e, %.loopexit ], [ %i.e, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.am) #17
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.m, %bb.n
  resume { ptr, i32 } %.pn

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
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.a, align 8, !tbaa !11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not3138 = icmp samesign eq i64 %1, 0
  br i1 %.not3138, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge, label %.lr.ph

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
  %.042.us = phi ptr [ %2, %.lr.ph.split.us.preheader.new ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1 ] ; 3 uses
  %.02241.us = phi i32 [ 0, %.lr.ph.split.us.preheader.new ], [ %.2.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1 ] ; 3 uses
  %.02340.us = phi i8 [ 1, %.lr.ph.split.us.preheader.new ], [ %.124.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1 ] ; 2 uses
  %.02539.us = phi i8 [ 1, %.lr.ph.split.us.preheader.new ], [ %.227.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1 ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1 ]
  %i.e = load i8, ptr %.042.us, align 1, !tbaa !11 ; 2 uses
  switch i8 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us
  %i.f = trunc nuw i8 %.02539.us to i1
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split: ; preds = %.lr.ph.split.us, %bb.b
  %.sink = phi i8 [ 32, %bb.b ], [ %i.e, %.lr.ph.split.us ]
  %.227.us.ph = phi i1 [ true, %bb.b ], [ false, %.lr.ph.split.us ]
  %.124.us.ph = phi i8 [ %.02340.us, %bb.b ], [ 0, %.lr.ph.split.us ]
  %i.g = add nsw i32 %.02241.us, 1
  %i.h = sext i32 %.02241.us to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 %.sink, ptr %i.j, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split, %bb.b
  %.227.us = phi i1 [ true, %bb.b ], [ %.227.us.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split ]
  %.124.us = phi i8 [ %.02340.us, %bb.b ], [ %.124.us.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split ] ; 2 uses
  %.2.us = phi i32 [ %.02241.us, %bb.b ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.042.us, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11    ; 2 uses
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
  store i8 %.sink.1, ptr %i.p, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1, %bb.c
  %.227.us.1 = phi i8 [ 1, %bb.c ], [ %.227.us.ph.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1 ] ; 3 uses
  %.124.us.1 = phi i8 [ %.124.us, %bb.c ], [ %.124.us.ph.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1 ] ; 3 uses
  %.2.us.1 = phi i32 [ %.2.us, %bb.c ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.1 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.042.us, i64 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa, %.lr.ph.split.us.preheader
  %.042.us.epil.init = phi ptr [ %2, %.lr.ph.split.us.preheader ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa ]
  %.02241.us.epil.init = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.2.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa ] ; 3 uses
  %.02340.us.epil.init = phi i8 [ 1, %.lr.ph.split.us.preheader ], [ %.124.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa ] ; 2 uses
  %.02539.us.epil.init = phi i8 [ 1, %.lr.ph.split.us.preheader ], [ %.227.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa ]
  %lcmp.mod60 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.r = load i8, ptr %.042.us.epil.init, align 1, !tbaa !11 ; 2 uses
  switch i8 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil [
    i8 32, label %bb.d
    i8 13, label %bb.d
    i8 12, label %bb.d
    i8 11, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.split.us.epil.preheader, %.lr.ph.split.us.epil.preheader, %.lr.ph.split.us.epil.preheader, %.lr.ph.split.us.epil.preheader, %.lr.ph.split.us.epil.preheader, %.lr.ph.split.us.epil.preheader
  %i.s = trunc nuw i8 %.02539.us.epil.init to i1
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil: ; preds = %bb.d, %.lr.ph.split.us.epil.preheader
  %.sink.epil = phi i8 [ 32, %bb.d ], [ %i.r, %.lr.ph.split.us.epil.preheader ]
  %.227.us.ph.epil = phi i8 [ 1, %bb.d ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %.124.us.ph.epil = phi i8 [ %.02340.us.epil.init, %bb.d ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.t = add nsw i32 %.02241.us.epil.init, 1
  %i.u = sext i32 %.02241.us.epil.init to i64
  %i.v = load ptr, ptr %0, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 %.sink.epil, ptr %i.w, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader
  %.025.lcssa = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader ], [ %.227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.227.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa ], [ 1, %bb.d ], [ %.227.us.ph.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil ]
  %.023.lcssa = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader ], [ %.124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.124.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa ], [ %.02340.us.epil.init, %bb.d ], [ %.124.us.ph.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil ]
  %.022.lcssa = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.2.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa ], [ %.02241.us.epil.init, %bb.d ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil ]
  %i.x = trunc nuw i8 %.025.lcssa to i1
  %i.y = xor i8 %.023.lcssa, 1
  %4 = select i1 %i.x, i8 %i.y, i8 0
  %5 = zext nneg i8 %4 to i32
  %spec.select37 = sub nsw i32 %.022.lcssa, %5
  %i.z = sext i32 %spec.select37 to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit33 unwind label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.042 = phi ptr [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %2, %.lr.ph ] ; 3 uses
  %.02241 = phi i32 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ 0, %.lr.ph ] ; 5 uses
  %.02340 = phi i8 [ %.124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ 1, %.lr.ph ]
  %.02539 = phi i8 [ %.227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ 1, %.lr.ph ]
  %i.ab = load i8, ptr %.042, align 1, !tbaa !11  ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 32, label %bb.f
    i8 13, label %bb.f
    i8 12, label %bb.f
    i8 11, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split
  %i.ac = trunc nuw i8 %.02539 to i1
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %.02241, 1
  %i.ae = sext i32 %.02241 to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store i8 32, ptr %i.ag, align 1, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.02241, %bb.f ], [ %i.ad, %bb.g ] ; 3 uses
  %i.ah = trunc nuw i8 %.02340 to i1
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr %.042, align 1, !tbaa !11
  switch i8 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit [
    i8 10, label %bb.j
    i8 13, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.aj = add nsw i32 %.1, -1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.k:                                             ; preds = %.lr.ph.split
  %i.ak = add nsw i32 %.02241, 1
  %i.al = sext i32 %.02241 to i64
  %i.am = load ptr, ptr %0, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 %i.ab, ptr %i.an, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.i, %bb.k, %bb.j, %bb.h
  %.227 = phi i8 [ 1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.i ], [ 0, %bb.k ] ; 2 uses
  %.124 = phi i8 [ 1, %bb.h ], [ 1, %bb.j ], [ 0, %bb.i ], [ 0, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.h ], [ %i.aj, %bb.j ], [ %.1, %bb.i ], [ %i.ak, %bb.k ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.042, i64 1 ; 2 uses
  %.not31 = icmp eq ptr %i.ao, %i.c
  br i1 %.not31, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge, label %.lr.ph.split, !llvm.loop !80

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge
  ret void

bb.m:                                             ; preds = %bb.l, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.aa, %bb.e ]
  %i.aq = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.as = load i64, ptr %i.a, align 8, !tbaa !11
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bssl11string_util12Base64EncodeERKSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i64, ptr %0, align 8, !tbaa !81
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
  store i8 0, ptr %i.f, align 1, !tbaa !11
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.m = load i64, ptr %0, align 8, !tbaa !81
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
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
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
  %i.b = load i64, ptr %0, align 8, !tbaa !81
  %i.c = call i32 @EVP_DecodedLength(ptr noundef nonnull %i.a, i64 noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt6vectorIcSaIcEED2Ev.exit13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
end_hunk_0
