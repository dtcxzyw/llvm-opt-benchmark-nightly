Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4Json12StyledWriter9pushValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json12StyledWriter15writeArrayValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %trunc.i = trunc i16 %i.b to i8
  switch i8 %trunc.i, label %_ZNK4Json5Value4sizeEv.exit.thread [
    i8 7, label %bb.d
    i8 6, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNK4Json5Value4sizeEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.g) #45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  br label %_ZNK4Json5Value4sizeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !128
  %i.o = trunc i64 %i.n to i32
  br label %_ZNK4Json5Value4sizeEv.exit

_ZNK4Json5Value4sizeEv.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.k, %bb.c ], [ %i.o, %bb.d ] ; 6 uses
  %i.p = icmp eq i32 %.0.i, 0
  br i1 %i.p, label %_ZNK4Json5Value4sizeEv.exit.thread, label %bb.g

_ZNK4Json5Value4sizeEv.exit.thread:               ; preds = %bb.a, %bb.b, %_ZNK4Json5Value4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !46
  store i16 23899, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.r, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 0, ptr %i.s, align 2, !tbaa !50
  invoke void @_ZN4Json12StyledWriter9pushValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit.thread
  %i.t = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.q, align 8, !tbaa !50
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.z

bb.f:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit.thread
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.q
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.f
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !50
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.aa

bb.g:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit
  %i.ac = tail call noundef zeroext i1 @_ZN4Json12StyledWriter14isMultineArrayERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.ac, label %._crit_edge.i.i41, label %bb.u

._crit_edge.i.i41:                                ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !46
  store i8 91, ptr %i.ad, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.ae, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.af, align 1, !tbaa !50
  invoke void @_ZN4Json12StyledWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %._crit_edge.i.i41
  %i.ag = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ad
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @_ZN4Json12StyledWriter6indentEv(ptr noundef nonnull align 8 dereferenceable(105) %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !260
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !260
  %i.ao = icmp eq ptr %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.fr = freeze i1 %i.ao
  br i1 %.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.o
  %.023.us = phi i32 [ %i.br, %bb.o ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 2 uses
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.023.us) ; 4 uses
  call void @_ZN4Json12StyledWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  %i.av = load i64, ptr %i.aq, align 8, !tbaa !49 ; 7 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !77 ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.av
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !50  ; 2 uses
  %.not.i.us = icmp eq i8 %i.ba, 32
  switch i8 %i.ba, label %bb.j [
    i8 32, label %_ZN4Json12StyledWriter11writeIndentEv.exit.us
    i8 10, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.bb = add i64 %i.av, 1                        ; 3 uses
  %i.bc = icmp eq ptr %i.ax, %i.ar
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us: ; preds = %bb.j
  %i.bd = load i64, ptr %i.ar, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us: ; preds = %bb.j
  %i.be = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us
  %i.bf = phi i64 [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us ]
  %i.bg = icmp ugt i64 %i.bb, %i.bf
  br i1 %i.bg, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.av, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i.us = load ptr, ptr %i.ap, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us
  %i.bh = phi ptr [ %.pre.i.i.i.us, %bb.k ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.av
  store i8 10, ptr %i.bi, align 1, !tbaa !50
  store i64 %i.bb, ptr %i.aq, align 8, !tbaa !49
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  store i8 0, ptr %i.bk, align 1, !tbaa !50
  br i1 %.not.i.us, label %_ZN4Json12StyledWriter11writeIndentEv.exit.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us
  %.pre.i.us = load i64, ptr %i.aq, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i.us, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us
  %i.bl = phi i64 [ %.pre.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i.us ], [ %i.av, %bb.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us ]
  %i.bm = load i64, ptr %i.as, align 8, !tbaa !49 ; 2 uses
  %i.bn = sub i64 4611686018427387903, %i.bl
  %i.bo = icmp ult i64 %i.bn, %i.bm
  br i1 %i.bo, label %.split.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.us: ; preds = %bb.l
  %i.bp = load ptr, ptr %i.at, align 8, !tbaa !77
  %i.bq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef %i.bp, i64 noundef %i.bm) ; 0 uses
  br label %_ZN4Json12StyledWriter11writeIndentEv.exit.us

_ZN4Json12StyledWriter11writeIndentEv.exit.us:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us, %bb.i
  call void @_ZN4Json12StyledWriter10writeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  %i.br = add i32 %.023.us, 1                     ; 2 uses
  %i.bs = icmp eq i32 %i.br, %.0.i
  br i1 %i.bs, label %._crit_edge.i.i51, label %bb.m

bb.m:                                             ; preds = %_ZN4Json12StyledWriter11writeIndentEv.exit.us
  %i.bt = load i64, ptr %i.aq, align 8, !tbaa !49 ; 4 uses
  %i.bu = add i64 %i.bt, 1                        ; 3 uses
  %i.bv = load ptr, ptr %i.ap, align 8, !tbaa !77 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ar
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us: ; preds = %bb.m
  %i.bx = load i64, ptr %i.ar, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us: ; preds = %bb.m
  %i.by = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.by)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us
  %i.bz = phi i64 [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us ]
  %i.ca = icmp ugt i64 %i.bu, %i.bz
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.bt, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.us = load ptr, ptr %i.ap, align 8, !tbaa !77
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us
  %i.cb = phi ptr [ %.pre.i.i.us, %bb.n ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  store i8 44, ptr %i.cc, align 1, !tbaa !50
  store i64 %i.bu, ptr %i.aq, align 8, !tbaa !49
  %i.cd = load ptr, ptr %i.ap, align 8, !tbaa !77
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bu
  store i8 0, ptr %i.ce, align 1, !tbaa !50
  call void @_ZN4Json12StyledWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0) ; 3 uses
  call void @_ZN4Json12StyledWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cf)
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !190
  call void @_ZN4Json12StyledWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg)
  %i.ch = icmp eq i32 %.0.i, 1
  br i1 %i.ch, label %._crit_edge.i.i51, label %.lr.ph

