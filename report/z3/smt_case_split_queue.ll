Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_case_split_queue?download=true
inline.NumInlined: 1215
inline.NumDeleted: 488
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12_GLOBAL__N_120rel_case_split_queue7displayERSo:bb.a
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4.thread, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4:           ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !60
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16, i64 noundef 13) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !572
  tail call fastcc void @_ZN12_GLOBAL__N_120rel_case_split_queue12display_coreERSoR10ptr_vectorI4exprEjj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.o, i32 noundef 1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !574
  tail call fastcc void @_ZN12_GLOBAL__N_120rel_case_split_queue12display_coreERSoR10ptr_vectorI4exprEjj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %i.r, i32 noundef 2)
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4.thread

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4.thread:    ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120rel_case_split_queueD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(72) dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_120rel_case_split_queueE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !575 ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %.val, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !566  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.g)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !566  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i2, label %_ZN6vectorIP4exprLb0EjED2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.l)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit3 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit3:                ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120rel_case_split_queueD0Ev(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_120rel_case_split_queueE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !575 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %.val.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit.i unwind label %bb.c, !inline_history !793

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24, !inline_history !793
  unreachable

_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !566  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit.i
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.g)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i unwind label %bb.e, !inline_history !793

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24, !inline_history !793
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit.i:               ; preds = %bb.d, %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !566  ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i2.i, label %_ZN12_GLOBAL__N_120rel_case_split_queueD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.l)
          to label %_ZN12_GLOBAL__N_120rel_case_split_queueD2Ev.exit unwind label %bb.g, !inline_history !793

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #24, !inline_history !793
  unreachable

_ZN12_GLOBAL__N_120rel_case_split_queueD2Ev.exit: ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

