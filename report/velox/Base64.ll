inline.NumInlined: 419
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8facebook5velox8encoding6Base6410decodeMimeEPKcmPc:bb.a
  br i1 %exitcond113.not137.not, label %.lr.ph, label %.critedge._crit_edge

.critedge:                                        ; preds = %.lr.ph
  %i.be = add i64 %.5138, 1                       ; 2 uses
  %exitcond113.not = icmp eq i64 %i.be, %umax
  br i1 %exitcond113.not, label %.critedge._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %.critedge
  %.5138 = phi i64 [ %i.be, %.critedge ], [ %.493, %bb.q ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.5138
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL24kBase64ReverseIndexTableE, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = icmp ugt i8 %i.bj, 63
  br i1 %i.bk, label %.critedge, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !165
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.10, i64 38, i64 0, ptr nonnull %5), !noalias !165
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull align 8 %4)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bl = load ptr, ptr %4, align 8, !tbaa !21, !noalias !165 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN8facebook5velox6Status9UserErrorIJRA39_KcEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74: ; preds = %bb.s
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !8, !noalias !165
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #23
  br label %_ZN8facebook5velox6Status9UserErrorIJRA39_KcEEES1_DpOT_.exit

bb.t:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %4, align 8, !tbaa !21, !noalias !165 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i71: ; preds = %bb.t
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !8, !noalias !165
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i72: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !165
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA39_KcEEES1_DpOT_.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !162
  br label %bb.u, !llvm.loop !168

.critedge._crit_edge:                             ; preds = %.critedge, %bb.q
  store ptr null, ptr %0, align 8, !tbaa !51, !alias.scope !169
  br label %bb.u