bb.p:                                             ; preds = %._crit_edge.i.i41
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ad
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.p
  %i.cl = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.aa

.split.us:                                        ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
  unreachable

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split, %bb.r
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %bb.r ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split ] ; 3 uses
  %i.cn = phi ptr [ %i.db, %bb.r ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split ]
  %i.co = load i64, ptr %i.aq, align 8, !tbaa !49 ; 4 uses
  %i.cp = add i64 %i.co, 1                        ; 3 uses
  %i.cq = load ptr, ptr %i.ap, align 8, !tbaa !77 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ar
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.lr.ph
  %i.cs = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph
  %i.ct = load i64, ptr %i.ar, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cu = phi i64 [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.cv = icmp ugt i64 %i.cp, %i.cu
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.co, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.ap, align 8, !tbaa !77
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cw = phi ptr [ %.pre.i.i, %bb.q ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  store i8 44, ptr %i.cx, align 1, !tbaa !50
  store i64 %i.cp, ptr %i.aq, align 8, !tbaa !49
  %i.cy = load ptr, ptr %i.ap, align 8, !tbaa !77
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cp
  store i8 0, ptr %i.cz, align 1, !tbaa !50
  call void @_ZN4Json12StyledWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cn)
  %i.da = trunc nuw i64 %indvars.iv75 to i32
  %i.db = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.da) ; 3 uses
  call void @_ZN4Json12StyledWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.db)
  %i.dc = load ptr, ptr %i.ak, align 8, !tbaa !190
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %indvars.iv75
  call void @_ZN4Json12StyledWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dd)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next76 to i32
  %exitcond78 = icmp eq i32 %.0.i, %lftr.wideiv
  br i1 %exitcond78, label %._crit_edge.i.i51, label %.lr.ph

._crit_edge.i.i51:                                ; preds = %bb.r, %_ZN4Json12StyledWriter11writeIndentEv.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split
  %.us-phi = phi ptr [ %i.au, %_ZN4Json12StyledWriter11writeIndentEv.exit.us ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split ], [ %i.db, %bb.r ]
  call void @_ZN4Json12StyledWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi)
  %i.de = load i64, ptr %i.as, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !231
  %i.dh = sext i32 %i.dg to i64
  %i.di = sub i64 %i.de, %i.dh
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 noundef %i.di, i8 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.dj, ptr %4, align 8, !tbaa !46
  store i8 93, ptr %i.dj, align 8, !tbaa !50
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.dk, align 8, !tbaa !49
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.dl, align 1, !tbaa !50
  invoke void @_ZN4Json12StyledWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i51
  %i.dm = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.dj
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.s
  %i.do = load i64, ptr %i.dj, align 8, !tbaa !50
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.z

bb.t:                                             ; preds = %._crit_edge.i.i51
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dj
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.t
  %i.dt = load i64, ptr %i.dj, align 8, !tbaa !50
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.aa

bb.u:                                             ; preds = %bb.g
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !49
  %i.dy = and i64 %i.dx, -2
  %i.dz = icmp eq i64 %i.dy, 4611686018427387902
  br i1 %i.dz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ea = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull @.str.103, i64 noundef 2) ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %.0.i to i64
  %.pre = load ptr, ptr %i.eb, align 8, !tbaa !190 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre79.a = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49 ; 2 uses
  %.pre80 = load i64, ptr %i.dw, align 8, !tbaa !49
  %i.ec = sub i64 4611686018427387903, %.pre80
  %i.ed = icmp ult i64 %i.ec, %.pre79.a
  br i1 %i.ed, label %.loopexit73, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %bb.w
  %i.ee = load ptr, ptr %.pre, align 8, !tbaa !77
  %i.ef = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef %i.ee, i64 noundef %.pre79.a) ; 0 uses
  %exitcond.peel.not = icmp eq i32 %.0.i, 1
  br i1 %exitcond.peel.not, label %.loopexit74, label %.peel.next

