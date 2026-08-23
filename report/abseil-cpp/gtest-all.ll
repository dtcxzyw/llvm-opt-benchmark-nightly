Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/gtest-all?download=true
inline.NumInlined: 9435
inline.NumDeleted: 2438
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7testing8internal8FilePath12MakeFileNameERKS1_S3_iPKc:bb.a
  %i.id = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.id, ptr %i.hy, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc104, %bb.am
  %i.ie = phi ptr [ %i.ic, %.noexc104 ], [ %i.hy, %bb.am ] ; 2 uses
  switch i64 %i.ia, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge.i.i
  %i.if = load i8, ptr %i.hz, align 1, !tbaa !31
  store i8 %i.if, ptr %i.ie, align 1, !tbaa !31
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ie, ptr align 1 %i.hz, i64 %i.ia, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i
  %i.ig = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !29
  %i.ii = load ptr, ptr %14, align 8, !tbaa !26
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig
  store i8 0, ptr %i.ij, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ik = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  store ptr %i.ik, ptr %13, align 8, !tbaa !23
  %i.il = load ptr, ptr %14, align 8, !tbaa !26   ; 3 uses
  %i.im = icmp eq ptr %i.il, %i.hy
  br i1 %i.im, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

bb.aq:                                            ; preds = %bb.ap
  %i.in = load i64, ptr %i.ih, align 8, !tbaa !29 ; 3 uses
  %i.io = icmp ult i64 %i.in, 16
  call void @llvm.assume(i1 %i.io)
  %i.ip = add nuw nsw i64 %i.in, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ik, ptr noundef nonnull align 8 dereferenceable(1) %i.hy, i64 %i.ip, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ap
  store ptr %i.il, ptr %13, align 8, !tbaa !26
  %i.iq = load i64, ptr %i.hy, align 8, !tbaa !31
  store i64 %i.iq, ptr %i.ik, align 8, !tbaa !31
  %.pr = load i64, ptr %i.ih, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.aq
  %i.ir = phi ptr [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.ik, %bb.aq ] ; 5 uses
  %i.is = phi i64 [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.in, %bb.aq ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 %i.is, ptr %i.it, align 8, !tbaa !29
  store ptr %i.hy, ptr %14, align 8, !tbaa !26
  store i64 0, ptr %i.ih, align 8, !tbaa !29
  store i8 0, ptr %i.hy, align 8, !tbaa !31
  %.not1820.i.i = icmp samesign eq i64 %i.is, 0
  br i1 %.not1820.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106, %bb.as
  %i.iu = phi i64 [ %i.jc, %bb.as ], [ %i.is, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106 ]
  %i.iv = phi ptr [ %i.jd, %bb.as ], [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106 ] ; 2 uses
  %.sroa.013.022.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.as ], [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106 ] ; 5 uses
  %.sroa.010.021.i.i = phi ptr [ %i.je, %bb.as ], [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106 ] ; 2 uses
  %i.iw = load i8, ptr %.sroa.010.021.i.i, align 1, !tbaa !31 ; 2 uses
  %i.ix = icmp ne i8 %i.iw, 47
  %i.iy = icmp eq ptr %.sroa.013.022.i.i, %i.iv
  %or.cond.i = select i1 %i.ix, i1 true, i1 %i.iy
  br i1 %or.cond.i, label %.sink.split.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.iz = getelementptr inbounds i8, ptr %.sroa.013.022.i.i, i64 -1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.ja, 47
  br i1 %.not.i.i, label %bb.as, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ar, %.lr.ph.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i, i64 1
  store i8 %i.iw, ptr %.sroa.013.022.i.i, align 1, !tbaa !31
  %.pre.i107 = load ptr, ptr %13, align 8, !tbaa !26
  %.pre2.i = load i64, ptr %i.it, align 8, !tbaa !29
  br label %bb.as

