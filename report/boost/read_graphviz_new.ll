Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read_graphviz_new?download=true
inline.NumInlined: 6920
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5boost20read_graphviz_detail9tokenizer9get_tokenEv:bb.a
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.body
  %i.bx = load i64, ptr %i.ay, align 8, !tbaa !60
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.w

bb.u:                                             ; preds = %bb.k
  %i.bz = load i64, ptr %i.al, align 8, !tbaa !58 ; 2 uses
  %i.ca = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.cb = sub i64 4611686018427387903, %i.ca
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #28
          to label %.noexc25 unwind label %.loopexit.split-lp47

.noexc25:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.u
  %i.cd = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.cd, i64 noundef %i.bz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit46 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cf = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.am
  br i1 %i.cg, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ch = load i64, ptr %i.am, align 8, !tbaa !60
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit29

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.g, !llvm.loop !1091

.loopexit46:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp47:                             ; preds = %bb.v
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit46, %.loopexit.split-lp47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn9 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %lpad.loopexit48, %.loopexit46 ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp47 ] ; 2 uses
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.am
  br i1 %i.ck, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %bb.w
  %i.cl = load i64, ptr %i.am, align 8, !tbaa !60
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit32

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit32: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30, %bb.r
  %.pn9.pn = phi { ptr, i32 } [ %i.bs, %bb.r ], [ %.pn9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30 ], [ %.pn9, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ab

bb.x:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit
  store i32 20, ptr %0, align 8, !tbaa !112
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !59
  %i.cp = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.cq = load i64, ptr %i.ad, align 8, !tbaa !58 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.cq, ptr %i.a, align 8, !tbaa !63
  %i.cr = icmp ugt i64 %i.cq, 15
  br i1 %i.cr, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.x
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc33 unwind label %.loopexit.split-lp ; 2 uses

.noexc33:                                         ; preds = %.noexc.i.i
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !57
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.ct, ptr %i.co, align 8, !tbaa !60
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc33, %bb.x
  %i.cu = phi ptr [ %i.cs, %.noexc33 ], [ %i.co, %bb.x ] ; 2 uses
  switch i64 %i.cq, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = load i8, ptr %i.cp, align 1, !tbaa !60
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !60
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.cp, i64 %i.cq, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !58
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !57
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.da = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.t
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.aa
  %i.dc = load i64, ptr %i.t, align 8, !tbaa !60
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit32, %bb.q
  %.pn9.pn.pn = phi { ptr, i32 } [ %.pn9.pn, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit32 ], [ %i.br, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.de = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.t
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.ab
  %i.dg = load i64, ptr %i.t, align 8, !tbaa !60
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.p
  %.pn9.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.p ], [ %.pn9.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn9.pn.pn, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !57  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !60
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit42

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn9.pn.pn.pn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.pre52 = load ptr, ptr %i.s, align 8, !tbaa !57 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.do = icmp eq ptr %.pre52, %i.dn
  br i1 %i.do, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !60
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %.pre52, i64 noundef %i.dq) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit45

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !125    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
  unreachable

_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !112
  store i32 %i.r, ptr %i.q, align 8, !tbaa !112
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !59
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !57   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !58   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !57
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !60
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !60
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit

_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !58
  store ptr %i.w, ptr %i.t, align 8, !tbaa !57
  store i64 0, ptr %i.ae, align 8, !tbaa !58
  store i8 0, ptr %i.w, align 8, !tbaa !60
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.ag = load i32, ptr %.0911.i.i.i, align 8, !tbaa !112, !alias.scope !1099, !noalias !1098
  store i32 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !112, !alias.scope !1098, !noalias !1099
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !59, !alias.scope !1098, !noalias !1099
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !57, !alias.scope !1099, !noalias !1098 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !58, !alias.scope !1099, !noalias !1098 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !1100
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !57, !alias.scope !1098, !noalias !1099
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !60, !alias.scope !1099, !noalias !1098
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !60, !alias.scope !1098, !noalias !1099
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !58, !alias.scope !1099, !noalias !1098
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.as, ptr %i.au, align 8, !tbaa !58, !alias.scope !1098, !noalias !1099
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !57, !alias.scope !1099, !noalias !1098
  store i64 0, ptr %i.at, align 8, !tbaa !58, !alias.scope !1099, !noalias !1098
  store i8 0, ptr %i.al, align 8, !tbaa !60, !alias.scope !1099, !noalias !1098
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit ], [ %i.aw, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ax, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.ay = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !112, !alias.scope !1102, !noalias !1101
  store i32 %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !112, !alias.scope !1101, !noalias !1102
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !59, !alias.scope !1101, !noalias !1102
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !57, !alias.scope !1102, !noalias !1101 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !58, !alias.scope !1102, !noalias !1101 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false), !alias.scope !1103
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !57, !alias.scope !1101, !noalias !1102
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !60, !alias.scope !1102, !noalias !1101
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !60, !alias.scope !1101, !noalias !1102
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !58, !alias.scope !1102, !noalias !1101
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bk = phi i64 [ %i.bg, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !58, !alias.scope !1101, !noalias !1102
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !57, !alias.scope !1102, !noalias !1101
  store i64 0, ptr %i.bl, align 8, !tbaa !58, !alias.scope !1102, !noalias !1101
  store i8 0, ptr %i.bd, align 8, !tbaa !60, !alias.scope !1102, !noalias !1101
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !25

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ax, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bo, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN5boost20read_graphviz_detail5tokenESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !127
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #29
  br label %_ZNSt12_Vector_baseIN5boost20read_graphviz_detail5tokenESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5boost20read_graphviz_detail5tokenESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !125
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !126
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost20read_graphviz_detail9tokenizer13get_token_rawEv(ptr dead_on_unwind noalias writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::bad_graphviz_syntax", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %4 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %5 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %6 = alloca %"struct.boost::bad_graphviz_syntax", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %8 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %9 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %10 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %12 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.boost::match_results", align 8 ; 53 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %16 = alloca %"class.std::locale", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::allocator", align 1   ; 4 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !405  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !405
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN5boost9iterators18transform_iteratorINS6_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcS4_EENS6_11use_defaultESI_EEEEvT_SK_St18input_iterator_tag:bb.a
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 15, ptr %i.a, align 8, !tbaa !63
  %.not46 = icmp eq ptr %1, %3
  br i1 %.not46, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

.preheader:                                       ; preds = %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit, %bb.a
  %.sroa.025.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit ] ; 2 uses
  %.013.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit ] ; 2 uses
  %.not40 = icmp eq ptr %.sroa.025.0.lcssa, %3
  br i1 %.not40, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN5boost9iterators18transform_iteratorINS6_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcS4_EENS6_11use_defaultESI_EEEEvT_SK_St18input_iterator_tagEN6_GuardD2Ev.exit, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit
  %.01338 = phi i64 [ 0, %.lr.ph ], [ %i.o, %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit ] ; 3 uses
  %.sroa.025.037 = phi ptr [ %1, %.lr.ph ], [ %i.q, %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit ] ; 2 uses
  %i.d = load i8, ptr %.sroa.025.037, align 1, !tbaa !60
  %i.e = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #27
  %i.f = load ptr, ptr %2, align 8, !tbaa !179
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !186  ; 3 uses
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.not.i.i.i.i.i.i, label %bb.c, label %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef signext i8 %i.m(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext %i.d), !inline_history !1219
  %i.o = add nuw nsw i64 %.01338, 1               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01338
  store i8 %i.n, ptr %i.p, align 1, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.025.037, i64 1 ; 3 uses
  %i.r = icmp ne ptr %i.q, %3
  %i.s = icmp samesign ult i64 %.01338, 14
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %bb.b, label %.preheader, !llvm.loop !1220

bb.d:                                             ; preds = %.lr.ph44, %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit17
  %.142 = phi i64 [ %.013.lcssa, %.lr.ph44 ], [ %i.at, %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit17 ] ; 7 uses
  %.sroa.025.141 = phi ptr [ %.sroa.025.0.lcssa, %.lr.ph44 ], [ %i.au, %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit17 ] ; 2 uses
  %i.u = load i64, ptr %i.a, align 8, !tbaa !63
  %i.v = icmp eq i64 %.142, %i.u
  br i1 %i.v, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !57
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.w = add i64 %.142, 1
  store i64 %i.w, ptr %i.a, align 8, !tbaa !63
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.142)
          to label %bb.f unwind label %bb.i       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  switch i64 %.142, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.y, align 1, !tbaa !60
  store i8 %i.z, ptr %i.x, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.y, i64 %.142, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.f
  %i.aa = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !60
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.x, ptr %0, align 8, !tbaa !57
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !60
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  %i.ag = phi ptr [ %.pre, %._crit_edge ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit ]
  %i.ah = load i8, ptr %.sroa.025.141, align 1, !tbaa !60
  %i.ai = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #27
  %i.aj = load ptr, ptr %2, align 8, !tbaa !179
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !184
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ai
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !186 ; 3 uses
  %.not.not.i.i.i.i.i.i15 = icmp eq ptr %i.an, null
  br i1 %.not.not.i.i.i.i.i.i15, label %bb.k, label %_ZN5boost9iterators20iterator_core_access11dereferenceINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEEENT_9referenceERKSL_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZN5boost9iterators20iterator_core_access11dereferenceINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEEENT_9referenceERKSL_.exit.i: ; preds = %bb.j
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.an, i8 noundef signext %i.ah)
          to label %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit17 unwind label %.loopexit, !inline_history !1221

_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit17: ; preds = %_ZN5boost9iterators20iterator_core_access11dereferenceINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEEENT_9referenceERKSL_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.142
  %i.at = add i64 %.142, 1                        ; 2 uses
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.025.141, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.au, %3
  br i1 %.not, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN5boost9iterators18transform_iteratorINS6_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcS4_EENS6_11use_defaultESI_EEEEvT_SK_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.d

.loopexit:                                        ; preds = %_ZN5boost9iterators20iterator_core_access11dereferenceINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEEENT_9referenceERKSL_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN5boost9iterators18transform_iteratorINS6_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcS4_EENS6_11use_defaultESI_EEEEvT_SK_St18input_iterator_tagEN6_GuardD2Ev.exit: ; preds = %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit17, %.preheader
  %.1.lcssa = phi i64 [ %.013.lcssa, %.preheader ], [ %i.at, %_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorINS_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_11use_defaultESJ_EEcNS0_27random_access_traversal_tagEclLb0ELb0EEdeEv.exit17 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.lcssa, ptr %i.av, align 8, !tbaa !58
  %i.aw = load ptr, ptr %0, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.1.lcssa
  store i8 0, ptr %i.ax, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.c
  br i1 %i.az, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN5boost9iterators18transform_iteratorINS6_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcS4_EENS6_11use_defaultESI_EEEEvT_SK_St18input_iterator_tagEN6_GuardD2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.l
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !60
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #29
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN5boost9iterators18transform_iteratorINS6_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcS4_EENS6_11use_defaultESI_EEEEvT_SK_St18input_iterator_tagEN6_GuardD2Ev.exit21

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN5boost9iterators18transform_iteratorINS6_9algorithm6detail9to_lowerFIcEEN9__gnu_cxx17__normal_iteratorIPKcS4_EENS6_11use_defaultESI_EEEEvT_SK_St18input_iterator_tagEN6_GuardD2Ev.exit21: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !126  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !125    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
  unreachable

_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 230584300921369395)
  %i.m = select i1 %i.k, i64 230584300921369395, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 40                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #32 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 4 uses
  %i.s = load i32, ptr %2, align 8, !tbaa !112
  store i32 %i.s, ptr %i.r, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !59
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !57   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.y, ptr %i.a, align 8, !tbaa !63
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !57
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !60
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = phi ptr [ %i.aa, %.noexc ], [ %i.v, %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.y, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !60
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !60
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !58
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.ai = load i32, ptr %.0911.i.i.i, align 8, !tbaa !112, !alias.scope !1229, !noalias !1228
  store i32 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !112, !alias.scope !1228, !noalias !1229
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !59, !alias.scope !1228, !noalias !1229
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !57, !alias.scope !1229, !noalias !1228 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !58, !alias.scope !1229, !noalias !1228 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !1230
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !57, !alias.scope !1228, !noalias !1229
  %i.at = load i64, ptr %i.an, align 8, !tbaa !60, !alias.scope !1229, !noalias !1228
  store i64 %i.at, ptr %i.al, align 8, !tbaa !60, !alias.scope !1228, !noalias !1229
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !58, !alias.scope !1229, !noalias !1228
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.au = phi i64 [ %i.aq, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !58, !alias.scope !1228, !noalias !1229
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !57, !alias.scope !1229, !noalias !1228
  store i64 0, ptr %i.av, align 8, !tbaa !58, !alias.scope !1229, !noalias !1228
  store i8 0, ptr %i.an, align 8, !tbaa !60, !alias.scope !1229, !noalias !1228
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.ay, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bq, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.az, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.ba = load i32, ptr %.0911.i.i.i29, align 8, !tbaa !112, !alias.scope !1232, !noalias !1231
  store i32 %i.ba, ptr %.012.i.i.i28, align 8, !tbaa !112, !alias.scope !1231, !noalias !1232
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 3 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !59, !alias.scope !1231, !noalias !1232
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !57, !alias.scope !1232, !noalias !1231 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !58, !alias.scope !1232, !noalias !1231 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false), !alias.scope !1233
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !57, !alias.scope !1231, !noalias !1232
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !60, !alias.scope !1232, !noalias !1231
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !60, !alias.scope !1231, !noalias !1232
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !58, !alias.scope !1232, !noalias !1231
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bm = phi i64 [ %i.bi, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !58, !alias.scope !1231, !noalias !1232
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !57, !alias.scope !1232, !noalias !1231
  store i64 0, ptr %i.bn, align 8, !tbaa !58, !alias.scope !1232, !noalias !1231
  store i8 0, ptr %i.bf, align 8, !tbaa !60, !alias.scope !1232, !noalias !1231
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bp, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !25

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.az, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bq, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN5boost20read_graphviz_detail5tokenESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !127
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bu) #29
  br label %_ZNSt12_Vector_baseIN5boost20read_graphviz_detail5tokenESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5boost20read_graphviz_detail5tokenESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !125
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !126
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !127
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #29
  invoke void @__cxa_rethrow() #28
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bw

bb.l:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #30
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}
end_hunk_1
begin_hunk_2_@_ZN5boost20read_graphviz_detail6parser15parse_attr_listERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEE:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 12 uses
  %.phi.trans.insert.i185 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 12 uses
  %.phi.trans.insert.i204 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 12 uses
  %.phi.trans.insert.i246 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %37, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %23, i64 20
  br label %bb.b

bb.b:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit281, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @_ZN5boost20read_graphviz_detail6parser4peekEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %17, ptr noundef nonnull align 8 dereferenceable(328) %0)
  %i.cg = load i32, ptr %17, align 8, !tbaa !112
  %i.ch = icmp eq i32 %i.cg, 10
  %i.ci = load ptr, ptr %i.q, align 8, !tbaa !57  ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.r
  br i1 %i.cj, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.ck = load i64, ptr %i.r, align 8, !tbaa !60
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit:   ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br i1 %i.ch, label %bb.c, label %.noexc.i

bb.c:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit
  call void @_ZN5boost20read_graphviz_detail6parser3getEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %18, ptr noundef nonnull align 8 dereferenceable(328) %0)
  %i.cm = load ptr, ptr %i.u, align 8, !tbaa !57  ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.v
  br i1 %i.cn, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %bb.c
  %i.co = load i64, ptr %i.v, align 8, !tbaa !60
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30.preheader

.noexc.i:                                         ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  store ptr %i.s, ptr %19, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #27
  store i64 43, ptr %i.p, align 8, !tbaa !63
  %i.cq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cq, ptr %19, align 8, !tbaa !57
  %i.cr = load i64, ptr %i.p, align 8, !tbaa !63  ; 3 uses
  store i64 %i.cr, ptr %i.s, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.cq, ptr noundef nonnull align 1 dereferenceable(43) @.str.323, i64 43, i1 false)
  store i64 %i.cr, ptr %i.t, align 8, !tbaa !58
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  store i8 0, ptr %i.cs, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  invoke void @_ZN5boost20read_graphviz_detail6parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.ct = load ptr, ptr %19, align 8, !tbaa !57   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.s
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.cv = load i64, ptr %i.s, align 8, !tbaa !60
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30.preheader

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30.preheader: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30

bb.e:                                             ; preds = %.noexc.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.f:                                             ; preds = %.noexc
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %19, align 8, !tbaa !57   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.s
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.f
  %i.db = load i64, ptr %i.s, align 8, !tbaa !60
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.e
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.e ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.cy, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %common.resume

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30: ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30.backedge, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  %i.dd = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1304 ; 2 uses
  %i.de = load ptr, ptr %i.x, align 8, !tbaa !405, !noalias !1304
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %bb.g, label %bb.p