.loopexit74:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.eg = load i64, ptr %i.dw, align 8, !tbaa !49
  %i.eh = and i64 %i.eg, -2
  %i.ei = icmp eq i64 %i.eh, 4611686018427387902
  br i1 %i.ei, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit61

bb.x:                                             ; preds = %.loopexit74
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit61: ; preds = %.loopexit74
  %i.ej = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull @.str.105, i64 noundef 2) ; 0 uses
  br label %bb.z

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ] ; 2 uses
  %i.ek = load i64, ptr %i.dw, align 8, !tbaa !49
  %i.el = and i64 %i.ek, -2
  %i.em = icmp eq i64 %i.el, 4611686018427387902
  br i1 %i.em, label %.loopexit, label %bb.y

.loopexit:                                        ; preds = %.peel.next
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
  unreachable

bb.y:                                             ; preds = %.peel.next
  %i.en = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull @.str.104, i64 noundef 2) ; 0 uses
  %i.eo = load ptr, ptr %i.eb, align 8, !tbaa !190
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %indvars.iv ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !49 ; 2 uses
  %i.es = load i64, ptr %i.dw, align 8, !tbaa !49
  %i.et = sub i64 4611686018427387903, %i.es
  %i.eu = icmp ult i64 %i.et, %i.er
  br i1 %i.eu, label %.loopexit73, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

.loopexit73:                                      ; preds = %bb.y, %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.y
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !77
  %i.ew = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef %i.ev, i64 noundef %i.er) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit74, label %.peel.next, !llvm.loop !656

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn35.pn = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  resume { ptr, i32 } %.pn35.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json12StyledWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49   ; 8 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !50    ; 2 uses
  %.not.i = icmp eq i8 %i.h, 32
  switch i8 %i.h, label %bb.c [
    i8 32, label %_ZN4Json12StyledWriter11writeIndentEv.exit
    i8 10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.c, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.e, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c
  %i.l = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.j, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.p = phi ptr [ %.pre.i.i.i, %bb.d ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.c
  store i8 10, ptr %i.q, align 1, !tbaa !50
  store i64 %i.i, ptr %i.b, align 8, !tbaa !49
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  store i8 0, ptr %i.s, align 1, !tbaa !50
  %.pre2 = load i64, ptr %i.b, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i, label %_ZN4Json12StyledWriter11writeIndentEv.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i, %bb.b, %bb.a
  %i.t = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ], [ %.pre2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !49   ; 2 uses
  %i.w = sub i64 4611686018427387903, %i.t
end_hunk_0
begin_hunk_1_@_ZN4Json18StyledStreamWriter9pushValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json18StyledStreamWriter15writeArrayValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8
  %trunc.i = trunc i16 %i.f to i8
  switch i8 %trunc.i, label %_ZNK4Json5Value4sizeEv.exit.thread [
    i8 7, label %bb.d
    i8 6, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !128
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK4Json5Value4sizeEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.k) #45
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !50
  %i.o = add i32 %i.n, 1
  br label %_ZNK4Json5Value4sizeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !128
  %i.s = trunc i64 %i.r to i32
  br label %_ZNK4Json5Value4sizeEv.exit

_ZNK4Json5Value4sizeEv.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.c ], [ %i.s, %bb.d ] ; 5 uses
  %i.t = icmp eq i32 %.0.i, 0
  br i1 %i.t, label %_ZNK4Json5Value4sizeEv.exit.thread, label %bb.g

_ZNK4Json5Value4sizeEv.exit.thread:               ; preds = %bb.a, %bb.b, %_ZNK4Json5Value4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !46
  store i16 23899, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.v, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 0, ptr %i.w, align 2, !tbaa !50
  invoke void @_ZN4Json18StyledStreamWriter9pushValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit.thread
  %i.x = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.u
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.z = load i64, ptr %i.u, align 8, !tbaa !50
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.ac

bb.f:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit.thread
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.u
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.f
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !50
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.ad

bb.g:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit
  %i.ag = tail call noundef zeroext i1 @_ZN4Json18StyledStreamWriter14isMultineArrayERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.ag, label %._crit_edge.i.i42, label %bb.ab

._crit_edge.i.i42:                                ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !46
  store i8 91, ptr %i.ah, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1, ptr %i.ai, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.aj, align 1, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 14 uses
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = and i8 %i.al, 2
  %.not.i = icmp eq i8 %i.am, 0
  br i1 %.not.i, label %bb.h, label %.noexc48

bb.h:                                             ; preds = %._crit_edge.i.i42
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !263 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !50
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !133
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !256
  %.not.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i unwind label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i8 noundef signext 10)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i unwind label %bb.u ; 0 uses

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi ptr [ %i.av, %bb.i ], [ %i.ao, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !49
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i..noexc48_crit_edge unwind label %bb.u ; 0 uses

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i..noexc48_crit_edge: ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i
  %.pre97.a = load ptr, ptr %3, align 8, !tbaa !77
  %.pre98.a = load i64, ptr %i.ai, align 8, !tbaa !49
  br label %.noexc48

.noexc48:                                         ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i..noexc48_crit_edge, %._crit_edge.i.i42
  %i.bc = phi i64 [ %.pre98.a, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i..noexc48_crit_edge ], [ 1, %._crit_edge.i.i42 ]
  %i.bd = phi ptr [ %.pre97.a, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i..noexc48_crit_edge ], [ %i.ah, %._crit_edge.i.i42 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !263
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %i.bd, i64 noundef %i.bc)
          to label %bb.k unwind label %bb.u       ; 0 uses

bb.k:                                             ; preds = %.noexc48
  %i.bh = load i8, ptr %i.ak, align 8
  %i.bi = and i8 %i.bh, -3
  store i8 %i.bi, ptr %i.ak, align 8
  %i.bj = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ah
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.k
  %i.bl = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !49 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !49
  %i.br = sub i64 4611686018427387903, %i.bq
  %i.bs = icmp ult i64 %i.br, %i.bo
  br i1 %i.bs, label %bb.l, label %_ZN4Json18StyledStreamWriter6indentEv.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
  unreachable

_ZN4Json18StyledStreamWriter6indentEv.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !77
  %i.bw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef %i.bv, i64 noundef %i.bo) ; 0 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !260
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !260
  %i.ca = icmp eq ptr %i.bx, %i.bz
  %.fr = freeze i1 %i.ca
  br i1 %.fr, label %_ZN4Json18StyledStreamWriter6indentEv.exit.split.us, label %_ZN4Json18StyledStreamWriter6indentEv.exit.split.preheader