declare noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120rel_case_split_queue20next_case_split_coreER10ptr_vectorI4exprERjS5_R5lbool(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  store i32 0, ptr %4, align 4, !tbaa !644
  %i.b = load ptr, ptr %1, align 8, !tbaa !566    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !60   ; 2 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !60     ; 2 uses
  %i.g = icmp ult i32 %i.f, %i.e
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge36
  %i.j = phi i32 [ %i.f, %.lr.ph ], [ %i.bz, %.critedge36 ]
  %i.k = load ptr, ptr %1, align 8, !tbaa !566
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !640  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 65535
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZNK11ast_manager6is_andEPK4expr.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !662
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !665  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager6is_andEPK4expr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load <2 x i32>, ptr %i.v, align 8        ; 2 uses
  %i.x = icmp eq <2 x i32> %i.w, zeroinitializer
  %i.y = shufflevector <2 x i1> %i.x, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.z = shufflevector <2 x i32> %i.w, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = icmp eq <2 x i32> %i.z, <i32 6, i32 5>
  %i.ab = select <2 x i1> %i.y, <2 x i1> %i.aa, <2 x i1> zeroinitializer
  br label %_ZNK11ast_manager6is_andEPK4expr.exit

_ZNK11ast_manager6is_andEPK4expr.exit:            ; preds = %bb.c, %bb.b, %bb.d
  %i.ac = phi <2 x i1> [ %i.ab, %bb.d ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !670, !nonnull !51, !align !565 ; 3 uses
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !642 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8928
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !671 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNK3smt7context14b_internalizedEPK4expr.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i:            ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !60
  %.not.i.i.i = icmp ult i32 %i.ae, %i.aj
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK3smt7context14b_internalizedEPK4expr.exit

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i
  %i.ak = zext i32 %i.ae to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ak
  br label %_ZNK3smt7context14b_internalizedEPK4expr.exit

_ZNK3smt7context14b_internalizedEPK4expr.exit:    ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ %i.al, %bb.e ], [ @_ZN3smtL13null_bool_varE, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i ], [ @_ZN3smtL13null_bool_varE, %_ZNK11ast_manager6is_andEPK4expr.exit ]
  %i.am = load i32, ptr %.0.i.i.i, align 4, !tbaa !60
  %.not = icmp eq i32 %i.am, 2147483647
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK3smt7context14b_internalizedEPK4expr.exit
  %i.an = zext i32 %i.ae to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !60 ; 2 uses
  store i32 %i.ap, ptr %3, align 4, !tbaa !60
  %i.aq = shl i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 8944
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !638
  %i.at = zext i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !639 ; 3 uses
  %i.aw = sext i8 %i.av to i32
  %5 = insertelement <2 x i8> poison, i8 %i.av, i64 0
  %6 = shufflevector <2 x i8> %5, <2 x i8> poison, <2 x i32> zeroinitializer
  %7 = icmp eq <2 x i8> %6, <i8 1, i8 -1>
  %8 = and <2 x i1> %i.ac, %7
  %9 = bitcast <2 x i1> %8 to i2
  %.not69 = icmp eq i2 %9, 0
  br i1 %.not69, label %bb.k, label %bb.g

.thread:                                          ; preds = %_ZNK3smt7context14b_internalizedEPK4expr.exit
  %i.ax = extractelement <2 x i1> %i.ac, i64 0
  br i1 %i.ax, label %bb.g, label %.critedge36

bb.g:                                             ; preds = %.thread, %bb.f
  %.03243 = phi i32 [ 1, %.thread ], [ %i.aw, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !640
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !677, !nonnull !51, !align !565
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 640
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !680
  %i.bb = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121has_child_assigned_toERN3smt7contextEP3app5lboolRP4exprj(ptr noundef nonnull align 8 dereferenceable(10728) %i.ad, ptr noundef nonnull %i.n, i32 noundef %.03243, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.ba)
  br i1 %i.bb, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !658, !nonnull !51, !align !565
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 888
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !721 ; 2 uses
  %.not47 = icmp eq ptr %i.bf, null
  br i1 %.not47, label %._crit_edge55, label %bb.i

._crit_edge55:                                    ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !640
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.14, i64 noundef 17) ; 0 uses
  %i.bi = load i32, ptr %i.n, align 4, !tbaa !642
  %i.bj = zext i32 %i.bi to i64
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i64 noundef %i.bj) ; 2 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !640 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !642
  %i.bo = zext i32 %i.bn to i64
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i64 noundef %i.bo)
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge55, %bb.i
  %i.br = phi ptr [ %.pre, %._crit_edge55 ], [ %i.bm, %bb.i ]
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !670, !nonnull !51, !align !565
  %i.bt = tail call i32 @_ZNK3smt7context11get_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %i.bs, ptr noundef %i.br) ; 2 uses
  %i.bu = lshr i32 %i.bt, 1
  store i32 %i.bu, ptr %3, align 4, !tbaa !60
  %i.bv = trunc i32 %i.bt to i1
  %i.bw = select i1 %i.bv, i32 -1, i32 1
  store i32 %i.bw, ptr %4, align 4, !tbaa !644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.bx = icmp eq i8 %i.av, 0
  br i1 %i.bx, label %bb.l, label %.critedge36

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %4, align 4, !tbaa !644
  br label %bb.m

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge36

.critedge36:                                      ; preds = %.thread, %.critedge, %bb.k
  %i.by = load i32, ptr %2, align 4, !tbaa !60
  %i.bz = add i32 %i.by, 1                        ; 3 uses
  store i32 %i.bz, ptr %2, align 4, !tbaa !60
  %i.ca = icmp ult i32 %i.bz, %i.e
  br i1 %i.ca, label %bb.b, label %._crit_edge, !llvm.loop !794

._crit_edge:                                      ; preds = %.critedge36, %bb.a, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  store i32 2147483647, ptr %3, align 4, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %._crit_edge
  ret void
}

