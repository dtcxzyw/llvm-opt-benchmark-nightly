Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibinit?download=true
inline.NumInlined: 5554
inline.NumDeleted: 2159
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN2cv18ChessBoardDetector12addOuterQuadERNS_14ChessBoardQuadERSt6vectorIPS1_SaIS4_EE:bb.a
  %i.el = add i32 %i.ek, 3
  %i.em = and i32 %i.el, 3                        ; 2 uses
  %i.en = xor i32 %i.em, 2
  %i.eo = zext nneg i32 %i.en to i64              ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !161 ; 3 uses
  %.not102.1 = icmp eq ptr %i.eq, null
  br i1 %.not102.1, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load i8, ptr %i.er, align 8, !tbaa !222, !range !227, !noundef !116
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 9 uses
  %.not103.1 = icmp eq ptr %i.ew, null
  br i1 %.not103.1, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !222, !range !227, !noundef !116
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !221
  %i.fc = load i32, ptr %i.cz, align 4, !tbaa !221
  %i.fd = sub nsw i32 %i.fb, %i.fc
  %i.fe = tail call i32 @llvm.abs.i32(i32 %i.fd, i1 true)
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !220
  %i.fi = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !220
  %i.fj = sub nsw i32 %i.fh, %i.fi
  %i.fk = tail call i32 @llvm.abs.i32(i32 %i.fj, i1 true)
  %i.fl = icmp eq i32 %i.fk, 1
  br i1 %i.fl, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  store i32 2, ptr %i.y, align 8, !tbaa !166
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.eo
  store ptr %i.ew, ptr %i.fm, align 8, !tbaa !161
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  %i.fo = zext nneg i32 %i.em to i64              ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  store ptr %i.y, ptr %i.fp, align 8, !tbaa !161
  %i.fq = load i32, ptr %i.ew, align 8, !tbaa !166
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.ew, align 8, !tbaa !166
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fo
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !101
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.eo
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !101
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %..loopexit_crit_edge
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.da, %bb.w ], [ %i.da, %bb.v ], [ %i.da, %bb.u ], [ %i.da, %bb.t ], [ %i.da, %bb.s ], [ %i.da, %bb.r ], [ %i.da, %bb.q ] ; 2 uses
  %.1 = phi i32 [ %.0117, %..loopexit_crit_edge ], [ %i.aa, %bb.w ], [ %i.aa, %bb.v ], [ %i.aa, %bb.u ], [ %i.aa, %bb.t ], [ %i.aa, %bb.s ], [ %i.aa, %bb.r ], [ %i.aa, %bb.q ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, 4
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !731
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv18ChessBoardDetector19removeQuadFromGroupERSt6vectorIPNS_14ChessBoardQuadESaIS3_EERS2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !210    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 5 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %wide.trip.count = and i64 %i.g, 2147483647
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit
  %i.n = icmp sgt i32 %spec.select, -1
  br i1 %i.n, label %bb.m, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.03951 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %.loopexit ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !161  ; 11 uses
  %i.q = icmp eq ptr %i.p, %2
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.q, i32 %i.r, i32 %.03951 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !161
  %i.u = icmp eq ptr %i.t, %2
  br i1 %i.u, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !161
  %i.x = icmp eq ptr %i.w, %2
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !161
  %i.aa = icmp eq ptr %i.z, %2
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !161
  %i.ad = icmp eq ptr %i.ac, %2
  br i1 %i.ad, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.lcssa = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.lcssa
  store ptr null, ptr %i.ae, align 8, !tbaa !161
  %i.af = load i32, ptr %i.p, align 8, !tbaa !166
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %i.p, align 8, !tbaa !166
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !161
  %i.ai = icmp eq ptr %i.ah, %i.p
  br i1 %i.ai, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !161
  %i.ak = icmp eq ptr %i.aj, %i.p
  br i1 %i.ak, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !161
  %i.am = icmp eq ptr %i.al, %i.p
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !161
  %i.ao = icmp eq ptr %i.an, %i.p
  br i1 %i.ao, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.lcssa55 = phi i64 [ 0, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.lcssa55
  store ptr null, ptr %i.ap, align 8, !tbaa !161
  %i.aq = load i32, ptr %2, align 8, !tbaa !166
  %i.ar = add nsw i32 %i.aq, -1
  store i32 %i.ar, ptr %2, align 8, !tbaa !166
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.e, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !732

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv18ChessBoardDetector19removeQuadFromGroupERSt6vectorIPNS_14ChessBoardQuadESaIS3_EERS2_, ptr noundef nonnull @.str.1, i32 noundef 1348) #34
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %._crit_edge.thread
  unreachable

bb.l:                                             ; preds = %._crit_edge.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !149   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !144
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %i.as

bb.m:                                             ; preds = %._crit_edge
  %i.ay = add nsw i32 %i.h, -1                    ; 2 uses
  %.not = icmp eq i32 %spec.select, %i.ay
  %.pre = zext nneg i32 %i.ay to i64              ; 5 uses
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.pre
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !161
  %i.bb = zext nneg i32 %spec.select to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bb
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !161
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bd = icmp ult i64 %i.g, %.pre
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = sub nuw nsw i64 %.pre, %i.g
  tail call void @_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.be)
  br label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE6resizeEm.exit

bb.q:                                             ; preds = %bb.o
  %i.bf = icmp ugt i64 %i.g, %.pre
  br i1 %i.bf, label %bb.r, label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.pre ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.bg
  br i1 %.not.i.i, label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN2cv14ChessBoardQuadES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN2cv14ChessBoardQuadES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.r
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !212
  br label %_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN2cv14ChessBoardQuadESaIS2_EE6resizeEm.exit: ; preds = %bb.p, %bb.q, %bb.r, %_ZSt8_DestroyIPPN2cv14ChessBoardQuadES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #38
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5stackIPN2cv14ChessBoardQuadESt5dequeIS2_SaIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPN2cv14ChessBoardQuadESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !225  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN2cv14ChessBoardQuadESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !206
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #36
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN2cv14ChessBoardQuadESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !7