_ZN4Json18StyledStreamWriter6indentEv.exit.split.preheader: ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit
  %5 = add i32 %.0.i, -1
  %wide.trip.count92 = zext i32 %5 to i64
  br label %_ZN4Json18StyledStreamWriter6indentEv.exit.split

_ZN4Json18StyledStreamWriter6indentEv.exit.split.us: ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit, %bb.q
  %.023.us = phi i32 [ %i.cs, %bb.q ], [ 0, %_ZN4Json18StyledStreamWriter6indentEv.exit ] ; 2 uses
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.023.us) ; 4 uses
  call void @_ZN4Json18StyledStreamWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
  %i.cc = load i8, ptr %i.ak, align 8             ; 2 uses
  %i.cd = and i8 %i.cc, 2
  %.not32.us = icmp eq i8 %i.cd, 0
  br i1 %.not32.us, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit.split.us
  %i.ce = load ptr, ptr %i.be, align 8, !tbaa !263 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !50
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !133
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !256
  %.not.i.i.us = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.us

bb.o:                                             ; preds = %bb.m
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i8 noundef signext 10) ; 0 uses
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.us

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.us: ; preds = %bb.o, %bb.n
  %.0.i.i.us = phi ptr [ %i.cl, %bb.n ], [ %i.ce, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cn = load ptr, ptr %i.bt, align 8, !tbaa !77
  %i.co = load i64, ptr %i.bp, align 8, !tbaa !49
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.us, ptr noundef %i.cn, i64 noundef %i.co) ; 0 uses
  %.pre99.a = load i8, ptr %i.ak, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.us, %_ZN4Json18StyledStreamWriter6indentEv.exit.split.us
  %i.cq = phi i8 [ %.pre99.a, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.us ], [ %i.cc, %_ZN4Json18StyledStreamWriter6indentEv.exit.split.us ]
  %i.cr = or i8 %i.cq, 2
  store i8 %i.cr, ptr %i.ak, align 8
  call void @_ZN4Json18StyledStreamWriter10writeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
  %storemerge.in.us = load i8, ptr %i.ak, align 8
  %storemerge.us = and i8 %storemerge.in.us, -3
  store i8 %storemerge.us, ptr %i.ak, align 8
  %i.cs = add i32 %.023.us, 1                     ; 2 uses
  %i.ct = icmp eq i32 %i.cs, %.0.i
  br i1 %i.ct, label %._crit_edge.i.i61, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = load ptr, ptr %i.be, align 8, !tbaa !263
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.107, i64 noundef 1) ; 0 uses
  call void @_ZN4Json18StyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
  br label %_ZN4Json18StyledStreamWriter6indentEv.exit.split.us