declare noundef zeroext i1 @_ZN3smt7context12is_ext_diseqEPNS_5enodeES2_j(ptr noundef nonnull align 8 dereferenceable(10728), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121has_child_assigned_toERN3smt7contextEP3app5lboolRP4exprj(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.ptr_vector, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr null, ptr %5, align 8, !tbaa !566
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !722  ; 2 uses
  %.not46.not = icmp eq i32 %i.b, 0
  br i1 %.not46.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %wide.trip.count78 = zext i32 %i.b to i64       ; 3 uses
  switch i32 %4, label %.lr.ph.split.split.us [
    i32 1, label %.lr.ph.split.us.split.us
    i32 0, label %.lr.ph.split.split
  ]

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph, %bb.g
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv70
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !640  ; 2 uses
  %i.f = invoke noundef i32 @_ZNK3smt7context14get_assignmentEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.e)
          to label %bb.b unwind label %.split.us.split.us ; 2 uses

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.g = icmp eq i32 %i.f, %2
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %5, align 8, !tbaa !566    ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !60
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.us.us

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.us.us unwind label %.split.us.split.us

.noexc.us.us:                                     ; preds = %bb.f
  %.pre.i.us.us = load ptr, ptr %5, align 8, !tbaa !566 ; 2 uses
  %.phi.trans.insert.i.us.us = getelementptr inbounds i8, ptr %.pre.i.us.us, i64 -4
  %.pre2.i.us.us = load i32, ptr %.phi.trans.insert.i.us.us, align 4, !tbaa !60
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.us.us

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.us.us: ; preds = %.noexc.us.us, %bb.e
  %i.p = phi i32 [ %.pre2.i.us.us, %.noexc.us.us ], [ %i.l, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.pre.i.us.us, %.noexc.us.us ], [ %i.i, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  store ptr %i.e, ptr %i.t, align 8, !tbaa !640
  %i.u = add i32 %i.p, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.us.us, %bb.c
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count78
  br i1 %exitcond74.not, label %.critedge, label %.lr.ph.split.us.split.us, !llvm.loop !795

.split.us.split.us:                               ; preds = %bb.f, %.lr.ph.split.us.split.us
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.k
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %bb.k ], [ 0, %.lr.ph ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv75
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !640  ; 2 uses
  %i.y = invoke noundef i32 @_ZNK3smt7context14get_assignmentEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.x)
          to label %bb.h unwind label %.split.split.us ; 2 uses

bb.h:                                             ; preds = %.lr.ph.split.split.us
  %i.z = icmp eq i32 %i.y, %2
  br i1 %i.z, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.x, ptr %3, align 8, !tbaa !640
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !795

.split.split.us:                                  ; preds = %.lr.ph.split.split.us
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.lr.ph ] ; 2 uses
  %.02647 = phi i1 [ %.2.ph, %bb.p ], [ false, %.lr.ph ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !640 ; 2 uses
  %i.ae = invoke noundef i32 @_ZNK3smt7context14get_assignmentEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.ad)
          to label %bb.l unwind label %.split.split ; 2 uses

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.af = icmp eq i32 %i.ae, %2
  br i1 %i.af, label %.loopexit, label %bb.m
end_hunk_0
begin_hunk_1_@_ZNK3smt8cg_table4findEPNS_5enodeE:bb.a
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !679 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !679
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !751
  %i.cx = icmp eq ptr %i.cw, %i.az
  br i1 %i.cx, label %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table14cg_binary_hashENS3_12cg_binary_eqEE6equalsERKS2_S8_.exit.i, label %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table14cg_binary_hashENS3_12cg_binary_eqEE6equalsERKS2_S8_.exit.thread.i

_ZNK10chashtableIPN3smt5enodeENS0_8cg_table14cg_binary_hashENS3_12cg_binary_eqEE6equalsERKS2_S8_.exit.i: ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !679
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !751
  %i.dc = icmp eq ptr %i.db, %i.bg
  br i1 %i.dc, label %_ZN10chashtableIPN3smt5enodeENS0_8cg_table13cg_unary_hashENS3_11cg_unary_eqEE4findERKS2_RS2_.exit.thread, label %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table14cg_binary_hashENS3_12cg_binary_eqEE6equalsERKS2_S8_.exit.thread.i