_ZNSt11_Deque_baseIPN2cv14ChessBoardQuadESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !228
  br label %_ZNSt11_Deque_baseIPN2cv14ChessBoardQuadESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIPN2cv14ChessBoardQuadESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN2cv14ChessBoardQuadESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPN2cv14ChessBoardQuadESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !230
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #36
  br label %_ZNSt5dequeIPN2cv14ChessBoardQuadESaIS2_EED2Ev.exit

_ZNSt5dequeIPN2cv14ChessBoardQuadESaIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN2cv14ChessBoardQuadESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2147483648, 1073741824) i32 @_ZN2cv18ChessBoardDetector24cleanFoundConnectedQuadsERSt6vectorIPNS_14ChessBoardQuadESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3316) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.29", align 8 ; 14 uses
  %3 = alloca %"class.std::vector.5", align 8     ; 11 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !207
  %i.c = add nsw i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.e = load i32, ptr %i.d, align 4, !tbaa !208
  %i.f = add nsw i32 %i.e, 1
  %i.g = mul nsw i32 %i.f, %i.c
  %i.h = add nsw i32 %i.g, 1
  %i.i = sdiv i32 %i.h, 2                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !212
  %i.l = load ptr, ptr %1, align 8, !tbaa !210
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = lshr exact i64 %i.o, 3                   ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 4 uses
  %.not = icmp slt i32 %i.i, %i.q
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %sext = shl i64 %i.o, 29                        ; 2 uses
  %i.r = ashr exact i64 %sext, 32                 ; 3 uses
  %scevgep.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %scevgep.i, i8 0, i64 1088, i1 false), !tbaa !155
  store ptr %scevgep.i, ptr %2, align 8, !tbaa !738
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i = icmp ugt i64 %i.r, 136
  store i64 %i.r, ptr %i.s, align 8, !tbaa !739
  br i1 %.not.i.i, label %bb.c, label %_ZN2cv10AutoBufferINS_6Point_IfEELm136EEC2Em.exit

bb.c:                                             ; preds = %bb.b
  %i.t = icmp ugt i64 %i.r, 2305843009213693951
  %i.u = ashr exact i64 %sext, 29                 ; 2 uses
  %i.v = select i1 %i.t, i64 -1, i64 %i.u
  %i.w = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #35 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.w, i8 0, i64 %i.u, i1 false), !tbaa !155
  store ptr %i.w, ptr %2, align 8, !tbaa !738
  br label %_ZN2cv10AutoBufferINS_6Point_IfEELm136EEC2Em.exit

_ZN2cv10AutoBufferINS_6Point_IfEELm136EEC2Em.exit: ; preds = %bb.b, %bb.c
  %i.x = icmp sgt i32 %i.q, 0
  br i1 %i.x, label %.lr.ph.preheader, label %.preheader.lr.ph

.lr.ph.preheader:                                 ; preds = %_ZN2cv10AutoBufferINS_6Point_IfEELm136EEC2Em.exit
  %wide.trip.count = and i64 %i.p, 2147483647
  br label %.lr.ph

.preheader.lr.ph:                                 ; preds = %.lr.ph, %_ZN2cv10AutoBufferINS_6Point_IfEELm136EEC2Em.exit
  %i.y = phi <2 x float> [ zeroinitializer, %_ZN2cv10AutoBufferINS_6Point_IfEELm136EEC2Em.exit ], [ %i.bn, %.lr.ph ]
  %i.z = sitofp i32 %i.q to float
  %i.aa = fdiv nnan float 1.000000e+00, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %sext215 = shl i64 %i.o, 29
  %i.ao = ashr i64 %sext215, 32
  %i.ap = sext i32 %i.i to i64
  br label %.preheader

bb.d:                                             ; preds = %bb.ab
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ar = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bn, %.lr.ph ]
  %i.as = load ptr, ptr %1, align 8, !tbaa !210
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !161 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !101
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !101
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !101
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !101
  %i.bd = load <2 x float>, ptr %i.aw, align 4, !tbaa !155
  %i.be = load <2 x float>, ptr %i.ay, align 4, !tbaa !155
  %i.bf = fadd <2 x float> %i.bd, %i.be
  %i.bg = load <2 x float>, ptr %i.ba, align 4, !tbaa !155
  %i.bh = fadd <2 x float> %i.bf, %i.bg
  %i.bi = load <2 x float>, ptr %i.bc, align 4, !tbaa !155
  %i.bj = fadd <2 x float> %i.bh, %i.bi
  %i.bk = fmul <2 x float> %i.bj, splat (float 2.500000e-01) ; 2 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !738
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  store <2 x float> %i.bk, ptr %i.bm, align 4
  %i.bn = fadd <2 x float> %i.ar, %i.bk           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.lr.ph, label %.lr.ph, !llvm.loop !733

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge164
  %indvars.iv197 = phi i64 [ %i.ao, %.preheader.lr.ph ], [ %indvars.iv.next198, %._crit_edge164 ] ; 5 uses
  %i.bo = icmp sgt i64 %indvars.iv197, 0
  br i1 %i.bo, label %.lr.ph152.preheader, label %._crit_edge153.thread

._crit_edge153.thread:                            ; preds = %.preheader
  %i.bp = load ptr, ptr %1, align 8, !tbaa !210   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 -8
  br label %._crit_edge164

.lr.ph152.preheader:                              ; preds = %.preheader
  %i.br = trunc nuw nsw i64 %indvars.iv197 to i32
end_hunk_0