_ZN4Json18StyledStreamWriter6indentEv.exit.split: ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit.split.preheader, %bb.v
  %indvars.iv89 = phi i64 [ 0, %_ZN4Json18StyledStreamWriter6indentEv.exit.split.preheader ], [ %indvars.iv.next90, %bb.v ] ; 4 uses
  %i.cw = trunc nuw i64 %indvars.iv89 to i32
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.cw) ; 3 uses
  call void @_ZN4Json18StyledStreamWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
  %i.cy = load ptr, ptr %0, align 8, !tbaa !190
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %indvars.iv89 ; 2 uses
  %i.da = load i8, ptr %i.ak, align 8
  %i.db = and i8 %i.da, 2
  %.not.i53 = icmp eq i8 %i.db, 0
  br i1 %.not.i53, label %bb.r, label %_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57

bb.r:                                             ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit.split
  %i.dc = load ptr, ptr %i.be, align 8, !tbaa !263 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !50
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !133
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !256
  %.not.i.i.i54 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i54, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull %i.c, i64 noundef 1)
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i55

bb.t:                                             ; preds = %bb.r
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i8 noundef signext 10) ; 0 uses
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i55

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i55: ; preds = %bb.t, %bb.s
  %.0.i.i.i56 = phi ptr [ %i.dj, %bb.s ], [ %i.dc, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dl = load ptr, ptr %i.bt, align 8, !tbaa !77
  %i.dm = load i64, ptr %i.bp, align 8, !tbaa !49
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i56, ptr noundef %i.dl, i64 noundef %i.dm) ; 0 uses
  br label %_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57

_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57: ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit.split, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i55
  %i.do = load ptr, ptr %i.be, align 8, !tbaa !263
  %i.dp = load ptr, ptr %i.cz, align 8, !tbaa !77
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !49
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp, i64 noundef %i.dr) ; 0 uses
  %storemerge.in = load i8, ptr %i.ak, align 8
  %storemerge = and i8 %storemerge.in, -3
  store i8 %storemerge, ptr %i.ak, align 8
  %exitcond93 = icmp eq i64 %indvars.iv89, %wide.trip.count92
  br i1 %exitcond93, label %._crit_edge.i.i61, label %bb.v

bb.u:                                             ; preds = %.noexc48, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i, %bb.j, %bb.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ah
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.u
  %i.dw = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.ad

bb.v:                                             ; preds = %_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %i.dy = load ptr, ptr %i.be, align 8, !tbaa !263
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull @.str.107, i64 noundef 1) ; 0 uses
  call void @_ZN4Json18StyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
  br label %_ZN4Json18StyledStreamWriter6indentEv.exit.split

._crit_edge.i.i61:                                ; preds = %_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57, %bb.p
  %.us-phi = phi ptr [ %i.cb, %bb.p ], [ %i.cx, %_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57 ]
  call void @_ZN4Json18StyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi)
  %i.ea = load i64, ptr %i.bp, align 8, !tbaa !49
  %i.eb = load i64, ptr %i.bn, align 8, !tbaa !49
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 noundef %i.ec, i8 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ed, ptr %4, align 8, !tbaa !46
  store i8 93, ptr %i.ed, align 8, !tbaa !50
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1, ptr %i.ee, align 8, !tbaa !49
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.ef, align 1, !tbaa !50
  %i.eg = load i8, ptr %i.ak, align 8
  %i.eh = and i8 %i.eg, 2
  %.not.i65 = icmp eq i8 %i.eh, 0
  br i1 %.not.i65, label %bb.w, label %.noexc71

bb.w:                                             ; preds = %._crit_edge.i.i61
  %i.ei = load ptr, ptr %i.be, align 8, !tbaa !263 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !50
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !133
  %i.ek = getelementptr i8, ptr %i.ej, i64 -24
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !256
  %.not.i.i.i66 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.i66, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67 unwind label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i8 noundef signext 10)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67 unwind label %bb.aa ; 0 uses

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67: ; preds = %bb.y, %bb.x
  %.0.i.i.i68 = phi ptr [ %i.ep, %bb.x ], [ %i.ei, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.er = load ptr, ptr %i.bt, align 8, !tbaa !77
  %i.es = load i64, ptr %i.bp, align 8, !tbaa !49
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i68, ptr noundef %i.er, i64 noundef %i.es)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67..noexc71_crit_edge unwind label %bb.aa ; 0 uses

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67..noexc71_crit_edge: ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67
  %.pre100 = load ptr, ptr %4, align 8, !tbaa !77
  %.pre101 = load i64, ptr %i.ee, align 8, !tbaa !49
  br label %.noexc71

