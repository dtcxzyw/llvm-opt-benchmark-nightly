Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib6detail18stream_line_reader7getlineEv:bb.a
  br label %_ZN7httplib6detail18stream_line_reader6appendEPKcm.exit

bb.l:                                             ; preds = %bb.j
  %i.as = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef 0, ptr noundef %i.am, i64 noundef %i.ad) ; 0 uses
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !183
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.at = phi i64 [ %i.ab, %bb.i ], [ %.pre.i, %bb.l ]
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %.347
  br i1 %i.av, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.358) #48
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.m
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %i.n, i64 noundef %.347) ; 0 uses
  br label %_ZN7httplib6detail18stream_line_reader6appendEPKcm.exit

_ZN7httplib6detail18stream_line_reader6appendEPKcm.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1378, !nonnull !199, !align !261 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !201
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, i64 noundef %.347)
  br i1 %.343, label %.thread83, label %.thread76.thread92

.thread76.thread92:                               ; preds = %_ZN7httplib6detail18stream_line_reader6appendEPKcm.exit
  %i.bb = add i64 %.347, %.048
  br label %bb.y

bb.o:                                             ; preds = %bb.b
  %i.bc = load i64, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = load i64, ptr %i.d, align 8
  %.0.i71 = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = icmp ugt i64 %.0.i71, 32767
  br i1 %i.bf, label %.thread83, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.bg = load ptr, ptr %0, align 8, !tbaa !1378, !nonnull !199, !align !261 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !201
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
  %i.bo = load i8, ptr %i.c, align 1, !tbaa !184  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bo, ptr %i.a, align 1, !tbaa !184
  %i.bp = load i64, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.br = load i64, ptr %i.d, align 8, !tbaa !339 ; 3 uses
  %i.bs = add i64 %i.br, 1
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !340
  %i.bu = icmp ult i64 %i.bs, %i.bt
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !341 ; 2 uses
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.br
  store i8 %i.bo, ptr %i.bw, align 1
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !339
  %i.by = add i64 %i.bx, 1                        ; 2 uses
  store i64 %i.by, ptr %i.d, align 8, !tbaa !339
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !341
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !184
  br label %_ZN7httplib6detail18stream_line_reader6appendEc.exit

