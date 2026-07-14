inline.NumInlined: 3843
inline.NumDeleted: 993
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN11OpenImageIO4v3_1L11format_typeIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_:bb.a
  %.not = icmp eq i64 %.sroa.622.0.extract.shift, 0 ; 2 uses
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #28 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 4611686018427387903
  br i1 %i.j, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #30
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.h, i64 noundef %i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.m = phi i64 [ 1, %bb.a ], [ %.sroa.622.0.extract.shift, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ]
  %sext = shl nuw i64 %i.m, 32
  %i.n = ashr exact i64 %sext, 32                 ; 3 uses
  %i.o = and i32 %i.d, 255                        ; 4 uses
  %i.p = icmp samesign ugt i32 %i.o, 1            ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.not150 = icmp eq i32 %i.o, 0
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ab = add nsw i32 %i.o, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ae = add nsw i64 %i.n, -1                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  br i1 %.not150, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.split.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66.us
  %.026119.us = phi i64 [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66.us ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 2 uses
  %.027118.us = phi ptr [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66.us ], [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ]
  br i1 %i.p, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.split.us
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.split.us
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !54  ; 2 uses
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #28 ; 2 uses
  %i.ai = load i64, ptr %i.f, align 8, !tbaa !25
  %i.aj = sub i64 4611686018427387903, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ah
  br i1 %i.ak, label %.split.us.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45.us: ; preds = %bb.e
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ag, i64 noundef %i.ah)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us.preheader unwind label %.loopexit91.split.us ; 0 uses

bb.f:                                             ; preds = %._crit_edge.us
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #28 ; 2 uses
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !25
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.an
  br i1 %i.aq, label %.split.us.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59.us: ; preds = %bb.f
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.am, i64 noundef %i.an)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit62.us unwind label %.loopexit91.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit62.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59.us, %._crit_edge.us
  %i.as = icmp ult i64 %.026119.us, %i.ae
  br i1 %i.as, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66.us

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit62.us
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !59 ; 2 uses
  %i.au = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #28 ; 2 uses
  %i.av = load i64, ptr %i.f, align 8, !tbaa !25
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.au
  br i1 %i.ax, label %.split.us.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i63.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i63.us: ; preds = %bb.g
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.at, i64 noundef %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66.us unwind label %.loopexit91.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i63.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit62.us
  %i.az = add nuw i64 %.026119.us, 1              ; 2 uses
  %exitcond157.not = icmp eq i64 %i.az, %i.n
  br i1 %exitcond157.not, label %.split125.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.split.us, !llvm.loop !135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit55.us
  %.0117.us = phi i32 [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit55.us ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us.preheader ] ; 2 uses
  %.1116.us = phi ptr [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit55.us ], [ %.027118.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ba = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28, !noalias !136 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !136
  %i.bb = load i8, ptr %.1116.us, align 1, !tbaa !7, !noalias !136 ; 18 uses
  %.sroa.03.0.insert.ext.i.us = zext i8 %i.bb to i128
  store i128 %.sroa.03.0.insert.ext.i.us, ptr %7, align 16, !noalias !136
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !139
  store i64 0, ptr %i.t, align 8, !noalias !139
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.s, align 8, !tbaa !99, !noalias !139
  store ptr %i.u, ptr %6, align 8, !tbaa !101, !noalias !139
  store i64 500, ptr %i.r, align 8, !tbaa !102, !noalias !139
  %i.bc = icmp eq i64 %i.ba, 2
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us
  %i.bd = load i16, ptr %2, align 1
  %i.be = icmp ne i16 %i.bd, 32123
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !139
  store ptr %2, ptr %5, align 8, !tbaa !27, !noalias !139
  store i64 %i.ba, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !36, !noalias !139
  store i32 0, ptr %i.v, align 8, !tbaa !112, !noalias !139
  store ptr %6, ptr %i.w, align 8, !tbaa !115, !noalias !139
  store i64 2, ptr %i.x, align 8, !tbaa !117, !noalias !139
  store ptr %7, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !7, !noalias !139
  store ptr null, ptr %i.y, align 8, !tbaa !92, !noalias !139
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull %2, i64 %i.ba, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %.noexc75.us unwind label %.loopexit.split.us

.noexc75.us:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !139
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us

bb.j:                                             ; preds = %bb.h
  %i.bh = zext i8 %i.bb to i32                    ; 4 uses
  %i.bi = or i32 %i.bh, 1
  %i.bj = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true)
  %i.bk = xor i32 %i.bj, 31
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !36
  %i.bo = zext i8 %i.bb to i64
  %i.bp = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 32                      ; 6 uses
  %i.br = trunc nuw i64 %i.bq to i32              ; 6 uses
  %i.bs = ashr i64 %i.bp, 32                      ; 5 uses
  %i.bt = icmp ugt i64 %i.bs, 500
  br i1 %i.bt, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread: ; preds = %bb.j
  store i64 %i.bs, ptr %i.t, align 8, !tbaa !103
  br label %bb.k

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us: ; preds = %bb.j
  invoke void @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bs)
          to label %.noexc76.us unwind label %.loopexit.split.us, !inline_history !142