bb.g:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27, !noalias !1304
  call void @_ZN5boost20read_graphviz_detail9tokenizer9get_tokenEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %16, ptr noundef nonnull align 8 dereferenceable(328) %0), !noalias !1304
  %i.dg = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1304 ; 8 uses
  %i.dh = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1304
  %.not.i.i.i = icmp eq ptr %i.dg, %i.dh
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.di = load i32, ptr %16, align 8, !tbaa !112, !noalias !1304
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !112, !noalias !1304
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !59, !noalias !1304
  %i.dl = load ptr, ptr %i.z, align 8, !tbaa !57, !noalias !1304 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.aa
  br i1 %i.dm, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.dn = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !58, !noalias !1304 ; 3 uses
  %i.do = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.do)
  %i.dp = add nuw nsw i64 %i.dn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.dp, i1 false), !noalias !1304
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !57, !noalias !1304
  %i.dq = load i64, ptr %i.aa, align 8, !tbaa !60, !noalias !1304
  store i64 %i.dq, ptr %i.dk, align 8, !tbaa !60, !noalias !1304
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !58, !noalias !1304
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.i
  %i.dr = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dn, %bb.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !58, !noalias !1304
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1304
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store ptr %i.du, ptr %i.x, align 8, !tbaa !126, !noalias !1304
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i

bb.j:                                             ; preds = %bb.g
  %i.dv = load ptr, ptr %i.w, align 8, !tbaa !125, !noalias !1304 ; 5 uses
  %i.dw = ptrtoint ptr %i.dg to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %bb.k, label %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
          to label %.noexc289 unwind label %.loopexit.split-lp

.noexc289:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.j
  %i.ea = sdiv exact i64 %i.dy, 40                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 230584300921369395)
  %i.ee = select i1 %i.ec, i64 230584300921369395, i64 %i.ed ; 2 uses
  %i.ef = mul nuw nsw i64 %i.ee, 40
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #32
          to label %.noexc290 unwind label %.loopexit ; 5 uses

.noexc290:                                        ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dy ; 4 uses
  %i.ei = load i32, ptr %16, align 8, !tbaa !112, !noalias !1304
  store i32 %i.ei, ptr %i.eh, align 8, !tbaa !112, !noalias !1304
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 3 uses
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !59, !noalias !1304
  %i.el = load ptr, ptr %i.z, align 8, !tbaa !57, !noalias !1304 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.aa
  br i1 %i.em, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i282

bb.l:                                             ; preds = %.noexc290
  %i.en = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !58, !noalias !1304 ; 3 uses
  %i.eo = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.eo), !noalias !1304
  %i.ep = add nuw nsw i64 %i.en, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.ep, i1 false), !noalias !1304
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i282: ; preds = %.noexc290
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !57, !noalias !1304
  %i.eq = load i64, ptr %i.aa, align 8, !tbaa !60, !noalias !1304
  store i64 %i.eq, ptr %i.ek, align 8, !tbaa !60, !noalias !1304
  %.pre.i284 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !58, !noalias !1304
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i

_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i282, %bb.l
  %i.er = phi i64 [ %i.en, %bb.l ], [ %.pre.i284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i282 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 %i.er, ptr %i.es, align 8, !tbaa !58, !noalias !1304
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !57, !noalias !1304
  store i64 0, ptr %.phi.trans.insert.i, align 8, !tbaa !58, !noalias !1304
  store i8 0, ptr %i.aa, align 8, !tbaa !60, !noalias !1304
  %.not10.i.i.i.i285 = icmp eq ptr %i.dv, %i.dg
  br i1 %.not10.i.i.i.i285, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i, label %.lr.ph.i.i.i.i286

.lr.ph.i.i.i.i286:                                ; preds = %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i287 = phi ptr [ %i.fj, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.eg, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.fi, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.dv, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1305), !noalias !1304
  call void @llvm.experimental.noalias.scope.decl(metadata !1306), !noalias !1304
  %i.et = load i32, ptr %.0911.i.i.i.i, align 8, !tbaa !112, !alias.scope !1306, !noalias !1307
  store i32 %i.et, ptr %.012.i.i.i.i287, align 8, !tbaa !112, !alias.scope !1305, !noalias !1308
  %i.eu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i287, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i287, i64 24 ; 3 uses
  store ptr %i.ew, ptr %i.eu, align 8, !tbaa !59, !alias.scope !1305, !noalias !1308
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !57, !alias.scope !1306, !noalias !1307 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 5 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i286
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !58, !alias.scope !1306, !noalias !1307 ; 3 uses
  %i.fc = icmp ult i64 %i.fb, 16
  call void @llvm.assume(i1 %i.fc), !noalias !1304
  %i.fd = add nuw nsw i64 %i.fb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ew, ptr noundef nonnull align 8 dereferenceable(1) %i.ey, i64 %i.fd, i1 false), !alias.scope !1309, !noalias !1304
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i286
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !57, !alias.scope !1305, !noalias !1308
  %i.fe = load i64, ptr %i.ey, align 8, !tbaa !60, !alias.scope !1306, !noalias !1307
  store i64 %i.fe, ptr %i.ew, align 8, !tbaa !60, !alias.scope !1305, !noalias !1308
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !58, !alias.scope !1306, !noalias !1307
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.m
  %i.ff = phi i64 [ %i.fb, %bb.m ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i287, i64 16
  store i64 %i.ff, ptr %i.fh, align 8, !tbaa !58, !alias.scope !1305, !noalias !1308
  store ptr %i.ey, ptr %i.ev, align 8, !tbaa !57, !alias.scope !1306, !noalias !1307
  store i64 0, ptr %i.fg, align 8, !tbaa !58, !alias.scope !1306, !noalias !1307
  store i8 0, ptr %i.ey, align 8, !tbaa !60, !alias.scope !1306, !noalias !1307
  %i.fi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i287, i64 40 ; 2 uses
  %.not.i.i.i.i288 = icmp eq ptr %i.fi, %i.dg
  br i1 %.not.i.i.i.i288, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i, label %.lr.ph.i.i.i.i286, !llvm.loop !25

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.eg, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i ], [ %i.fj, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40
  %.not.i27.i = icmp eq ptr %i.dv, null
  br i1 %.not.i27.i, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i
  %i.fl = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1304
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.fn) #29, !noalias !1304
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i
  store ptr %i.eg, ptr %i.w, align 8, !tbaa !125, !noalias !1304
  store ptr %i.fk, ptr %i.x, align 8, !tbaa !126, !noalias !1304
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.fo, ptr %i.y, align 8, !tbaa !127, !noalias !1304
  %.pre6.i = load ptr, ptr %i.z, align 8, !tbaa !57, !noalias !1304 ; 2 uses
  %i.fp = icmp eq ptr %.pre6.i, %i.aa
  br i1 %i.fp, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i
  %i.fq = load i64, ptr %i.aa, align 8, !tbaa !60, !noalias !1304
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %.pre6.i, i64 noundef %i.fr) #29, !noalias !1304
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !1304
  %.pre7.i = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1304
  br label %bb.p

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fs = load ptr, ptr %i.z, align 8, !tbaa !57, !noalias !1304 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.aa
  br i1 %i.ft, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i: ; preds = %bb.o
  %i.fu = load i64, ptr %i.aa, align 8, !tbaa !60, !noalias !1304
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #29, !noalias !1304
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i253, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i192, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i ], [ %lpad.phi591.a, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i192 ], [ %lpad.phi601, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i253 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278 ], [ %eh.lpad-body219, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit240 ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !1304
  br label %common.resume

bb.p:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30
  %i.fw = phi ptr [ %.pre7.i, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i ], [ %i.dd, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30 ] ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !112, !noalias !1304
  store i32 %i.fx, ptr %20, align 8, !tbaa !112, !alias.scope !1304
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !59, !alias.scope !1304
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !57 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !58 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #27, !noalias !1304
  store i64 %i.gb, ptr %i.o, align 8, !tbaa !63, !noalias !1304
  %i.gc = icmp ugt i64 %i.gb, 15
  br i1 %i.gc, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.gd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0) ; 2 uses
  store ptr %i.gd, ptr %i.ab, align 8, !tbaa !57, !alias.scope !1304
  %i.ge = load i64, ptr %i.o, align 8, !tbaa !63, !noalias !1304
  store i64 %i.ge, ptr %i.ac, align 8, !tbaa !60, !alias.scope !1304
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.p
  %i.gf = phi ptr [ %i.gd, %.noexc.i.i.i ], [ %i.ac, %bb.p ] ; 2 uses
  switch i64 %i.gb, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZN5boost20read_graphviz_detail6parser4peekEv.exit
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.gg = load i8, ptr %i.fz, align 1, !tbaa !60
  store i8 %i.gg, ptr %i.gf, align 1, !tbaa !60
  br label %_ZN5boost20read_graphviz_detail6parser4peekEv.exit

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr align 1 %i.fz, i64 %i.gb, i1 false)
  br label %_ZN5boost20read_graphviz_detail6parser4peekEv.exit

_ZN5boost20read_graphviz_detail6parser4peekEv.exit: ; preds = %._crit_edge.i.i.i.i, %bb.q, %bb.r
  %i.gh = load i64, ptr %i.o, align 8, !tbaa !63, !noalias !1304 ; 2 uses
  store i64 %i.gh, ptr %i.ad, align 8, !tbaa !58, !alias.scope !1304
  %i.gi = load ptr, ptr %i.ab, align 8, !tbaa !57, !alias.scope !1304
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gh
  store i8 0, ptr %i.gj, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27, !noalias !1304
  %i.gk = load i32, ptr %20, align 8, !tbaa !112
  %i.gl = load ptr, ptr %i.ab, align 8, !tbaa !57 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ac
  br i1 %i.gm, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %_ZN5boost20read_graphviz_detail6parser4peekEv.exit
  %i.gn = load i64, ptr %i.ac, align 8, !tbaa !60
end_hunk_2
begin_hunk_3_@_ZN5boost20read_graphviz_detail6parser15parse_attr_listERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.hv, label %bb.y, label %.thread.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.hv, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !58 ; 3 uses
  %i.hy = icmp ult i64 %i.hx, 16
  call void @llvm.assume(i1 %i.hy)
  switch i64 %i.hx, label %bb.aa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.hz = load i8, ptr %i.ht, align 1, !tbaa !60
  store i8 %i.hz, ptr %i.hq, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr align 1 %i.ht, i64 %i.hx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.ia = load i64, ptr %i.hw, align 8, !tbaa !58 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i, i64 16
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !58
  %i.ic = load ptr, ptr %i.ho, align 8, !tbaa !57
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia
  store i8 0, ptr %i.id, align 1, !tbaa !60
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.hp, align 8, !tbaa !57
  br label %_ZN5boost20read_graphviz_detail5tokenaSEOS1_.exit.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i, i64 16
  store ptr %i.ht, ptr %i.ho, align 8, !tbaa !57
  %i.if = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !58
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !58
  %i.ih = load i64, ptr %i.hu, align 8, !tbaa !60
  store i64 %i.ih, ptr %i.hr, align 8, !tbaa !60
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.ii = load i64, ptr %i.hr, align 8, !tbaa !60
  store ptr %i.ht, ptr %i.ho, align 8, !tbaa !57
  %i.ij = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !58
  %i.il = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i, i64 16
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !58
  %i.im = load i64, ptr %i.hu, align 8, !tbaa !60
  store i64 %i.im, ptr %i.hr, align 8, !tbaa !60
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i
  store ptr %i.hq, ptr %i.hp, align 8, !tbaa !57
  store i64 %i.ii, ptr %i.hu, align 8, !tbaa !60
  br label %_ZN5boost20read_graphviz_detail5tokenaSEOS1_.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i
  store ptr %i.hu, ptr %i.hp, align 8, !tbaa !57
  br label %_ZN5boost20read_graphviz_detail5tokenaSEOS1_.exit.i.i.i.i.i.i

_ZN5boost20read_graphviz_detail5tokenaSEOS1_.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
  %i.in = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i ], [ %i.hq, %bb.ab ], [ %i.hu, %bb.ac ]
  %i.io = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  store i64 0, ptr %i.io, align 8, !tbaa !58
  store i8 0, ptr %i.in, align 1, !tbaa !60
  %i.ip = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.iq = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i, i64 40
  %i.ir = add nsw i64 %.014.i.i.i.i.i.i, -1
  %i.is = icmp sgt i64 %.014.i.i.i.i.i.i, 1
  br i1 %i.is, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i, !llvm.loop !28

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i: ; preds = %_ZN5boost20read_graphviz_detail5tokenaSEOS1_.exit.i.i.i.i.i.i
  %.pre.i295 = load ptr, ptr %i.x, align 8, !tbaa !126
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i, %bb.x, %_ZN5boost20read_graphviz_detail5tokenC2ERKS1_.exit.i
  %i.it = phi ptr [ %.pre.i295, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i ], [ %i.hh, %bb.x ], [ %i.hh, %_ZN5boost20read_graphviz_detail5tokenC2ERKS1_.exit.i ] ; 3 uses
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -40
  store ptr %i.iu, ptr %i.x, align 8, !tbaa !126
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 -32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !57 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.it, i64 -16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZN5boost20read_graphviz_detail6parser3getEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i292: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !60
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #29
  br label %_ZN5boost20read_graphviz_detail6parser3getEv.exit

_ZN5boost20read_graphviz_detail6parser3getEv.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i292, %bb.t
  store ptr %i.ah, ptr %21, align 8, !tbaa !59
  %i.jb = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.af
  br i1 %i.jc, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.ad:                                            ; preds = %_ZN5boost20read_graphviz_detail6parser3getEv.exit
  %i.jd = load i64, ptr %i.ag, align 8, !tbaa !58 ; 3 uses
  %i.je = icmp ult i64 %i.jd, 16
  call void @llvm.assume(i1 %i.je)
  %i.jf = add nuw nsw i64 %i.jd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.jf, i1 false)
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN5boost20read_graphviz_detail6parser3getEv.exit
  store ptr %i.jb, ptr %21, align 8, !tbaa !57
  %i.jg = load i64, ptr %i.af, align 8, !tbaa !60
  store i64 %i.jg, ptr %i.ah, align 8, !tbaa !60
  %.pre724 = load i64, ptr %i.ag, align 8, !tbaa !58
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit44

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit44: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.jh = phi i64 [ %i.jd, %bb.ad ], [ %.pre724, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  store i64 %i.jh, ptr %i.ai, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  store ptr %i.aj, ptr %23, align 8, !tbaa !59
  store i32 1702195828, ptr %i.aj, align 8
  store i64 4, ptr %i.ak, align 8, !tbaa !58
  store i8 0, ptr %i.cf, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.ji = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1311 ; 2 uses
  %i.jj = load ptr, ptr %i.x, align 8, !tbaa !405, !noalias !1311
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27, !noalias !1311
  invoke void @_ZN5boost20read_graphviz_detail9tokenizer9get_tokenEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %15, ptr noundef nonnull align 8 dereferenceable(328) %0)
          to label %.noexc67 unwind label %bb.by

.noexc67:                                         ; preds = %bb.ae
  %i.jl = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1311 ; 8 uses
  %i.jm = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1311
  %.not.i.i.i52 = icmp eq ptr %i.jl, %i.jm
  br i1 %.not.i.i.i52, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.noexc67
  %i.jn = load i32, ptr %15, align 8, !tbaa !112, !noalias !1311
  store i32 %i.jn, ptr %i.jl, align 8, !tbaa !112, !noalias !1311
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 24 ; 3 uses
  store ptr %i.jp, ptr %i.jo, align 8, !tbaa !59, !noalias !1311
  %i.jq = load ptr, ptr %i.al, align 8, !tbaa !57, !noalias !1311 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.am
  br i1 %i.jr, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i53