bb.v:                                             ; preds = %bb.t
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef 0, ptr noundef %i.bv, i64 noundef %i.br) ; 0 uses
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !183
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cc = phi i64 [ %i.bp, %bb.s ], [ %.pre.i.i, %bb.v ]
  %i.cd = icmp eq i64 %i.cc, 4611686018427387903
  br i1 %i.cd, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.358) #48
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
  br label %bb.b, !llvm.loop !1377

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
  %i.g = load i8, ptr %i.f, align 1, !tbaa !184
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
  %i.m = load i8, ptr %i.l, align 1, !tbaa !184
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
  %i.b = load ptr, ptr %1, align 8, !tbaa !196    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !183  ; 7 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01213.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01213.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !184
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
  %i.j = load i8, ptr %i.i, align 1, !tbaa !184
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.l = icmp ugt i64 %.012.lcssa.i12, %i.d
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.354, ptr noundef nonnull @.str.355, i64 noundef %.012.lcssa.i12, i64 noundef %i.d) #48, !noalias !1381
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.a, %_ZN7httplib6detail4trimEPKcS2_mm.exit
  %.0.lcssa.i16 = phi i64 [ %.0.lcssa.i, %_ZN7httplib6detail4trimEPKcS2_mm.exit ], [ 0, %bb.a ]
  %.012.lcssa.i915 = phi i64 [ %.012.lcssa.i12, %_ZN7httplib6detail4trimEPKcS2_mm.exit ], [ 0, %bb.a ] ; 3 uses
  %i.m = sub i64 %.0.lcssa.i16, %.012.lcssa.i915
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !182, !alias.scope !1381
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.lcssa.i915 ; 2 uses
  %i.p = sub nuw i64 %i.d, %.012.lcssa.i915
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.p) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !1381
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !197, !noalias !1381
  %i.q = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.q, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !196, !alias.scope !1381
  %i.s = load i64, ptr %i.a, align 8, !tbaa !197, !noalias !1381
  store i64 %i.s, ptr %i.n, align 8, !tbaa !184, !alias.scope !1381
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.t = phi ptr [ %i.r, %.noexc10.i.i ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.o, align 1, !tbaa !184
  store i8 %i.u, ptr %i.t, align 1, !tbaa !184
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.o, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.v = load i64, ptr %i.a, align 8, !tbaa !197, !noalias !1381 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !183, !alias.scope !1381
  %i.x = load ptr, ptr %0, align 8, !tbaa !196, !alias.scope !1381
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !1381
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail23trim_double_quotes_copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !183  ; 8 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !182
  %i.g = load ptr, ptr %1, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !197
  br label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !196    ; 5 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !184
  %i.j = icmp eq i8 %i.i, 34
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !184
  %i.n = icmp eq i8 %i.m, 34
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = add i64 %i.d, -2                         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !182, !alias.scope !1384
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !1384
  store i64 %i.o, ptr %i.b, align 8, !tbaa !197, !noalias !1384
  %i.r = icmp ugt i64 %i.o, 15
  br i1 %i.r, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !196, !alias.scope !1384
  %i.t = load i64, ptr %i.b, align 8, !tbaa !197, !noalias !1384
  store i64 %i.t, ptr %i.p, align 8, !tbaa !184, !alias.scope !1384
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.u = phi ptr [ %i.s, %.noexc10.i.i ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.q, align 1, !tbaa !184
  store i8 %i.v, ptr %i.u, align 1, !tbaa !184
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.q, i64 %i.o, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !197, !noalias !1384 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !183, !alias.scope !1384
  %i.y = load ptr, ptr %0, align 8, !tbaa !196, !alias.scope !1384
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !1384
  br label %bb.i

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !197
  %i.ab = icmp ugt i64 %i.d, 15
  br i1 %i.ab, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !196
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !197
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !184
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.thread, %.noexc.i, %bb.f
  %i.ae = phi ptr [ %i.h, %.noexc.i ], [ %i.h, %bb.f ], [ %i.g, %.thread ] ; 2 uses
  %i.af = phi ptr [ %i.ac, %.noexc.i ], [ %i.aa, %bb.f ], [ %i.f, %.thread ] ; 2 uses
  switch i64 %i.d, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !184
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !184
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ae, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !183
  %i.aj = load ptr, ptr %0, align 8, !tbaa !196
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail6divideEPKcmcSt8functionIFvS2_mS2_mEE(ptr noundef %0, i64 noundef %1, i8 noundef signext %2, ptr nofreeobj noundef align 8 dereferenceable(32) %3) local_unnamed_addr #7 {
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
  %i.k = load i8, ptr %.02946.i.i.i, align 1, !tbaa !184
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRKS6_SC_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !183, !alias.scope !3041, !noalias !3040 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false), !alias.scope !3042
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !196, !alias.scope !3040, !noalias !3041
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !184, !alias.scope !3041, !noalias !3040
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !184, !alias.scope !3040, !noalias !3041
  %.phi.trans.insert5.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %.pre6.i.i.i.i37 = load i64, ptr %.phi.trans.insert5.i.i.i.i36, align 8, !tbaa !183, !alias.scope !3041, !noalias !3040
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35, %bb.f
  %i.br = phi i64 [ %i.bn, %bb.f ], [ %.pre6.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !183, !alias.scope !3040, !noalias !3041
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !196, !alias.scope !3041, !noalias !3040
  store i64 0, ptr %i.bs, align 8, !tbaa !183, !alias.scope !3041, !noalias !3040
  store i8 0, ptr %i.bk, align 8, !tbaa !184, !alias.scope !3041, !noalias !3040
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 64 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, label %.lr.ph.i.i.i28, !llvm.loop !90

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i40 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bv, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !228
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #47
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !225
  store ptr %.0.lcssa.i.i.i40, ptr %i.a, align 8, !tbaa !226
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !228
  ret void

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #47
  invoke void @__cxa_rethrow() #48
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.cb

bb.k:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #49
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !182
  %i.d = load ptr, ptr %1, align 8, !tbaa !196    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !183  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.f, ptr %i.b, align 8, !tbaa !197
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !196
  %i.i = load i64, ptr %i.b, align 8, !tbaa !197
  store i64 %i.i, ptr %i.c, align 8, !tbaa !184
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !184
  store i8 %i.k, ptr %i.j, align 1, !tbaa !184
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !183
  %i.n = load ptr, ptr %0, align 8, !tbaa !196
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !182
  %i.r = load ptr, ptr %2, align 8, !tbaa !196    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !183  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.t, ptr %i.a, align 8, !tbaa !197
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.v, ptr %i.p, align 8, !tbaa !196
  %i.w = load i64, ptr %i.a, align 8, !tbaa !197
  store i64 %i.w, ptr %i.q, align 8, !tbaa !184
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.y = load i8, ptr %i.r, align 1, !tbaa !184
  store i8 %i.y, ptr %i.x, align 1, !tbaa !184
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.z = load i64, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !183
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %0, align 8, !tbaa !196   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !184
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail17divide_param_pairES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E9_M_invokeERKSt9_Any_dataOS1_OmSH_SI_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !312   ; 3 uses
  %.val5 = load i64, ptr %2, align 8, !tbaa !197  ; 4 uses
  %.val6 = load ptr, ptr %3, align 8, !tbaa !312  ; 3 uses
  %.val7 = load i64, ptr %4, align 8, !tbaa !197  ; 4 uses
  %.not.i.i.i = icmp eq i64 %.val5, 0
  br i1 %.not.i.i.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.01213.i.i.i.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 %.01213.i.i.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !184
  switch i8 %i.b, label %.lr.ph18.i.preheader.i.i.i [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.c = add nuw i64 %.01213.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.c, %.val5
  br i1 %exitcond.not.i.i.i, label %.lr.ph18.i.preheader.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

.lr.ph18.i.preheader.i.i.i:                       ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.lcssa.i40.i.i.i = phi i64 [ %.val5, %bb.b ], [ %.01213.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  br label %.lr.ph18.i.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph18.i.preheader.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.g, %bb.c ], [ %.val5, %.lr.ph18.i.preheader.i.i.i ] ; 3 uses
  %i.d = getelementptr i8, ptr %.val, i64 %.017.i.i.i.i
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !184
  switch i8 %i.f, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph18.i.i.i.i, %.lr.ph18.i.i.i.i
  %i.g = add i64 %.017.i.i.i.i, -1                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i, label %.lr.ph18.i.i.i.i, !llvm.loop !16

_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i:      ; preds = %bb.c, %.lr.ph18.i.i.i.i, %bb.a
  %.012.lcssa.i37.i.i.i = phi i64 [ 0, %bb.a ], [ %.012.lcssa.i40.i.i.i, %.lr.ph18.i.i.i.i ], [ %.012.lcssa.i40.i.i.i, %bb.c ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.017.i.i.i.i, %.lr.ph18.i.i.i.i ]
  %i.h = load ptr, ptr %0, align 8, !tbaa !3044, !nonnull !199, !align !261 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.012.lcssa.i37.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !183
  %gepdiff.i.i.i = sub nsw i64 %.0.lcssa.i.i.i.i, %.012.lcssa.i37.i.i.i
  %i.l = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef %i.k, ptr noundef %i.i, i64 noundef %gepdiff.i.i.i) ; 0 uses
  %.not27.i.i.i = icmp eq i64 %.val7, 0
  br i1 %.not27.i.i.i, label %"_ZSt10__invoke_rIvRZN7httplib6detail17divide_param_pairEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_E3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %.lr.ph.i24.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i, %bb.d
  %.01213.i25.i.i.i = phi i64 [ %i.o, %bb.d ], [ 0, %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val6, i64 %.01213.i25.i.i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !184
  switch i8 %i.n, label %.lr.ph18.i17.preheader.i.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i24.i.i.i, %.lr.ph.i24.i.i.i
  %i.o = add nuw i64 %.01213.i25.i.i.i, 1         ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.o, %.val7
  br i1 %exitcond29.not.i.i.i, label %.lr.ph18.i17.preheader.i.i.i, label %.lr.ph.i24.i.i.i, !llvm.loop !15

.lr.ph18.i17.preheader.i.i.i:                     ; preds = %bb.d, %.lr.ph.i24.i.i.i
  %.012.lcssa.i1545.i.i.i = phi i64 [ %.val7, %bb.d ], [ %.01213.i25.i.i.i, %.lr.ph.i24.i.i.i ] ; 2 uses
  br label %.lr.ph18.i17.i.i.i

.lr.ph18.i17.i.i.i:                               ; preds = %bb.e, %.lr.ph18.i17.preheader.i.i.i
  %.017.i18.i.i.i = phi i64 [ %i.s, %bb.e ], [ %.val7, %.lr.ph18.i17.preheader.i.i.i ] ; 3 uses
  %i.p = getelementptr i8, ptr %.val6, i64 %.017.i18.i.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !184
  switch i8 %i.r, label %"_ZSt10__invoke_rIvRZN7httplib6detail17divide_param_pairEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_E3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit" [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph18.i17.i.i.i, %.lr.ph18.i17.i.i.i
  %i.s = add i64 %.017.i18.i.i.i, -1              ; 2 uses
  %.not.i19.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i19.i.i.i, label %"_ZSt10__invoke_rIvRZN7httplib6detail17divide_param_pairEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_E3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %.lr.ph18.i17.i.i.i, !llvm.loop !16

"_ZSt10__invoke_rIvRZN7httplib6detail17divide_param_pairEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_E3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %.lr.ph18.i17.i.i.i, %bb.e, %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i
  %.012.lcssa.i1542.i.i.i = phi i64 [ 0, %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i ], [ %.012.lcssa.i1545.i.i.i, %bb.e ], [ %.012.lcssa.i1545.i.i.i, %.lr.ph18.i17.i.i.i ] ; 2 uses
  %.0.lcssa.i20.i.i.i = phi i64 [ 0, %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i ], [ %.017.i18.i.i.i, %.lr.ph18.i17.i.i.i ], [ 0, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3045, !nonnull !199, !align !261 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val6, i64 %.012.lcssa.i1542.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !183
  %gepdiff28.i.i.i = sub nsw i64 %.0.lcssa.i20.i.i.i, %.012.lcssa.i1542.i.i.i
  %i.y = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.x, ptr noundef %i.v, i64 noundef %gepdiff28.i.i.i) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail17divide_param_pairES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_param_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail17divide_param_pairEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E3$_0", ptr %0, align 8, !tbaa !945
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_param_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !190
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_param_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1180
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_param_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_param_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN7httplib6detail5if2ipEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3047
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !368
  tail call void @freeifaddrs(ptr noundef %.val.val) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN7httplib6detail5if2ipEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail5if2ipEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail5if2ipEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0", ptr %0, align 8, !tbaa !945
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail5if2ipEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !190
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail5if2ipEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !3048
  store i64 %.val.i, ptr %0, align 8, !tbaa !3048
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail5if2ipEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail5if2ipEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nounwind
declare void @freeifaddrs(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN7httplib6detail20create_client_socketERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iibbSt8functionIFviEEllllllS8_RNS_5ErrorEENK3$_0clEiR8addrinfoRb"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 0, -1) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.addrinfo, align 8           ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !3050, !nonnull !199, !align !261 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !183
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3051, !nonnull !199, !align !1182
  %i.h = load i32, ptr %i.g, align 4, !tbaa !274
  call void @_ZN7httplib6detail5if2ipEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !183
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !3050, !nonnull !199, !align !261
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %7, align 8, !tbaa !196    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !184
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %i.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.s, align 8, !tbaa !361
  %i.t = load ptr, ptr %7, align 8, !tbaa !196
  %i.u = invoke noundef i32 @getaddrinfo(ptr noundef %i.t, ptr noundef nonnull @.str.66, ptr noundef nonnull %6, ptr noundef nonnull %i.a)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN7httplib6detail10scope_exitC2EOSt8functionIFvvEE.exit.i, label %.thread

_ZN7httplib6detail10scope_exitC2EOSt8functionIFvvEE.exit.i: ; preds = %.noexc
  %.014.i = load ptr, ptr %i.a, align 8, !tbaa !362 ; 2 uses
  %.not1215.not.i = icmp eq ptr %.014.i, null
  br i1 %.not1215.not.i, label %.thread.sink.split, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.016.i, i64 40
  %.0.i = load ptr, ptr %i.v, align 8, !tbaa !362 ; 2 uses
  %.not12.not.i = icmp eq ptr %.0.i, null
  br i1 %.not12.not.i, label %bb.f, label %.lr.ph.i, !llvm.loop !24

.lr.ph.i:                                         ; preds = %_ZN7httplib6detail10scope_exitC2EOSt8functionIFvvEE.exit.i, %bb.e
  %.016.i = phi ptr [ %.0.i, %bb.e ], [ %.014.i, %_ZN7httplib6detail10scope_exitC2EOSt8functionIFvvEE.exit.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !363
  %i.y = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !364
  %i.aa = call i32 @bind(i32 noundef %1, ptr noundef %i.x, i32 noundef %i.z) #23
  %.not13.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.not.i, label %.thread26, label %bb.e

.thread26:                                        ; preds = %.lr.ph.i
  %.val.val.i.pre.i27 = load ptr, ptr %i.a, align 8, !tbaa !362
  call void @freeaddrinfo(ptr noundef %.val.val.i.pre.i27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val.val.i.pre.i = load ptr, ptr %i.a, align 8, !tbaa !362
  br label %.thread.sink.split
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_:bb.a
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i37, 0
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !196
  %i.bn = load ptr, ptr %2, align 8, !tbaa !196
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
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !935
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1189 ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !184
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !184
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #47
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #47
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !267 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !183  ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !183  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !196
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
  %.029 = load ptr, ptr %.in, align 8, !tbaa !267 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3063

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !183  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !183  ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !196
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !196
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
  %.val = load ptr, ptr %0, align 8, !tbaa !190   ; 3 uses
  %.val5 = load ptr, ptr %1, align 8, !tbaa !312  ; 3 uses
  %.val6 = load i64, ptr %2, align 8, !tbaa !197  ; 4 uses
  %.val7 = load ptr, ptr %3, align 8, !tbaa !312
  %.val8 = load i64, ptr %4, align 8, !tbaa !197
  %.not.i.i.i = icmp eq i64 %.val6, 0
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIvRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.01213.i.i.i.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val5, i64 %.01213.i.i.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !184
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !184
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
  %i.i = load ptr, ptr %.val, align 8, !tbaa !3065, !nonnull !199, !align !261 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val5, i64 %.012.lcssa.i17.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !183
  %gepdiff.i.i.i = sub nuw nsw i64 %.017.i.i.i.i, %.012.lcssa.i17.i.i.i
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef %i.l, ptr noundef %i.j, i64 noundef %gepdiff.i.i.i) ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

"_ZSt10__invoke_rIvRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0JS3_mS3_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit": ; preds = %bb.c, %bb.a, %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3066, !nonnull !199, !align !261
  store ptr %.val7, ptr %i.o, align 8, !tbaa !312
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3067, !nonnull !199, !align !261
  store i64 %.val8, ptr %i.q, align 8, !tbaa !197
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
  store ptr @"_ZTIZN7httplib6detail13parse_qualityEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0", ptr %0, align 8, !tbaa !945
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !190
  store ptr %.val, ptr %0, align 8, !tbaa !190
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #51 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !3068
  store ptr %i.a, ptr %0, align 8, !tbaa !190
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !190 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #47
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail13parse_qualityEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKcS1_EZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1E9_M_invokeERKSt9_Any_dataOS1_SI_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #42 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.a, align 8
  %.val4 = load ptr, ptr %1, align 8, !tbaa !312  ; 8 uses
  %.val5 = load ptr, ptr %2, align 8, !tbaa !312  ; 2 uses
  %i.b = ptrtoint ptr %.val5 to i64
  %i.c = ptrtoint ptr %.val4 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %"_ZSt10__invoke_rIbRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1JS3_S3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %.val4, align 1, !tbaa !184
  switch i8 %i.f, label %"_ZSt10__invoke_rIbRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1JS3_S3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit" [
    i8 113, label %bb.c
    i8 81, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !184
  %.not24.i.i.i = icmp eq i8 %i.h, 61
  br i1 %.not24.i.i.i, label %bb.d, label %"_ZSt10__invoke_rIbRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1JS3_S3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 2 ; 2 uses
  %i.j = icmp ult ptr %i.i, %.val5
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %i.k = phi ptr [ %i.n, %bb.e ], [ %i.i, %bb.d ]
  %.01213.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ 2, %bb.d ] ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !184
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
  %i.q = load i8, ptr %i.p, align 1, !tbaa !184
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
  store i8 1, ptr %.val, align 1, !tbaa !303
  br label %"_ZSt10__invoke_rIbRZN7httplib6detail13parse_qualityEPKcS3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1JS3_S3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

.lr.ph.preheader.i26.i.i.i:                       ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val4, i64 %.012.lcssa.i.i.i.i ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 %.0.lcssa.i.i.i.i ; 4 uses
  %i.u = load i8, ptr %i.s, align 1, !tbaa !184   ; 3 uses
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
  %i.ab = load i8, ptr %.02745.i.i.i.i, align 1, !tbaa !184 ; 3 uses
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
  br i1 %.not.i29.i.i.i, label %_ZN7httplib6detail10from_charsEPKcS2_Rd.exit.i.i.i, label %.lr.ph.i28.i.i.i, !llvm.loop !3069

.critedge.i27.i.i.i:                              ; preds = %.lr.ph.i28.i.i.i, %.lr.ph.preheader.i26.i.i.i
  %.02745.lcssa.i.i.i.i = phi ptr [ %i.s, %.lr.ph.preheader.i26.i.i.i ], [ %.02745.i.i.i.i, %.lr.ph.i28.i.i.i ] ; 2 uses
  %.03644.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i26.i.i.i ], [ %.03644.i.i.i.i, %.lr.ph.i28.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i = phi i8 [ %i.u, %.lr.ph.preheader.i26.i.i.i ], [ %i.ab, %.lr.ph.i28.i.i.i ]
end_hunk_2
