Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 103
begin_hunk_0_@_ZN7httplib6detail18stream_line_reader7getlineEv:bb.a
  br label %_ZN7httplib6detail18stream_line_reader6appendEPKcm.exit

bb.l:                                             ; preds = %bb.j
  %i.as = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef 0, ptr noundef %i.am, i64 noundef %i.ad) ; 0 uses
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !176
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.at = phi i64 [ %i.ab, %bb.i ], [ %.pre.i, %bb.l ]
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %.347
  br i1 %i.av, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.361) #47
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.m
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %i.n, i64 noundef %.347) ; 0 uses
  br label %_ZN7httplib6detail18stream_line_reader6appendEPKcm.exit

_ZN7httplib6detail18stream_line_reader6appendEPKcm.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1418, !nonnull !192, !align !253 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !194
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, i64 noundef %.347)
  br i1 %.343, label %.thread83, label %.thread76.thread92

.thread76.thread92:                               ; preds = %_ZN7httplib6detail18stream_line_reader6appendEPKcm.exit
  %i.bb = add i64 %.347, %.048
  br label %bb.y

bb.o:                                             ; preds = %bb.b
  %i.bc = load i64, ptr %i.f, align 8, !tbaa !176 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = load i64, ptr %i.d, align 8
  %.0.i71 = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = icmp ugt i64 %.0.i71, 32767
  br i1 %i.bf, label %.thread83, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.bg = load ptr, ptr %0, align 8, !tbaa !1418, !nonnull !192, !align !253 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !194
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(12) %i.bg, ptr noundef nonnull %i.c, i64 noundef 1) ; 2 uses
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %.thread83.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp eq i64 %.048, 0
  br i1 %i.bn, label %.thread83.sink.split, label %select.unfold100

bb.s:                                             ; preds = %bb.q
  %i.bo = load i8, ptr %i.c, align 1, !tbaa !177  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bo, ptr %i.a, align 1, !tbaa !177
  %i.bp = load i64, ptr %i.f, align 8, !tbaa !176 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.br = load i64, ptr %i.d, align 8, !tbaa !338 ; 3 uses
  %i.bs = add i64 %i.br, 1
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !339
  %i.bu = icmp ult i64 %i.bs, %i.bt
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !340 ; 2 uses
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.br
  store i8 %i.bo, ptr %i.bw, align 1
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !338
  %i.by = add i64 %i.bx, 1                        ; 2 uses
  store i64 %i.by, ptr %i.d, align 8, !tbaa !338
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !340
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !177
  br label %_ZN7httplib6detail18stream_line_reader6appendEc.exit

bb.v:                                             ; preds = %bb.t
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef 0, ptr noundef %i.bv, i64 noundef %i.br) ; 0 uses
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !176
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cc = phi i64 [ %i.bp, %bb.s ], [ %.pre.i.i, %bb.v ]
  %i.cd = icmp eq i64 %i.cc, 4611686018427387903
  br i1 %i.cd, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.361) #47
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.w
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZN7httplib6detail18stream_line_reader6appendEc.exit

_ZN7httplib6detail18stream_line_reader6appendEc.exit: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = icmp eq i8 %.051, 13
  %i.cg = load i8, ptr %i.c, align 1              ; 2 uses
  %i.ch = icmp eq i8 %i.cg, 10
  %or.cond = select i1 %i.cf, i1 %i.ch, i1 false
  br i1 %or.cond, label %select.unfold100, label %.thread76

.thread76:                                        ; preds = %_ZN7httplib6detail18stream_line_reader6appendEc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.y