bb.ag:                                            ; preds = %bb.af
  %i.js = load i64, ptr %.phi.trans.insert.i54, align 8, !tbaa !58, !noalias !1311 ; 3 uses
  %i.jt = icmp ult i64 %i.js, 16
  call void @llvm.assume(i1 %i.jt)
  %i.ju = add nuw nsw i64 %i.js, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jp, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ju, i1 false), !noalias !1311
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i53: ; preds = %bb.af
  store ptr %i.jq, ptr %i.jo, align 8, !tbaa !57, !noalias !1311
  %i.jv = load i64, ptr %i.am, align 8, !tbaa !60, !noalias !1311
  store i64 %i.jv, ptr %i.jp, align 8, !tbaa !60, !noalias !1311
  %.pre.i55 = load i64, ptr %.phi.trans.insert.i54, align 8, !tbaa !58, !noalias !1311
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i56

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i53, %bb.ag
  %i.jw = phi i64 [ %.pre.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i53 ], [ %i.js, %bb.ag ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !58, !noalias !1311
  %i.jy = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1311
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  store ptr %i.jz, ptr %i.x, align 8, !tbaa !126, !noalias !1311
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i58

bb.ah:                                            ; preds = %.noexc67
  %i.ka = load ptr, ptr %i.w, align 8, !tbaa !125, !noalias !1311 ; 5 uses
  %i.kb = ptrtoint ptr %i.jl to i64
  %i.kc = ptrtoint ptr %i.ka to i64               ; 2 uses
  %i.kd = sub i64 %i.kb, %i.kc                    ; 3 uses
  %i.ke = icmp eq i64 %i.kd, 9223372036854775800
  br i1 %i.ke, label %bb.ai, label %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i296

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
          to label %.noexc326.a unwind label %.loopexit.split-lp583.a

.noexc326.a:                                      ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i296: ; preds = %bb.ah
  %i.kf = sdiv exact i64 %i.kd, 40                ; 3 uses
  %.sroa.speculated.i.i297 = call i64 @llvm.umax.i64(i64 %i.kf, i64 1)
  %i.kg = add nsw i64 %.sroa.speculated.i.i297, %i.kf ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.kf
  %i.ki = call i64 @llvm.umin.i64(i64 %i.kg, i64 230584300921369395)
  %i.kj = select i1 %i.kh, i64 230584300921369395, i64 %i.ki ; 2 uses
  %i.kk = mul nuw nsw i64 %i.kj, 40
  %i.kl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #32
          to label %.noexc327 unwind label %.loopexit582.a ; 5 uses

.noexc327:                                        ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i296
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kd ; 4 uses
  %i.kn = load i32, ptr %15, align 8, !tbaa !112, !noalias !1311
  store i32 %i.kn, ptr %i.km, align 8, !tbaa !112, !noalias !1311
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 24 ; 3 uses
  store ptr %i.kp, ptr %i.ko, align 8, !tbaa !59, !noalias !1311
  %i.kq = load ptr, ptr %i.al, align 8, !tbaa !57, !noalias !1311 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.am
  br i1 %i.kr, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299

bb.aj:                                            ; preds = %.noexc327
  %i.ks = load i64, ptr %.phi.trans.insert.i54, align 8, !tbaa !58, !noalias !1311 ; 3 uses
  %i.kt = icmp ult i64 %i.ks, 16
  call void @llvm.assume(i1 %i.kt), !noalias !1311
  %i.ku = add nuw nsw i64 %i.ks, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kp, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ku, i1 false), !noalias !1311
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299: ; preds = %.noexc327
  store ptr %i.kq, ptr %i.ko, align 8, !tbaa !57, !noalias !1311
  %i.kv = load i64, ptr %i.am, align 8, !tbaa !60, !noalias !1311
  store i64 %i.kv, ptr %i.kp, align 8, !tbaa !60, !noalias !1311
  %.pre.i301 = load i64, ptr %.phi.trans.insert.i54, align 8, !tbaa !58, !noalias !1311
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i302

_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i302: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299, %bb.aj
  %i.kw = phi i64 [ %i.ks, %bb.aj ], [ %.pre.i301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299 ]
  %i.kx = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !58, !noalias !1311
  store ptr %i.am, ptr %i.al, align 8, !tbaa !57, !noalias !1311
  store i64 0, ptr %.phi.trans.insert.i54, align 8, !tbaa !58, !noalias !1311
  store i8 0, ptr %i.am, align 8, !tbaa !60, !noalias !1311
  %.not10.i.i.i.i303 = icmp eq ptr %i.ka, %i.jl
  br i1 %.not10.i.i.i.i303, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i323, label %.lr.ph.i.i.i.i304

.lr.ph.i.i.i.i304:                                ; preds = %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i302, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i310
  %.012.i.i.i.i305 = phi ptr [ %i.lo, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i310 ], [ %i.kl, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i302 ] ; 5 uses
  %.0911.i.i.i.i306 = phi ptr [ %i.ln, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i310 ], [ %i.ka, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i302 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1312), !noalias !1311
  call void @llvm.experimental.noalias.scope.decl(metadata !1313), !noalias !1311
  %i.ky = load i32, ptr %.0911.i.i.i.i306, align 8, !tbaa !112, !alias.scope !1313, !noalias !1314
  store i32 %i.ky, ptr %.012.i.i.i.i305, align 8, !tbaa !112, !alias.scope !1312, !noalias !1315
  %i.kz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i305, i64 8 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i306, i64 8 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i305, i64 24 ; 3 uses
  store ptr %i.lb, ptr %i.kz, align 8, !tbaa !59, !alias.scope !1312, !noalias !1315
  %i.lc = load ptr, ptr %i.la, align 8, !tbaa !57, !alias.scope !1313, !noalias !1314 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i306, i64 24 ; 5 uses
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i307

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i304
  %i.lf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i306, i64 16
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !58, !alias.scope !1313, !noalias !1314 ; 3 uses
  %i.lh = icmp ult i64 %i.lg, 16
  call void @llvm.assume(i1 %i.lh), !noalias !1311
  %i.li = add nuw nsw i64 %i.lg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lb, ptr noundef nonnull align 8 dereferenceable(1) %i.ld, i64 %i.li, i1 false), !alias.scope !1316, !noalias !1311
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i307: ; preds = %.lr.ph.i.i.i.i304
  store ptr %i.lc, ptr %i.kz, align 8, !tbaa !57, !alias.scope !1312, !noalias !1315
  %i.lj = load i64, ptr %i.ld, align 8, !tbaa !60, !alias.scope !1313, !noalias !1314
  store i64 %i.lj, ptr %i.lb, align 8, !tbaa !60, !alias.scope !1312, !noalias !1315
  %.phi.trans.insert.i.i.i.i.i308 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i306, i64 16
  %.pre.i.i.i.i.i309 = load i64, ptr %.phi.trans.insert.i.i.i.i.i308, align 8, !tbaa !58, !alias.scope !1313, !noalias !1314
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i310

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i310: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i307, %bb.ak
  %i.lk = phi i64 [ %i.lg, %bb.ak ], [ %.pre.i.i.i.i.i309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i307 ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i306, i64 16
  %i.lm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i305, i64 16
  store i64 %i.lk, ptr %i.lm, align 8, !tbaa !58, !alias.scope !1312, !noalias !1315
  store ptr %i.ld, ptr %i.la, align 8, !tbaa !57, !alias.scope !1313, !noalias !1314
  store i64 0, ptr %i.ll, align 8, !tbaa !58, !alias.scope !1313, !noalias !1314
  store i8 0, ptr %i.ld, align 8, !tbaa !60, !alias.scope !1313, !noalias !1314
  %i.ln = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i306, i64 40 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i305, i64 40 ; 2 uses
  %.not.i.i.i.i311 = icmp eq ptr %i.ln, %i.jl
  br i1 %.not.i.i.i.i311, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i323, label %.lr.ph.i.i.i.i304, !llvm.loop !25

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i323: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i310, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i302
  %.0.lcssa.i.i.i.i313 = phi ptr [ %i.kl, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i302 ], [ %i.lo, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i310 ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i313, i64 40
  %.not.i27.i325 = icmp eq ptr %i.ka, null
  br i1 %.not.i27.i325, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i63, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i323
  %i.lq = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1311
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = sub i64 %i.lr, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.ls) #29, !noalias !1311
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i63

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i63: ; preds = %bb.al, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i323
  store ptr %i.kl, ptr %i.w, align 8, !tbaa !125, !noalias !1311
  store ptr %i.lp, ptr %i.x, align 8, !tbaa !126, !noalias !1311
  %i.lt = getelementptr inbounds nuw [40 x i8], ptr %i.kl, i64 %i.kj
  store ptr %i.lt, ptr %i.y, align 8, !tbaa !127, !noalias !1311
  %.pre6.i65 = load ptr, ptr %i.al, align 8, !tbaa !57, !noalias !1311 ; 2 uses
  %i.lu = icmp eq ptr %.pre6.i65, %i.am
  br i1 %i.lu, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i63
  %i.lv = load i64, ptr %i.am, align 8, !tbaa !60, !noalias !1311
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %.pre6.i65, i64 noundef %i.lw) #29, !noalias !1311
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i58

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i58: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i56, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27, !noalias !1311
  %.pre7.i59 = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1311
  br label %bb.an

.loopexit582.a:                                   ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i296
  %lpad.loopexit584.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp583.a:                          ; preds = %bb.ai
  %lpad.loopexit.split-lp585.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp583.a, %.loopexit582.a
  %lpad.phi586.a = phi { ptr, i32 } [ %lpad.loopexit584.a, %.loopexit582.a ], [ %lpad.loopexit.split-lp585.a, %.loopexit.split-lp583.a ]
  %i.lx = load ptr, ptr %i.al, align 8, !tbaa !57, !noalias !1311 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.am
  br i1 %i.ly, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i60: ; preds = %bb.am
  %i.lz = load i64, ptr %i.am, align 8, !tbaa !60, !noalias !1311
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #29, !noalias !1311
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i61

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i61: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27, !noalias !1311
  br label %.body

bb.an:                                            ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i58, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit44
  %i.mb = phi ptr [ %.pre7.i59, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i58 ], [ %i.ji, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit44 ] ; 3 uses
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !112, !noalias !1311
  store i32 %i.mc, ptr %24, align 8, !tbaa !112, !alias.scope !1311
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !59, !alias.scope !1311
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !57 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !58 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27, !noalias !1311
  store i64 %i.mg, ptr %i.m, align 8, !tbaa !63, !noalias !1311
  %i.mh = icmp ugt i64 %i.mg, 15
  br i1 %i.mh, label %.noexc.i.i.i51, label %._crit_edge.i.i.i.i49

.noexc.i.i.i51:                                   ; preds = %bb.an
  %i.mi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc68 unwind label %bb.by  ; 2 uses

.noexc68:                                         ; preds = %.noexc.i.i.i51
  store ptr %i.mi, ptr %i.an, align 8, !tbaa !57, !alias.scope !1311
  %i.mj = load i64, ptr %i.m, align 8, !tbaa !63, !noalias !1311
  store i64 %i.mj, ptr %i.ao, align 8, !tbaa !60, !alias.scope !1311
  br label %._crit_edge.i.i.i.i49

._crit_edge.i.i.i.i49:                            ; preds = %.noexc68, %bb.an
  %i.mk = phi ptr [ %i.mi, %.noexc68 ], [ %i.ao, %bb.an ] ; 2 uses
  switch i64 %i.mg, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i49
  %i.ml = load i8, ptr %i.me, align 1, !tbaa !60
  store i8 %i.ml, ptr %i.mk, align 1, !tbaa !60
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mk, ptr align 1 %i.me, i64 %i.mg, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i.i.i49
  %i.mm = load i64, ptr %i.m, align 8, !tbaa !63, !noalias !1311 ; 2 uses
  store i64 %i.mm, ptr %i.ap, align 8, !tbaa !58, !alias.scope !1311
  %i.mn = load ptr, ptr %i.an, align 8, !tbaa !57, !alias.scope !1311
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mm
  store i8 0, ptr %i.mo, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27, !noalias !1311
  %i.mp = load i32, ptr %24, align 8, !tbaa !112
  %i.mq = icmp eq i32 %i.mp, 9
  %i.mr = load ptr, ptr %i.an, align 8, !tbaa !57 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.ao
  br i1 %i.ms, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %bb.aq
  %i.mt = load i64, ptr %i.ao, align 8, !tbaa !60
end_hunk_3
begin_hunk_4_@_ZN5boost20read_graphviz_detail6parser15parse_attr_listERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEE:bb.a
  %i.yu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body81

bb.da:                                            ; preds = %bb.cw
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ya, i64 64
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !57 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ya, i64 80 ; 2 uses
  %i.yy = icmp eq ptr %i.yw, %i.yx
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i397: ; preds = %bb.da
  %i.yz = load i64, ptr %i.yx, align 8, !tbaa !60
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.za) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i397
  %i.zb = load ptr, ptr %i.yb, align 8, !tbaa !57 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ya, i64 48 ; 2 uses
  %i.zd = icmp eq ptr %i.zb, %i.zc
  br i1 %i.zd, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ze = load i64, ptr %i.zc, align 8, !tbaa !60
  %i.zf = add i64 %i.ze, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.zf) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ya, i64 noundef 96) #29
  br label %.noexc145

.noexc145:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i, %.thread.i396
  %.sroa.0.010.i = phi ptr [ %i.ya, %.thread.i396 ], [ %i.yd, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.db

bb.db:                                            ; preds = %.noexc145, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.sroa.07.0.i = phi ptr [ %.sroa.0.010.i, %.noexc145 ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.zg, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.db
  %i.zh = load ptr, ptr %23, align 8, !tbaa !57   ; 2 uses
  %i.zi = icmp eq ptr %i.zh, %i.aj
  br i1 %i.zi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.zj = load i64, ptr %i.aj, align 8, !tbaa !60
  %i.zk = add i64 %i.zj, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.zl = load ptr, ptr %21, align 8, !tbaa !57   ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.ah
  br i1 %i.zm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.zn = load i64, ptr %i.ah, align 8, !tbaa !60
  %i.zo = add i64 %i.zn, 1
  call void @_ZdlPvm(ptr noundef %i.zl, i64 noundef %i.zo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.dv

.body81:                                          ; preds = %bb.cz, %bb.bz, %.body137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %.body106, %.body
  %.pn18 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.xf, %.body137 ], [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %eh.lpad-body107, %.body106 ], [ %i.yu, %bb.cz ], [ %i.tt, %bb.bz ]
  %i.zp = load ptr, ptr %23, align 8, !tbaa !57   ; 2 uses
  %i.zq = icmp eq ptr %i.zp, %i.aj
  br i1 %i.zq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %.body81
  %i.zr = load i64, ptr %i.aj, align 8, !tbaa !60
  %i.zs = add i64 %i.zr, 1
  call void @_ZdlPvm(ptr noundef %i.zp, i64 noundef %i.zs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %.body81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.zt = load ptr, ptr %21, align 8, !tbaa !57   ; 2 uses
  %i.zu = icmp eq ptr %i.zt, %i.ah
  br i1 %i.zu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.zv = load i64, ptr %i.ah, align 8, !tbaa !60
  %i.zw = add i64 %i.zv, 1
  call void @_ZdlPvm(ptr noundef %i.zt, i64 noundef %i.zw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %common.resume

.noexc.i160:                                      ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  %i.zx = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  store ptr %i.zx, ptr %29, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  store i64 38, ptr %i.h, align 8, !tbaa !63
  %i.zy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc161 unwind label %bb.dt ; 3 uses

.noexc161:                                        ; preds = %.noexc.i160
  store ptr %i.zy, ptr %29, align 8, !tbaa !57
  %i.zz = load i64, ptr %i.h, align 8, !tbaa !63  ; 3 uses
  store i64 %i.zz, ptr %i.zx, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.zy, ptr noundef nonnull align 1 dereferenceable(38) @.str.326, i64 38, i1 false)
  %i.aaa = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.zz, ptr %i.aaa, align 8, !tbaa !58
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.zz
  store i8 0, ptr %i.aab, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.aac = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1321 ; 2 uses
  %i.aad = load ptr, ptr %i.x, align 8, !tbaa !405, !noalias !1321
  %i.aae = icmp eq ptr %i.aac, %i.aad
  br i1 %i.aae, label %bb.dc, label %bb.dl

bb.dc:                                            ; preds = %.noexc161
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !1321
  invoke void @_ZN5boost20read_graphviz_detail9tokenizer9get_tokenEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %2, ptr noundef nonnull align 8 dereferenceable(328) %0)
          to label %.noexc420 unwind label %bb.du

.noexc420:                                        ; preds = %bb.dc
  %i.aaf = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1321 ; 8 uses
  %i.aag = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1321
  %.not.i.i.i405 = icmp eq ptr %i.aaf, %i.aag
  br i1 %.not.i.i.i405, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %.noexc420
  %i.aah = load i32, ptr %2, align 8, !tbaa !112, !noalias !1321
  store i32 %i.aah, ptr %i.aaf, align 8, !tbaa !112, !noalias !1321
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24 ; 3 uses
  store ptr %i.aak, ptr %i.aai, align 8, !tbaa !59, !noalias !1321
  %i.aal = load ptr, ptr %i.aaj, align 8, !tbaa !57, !noalias !1321 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.aan = icmp eq ptr %i.aal, %i.aam
  br i1 %i.aan, label %bb.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406

bb.de:                                            ; preds = %bb.dd
  %i.aao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aap = load i64, ptr %i.aao, align 8, !tbaa !58, !noalias !1321 ; 3 uses
  %i.aaq = icmp ult i64 %i.aap, 16
  call void @llvm.assume(i1 %i.aaq)
  %i.aar = add nuw nsw i64 %i.aap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aak, ptr noundef nonnull align 8 dereferenceable(1) %i.aam, i64 %i.aar, i1 false), !noalias !1321
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406: ; preds = %bb.dd
  store ptr %i.aal, ptr %i.aai, align 8, !tbaa !57, !noalias !1321
  %i.aas = load i64, ptr %i.aam, align 8, !tbaa !60, !noalias !1321
  store i64 %i.aas, ptr %i.aak, align 8, !tbaa !60, !noalias !1321
  %.phi.trans.insert.i407 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i408 = load i64, ptr %.phi.trans.insert.i407, align 8, !tbaa !58, !noalias !1321
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i409

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i409: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406, %bb.de
  %i.aat = phi i64 [ %.pre.i408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406 ], [ %i.aap, %bb.de ]
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  store i64 %i.aat, ptr %i.aau, align 8, !tbaa !58, !noalias !1321
  %i.aav = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1321
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 40
  store ptr %i.aaw, ptr %i.x, align 8, !tbaa !126, !noalias !1321
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i411

bb.df:                                            ; preds = %.noexc420
  %i.aax = load ptr, ptr %i.w, align 8, !tbaa !125, !noalias !1321 ; 5 uses
  %i.aay = ptrtoint ptr %i.aaf to i64
  %i.aaz = ptrtoint ptr %i.aax to i64             ; 2 uses
  %i.aba = sub i64 %i.aay, %i.aaz                 ; 3 uses
  %i.abb = icmp eq i64 %i.aba, 9223372036854775800
  br i1 %i.abb, label %bb.dg, label %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i545

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
          to label %.noexc575 unwind label %bb.dk

.noexc575:                                        ; preds = %bb.dg
  unreachable

_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i545: ; preds = %bb.df
  %i.abc = sdiv exact i64 %i.aba, 40              ; 3 uses
  %.sroa.speculated.i.i546 = call i64 @llvm.umax.i64(i64 %i.abc, i64 1)
  %i.abd = add nsw i64 %.sroa.speculated.i.i546, %i.abc ; 2 uses
  %i.abe = icmp ult i64 %i.abd, %i.abc
  %i.abf = call i64 @llvm.umin.i64(i64 %i.abd, i64 230584300921369395)
  %i.abg = select i1 %i.abe, i64 230584300921369395, i64 %i.abf ; 2 uses
  %i.abh = mul nuw nsw i64 %i.abg, 40
  %i.abi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abh) #32
          to label %.noexc576 unwind label %bb.dk ; 5 uses

