Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/SectionMerger?download=true
inline.NumInlined: 3056
inline.NumDeleted: 449
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11StringUtils4JoinERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !107    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !68
  store i8 0, ptr %i.g, align 8, !tbaa !47
  br label %6

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp eq i64 %i.k, 32
  br i1 %i.m, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !67
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.q, ptr %i.b, align 8, !tbaa !100
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i27, label %._crit_edge.i.i26

.noexc.i27:                                       ; preds = %bb.c
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !30
  %i.t = load i64, ptr %i.b, align 8, !tbaa !100
  store i64 %i.t, ptr %i.n, align 8, !tbaa !47
  br label %._crit_edge.i.i26

._crit_edge.i.i26:                                ; preds = %.noexc.i27, %bb.c
  %i.u = phi ptr [ %i.s, %.noexc.i27 ], [ %i.n, %bb.c ] ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i26
  %i.v = load i8, ptr %i.o, align 1, !tbaa !47
  store i8 %i.v, ptr %i.u, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i26, %bb.d, %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !68
  %i.y = load ptr, ptr %0, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !67
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 1, i8 noundef signext %2)
  %i.ab = load ptr, ptr %1, align 8, !tbaa !104   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !67
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.af, ptr %i.a, align 8, !tbaa !100
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i30, label %._crit_edge.i.i29

.noexc.i30:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %bb.h   ; 2 uses

.noexc31:                                         ; preds = %.noexc.i30
  store ptr %i.ah, ptr %0, align 8, !tbaa !30
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !47
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %.noexc31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.aj = phi ptr [ %i.ah, %.noexc31 ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ] ; 2 uses
  switch i64 %i.af, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32
  ]

bb.f:                                             ; preds = %._crit_edge.i.i29
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !47
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32

bb.g:                                             ; preds = %._crit_edge.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32: ; preds = %._crit_edge.i.i29, %bb.f, %bb.g
  %i.al = load i64, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !68
  %i.an = load ptr, ptr %0, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ap = icmp ugt i64 %i.l, 1
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %.noexc.i30
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.083 = phi i64 [ 1, %.lr.ph ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.aw = load ptr, ptr %3, align 8, !tbaa !30, !noalias !241
  %i.ax = load i64, ptr %i.aq, align 8, !tbaa !68, !noalias !241 ; 3 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !67, !alias.scope !242
  store i64 0, ptr %i.as, align 8, !tbaa !68, !alias.scope !242
  store i8 0, ptr %i.ar, align 8, !tbaa !47, !alias.scope !242
  %i.ay = add i64 %i.ax, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ay)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.az = load i64, ptr %i.as, align 8, !tbaa !68, !alias.scope !242
  %i.ba = sub i64 4611686018427387903, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.ax
  br i1 %i.bb, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.j
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !68, !alias.scope !242
  %i.be = icmp eq i64 %i.bd, 4611686018427387903
  br i1 %i.be, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #24
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.72, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.i, %.invoke.i.i
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !30, !alias.scope !242 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ar
  br i1 %i.bh, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bi = load ptr, ptr %1, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.083 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !68, !noalias !243 ; 2 uses
  %i.bm = load i64, ptr %i.as, align 8, !tbaa !68, !noalias !243
  %i.bn = sub i64 4611686018427387903, %i.bm
  %i.bo = icmp ult i64 %i.bn, %i.bl
  br i1 %i.bo, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #24
          to label %.noexc33 unwind label %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !30, !noalias !243
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bp, i64 noundef %i.bl)
          to label %.noexc34 unwind label %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc34:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.at, ptr %4, align 8, !tbaa !67, !alias.scope !243
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %.noexc34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !68 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc34
  store ptr %i.br, ptr %4, align 8, !tbaa !30, !alias.scope !243
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !47
  store i64 %i.by, ptr %i.at, align 8, !tbaa !47, !alias.scope !243
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %i.bz = phi i64 [ %i.bv, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.bz, ptr %i.au, align 8, !tbaa !68, !alias.scope !243
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !30
  store i64 0, ptr %i.ca, align 8, !tbaa !68
  store i8 0, ptr %i.bs, align 8, !tbaa !47
  %i.cb = load i64, ptr %i.au, align 8, !tbaa !68 ; 2 uses
  %i.cc = load i64, ptr %i.am, align 8, !tbaa !68
  %i.cd = sub i64 4611686018427387903, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.cb
  br i1 %i.ce, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i35

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #24
          to label %.noexc36 unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i35: ; preds = %bb.m
  %i.cf = load ptr, ptr %4, align 8, !tbaa !30
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cf, i64 noundef %i.cb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i35
  %i.ch = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.at
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cj = load i64, ptr %i.at, align 8, !tbaa !47
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  %i.cl = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ar
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = load i64, ptr %i.ar, align 8, !tbaa !47
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cp = add nuw i64 %.083, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !240

.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.k
  %lpad.loopexit.split-lp117 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i35, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.at
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp
  %i.cs = load i64, ptr %i.at, align 8, !tbaa !47
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %lpad.loopexit.split-lp117, %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cu = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ar
  br i1 %i.cv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.bg, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp115, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  %i.cw = load i64, ptr %i.ar, align 8, !tbaa !47
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cx) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp115, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cy = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ac
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %.body
  %i.da = load i64, ptr %i.ac, align 8, !tbaa !47
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32
  %i.dc = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.aa
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %._crit_edge
  %i.de = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.h ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn.pn, %.body ]
  %i.dg = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.aa
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.di = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn.pn

6:                                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %._crit_edge.i.i
  ret void
}