bb.u:                                             ; preds = %.thread81, %_ZN8facebook5velox6Status9UserErrorIJRA39_KcEEES1_DpOT_.exit, %_ZN8facebook5velox6Status9UserErrorIJRA43_KcEEES1_DpOT_.exit, %.critedge._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox8encoding6Base6424calculateMimeDecodedSizeEPKcm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Expected") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.24", align 16 ; 4 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  switch i64 %2, label %.lr.ph [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !47
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !8
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL24kBase64ReverseIndexTableE, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = icmp ugt i8 %i.e, 63
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.g, align 8, !tbaa !47
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !175
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.11, i64 52, i64 0, ptr nonnull %4), !noalias !175
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 1, ptr noundef nonnull align 8 %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %3, align 8, !tbaa !21, !noalias !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN8facebook5velox6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !8, !noalias !175
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZN8facebook5velox6StatusD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %3, align 8, !tbaa !21, !noalias !175 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.o, align 8, !tbaa !8, !noalias !175
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !175
  resume { ptr, i32 } %i.m

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !172
  %i.s = load ptr, ptr %5, align 8, !tbaa !51, !noalias !178
  store ptr %i.s, ptr %0, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.t, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.j

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.01637 = phi i64 [ %i.ab, %bb.h ], [ 0, %bb.a ] ; 3 uses
  %.036 = phi i64 [ %spec.select32, %bb.h ], [ %2, %bb.a ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.01637
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8     ; 2 uses
  %.not = icmp eq i8 %i.v, 61
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL24kBase64ReverseIndexTableE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = icmp ugt i8 %i.y, 63
  %i.aa = sext i1 %i.z to i64
  %spec.select32 = add i64 %.036, %i.aa           ; 2 uses
  %i.ab = add nuw i64 %.01637, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !181

bb.i:                                             ; preds = %.lr.ph
  %.neg = sub i64 %.036, %2
  %i.ac = add i64 %.neg, %.01637
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.i
  %.2 = phi i64 [ %i.ac, %bb.i ], [ %spec.select32, %bb.h ] ; 3 uses
  %i.ad = and i64 %.2, 3
  %.not20 = icmp eq i64 %i.ad, 0
  %.neg21 = or i64 %.2, -4
  %spec.select = select i1 %.not20, i64 0, i64 %.neg21
  %i.ae = add i64 %.2, 3
  %i.af = lshr i64 %i.ae, 2
  %i.ag = mul nuw i64 %i.af, 3
  %i.ah = add i64 %spec.select, %i.ag
  store i64 %i.ah, ptr %0, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ai, align 8, !tbaa !47
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox8encoding6Base6410encodeMimeEPKcmPc(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 2
  br i1 %i.b, label %.lr.ph59, label %._crit_edge60.thread

.lr.ph59:                                         ; preds = %.preheader, %bb.c
  %.058 = phi ptr [ %.1.lcssa70, %bb.c ], [ %0, %.preheader ] ; 4 uses
  %.04657 = phi ptr [ %.2, %bb.c ], [ %2, %.preheader ] ; 2 uses
  %.04856 = phi i64 [ %6, %bb.c ], [ %1, %.preheader ] ; 4 uses
  %i.c = urem i64 %.04856, 3
  %i.d = sub nuw i64 %.04856, %i.c                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 57) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.058, i64 %.sroa.speculated
  %3 = icmp ugt i64 %i.d, 2
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph59
  %4 = sub i64 %.04856, %.sroa.speculated
  br label %bb.c

.lr.ph.preheader:                                 ; preds = %.lr.ph59
  %5 = getelementptr inbounds nuw i8, ptr %.058, i64 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi ptr [ %i.ao, %.lr.ph ], [ %5, %.lr.ph.preheader ]
  %.154 = phi ptr [ %i.j, %.lr.ph ], [ %.058, %.lr.ph.preheader ] ; 4 uses
  %.14753 = phi ptr [ %i.an, %.lr.ph ], [ %.04657, %.lr.ph.preheader ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.154, i64 1
  %i.h = load i8, ptr %.154, align 1, !tbaa !8
  %i.i = load i8, ptr %i.g, align 1, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %.154, i64 3 ; 3 uses
  %i.k = load i8, ptr %i.f, align 1, !tbaa !8
  %i.l = zext i8 %i.h to i32                      ; 2 uses
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = zext i8 %i.i to i32
  %i.o = shl nuw nsw i32 %i.n, 8                  ; 2 uses
  %i.p = zext i8 %i.k to i32                      ; 2 uses
  %i.q = or disjoint i32 %i.o, %i.p
  %i.r = or disjoint i32 %i.o, %i.m
  %i.s = lshr i32 %i.l, 2
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL14kBase64CharsetE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.14753, i64 1
  store i8 %i.v, ptr %.14753, align 1, !tbaa !8
  %i.x = lshr i32 %i.r, 12
  %i.y = and i32 %i.x, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL14kBase64CharsetE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.14753, i64 2
  store i8 %i.ab, ptr %i.w, align 1, !tbaa !8
  %i.ad = lshr i32 %i.q, 6
  %i.ae = and i32 %i.ad, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL14kBase64CharsetE, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %.14753, i64 3
  store i8 %i.ah, ptr %i.ac, align 1, !tbaa !8
  %i.aj = and i32 %i.p, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL14kBase64CharsetE, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %.14753, i64 4 ; 3 uses
  store i8 %i.am, ptr %i.ai, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %.154, i64 5 ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.e
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !182

._crit_edge:                                      ; preds = %.lr.ph
  %i.aq = sub i64 %.04856, %.sroa.speculated      ; 3 uses
  %i.ar = icmp ugt i64 %i.d, 56
  %i.as = icmp ne i64 %i.aq, 0
  %or.cond = and i1 %i.ar, %i.as
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %.14753, i64 5
  store i8 13, ptr %i.an, align 1, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %.14753, i64 6
  store i8 10, ptr %i.at, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %bb.b, %._crit_edge
  %6 = phi i64 [ %i.aq, %bb.b ], [ %i.aq, %._crit_edge ], [ %4, %._crit_edge.thread ] ; 4 uses
  %.1.lcssa70 = phi ptr [ %i.j, %bb.b ], [ %i.j, %._crit_edge ], [ %.058, %._crit_edge.thread ] ; 2 uses
  %.2 = phi ptr [ %i.au, %bb.b ], [ %i.an, %._crit_edge ], [ %.04657, %._crit_edge.thread ] ; 2 uses
  %i.av = icmp ugt i64 %6, 2
  br i1 %i.av, label %.lr.ph59, label %._crit_edge60, !llvm.loop !183

._crit_edge60:                                    ; preds = %bb.c
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %bb.f, label %._crit_edge60.thread

._crit_edge60.thread:                             ; preds = %.preheader, %._crit_edge60
  %.0.lcssa77 = phi ptr [ %.1.lcssa70, %._crit_edge60 ], [ %0, %.preheader ] ; 2 uses
  %.046.lcssa76 = phi ptr [ %.2, %._crit_edge60 ], [ %2, %.preheader ] ; 6 uses
  %.048.lcssa75 = phi i64 [ %6, %._crit_edge60 ], [ %1, %.preheader ]
  %i.aw = load i8, ptr %.0.lcssa77, align 1, !tbaa !8
  %i.ax = zext i8 %i.aw to i32                    ; 3 uses
  %i.ay = lshr i32 %i.ax, 2
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL14kBase64CharsetE, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %.046.lcssa76, i64 1 ; 2 uses
  store i8 %i.bb, ptr %.046.lcssa76, align 1, !tbaa !8
  %i.bd = icmp eq i64 %.048.lcssa75, 1
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge60.thread
  %i.be = shl nuw nsw i32 %i.ax, 4
  %i.bf = and i32 %i.be, 48
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL14kBase64CharsetE, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.046.lcssa76, i64 2
  store i8 %i.bi, ptr %i.bc, align 1, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %.046.lcssa76, i64 3
  store i8 61, ptr %i.bj, align 1, !tbaa !8
  store i8 61, ptr %i.bk, align 1, !tbaa !8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge60.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8
  %i.bn = shl nuw nsw i32 %i.ax, 4
  %i.bo = and i32 %i.bn, 48
  %i.bp = zext i8 %i.bm to i32                    ; 2 uses
  %i.bq = lshr i32 %i.bp, 4
  %i.br = or disjoint i32 %i.bq, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL14kBase64CharsetE, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %.046.lcssa76, i64 2
  store i8 %i.bu, ptr %i.bc, align 1, !tbaa !8
  %i.bw = shl nuw nsw i32 %i.bp, 2
  %i.bx = and i32 %i.bw, 60
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox8encodingL14kBase64CharsetE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %.046.lcssa76, i64 3
  store i8 %i.ca, ptr %i.bv, align 1, !tbaa !8
  store i8 61, ptr %i.cb, align 1, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge60, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN8facebook5velox8encoding6Base6424calculateMimeEncodedSizeEm(i64 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %_ZN8facebook5velox8encoding6Base6420calculateEncodedSizeEmb.exit

_ZN8facebook5velox8encoding6Base6420calculateEncodedSizeEmb.exit: ; preds = %bb.a
  %i.b = add i64 %0, 2
  %i.c = udiv i64 %i.b, 3
  %i.d = shl i64 %i.c, 2                          ; 2 uses
  %i.e = add i64 %i.d, -4
  %i.f = udiv i64 %i.e, 76
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = add i64 %i.g, %i.d
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN8facebook5velox8encoding6Base6420calculateEncodedSizeEmb.exit
  %.0 = phi i64 [ %i.h, %_ZN8facebook5velox8encoding6Base6420calculateEncodedSizeEmb.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN8facebook5velox6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZN8facebook5velox6Status5StateD2Ev.exit

_ZN8facebook5velox6Status5StateD2Ev.exit:         ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #23
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox6Status5StateD2Ev.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress optsize uwtable
define linkonce_odr void @_ZN5folly10UnexpectedIN8facebook5velox6StatusEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !51     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN8facebook5velox6StatusC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 6 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !75
  store i8 %i.d, ptr %i.c, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !16
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !41

.noexc6.i.i.i:                                    ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc6.i unwind label %bb.g

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #22
          to label %.noexc7.i unwind label %bb.g  ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.o, ptr %i.e, align 8, !tbaa !21
  store i64 %i.j, ptr %i.g, align 8, !tbaa !8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %bb.b
  %i.p = phi ptr [ %i.o, %.noexc7.i ], [ %i.g, %bb.b ] ; 3 uses
  switch i64 %i.j, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN8facebook5velox6Status5StateC2ERKS2_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !8
  store i8 %i.q, ptr %i.p, align 1, !tbaa !8
  br label %_ZN8facebook5velox6Status5StateC2ERKS2_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZN8facebook5velox6Status5StateC2ERKS2_.exit.i

_ZN8facebook5velox6Status5StateC2ERKS2_.exit.i:   ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.j, ptr %i.r, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !8
  br label %_ZN8facebook5velox6StatusC2ERKS1_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
end_hunk_0