.noexc576:                                        ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i545
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.aba ; 4 uses
  %i.abk = load i32, ptr %2, align 8, !tbaa !112, !noalias !1321
  store i32 %i.abk, ptr %i.abj, align 8, !tbaa !112, !noalias !1321
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abj, i64 8 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 24 ; 3 uses
  store ptr %i.abn, ptr %i.abl, align 8, !tbaa !59, !noalias !1321
  %i.abo = load ptr, ptr %i.abm, align 8, !tbaa !57, !noalias !1321 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.abq = icmp eq ptr %i.abo, %i.abp
  br i1 %i.abq, label %bb.dh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i548

bb.dh:                                            ; preds = %.noexc576
  %i.abr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !58, !noalias !1321 ; 3 uses
  %i.abt = icmp ult i64 %i.abs, 16
  call void @llvm.assume(i1 %i.abt), !noalias !1321
  %i.abu = add nuw nsw i64 %i.abs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.abn, ptr noundef nonnull align 8 dereferenceable(1) %i.abp, i64 %i.abu, i1 false), !noalias !1321
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i548: ; preds = %.noexc576
  store ptr %i.abo, ptr %i.abl, align 8, !tbaa !57, !noalias !1321
  %i.abv = load i64, ptr %i.abp, align 8, !tbaa !60, !noalias !1321
  store i64 %i.abv, ptr %i.abn, align 8, !tbaa !60, !noalias !1321
  %.phi.trans.insert.i549 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i550 = load i64, ptr %.phi.trans.insert.i549, align 8, !tbaa !58, !noalias !1321
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i551

_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i551: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i548, %bb.dh
  %i.abw = phi i64 [ %i.abs, %bb.dh ], [ %.pre.i550, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i548 ]
  %i.abx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  store i64 %i.abw, ptr %i.aby, align 8, !tbaa !58, !noalias !1321
  store ptr %i.abp, ptr %i.abm, align 8, !tbaa !57, !noalias !1321
  store i64 0, ptr %i.abx, align 8, !tbaa !58, !noalias !1321
  store i8 0, ptr %i.abp, align 8, !tbaa !60, !noalias !1321
  %.not10.i.i.i.i552 = icmp eq ptr %i.aax, %i.aaf
  br i1 %.not10.i.i.i.i552, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i572, label %.lr.ph.i.i.i.i553

.lr.ph.i.i.i.i553:                                ; preds = %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i551, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i559
  %.012.i.i.i.i554 = phi ptr [ %i.acp, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i559 ], [ %i.abi, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i551 ] ; 5 uses
  %.0911.i.i.i.i555 = phi ptr [ %i.aco, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i559 ], [ %i.aax, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i551 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1322), !noalias !1321
  call void @llvm.experimental.noalias.scope.decl(metadata !1323), !noalias !1321
  %i.abz = load i32, ptr %.0911.i.i.i.i555, align 8, !tbaa !112, !alias.scope !1323, !noalias !1324
  store i32 %i.abz, ptr %.012.i.i.i.i554, align 8, !tbaa !112, !alias.scope !1322, !noalias !1325
  %i.aca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i554, i64 8 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i555, i64 8 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i554, i64 24 ; 3 uses
  store ptr %i.acc, ptr %i.aca, align 8, !tbaa !59, !alias.scope !1322, !noalias !1325
  %i.acd = load ptr, ptr %i.acb, align 8, !tbaa !57, !alias.scope !1323, !noalias !1324 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i555, i64 24 ; 5 uses
  %i.acf = icmp eq ptr %i.acd, %i.ace
  br i1 %i.acf, label %bb.di, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i556

bb.di:                                            ; preds = %.lr.ph.i.i.i.i553
  %i.acg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i555, i64 16
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !58, !alias.scope !1323, !noalias !1324 ; 3 uses
  %i.aci = icmp ult i64 %i.ach, 16
  call void @llvm.assume(i1 %i.aci), !noalias !1321
  %i.acj = add nuw nsw i64 %i.ach, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acc, ptr noundef nonnull align 8 dereferenceable(1) %i.ace, i64 %i.acj, i1 false), !alias.scope !1326, !noalias !1321
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i559

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i556: ; preds = %.lr.ph.i.i.i.i553
  store ptr %i.acd, ptr %i.aca, align 8, !tbaa !57, !alias.scope !1322, !noalias !1325
  %i.ack = load i64, ptr %i.ace, align 8, !tbaa !60, !alias.scope !1323, !noalias !1324
  store i64 %i.ack, ptr %i.acc, align 8, !tbaa !60, !alias.scope !1322, !noalias !1325
  %.phi.trans.insert.i.i.i.i.i557 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i555, i64 16
  %.pre.i.i.i.i.i558 = load i64, ptr %.phi.trans.insert.i.i.i.i.i557, align 8, !tbaa !58, !alias.scope !1323, !noalias !1324
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i559

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i559: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i556, %bb.di
  %i.acl = phi i64 [ %i.ach, %bb.di ], [ %.pre.i.i.i.i.i558, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i556 ]
  %i.acm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i555, i64 16
  %i.acn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i554, i64 16
  store i64 %i.acl, ptr %i.acn, align 8, !tbaa !58, !alias.scope !1322, !noalias !1325
  store ptr %i.ace, ptr %i.acb, align 8, !tbaa !57, !alias.scope !1323, !noalias !1324
  store i64 0, ptr %i.acm, align 8, !tbaa !58, !alias.scope !1323, !noalias !1324
  store i8 0, ptr %i.ace, align 8, !tbaa !60, !alias.scope !1323, !noalias !1324
  %i.aco = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i555, i64 40 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i554, i64 40 ; 2 uses
  %.not.i.i.i.i560 = icmp eq ptr %i.aco, %i.aaf
  br i1 %.not.i.i.i.i560, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i572, label %.lr.ph.i.i.i.i553, !llvm.loop !25

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i572: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i559, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i551
  %.0.lcssa.i.i.i.i562 = phi ptr [ %i.abi, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i551 ], [ %i.acp, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i559 ]
  %i.acq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i562, i64 40
  %.not.i27.i574 = icmp eq ptr %i.aax, null
  br i1 %.not.i27.i574, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i416, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i572
  %i.acr = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1321
  %i.acs = ptrtoint ptr %i.acr to i64
  %i.act = sub i64 %i.acs, %i.aaz
  call void @_ZdlPvm(ptr noundef nonnull %i.aax, i64 noundef %i.act) #29, !noalias !1321
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i416

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i416: ; preds = %bb.dj, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i572
  store ptr %i.abi, ptr %i.w, align 8, !tbaa !125, !noalias !1321
  store ptr %i.acq, ptr %i.x, align 8, !tbaa !126, !noalias !1321
  %i.acu = getelementptr inbounds nuw [40 x i8], ptr %i.abi, i64 %i.abg
  store ptr %i.acu, ptr %i.y, align 8, !tbaa !127, !noalias !1321
  %.pre6.i418 = load ptr, ptr %i.abm, align 8, !tbaa !57, !noalias !1321 ; 2 uses
  %i.acv = icmp eq ptr %.pre6.i418, %i.abp
  br i1 %i.acv, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i419: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i416
  %i.acw = load i64, ptr %i.abp, align 8, !tbaa !60, !noalias !1321
  %i.acx = add i64 %i.acw, 1
  call void @_ZdlPvm(ptr noundef %.pre6.i418, i64 noundef %i.acx) #29, !noalias !1321
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i411

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i411: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i409, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i416, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1321
  %.pre7.i412 = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1321
  br label %bb.dl

bb.dk:                                            ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i545, %bb.dg
  %i.acy = landingpad { ptr, i32 }
          cleanup
  %i.acz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !57, !noalias !1321 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.adc = icmp eq ptr %i.ada, %i.adb
  br i1 %i.adc, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i413: ; preds = %bb.dk
  %i.add = load i64, ptr %i.adb, align 8, !tbaa !60, !noalias !1321
  %i.ade = add i64 %i.add, 1
  call void @_ZdlPvm(ptr noundef %i.ada, i64 noundef %i.ade) #29, !noalias !1321
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i414

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i414: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1321
  br label %.body171

bb.dl:                                            ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i411, %.noexc161
  %i.adf = phi ptr [ %.pre7.i412, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i411 ], [ %i.aac, %.noexc161 ] ; 3 uses
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !112, !noalias !1321
  store i32 %i.adg, ptr %9, align 8, !tbaa !112, !alias.scope !1321
  %i.adh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  store ptr %i.adj, ptr %i.adh, align 8, !tbaa !59, !alias.scope !1321
  %i.adk = load ptr, ptr %i.adi, align 8, !tbaa !57 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  %i.adm = load i64, ptr %i.adl, align 8, !tbaa !58 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !1321
  store i64 %i.adm, ptr %i.a, align 8, !tbaa !63, !noalias !1321
  %i.adn = icmp ugt i64 %i.adm, 15
  br i1 %i.adn, label %.noexc.i.i.i404, label %._crit_edge.i.i.i.i402

.noexc.i.i.i404:                                  ; preds = %bb.dl
  %i.ado = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.adh, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc423 unwind label %bb.du ; 2 uses

.noexc423:                                        ; preds = %.noexc.i.i.i404
  store ptr %i.ado, ptr %i.adh, align 8, !tbaa !57, !alias.scope !1321
  %i.adp = load i64, ptr %i.a, align 8, !tbaa !63, !noalias !1321
  store i64 %i.adp, ptr %i.adj, align 8, !tbaa !60, !alias.scope !1321
  br label %._crit_edge.i.i.i.i402

._crit_edge.i.i.i.i402:                           ; preds = %.noexc423, %bb.dl
  %i.adq = phi ptr [ %i.ado, %.noexc423 ], [ %i.adj, %bb.dl ] ; 2 uses
  switch i64 %i.adm, label %bb.dn [
    i64 1, label %bb.dm
    i64 0, label %.noexc170
  ]

bb.dm:                                            ; preds = %._crit_edge.i.i.i.i402
  %i.adr = load i8, ptr %i.adk, align 1, !tbaa !60
  store i8 %i.adr, ptr %i.adq, align 1, !tbaa !60
  br label %.noexc170

bb.dn:                                            ; preds = %._crit_edge.i.i.i.i402
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adq, ptr align 1 %i.adk, i64 %i.adm, i1 false)
  br label %.noexc170

.noexc170:                                        ; preds = %bb.dn, %bb.dm, %._crit_edge.i.i.i.i402
  %i.ads = load i64, ptr %i.a, align 8, !tbaa !63, !noalias !1321 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ads, ptr %i.adt, align 8, !tbaa !58, !alias.scope !1321
  %i.adu = load ptr, ptr %i.adh, align 8, !tbaa !57, !alias.scope !1321
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.ads
  store i8 0, ptr %i.adv, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !1321
  invoke void @_ZN5boost20read_graphviz_detail11parse_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5tokenE(ptr dead_on_unwind nonnull writable sret(%"struct.boost::bad_graphviz_syntax") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %bb.do unwind label %bb.dq

bb.do:                                            ; preds = %.noexc170
  invoke void @_ZN5boost15throw_exceptionINS_19bad_graphviz_syntaxEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %8) #28
          to label %bb.dp unwind label %bb.dr

bb.dp:                                            ; preds = %bb.do
  unreachable

bb.dq:                                            ; preds = %.noexc170
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do
  %i.adx = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost19bad_graphviz_syntaxE, i64 16), ptr %8, align 8, !tbaa !62
  %i.ady = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !57 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.aeb = icmp eq ptr %i.adz, %i.aea
  br i1 %i.aeb, label %_ZN5boost19bad_graphviz_syntaxD2Ev.exit.i168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i167: ; preds = %bb.dr
  %i.aec = load i64, ptr %i.aea, align 8, !tbaa !60
  %i.aed = add i64 %i.aec, 1
  call void @_ZdlPvm(ptr noundef %i.adz, i64 noundef %i.aed) #29, !inline_history !137
  br label %_ZN5boost19bad_graphviz_syntaxD2Ev.exit.i168

_ZN5boost19bad_graphviz_syntaxD2Ev.exit.i168:     ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i167
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %8) #27, !inline_history !137
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN5boost19bad_graphviz_syntaxD2Ev.exit.i168, %bb.dq
  %.pn.i163 = phi { ptr, i32 } [ %i.adx, %_ZN5boost19bad_graphviz_syntaxD2Ev.exit.i168 ], [ %i.adw, %bb.dq ]
  %i.aee = load ptr, ptr %i.adh, align 8, !tbaa !57 ; 2 uses
  %i.aef = icmp eq ptr %i.aee, %i.adj
  br i1 %i.aef, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i164: ; preds = %bb.ds
  %i.aeg = load i64, ptr %i.adj, align 8, !tbaa !60
  %i.aeh = add i64 %i.aeg, 1
  call void @_ZdlPvm(ptr noundef %i.aee, i64 noundef %i.aeh) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i165

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i165: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.body171

bb.dt:                                            ; preds = %.noexc.i160
  %i.aei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.du:                                            ; preds = %.noexc.i.i.i404, %bb.dc
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %.body171

.body171:                                         ; preds = %bb.du, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i414, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i165
  %eh.lpad-body172 = phi { ptr, i32 } [ %.pn.i163, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i165 ], [ %i.aej, %bb.du ], [ %i.acy, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i414 ] ; 2 uses
  %i.aek = load ptr, ptr %29, align 8, !tbaa !57  ; 2 uses
  %i.ael = icmp eq ptr %i.aek, %i.zx
  br i1 %i.ael, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %.body171
  %i.aem = load i64, ptr %i.zx, align 8, !tbaa !60
  %i.aen = add i64 %i.aem, 1
  call void @_ZdlPvm(ptr noundef %i.aek, i64 noundef %i.aen) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %.body171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.dt
  %.pn21 = phi { ptr, i32 } [ %i.aei, %bb.dt ], [ %eh.lpad-body172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %eh.lpad-body172, %.body171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %common.resume

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %i.aeo = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1327 ; 2 uses
  %i.aep = load ptr, ptr %i.x, align 8, !tbaa !405, !noalias !1327
  %i.aeq = icmp eq ptr %i.aeo, %i.aep
  br i1 %i.aeq, label %bb.dw, label %bb.ef

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !1327
  call void @_ZN5boost20read_graphviz_detail9tokenizer9get_tokenEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %7, ptr noundef nonnull align 8 dereferenceable(328) %0), !noalias !1327
  %i.aer = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1327 ; 8 uses
  %i.aes = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1327
  %.not.i.i.i183 = icmp eq ptr %i.aer, %i.aes
  br i1 %.not.i.i.i183, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aet = load i32, ptr %7, align 8, !tbaa !112, !noalias !1327
  store i32 %i.aet, ptr %i.aer, align 8, !tbaa !112, !noalias !1327
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 8 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aer, i64 24 ; 3 uses
  store ptr %i.aev, ptr %i.aeu, align 8, !tbaa !59, !noalias !1327
  %i.aew = load ptr, ptr %i.bf, align 8, !tbaa !57, !noalias !1327 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.bg
  br i1 %i.aex, label %bb.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184