_ZNK10chashtableIPN3smt5enodeENS0_8cg_table14cg_binary_hashENS3_12cg_binary_eqEE6equalsERKS2_S8_.exit.thread.i: ; preds = %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table14cg_binary_hashENS3_12cg_binary_eqEE6equalsERKS2_S8_.exit.i, %bb.g
  %i.dd = load i32, ptr %i.cq, align 8, !tbaa !844
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.cq, align 8, !tbaa !844
  %i.df = load ptr, ptr %.0.i9, align 8, !tbaa !843 ; 2 uses
  %.not.i10 = icmp eq ptr %i.df, null
  br i1 %.not.i10, label %_ZN10chashtableIPN3smt5enodeENS0_8cg_table13cg_unary_hashENS3_11cg_unary_eqEE4findERKS2_RS2_.exit.thread, label %bb.g, !llvm.loop !826

bb.h:                                             ; preds = %_ZN3smt8cg_table9get_tableEPNS_5enodeE.exit
  %i.dg = call noundef zeroext i1 @_ZN10chashtableIPN3smt5enodeENS0_8cg_table12cg_comm_hashENS3_10cg_comm_eqEE4findERKS2_RS2_(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.dh = load ptr, ptr %i.b, align 8
  %i.di = select i1 %i.dg, ptr %i.dh, ptr null
  br label %_ZN10chashtableIPN3smt5enodeENS0_8cg_table13cg_unary_hashENS3_11cg_unary_eqEE4findERKS2_RS2_.exit.thread

bb.i:                                             ; preds = %_ZN3smt8cg_table9get_tableEPNS_5enodeE.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !847
  %i.dl = add i32 %i.dk, -1
  %i.dm = tail call noundef i32 @_ZNK3smt8cg_table7cg_hashclEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull %1)
  %i.dn = and i32 %i.dm, %i.dl
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !848
  %i.dp = zext i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dp ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !850
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = and i64 %i.ds, 7
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %_ZN10chashtableIPN3smt5enodeENS0_8cg_table13cg_unary_hashENS3_11cg_unary_eqEE4findERKS2_RS2_.exit.thread, label %.preheader.i12

.preheader.i12:                                   ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.preheader.i12
  %.0.i13 = phi ptr [ %i.eb, %bb.k ], [ %i.dq, %.preheader.i12 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !679
  %i.dy = tail call noundef zeroext i1 @_ZNK3smt8cg_table5cg_eqclEPNS_5enodeES3_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef %i.dx, ptr noundef nonnull %1)
  br i1 %i.dy, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dz = load i32, ptr %i.dv, align 8, !tbaa !851
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dv, align 8, !tbaa !851
  %i.eb = load ptr, ptr %.0.i13, align 8, !tbaa !850 ; 2 uses
  %.not.i14 = icmp eq ptr %i.eb, null
  br i1 %.not.i14, label %_ZN10chashtableIPN3smt5enodeENS0_8cg_table13cg_unary_hashENS3_11cg_unary_eqEE4findERKS2_RS2_.exit.thread, label %bb.j, !llvm.loop !827

bb.l:                                             ; preds = %bb.j
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !852
  br label %_ZN10chashtableIPN3smt5enodeENS0_8cg_table13cg_unary_hashENS3_11cg_unary_eqEE4findERKS2_RS2_.exit.thread

