Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ObserverManager?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2581
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #25 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !625
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.c = load i8, ptr %i.b, align 1, !tbaa !625   ; 3 uses
  %i.d = icmp ult i8 %i.c, 64
  %i.e = select i1 %i.d, ptr %1, ptr %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !625
  %i.h = zext i8 %i.c to i64
  %i.i = sub nsw i64 23, %i.h
  %i.j = icmp ult i8 %i.c, 24
  %i.k = select i1 %i.j, i64 %i.i, i64 %i.g
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.e, i64 noundef %i.k) ; 0 uses
  ret ptr %0
}

declare void @_ZN5folly12exceptionStrERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind writable sret(%"class.folly::basic_fbstring") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #9

declare void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail5valueINS0_20basic_format_contextINS0_8appenderEcEEE17format_custom_argIN5folly5RangeIPKcEENS0_9formatterISC_cvEEEEvPvRNS0_26basic_format_parse_contextIcNS1_13error_handlerEEERS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v9::formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.a, align 4, !tbaa !721
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i16 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 32, ptr %i.c, align 1, !tbaa !625
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 0, ptr %i.d, align 1, !tbaa !625
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 1, ptr %i.e, align 1, !tbaa !722
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !625
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.g, align 8, !tbaa !625
  %i.h = call noundef ptr @_ZN3fmt2v99formatterINS0_17basic_string_viewIcEEcvE5parseINS0_26basic_format_parse_contextIcNS0_6detail13error_handlerEEEEEDTcldtfp_5beginEERT_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.i = load ptr, ptr %1, align 8, !tbaa !724    ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  store ptr %i.m, ptr %1, align 8, !tbaa !724
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !725
  %i.p = sub i64 %i.o, %i.l
  store i64 %i.p, ptr %i.n, align 8, !tbaa !725
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !663
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !663
  %i.q = call ptr @_ZNK3fmt2v99formatterIN5folly5RangeIPKcEEcvE6formatINS0_20basic_format_contextINS0_8appenderEcEEEENT_8iteratorES6_RSC_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store ptr %i.q, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt2v99formatterINS0_17basic_string_viewIcEEcvE5parseINS0_26basic_format_parse_contextIcNS0_6detail13error_handlerEEEEEDTcldtfp_5beginEERT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %2 = alloca %"class.fmt::v9::detail::specs_checker", align 8 ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !724    ; 19 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !725  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 7 uses
  %i.g = icmp samesign eq i64 %i.e, 0
  br i1 %i.g, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %0, ptr %2, align 8, !tbaa !3287
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.h, align 8, !tbaa !3288
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.i, align 8, !tbaa !3289
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 13, ptr %i.j, align 8, !tbaa !733
  %i.k = icmp sgt i64 %i.e, 1
  br i1 %i.k, label %bb.c, label %.thread-pre-split_crit_edge

.thread-pre-split_crit_edge:                      ; preds = %bb.b
  %.pr.pre = load i8, ptr %i.b, align 1, !tbaa !625
  br label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !625
  %i.n = icmp eq i8 %i.m, 125
  %.pr.pre34 = load i8, ptr %i.b, align 1, !tbaa !625 ; 5 uses
  br i1 %i.n, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.o = and i8 %.pr.pre34, -33
  %i.p = add i8 %i.o, -65
  %i.q = icmp ult i8 %i.p, 26
  br i1 %i.q, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i8 %.pr.pre34, 76
  br i1 %.not.i, label %thread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call noundef zeroext i8 @_ZN3fmt2v96detail23parse_presentation_typeIcEENS0_17presentation_typeET_(i8 noundef signext %.pr.pre34) ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.split67.i, label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit.sink.split

.split67.i:                                       ; preds = %bb.f
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.43) #40
  unreachable

thread-pre-split:                                 ; preds = %bb.c, %bb.e, %.thread-pre-split_crit_edge, %bb.d
  %i.t = phi i8 [ %.pr.pre34, %bb.d ], [ %.pr.pre, %.thread-pre-split_crit_edge ], [ 76, %bb.e ], [ %.pr.pre34, %bb.c ] ; 3 uses
  %i.u = lshr i8 %i.t, 3                          ; 2 uses
  %i.v = zext nneg i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str.45, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !625
  %i.y = tail call i8 @llvm.umax.i8(i8 %i.x, i8 1) ; 3 uses
  %i.z = sext i8 %i.y to i64                      ; 7 uses
  %.not.not.not = icmp sgt i64 %i.e, %i.z         ; 3 uses
  %spec.select.i.idx = select i1 %.not.not.not, i64 %i.z, i64 0
  %spec.select.i = getelementptr inbounds i8, ptr %i.b, i64 %spec.select.i.idx ; 2 uses
  %i.aa = load i8, ptr %spec.select.i, align 1, !tbaa !625
  switch i8 %i.aa, label %bb.g [
    i8 60, label %.loopexit.i
    i8 62, label %.loopexit50.i
    i8 94, label %.loopexit56.i
  ]