bb.as:                                            ; preds = %.sink.split.i.i, %bb.ar
  %i.jc = phi i64 [ %i.iu, %bb.ar ], [ %.pre2.i, %.sink.split.i.i ] ; 2 uses
  %i.jd = phi ptr [ %i.iv, %bb.ar ], [ %.pre.i107, %.sink.split.i.i ] ; 3 uses
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.022.i.i, %bb.ar ], [ %i.jb, %.sink.split.i.i ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i, i64 1 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jc
  %.not18.i.i = icmp eq ptr %i.je, %i.jf
  br i1 %.not18.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !388

.loopexit:                                        ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106
  %.sroa.013.0.lcssa.i.i = phi ptr [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106 ], [ %.sroa.013.1.i.i, %bb.as ]
  %.lcssa19.i.i = phi ptr [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i106 ], [ %i.jd, %bb.as ] ; 2 uses
  %i.jg = ptrtoint ptr %.sroa.013.0.lcssa.i.i to i64
  %i.jh = ptrtoint ptr %.lcssa19.i.i to i64
  %i.ji = sub i64 %i.jg, %i.jh                    ; 2 uses
  store i64 %i.ji, ptr %i.it, align 8, !tbaa !29
  %i.jj = getelementptr inbounds nuw i8, ptr %.lcssa19.i.i, i64 %i.ji
  store i8 0, ptr %i.jj, align 1, !tbaa !31
  invoke void @_ZN7testing8internal8FilePath11ConcatPathsERKS1_S3_(ptr dead_on_unwind writable sret(%"class.testing::internal::FilePath") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %.loopexit
  %i.jk = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.ik
  br i1 %i.jl, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.at
  %i.jm = load i64, ptr %i.ik, align 8, !tbaa !31
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.jo = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.hy
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit
  %i.jq = load i64, ptr %i.hy, align 8, !tbaa !31
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #55
  %i.js = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.b
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.ju = load i64, ptr %i.b, align 8, !tbaa !31
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  ret void

bb.au:                                            ; preds = %.noexc.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.av:                                            ; preds = %.loopexit
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.ik
  br i1 %i.jz, label %_ZN7testing8internal8FilePathD2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114: ; preds = %bb.av
  %i.ka = load i64, ptr %i.ik, align 8, !tbaa !31
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit116

_ZN7testing8internal8FilePathD2Ev.exit116:        ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114
  %i.kc = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.hy
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit116
  %i.ke = load i64, ptr %i.hy, align 8, !tbaa !31
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.au
  %.pn20.pn = phi { ptr, i32 } [ %i.jw, %bb.au ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.jx, %_ZN7testing8internal8FilePathD2Ev.exit116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #55
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %.body41, %.body
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn18, %.body ], [ %.pn.pn.pn.pn, %.body41 ]
  %i.kg = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.b
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.aw
  %i.ki = load i64, ptr %i.b, align 8, !tbaa !31
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal8FilePath11ConcatPathsERKS1_S3_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::FilePath") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !23
  %i.g = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.i, ptr %i.b, align 8, !tbaa !30
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !26
  %i.l = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.l, ptr %i.f, align 8, !tbaa !31
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN7testing8internal8FilePathC2ERKS1_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !31
  store i8 %i.n, ptr %i.m, align 1, !tbaa !31
  br label %_ZN7testing8internal8FilePathC2ERKS1_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN7testing8internal8FilePathC2ERKS1_.exit

_ZN7testing8internal8FilePathC2ERKS1_.exit:       ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !29
  %i.q = load ptr, ptr %0, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZNK7testing8internal8FilePath27RemoveTrailingPathSeparatorEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 47, ptr %i.a, align 1, !tbaa !31, !noalias !422
  %i.s = load ptr, ptr %3, align 8, !tbaa !26, !noalias !422
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !422 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !23, !alias.scope !425
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.w, align 8, !tbaa !29, !alias.scope !425
  store i8 0, ptr %i.v, align 8, !tbaa !31, !alias.scope !425
  %i.x = add i64 %i.u, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.x)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.w, align 8, !tbaa !29, !alias.scope !425
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %i.u
  br i1 %i.aa, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !29, !alias.scope !425
  %i.ad = icmp eq i64 %i.ac, 4611686018427387903
  br i1 %i.ad, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.444) #57
          to label %.cont.i.i unwind label %bb.g

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !26, !alias.scope !425 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.v
  br i1 %i.ah, label %.body, label %.body.sink.split

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !29, !noalias !428 ; 2 uses
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !29, !noalias !428
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.444) #57
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.h
  %i.an = load ptr, ptr %2, align 8, !tbaa !26, !noalias !428
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.an, i64 noundef %i.aj)
          to label %.noexc9 unwind label %bb.n    ; 8 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !23, !alias.scope !428
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !26 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 7 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %.thread, label %bb.j

.thread:                                          ; preds = %.noexc9
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !29 ; 4 uses
  %i.av = icmp samesign ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.ay, align 8, !tbaa !29, !alias.scope !428
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !26
  store i64 0, ptr %i.ax, align 8, !tbaa !29
  store i8 0, ptr %i.ar, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !23
  br label %bb.k