bb.dy:                                            ; preds = %bb.dx
  %i.aey = load i64, ptr %.phi.trans.insert.i185, align 8, !tbaa !58, !noalias !1327 ; 3 uses
  %i.aez = icmp ult i64 %i.aey, 16
  call void @llvm.assume(i1 %i.aez)
  %i.afa = add nuw nsw i64 %i.aey, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aev, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.afa, i1 false), !noalias !1327
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184: ; preds = %bb.dx
  store ptr %i.aew, ptr %i.aeu, align 8, !tbaa !57, !noalias !1327
  %i.afb = load i64, ptr %i.bg, align 8, !tbaa !60, !noalias !1327
  store i64 %i.afb, ptr %i.aev, align 8, !tbaa !60, !noalias !1327
  %.pre.i186 = load i64, ptr %.phi.trans.insert.i185, align 8, !tbaa !58, !noalias !1327
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i187

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i187: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184, %bb.dy
  %i.afc = phi i64 [ %.pre.i186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184 ], [ %i.aey, %bb.dy ]
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  store i64 %i.afc, ptr %i.afd, align 8, !tbaa !58, !noalias !1327
  %i.afe = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1327
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 40
  store ptr %i.aff, ptr %i.x, align 8, !tbaa !126, !noalias !1327
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i189

bb.dz:                                            ; preds = %bb.dw
  %i.afg = load ptr, ptr %i.w, align 8, !tbaa !125, !noalias !1327 ; 5 uses
  %i.afh = ptrtoint ptr %i.aer to i64
  %i.afi = ptrtoint ptr %i.afg to i64             ; 2 uses
  %i.afj = sub i64 %i.afh, %i.afi                 ; 3 uses
  %i.afk = icmp eq i64 %i.afj, 9223372036854775800
  br i1 %i.afk, label %bb.ea, label %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i425

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
          to label %.noexc455 unwind label %.loopexit.split-lp588.a

.noexc455:                                        ; preds = %bb.ea
  unreachable

_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i425: ; preds = %bb.dz
  %i.afl = sdiv exact i64 %i.afj, 40              ; 3 uses
  %.sroa.speculated.i.i426 = call i64 @llvm.umax.i64(i64 %i.afl, i64 1)
  %i.afm = add nsw i64 %.sroa.speculated.i.i426, %i.afl ; 2 uses
  %i.afn = icmp ult i64 %i.afm, %i.afl
  %i.afo = call i64 @llvm.umin.i64(i64 %i.afm, i64 230584300921369395)
  %i.afp = select i1 %i.afn, i64 230584300921369395, i64 %i.afo ; 2 uses
  %i.afq = mul nuw nsw i64 %i.afp, 40
  %i.afr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afq) #32
          to label %.noexc456 unwind label %.loopexit587.a ; 5 uses

.noexc456:                                        ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i425
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.afj ; 4 uses
  %i.aft = load i32, ptr %7, align 8, !tbaa !112, !noalias !1327
  store i32 %i.aft, ptr %i.afs, align 8, !tbaa !112, !noalias !1327
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 8 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afs, i64 24 ; 3 uses
  store ptr %i.afv, ptr %i.afu, align 8, !tbaa !59, !noalias !1327
  %i.afw = load ptr, ptr %i.bf, align 8, !tbaa !57, !noalias !1327 ; 2 uses
  %i.afx = icmp eq ptr %i.afw, %i.bg
  br i1 %i.afx, label %bb.eb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i428

bb.eb:                                            ; preds = %.noexc456
  %i.afy = load i64, ptr %.phi.trans.insert.i185, align 8, !tbaa !58, !noalias !1327 ; 3 uses
  %i.afz = icmp ult i64 %i.afy, 16
  call void @llvm.assume(i1 %i.afz), !noalias !1327
  %i.aga = add nuw nsw i64 %i.afy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.afv, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.aga, i1 false), !noalias !1327
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i428: ; preds = %.noexc456
  store ptr %i.afw, ptr %i.afu, align 8, !tbaa !57, !noalias !1327
  %i.agb = load i64, ptr %i.bg, align 8, !tbaa !60, !noalias !1327
  store i64 %i.agb, ptr %i.afv, align 8, !tbaa !60, !noalias !1327
  %.pre.i430 = load i64, ptr %.phi.trans.insert.i185, align 8, !tbaa !58, !noalias !1327
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i431

_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i431: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i428, %bb.eb
  %i.agc = phi i64 [ %i.afy, %bb.eb ], [ %.pre.i430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i428 ]
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afs, i64 16
  store i64 %i.agc, ptr %i.agd, align 8, !tbaa !58, !noalias !1327
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !57, !noalias !1327
  store i64 0, ptr %.phi.trans.insert.i185, align 8, !tbaa !58, !noalias !1327
  store i8 0, ptr %i.bg, align 8, !tbaa !60, !noalias !1327
  %.not10.i.i.i.i432 = icmp eq ptr %i.afg, %i.aer
  br i1 %.not10.i.i.i.i432, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i452, label %.lr.ph.i.i.i.i433

.lr.ph.i.i.i.i433:                                ; preds = %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i431, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i439
  %.012.i.i.i.i434 = phi ptr [ %i.agu, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i439 ], [ %i.afr, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i431 ] ; 5 uses
  %.0911.i.i.i.i435 = phi ptr [ %i.agt, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i439 ], [ %i.afg, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i431 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1328), !noalias !1327
  call void @llvm.experimental.noalias.scope.decl(metadata !1329), !noalias !1327
  %i.age = load i32, ptr %.0911.i.i.i.i435, align 8, !tbaa !112, !alias.scope !1329, !noalias !1330
  store i32 %i.age, ptr %.012.i.i.i.i434, align 8, !tbaa !112, !alias.scope !1328, !noalias !1331
  %i.agf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i434, i64 8 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i435, i64 8 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i434, i64 24 ; 3 uses
  store ptr %i.agh, ptr %i.agf, align 8, !tbaa !59, !alias.scope !1328, !noalias !1331
  %i.agi = load ptr, ptr %i.agg, align 8, !tbaa !57, !alias.scope !1329, !noalias !1330 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i435, i64 24 ; 5 uses
  %i.agk = icmp eq ptr %i.agi, %i.agj
  br i1 %i.agk, label %bb.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i436

bb.ec:                                            ; preds = %.lr.ph.i.i.i.i433
  %i.agl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i435, i64 16
  %i.agm = load i64, ptr %i.agl, align 8, !tbaa !58, !alias.scope !1329, !noalias !1330 ; 3 uses
  %i.agn = icmp ult i64 %i.agm, 16
  call void @llvm.assume(i1 %i.agn), !noalias !1327
  %i.ago = add nuw nsw i64 %i.agm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.agh, ptr noundef nonnull align 8 dereferenceable(1) %i.agj, i64 %i.ago, i1 false), !alias.scope !1332, !noalias !1327
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i436: ; preds = %.lr.ph.i.i.i.i433
  store ptr %i.agi, ptr %i.agf, align 8, !tbaa !57, !alias.scope !1328, !noalias !1331
  %i.agp = load i64, ptr %i.agj, align 8, !tbaa !60, !alias.scope !1329, !noalias !1330
  store i64 %i.agp, ptr %i.agh, align 8, !tbaa !60, !alias.scope !1328, !noalias !1331
  %.phi.trans.insert.i.i.i.i.i437 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i435, i64 16
  %.pre.i.i.i.i.i438 = load i64, ptr %.phi.trans.insert.i.i.i.i.i437, align 8, !tbaa !58, !alias.scope !1329, !noalias !1330
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i439

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i439: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i436, %bb.ec
  %i.agq = phi i64 [ %i.agm, %bb.ec ], [ %.pre.i.i.i.i.i438, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i436 ]
  %i.agr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i435, i64 16
  %i.ags = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i434, i64 16
  store i64 %i.agq, ptr %i.ags, align 8, !tbaa !58, !alias.scope !1328, !noalias !1331
  store ptr %i.agj, ptr %i.agg, align 8, !tbaa !57, !alias.scope !1329, !noalias !1330
  store i64 0, ptr %i.agr, align 8, !tbaa !58, !alias.scope !1329, !noalias !1330
  store i8 0, ptr %i.agj, align 8, !tbaa !60, !alias.scope !1329, !noalias !1330
  %i.agt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i435, i64 40 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i434, i64 40 ; 2 uses
  %.not.i.i.i.i440 = icmp eq ptr %i.agt, %i.aer
  br i1 %.not.i.i.i.i440, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i452, label %.lr.ph.i.i.i.i433, !llvm.loop !25

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i452: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i439, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i431
  %.0.lcssa.i.i.i.i442 = phi ptr [ %i.afr, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i431 ], [ %i.agu, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i439 ]
  %i.agv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i442, i64 40
  %.not.i27.i454 = icmp eq ptr %i.afg, null
  br i1 %.not.i27.i454, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i194, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i452
  %i.agw = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1327
  %i.agx = ptrtoint ptr %i.agw to i64
  %i.agy = sub i64 %i.agx, %i.afi
  call void @_ZdlPvm(ptr noundef nonnull %i.afg, i64 noundef %i.agy) #29, !noalias !1327
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i194

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i194: ; preds = %bb.ed, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i452
  store ptr %i.afr, ptr %i.w, align 8, !tbaa !125, !noalias !1327
  store ptr %i.agv, ptr %i.x, align 8, !tbaa !126, !noalias !1327
  %i.agz = getelementptr inbounds nuw [40 x i8], ptr %i.afr, i64 %i.afp
  store ptr %i.agz, ptr %i.y, align 8, !tbaa !127, !noalias !1327
  %.pre6.i196 = load ptr, ptr %i.bf, align 8, !tbaa !57, !noalias !1327 ; 2 uses
  %i.aha = icmp eq ptr %.pre6.i196, %i.bg
  br i1 %i.aha, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i194
  %i.ahb = load i64, ptr %i.bg, align 8, !tbaa !60, !noalias !1327
  %i.ahc = add i64 %i.ahb, 1
  call void @_ZdlPvm(ptr noundef %.pre6.i196, i64 noundef %i.ahc) #29, !noalias !1327
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i189

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i189: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i187, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !1327
  %.pre7.i190 = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1327
  br label %bb.ef

.loopexit587.a:                                   ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i425
  %lpad.loopexit589.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

.loopexit.split-lp588.a:                          ; preds = %bb.ea
  %lpad.loopexit.split-lp590.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ee:                                            ; preds = %.loopexit.split-lp588.a, %.loopexit587.a
  %lpad.phi591.a = phi { ptr, i32 } [ %lpad.loopexit589.a, %.loopexit587.a ], [ %lpad.loopexit.split-lp590.a, %.loopexit.split-lp588.a ]
  %i.ahd = load ptr, ptr %i.bf, align 8, !tbaa !57, !noalias !1327 ; 2 uses
  %i.ahe = icmp eq ptr %i.ahd, %i.bg
  br i1 %i.ahe, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i191: ; preds = %bb.ee
  %i.ahf = load i64, ptr %i.bg, align 8, !tbaa !60, !noalias !1327
  %i.ahg = add i64 %i.ahf, 1
  call void @_ZdlPvm(ptr noundef %i.ahd, i64 noundef %i.ahg) #29, !noalias !1327
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i192

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i192: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !1327
  br label %common.resume

bb.ef:                                            ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i189, %bb.dv
  %i.ahh = phi ptr [ %.pre7.i190, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i189 ], [ %i.aeo, %bb.dv ] ; 3 uses
  %i.ahi = load i32, ptr %i.ahh, align 8, !tbaa !112, !noalias !1327
  store i32 %i.ahi, ptr %30, align 8, !tbaa !112, !alias.scope !1327
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !59, !alias.scope !1327
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !57 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahh, i64 16
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !58 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27, !noalias !1327
  store i64 %i.ahm, ptr %i.g, align 8, !tbaa !63, !noalias !1327
  %i.ahn = icmp ugt i64 %i.ahm, 15
  br i1 %i.ahn, label %.noexc.i.i.i182, label %._crit_edge.i.i.i.i180

.noexc.i.i.i182:                                  ; preds = %bb.ef
  %i.aho = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.aho, ptr %i.bh, align 8, !tbaa !57, !alias.scope !1327
  %i.ahp = load i64, ptr %i.g, align 8, !tbaa !63, !noalias !1327
  store i64 %i.ahp, ptr %i.bi, align 8, !tbaa !60, !alias.scope !1327
  br label %._crit_edge.i.i.i.i180

._crit_edge.i.i.i.i180:                           ; preds = %.noexc.i.i.i182, %bb.ef
  %i.ahq = phi ptr [ %i.aho, %.noexc.i.i.i182 ], [ %i.bi, %bb.ef ] ; 2 uses
  switch i64 %i.ahm, label %bb.eh [
    i64 1, label %bb.eg
    i64 0, label %_ZN5boost20read_graphviz_detail6parser4peekEv.exit198
  ]

bb.eg:                                            ; preds = %._crit_edge.i.i.i.i180
  %i.ahr = load i8, ptr %i.ahk, align 1, !tbaa !60
  store i8 %i.ahr, ptr %i.ahq, align 1, !tbaa !60
  br label %_ZN5boost20read_graphviz_detail6parser4peekEv.exit198

bb.eh:                                            ; preds = %._crit_edge.i.i.i.i180
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahq, ptr align 1 %i.ahk, i64 %i.ahm, i1 false)
  br label %_ZN5boost20read_graphviz_detail6parser4peekEv.exit198

_ZN5boost20read_graphviz_detail6parser4peekEv.exit198: ; preds = %._crit_edge.i.i.i.i180, %bb.eg, %bb.eh
  %i.ahs = load i64, ptr %i.g, align 8, !tbaa !63, !noalias !1327 ; 2 uses
  store i64 %i.ahs, ptr %i.bj, align 8, !tbaa !58, !alias.scope !1327
  %i.aht = load ptr, ptr %i.bh, align 8, !tbaa !57, !alias.scope !1327
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.ahs
  store i8 0, ptr %i.ahu, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27, !noalias !1327
  %i.ahv = load i32, ptr %30, align 8, !tbaa !112
  %.not23 = icmp eq i32 %i.ahv, 12
  br i1 %.not23, label %.critedge, label %bb.ei

bb.ei:                                            ; preds = %_ZN5boost20read_graphviz_detail6parser4peekEv.exit198
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %i.ahw = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1333 ; 2 uses
  %i.ahx = load ptr, ptr %i.x, align 8, !tbaa !405, !noalias !1333
  %i.ahy = icmp eq ptr %i.ahw, %i.ahx
  br i1 %i.ahy, label %bb.ej, label %bb.es

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !1333
  invoke void @_ZN5boost20read_graphviz_detail9tokenizer9get_tokenEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %6, ptr noundef nonnull align 8 dereferenceable(328) %0)
          to label %.noexc217 unwind label %bb.fh

.noexc217:                                        ; preds = %bb.ej
  %i.ahz = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1333 ; 8 uses
  %i.aia = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1333
  %.not.i.i.i202 = icmp eq ptr %i.ahz, %i.aia
  br i1 %.not.i.i.i202, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %.noexc217
  %i.aib = load i32, ptr %6, align 8, !tbaa !112, !noalias !1333
  store i32 %i.aib, ptr %i.ahz, align 8, !tbaa !112, !noalias !1333
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahz, i64 24 ; 3 uses
  store ptr %i.aid, ptr %i.aic, align 8, !tbaa !59, !noalias !1333
  %i.aie = load ptr, ptr %i.bk, align 8, !tbaa !57, !noalias !1333 ; 2 uses
  %i.aif = icmp eq ptr %i.aie, %i.bl
  br i1 %i.aif, label %bb.el, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i203