.noexc76.us:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us
  %.pre.i.i.i.us = load i64, ptr %i.t, align 8, !tbaa !103 ; 3 uses
  %.pre14.i.i.i.us = load i64, ptr %i.r, align 8, !tbaa !102 ; 2 uses
  %.pre15.i.i.i.us = add i64 %.pre.i.i.i.us, %i.bs ; 3 uses
  %i.bu = icmp ult i64 %.pre14.i.i.i.us, %.pre15.i.i.i.us
  br i1 %i.bu, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i.us, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us: ; preds = %.noexc76.us
  %.pre = load ptr, ptr %6, align 8, !tbaa !101   ; 2 uses
  store i64 %.pre15.i.i.i.us, ptr %i.t, align 8, !tbaa !103
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i.i.i.us
  %.not.i.i.us = icmp eq ptr %.pre, null
  br i1 %.not.i.i.us, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i.us, label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us
  %i.bw = phi ptr [ %i.u, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread ], [ %i.bv, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us ] ; 3 uses
  %i.bx = icmp ugt i8 %i.bb, 99
  br i1 %i.bx, label %._crit_edge.i.i.i.us.thread, label %._crit_edge.i.i.i.us

._crit_edge.i.i.i.us.thread:                      ; preds = %bb.k
  %i.by = add i32 %i.br, -2                       ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz
  %i.cb = urem i8 %i.bb, 100
  %i.cc = shl nuw i8 %i.cb, 1
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2
  store i16 %i.cf, ptr %i.ca, align 1
  %9 = udiv i8 %i.bb, 100
  br label %bb.l

._crit_edge.i.i.i.us:                             ; preds = %bb.k
  %i.cg = icmp ugt i8 %i.bb, 9
  br i1 %i.cg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.us.thread, %._crit_edge.i.i.i.us
  %.0.lcssa.i.i.i.us191 = phi i32 [ %i.by, %._crit_edge.i.i.i.us.thread ], [ %i.br, %._crit_edge.i.i.i.us ]
  %.018.lcssa.i.i.i.us190 = phi i8 [ %9, %._crit_edge.i.i.i.us.thread ], [ %i.bb, %._crit_edge.i.i.i.us ]
  %i.ch = or disjoint i8 %.018.lcssa.i.i.i.us190, 48
  %i.ci = add i32 %.0.lcssa.i.i.i.us191, -1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cj
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !7
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us

bb.m:                                             ; preds = %._crit_edge.i.i.i.us
  %i.cl = add nuw nsw i64 %i.bq, 4294967294
  %i.cm = and i64 %i.cl, 4294967295
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cm
  %i.co = shl nuw nsw i32 %i.bh, 1
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2
  store i16 %i.cr, ptr %i.cn, align 1
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i.us: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us, %.noexc76.us
  %i.cs = phi i64 [ %.pre15.i.i.i.us, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us ], [ %.pre.i.i.i.us, %.noexc76.us ] ; 2 uses
  %i.ct = add i64 %i.cs, %i.bq                    ; 3 uses
  %i.cu = icmp ugt i64 %i.ct, %.pre14.i.i.i.us
  br i1 %i.cu, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.us, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.us

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.us: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i.us
  %i.cv = load ptr, ptr %i.s, align 8, !tbaa !99
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ct)
          to label %.noexc78.us unwind label %.loopexit.split.us, !inline_history !143

.noexc78.us:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.us
  %.pre.i.i.us = load i64, ptr %i.t, align 8, !tbaa !103 ; 2 uses
  %.pre14.i.i.us = load i64, ptr %i.r, align 8, !tbaa !102
  %.pre15.i.i.us = add i64 %.pre.i.i.us, %i.bq    ; 2 uses
  %i.cw = icmp ult i64 %.pre14.i.i.us, %.pre15.i.i.us
  br i1 %i.cw, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.us, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.us

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.us: ; preds = %.noexc78.us, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i.us
  %i.cx = phi i64 [ %.pre.i.i.us, %.noexc78.us ], [ %i.cs, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i.us ]
  %.pre-phi19.i.i.us = phi i64 [ %.pre15.i.i.us, %.noexc78.us ], [ %i.ct, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i.us ]
  store i64 %.pre-phi19.i.i.us, ptr %i.t, align 8, !tbaa !103
  %i.cy = load ptr, ptr %6, align 8, !tbaa !101   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx ; 3 uses
  %.not.not.i.us = icmp eq ptr %i.cy, null
  br i1 %.not.not.i.us, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.us, label %bb.n

