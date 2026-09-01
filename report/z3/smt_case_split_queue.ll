Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_case_split_queue?download=true
inline.NumInlined: 1215
inline.NumDeleted: 488
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12_GLOBAL__N_120rel_case_split_queue7displayERSo:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !571  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %bb.b

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread:     ; preds = %bb.a, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !571  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4.thread, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4:           ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !62
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16, i64 noundef 13) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !572
  tail call fastcc void @_ZN12_GLOBAL__N_120rel_case_split_queue12display_coreERSoR10ptr_vectorI4exprEjj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.o, i32 noundef 1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !579
  tail call fastcc void @_ZN12_GLOBAL__N_120rel_case_split_queue12display_coreERSoR10ptr_vectorI4exprEjj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %i.r, i32 noundef 2)
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4.thread

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4.thread:    ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit4, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120rel_case_split_queueD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(72) dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_120rel_case_split_queueE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !580 ; 2 uses
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !571  ; 2 uses
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !571  ; 2 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_120rel_case_split_queueE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !580 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %.val.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit.i unwind label %bb.c, !inline_history !706

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24, !inline_history !706
  unreachable

_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !571  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit.i
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.g)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i unwind label %bb.e, !inline_history !706

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24, !inline_history !706
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit.i:               ; preds = %bb.d, %_ZN6vectorIN12_GLOBAL__N_120rel_case_split_queue5scopeELb0EjED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !571  ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i2.i, label %_ZN12_GLOBAL__N_120rel_case_split_queueD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.l)
          to label %_ZN12_GLOBAL__N_120rel_case_split_queueD2Ev.exit unwind label %bb.g, !inline_history !706

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #24, !inline_history !706
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
  store i32 0, ptr %4, align 4, !tbaa !653
  %i.b = load ptr, ptr %1, align 8, !tbaa !571    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62   ; 2 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !62     ; 2 uses
  %i.g = icmp ult i32 %i.f, %i.e
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge36
  %i.j = phi i32 [ %i.f, %.lr.ph ], [ %i.bt, %.critedge36 ]
  %i.k = load ptr, ptr %1, align 8, !tbaa !571
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 65535
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZNK11ast_manager6is_andEPK4expr.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !683
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !687  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager6is_andEPK4expr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %5 = load <2 x i32>, ptr %i.v, align 8          ; 2 uses
  %6 = icmp eq <2 x i32> %5, zeroinitializer
  %7 = shufflevector <2 x i1> %6, <2 x i1> poison, <2 x i32> zeroinitializer
  %8 = shufflevector <2 x i32> %5, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %9 = icmp eq <2 x i32> %8, <i32 6, i32 5>
  %10 = select <2 x i1> %7, <2 x i1> %9, <2 x i1> zeroinitializer
  br label %_ZNK11ast_manager6is_andEPK4expr.exit

_ZNK11ast_manager6is_andEPK4expr.exit:            ; preds = %bb.c, %bb.b, %bb.d
  %11 = phi <2 x i1> [ %10, %bb.d ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !694, !nonnull !50, !align !569 ; 3 uses
  %i.x = load i32, ptr %i.n, align 4, !tbaa !650  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8928
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !695  ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZNK3smt7context14b_internalizedEPK4expr.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i:            ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !62
  %.not.i.i.i = icmp ult i32 %i.x, %i.ac
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK3smt7context14b_internalizedEPK4expr.exit

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i
  %i.ad = zext i32 %i.x to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ad
  br label %_ZNK3smt7context14b_internalizedEPK4expr.exit

_ZNK3smt7context14b_internalizedEPK4expr.exit:    ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ %i.ae, %bb.e ], [ @_ZN3smtL13null_bool_varE, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i ], [ @_ZN3smtL13null_bool_varE, %_ZNK11ast_manager6is_andEPK4expr.exit ]
  %i.af = load i32, ptr %.0.i.i.i, align 4, !tbaa !62
  %.not = icmp eq i32 %i.af, 2147483647
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK3smt7context14b_internalizedEPK4expr.exit
  %i.ag = zext i32 %i.x to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !62 ; 2 uses
  store i32 %i.ai, ptr %3, align 4, !tbaa !62
  %i.aj = shl i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 8944
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !646
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !647 ; 4 uses
  %i.ap = sext i8 %i.ao to i32
  %i.aq = icmp eq i8 %i.ao, 1
  %12 = extractelement <2 x i1> %11, i64 0
  %or.cond = and i1 %12, %i.aq
  %i.ar = icmp eq i8 %i.ao, -1
  %13 = extractelement <2 x i1> %11, i64 1
  %or.cond4 = and i1 %13, %i.ar
  %or.cond34 = or i1 %or.cond, %or.cond4
  br i1 %or.cond34, label %bb.g, label %bb.k

.thread:                                          ; preds = %_ZNK3smt7context14b_internalizedEPK4expr.exit
  %14 = extractelement <2 x i1> %11, i64 0
  br i1 %14, label %bb.g, label %.critedge36