bb.el:                                            ; preds = %bb.ek
  %i.aig = load i64, ptr %.phi.trans.insert.i204, align 8, !tbaa !58, !noalias !1333 ; 3 uses
  %i.aih = icmp ult i64 %i.aig, 16
  call void @llvm.assume(i1 %i.aih)
  %i.aii = add nuw nsw i64 %i.aig, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aid, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.aii, i1 false), !noalias !1333
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i203: ; preds = %bb.ek
  store ptr %i.aie, ptr %i.aic, align 8, !tbaa !57, !noalias !1333
  %i.aij = load i64, ptr %i.bl, align 8, !tbaa !60, !noalias !1333
  store i64 %i.aij, ptr %i.aid, align 8, !tbaa !60, !noalias !1333
  %.pre.i205 = load i64, ptr %.phi.trans.insert.i204, align 8, !tbaa !58, !noalias !1333
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i206

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i206: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i203, %bb.el
  %i.aik = phi i64 [ %.pre.i205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i203 ], [ %i.aig, %bb.el ]
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  store i64 %i.aik, ptr %i.ail, align 8, !tbaa !58, !noalias !1333
  %i.aim = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1333
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 40
  store ptr %i.ain, ptr %i.x, align 8, !tbaa !126, !noalias !1333
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i208

bb.em:                                            ; preds = %.noexc217
  %i.aio = load ptr, ptr %i.w, align 8, !tbaa !125, !noalias !1333 ; 5 uses
  %i.aip = ptrtoint ptr %i.ahz to i64
  %i.aiq = ptrtoint ptr %i.aio to i64             ; 2 uses
  %i.air = sub i64 %i.aip, %i.aiq                 ; 3 uses
  %i.ais = icmp eq i64 %i.air, 9223372036854775800
  br i1 %i.ais, label %bb.en, label %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i458

bb.en:                                            ; preds = %bb.em
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
          to label %.noexc488 unwind label %.loopexit.split-lp593.a

.noexc488:                                        ; preds = %bb.en
  unreachable

_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i458: ; preds = %bb.em
  %i.ait = sdiv exact i64 %i.air, 40              ; 3 uses
  %.sroa.speculated.i.i459 = call i64 @llvm.umax.i64(i64 %i.ait, i64 1)
  %i.aiu = add nsw i64 %.sroa.speculated.i.i459, %i.ait ; 2 uses
  %i.aiv = icmp ult i64 %i.aiu, %i.ait
  %i.aiw = call i64 @llvm.umin.i64(i64 %i.aiu, i64 230584300921369395)
  %i.aix = select i1 %i.aiv, i64 230584300921369395, i64 %i.aiw ; 2 uses
  %i.aiy = mul nuw nsw i64 %i.aix, 40
  %i.aiz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiy) #32
          to label %.noexc489 unwind label %.loopexit592.a ; 5 uses

.noexc489:                                        ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i458
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 %i.air ; 4 uses
  %i.ajb = load i32, ptr %6, align 8, !tbaa !112, !noalias !1333
  store i32 %i.ajb, ptr %i.aja, align 8, !tbaa !112, !noalias !1333
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aja, i64 8 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aja, i64 24 ; 3 uses
  store ptr %i.ajd, ptr %i.ajc, align 8, !tbaa !59, !noalias !1333
  %i.aje = load ptr, ptr %i.bk, align 8, !tbaa !57, !noalias !1333 ; 2 uses
  %i.ajf = icmp eq ptr %i.aje, %i.bl
  br i1 %i.ajf, label %bb.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i461

bb.eo:                                            ; preds = %.noexc489
  %i.ajg = load i64, ptr %.phi.trans.insert.i204, align 8, !tbaa !58, !noalias !1333 ; 3 uses
  %i.ajh = icmp ult i64 %i.ajg, 16
  call void @llvm.assume(i1 %i.ajh), !noalias !1333
  %i.aji = add nuw nsw i64 %i.ajg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ajd, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.aji, i1 false), !noalias !1333
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i461: ; preds = %.noexc489
  store ptr %i.aje, ptr %i.ajc, align 8, !tbaa !57, !noalias !1333
  %i.ajj = load i64, ptr %i.bl, align 8, !tbaa !60, !noalias !1333
  store i64 %i.ajj, ptr %i.ajd, align 8, !tbaa !60, !noalias !1333
  %.pre.i463 = load i64, ptr %.phi.trans.insert.i204, align 8, !tbaa !58, !noalias !1333
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i464

_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i464: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i461, %bb.eo
  %i.ajk = phi i64 [ %i.ajg, %bb.eo ], [ %.pre.i463, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i461 ]
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aja, i64 16
  store i64 %i.ajk, ptr %i.ajl, align 8, !tbaa !58, !noalias !1333
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !57, !noalias !1333
  store i64 0, ptr %.phi.trans.insert.i204, align 8, !tbaa !58, !noalias !1333
  store i8 0, ptr %i.bl, align 8, !tbaa !60, !noalias !1333
  %.not10.i.i.i.i465 = icmp eq ptr %i.aio, %i.ahz
  br i1 %.not10.i.i.i.i465, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i485, label %.lr.ph.i.i.i.i466

.lr.ph.i.i.i.i466:                                ; preds = %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i464, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i472
  %.012.i.i.i.i467 = phi ptr [ %i.akc, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i472 ], [ %i.aiz, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i464 ] ; 5 uses
  %.0911.i.i.i.i468 = phi ptr [ %i.akb, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i472 ], [ %i.aio, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i464 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1334), !noalias !1333
  call void @llvm.experimental.noalias.scope.decl(metadata !1335), !noalias !1333
  %i.ajm = load i32, ptr %.0911.i.i.i.i468, align 8, !tbaa !112, !alias.scope !1335, !noalias !1336
  store i32 %i.ajm, ptr %.012.i.i.i.i467, align 8, !tbaa !112, !alias.scope !1334, !noalias !1337
  %i.ajn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i467, i64 8 ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i468, i64 8 ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i467, i64 24 ; 3 uses
  store ptr %i.ajp, ptr %i.ajn, align 8, !tbaa !59, !alias.scope !1334, !noalias !1337
  %i.ajq = load ptr, ptr %i.ajo, align 8, !tbaa !57, !alias.scope !1335, !noalias !1336 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i468, i64 24 ; 5 uses
  %i.ajs = icmp eq ptr %i.ajq, %i.ajr
  br i1 %i.ajs, label %bb.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i469

bb.ep:                                            ; preds = %.lr.ph.i.i.i.i466
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i468, i64 16
  %i.aju = load i64, ptr %i.ajt, align 8, !tbaa !58, !alias.scope !1335, !noalias !1336 ; 3 uses
  %i.ajv = icmp ult i64 %i.aju, 16
  call void @llvm.assume(i1 %i.ajv), !noalias !1333
  %i.ajw = add nuw nsw i64 %i.aju, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ajp, ptr noundef nonnull align 8 dereferenceable(1) %i.ajr, i64 %i.ajw, i1 false), !alias.scope !1338, !noalias !1333
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i469: ; preds = %.lr.ph.i.i.i.i466
  store ptr %i.ajq, ptr %i.ajn, align 8, !tbaa !57, !alias.scope !1334, !noalias !1337
  %i.ajx = load i64, ptr %i.ajr, align 8, !tbaa !60, !alias.scope !1335, !noalias !1336
  store i64 %i.ajx, ptr %i.ajp, align 8, !tbaa !60, !alias.scope !1334, !noalias !1337
  %.phi.trans.insert.i.i.i.i.i470 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i468, i64 16
  %.pre.i.i.i.i.i471 = load i64, ptr %.phi.trans.insert.i.i.i.i.i470, align 8, !tbaa !58, !alias.scope !1335, !noalias !1336
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i472

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i472: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i469, %bb.ep
  %i.ajy = phi i64 [ %i.aju, %bb.ep ], [ %.pre.i.i.i.i.i471, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i469 ]
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i468, i64 16
  %i.aka = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i467, i64 16
  store i64 %i.ajy, ptr %i.aka, align 8, !tbaa !58, !alias.scope !1334, !noalias !1337
  store ptr %i.ajr, ptr %i.ajo, align 8, !tbaa !57, !alias.scope !1335, !noalias !1336
  store i64 0, ptr %i.ajz, align 8, !tbaa !58, !alias.scope !1335, !noalias !1336
  store i8 0, ptr %i.ajr, align 8, !tbaa !60, !alias.scope !1335, !noalias !1336
  %i.akb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i468, i64 40 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i467, i64 40 ; 2 uses
  %.not.i.i.i.i473 = icmp eq ptr %i.akb, %i.ahz
  br i1 %.not.i.i.i.i473, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i485, label %.lr.ph.i.i.i.i466, !llvm.loop !25

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i485: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i472, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i464
  %.0.lcssa.i.i.i.i475 = phi ptr [ %i.aiz, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i464 ], [ %i.akc, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i472 ]
  %i.akd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i475, i64 40
  %.not.i27.i487 = icmp eq ptr %i.aio, null
  br i1 %.not.i27.i487, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i213, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i485
  %i.ake = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1333
  %i.akf = ptrtoint ptr %i.ake to i64
  %i.akg = sub i64 %i.akf, %i.aiq
  call void @_ZdlPvm(ptr noundef nonnull %i.aio, i64 noundef %i.akg) #29, !noalias !1333
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i213

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i213: ; preds = %bb.eq, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i485
  store ptr %i.aiz, ptr %i.w, align 8, !tbaa !125, !noalias !1333
  store ptr %i.akd, ptr %i.x, align 8, !tbaa !126, !noalias !1333
  %i.akh = getelementptr inbounds nuw [40 x i8], ptr %i.aiz, i64 %i.aix
  store ptr %i.akh, ptr %i.y, align 8, !tbaa !127, !noalias !1333
  %.pre6.i215 = load ptr, ptr %i.bk, align 8, !tbaa !57, !noalias !1333 ; 2 uses
  %i.aki = icmp eq ptr %.pre6.i215, %i.bl
  br i1 %i.aki, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i216: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i213
  %i.akj = load i64, ptr %i.bl, align 8, !tbaa !60, !noalias !1333
  %i.akk = add i64 %i.akj, 1
  call void @_ZdlPvm(ptr noundef %.pre6.i215, i64 noundef %i.akk) #29, !noalias !1333
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i208

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i208: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i206, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1333
  %.pre7.i209 = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1333
  br label %bb.es

.loopexit592.a:                                   ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i458
  %lpad.loopexit594.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

.loopexit.split-lp593.a:                          ; preds = %bb.en
  %lpad.loopexit.split-lp595.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.er:                                            ; preds = %.loopexit.split-lp593.a, %.loopexit592.a
  %lpad.phi596.a = phi { ptr, i32 } [ %lpad.loopexit594.a, %.loopexit592.a ], [ %lpad.loopexit.split-lp595.a, %.loopexit.split-lp593.a ]
  %i.akl = load ptr, ptr %i.bk, align 8, !tbaa !57, !noalias !1333 ; 2 uses
  %i.akm = icmp eq ptr %i.akl, %i.bl
  br i1 %i.akm, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i210: ; preds = %bb.er
  %i.akn = load i64, ptr %i.bl, align 8, !tbaa !60, !noalias !1333
  %i.ako = add i64 %i.akn, 1
  call void @_ZdlPvm(ptr noundef %i.akl, i64 noundef %i.ako) #29, !noalias !1333
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i211

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i211: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1333
  br label %.body218

bb.es:                                            ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i208, %bb.ei
  %i.akp = phi ptr [ %.pre7.i209, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i208 ], [ %i.ahw, %bb.ei ] ; 3 uses
  %i.akq = load i32, ptr %i.akp, align 8, !tbaa !112, !noalias !1333
  store i32 %i.akq, ptr %31, align 8, !tbaa !112, !alias.scope !1333
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !59, !alias.scope !1333
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !57 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akp, i64 16
  %i.aku = load i64, ptr %i.akt, align 8, !tbaa !58 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27, !noalias !1333
  store i64 %i.aku, ptr %i.f, align 8, !tbaa !63, !noalias !1333
  %i.akv = icmp ugt i64 %i.aku, 15
  br i1 %i.akv, label %.noexc.i.i.i201, label %._crit_edge.i.i.i.i199

.noexc.i.i.i201:                                  ; preds = %bb.es
  %i.akw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc220 unwind label %bb.fh ; 2 uses

.noexc220:                                        ; preds = %.noexc.i.i.i201
  store ptr %i.akw, ptr %i.bm, align 8, !tbaa !57, !alias.scope !1333
  %i.akx = load i64, ptr %i.f, align 8, !tbaa !63, !noalias !1333
  store i64 %i.akx, ptr %i.bn, align 8, !tbaa !60, !alias.scope !1333
  br label %._crit_edge.i.i.i.i199

._crit_edge.i.i.i.i199:                           ; preds = %.noexc220, %bb.es
  %i.aky = phi ptr [ %i.akw, %.noexc220 ], [ %i.bn, %bb.es ] ; 2 uses
  switch i64 %i.aku, label %bb.eu [
    i64 1, label %bb.et
    i64 0, label %bb.ev
  ]

bb.et:                                            ; preds = %._crit_edge.i.i.i.i199
  %i.akz = load i8, ptr %i.aks, align 1, !tbaa !60
  store i8 %i.akz, ptr %i.aky, align 1, !tbaa !60
  br label %bb.ev

bb.eu:                                            ; preds = %._crit_edge.i.i.i.i199
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aky, ptr align 1 %i.aks, i64 %i.aku, i1 false)
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge.i.i.i.i199, %bb.et, %bb.eu
  %i.ala = load i64, ptr %i.f, align 8, !tbaa !63, !noalias !1333 ; 2 uses
  store i64 %i.ala, ptr %i.bo, align 8, !tbaa !58, !alias.scope !1333
  %i.alb = load ptr, ptr %i.bm, align 8, !tbaa !57, !alias.scope !1333
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 %i.ala
  store i8 0, ptr %i.alc, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27, !noalias !1333
  %i.ald = load i32, ptr %31, align 8, !tbaa !112
  %i.ale = icmp eq i32 %i.ald, 8
  %i.alf = load ptr, ptr %i.bm, align 8, !tbaa !57 ; 2 uses
  %i.alg = icmp eq ptr %i.alf, %i.bn
  br i1 %i.alg, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222: ; preds = %bb.ev
  %i.alh = load i64, ptr %i.bn, align 8, !tbaa !60
end_hunk_4
begin_hunk_5_@_ZN5boost20read_graphviz_detail6parser15parse_attr_listERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEE:bb.a
  br i1 %i.amu, label %bb.fc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i502

bb.fc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i501, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i509
  %i.amv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i500, i64 16 ; 2 uses
  %i.amw = load i64, ptr %i.amv, align 8, !tbaa !58 ; 3 uses
  %i.amx = icmp ult i64 %i.amw, 16
  call void @llvm.assume(i1 %i.amx)
  switch i64 %i.amw, label %bb.fe [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i507
    i64 1, label %bb.fd
  ]

bb.fd:                                            ; preds = %bb.fc
  %i.amy = load i8, ptr %i.ams, align 1, !tbaa !60
  store i8 %i.amy, ptr %i.amp, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i507

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amp, ptr align 1 %i.ams, i64 %i.amw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i507

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i507: ; preds = %bb.fe, %bb.fd, %bb.fc
  %i.amz = load i64, ptr %i.amv, align 8, !tbaa !58 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i499, i64 16
  store i64 %i.amz, ptr %i.ana, align 8, !tbaa !58
  %i.anb = load ptr, ptr %i.amn, align 8, !tbaa !57
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 %i.amz
  store i8 0, ptr %i.anc, align 1, !tbaa !60
  %.pre.i.i.i.i.i.i.i.i508 = load ptr, ptr %i.amo, align 8, !tbaa !57
  br label %_ZN5boost20read_graphviz_detail5tokenaSEOS1_.exit.i.i.i.i.i.i504

.thread.i.i.i.i.i.i.i.i510:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i509
  %i.and = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i499, i64 16
  store ptr %i.ams, ptr %i.amn, align 8, !tbaa !57
  %i.ane = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i500, i64 16
  %i.anf = load i64, ptr %i.ane, align 8, !tbaa !58
  store i64 %i.anf, ptr %i.and, align 8, !tbaa !58
  %i.ang = load i64, ptr %i.amt, align 8, !tbaa !60
  store i64 %i.ang, ptr %i.amq, align 8, !tbaa !60
  br label %bb.fg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i502: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i501
  %i.anh = load i64, ptr %i.amq, align 8, !tbaa !60
  store ptr %i.ams, ptr %i.amn, align 8, !tbaa !57
  %i.ani = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i500, i64 16
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !58
  %i.ank = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i499, i64 16
  store i64 %i.anj, ptr %i.ank, align 8, !tbaa !58
  %i.anl = load i64, ptr %i.amt, align 8, !tbaa !60
  store i64 %i.anl, ptr %i.amq, align 8, !tbaa !60
  %.not.i.i.i.i.i.i.i.i503 = icmp eq ptr %i.amp, null
  br i1 %.not.i.i.i.i.i.i.i.i503, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i502
  store ptr %i.amp, ptr %i.amo, align 8, !tbaa !57
  store i64 %i.anh, ptr %i.amt, align 8, !tbaa !60
  br label %_ZN5boost20read_graphviz_detail5tokenaSEOS1_.exit.i.i.i.i.i.i504