_ZN10chashtableIPN3smt5enodeENS0_8cg_table13cg_unary_hashENS3_11cg_unary_eqEE4findERKS2_RS2_.exit.thread: ; preds = %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table14cg_binary_hashENS3_12cg_binary_eqEE6equalsERKS2_S8_.exit.thread.i, %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table14cg_binary_hashENS3_12cg_binary_eqEE6equalsERKS2_S8_.exit.i, %bb.e, %bb.d, %bb.k, %bb.i, %bb.f, %bb.c, %bb.l, %bb.h
  %.0 = phi ptr [ null, %bb.f ], [ %i.di, %bb.h ], [ null, %bb.e ], [ null, %bb.i ], [ null, %bb.k ], [ %i.ed, %bb.l ], [ null, %bb.c ], [ %i.al, %bb.d ], [ null, %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table14cg_binary_hashENS3_12cg_binary_eqEE6equalsERKS2_S8_.exit.thread.i ], [ %i.cs, %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table14cg_binary_hashENS3_12cg_binary_eqEE6equalsERKS2_S8_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10chashtableIPN3smt5enodeENS0_8cg_table12cg_comm_hashENS3_10cg_comm_eqEE4findERKS2_RS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !857
  %i.c = add i32 %i.b, -1
  %i.d = load ptr, ptr %1, align 8, !tbaa !679    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !679
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !751  ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !750
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !650  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !679
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !751  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !750
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !650  ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.r)
  %spec.select7.i.i = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.r)
  %i.s = shl i32 %spec.select.i.i, 16
  %i.t = and i32 %spec.select7.i.i, 65535
  %i.u = or disjoint i32 %i.s, %i.t               ; 2 uses
  %i.v = add i32 %i.u, 2127912214
  %i.w = shl i32 %i.u, 12
  %i.x = add i32 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i32 %i.x, 19
  %i.z = xor i32 %i.x, %i.y
  %i.aa = xor i32 %i.z, -949894596                ; 2 uses
  %i.ab = add i32 %i.aa, 374761393
  %i.ac = shl i32 %i.aa, 5
  %i.ad = add i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = add i32 %i.ad, -744332180
  %i.af = shl i32 %i.ad, 9
  %i.ag = xor i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = add i32 %i.ag, -42973499
  %i.ai = shl i32 %i.ag, 3
  %i.aj = add i32 %i.ah, %i.ai                    ; 2 uses
  %i.ak = lshr i32 %i.aj, 16
  %i.al = xor i32 %i.aj, %i.ak
  %i.am = xor i32 %i.al, -1252372727
  %i.an = and i32 %i.am, %i.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !858
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !860
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = and i64 %i.at, 7
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %.loopexit15, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table12cg_comm_hashENS3_10cg_comm_eqEE6equalsERKS2_S8_.exit
  %.0 = phi ptr [ %i.bo, %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table12cg_comm_hashENS3_10cg_comm_eqEE6equalsERKS2_S8_.exit ], [ %i.ar, %.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !679 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !679
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !751 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !679
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !751 ; 2 uses
  %i.bh = icmp eq ptr %i.bc, %i.h
  %i.bi = icmp eq ptr %i.bg, %i.o
  %or.cond.i.i = and i1 %i.bh, %i.bi
  br i1 %or.cond.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = icmp eq ptr %i.bc, %i.o
  %i.bk = icmp eq ptr %i.bg, %i.h
  %or.cond14.i.i = and i1 %i.bj, %i.bk
  br i1 %or.cond14.i.i, label %bb.d, label %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table12cg_comm_hashENS3_10cg_comm_eqEE6equalsERKS2_S8_.exit

bb.d:                                             ; preds = %bb.c
  %i.bl = load ptr, ptr %0, align 8, !tbaa !861, !nonnull !51
  store i8 1, ptr %i.bl, align 1, !tbaa !862
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  store ptr %i.ay, ptr %2, align 8, !tbaa !679
  br label %.loopexit15

_ZNK10chashtableIPN3smt5enodeENS0_8cg_table12cg_comm_hashENS3_10cg_comm_eqEE6equalsERKS2_S8_.exit: ; preds = %bb.c
  %i.bm = load i32, ptr %i.aw, align 8, !tbaa !863
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.aw, align 8, !tbaa !863
  %i.bo = load ptr, ptr %.0, align 8, !tbaa !860  ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %.loopexit15, label %bb.b, !llvm.loop !853

.loopexit15:                                      ; preds = %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table12cg_comm_hashENS3_10cg_comm_eqEE6equalsERKS2_S8_.exit, %bb.a, %.loopexit
  %.012 = phi i1 [ false, %bb.a ], [ true, %.loopexit ], [ false, %_ZNK10chashtableIPN3smt5enodeENS0_8cg_table12cg_comm_hashENS3_10cg_comm_eqEE6equalsERKS2_S8_.exit ]
  ret i1 %.012
}