.noexc71:                                         ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67..noexc71_crit_edge, %._crit_edge.i.i61
  %i.eu = phi i64 [ %.pre101, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67..noexc71_crit_edge ], [ 1, %._crit_edge.i.i61 ]
  %i.ev = phi ptr [ %.pre100, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67..noexc71_crit_edge ], [ %i.ed, %._crit_edge.i.i61 ]
  %i.ew = load ptr, ptr %i.be, align 8, !tbaa !263
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef %i.ev, i64 noundef %i.eu)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %.noexc71
  %i.ey = load i8, ptr %i.ak, align 8
  %i.ez = and i8 %i.ey, -3
  store i8 %i.ez, ptr %i.ak, align 8
  %i.fa = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ed
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.z
  %i.fc = load i64, ptr %i.ed, align 8, !tbaa !50
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ac

bb.aa:                                            ; preds = %.noexc71, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67, %bb.y, %bb.x
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ed
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.aa
  %i.fh = load i64, ptr %i.ed, align 8, !tbaa !50
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ad

bb.ab:                                            ; preds = %bb.g
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !263
  %i.fl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.103, i64 noundef 2) ; 0 uses
  %wide.trip.count = zext i32 %.0.i to i64
  %.pre = load ptr, ptr %i.fj, align 8, !tbaa !263
  %.pre94.a = load ptr, ptr %0, align 8, !tbaa !190 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre94.a, i64 8
  %.pre96 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49
  %.pre95 = load ptr, ptr %.pre94.a, align 8, !tbaa !77
  %i.fm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pre, ptr noundef %.pre95, i64 noundef %.pre96) ; 0 uses
  %exitcond.peel.not = icmp eq i32 %.0.i, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

.loopexit:                                        ; preds = %.peel.next, %bb.ab
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !263
  %i.fo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull @.str.105, i64 noundef 2) ; 0 uses
  br label %bb.ac

.peel.next:                                       ; preds = %bb.ab, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.ab ] ; 2 uses
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !263
  %i.fq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull @.str.104, i64 noundef 2) ; 0 uses
  %i.fr = load ptr, ptr %i.fj, align 8, !tbaa !263
  %i.fs = load ptr, ptr %0, align 8, !tbaa !190
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %indvars.iv ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !77
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !49
  %i.fx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef %i.fu, i64 noundef %i.fw) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !675

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn36.pn = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  resume { ptr, i32 } %.pn36.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(105) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 2
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !50
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !256
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext 10) ; 0 uses
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit

_ZN4Json18StyledStreamWriter11writeIndentEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.m, %bb.c ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef %i.p, i64 noundef %i.r) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !263
  %i.v = load ptr, ptr %1, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !49
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.v, i64 noundef %i.x) ; 0 uses
  %i.z = load i8, ptr %i.b, align 8
  %i.aa = and i8 %i.z, -3
  store i8 %i.aa, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json18StyledStreamWriter6indentEv(ptr noundef nonnull align 8 dereferenceable(105) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
begin_hunk_2_@_ZN4Json23BuiltStyledStreamWriter15writeArrayValueERKNS_5ValueE:bb.a
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit.thread
  %i.w = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.t
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.y = load i64, ptr %i.t, align 8, !tbaa !50
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.ad

bb.f:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit.thread
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.t
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.f
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !50
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.ae

bb.g:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !269
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call noundef zeroext i1 @_ZN4Json23BuiltStyledStreamWriter14isMultineArrayERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.ai, label %.critedge, label %bb.y

.critedge:                                        ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !46
  store i8 91, ptr %i.aj, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1, ptr %i.ak, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.al, align 1, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 11 uses
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = and i8 %i.an, 2
  %.not.i = icmp ne i8 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.ar
  br i1 %or.cond.i, label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !265 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !50
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !133
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !256
  %.not.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i unwind label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.ba, %bb.j ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !77
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !49
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i_crit_edge unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i_crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i
  %.pre93.a = load ptr, ptr %3, align 8, !tbaa !77
  %.pre94.a = load i64, ptr %i.ak, align 8, !tbaa !49
  br label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i

_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i_crit_edge, %.critedge
  %i.bh = phi i64 [ %.pre94.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i_crit_edge ], [ 1, %.critedge ]
  %i.bi = phi ptr [ %.pre93.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i_crit_edge ], [ %i.aj, %.critedge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !265
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.bi, i64 noundef %i.bh)
          to label %bb.l unwind label %bb.s       ; 0 uses

bb.l:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i
  %i.bm = load i8, ptr %i.am, align 8
  %i.bn = and i8 %i.bm, -3
  store i8 %i.bn, ptr %i.am, align 8
  %i.bo = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aj
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.l
  %i.bq = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.bs = load i64, ptr %i.ap, align 8, !tbaa !49 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !49
  %i.bv = sub i64 4611686018427387903, %i.bu
  %i.bw = icmp ult i64 %i.bv, %i.bs
  br i1 %i.bw, label %bb.m, label %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
  unreachable

_ZN4Json23BuiltStyledStreamWriter6indentEv.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !77
  %i.ca = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef %i.bz, i64 noundef %i.bs) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !260
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !260
  %i.cf = icmp eq ptr %i.cc, %i.ce
  %.fr = freeze i1 %i.cf
  br i1 %.fr, label %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us, label %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split