bb.n:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.us
  %i.da = icmp ugt i8 %i.bb, 99
  br i1 %i.da, label %._crit_edge.i.i.us.thread, label %._crit_edge.i.i.us

._crit_edge.i.i.us.thread:                        ; preds = %bb.n
  %i.db = add i32 %i.br, -2                       ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dc
  %i.de = urem i8 %i.bb, 100
  %i.df = shl nuw i8 %i.de, 1
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2
  store i16 %i.di, ptr %i.dd, align 1
  %10 = udiv i8 %i.bb, 100
  br label %bb.o

._crit_edge.i.i.us:                               ; preds = %bb.n
  %i.dj = icmp ugt i8 %i.bb, 9
  br i1 %i.dj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.us.thread, %._crit_edge.i.i.us
  %.0.lcssa.i.i.us195 = phi i32 [ %i.db, %._crit_edge.i.i.us.thread ], [ %i.br, %._crit_edge.i.i.us ]
  %.018.lcssa.i.i.us194 = phi i8 [ %10, %._crit_edge.i.i.us.thread ], [ %i.bb, %._crit_edge.i.i.us ]
  %i.dk = or disjoint i8 %.018.lcssa.i.i.us194, 48
  %i.dl = add i32 %.0.lcssa.i.i.us195, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dm
  store i8 %i.dk, ptr %i.dn, align 1, !tbaa !7
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us

bb.p:                                             ; preds = %._crit_edge.i.i.us
  %i.do = add nuw nsw i64 %i.bq, 4294967294
  %i.dp = and i64 %i.do, 4294967295
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dp
  %i.dr = shl nuw nsw i32 %i.bh, 1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2
  store i16 %i.du, ptr %i.dq, align 1
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.us: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.us, %.noexc78.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.dv = icmp ugt i8 %i.bb, 99
  br i1 %i.dv, label %._crit_edge.i12.i.us.thread, label %._crit_edge.i12.i.us

._crit_edge.i12.i.us.thread:                      ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.us
  %i.dw = add i32 %i.br, -2                       ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dx
  %i.dz = urem i8 %i.bb, 100
  %i.ea = shl nuw i8 %i.dz, 1
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2
  store i16 %i.ed, ptr %i.dy, align 1
  %11 = udiv i8 %i.bb, 100
  br label %bb.q

._crit_edge.i12.i.us:                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.us
  %i.ee = icmp ugt i8 %i.bb, 9
  br i1 %i.ee, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i12.i.us.thread, %._crit_edge.i12.i.us
  %.0.lcssa.i14.i.us199 = phi i32 [ %i.dw, %._crit_edge.i12.i.us.thread ], [ %i.br, %._crit_edge.i12.i.us ]
  %.018.lcssa.i13.i.us198 = phi i8 [ %11, %._crit_edge.i12.i.us.thread ], [ %i.bb, %._crit_edge.i12.i.us ]
  %i.ef = or disjoint i8 %.018.lcssa.i13.i.us198, 48
  %i.eg = add i32 %.0.lcssa.i14.i.us199, -1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eh
  store i8 %i.ef, ptr %i.ei, align 1, !tbaa !7
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19.i.us

bb.r:                                             ; preds = %._crit_edge.i12.i.us
  %i.ej = add nuw nsw i64 %i.bq, 4294967294
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ek
  %i.em = shl nuw nsw i32 %i.bh, 1
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2
  store i16 %i.ep, ptr %i.el, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19.i.us

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19.i.us: ; preds = %bb.r, %bb.q
  %i.eq = getelementptr inbounds i8, ptr %i.a, i64 %i.bs
  %i.er = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.eq, ptr nonnull %6)
          to label %.noexc79.us unwind label %.loopexit.split.us ; 0 uses

.noexc79.us:                                      ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us: ; preds = %.noexc79.us, %bb.p, %bb.o, %bb.m, %bb.l, %.noexc75.us
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.es = load i64, ptr %i.t, align 8, !tbaa !103, !noalias !147 ; 6 uses
  %i.et = icmp ult i64 %i.es, 4611686018427387903
  call void @llvm.assume(i1 %i.et)
  %i.eu = load ptr, ptr %6, align 8, !tbaa !101, !noalias !147 ; 3 uses
  store ptr %i.z, ptr %8, align 8, !tbaa !23, !alias.scope !147
  %i.ev = icmp eq ptr %i.eu, null
  %i.ew = icmp ne i64 %i.es, 0
  %or.cond.i.i.i.us = and i1 %i.ew, %i.ev
  br i1 %or.cond.i.i.i.us, label %.noexc.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !147
  store i64 %i.es, ptr %i.b, align 8, !tbaa !36, !noalias !147
  %i.ex = icmp samesign ugt i64 %i.es, 15
  br i1 %i.ex, label %.noexc.i.i.i.us, label %._crit_edge.i.i.i.i.us