bb.fg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i502, %.thread.i.i.i.i.i.i.i.i510
  store ptr %i.amt, ptr %i.amo, align 8, !tbaa !57
  br label %_ZN5boost20read_graphviz_detail5tokenaSEOS1_.exit.i.i.i.i.i.i504

_ZN5boost20read_graphviz_detail5tokenaSEOS1_.exit.i.i.i.i.i.i504: ; preds = %bb.fg, %bb.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i507
  %i.anm = phi ptr [ %.pre.i.i.i.i.i.i.i.i508, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i507 ], [ %i.amp, %bb.ff ], [ %i.amt, %bb.fg ]
  %i.ann = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i500, i64 16
  store i64 0, ptr %i.ann, align 8, !tbaa !58
  store i8 0, ptr %i.anm, align 1, !tbaa !60
  %i.ano = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i500, i64 40
  %i.anp = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i499, i64 40
  %i.anq = add nsw i64 %.014.i.i.i.i.i.i498, -1
  %i.anr = icmp sgt i64 %.014.i.i.i.i.i.i498, 1
  br i1 %i.anr, label %.lr.ph.i.i.i.i.i.i497, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i505, !llvm.loop !28

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i505: ; preds = %_ZN5boost20read_graphviz_detail5tokenaSEOS1_.exit.i.i.i.i.i.i504
  %.pre.i506 = load ptr, ptr %i.x, align 8, !tbaa !126
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i492

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i492: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i505, %bb.fb, %_ZN5boost20read_graphviz_detail5tokenC2ERKS1_.exit.i229
  %i.ans = phi ptr [ %.pre.i506, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i505 ], [ %i.amg, %bb.fb ], [ %i.amg, %_ZN5boost20read_graphviz_detail5tokenC2ERKS1_.exit.i229 ] ; 3 uses
  %i.ant = getelementptr inbounds i8, ptr %i.ans, i64 -40
  store ptr %i.ant, ptr %i.x, align 8, !tbaa !126
  %i.anu = getelementptr inbounds i8, ptr %i.ans, i64 -32
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !57 ; 2 uses
  %i.anw = getelementptr inbounds i8, ptr %i.ans, i64 -16 ; 2 uses
  %i.anx = icmp eq ptr %i.anv, %i.anw
  br i1 %i.anx, label %_ZN5boost20read_graphviz_detail6parser3getEv.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i493: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i492
  %i.any = load i64, ptr %i.anw, align 8, !tbaa !60
  %i.anz = add i64 %i.any, 1
  call void @_ZdlPvm(ptr noundef %i.anv, i64 noundef %i.anz) #29
  br label %_ZN5boost20read_graphviz_detail6parser3getEv.exit234

_ZN5boost20read_graphviz_detail6parser3getEv.exit234: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost20read_graphviz_detail5tokenESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i492, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i493, %bb.ex
  %i.aoa = load ptr, ptr %i.bu, align 8, !tbaa !57 ; 2 uses
  %i.aob = icmp eq ptr %i.aoa, %i.bv
  br i1 %i.aob, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30.backedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i235

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30.backedge: ; preds = %_ZN5boost20read_graphviz_detail6parser3getEv.exit234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i235, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit262
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30, !llvm.loop !1297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i235: ; preds = %_ZN5boost20read_graphviz_detail6parser3getEv.exit234
  %i.aoc = load i64, ptr %i.bv, align 8, !tbaa !60
  %i.aod = add i64 %i.aoc, 1
  call void @_ZdlPvm(ptr noundef %i.aoa, i64 noundef %i.aod) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30.backedge

bb.fh:                                            ; preds = %.noexc.i.i.i201, %bb.ej
  %i.aoe = landingpad { ptr, i32 }
          cleanup
  br label %.body218

.body218:                                         ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i211, %bb.fh
  %eh.lpad-body219 = phi { ptr, i32 } [ %i.aoe, %bb.fh ], [ %lpad.phi596.a, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  %i.aof = load ptr, ptr %i.bh, align 8, !tbaa !57 ; 2 uses
  %i.aog = icmp eq ptr %i.aof, %i.bi
  br i1 %i.aog, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238: ; preds = %.body218
  %i.aoh = load i64, ptr %i.bi, align 8, !tbaa !60
  %i.aoi = add i64 %i.aoh, 1
  call void @_ZdlPvm(ptr noundef %i.aof, i64 noundef %i.aoi) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit240

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit240: ; preds = %.body218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %common.resume

bb.fi:                                            ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit227
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  %i.aoj = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1340 ; 2 uses
  %i.aok = load ptr, ptr %i.x, align 8, !tbaa !405, !noalias !1340
  %i.aol = icmp eq ptr %i.aoj, %i.aok
  br i1 %i.aol, label %bb.fj, label %bb.fs

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !1340
  call void @_ZN5boost20read_graphviz_detail9tokenizer9get_tokenEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %5, ptr noundef nonnull align 8 dereferenceable(328) %0), !noalias !1340
  %i.aom = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1340 ; 8 uses
  %i.aon = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1340
  %.not.i.i.i244 = icmp eq ptr %i.aom, %i.aon
  br i1 %.not.i.i.i244, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aoo = load i32, ptr %5, align 8, !tbaa !112, !noalias !1340
  store i32 %i.aoo, ptr %i.aom, align 8, !tbaa !112, !noalias !1340
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aom, i64 8 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aom, i64 24 ; 3 uses
  store ptr %i.aoq, ptr %i.aop, align 8, !tbaa !59, !noalias !1340
  %i.aor = load ptr, ptr %i.bp, align 8, !tbaa !57, !noalias !1340 ; 2 uses
  %i.aos = icmp eq ptr %i.aor, %i.bq
  br i1 %i.aos, label %bb.fl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245

bb.fl:                                            ; preds = %bb.fk
  %i.aot = load i64, ptr %.phi.trans.insert.i246, align 8, !tbaa !58, !noalias !1340 ; 3 uses
  %i.aou = icmp ult i64 %i.aot, 16
  call void @llvm.assume(i1 %i.aou)
  %i.aov = add nuw nsw i64 %i.aot, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aoq, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.aov, i1 false), !noalias !1340
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245: ; preds = %bb.fk
  store ptr %i.aor, ptr %i.aop, align 8, !tbaa !57, !noalias !1340
  %i.aow = load i64, ptr %i.bq, align 8, !tbaa !60, !noalias !1340
  store i64 %i.aow, ptr %i.aoq, align 8, !tbaa !60, !noalias !1340
  %.pre.i247 = load i64, ptr %.phi.trans.insert.i246, align 8, !tbaa !58, !noalias !1340
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i248

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i248: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245, %bb.fl
  %i.aox = phi i64 [ %.pre.i247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245 ], [ %i.aot, %bb.fl ]
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aom, i64 16
  store i64 %i.aox, ptr %i.aoy, align 8, !tbaa !58, !noalias !1340
  %i.aoz = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !1340
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 40
  store ptr %i.apa, ptr %i.x, align 8, !tbaa !126, !noalias !1340
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i250

bb.fm:                                            ; preds = %bb.fj
  %i.apb = load ptr, ptr %i.w, align 8, !tbaa !125, !noalias !1340 ; 5 uses
  %i.apc = ptrtoint ptr %i.aom to i64
  %i.apd = ptrtoint ptr %i.apb to i64             ; 2 uses
  %i.ape = sub i64 %i.apc, %i.apd                 ; 3 uses
  %i.apf = icmp eq i64 %i.ape, 9223372036854775800
  br i1 %i.apf, label %bb.fn, label %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i512

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
          to label %.noexc542 unwind label %.loopexit.split-lp598

.noexc542:                                        ; preds = %bb.fn
  unreachable

_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i512: ; preds = %bb.fm
  %i.apg = sdiv exact i64 %i.ape, 40              ; 3 uses
  %.sroa.speculated.i.i513 = call i64 @llvm.umax.i64(i64 %i.apg, i64 1)
  %i.aph = add nsw i64 %.sroa.speculated.i.i513, %i.apg ; 2 uses
  %i.api = icmp ult i64 %i.aph, %i.apg
  %i.apj = call i64 @llvm.umin.i64(i64 %i.aph, i64 230584300921369395)
  %i.apk = select i1 %i.api, i64 230584300921369395, i64 %i.apj ; 2 uses
  %i.apl = mul nuw nsw i64 %i.apk, 40
  %i.apm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apl) #32
          to label %.noexc543 unwind label %.loopexit597 ; 5 uses

.noexc543:                                        ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i512
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 %i.ape ; 4 uses
  %i.apo = load i32, ptr %5, align 8, !tbaa !112, !noalias !1340
  store i32 %i.apo, ptr %i.apn, align 8, !tbaa !112, !noalias !1340
  %i.app = getelementptr inbounds nuw i8, ptr %i.apn, i64 8 ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apn, i64 24 ; 3 uses
  store ptr %i.apq, ptr %i.app, align 8, !tbaa !59, !noalias !1340
  %i.apr = load ptr, ptr %i.bp, align 8, !tbaa !57, !noalias !1340 ; 2 uses
  %i.aps = icmp eq ptr %i.apr, %i.bq
  br i1 %i.aps, label %bb.fo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i515

bb.fo:                                            ; preds = %.noexc543
  %i.apt = load i64, ptr %.phi.trans.insert.i246, align 8, !tbaa !58, !noalias !1340 ; 3 uses
  %i.apu = icmp ult i64 %i.apt, 16
  call void @llvm.assume(i1 %i.apu), !noalias !1340
  %i.apv = add nuw nsw i64 %i.apt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.apq, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.apv, i1 false), !noalias !1340
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i518

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i515: ; preds = %.noexc543
  store ptr %i.apr, ptr %i.app, align 8, !tbaa !57, !noalias !1340
  %i.apw = load i64, ptr %i.bq, align 8, !tbaa !60, !noalias !1340
  store i64 %i.apw, ptr %i.apq, align 8, !tbaa !60, !noalias !1340
  %.pre.i517 = load i64, ptr %.phi.trans.insert.i246, align 8, !tbaa !58, !noalias !1340
  br label %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i518

_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i518: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i515, %bb.fo
  %i.apx = phi i64 [ %i.apt, %bb.fo ], [ %.pre.i517, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i515 ]
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apn, i64 16
  store i64 %i.apx, ptr %i.apy, align 8, !tbaa !58, !noalias !1340
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !57, !noalias !1340
  store i64 0, ptr %.phi.trans.insert.i246, align 8, !tbaa !58, !noalias !1340
  store i8 0, ptr %i.bq, align 8, !tbaa !60, !noalias !1340
  %.not10.i.i.i.i519 = icmp eq ptr %i.apb, %i.aom
  br i1 %.not10.i.i.i.i519, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i539, label %.lr.ph.i.i.i.i520

.lr.ph.i.i.i.i520:                                ; preds = %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i518, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i526
  %.012.i.i.i.i521 = phi ptr [ %i.aqp, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i526 ], [ %i.apm, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i518 ] ; 5 uses
  %.0911.i.i.i.i522 = phi ptr [ %i.aqo, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i526 ], [ %i.apb, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i518 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1341), !noalias !1340
  call void @llvm.experimental.noalias.scope.decl(metadata !1342), !noalias !1340
  %i.apz = load i32, ptr %.0911.i.i.i.i522, align 8, !tbaa !112, !alias.scope !1342, !noalias !1343
  store i32 %i.apz, ptr %.012.i.i.i.i521, align 8, !tbaa !112, !alias.scope !1341, !noalias !1344
  %i.aqa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i521, i64 8 ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i522, i64 8 ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i521, i64 24 ; 3 uses
  store ptr %i.aqc, ptr %i.aqa, align 8, !tbaa !59, !alias.scope !1341, !noalias !1344
  %i.aqd = load ptr, ptr %i.aqb, align 8, !tbaa !57, !alias.scope !1342, !noalias !1343 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i522, i64 24 ; 5 uses
  %i.aqf = icmp eq ptr %i.aqd, %i.aqe
  br i1 %i.aqf, label %bb.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i523

bb.fp:                                            ; preds = %.lr.ph.i.i.i.i520
  %i.aqg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i522, i64 16
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !58, !alias.scope !1342, !noalias !1343 ; 3 uses
  %i.aqi = icmp ult i64 %i.aqh, 16
  call void @llvm.assume(i1 %i.aqi), !noalias !1340
  %i.aqj = add nuw nsw i64 %i.aqh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aqc, ptr noundef nonnull align 8 dereferenceable(1) %i.aqe, i64 %i.aqj, i1 false), !alias.scope !1345, !noalias !1340
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i523: ; preds = %.lr.ph.i.i.i.i520
  store ptr %i.aqd, ptr %i.aqa, align 8, !tbaa !57, !alias.scope !1341, !noalias !1344
  %i.aqk = load i64, ptr %i.aqe, align 8, !tbaa !60, !alias.scope !1342, !noalias !1343
  store i64 %i.aqk, ptr %i.aqc, align 8, !tbaa !60, !alias.scope !1341, !noalias !1344
  %.phi.trans.insert.i.i.i.i.i524 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i522, i64 16
  %.pre.i.i.i.i.i525 = load i64, ptr %.phi.trans.insert.i.i.i.i.i524, align 8, !tbaa !58, !alias.scope !1342, !noalias !1343
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i526

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i526: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i523, %bb.fp
  %i.aql = phi i64 [ %i.aqh, %bb.fp ], [ %.pre.i.i.i.i.i525, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i523 ]
  %i.aqm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i522, i64 16
  %i.aqn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i521, i64 16
  store i64 %i.aql, ptr %i.aqn, align 8, !tbaa !58, !alias.scope !1341, !noalias !1344
  store ptr %i.aqe, ptr %i.aqb, align 8, !tbaa !57, !alias.scope !1342, !noalias !1343
  store i64 0, ptr %i.aqm, align 8, !tbaa !58, !alias.scope !1342, !noalias !1343
  store i8 0, ptr %i.aqe, align 8, !tbaa !60, !alias.scope !1342, !noalias !1343
  %i.aqo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i522, i64 40 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i521, i64 40 ; 2 uses
  %.not.i.i.i.i527 = icmp eq ptr %i.aqo, %i.aom
  br i1 %.not.i.i.i.i527, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i539, label %.lr.ph.i.i.i.i520, !llvm.loop !25

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i539: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i526, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i518
  %.0.lcssa.i.i.i.i529 = phi ptr [ %i.apm, %_ZN5boost20read_graphviz_detail5tokenC2EOS1_.exit.i518 ], [ %i.aqp, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail5tokenES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i526 ]
  %i.aqq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i529, i64 40
  %.not.i27.i541 = icmp eq ptr %i.apb, null
  br i1 %.not.i27.i541, label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i255, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i539
  %i.aqr = load ptr, ptr %i.y, align 8, !tbaa !127, !noalias !1340
  %i.aqs = ptrtoint ptr %i.aqr to i64
  %i.aqt = sub i64 %i.aqs, %i.apd
  call void @_ZdlPvm(ptr noundef nonnull %i.apb, i64 noundef %i.aqt) #29, !noalias !1340
  br label %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i255

_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i255: ; preds = %bb.fq, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i539
  store ptr %i.apm, ptr %i.w, align 8, !tbaa !125, !noalias !1340
  store ptr %i.aqq, ptr %i.x, align 8, !tbaa !126, !noalias !1340
  %i.aqu = getelementptr inbounds nuw [40 x i8], ptr %i.apm, i64 %i.apk
  store ptr %i.aqu, ptr %i.y, align 8, !tbaa !127, !noalias !1340
  %.pre6.i257 = load ptr, ptr %i.bp, align 8, !tbaa !57, !noalias !1340 ; 2 uses
  %i.aqv = icmp eq ptr %.pre6.i257, %i.bq
  br i1 %i.aqv, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i255
  %i.aqw = load i64, ptr %i.bq, align 8, !tbaa !60, !noalias !1340
  %i.aqx = add i64 %i.aqw, 1
  call void @_ZdlPvm(ptr noundef %.pre6.i257, i64 noundef %i.aqx) #29, !noalias !1340
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i250

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i250: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.thread.i248, %_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE9push_backEOS2_.exit.i255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !1340
  %.pre7.i251 = load ptr, ptr %i.w, align 8, !tbaa !405, !noalias !1340
  br label %bb.fs