declare noundef ptr @_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getActiveViewsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_56Config14setActiveViewsEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK16OpenColorIO_v2_56Config14getActiveViewsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_517DisplayViewMerger19processViewingRulesERKSt10shared_ptrIKNS_6ConfigEES6_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenColorIO_v2_5::TokensManager", align 8 ; 11 uses
  %5 = alloca %"class.OpenColorIO_v2_5::TokensManager", align 8 ; 11 uses
  %6 = alloca %"class.OpenColorIO_v2_5::CustomKeysContainer", align 8 ; 13 uses
  %7 = alloca %"class.std::shared_ptr.25", align 16 ; 14 uses
  %8 = alloca %"class.std::shared_ptr.28", align 8 ; 21 uses
  %9 = alloca %"class.std::shared_ptr.28", align 8 ; 23 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %13 = alloca %"class.std::allocator", align 1   ; 4 uses
  %14 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN16OpenColorIO_v2_512ViewingRules6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  call void @_ZNK16OpenColorIO_v2_56Config15getViewingRulesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.b = load ptr, ptr %2, align 8, !tbaa !54
  call void @_ZNK16OpenColorIO_v2_56Config15getViewingRulesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #23
  %i.c = load ptr, ptr %8, align 8, !tbaa !110
  %i.d = call noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #23
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.s = select i1 %3, ptr %9, ptr %8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.bt, %bb.a
  %i.t = load ptr, ptr %9, align 8, !tbaa !110
  %i.u = call noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #23
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_121addUniqueViewingRulesERKSt10shared_ptrIKNS_12ViewingRulesEERS1_IS2_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.noexc44
  %.013.i = phi i64 [ %i.ae, %.noexc44 ], [ 0, %._crit_edge ] ; 3 uses
  %i.v = load ptr, ptr %9, align 8, !tbaa !110
  %i.w = invoke noundef ptr @_ZNK16OpenColorIO_v2_512ViewingRules7getNameEm(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef %.013.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i
  %i.x = load ptr, ptr %7, align 16, !tbaa !112
  %i.y = invoke noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules15getIndexForRuleEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef %i.w)
          to label %.noexc44 unwind label %bb.b   ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %i.aa) #23 ; 0 uses
  %i.ac = load ptr, ptr %7, align 16, !tbaa !112
  %i.ad = call noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115copyViewingRuleERKSt10shared_ptrIKNS_12ViewingRulesEEmmRS1_IS2_E(ptr noundef nonnull readonly align 8 dereferenceable(16) %9, i64 noundef %.013.i, i64 noundef %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(16) %7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_end_catch()
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.c, %.noexc
  %i.ae = add nuw i64 %.013.i, 1                  ; 2 uses
  %i.af = load ptr, ptr %9, align 8, !tbaa !110
  %i.ag = call noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #23
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_121addUniqueViewingRulesERKSt10shared_ptrIKNS_12ViewingRulesEERS1_IS2_E.exit, !llvm.loop !244

bb.d:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #26
  unreachable

bb.f:                                             ; preds = %.lr.ph, %bb.bt
  %.03396 = phi i64 [ 0, %.lr.ph ], [ %i.fm, %bb.bt ] ; 14 uses
  %i.al = load ptr, ptr %8, align 8, !tbaa !110
  %i.am = invoke noundef ptr @_ZNK16OpenColorIO_v2_512ViewingRules7getNameEm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef %.03396)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %9, align 8, !tbaa !110
  %i.ao = invoke noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules15getIndexForRuleEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %i.am)
          to label %bb.h unwind label %bb.ax      ; 12 uses

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %8, align 8, !tbaa !110
  %i.aq = invoke noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules17getNumColorSpacesEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 noundef %.03396)
          to label %.noexc46 unwind label %bb.ax

.noexc46:                                         ; preds = %bb.h
  %i.ar = load ptr, ptr %9, align 8, !tbaa !110
  %i.as = invoke noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules17getNumColorSpacesEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 noundef %i.ao)
          to label %.noexc47 unwind label %bb.ax

.noexc47:                                         ; preds = %.noexc46
  %.not.i45 = icmp eq i64 %i.aq, %i.as
  br i1 %.not.i45, label %bb.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120viewingRulesAreEqualERKSt10shared_ptrIKNS_12ViewingRulesEEmS6_m.exit.thread

bb.i:                                             ; preds = %.noexc47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_513TokensManagerE, i64 16), ptr %4, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.i
  %.081.i = phi i64 [ 0, %bb.i ], [ %i.ay, %bb.n ] ; 3 uses
  %i.at = load ptr, ptr %8, align 8, !tbaa !110
  %i.au = invoke noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules17getNumColorSpacesEm(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 noundef %.03396)
          to label %bb.k unwind label %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.av = icmp ult i64 %.081.i, %i.au
  br i1 %i.av, label %bb.l, label %.preheader124.i

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %8, align 8, !tbaa !110
  %i.ax = invoke noundef ptr @_ZNK16OpenColorIO_v2_512ViewingRules13getColorSpaceEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 noundef %.03396, i64 noundef %.081.i)
          to label %bb.m unwind label %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN16OpenColorIO_v2_513TokensManager8addTokenEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ax)
          to label %bb.n unwind label %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.ay = add nuw i64 %.081.i, 1
  br label %bb.j, !llvm.loop !245

.preheader124.i:                                  ; preds = %bb.k, %bb.q
  %.074.i = phi i64 [ %i.bf, %bb.q ], [ 0, %bb.k ] ; 3 uses
  %i.az = load ptr, ptr %9, align 8, !tbaa !110
  %i.ba = invoke noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules17getNumColorSpacesEm(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 noundef %i.ao)
          to label %bb.o unwind label %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %.preheader124.i
  %.not85.i = icmp ult i64 %.074.i, %i.ba
  br i1 %.not85.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %9, align 8, !tbaa !110
  %i.bc = invoke noundef ptr @_ZNK16OpenColorIO_v2_512ViewingRules13getColorSpaceEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 noundef %i.ao, i64 noundef %.074.i)
          to label %bb.q unwind label %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bd = call ptr @_ZNK16OpenColorIO_v2_513TokensManager9findTokenB5cxx11EPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bc) #23
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !107
  %.not113.i = icmp eq ptr %i.bd, %i.be
  %i.bf = add nuw i64 %.074.i, 1
  br i1 %.not113.i, label %.loopexit130.i, label %.preheader124.i, !llvm.loop !246