.noexc.i.i.i.us:                                  ; preds = %bb.s
  %i.ey = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc7.i.us unwind label %.loopexit.split.us ; 2 uses

.noexc7.i.us:                                     ; preds = %.noexc.i.i.i.us
  store ptr %i.ey, ptr %8, align 8, !tbaa !35, !alias.scope !147
  %i.ez = load i64, ptr %i.b, align 8, !tbaa !36, !noalias !147
  store i64 %i.ez, ptr %i.z, align 8, !tbaa !7, !alias.scope !147
  br label %._crit_edge.i.i.i.i.us

._crit_edge.i.i.i.i.us:                           ; preds = %.noexc7.i.us, %bb.s
  %i.fa = phi ptr [ %i.ey, %.noexc7.i.us ], [ %i.z, %bb.s ] ; 2 uses
  switch i64 %i.es, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.us
  %i.fb = load i8, ptr %i.eu, align 1, !tbaa !7
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !7
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr align 1 %i.eu, i64 %i.es, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i.i.us
  %i.fc = load i64, ptr %i.b, align 8, !tbaa !36, !noalias !147 ; 2 uses
  store i64 %i.fc, ptr %i.aa, align 8, !tbaa !25, !alias.scope !147
  %i.fd = load ptr, ptr %8, align 8, !tbaa !35, !alias.scope !147
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store i8 0, ptr %i.fe, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !147
  %i.ff = load ptr, ptr %6, align 8, !tbaa !101, !noalias !139 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.ff, %i.u
  br i1 %.not.i.i.i.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.ff) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !136
  %i.fg = load i64, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.fh = load i64, ptr %i.f, align 8, !tbaa !25
  %i.fi = sub i64 4611686018427387903, %i.fh
  %i.fj = icmp ult i64 %i.fi, %i.fg
  br i1 %i.fj, label %.split130.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us: ; preds = %bb.x
  %i.fk = load ptr, ptr %8, align 8, !tbaa !35
  %i.fl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fk, i64 noundef %i.fg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us unwind label %.loopexit81.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us
  %i.fm = load ptr, ptr %8, align 8, !tbaa !35    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.z
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us
  %i.fo = load i64, ptr %i.z, align 8, !tbaa !7
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.fq = icmp slt i32 %.0117.us, %i.ab
  %or.cond.us = select i1 %i.p, i1 %i.fq, i1 false
  br i1 %or.cond.us, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit55.us

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %i.fr = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.fs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fr) #28 ; 2 uses
  %i.ft = load i64, ptr %i.f, align 8, !tbaa !25
  %i.fu = sub i64 4611686018427387903, %i.ft
  %i.fv = icmp ult i64 %i.fu, %i.fs
  br i1 %i.fv, label %.split137.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i52.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i52.us: ; preds = %bb.y
  %i.fw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.fr, i64 noundef %i.fs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit55.us unwind label %.loopexit86.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit55.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i52.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %i.fx = add nuw nsw i32 %.0117.us, 1            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.1116.us, i64 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.fx, %i.o
  br i1 %exitcond.not, label %._crit_edge.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.us, !llvm.loop !148

._crit_edge.us:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit55.us
  br i1 %i.p, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit62.us

.loopexit91.split.us:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i63.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45.us
  %lpad.loopexit93.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit91

.loopexit.split.us:                               ; preds = %.noexc.i.i.i.us, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19.i.us, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.us, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us, %bb.i
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit81.split.us:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us
  %lpad.loopexit83.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit86.split.us:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i52.us
  %lpad.loopexit88.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit91

.split125.us:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit70, label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66
  %.026119 = phi i64 [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 2 uses
  %i.fz = icmp ult i64 %.026119, %i.ae
  br i1 %i.fz, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66

.split.us.invoke:                                 ; preds = %bb.e, %bb.g, %bb.f, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #30
          to label %.split.us.cont unwind label %.loopexit.split-lp92

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

.loopexit91.split.split:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i63
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit91

.loopexit.split-lp92:                             ; preds = %.split.us.invoke
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit91

.noexc.i.i:                                       ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.100) #30
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %.noexc.i.i
  unreachable

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ga = load ptr, ptr %6, align 8, !tbaa !101, !noalias !139 ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.ga, %i.u
  br i1 %.not.i.i8.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i, label %bb.aa
end_hunk_0