declare noundef i32 @_ZN3smt8cg_table16set_func_decl_idEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK3smt8cg_table7cg_hashclEPNS_5enodeE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK3smt8cg_table5cg_eqclEPNS_5enodeES3_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125rel_goal_case_split_queue20next_case_split_coreEP4exprRjR5lbool(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZNK11ast_manager6is_andEPK4expr.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !665  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager6is_andEPK4expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = load <2 x i32>, ptr %i.j, align 8          ; 2 uses
  %5 = icmp eq <2 x i32> %4, zeroinitializer
  %6 = shufflevector <2 x i1> %5, <2 x i1> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <2 x i32> %4, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %8 = icmp eq <2 x i32> %7, <i32 6, i32 5>
  %9 = select <2 x i1> %6, <2 x i1> %8, <2 x i1> zeroinitializer
  br label %_ZNK11ast_manager6is_andEPK4expr.exit

_ZNK11ast_manager6is_andEPK4expr.exit:            ; preds = %bb.b, %bb.a, %bb.c
  %10 = phi <2 x i1> [ %9, %bb.c ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !600, !nonnull !51, !align !565 ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !642    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8928
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !671  ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNK3smt7context14b_internalizedEPK4expr.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i:            ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !60
  %.not.i.i.i = icmp ult i32 %i.m, %i.r
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK3smt7context14b_internalizedEPK4expr.exit

bb.d:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i
  %i.s = zext i32 %i.m to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.s
  br label %_ZNK3smt7context14b_internalizedEPK4expr.exit

_ZNK3smt7context14b_internalizedEPK4expr.exit:    ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.t, %bb.d ], [ @_ZN3smtL13null_bool_varE, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i ], [ @_ZN3smtL13null_bool_varE, %_ZNK11ast_manager6is_andEPK4expr.exit ]
  %i.u = load i32, ptr %.0.i.i.i, align 4, !tbaa !60
  %.not = icmp eq i32 %i.u, 2147483647
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK3smt7context14b_internalizedEPK4expr.exit
  %i.v = zext i32 %i.m to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !60   ; 2 uses
  store i32 %i.x, ptr %2, align 4, !tbaa !60
  %i.y = shl i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8944
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !638
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !639 ; 3 uses
  %i.ae = sext i8 %i.ad to i32
  %11 = insertelement <2 x i8> poison, i8 %i.ad, i64 0
  %12 = shufflevector <2 x i8> %11, <2 x i8> poison, <2 x i32> zeroinitializer
  %13 = icmp eq <2 x i8> %12, <i8 1, i8 -1>
  %14 = and <2 x i1> %10, %13
  %15 = bitcast <2 x i1> %14 to i2
  %.not41 = icmp eq i2 %15, 0
  br i1 %.not41, label %bb.j, label %bb.f

.thread:                                          ; preds = %_ZNK3smt7context14b_internalizedEPK4expr.exit
  %16 = extractelement <2 x i1> %10, i64 0
  br i1 %16, label %bb.f, label %.thread33

bb.f:                                             ; preds = %.thread, %bb.e
  %.02331 = phi i32 [ 1, %.thread ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !640
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !864, !nonnull !51, !align !565
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !680
  %i.aj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121has_child_assigned_toERN3smt7contextEP3app5lboolRP4exprj(ptr noundef nonnull align 8 dereferenceable(10728) %i.l, ptr noundef nonnull %1, i32 noundef %.02331, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.ai)
  br i1 %i.aj, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !728, !nonnull !51, !align !565
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 888
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !721 ; 2 uses
  %.not35 = icmp eq ptr %i.am, null
  br i1 %.not35, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !640
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.14, i64 noundef 17) ; 0 uses
  %i.ap = load i32, ptr %1, align 4, !tbaa !642
  %i.aq = zext i32 %i.ap to i64
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %i.aq) ; 2 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !640 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !642
  %i.av = zext i32 %i.au to i64
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.av)
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.ay = phi ptr [ %.pre, %._crit_edge ], [ %i.at, %bb.h ]
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !600, !nonnull !51, !align !565
  %i.ba = tail call i32 @_ZNK3smt7context11get_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %i.az, ptr noundef %i.ay) ; 2 uses
  %i.bb = lshr i32 %i.ba, 1
  store i32 %i.bb, ptr %2, align 4, !tbaa !60
  %i.bc = trunc i32 %i.ba to i1
  %i.bd = select i1 %i.bc, i32 -1, i32 1
  store i32 %i.bd, ptr %3, align 4, !tbaa !644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.be = icmp eq i8 %i.ad, 0
  br i1 %i.be, label %bb.k, label %.thread33

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %3, align 4, !tbaa !644
  br label %bb.l

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.thread33