_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us: ; preds = %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit, %bb.r
  %.023.us = phi i32 [ %i.db, %bb.r ], [ 0, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit ] ; 2 uses
  %i.cg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.023.us) ; 4 uses
  call void @_ZN4Json23BuiltStyledStreamWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg)
  %i.ch = load i8, ptr %i.am, align 8             ; 3 uses
  %i.ci = and i8 %i.ch, 2
  %.not32.us = icmp eq i8 %i.ci, 0
  br i1 %.not32.us, label %bb.n, label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us

bb.n:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us
  %i.cj = load i64, ptr %i.ap, align 8, !tbaa !49
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.bj, align 8, !tbaa !265 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !50
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !133
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !256
  %.not.i.i.us = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.us

bb.q:                                             ; preds = %bb.o
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.us

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.us: ; preds = %bb.q, %bb.p
  %.0.i.i.us = phi ptr [ %i.cs, %bb.p ], [ %i.cl, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cu = load ptr, ptr %i.bx, align 8, !tbaa !77
  %i.cv = load i64, ptr %i.bt, align 8, !tbaa !49
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.us, ptr noundef %i.cu, i64 noundef %i.cv) ; 0 uses
  %.pre95.a = load i8, ptr %i.am, align 8
  br label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us

_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.us, %bb.n, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us
  %i.cx = phi i8 [ %.pre95.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.us ], [ %i.ch, %bb.n ], [ %i.ch, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us ]
  %i.cy = or i8 %i.cx, 2
  store i8 %i.cy, ptr %i.am, align 8
  call void @_ZN4Json23BuiltStyledStreamWriter10writeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg)
  %i.cz = load i8, ptr %i.am, align 8
  %i.da = and i8 %i.cz, -3
  store i8 %i.da, ptr %i.am, align 8
  %i.db = add i32 %.023.us, 1                     ; 2 uses
  %i.dc = icmp eq i32 %i.db, %.0.i
  br i1 %i.dc, label %._crit_edge.i.i56, label %bb.r

bb.r:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us
  %i.dd = load ptr, ptr %i.bj, align 8, !tbaa !265
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull @.str.107, i64 noundef 1) ; 0 uses
  call void @_ZN4Json23BuiltStyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg)
  br label %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us

_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split: ; preds = %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit
  %i.df = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0) ; 3 uses
  call void @_ZN4Json23BuiltStyledStreamWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.df)
  %i.dg = load ptr, ptr %i.cb, align 8, !tbaa !190
  call void @_ZN4Json23BuiltStyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dg)
  %i.dh = icmp eq i32 %.0.i, 1
  br i1 %i.dh, label %._crit_edge.i.i56, label %.lr.ph

bb.s:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i, %bb.k, %bb.j
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.aj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.s
  %i.dl = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.ae

.lr.ph:                                           ; preds = %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split, %.lr.ph
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.lr.ph ], [ 1, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split ] ; 3 uses
  %i.dn = phi ptr [ %i.dr, %.lr.ph ], [ %i.df, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split ]
  %i.do = load ptr, ptr %i.bj, align 8, !tbaa !265
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.107, i64 noundef 1) ; 0 uses
  call void @_ZN4Json23BuiltStyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
  %i.dq = trunc nuw i64 %indvars.iv86 to i32
  %i.dr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.dq) ; 3 uses
  call void @_ZN4Json23BuiltStyledStreamWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dr)
  %i.ds = load ptr, ptr %i.cb, align 8, !tbaa !190
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.ds, i64 %indvars.iv86
  call void @_ZN4Json23BuiltStyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dt)
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next87 to i32
  %exitcond89 = icmp eq i32 %.0.i, %lftr.wideiv
  br i1 %exitcond89, label %._crit_edge.i.i56, label %.lr.ph