.critedge.i:                                      ; preds = %bb.o
  %i.bg = load ptr, ptr %8, align 8, !tbaa !110
  %i.bh = invoke noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules15getNumEncodingsEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 noundef %.03396)
          to label %bb.r unwind label %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.critedge.i
  %i.bi = load ptr, ptr %9, align 8, !tbaa !110
  %i.bj = invoke noundef i64 @_ZNK16OpenColorIO_v2_512ViewingRules15getNumEncodingsEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 noundef %i.ao)
          to label %bb.s unwind label %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %.not86.i = icmp eq i64 %i.bh, %i.bj
  br i1 %.not86.i, label %bb.t, label %.loopexit130.i

.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %.preheader124.i, %bb.m, %bb.l, %bb.j, %bb.r, %.critedge.i
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %.loopexit.split-lp126.loopexit.split-lp.i

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_520ViewTransformsMerger21processViewTransformsERKSt10shared_ptrIKNS_6ConfigEES6_bb:bb.a
          cleanup
  br label %.body39

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cy, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.da
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.db
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.lt, %bb.db ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.mh = load ptr, ptr %21, align 8, !tbaa !30   ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.ba
  br i1 %i.mi, label %.body39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %.body43
  %i.mj = load i64, ptr %i.ba, align 8, !tbaa !47
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #25
  br label %.body39

.body39:                                          ; preds = %.body43, %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.mg, %bb.de ], [ %i.lj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.lj, %bb.cv ], [ %eh.lpad-body44, %.body43 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20) #23
  br label %bb.df

bb.df:                                            ; preds = %.body39, %bb.dd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body39 ], [ %i.mf, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body

.invoke:                                          ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.cr, %bb.d
  %i.ml = load ptr, ptr %19, align 8, !tbaa !117
  %i.mm = icmp ne ptr %i.ml, null
  %or.cond = and i1 %3, %i.mm                     ; 2 uses
  %. = select i1 %or.cond, ptr %2, ptr %1
  %.142.reass = xor i1 %or.cond, %invariant.op
  invoke void @_ZN16OpenColorIO_v2_520ViewTransformsMerger16addViewTransformERKSt10shared_ptrIKNS_6ConfigEEPKcb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %., ptr noundef nonnull %i.bn, i1 noundef zeroext %.142.reass)
          to label %bb.dg unwind label %bb.dc

bb.dg:                                            ; preds = %.invoke
  %i.mn = load ptr, ptr %i.bl, align 8, !tbaa !78 ; 8 uses
  %.not.i.i50 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i50, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 4 uses
  %i.mp = load atomic i64, ptr %i.mo acquire, align 8 ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 4294967297
  %i.mr = trunc i64 %i.mp to i32                  ; 2 uses
  br i1 %i.mq, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.mo, align 8, !tbaa !80
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  store i32 0, ptr %i.ms, align 4, !tbaa !81
  %i.mt = load ptr, ptr %i.mn, align 8, !tbaa !57
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #23, !inline_history !8
  %i.mw = load ptr, ptr %i.mn, align 8, !tbaa !57
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #23, !inline_history !8
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dj:                                            ; preds = %bb.dh
  %i.mz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i51 = icmp eq i8 %i.mz, 0
  br i1 %.not.i.i.i51, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.na = add nsw i32 %i.mr, -1
  store i32 %i.na, ptr %i.mo, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.nb = atomicrmw volatile add ptr %i.mo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i = phi i32 [ %i.mr, %bb.dk ], [ %i.nb, %bb.dl ]
  %i.nc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.nc, label %bb.dm, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dg, %bb.di, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.dn

.body:                                            ; preds = %bb.dc, %bb.cd, %bb.df
  %.pn33 = phi { ptr, i32 } [ %.pn.pn, %bb.df ], [ %i.me, %bb.dc ], [ %.pn33.pn.pn.pn.pn.pn.i, %bb.cd ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  resume { ptr, i32 } %.pn33

bb.dn:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.c, %bb.b
  %i.nd = add nuw nsw i32 %.02896, 1              ; 2 uses
  %i.ne = load ptr, ptr %1, align 8, !tbaa !54
  %i.nf = call noundef i32 @_ZNK16OpenColorIO_v2_56Config20getNumViewTransformsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ne) #23
  %i.ng = icmp slt i32 %i.nd, %i.nf
  br i1 %i.ng, label %bb.b, label %._crit_edge, !llvm.loop !286
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520ViewTransformsMerger17handlePreferInputEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48, !nonnull !42, !align !43
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  tail call void @_ZN16OpenColorIO_v2_56Config19clearViewTransformsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters12isInputFirstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52, !nonnull !42, !align !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55, !nonnull !42, !align !43
  tail call void @_ZN16OpenColorIO_v2_520ViewTransformsMerger21processViewTransformsERKSt10shared_ptrIKNS_6ConfigEES6_bb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55, !nonnull !42, !align !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52, !nonnull !42, !align !43
  tail call void @_ZN16OpenColorIO_v2_520ViewTransformsMerger21processViewTransformsERKSt10shared_ptrIKNS_6ConfigEES6_bb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55, !nonnull !42, !align !43
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.t = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDefaultViewTransformNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52, !nonnull !42, !align !43
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDefaultViewTransformNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #23 ; 8 uses
  %i.y = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.t, ptr noundef %i.x)
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !67
  %i.ab = icmp eq ptr %i.x, null
  br i1 %i.ab, label %.noexc, label %bb.f