bb.y:                                             ; preds = %.thread76, %.thread76.thread92
  %.45599 = phi i8 [ %i.ai, %.thread76.thread92 ], [ %i.cg, %.thread76 ]
  %.2508297 = phi i64 [ %i.bb, %.thread76.thread92 ], [ %.048, %.thread76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ci = add i64 %.2508297, 1
  br label %bb.b, !llvm.loop !1417

select.unfold100:                                 ; preds = %_ZN7httplib6detail18stream_line_reader6appendEc.exit, %bb.r
  br label %.thread83.sink.split

.thread83.sink.split:                             ; preds = %bb.p, %bb.r, %select.unfold100
  %.561.ph = phi i1 [ true, %select.unfold100 ], [ false, %bb.r ], [ false, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.thread83

.thread83:                                        ; preds = %_ZN7httplib6detail18stream_line_reader6appendEPKcm.exit, %.thread, %bb.o, %.thread83.sink.split
  %.561 = phi i1 [ %.561.ph, %.thread83.sink.split ], [ false, %.thread ], [ true, %_ZN7httplib6detail18stream_line_reader6appendEPKcm.exit ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i1 %.561
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN7httplib6detail4trimEPKcS2_mm(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  %i.b = icmp ult ptr %i.a, %1
  br i1 %i.b, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.f = phi ptr [ %i.i, %bb.b ], [ %i.a, %.lr.ph.preheader ]
  %.01213 = phi i64 [ %i.h, %bb.b ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !177
  switch i8 %i.g, label %.critedge [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.h = add i64 %.01213, 1                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 2 uses
  %i.j = icmp ult ptr %i.i, %1
  br i1 %i.j, label %.lr.ph, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.012.lcssa = phi i64 [ %2, %bb.a ], [ %.01213, %.lr.ph ], [ %i.e, %bb.b ]
  %.not16 = icmp eq i64 %3, 0
  br i1 %.not16, label %.critedge2, label %.lr.ph18

.lr.ph18:                                         ; preds = %.critedge, %bb.c
  %.017 = phi i64 [ %i.n, %bb.c ], [ %3, %.critedge ] ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 %.017
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !177
  switch i8 %i.m, label %.critedge2 [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph18, %.lr.ph18
  %i.n = add i64 %.017, -1                        ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %.critedge2, label %.lr.ph18, !llvm.loop !16

.critedge2:                                       ; preds = %bb.c, %.lr.ph18, %.critedge
  %.0.lcssa = phi i64 [ 0, %.critedge ], [ %.017, %.lr.ph18 ], [ 0, %bb.c ]
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.012.lcssa, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.0.lcssa, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail9trim_copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !189    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176  ; 7 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01213.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01213.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !177
  switch i8 %i.f, label %.lr.ph18.i.preheader [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.g = add nuw i64 %.01213.i, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.d
  br i1 %exitcond.not, label %.lr.ph18.i.preheader, label %.lr.ph.i, !llvm.loop !15

.lr.ph18.i.preheader:                             ; preds = %bb.b, %.lr.ph.i
  %.012.lcssa.i12 = phi i64 [ %.01213.i, %.lr.ph.i ], [ %i.d, %bb.b ] ; 3 uses
  br label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.preheader, %bb.c
  %.017.i = phi i64 [ %i.k, %bb.c ], [ %i.d, %.lr.ph18.i.preheader ] ; 3 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %.017.i
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !177
  switch i8 %i.j, label %_ZN7httplib6detail4trimEPKcS2_mm.exit [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph18.i, %.lr.ph18.i
  %i.k = add i64 %.017.i, -1                      ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i, !llvm.loop !16

_ZN7httplib6detail4trimEPKcS2_mm.exit:            ; preds = %.lr.ph18.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.017.i, %.lr.ph18.i ], [ 0, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  %i.l = icmp ugt i64 %.012.lcssa.i12, %i.d
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.357, ptr noundef nonnull @.str.358, i64 noundef %.012.lcssa.i12, i64 noundef %i.d) #47, !noalias !1421
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.a, %_ZN7httplib6detail4trimEPKcS2_mm.exit
  %.0.lcssa.i16 = phi i64 [ %.0.lcssa.i, %_ZN7httplib6detail4trimEPKcS2_mm.exit ], [ 0, %bb.a ]
  %.012.lcssa.i915 = phi i64 [ %.012.lcssa.i12, %_ZN7httplib6detail4trimEPKcS2_mm.exit ], [ 0, %bb.a ] ; 3 uses
  %i.m = sub i64 %.0.lcssa.i16, %.012.lcssa.i915
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !175, !alias.scope !1421
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.lcssa.i915 ; 2 uses
  %i.p = sub nuw i64 %i.d, %.012.lcssa.i915
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.p) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !1421
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !190, !noalias !1421
  %i.q = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.q, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !189, !alias.scope !1421
  %i.s = load i64, ptr %i.a, align 8, !tbaa !190, !noalias !1421
  store i64 %i.s, ptr %i.n, align 8, !tbaa !177, !alias.scope !1421
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.t = phi ptr [ %i.r, %.noexc10.i.i ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.o, align 1, !tbaa !177
  store i8 %i.u, ptr %i.t, align 1, !tbaa !177
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.o, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.v = load i64, ptr %i.a, align 8, !tbaa !190, !noalias !1421 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !176, !alias.scope !1421
  %i.x = load ptr, ptr %0, align 8, !tbaa !189, !alias.scope !1421
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !1421
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail23trim_double_quotes_copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176  ; 8 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !175
  %i.g = load ptr, ptr %1, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !190
  br label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !189    ; 5 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !177
  %i.j = icmp eq i8 %i.i, 34
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !177
  %i.n = icmp eq i8 %i.m, 34
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = add i64 %i.d, -2                         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !175, !alias.scope !1424
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !1424
  store i64 %i.o, ptr %i.b, align 8, !tbaa !190, !noalias !1424
  %i.r = icmp ugt i64 %i.o, 15
  br i1 %i.r, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !189, !alias.scope !1424
  %i.t = load i64, ptr %i.b, align 8, !tbaa !190, !noalias !1424
  store i64 %i.t, ptr %i.p, align 8, !tbaa !177, !alias.scope !1424
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.u = phi ptr [ %i.s, %.noexc10.i.i ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.q, align 1, !tbaa !177
  store i8 %i.v, ptr %i.u, align 1, !tbaa !177
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.q, i64 %i.o, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !190, !noalias !1424 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !176, !alias.scope !1424
  %i.y = load ptr, ptr %0, align 8, !tbaa !189, !alias.scope !1424
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !1424
  br label %bb.i

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !190
  %i.ab = icmp ugt i64 %i.d, 15
  br i1 %i.ab, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !189
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !190
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !177
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.thread, %.noexc.i, %bb.f
  %i.ae = phi ptr [ %i.h, %.noexc.i ], [ %i.h, %bb.f ], [ %i.g, %.thread ] ; 2 uses
  %i.af = phi ptr [ %i.ac, %.noexc.i ], [ %i.aa, %bb.f ], [ %i.f, %.thread ] ; 2 uses
  switch i64 %i.d, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !177
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ae, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !190 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !176
  %i.aj = load ptr, ptr %0, align 8, !tbaa !189
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail6divideEPKcmcSt8functionIFvS2_mS2_mEE(ptr noundef %0, i64 noundef %1, i8 noundef signext %2, ptr nofree noundef align 8 dereferenceable(32) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ashr i64 %1, 2                           ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = and i64 %1, -4
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.j ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %0, %.lr.ph.i.i.i ], [ %i.v, %bb.f ] ; 9 uses
  %i.k = load i8, ptr %.02946.i.i.i, align 1, !tbaa !177
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_:bb.a
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i37, 0
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !189
  %i.bn = load ptr, ptr %2, align 8, !tbaa !189
  %i.bo = tail call i32 @memcmp(ptr noundef %i.bn, ptr noundef %i.bm, i64 noundef %.sroa.speculated.i.i.i37) #23 ; 2 uses
  %.not.i.i.i39 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, %bb.k
  %i.bp = sub i64 %i.v, %i.bj
  %spec.select7.i.i.i.i42 = tail call i64 @llvm.smax.i64(i64 %i.bp, i64 -2147483648)
  %.08.i.i.i.i43 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i42, i64 2147483647)
  %.0.i6.i.i.i44 = trunc nsw i64 %.08.i.i.i.i43 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41
  %.0.i.i.i40 = phi i32 [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38 ], [ %.0.i6.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41 ]
  %i.bq = icmp slt i32 %.0.i.i.i40, 0
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !973
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %spec.select74 = select i1 %i.bt, ptr null, ptr %i.bh
  %spec.select75 = select i1 %i.bt, ptr %1, ptr %i.bh
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.bu = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36, %bb.m, %bb.j, %bb.i, %bb.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %spec.select, %bb.h ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select74, %bb.l ], [ %i.az, %bb.i ], [ %i.aj, %bb.f ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bv, %bb.m ], [ null, %bb.j ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %spec.select73, %bb.h ], [ %i.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select75, %bb.l ], [ %i.ba, %bb.i ], [ %i.aj, %bb.f ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bw, %bb.m ], [ %i.bf, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1224 ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !177
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !177
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #46
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #46
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !259 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176  ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !176  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !189
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !259 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3216

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !231
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !176  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !176  ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !189
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !189
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #23 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E9_M_invokeERKSt9_Any_dataOS1_OmSI_SJ_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !183   ; 3 uses
  %.val5 = load ptr, ptr %1, align 8, !tbaa !310  ; 3 uses
  %.val6 = load i64, ptr %2, align 8, !tbaa !190  ; 4 uses
  %.val7 = load ptr, ptr %3, align 8, !tbaa !310
  %.val8 = load i64, ptr %4, align 8, !tbaa !190
  %.not.i.i.i = icmp eq i64 %.val6, 0
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIvRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.01213.i.i.i.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val5, i64 %.01213.i.i.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !177
  switch i8 %i.b, label %.lr.ph18.i.preheader.i.i.i [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.c = add nuw i64 %.01213.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.c, %.val6
  br i1 %exitcond.not.i.i.i, label %.lr.ph18.i.preheader.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

.lr.ph18.i.preheader.i.i.i:                       ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.lcssa.i17.i.i.i = phi i64 [ %.val6, %bb.b ], [ %.01213.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  br label %.lr.ph18.i.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph18.i.preheader.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.g, %bb.c ], [ %.val6, %.lr.ph18.i.preheader.i.i.i ] ; 4 uses
  %i.d = getelementptr i8, ptr %.val5, i64 %.017.i.i.i.i
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !177
  switch i8 %i.f, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph18.i.i.i.i, %.lr.ph18.i.i.i.i
  %i.g = add i64 %.017.i.i.i.i, -1                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rIvRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.lr.ph18.i.i.i.i, !llvm.loop !16

_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i:      ; preds = %.lr.ph18.i.i.i.i
  %i.h = icmp ult i64 %.012.lcssa.i17.i.i.i, %.017.i.i.i.i
  br i1 %i.h, label %bb.d, label %"_ZSt10__invoke_rIvRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

bb.d:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i
  %i.i = load ptr, ptr %.val, align 8, !tbaa !3218, !nonnull !192, !align !253 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val5, i64 %.012.lcssa.i17.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !176
  %gepdiff.i.i.i = sub nuw nsw i64 %.017.i.i.i.i, %.012.lcssa.i17.i.i.i
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef %i.l, ptr noundef %i.j, i64 noundef %gepdiff.i.i.i) ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

"_ZSt10__invoke_rIvRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit": ; preds = %bb.c, %bb.a, %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3219, !nonnull !192, !align !253
  store ptr %.val7, ptr %i.o, align 8, !tbaa !310
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3220, !nonnull !192, !align !253
  store i64 %.val8, ptr %i.q, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #7 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail13parse_qualityEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0", ptr %0, align 8, !tbaa !1132
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !183
  store ptr %.val, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #50 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !3221
  store ptr %i.a, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !183 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKcS1_EZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1E9_M_invokeERKSt9_Any_dataOS1_SI_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #40 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.a, align 8
  %.val4 = load ptr, ptr %1, align 8, !tbaa !310  ; 8 uses
  %.val5 = load ptr, ptr %2, align 8, !tbaa !310  ; 2 uses
  %i.b = ptrtoint ptr %.val5 to i64
  %i.c = ptrtoint ptr %.val4 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %"_ZSt10__invoke_rIbRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1JS3_S3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %.val4, align 1, !tbaa !177
  switch i8 %i.f, label %"_ZSt10__invoke_rIbRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1JS3_S3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit" [
    i8 113, label %bb.c
    i8 81, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !177
  %.not24.i.i.i = icmp eq i8 %i.h, 61
  br i1 %.not24.i.i.i, label %bb.d, label %"_ZSt10__invoke_rIbRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1JS3_S3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 2 ; 2 uses
  %i.j = icmp ult ptr %i.i, %.val5
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %i.k = phi ptr [ %i.n, %bb.e ], [ %i.i, %bb.d ]
  %.01213.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ 2, %bb.d ] ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !177
  switch i8 %i.l, label %.critedge.i.i.i.i [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.m = add i64 %.01213.i.i.i.i, 1               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val4, i64 %i.m
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.d
  %.012.lcssa.i.i.i.i = phi i64 [ 2, %bb.d ], [ %.01213.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.e ] ; 3 uses
  br label %.lr.ph18.i.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %bb.f, %.critedge.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.r, %bb.f ], [ %i.d, %.critedge.i.i.i.i ] ; 3 uses
  %i.o = getelementptr i8, ptr %.val4, i64 %.017.i.i.i.i
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !177
  switch i8 %i.q, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i [
    i8 32, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph18.i.i.i.i, %.lr.ph18.i.i.i.i
  %i.r = add i64 %.017.i.i.i.i, -1                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i, label %.lr.ph18.i.i.i.i, !llvm.loop !16

_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i:      ; preds = %bb.f, %.lr.ph18.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ %.017.i.i.i.i, %.lr.ph18.i.i.i.i ] ; 3 uses
  %.not25.i.i.i = icmp ult i64 %.012.lcssa.i.i.i.i, %.0.lcssa.i.i.i.i
  br i1 %.not25.i.i.i, label %.lr.ph.preheader.i26.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i
  store i8 1, ptr %.val, align 1, !tbaa !301
  br label %"_ZSt10__invoke_rIbRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1JS3_S3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

.lr.ph.preheader.i26.i.i.i:                       ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val4, i64 %.012.lcssa.i.i.i.i ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 %.0.lcssa.i.i.i.i ; 4 uses
  %i.u = load i8, ptr %i.s, align 1, !tbaa !177   ; 3 uses
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10                     ; 3 uses
  br i1 %i.w, label %_ZZN7httplib6detail10from_charsEPKcS2_RdENKUlcE_clEc.exit.peel.i.i.i.i, label %.critedge.i27.i.i.i

_ZZN7httplib6detail10from_charsEPKcS2_RdENKUlcE_clEc.exit.peel.i.i.i.i: ; preds = %.lr.ph.preheader.i26.i.i.i
  %i.x = zext nneg i8 %i.u to i64
  %i.y = add nsw i64 %i.x, -48                    ; 2 uses
  %i.z = add nuw nsw i64 %.012.lcssa.i.i.i.i, 1
  %.not.peel.i.i.i.i = icmp samesign eq i64 %i.z, %.0.lcssa.i.i.i.i
  br i1 %.not.peel.i.i.i.i, label %_ZN7httplib6detail10from_charsEPKcS2_Rd.exit.i.i.i, label %.lr.ph.i28.preheader.i.i.i

.lr.ph.i28.preheader.i.i.i:                       ; preds = %_ZZN7httplib6detail10from_charsEPKcS2_RdENKUlcE_clEc.exit.peel.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  br label %.lr.ph.i28.i.i.i

.lr.ph.i28.i.i.i:                                 ; preds = %_ZZN7httplib6detail10from_charsEPKcS2_RdENKUlcE_clEc.exit.i.i.i.i, %.lr.ph.i28.preheader.i.i.i
  %.02745.i.i.i.i = phi ptr [ %i.aj, %_ZZN7httplib6detail10from_charsEPKcS2_RdENKUlcE_clEc.exit.i.i.i.i ], [ %i.aa, %.lr.ph.i28.preheader.i.i.i ] ; 3 uses
  %.03644.i.i.i.i = phi i64 [ %.4.i.i.i.i, %_ZZN7httplib6detail10from_charsEPKcS2_RdENKUlcE_clEc.exit.i.i.i.i ], [ %i.y, %.lr.ph.i28.preheader.i.i.i ] ; 4 uses
  %i.ab = load i8, ptr %.02745.i.i.i.i, align 1, !tbaa !177 ; 3 uses
  %i.ac = add i8 %i.ab, -48
  %i.ad = icmp ult i8 %i.ac, 10
  br i1 %i.ad, label %_ZZN7httplib6detail10from_charsEPKcS2_RdENKUlcE_clEc.exit.i.i.i.i, label %.critedge.i27.i.i.i

_ZZN7httplib6detail10from_charsEPKcS2_RdENKUlcE_clEc.exit.i.i.i.i: ; preds = %.lr.ph.i28.i.i.i
  %i.ae = icmp ult i64 %.03644.i.i.i.i, 1844674407370955161
  %i.af = mul nuw i64 %.03644.i.i.i.i, 10
  %i.ag = zext nneg i8 %i.ab to i64
  %i.ah = add i64 %i.af, -48
  %i.ai = add i64 %i.ah, %i.ag
  %.4.i.i.i.i = select i1 %i.ae, i64 %i.ai, i64 %.03644.i.i.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02745.i.i.i.i, i64 1 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i29.i.i.i, label %_ZN7httplib6detail10from_charsEPKcS2_Rd.exit.i.i.i, label %.lr.ph.i28.i.i.i, !llvm.loop !3222

.critedge.i27.i.i.i:                              ; preds = %.lr.ph.i28.i.i.i, %.lr.ph.preheader.i26.i.i.i
  %.02745.lcssa.i.i.i.i = phi ptr [ %i.s, %.lr.ph.preheader.i26.i.i.i ], [ %.02745.i.i.i.i, %.lr.ph.i28.i.i.i ] ; 2 uses
  %.03644.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i26.i.i.i ], [ %.03644.i.i.i.i, %.lr.ph.i28.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i = phi i8 [ %i.u, %.lr.ph.preheader.i26.i.i.i ], [ %i.ab, %.lr.ph.i28.i.i.i ]
end_hunk_1