._crit_edge.i.i56:                                ; preds = %.lr.ph, %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split
  %.us-phi = phi ptr [ %i.cg, %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us ], [ %i.df, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split ], [ %i.dr, %.lr.ph ]
  call void @_ZN4Json23BuiltStyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi)
  %i.du = load i64, ptr %i.bt, align 8, !tbaa !49
  %i.dv = load i64, ptr %i.ap, align 8, !tbaa !49
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.dw, i8 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.dx, ptr %4, align 8, !tbaa !46
  store i8 93, ptr %i.dx, align 8, !tbaa !50
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1, ptr %i.dy, align 8, !tbaa !49
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.dz, align 1, !tbaa !50
  %i.ea = load i8, ptr %i.am, align 8
  %i.eb = and i8 %i.ea, 2
  %.not.i60 = icmp ne i8 %i.eb, 0
  %i.ec = load i64, ptr %i.ap, align 8
  %i.ed = icmp eq i64 %i.ec, 0
  %or.cond.i61 = select i1 %.not.i60, i1 true, i1 %i.ed
  br i1 %or.cond.i61, label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i56
  %i.ee = load ptr, ptr %i.bj, align 8, !tbaa !265 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !50
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !133
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !256
  %.not.i.i.i62 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i62, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63 unwind label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63: ; preds = %bb.v, %bb.u
  %.0.i.i.i64 = phi ptr [ %i.el, %bb.u ], [ %i.ee, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.en = load ptr, ptr %i.bx, align 8, !tbaa !77
  %i.eo = load i64, ptr %i.bt, align 8, !tbaa !49
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i64, ptr noundef %i.en, i64 noundef %i.eo)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65_crit_edge unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65_crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63
  %.pre96.a = load ptr, ptr %4, align 8, !tbaa !77
  %.pre97 = load i64, ptr %i.dy, align 8, !tbaa !49
  br label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65

_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65_crit_edge, %._crit_edge.i.i56
  %i.eq = phi i64 [ %.pre97, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65_crit_edge ], [ 1, %._crit_edge.i.i56 ]
  %i.er = phi ptr [ %.pre96.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65_crit_edge ], [ %i.dx, %._crit_edge.i.i56 ]
  %i.es = load ptr, ptr %i.bj, align 8, !tbaa !265
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef %i.er, i64 noundef %i.eq)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65
  %i.eu = load i8, ptr %i.am, align 8
  %i.ev = and i8 %i.eu, -3
  store i8 %i.ev, ptr %i.am, align 8
  %i.ew = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.dx
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.w
  %i.ey = load i64, ptr %i.dx, align 8, !tbaa !50
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ad

bb.x:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63, %bb.v, %bb.u
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.dx
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.x
  %i.fd = load i64, ptr %i.dx, align 8, !tbaa !50
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ae

bb.y:                                             ; preds = %bb.h
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !265
  %i.fh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull @.str.101, i64 noundef 1) ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !49
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !265
  %i.fm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull @.str.106, i64 noundef 1) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.trip.count = zext i32 %.0.i to i64
  %.pre = load ptr, ptr %i.ff, align 8, !tbaa !265
  %.pre90.a = load ptr, ptr %i.fn, align 8, !tbaa !190 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre90.a, i64 8
  %.pre92 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49
  %.pre91 = load ptr, ptr %.pre90.a, align 8, !tbaa !77
  %i.fo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pre, ptr noundef %.pre91, i64 noundef %.pre92) ; 0 uses
  %exitcond.peel.not = icmp eq i32 %.0.i, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

.loopexit:                                        ; preds = %.peel.next, %bb.aa
  %i.fp = load i64, ptr %i.fi, align 8, !tbaa !49
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.ac, label %bb.ab

.peel.next:                                       ; preds = %bb.aa, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.aa ] ; 2 uses
  %i.fr = load ptr, ptr %i.ff, align 8, !tbaa !265
  %i.fs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull @.str.104, i64 noundef 2) ; 0 uses
  %i.ft = load ptr, ptr %i.ff, align 8, !tbaa !265
  %i.fu = load ptr, ptr %i.fn, align 8, !tbaa !190
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.fu, i64 %indvars.iv ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !77
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !49
  %i.fz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef %i.fw, i64 noundef %i.fy) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !697

bb.ab:                                            ; preds = %.loopexit
  %i.ga = load ptr, ptr %i.ff, align 8, !tbaa !265
  %i.gb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.106, i64 noundef 1) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit
  %i.gc = load ptr, ptr %i.ff, align 8, !tbaa !265
  %i.gd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.102, i64 noundef 1) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn36.pn = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  resume { ptr, i32 } %.pn36.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json23BuiltStyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 2
  %.not = icmp ne i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !265  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !50
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !256
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
end_hunk_2