bb.j:                                             ; preds = %.noexc9
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !31
  store i64 %i.ba, ptr %i.ap, align 8, !tbaa !31, !alias.scope !428
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.bc, align 8, !tbaa !29, !alias.scope !428
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !26
  store i64 0, ptr %i.bb, align 8, !tbaa !29
  store i8 0, ptr %i.ar, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !23
  %i.be = icmp eq ptr %i.aq, %i.ap
  br i1 %i.be, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bf = phi ptr [ %i.az, %.thread ], [ %i.bd, %bb.j ] ; 2 uses
  %i.bg = phi ptr [ %i.ay, %.thread ], [ %i.bc, %bb.j ]
  %i.bh = phi i64 [ %i.au, %.thread ], [ %.pre.i, %bb.j ] ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.j
  store ptr %i.aq, ptr %0, align 8, !tbaa !26
  %i.bk = load i64, ptr %i.ap, align 8, !tbaa !31
  store i64 %i.bk, ptr %i.bd, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.k
  %i.bl = phi ptr [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.bg, %bb.k ]
  %i.bm = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.bh, %bb.k ] ; 3 uses
  %i.bn = phi ptr [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.bf, %bb.k ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !29
  store ptr %i.ap, ptr %4, align 8, !tbaa !26
  store i64 0, ptr %i.bl, align 8, !tbaa !29
  store i8 0, ptr %i.ap, align 8, !tbaa !31
  %.not1820.i.i = icmp samesign eq i64 %i.bm, 0
  br i1 %.not1820.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %bb.m
  %i.bp = phi i64 [ %i.bx, %bb.m ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %i.bq = phi ptr [ %i.by, %bb.m ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 2 uses
  %.sroa.013.022.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.m ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %.sroa.010.021.i.i = phi ptr [ %i.bz, %bb.m ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 2 uses
  %i.br = load i8, ptr %.sroa.010.021.i.i, align 1, !tbaa !31 ; 2 uses
  %i.bs = icmp ne i8 %i.br, 47
  %i.bt = icmp eq ptr %.sroa.013.022.i.i, %i.bq
  %or.cond.i = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond.i, label %.sink.split.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bu = getelementptr inbounds i8, ptr %.sroa.013.022.i.i, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.bv, 47
  br i1 %.not.i.i, label %bb.m, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.l, %.lr.ph.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i, i64 1
  store i8 %i.br, ptr %.sroa.013.022.i.i, align 1, !tbaa !31
  %.pre.i11 = load ptr, ptr %0, align 8, !tbaa !26
  %.pre2.i = load i64, ptr %i.bo, align 8, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i.i, %bb.l
  %i.bx = phi i64 [ %i.bp, %bb.l ], [ %.pre2.i, %.sink.split.i.i ] ; 2 uses
  %i.by = phi ptr [ %i.bq, %bb.l ], [ %.pre.i11, %.sink.split.i.i ] ; 3 uses
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.022.i.i, %bb.l ], [ %i.bw, %.sink.split.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i, i64 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  %.not18.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not18.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !388

.loopexit:                                        ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.sroa.013.0.lcssa.i.i = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %.sroa.013.1.i.i, %bb.m ]
  %.lcssa19.i.i = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.by, %bb.m ] ; 2 uses
  %i.cb = ptrtoint ptr %.sroa.013.0.lcssa.i.i to i64
  %i.cc = ptrtoint ptr %.lcssa19.i.i to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  store i64 %i.cd, ptr %i.bo, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %.lcssa19.i.i, i64 %i.cd
  store i8 0, ptr %i.ce, align 1, !tbaa !31
  %i.cf = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ap
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.loopexit
  %i.ch = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.cj = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.v
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cl = load i64, ptr %i.v, align 8, !tbaa !31
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %i.cn = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !31
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.i
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.v
  br i1 %i.cu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.g
  %.sink = phi ptr [ %i.ag, %bb.g ], [ %i.ct, %bb.n ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.cs, %bb.n ]
  %i.cv = load i64, ptr %i.v, align 8, !tbaa !31
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cw) #56
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.cs, %bb.n ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %i.cx = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZN7testing8internal8FilePathD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %.body
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !31
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit24

_ZN7testing8internal8FilePathD2Ev.exit24:         ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %_ZN7testing8internal8FilePathD2Ev.exit, %_ZN7testing8internal8FilePathC2ERKS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK7testing8internal8FilePath27RemoveTrailingPathSeparatorEv(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::FilePath") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 7 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge.i.i.i4.thread, label %_ZNK7testing8internal8FilePath11IsDirectoryEv.exit

._crit_edge.i.i.i4.thread:                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %0, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 0, ptr %i.a, align 8, !tbaa !30
  br label %.thread9
end_hunk_0