.thread33:                                        ; preds = %.thread, %.critedge, %bb.j
  store i32 2147483647, ptr %2, align 4, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %.thread33, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EE8int_hash10default_eqIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !621    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4heapIN12_GLOBAL__N_119theory_aware_act_ltEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorIiLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorIiLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable

_ZN6vectorIiLb0EjED2Ev.exit:                      ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZN6vectorIiLb0EjED2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIiLb0EjED2Ev.exit
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
          to label %_ZN6vectorIiLb0EjED2Ev.exit2 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

_ZN6vectorIiLb0EjED2Ev.exit2:                     ; preds = %_ZN6vectorIiLb0EjED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9table2mapI17default_map_entryIjdE8int_hash10default_eqIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !612    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN14core_hashtableI17default_map_entryIjdEN9table2mapIS1_8int_hash10default_eqIjEE15entry_hash_procENS6_13entry_eq_procEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN14core_hashtableI17default_map_entryIjdEN9table2mapIS1_8int_hash10default_eqIjEE15entry_hash_procENS6_13entry_eq_procEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZN14core_hashtableI17default_map_entryIjdEN9table2mapIS1_8int_hash10default_eqIjEE15entry_hash_procENS6_13entry_eq_procEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN12_GLOBAL__N_128theory_aware_branching_queue21activity_increased_ehEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.b, align 8, !tbaa !59  ; 5 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %.val, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !60
  br label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i

_ZNK6vectorIiLb0EjE4sizeEv.exit.i:                ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = icmp slt i32 %1, %.0.i.i
  br i1 %i.f, label %_ZNK4heapIN12_GLOBAL__N_119theory_aware_act_ltEE8containsEi.exit, label %_ZNK4heapIN12_GLOBAL__N_119theory_aware_act_ltEE8containsEi.exit.thread

_ZNK4heapIN12_GLOBAL__N_119theory_aware_act_ltEE8containsEi.exit: ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !60   ; 5 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZNK4heapIN12_GLOBAL__N_119theory_aware_act_ltEE8containsEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4heapIN12_GLOBAL__N_119theory_aware_act_ltEE8containsEi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 4 uses
  %i.l = zext i32 %i.i to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !60   ; 3 uses
  %i.o = ashr i32 %i.i, 1                         ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4heapIN12_GLOBAL__N_119theory_aware_act_ltEE9decreasedEi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val17.i.i = load ptr, ptr %i.q, align 8, !tbaa !753 ; 2 uses
  %.val17.val.i.i = load ptr, ptr %.val17.i.i, align 8, !tbaa !612
  %i.r = getelementptr i8, ptr %.val17.i.i, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.s = phi i32 [ %i.o, %.lr.ph.i.i ], [ %i.ab, %bb.e ] ; 4 uses
end_hunk_1