bb.g:                                             ; preds = %thread-pre-split
  br i1 %.not.not.not, label %.peel.next.i, label %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit

.peel.next.i:                                     ; preds = %bb.g
  switch i8 %i.t, label %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit [
    i8 60, label %.loopexit56.thread62.i
    i8 62, label %.loopexit56.thread66.i
    i8 94, label %.loopexit56.thread.i
  ]

.loopexit56.thread66.i:                           ; preds = %.peel.next.i
  br label %.loopexit56.thread.i

.loopexit56.thread62.i:                           ; preds = %.peel.next.i
  br label %.loopexit56.thread.i

.loopexit.i:                                      ; preds = %thread-pre-split
  br label %.loopexit56.i

.loopexit50.i:                                    ; preds = %thread-pre-split
  br label %.loopexit56.i

.loopexit56.i:                                    ; preds = %.loopexit50.i, %.loopexit.i, %thread-pre-split
  %.130.ph.i = phi i16 [ 1, %.loopexit.i ], [ 3, %thread-pre-split ], [ 2, %.loopexit50.i ] ; 2 uses
  br i1 %.not.not.not, label %bb.h, label %.loopexit56.thread.i

bb.h:                                             ; preds = %.loopexit56.i
  %.not39.i = icmp eq i8 %i.t, 123
  br i1 %.not39.i, label %bb.i, label %iter.check

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.44) #40
  unreachable

iter.check:                                       ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 6 uses
  %min.iters.check.not = icmp eq i8 %i.u, 30
  br i1 %min.iters.check.not, label %vector.memcheck, label %.lr.ph.i.i.i.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = sub i64 %i.a, %i.c
  %i.ad = add i64 %i.ac, 10
  %diff.check = icmp ult i64 %i.ad, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec54 = and i64 %i.z, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %index55
  %wide.load56 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !625
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index55
  store <4 x i8> %wide.load56, ptr %i.af, align 1, !tbaa !625
  %index.next57 = add nuw i64 %index55, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next57, %n.vec54
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3284

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %n.vec54, %i.z
  br i1 %cmp.n58, label %_ZN3fmt2v96detail12specs_setterIcE7on_fillENS0_17basic_string_viewIcEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec54, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.z, 3
  %i.ah = and i8 %i.y, 3
  %lcmp.mod.not = icmp eq i8 %i.ah, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %.08.i.i.i.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !625
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.08.i.i.i.prol
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !625
  %i.al = add nuw nsw i64 %.08.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3285

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.08.i.i.i.unr = phi i64 [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.prol ]
  %i.am = sub nsw i64 %.08.i.i.i.ph, %i.z
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN3fmt2v96detail12specs_setterIcE7on_fillENS0_17basic_string_viewIcEE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 %.08.i.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !625
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.08.i.i.i
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !625
  %i.ar = add nuw nsw i64 %.08.i.i.i, 1           ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !625
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ar
  store i8 %i.at, ptr %i.au, align 1, !tbaa !625
  %i.av = add nuw nsw i64 %.08.i.i.i, 2           ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !625
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !625
  %i.az = add nuw nsw i64 %.08.i.i.i, 3           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !625
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !625
  %i.bd = add nuw nsw i64 %.08.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bd, %i.z
  br i1 %exitcond.not.i.i.i.3, label %_ZN3fmt2v96detail12specs_setterIcE7on_fillENS0_17basic_string_viewIcEE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3286

_ZN3fmt2v96detail12specs_setterIcE7on_fillENS0_17basic_string_viewIcEE.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.y, ptr %i.be, align 1, !tbaa !722
  br label %.loopexit56.thread.i

.loopexit56.thread.i:                             ; preds = %_ZN3fmt2v96detail12specs_setterIcE7on_fillENS0_17basic_string_viewIcEE.exit.i, %.loopexit56.i, %.loopexit56.thread62.i, %.loopexit56.thread66.i, %.peel.next.i
  %.130.ph61.i = phi i16 [ %.130.ph.i, %_ZN3fmt2v96detail12specs_setterIcE7on_fillENS0_17basic_string_viewIcEE.exit.i ], [ %.130.ph.i, %.loopexit56.i ], [ 3, %.peel.next.i ], [ 1, %.loopexit56.thread62.i ], [ 2, %.loopexit56.thread66.i ]
  %.pn.i = phi ptr [ %spec.select.i, %_ZN3fmt2v96detail12specs_setterIcE7on_fillENS0_17basic_string_viewIcEE.exit.i ], [ %i.b, %.loopexit56.i ], [ %i.b, %.peel.next.i ], [ %i.b, %.loopexit56.thread62.i ], [ %i.b, %.loopexit56.thread66.i ]
  %.134.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = and i16 %i.bg, -16
  %i.bi = or disjoint i16 %i.bh, %.130.ph61.i
  store i16 %i.bi, ptr %i.bf, align 1
  br label %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit

_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit: ; preds = %bb.g, %.peel.next.i, %.loopexit56.thread.i
  %.132.i = phi ptr [ %.134.i, %.loopexit56.thread.i ], [ %i.b, %.peel.next.i ], [ %i.b, %bb.g ] ; 3 uses
  %i.bj = icmp eq ptr %.132.i, %i.f
  br i1 %i.bj, label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit
  %i.bk = load i8, ptr %.132.i, align 1, !tbaa !625
  switch i8 %i.bk, label %bb.p [
    i8 43, label %bb.k
    i8 45, label %bb.l
    i8 32, label %bb.m
    i8 35, label %bb.n
    i8 48, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.47) #40
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.47) #40
  unreachable

bb.m:                                             ; preds = %bb.j
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.47) #40
  unreachable

bb.n:                                             ; preds = %bb.j
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.47) #40
  unreachable

bb.o:                                             ; preds = %bb.j
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.47) #40
  unreachable

bb.p:                                             ; preds = %bb.j
  %i.bl = call noundef ptr @_ZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_(ptr noundef nonnull %.132.i, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(28) %2) ; 5 uses
  %i.bm = icmp eq ptr %i.bl, %i.f
  br i1 %i.bm, label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !625 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 46
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = call noundef ptr @_ZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(28) %2) ; 4 uses
  %i.bq = icmp eq ptr %i.bp, %i.f
  br i1 %i.bq, label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit, label %thread-pre-split29

thread-pre-split29:                               ; preds = %bb.r
  %.pr30 = load i8, ptr %i.bp, align 1, !tbaa !625
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split29, %bb.q
  %i.br = phi i8 [ %.pr30, %thread-pre-split29 ], [ %i.bn, %bb.q ] ; 2 uses
  %.3.i = phi ptr [ %i.bp, %thread-pre-split29 ], [ %i.bl, %bb.q ] ; 2 uses
  %i.bs = icmp eq i8 %i.br, 76
  br i1 %i.bs, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bt = load i32, ptr %i.j, align 8, !tbaa !733
  %i.bu = add i32 %i.bt, -1
  %i.bv = icmp ult i32 %i.bu, 11
  br i1 %i.bv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.47) #40
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr %2, align 8, !tbaa !736, !nonnull !316, !align !676
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 9 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = or i16 %i.by, 256
  store i16 %i.bz, ptr %i.bx, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 4 uses
  %.not86.i = icmp eq ptr %i.ca, %i.f
  br i1 %.not86.i, label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.v
  %.pre = load i8, ptr %i.ca, align 1, !tbaa !625
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.s
  %i.cb = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.br, %bb.s ] ; 2 uses
  %.4.i33 = phi ptr [ %i.ca, %..thread_crit_edge ], [ %.3.i, %bb.s ] ; 2 uses
  %.not87.i = icmp eq i8 %i.cb, 125
  br i1 %.not87.i, label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.cc = call noundef zeroext i8 @_ZN3fmt2v96detail23parse_presentation_typeIcEENS0_17presentation_typeET_(i8 noundef signext %i.cb) ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %.split70.i, label %.split68.i

.split68.i:                                       ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %.4.i33, i64 1
  %i.cf = load ptr, ptr %2, align 8, !tbaa !736, !nonnull !316, !align !676
  br label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit.sink.split

.split70.i:                                       ; preds = %bb.w
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.43) #40
  unreachable

_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit.sink.split: ; preds = %bb.f, %.split68.i
  %.sink51 = phi ptr [ %i.cf, %.split68.i ], [ %0, %bb.f ]
  %.sink = phi i8 [ %i.cc, %.split68.i ], [ %i.r, %bb.f ]
  %.0.i.ph = phi ptr [ %i.ce, %.split68.i ], [ %i.l, %bb.f ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink51, i64 8
  store i8 %.sink, ptr %i.cg, align 4, !tbaa !737
  br label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit

_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit: ; preds = %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit.sink.split, %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit, %bb.p, %bb.r, %bb.v, %.thread
  %.0.i = phi ptr [ %i.bp, %bb.r ], [ %i.bl, %bb.p ], [ %.4.i33, %.thread ], [ %i.f, %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit ], [ %i.ca, %bb.v ], [ %.0.i.ph, %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit.sink.split ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !737
  switch i8 %i.ci, label %bb.x [
    i8 18, label %_ZN3fmt2v96detail22check_string_type_specIRNS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit
    i8 16, label %_ZN3fmt2v96detail22check_string_type_specIRNS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit
    i8 0, label %_ZN3fmt2v96detail22check_string_type_specIRNS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit
  ]

bb.x:                                             ; preds = %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.43) #40
  unreachable

_ZN3fmt2v96detail22check_string_type_specIRNS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit: ; preds = %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit, %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit, %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %_ZN3fmt2v96detail22check_string_type_specIRNS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit
  %.0 = phi ptr [ %.0.i, %_ZN3fmt2v96detail22check_string_type_specIRNS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit ], [ %i.b, %bb.a ]
  ret ptr %.0
}

end_hunk_0