bb.g:                                             ; preds = %.thread, %bb.f
  %.03243 = phi i32 [ 1, %.thread ], [ %i.ap, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !649
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !701, !nonnull !50, !align !569
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 640
  %i.au = load i32, ptr %i.at, align 8, !tbaa !707
  %i.av = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121has_child_assigned_toERN3smt7contextEP3app5lboolRP4exprj(ptr noundef nonnull align 8 dereferenceable(10728) %i.w, ptr noundef nonnull %i.n, i32 noundef %.03243, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.au)
  br i1 %i.av, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !682, !nonnull !50, !align !569
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 888
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !708 ; 2 uses
  %.not47 = icmp eq ptr %i.az, null
  br i1 %.not47, label %._crit_edge55, label %bb.i

._crit_edge55:                                    ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !649
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.14, i64 noundef 17) ; 0 uses
  %i.bc = load i32, ptr %i.n, align 4, !tbaa !650
  %i.bd = zext i32 %i.bc to i64
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i64 noundef %i.bd) ; 2 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !649 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !650
  %i.bi = zext i32 %i.bh to i64
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i64 noundef %i.bi)
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge55, %bb.i
  %i.bl = phi ptr [ %.pre, %._crit_edge55 ], [ %i.bg, %bb.i ]
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !694, !nonnull !50, !align !569
  %i.bn = tail call i32 @_ZNK3smt7context11get_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %i.bm, ptr noundef %i.bl) ; 2 uses
  %i.bo = lshr i32 %i.bn, 1
  store i32 %i.bo, ptr %3, align 4, !tbaa !62
  %i.bp = trunc i32 %i.bn to i1
  %i.bq = select i1 %i.bp, i32 -1, i32 1
  store i32 %i.bq, ptr %4, align 4, !tbaa !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.br = icmp eq i8 %i.ao, 0
  br i1 %i.br, label %bb.l, label %.critedge36

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %4, align 4, !tbaa !653
  br label %bb.m

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge36

.critedge36:                                      ; preds = %.thread, %.critedge, %bb.k
  %i.bs = load i32, ptr %2, align 4, !tbaa !62
  %i.bt = add i32 %i.bs, 1                        ; 3 uses
  store i32 %i.bt, ptr %2, align 4, !tbaa !62
  %i.bu = icmp ult i32 %i.bt, %i.e
  br i1 %i.bu, label %bb.b, label %._crit_edge, !llvm.loop !749

._crit_edge:                                      ; preds = %.critedge36, %bb.a, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  store i32 2147483647, ptr %3, align 4, !tbaa !62
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
  store ptr null, ptr %5, align 8, !tbaa !571
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !750  ; 2 uses
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !649  ; 2 uses
  %i.f = invoke noundef i32 @_ZNK3smt7context14get_assignmentEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.e)
          to label %bb.b unwind label %.split.us.split.us ; 2 uses

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.g = icmp eq i32 %i.f, %2
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %5, align 8, !tbaa !571    ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !62
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.us.us

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.us.us unwind label %.split.us.split.us

.noexc.us.us:                                     ; preds = %bb.f
  %.pre.i.us.us = load ptr, ptr %5, align 8, !tbaa !571 ; 2 uses
  %.phi.trans.insert.i.us.us = getelementptr inbounds i8, ptr %.pre.i.us.us, i64 -4
  %.pre2.i.us.us = load i32, ptr %.phi.trans.insert.i.us.us, align 4, !tbaa !62
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.us.us

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.us.us: ; preds = %.noexc.us.us, %bb.e
  %i.p = phi i32 [ %.pre2.i.us.us, %.noexc.us.us ], [ %i.l, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.pre.i.us.us, %.noexc.us.us ], [ %i.i, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  store ptr %i.e, ptr %i.t, align 8, !tbaa !649
  %i.u = add i32 %i.p, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.us.us, %bb.c
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count78
  br i1 %exitcond74.not, label %.critedge, label %.lr.ph.split.us.split.us, !llvm.loop !751

.split.us.split.us:                               ; preds = %bb.f, %.lr.ph.split.us.split.us
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.k
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %bb.k ], [ 0, %.lr.ph ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv75
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !649  ; 2 uses
  %i.y = invoke noundef i32 @_ZNK3smt7context14get_assignmentEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.x)
          to label %bb.h unwind label %.split.split.us ; 2 uses

bb.h:                                             ; preds = %.lr.ph.split.split.us
  %i.z = icmp eq i32 %i.y, %2
  br i1 %i.z, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.x, ptr %3, align 8, !tbaa !649
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !751

.split.split.us:                                  ; preds = %.lr.ph.split.split.us
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.lr.ph ] ; 2 uses
  %.02647 = phi i1 [ %.2.ph, %bb.p ], [ false, %.lr.ph ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !649 ; 2 uses
  %i.ae = invoke noundef i32 @_ZNK3smt7context14get_assignmentEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.ad)
          to label %bb.l unwind label %.split.split ; 2 uses

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.af = icmp eq i32 %i.ae, %2
  br i1 %i.af, label %.loopexit, label %bb.m

.split.split:                                     ; preds = %.lr.ph.split.split
  %i.ag = landingpad { ptr, i32 }
end_hunk_0