.loopexit597:                                     ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EE12_M_check_lenEmPKc.exit.i512
  %lpad.loopexit599 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp598:                            ; preds = %bb.fn
  %lpad.loopexit.split-lp600 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fr:                                            ; preds = %.loopexit.split-lp598, %.loopexit597
  %lpad.phi601 = phi { ptr, i32 } [ %lpad.loopexit599, %.loopexit597 ], [ %lpad.loopexit.split-lp600, %.loopexit.split-lp598 ]
  %i.aqy = load ptr, ptr %i.bp, align 8, !tbaa !57, !noalias !1340 ; 2 uses
  %i.aqz = icmp eq ptr %i.aqy, %i.bq
  br i1 %i.aqz, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i252: ; preds = %bb.fr
  %i.ara = load i64, ptr %i.bq, align 8, !tbaa !60, !noalias !1340
  %i.arb = add i64 %i.ara, 1
  call void @_ZdlPvm(ptr noundef %i.aqy, i64 noundef %i.arb) #29, !noalias !1340
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i253

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit4.i253: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !1340
  br label %common.resume

bb.fs:                                            ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i250, %bb.fi
  %i.arc = phi ptr [ %.pre7.i251, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit.i250 ], [ %i.aoj, %bb.fi ] ; 3 uses
  %i.ard = load i32, ptr %i.arc, align 8, !tbaa !112, !noalias !1340
  store i32 %i.ard, ptr %33, align 8, !tbaa !112, !alias.scope !1340
  %i.are = getelementptr inbounds nuw i8, ptr %i.arc, i64 8
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !59, !alias.scope !1340
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !57 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arc, i64 16
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !58 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !1340
  store i64 %i.arh, ptr %i.d, align 8, !tbaa !63, !noalias !1340
  %i.ari = icmp ugt i64 %i.arh, 15
  br i1 %i.ari, label %.noexc.i.i.i243, label %._crit_edge.i.i.i.i241

.noexc.i.i.i243:                                  ; preds = %bb.fs
  %i.arj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.arj, ptr %i.br, align 8, !tbaa !57, !alias.scope !1340
  %i.ark = load i64, ptr %i.d, align 8, !tbaa !63, !noalias !1340
  store i64 %i.ark, ptr %i.bs, align 8, !tbaa !60, !alias.scope !1340
  br label %._crit_edge.i.i.i.i241

._crit_edge.i.i.i.i241:                           ; preds = %.noexc.i.i.i243, %bb.fs
  %i.arl = phi ptr [ %i.arj, %.noexc.i.i.i243 ], [ %i.bs, %bb.fs ] ; 2 uses
  switch i64 %i.arh, label %bb.fu [
    i64 1, label %bb.ft
    i64 0, label %_ZN5boost20read_graphviz_detail6parser4peekEv.exit259
  ]

bb.ft:                                            ; preds = %._crit_edge.i.i.i.i241
  %i.arm = load i8, ptr %i.arf, align 1, !tbaa !60
  store i8 %i.arm, ptr %i.arl, align 1, !tbaa !60
  br label %_ZN5boost20read_graphviz_detail6parser4peekEv.exit259

bb.fu:                                            ; preds = %._crit_edge.i.i.i.i241
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.arl, ptr align 1 %i.arf, i64 %i.arh, i1 false)
  br label %_ZN5boost20read_graphviz_detail6parser4peekEv.exit259

_ZN5boost20read_graphviz_detail6parser4peekEv.exit259: ; preds = %._crit_edge.i.i.i.i241, %bb.ft, %bb.fu
  %i.arn = load i64, ptr %i.d, align 8, !tbaa !63, !noalias !1340 ; 2 uses
  store i64 %i.arn, ptr %i.bt, align 8, !tbaa !58, !alias.scope !1340
  %i.aro = load ptr, ptr %i.br, align 8, !tbaa !57, !alias.scope !1340
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 %i.arn
  store i8 0, ptr %i.arp, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !1340
  %i.arq = load i32, ptr %33, align 8, !tbaa !112
  %i.arr = icmp eq i32 %i.arq, 11
  %i.ars = load ptr, ptr %i.br, align 8, !tbaa !57 ; 2 uses
  %i.art = icmp eq ptr %i.ars, %i.bs
  br i1 %i.art, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260: ; preds = %_ZN5boost20read_graphviz_detail6parser4peekEv.exit259
  %i.aru = load i64, ptr %i.bs, align 8, !tbaa !60
  %i.arv = add i64 %i.aru, 1
  call void @_ZdlPvm(ptr noundef %i.ars, i64 noundef %i.arv) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit262
end_hunk_5
begin_hunk_6_@_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost20read_graphviz_detail13edge_endpointEEEvT_S6_:bb.a

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !509
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05, i64 56 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !60
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !57  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05, i64 24 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyIN5boost20read_graphviz_detail13edge_endpointEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !60
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %_ZSt8_DestroyIN5boost20read_graphviz_detail13edge_endpointEEvPT_.exit

_ZSt8_DestroyIN5boost20read_graphviz_detail13edge_endpointEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05, i64 128 ; 2 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1394

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN5boost20read_graphviz_detail13edge_endpointEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZNSt6vectorIN5boost20read_graphviz_detail13edge_endpointESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !514  ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !513
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 8, !tbaa !506, !range !283, !noundef !108
  store i8 %i.e, ptr %i.b, align 8, !tbaa !506
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !59
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !57
  %i.p = load i64, ptr %i.j, align 8, !tbaa !60
  store i64 %i.p, ptr %i.h, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !58
  store ptr %i.j, ptr %i.g, align 8, !tbaa !57
  store i64 0, ptr %i.q, align 8, !tbaa !58
  store i8 0, ptr %i.j, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !59
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !57   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !58  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !57
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !60
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !60
  br label %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i

_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !58
  store ptr %i.x, ptr %i.u, align 8, !tbaa !57
  store i64 0, ptr %i.ae, align 8, !tbaa !58
  store i8 0, ptr %i.x, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !235
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !235
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !509
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !509
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !59
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = load i64, ptr %i.at, align 8, !tbaa !58 ; 2 uses
  %i.av = icmp ult i64 %i.au, 16
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !57
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !60
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !60
  br label %_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit

_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !58
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !58
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !57
  store i64 0, ptr %i.ay, align 8, !tbaa !58
  store i8 0, ptr %i.ar, align 8, !tbaa !60
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !514
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 128 ; 2 uses
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !514
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN5boost20read_graphviz_detail13edge_endpointESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !529
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit
  %i.bd = phi ptr [ %.pre, %bb.f ], [ %i.bc, %_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit ]
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -128
  ret ptr %i.be
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost20read_graphviz_detail13edge_endpointESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !514  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !512    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost20read_graphviz_detail13edge_endpointESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
  unreachable

_ZNKSt6vectorIN5boost20read_graphviz_detail13edge_endpointESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 7                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 72057594037927935)
  %i.l = select i1 %i.j, i64 72057594037927935, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 7
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 12 uses
  %i.r = load i8, ptr %2, align 8, !tbaa !506, !range !283, !noundef !108
  store i8 %i.r, ptr %i.q, align 8, !tbaa !506
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !59
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !57   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail13edge_endpointESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !58   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail13edge_endpointESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !57
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !60
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !60
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.ad = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.z, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !58
  store ptr %i.w, ptr %i.t, align 8, !tbaa !57
  store i64 0, ptr %i.ae, align 8, !tbaa !58
  store i8 0, ptr %i.w, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !59
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !57 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !58 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !57
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !60
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !60
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre42 = load i64, ptr %.phi.trans.insert41, align 8, !tbaa !58
  br label %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i

_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i, %bb.d
  %i.ar = phi i64 [ %.pre42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i ], [ %i.an, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !58
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !57
  store i64 0, ptr %i.as, align 8, !tbaa !58
  store i8 0, ptr %i.ak, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !235
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !235
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !509
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !509
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !59
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !58 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !57
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !60
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !60
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre44 = load i64, ptr %.phi.trans.insert43, align 8, !tbaa !58
  br label %_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit

_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bl = phi i64 [ %i.bh, %bb.e ], [ %.pre44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !58
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !57
  store i64 0, ptr %i.bm, align 8, !tbaa !58
  store i8 0, ptr %i.be, align 8, !tbaa !60
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5boost20read_graphviz_detail13edge_endpointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail13edge_endpointES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.dm, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail13edge_endpointES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit ] ; 13 uses
  %.0911.i.i.i = phi ptr [ %i.dl, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail13edge_endpointES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN5boost20read_graphviz_detail13edge_endpointC2EOS1_.exit ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %i.bo = load i8, ptr %.0911.i.i.i, align 8, !tbaa !506, !range !283, !alias.scope !1403, !noalias !1402, !noundef !108
  store i8 %i.bo, ptr %.012.i.i.i, align 8, !tbaa !506, !alias.scope !1402, !noalias !1403
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !59, !alias.scope !1402, !noalias !1403
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !57, !alias.scope !1403, !noalias !1402 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !58, !alias.scope !1403, !noalias !1402 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false), !alias.scope !1404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !57, !alias.scope !1402, !noalias !1403
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !60, !alias.scope !1403, !noalias !1402
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !60, !alias.scope !1402, !noalias !1403
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !58, !alias.scope !1403, !noalias !1402
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.f
  %i.ca = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.bw, %bb.f ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !58, !alias.scope !1402, !noalias !1403
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !57, !alias.scope !1403, !noalias !1402
  store i64 0, ptr %i.cb, align 8, !tbaa !58, !alias.scope !1403, !noalias !1402
  store i8 0, ptr %i.bt, align 8, !tbaa !60, !alias.scope !1403, !noalias !1402
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 3 uses
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !59, !alias.scope !1402, !noalias !1403
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !57, !alias.scope !1403, !noalias !1402 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !58, !alias.scope !1403, !noalias !1402 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false), !alias.scope !1404
  br label %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !57, !alias.scope !1402, !noalias !1403
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !60, !alias.scope !1403, !noalias !1402
  store i64 %i.cn, ptr %i.cf, align 8, !tbaa !60, !alias.scope !1402, !noalias !1403
  %.phi.trans.insert6.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %.pre7.i.i.i.i = load i64, ptr %.phi.trans.insert6.i.i.i.i, align 8, !tbaa !58, !alias.scope !1403, !noalias !1402
  br label %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i.i.i.i.i

_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i, %bb.g
  %i.co = phi i64 [ %.pre7.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i ], [ %i.ck, %bb.g ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !58, !alias.scope !1402, !noalias !1403
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !57, !alias.scope !1403, !noalias !1402
  store i64 0, ptr %i.cp, align 8, !tbaa !58, !alias.scope !1403, !noalias !1402
  store i8 0, ptr %i.ch, align 8, !tbaa !60, !alias.scope !1403, !noalias !1402
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ct = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !235, !alias.scope !1403, !noalias !1402
  store <2 x ptr> %i.ct, ptr %i.cr, align 8, !tbaa !235, !alias.scope !1402, !noalias !1403
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
end_hunk_6
begin_hunk_7_@_ZN5boost20read_graphviz_detail9edge_infoC2EOS1_:bb.a
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i6

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i5
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !58 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false)
  br label %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i5
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !57
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !60
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !60
  br label %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit7

_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i6
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !58
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !57
  store i64 0, ptr %i.bf, align 8, !tbaa !58
  store i8 0, ptr %i.ay, align 8, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !235
  store <2 x ptr> %i.bk, ptr %i.bi, align 8, !tbaa !235
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !509
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !509
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit7
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !71
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bx = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !133
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !133
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bo, ptr %i.by, align 8, !tbaa !138
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !74
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !74
  store ptr null, ptr %i.bp, align 8, !tbaa !71
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !72
  store ptr %i.br, ptr %i.bw, align 8, !tbaa !73
  store i64 0, ptr %i.bz, align 8, !tbaa !74
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2EOSC_.exit

bb.g:                                             ; preds = %_ZN5boost20read_graphviz_detail13node_and_portC2EOS1_.exit7
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.cc, align 8, !tbaa !71
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.bo, ptr %i.cd, align 8, !tbaa !72
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.bo, ptr %i.ce, align 8, !tbaa !73
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.cf, align 8, !tbaa !74
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2EOSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2EOSC_.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.bs, %bb.f ]
  store i32 %.sink.i.i.i.i, ptr %i.bo, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN5boost20read_graphviz_detail13node_and_portES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
  tail call void @_ZNSt8_Rb_treeIN5boost20read_graphviz_detail13node_and_portES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203  ; 2 uses
  tail call void @_ZNSt8_Rb_treeIN5boost20read_graphviz_detail13node_and_portES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.07) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 120) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1429

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN5boost20read_graphviz_detail13node_and_portES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !60
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !131
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !509
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !60
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN5boost20read_graphviz_detail13node_and_portD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !60
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #29
  br label %_ZN5boost20read_graphviz_detail13node_and_portD2Ev.exit

_ZN5boost20read_graphviz_detail13node_and_portD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !103    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
  unreachable

_ZNKSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i8, ptr %2, align 8, !tbaa !508, !range !283, !noundef !108
  store i8 %i.r, ptr %i.q, align 8, !tbaa !508
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !59
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !57   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !58   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZN5boost20read_graphviz_detail20node_or_subgraph_refC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !57
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !60
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !60
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %_ZN5boost20read_graphviz_detail20node_or_subgraph_refC2EOS1_.exit

_ZN5boost20read_graphviz_detail20node_or_subgraph_refC2EOS1_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !58
  store ptr %i.w, ptr %i.t, align 8, !tbaa !57
  store i64 0, ptr %i.ae, align 8, !tbaa !58
  store i8 0, ptr %i.w, align 8, !tbaa !60
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost20read_graphviz_detail20node_or_subgraph_refC2EOS1_.exit, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN5boost20read_graphviz_detail20node_or_subgraph_refC2EOS1_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN5boost20read_graphviz_detail20node_or_subgraph_refC2EOS1_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.ag = load i8, ptr %.0911.i.i.i, align 8, !tbaa !508, !range !283, !alias.scope !1438, !noalias !1437, !noundef !108
  store i8 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !508, !alias.scope !1437, !noalias !1438
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !59, !alias.scope !1437, !noalias !1438
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !57, !alias.scope !1438, !noalias !1437 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !58, !alias.scope !1438, !noalias !1437 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !1439
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !57, !alias.scope !1437, !noalias !1438
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !60, !alias.scope !1438, !noalias !1437
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !60, !alias.scope !1437, !noalias !1438
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !58, !alias.scope !1438, !noalias !1437
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.as, ptr %i.au, align 8, !tbaa !58, !alias.scope !1437, !noalias !1438
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !57, !alias.scope !1438, !noalias !1437
  store i64 0, ptr %i.at, align 8, !tbaa !58, !alias.scope !1438, !noalias !1437
  store i8 0, ptr %i.al, align 8, !tbaa !60, !alias.scope !1438, !noalias !1437
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1433

_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN5boost20read_graphviz_detail20node_or_subgraph_refC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN5boost20read_graphviz_detail20node_or_subgraph_refC2EOS1_.exit ], [ %i.aw, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ax, %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  %i.ay = load i8, ptr %.0911.i.i.i19, align 8, !tbaa !508, !range !283, !alias.scope !1441, !noalias !1440, !noundef !108
  store i8 %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !508, !alias.scope !1440, !noalias !1441
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !59, !alias.scope !1440, !noalias !1441
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !57, !alias.scope !1441, !noalias !1440 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !58, !alias.scope !1441, !noalias !1440 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false), !alias.scope !1442
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !57, !alias.scope !1440, !noalias !1441
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !60, !alias.scope !1441, !noalias !1440
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !60, !alias.scope !1440, !noalias !1441
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !58, !alias.scope !1441, !noalias !1440
  br label %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bk = phi i64 [ %i.bg, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !58, !alias.scope !1440, !noalias !1441
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !57, !alias.scope !1441, !noalias !1440
  store i64 0, ptr %i.bl, align 8, !tbaa !58, !alias.scope !1441, !noalias !1440
  store i8 0, ptr %i.bd, align 8, !tbaa !60, !alias.scope !1441, !noalias !1440
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !1433

_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26: ; preds = %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ax, %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bo, %_ZSt19__relocate_object_aIN5boost20read_graphviz_detail20node_or_subgraph_refES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #29
  br label %_ZNSt12_Vector_baseIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5boost20read_graphviz_detail20node_or_subgraph_refESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !103
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !104
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S5_St4lessIS5_ESaIS6_IS7_S5_EEEESt10_Select1stISE_ESA_SaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S5_St4lessIS5_ESaIS6_IS7_S5_EEEESt10_Select1stISE_ESA_SaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S5_St4lessIS5_ESaIS6_IS7_S5_EEEESt10_Select1stISE_ESA_SaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S5_St4lessIS5_ESaIS6_IS7_S5_EEEESt10_Select1stISE_ESA_SaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i.i: ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S5_St4lessIS5_ESaIS6_IS7_S5_EEEESt10_Select1stISE_ESA_SaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !60
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S5_St4lessIS5_ESaIS6_IS7_S5_EEEESt10_Select1stISE_ESA_SaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit

end_hunk_7