.noexc:                                           ; preds = %bb.e
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.69) #24
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !100
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !30
  %i.af = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.f
  %i.ag = phi ptr [ %i.ae, %.noexc.i ], [ %i.aa, %bb.f ] ; 2 uses
  switch i64 %i.ac, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.x, align 1, !tbaa !47
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !47
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.x, i64 %i.ac, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !68
  %i.ak = load ptr, ptr %2, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 95)
          to label %.noexc15 unwind label %bb.q   ; 6 uses

.noexc15:                                         ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !67, !alias.scope !305
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc15
  store ptr %i.ao, ptr %1, align 8, !tbaa !30, !alias.scope !305
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !47
  store i64 %i.av, ptr %i.an, align 8, !tbaa !47, !alias.scope !305
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.aw = phi i64 [ %i.as, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !68, !alias.scope !305
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !30
  store i64 0, ptr %i.ax, align 8, !tbaa !68
  store i8 0, ptr %i.ap, align 8, !tbaa !47
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !46
  %i.bb = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  br i1 %i.bb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !30
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef %i.bd)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc17 unwind label %bb.r

.noexc17:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bc) #23
  br label %.body

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.m
  %i.bf = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.an
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.bh = load i64, ptr %i.an, align 8, !tbaa !47
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.bj = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aa
  br i1 %i.bk, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #25
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.t

bb.q:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.r:                                             ; preds = %bb.o, %bb.m, %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.r ], [ %i.be, %bb.p ] ; 2 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.an
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.body
  %i.br = load i64, ptr %i.an, align 8, !tbaa !47
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.q ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %eh.lpad-body, %.body ]
  %i.bt = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aa
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bv = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %i.bx = load i8, ptr %i.x, align 1, !tbaa !47
  %.not13 = icmp eq i8 %i.bx, 0
  br i1 %.not13, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !48, !nonnull !42, !align !43
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !51
  call void @_ZN16OpenColorIO_v2_56Config27setDefaultViewTransformNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull %i.x) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  ret void
}

declare void @_ZN16OpenColorIO_v2_56Config19clearViewTransformsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDefaultViewTransformNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_56Config27setDefaultViewTransformNameEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520ViewTransformsMerger16handlePreferBaseEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48, !nonnull !42, !align !43
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  tail call void @_ZN16OpenColorIO_v2_56Config19clearViewTransformsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters12isInputFirstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52, !nonnull !42, !align !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55, !nonnull !42, !align !43
  tail call void @_ZN16OpenColorIO_v2_520ViewTransformsMerger21processViewTransformsERKSt10shared_ptrIKNS_6ConfigEES6_bb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55, !nonnull !42, !align !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52, !nonnull !42, !align !43
  tail call void @_ZN16OpenColorIO_v2_520ViewTransformsMerger21processViewTransformsERKSt10shared_ptrIKNS_6ConfigEES6_bb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55, !nonnull !42, !align !43
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.t = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDefaultViewTransformNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #23 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52, !nonnull !42, !align !43
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDefaultViewTransformNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #23 ; 6 uses
  %i.y = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.t, ptr noundef %i.x)
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !67
  %i.ab = icmp eq ptr %i.x, null
  br i1 %i.ab, label %.noexc, label %bb.f

.noexc:                                           ; preds = %bb.e
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.69) #24
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !100
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !30
  %i.af = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.f
  %i.ag = phi ptr [ %i.ae, %.noexc.i ], [ %i.aa, %bb.f ] ; 2 uses
  switch i64 %i.ac, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.x, align 1, !tbaa !47
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !47
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.x, i64 %i.ac, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !68
  %i.ak = load ptr, ptr %2, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 95)
          to label %.noexc15 unwind label %bb.q   ; 6 uses

.noexc15:                                         ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !67, !alias.scope !308
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc15
  store ptr %i.ao, ptr %1, align 8, !tbaa !30, !alias.scope !308
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !47
  store i64 %i.av, ptr %i.an, align 8, !tbaa !47, !alias.scope !308
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.aw = phi i64 [ %i.as, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !68, !alias.scope !308
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !30
  store i64 0, ptr %i.ax, align 8, !tbaa !68
  store i8 0, ptr %i.ap, align 8, !tbaa !47
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !46
  %i.bb = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters17isErrorOnConflictEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  br i1 %i.bb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !30
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef %i.bd)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc17 unwind label %bb.r

.noexc17:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bc) #23
  br label %.body

_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.m
  %i.bf = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.an
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.bh = load i64, ptr %i.an, align 8, !tbaa !47
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.bj = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aa
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.s

bb.q:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.r:                                             ; preds = %bb.o, %bb.m, %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.r ], [ %i.be, %bb.p ] ; 2 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.an
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.body
  %i.br = load i64, ptr %i.an, align 8, !tbaa !47
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.q ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %eh.lpad-body, %.body ]
  %i.bt = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aa
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bv = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.d
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = load i8, ptr %i.t, align 1, !tbaa !47
  %.not13 = icmp eq i8 %i.bx, 0
  br i1 %.not13, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !48, !nonnull !42, !align !43
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !51
  call void @_ZN16OpenColorIO_v2_56Config27setDefaultViewTransformNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.x) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520ViewTransformsMerger15handleInputOnlyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !42, !align !43
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  tail call void @_ZN16OpenColorIO_v2_56Config19clearViewTransformsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52, !nonnull !42, !align !43
  tail call void @_ZN16OpenColorIO_v2_520ViewTransformsMerger23addUniqueViewTransformsERKSt10shared_ptrIKNS_6ConfigEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i1 noundef zeroext true)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !42, !align !43
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !52, !nonnull !42, !align !43
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDefaultViewTransformNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #23
  tail call void @_ZN16OpenColorIO_v2_56Config27setDefaultViewTransformNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.j) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN16OpenColorIO_v2_520ViewTransformsMerger14handleBaseOnlyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520ViewTransformsMerger12handleRemoveEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.31", align 8 ; 5 uses
  %2 = alloca %"class.std::shared_ptr.31", align 8 ; 7 uses
  %3 = alloca %"class.std::shared_ptr.31", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !42, !align !43
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  tail call void @_ZN16OpenColorIO_v2_56Config19clearViewTransformsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55, !nonnull !42, !align !43
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config20getNumViewTransformsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #23
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.x, %bb.a
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !55, !nonnull !42, !align !43
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = call noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDefaultViewTransformNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #23
end_hunk_1
begin_hunk_2_@_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.an = getelementptr inbounds i8, ptr %i.w, i64 -3
  %.cast11.i.i.i.i = ptrtoint ptr %i.an to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ao = add nsw i64 %.024.i.i.i.i, -1
  %i.ap = icmp sgt i64 %.024.i.i.i.i, 1
  %i.aq = ptrtoint ptr %i.ak to i64               ; 2 uses
  br i1 %i.ap, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !409

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ar = phi i64 [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.aq, %bb.j ] ; 5 uses
  %i.as = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %scevgep.i.i.i, %bb.j ] ; 2 uses
  %i.at = sub i64 %i.ar, %i.s
  switch i64 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.au = inttoptr i64 %i.ar to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !47, !noalias !415
  %i.ax = icmp ugt i8 %i.aw, 32
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 -1 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i
  %i.ba = phi ptr [ %i.ay, %bb.l ], [ %i.as, %._crit_edge.i.i.i.i ]
  %i.bb = phi i64 [ %i.az, %bb.l ], [ %i.ar, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !47, !noalias !415
  %i.bf = icmp ugt i8 %i.be, 32
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds i8, ptr %i.ba, i64 -1
  %i.bh = ptrtoint ptr %i.bg to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i
  %i.bi = phi i64 [ %i.bh, %bb.n ], [ %i.ar, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !47, !noalias !415
  %i.bm = icmp ugt i8 %i.bl, 32
  %spec.select.i.i.i = select i1 %i.bm, i64 %i.bi, i64 %i.s
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.o, %bb.m, %bb.k, %._crit_edge.i.i.i.i, %bb.i, %bb.g, %bb.e
  %.sink.i.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.o ], [ %i.bb, %bb.m ], [ %i.ar, %bb.k ], [ %i.s, %._crit_edge.i.i.i.i ], [ %.cast11.i.i.i.i, %bb.i ], [ %.cast10.i.i.i.i, %bb.g ], [ %.cast.i.i.i.i, %bb.e ], [ %i.x, %.lr.ph.i.i.i.i ]
  %i.bn = sub i64 %.sink.i.i.i.i, %i.s            ; 2 uses
  store i64 %i.bn, ptr %i.l, align 8, !tbaa !68, !noalias !413
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bn
  store i8 0, ptr %i.bo, align 1, !tbaa !47, !noalias !413
  %i.bp = load ptr, ptr %3, align 8, !tbaa !30, !noalias !413 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.bq, ptr %2, align 8, !tbaa !67, !alias.scope !413
  %i.br = icmp eq ptr %i.bp, %i.b
  br i1 %i.br, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i
  %i.bs = load i64, ptr %i.l, align 8, !tbaa !68, !noalias !413 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.bu, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i
  store ptr %i.bp, ptr %2, align 8, !tbaa !30, !alias.scope !413
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !47, !noalias !413
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !47, !alias.scope !413
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !68, !noalias !413
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %i.bw = phi ptr [ %i.bq, %bb.p ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.bx = phi i64 [ %i.bs, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !68, !alias.scope !413
  store ptr %i.b, ptr %3, align 8, !tbaa !30, !noalias !413
  store i64 0, ptr %i.l, align 8, !tbaa !68, !noalias !413
  store i8 0, ptr %i.b, align 8, !tbaa !47, !noalias !413
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.cc = ashr i64 %i.bx, 2                       ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i3

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.q
  %i.ce = and i64 %i.bx, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.bw, i64 %i.ce ; 2 uses
  br label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %bb.u, %.lr.ph.preheader.i.i.i.i
  %.045.i.i.i.i = phi i64 [ %i.cr, %bb.u ], [ %i.cc, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i = phi ptr [ %i.cq, %bb.u ], [ %i.bw, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.cf = load i8, ptr %.sroa.025.044.i.i.i.i, align 1, !tbaa !47, !noalias !416
  %i.cg = icmp ugt i8 %i.cf, 32
  br i1 %i.cg, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i7
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !47, !noalias !416
  %i.cj = icmp ugt i8 %i.ci, 32
  br i1 %i.cj, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !47, !noalias !416
  %i.cm = icmp ugt i8 %i.cl, 32
  br i1 %i.cm, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit88, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 3
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !47, !noalias !416
  %i.cp = icmp ugt i8 %i.co, 32
  br i1 %i.cp, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit90, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 4
  %i.cr = add nsw i64 %.045.i.i.i.i, -1
  %i.cs = icmp sgt i64 %.045.i.i.i.i, 1
  br i1 %i.cs, label %.lr.ph.i.i.i.i7, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !412

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.u
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  br label %._crit_edge.i.i.i.i3

._crit_edge.i.i.i.i3:                             ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.q
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.cb, %bb.q ]
  %.sroa.025.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bw, %bb.q ] ; 5 uses
  %i.ct = sub i64 %i.ca, %.pre-phi.i.i.i.i
  switch i64 %i.ct, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.thread.i [
    i64 3, label %bb.v
    i64 2, label %bb.x
    i64 1, label %bb.z
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i3
  %i.cu = load i8, ptr %.sroa.025.0.lcssa.i.i.i.i, align 1, !tbaa !47, !noalias !416
  %i.cv = icmp ugt i8 %i.cu, 32
  br i1 %i.cv, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i3
  %.sroa.025.1.i.i.i.i = phi ptr [ %i.cw, %bb.w ], [ %.sroa.025.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i3 ] ; 3 uses
  %i.cx = load i8, ptr %.sroa.025.1.i.i.i.i, align 1, !tbaa !47, !noalias !416
  %i.cy = icmp ugt i8 %i.cx, 32
  br i1 %i.cy, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i, i64 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i3
  %.sroa.025.2.i.i.i.i = phi ptr [ %i.cz, %bb.y ], [ %.sroa.025.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i3 ] ; 2 uses
  %i.da = load i8, ptr %.sroa.025.2.i.i.i.i, align 1, !tbaa !47, !noalias !416
  %i.db = icmp ugt i8 %i.da, 32
  %spec.select.i.i.i.i = select i1 %i.db, ptr %.sroa.025.2.i.i.i.i, ptr %i.bz
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 1
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit88: ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 2
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit90: ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 3
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i7, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit88, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit90, %bb.z, %bb.x, %bb.v
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i, %bb.x ], [ %spec.select.i.i.i.i, %bb.z ], [ %.sroa.025.0.lcssa.i.i.i.i, %bb.v ], [ %i.de, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit90 ], [ %i.dc, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit ], [ %i.dd, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i.loopexit.split.loop.exit88 ], [ %.sroa.025.044.i.i.i.i, %.lr.ph.i.i.i.i7 ] ; 2 uses
  %i.df = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.bz
  br i1 %i.df, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.thread.i, label %bb.aa

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.thread.i: ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i, %._crit_edge.i.i.i.i3
  store i64 0, ptr %i.by, align 8, !tbaa !68, !noalias !416
  store i8 0, ptr %i.bw, align 1, !tbaa !47, !noalias !416
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i4

bb.aa:                                            ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.i
  %i.dg = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.dh = sub i64 %i.dg, %i.cb
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.dh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i4 unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i4: ; preds = %bb.aa, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.thread.i
  %i.di = load ptr, ptr %2, align 8, !tbaa !30, !noalias !416 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dj, ptr %0, align 8, !tbaa !67, !alias.scope !416
  %i.dk = icmp eq ptr %i.di, %i.bq
  br i1 %i.dk, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i4
  %i.dl = load i64, ptr %i.by, align 8, !tbaa !68, !noalias !416 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.dm)
  %i.dn = add nuw nsw i64 %i.dl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dj, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i4
  store ptr %i.di, ptr %0, align 8, !tbaa !30, !alias.scope !416
  %i.do = load i64, ptr %i.bq, align 8, !tbaa !47, !noalias !416
  store i64 %i.do, ptr %i.dj, align 8, !tbaa !47, !alias.scope !416
  %.pre.i6 = load i64, ptr %i.by, align 8, !tbaa !68, !noalias !416
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.ab
  %i.dp = phi i64 [ %i.dl, %bb.ab ], [ %.pre.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !68, !alias.scope !416
  store ptr %i.bq, ptr %2, align 8, !tbaa !30, !noalias !416
  store i64 0, ptr %i.by, align 8, !tbaa !68, !noalias !416
  store i8 0, ptr %i.bq, align 8, !tbaa !47, !noalias !416
  %i.dr = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.b
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !47
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  ret void

bb.ac:                                            ; preds = %bb.aa
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bq
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.ac
  %i.dy = load i64, ptr %i.bq, align 8, !tbaa !47
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.ea = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.b
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ec = load i64, ptr %i.b, align 8, !tbaa !47
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  resume { ptr, i32 } %i.dv
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_521NamedTransformsMerger12updateFamilyERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 14 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
  store i64 0, ptr %i.h, align 8, !tbaa !68
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = invoke noundef i32 @_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.a unwind label %bb.p

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.ay

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !68   ; 5 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !67
  %i.r = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 %i.o, ptr %i.f, align 8, !tbaa !100
  %i.s = icmp ugt i64 %i.o, 15
  br i1 %i.s, label %.noexc.i43, label %._crit_edge.i.i42

.noexc.i43:                                       ; preds = %bb.d
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %._crit_edge.i.i42.thread unwind label %bb.q ; 2 uses

._crit_edge.i.i42.thread:                         ; preds = %.noexc.i43
  store ptr %i.t, ptr %5, align 8, !tbaa !30
  %i.u = load i64, ptr %i.f, align 8, !tbaa !100
  store i64 %i.u, ptr %i.q, align 8, !tbaa !47
  br label %bb.f

._crit_edge.i.i42:                                ; preds = %bb.d
  %cond = icmp eq i64 %i.o, 1
  br i1 %cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i42
  %i.v = load i8, ptr %i.r, align 1, !tbaa !47
  store i8 %i.v, ptr %i.q, align 8, !tbaa !47
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i42.thread, %._crit_edge.i.i42
  %i.w = phi ptr [ %i.t, %._crit_edge.i.i42.thread ], [ %i.q, %._crit_edge.i.i42 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !68
  %i.z = load ptr, ptr %5, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55, !nonnull !42, !align !43
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.ae = invoke noundef signext i8 @_ZNK16OpenColorIO_v2_56Config18getFamilySeparatorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48, !nonnull !42, !align !43
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ai = invoke noundef signext i8 @_ZNK16OpenColorIO_v2_56Config18getFamilySeparatorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116replaceSeparatorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef align 8 %5, i8 noundef signext %i.ae, i8 noundef signext %i.ai)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %1, align 8, !tbaa !30    ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  %i.am = load ptr, ptr %4, align 8, !tbaa !30    ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an                ; 2 uses
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.ao, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.ao, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !68 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  switch i64 %i.aq, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_521NamedTransformsMerger12handleRemoveEv:bb.a

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dh, align 8, !tbaa !80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !81
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #23, !inline_history !14
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !57
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #23, !inline_history !14
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i28 = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i28, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = add nsw i32 %i.dk, -1
  store i32 %i.dt, ptr %i.dh, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29

bb.ao:                                            ; preds = %bb.am
  %i.du = atomicrmw volatile add ptr %i.dh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i30 = phi i32 [ %i.dk, %bb.an ], [ %i.du, %bb.ao ]
  %i.dv = icmp eq i32 %.0.i.i.i.i30, 1
  br i1 %i.dv, label %bb.ap, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dw = load ptr, ptr %i.p, align 8, !tbaa !78  ; 8 uses
  %.not.i.i31 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i31, label %.sink.split, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.dx, align 8, !tbaa !80
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !81
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !57
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #23, !inline_history !0
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !57
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #23, !inline_history !0
  br label %.sink.split

bb.as:                                            ; preds = %bb.aq
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i32 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i32, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

bb.au:                                            ; preds = %bb.as
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i34 = phi i32 [ %i.ea, %bb.at ], [ %i.ek, %bb.au ]
  %i.el = icmp eq i32 %.0.i.i.i.i34, 1
  br i1 %i.el, label %bb.av, label %.sink.split, !prof !83

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #23
  br label %.sink.split

bb.aw:                                            ; preds = %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.ah ], [ %i.cr, %bb.ag ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aw ], [ %i.cq, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn

.critedge:                                        ; preds = %bb.i
  %i.em = load ptr, ptr %i.p, align 8, !tbaa !78  ; 8 uses
  %.not.i.i36 = icmp eq ptr %i.em, null
  br i1 %.not.i.i36, label %.sink.split, label %bb.ay

bb.ay:                                            ; preds = %.critedge
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.en, align 8, !tbaa !80
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !81
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !57
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #23, !inline_history !0
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !57
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #23, !inline_history !0
  br label %.sink.split

bb.ba:                                            ; preds = %bb.ay
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i37 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i37, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38

bb.bc:                                            ; preds = %bb.ba
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i39 = phi i32 [ %i.eq, %bb.bb ], [ %i.fa, %bb.bc ]
  %i.fb = icmp eq i32 %.0.i.i.i.i39, 1
  br i1 %i.fb, label %bb.bd, label %.sink.split, !prof !83

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #23
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38, %bb.az, %.critedge, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33, %bb.ar, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.be

bb.be:                                            ; preds = %.sink.split, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fc = add nuw nsw i32 %.01141, 1              ; 2 uses
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !55, !nonnull !42, !align !43
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !54
  %i.ff = call noundef i32 @_ZNK16OpenColorIO_v2_56Config21getNumNamedTransformsENS_24NamedTransformVisibilityE(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, i32 noundef 2) #23
  %i.fg = icmp slt i32 %i.fc, %i.ff
  br i1 %i.fg, label %bb.b, label %._crit_edge, !llvm.loop !473
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513SectionMerger12handleRemoveEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = load ptr, ptr %0, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 43, ptr %i.a, align 8, !tbaa !100
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %3, align 8, !tbaa !30
  %i.g = load i64, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.f, ptr noundef nonnull align 1 dereferenceable(43) @.str.75, i64 43, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68, !noalias !476
  %i.l = load ptr, ptr %2, align 8, !tbaa !30, !noalias !476
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.k)
          to label %.noexc6 unwind label %bb.e    ; 6 uses

.noexc6:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !67, !alias.scope !476
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.a:                                             ; preds = %.noexc6
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !68   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.o, ptr %1, align 8, !tbaa !30, !alias.scope !476
  %i.v = load i64, ptr %i.p, align 8, !tbaa !47
  store i64 %i.v, ptr %i.n, align 8, !tbaa !47, !alias.scope !476
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a
  %i.w = phi i64 [ %i.s, %bb.a ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.w, ptr %i.y, align 8, !tbaa !68, !alias.scope !476
  store ptr %i.p, ptr %i.m, align 8, !tbaa !30
  store i64 0, ptr %i.x, align 8, !tbaa !68
  store i8 0, ptr %i.p, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.c
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !47
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.ad = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.e
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load i64, ptr %i.e, align 8, !tbaa !47
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ah = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !47
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.d:                                             ; preds = %.noexc.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.e:                                             ; preds = %.noexc
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.f:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.n
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.f
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !47
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.e
  %.pn = phi { ptr, i32 } [ %i.an, %bb.e ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.ao, %bb.f ] ; 2 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.e
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.av = load i64, ptr %i.e, align 8, !tbaa !47
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.d ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ax = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !47
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_513GeneralMerger7getNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.76, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_511RolesMerger7getNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.77, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_515FileRulesMerger7getNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.78, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.c, align 1, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_517DisplayViewMerger7getNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.79, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_520ViewTransformsMerger7getNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.80, i64 15, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 15, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.c, align 1, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_511LooksMerger7getNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
end_hunk_3
begin_hunk_4_@_ZN11StringUtils5LowerB5cxx11EPKc:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i10
  %i.l = load i64, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !68
  %i.n = load ptr, ptr %2, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !67
  %i.q = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.r, ptr %i.a, align 8, !tbaa !100
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.j   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %i.t, ptr %3, align 8, !tbaa !30
  %i.u = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.u, ptr %i.p, align 8, !tbaa !47
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc17 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i15
  %i.w = load i8, ptr %i.q, align 1, !tbaa !47
  store i8 %i.w, ptr %i.v, align 1, !tbaa !47
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i15
  %i.x = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !68
  %i.z = load ptr, ptr %3, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !30, !noalias !503 ; 7 uses
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !68, !noalias !503 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %.not6.i.i = icmp samesign eq i64 %i.ac, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.ac, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, -32                     ; 4 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 3 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !47, !noalias !503 ; 3 uses
  %wide.load36 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !47, !noalias !503 ; 3 uses
  %i.ah = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ai = add <16 x i8> %wide.load36, splat (i8 -65)
  %i.aj = icmp ult <16 x i8> %i.ah, splat (i8 26)
  %i.ak = icmp ult <16 x i8> %i.ai, splat (i8 26)
  %i.al = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.am = or disjoint <16 x i8> %wide.load36, splat (i8 32)
  %i.an = select <16 x i1> %i.aj, <16 x i8> %i.al, <16 x i8> %wide.load
  %i.ao = select <16 x i1> %i.ak, <16 x i8> %i.am, <16 x i8> %wide.load36
  store <16 x i8> %i.an, ptr %next.gep, align 1, !tbaa !47, !noalias !503
  store <16 x i8> %i.ao, ptr %i.ag, align 1, !tbaa !47, !noalias !503
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !500

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !143

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.ac, -8                    ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ab, i64 %n.vec37
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.ab, i64 %index38 ; 2 uses
  %wide.load40 = load <8 x i8>, ptr %next.gep39, align 1, !tbaa !47, !noalias !503 ; 3 uses
  %i.ar = add <8 x i8> %wide.load40, splat (i8 -65)
  %i.as = icmp ult <8 x i8> %i.ar, splat (i8 26)
  %i.at = or disjoint <8 x i8> %wide.load40, splat (i8 32)
  %i.au = select <8 x i1> %i.as, <8 x i8> %i.at, <8 x i8> %wide.load40
  store <8 x i8> %i.au, ptr %next.gep39, align 1, !tbaa !47, !noalias !503
  %index.next41 = add nuw i64 %index38, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next41, %n.vec37
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !501

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.ac, %n.vec37
  br i1 %cmp.n42, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.aw = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !47, !noalias !503 ; 3 uses
  %i.ax = add i8 %i.aw, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ax, 26
  %i.ay = or disjoint i8 %i.aw, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.ay, i8 %i.aw
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !47, !noalias !503
  %i.az = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %i.ad
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !502

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !30, !noalias !503
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.h
  %i.ba = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !67, !alias.scope !503
  %i.bc = icmp eq ptr %i.ba, %i.p
  br i1 %i.bc, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.bd = load i64, ptr %i.y, align 8, !tbaa !68, !noalias !503 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.ba, ptr %0, align 8, !tbaa !30, !alias.scope !503
  %i.bg = load i64, ptr %i.p, align 8, !tbaa !47, !noalias !503
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !47, !alias.scope !503
  %.pre4.i = load i64, ptr %i.y, align 8, !tbaa !68, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.bh = phi i64 [ %i.bd, %bb.i ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !68, !alias.scope !503
  store ptr %i.p, ptr %3, align 8, !tbaa !30, !noalias !503
  store i64 0, ptr %i.y, align 8, !tbaa !68, !noalias !503
  store i8 0, ptr %i.p, align 8, !tbaa !47, !noalias !503
  %i.bj = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.e
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !47
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %4

bb.j:                                             ; preds = %.noexc.i16
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.e
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !47
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bn

4:                                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %._crit_edge.i.i
  ret void
}

declare void @_ZN16OpenColorIO_v2_512ViewingRules10insertRuleEmPKc(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_512ViewingRules13addColorSpaceEmPKc(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_512ViewingRules11addEncodingEmPKc(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_512ViewingRules12setCustomKeyEmPKcS2_(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN11StringUtils6RemoveERSB_RKS7_EUlSG_E_ET_SI_SI_T0_(ptr %0, ptr %1, ptr noundef align 8 %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 7 uses
  %5 = alloca %class.anon.67, align 8             ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !67
  %i.d = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.f, ptr %i.b, align 8, !tbaa !100
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !30
  %i.i = load i64, ptr %i.b, align 8, !tbaa !100
  store i64 %i.i, ptr %i.c, align 8, !tbaa !47
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_C2ERKSC_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !47
  store i8 %i.k, ptr %i.j, align 1, !tbaa !47
  br label %_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_C2ERKSC_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_C2ERKSC_.exit

_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_C2ERKSC_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !68
  %i.n = load ptr, ptr %5, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN9__gnu_cxx5__ops11__pred_iterIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_EENS0_10_Iter_predIT_EESH_(ptr dead_on_unwind nonnull writable sret(%"struct.__gnu_cxx::__ops::_Iter_pred") align 8 %4, ptr noundef nonnull align 8 %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_C2ERKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !67
  %i.q = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.s, ptr %i.a, align 8, !tbaa !100
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.u, ptr %3, align 8, !tbaa !30
  %i.v = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.v, ptr %i.p, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.d
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_EC2ERKSG_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !47
  store i8 %i.x, ptr %i.w, align 1, !tbaa !47
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_EC2ERKSG_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_EC2ERKSG_.exit.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_EC2ERKSG_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !68
  %i.aa = load ptr, ptr %3, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ac = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZN11StringUtils6RemoveERSB_RKS7_EUlSI_E_EEET_SL_SL_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr noundef nonnull align 8 %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_EC2ERKSG_.exit.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.p, align 8, !tbaa !47
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_EC2ERKSG_.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.p
  br i1 %i.aj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4.i: ; preds = %bb.h
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !47
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.am = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !47
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #25
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit

_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ar = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit
  %i.at = load i64, ptr %i.c, align 8, !tbaa !47
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #25
  br label %_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_D2Ev.exit

_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_D2Ev.exit: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret ptr %i.ac

bb.i:                                             ; preds = %_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_C2ERKSC_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit9

bb.j:                                             ; preds = %.noexc.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.j ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4.i ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7: ; preds = %.body
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !47
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #25
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit9

_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit9: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7, %bb.i
  %.pn = phi { ptr, i32 } [ %i.av, %bb.i ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7 ], [ %eh.lpad-body, %.body ]
  %i.bc = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.c
  br i1 %i.bd, label %_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_D2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit9
  %i.be = load i64, ptr %i.c, align 8, !tbaa !47
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #25
  br label %_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_D2Ev.exit12

_ZZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_ENUlSB_E_D2Ev.exit12: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN11StringUtils6RemoveERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_EUlSE_E_ED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  resume { ptr, i32 } %.pn
}
end_hunk_4
