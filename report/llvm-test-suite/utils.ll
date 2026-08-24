Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/utils?download=true
inline.NumInlined: 299
inline.NumDeleted: 68
begin_hunk_0_@_ZN6miniFE14get_parametersEiPPcRNS_10ParametersE:bb.a
  %i.kr = load ptr, ptr %23, align 8, !tbaa !16   ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.gw
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.aq
  %i.kt = load i64, ptr %i.gw, align 8, !tbaa !15
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #12
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %bb.f
  %.pn71.pn = phi { ptr, i32 } [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ %i.kg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %i.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.an, %bb.f ] ; 2 uses
  %i.kv = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %bb.ar
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !15
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.pn71.pn.pn = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn71.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256 ], [ %.pn71.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.la = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.q
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %i.lc = load i64, ptr %i.q, align 8, !tbaa !15
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, %bb.d
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261 ], [ %i.ah, %bb.d ]
  %i.le = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.o
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %bb.as
  %i.lg = load i64, ptr %i.o, align 8, !tbaa !15
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn71.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN7Mantevo21read_args_into_stringEiPPcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7Mantevo15parse_parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS6_S9_RKS7_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 18 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !12
  %i.i = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, i64 noundef 0, i64 noundef %i.h) #12 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !8
  %i.l = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !12   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i64 %i.n, ptr %i.e, align 8, !tbaa !25
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !16
  %i.q = load i64, ptr %i.e, align 8, !tbaa !25
  store i64 %i.q, ptr %i.k, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.r = phi ptr [ %i.p, %.noexc.i ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !15
  store i8 %i.s, ptr %i.r, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !12
  %i.v = load ptr, ptr %0, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.ad

bb.e:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.g, align 8, !tbaa !12
  %i.y = add i64 %i.x, %i.i                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !12  ; 7 uses
  %.not = icmp ugt i64 %i.aa, %i.y
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %i.ab = load ptr, ptr %1, align 8, !tbaa !16    ; 3 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !8
  %i.ad = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i64 %i.af, ptr %i.d, align 8, !tbaa !25
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i39, label %._crit_edge.i.i38

.noexc.i39:                                       ; preds = %bb.f
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !16
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !25
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !15
  br label %._crit_edge.i.i38

._crit_edge.i.i38:                                ; preds = %.noexc.i39, %bb.f
  %i.aj = phi ptr [ %i.ah, %.noexc.i39 ], [ %i.ac, %bb.f ] ; 2 uses
  switch i64 %i.af, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit40
  ]

bb.g:                                             ; preds = %._crit_edge.i.i38
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !15
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit40

bb.h:                                             ; preds = %._crit_edge.i.i38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit40: ; preds = %._crit_edge.i.i38, %bb.g, %bb.h
  %i.al = load i64, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !12
  %i.an = load ptr, ptr %0, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.ad

bb.i:                                             ; preds = %.preheader, %.critedge2
  %.03258 = phi i64 [ %i.y, %.preheader ], [ %i.ar, %.critedge2 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.03258
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.aq, label %.critedge [
    i8 32, label %.critedge2
    i8 61, label %.critedge2
    i8 58, label %.critedge2
  ]

.critedge2:                                       ; preds = %bb.i, %bb.i, %bb.i
  %i.ar = add i64 %.03258, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.aa
  br i1 %exitcond.not, label %.critedge2..critedge_crit_edge, label %bb.i, !llvm.loop !35

.critedge2..critedge_crit_edge:                   ; preds = %.critedge2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !15
  br label %.critedge, !llvm.loop !35

.critedge:                                        ; preds = %bb.i, %.critedge2..critedge_crit_edge
  %i.as = phi i8 [ %.pre, %.critedge2..critedge_crit_edge ], [ %i.aq, %bb.i ]
  %.032.lcssa = phi i64 [ %i.aa, %.critedge2..critedge_crit_edge ], [ %.03258, %bb.i ] ; 2 uses
  switch i8 %i.as, label %bb.k [
    i8 61, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %.critedge, %.critedge
  %i.at = add i64 %.032.lcssa, 1
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.j
  %.133 = phi i64 [ %i.at, %bb.j ], [ %.032.lcssa, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.au = icmp ugt i64 %.133, %i.aa
  br i1 %i.au, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i64 noundef %.133, i64 noundef %i.aa) #14, !noalias !37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.av, ptr %4, align 8, !tbaa !8, !alias.scope !37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.133 ; 2 uses
  %i.ax = sub nuw i64 %i.aa, %.133                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !37
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !25, !noalias !37
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.az, ptr %4, align 8, !tbaa !16, !alias.scope !37
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !25, !noalias !37
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !15, !alias.scope !37
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bb = phi ptr [ %i.az, %.noexc10.i.i ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.ax, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !15
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.aw, i64 %i.ax, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.m, %bb.n
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !25, !noalias !37 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !12, !alias.scope !37
  %i.bf = load ptr, ptr %4, align 8, !tbaa !16, !alias.scope !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  store ptr %i.bh, ptr %6, align 8, !tbaa !8
  %i.bi = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 %i.bk, ptr %i.b, align 8, !tbaa !25
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %.noexc.i42, label %._crit_edge.i.i41

.noexc.i42:                                       ; preds = %bb.o
  %i.bm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %.noexc.i42
  store ptr %i.bm, ptr %6, align 8, !tbaa !16
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !15
  br label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %.noexc, %bb.o
  %i.bo = phi ptr [ %i.bm, %.noexc ], [ %i.bh, %bb.o ] ; 2 uses
  switch i64 %i.bk, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i41
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !15
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bi, i64 %i.bk, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i41
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !12
  %i.bs = load ptr, ptr %6, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.bu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.s unwind label %bb.y       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %5, align 8, !tbaa !40
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %5, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !42
  %i.cb = and i32 %i.ca, 5
  %.not57 = icmp eq i32 %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !8
  br i1 %.not57, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ce = load i64, ptr %i.bj, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !25
  %i.cf = icmp ugt i64 %i.ce, 15
  br i1 %i.cf, label %.noexc.i45, label %._crit_edge.i.i44

.noexc.i45:                                       ; preds = %bb.t
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc46 unwind label %bb.y   ; 2 uses

.noexc46:                                         ; preds = %.noexc.i45
  store ptr %i.cg, ptr %0, align 8, !tbaa !16
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !15
  br label %._crit_edge.i.i44

._crit_edge.i.i44:                                ; preds = %.noexc46, %bb.t
  %i.ci = phi ptr [ %i.cg, %.noexc46 ], [ %i.cc, %bb.t ] ; 2 uses
  switch i64 %i.ce, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.ab
  ]

bb.u:                                             ; preds = %._crit_edge.i.i44
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !15
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !15
  br label %bb.ab

bb.v:                                             ; preds = %._crit_edge.i.i44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.cd, i64 %i.ce, i1 false)
  br label %bb.ab

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.x:                                             ; preds = %.noexc.i42
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.y:                                             ; preds = %.noexc.i45, %bb.r
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bh
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.cp = load i64, ptr %i.bh, align 8, !tbaa !15
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.z:                                             ; preds = %bb.s
  %i.cr = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bh
  br i1 %i.cs, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ct = load i64, ptr %i.br, align 8, !tbaa !12 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nuw nsw i64 %i.ct, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.cv, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.z
  store ptr %i.cr, ptr %0, align 8, !tbaa !16
  %i.cw = load i64, ptr %i.bh, align 8, !tbaa !15
  store i64 %i.cw, ptr %i.cc, align 8, !tbaa !15
  %.pre59 = load i64, ptr %i.br, align 8, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.aa
  %i.cx = phi i64 [ %i.ct, %bb.aa ], [ %.pre59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !12
  store ptr %i.bh, ptr %6, align 8, !tbaa !16
  store i64 0, ptr %i.br, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.ab:                                            ; preds = %bb.v, %bb.u, %._crit_edge.i.i44
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !12
  %i.db = load ptr, ptr %0, align 8, !tbaa !16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  store i8 0, ptr %i.dc, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.pre60 = load ptr, ptr %6, align 8, !tbaa !16  ; 2 uses
  %i.dd = icmp eq ptr %.pre60, %i.bh
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.ab
  %i.de = load i64, ptr %i.bh, align 8, !tbaa !15
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %.pre60, i64 noundef %i.df) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.ab, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.dg = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dg, ptr %5, align 8, !tbaa !40
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.di = getelementptr i8, ptr %i.dg, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %5, i64 %i.dj
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dl, align 8, !tbaa !40
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !15
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #13
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dl, align 8, !tbaa !40
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ds) #12
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.dt, ptr %5, align 8, !tbaa !40
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.dv = getelementptr i8, ptr %i.dt, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %5, i64 %i.dw
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !40
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.dy, align 8, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dz) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.ea = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.av
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ec = load i64, ptr %i.av, align 8, !tbaa !15
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.x ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cm, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %5) #12
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ck, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.ee = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.av
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.ac
  %i.eg = load i64, ptr %i.av, align 8, !tbaa !15
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn.pn

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

declare void @_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7Mantevo15parse_parameterIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 18 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12
  %i.f = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c, i64 noundef 0, i64 noundef %i.e) #12 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %2, align 4, !tbaa !4
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !12
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !12   ; 7 uses
  %.not = icmp ugt i64 %i.l, %i.j
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %2, align 4, !tbaa !4
  br label %bb.p

bb.e:                                             ; preds = %.preheader, %.critedge2
  %.03242 = phi i64 [ %i.j, %.preheader ], [ %i.q, %.critedge2 ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.03242
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15    ; 2 uses
  switch i8 %i.p, label %.critedge [
    i8 32, label %.critedge2
    i8 61, label %.critedge2
    i8 58, label %.critedge2
  ]

.critedge2:                                       ; preds = %bb.e, %bb.e, %bb.e
  %i.q = add i64 %.03242, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.l
  br i1 %exitcond.not, label %.critedge2..critedge_crit_edge, label %bb.e, !llvm.loop !53

.critedge2..critedge_crit_edge:                   ; preds = %.critedge2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !15
  br label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %bb.e, %.critedge2..critedge_crit_edge
  %i.r = phi i8 [ %.pre, %.critedge2..critedge_crit_edge ], [ %i.p, %bb.e ]
  %.032.lcssa = phi i64 [ %i.l, %.critedge2..critedge_crit_edge ], [ %.03242, %bb.e ] ; 2 uses
  switch i8 %i.r, label %bb.g [
    i8 61, label %bb.f
    i8 58, label %bb.f
  ]

bb.f:                                             ; preds = %.critedge, %.critedge
  %i.s = add i64 %.032.lcssa, 1
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %.1 = phi i64 [ %i.s, %bb.f ], [ %.032.lcssa, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.t = icmp ugt i64 %.1, %i.l
  br i1 %i.t, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i64 noundef %.1, i64 noundef %i.l) #14, !noalias !54
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !8, !alias.scope !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %.1 ; 2 uses
  %i.w = sub nuw i64 %i.l, %.1                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !54
  store i64 %i.w, ptr %i.a, align 8, !tbaa !25, !noalias !54
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !16, !alias.scope !54
  %i.z = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !54
  store i64 %i.z, ptr %i.u, align 8, !tbaa !15, !alias.scope !54
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.aa = phi ptr [ %i.y, %.noexc10.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.w, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !15
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.v, i64 %i.w, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !54 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !12, !alias.scope !54
  %i.ae = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ag = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !4
  %i.ah = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %4, align 8, !tbaa !40
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %4, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !42
  %i.ao = and i32 %i.an, 5
  %.not41 = icmp eq i32 %i.ao, 0
  %. = select i1 %.not41, ptr %i.b, ptr %2
  %.033 = load i32, ptr %., align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ap = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !40
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %4, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.au, align 8, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !15
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #13
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.au, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #12
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !40
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %4, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bi) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bj = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.u
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bl = load i64, ptr %i.u, align 8, !tbaa !15
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.p

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %i.bn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.u
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.o
  %i.br = load i64, ptr %i.u, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %bb.b
  %.134 = phi i32 [ %i.h, %bb.b ], [ %i.n, %bb.d ], [ %.033, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i32 %.134
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN7Mantevo15parse_parameterIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 18 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12
  %i.f = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c, i64 noundef 0, i64 noundef %i.e) #12 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load float, ptr %2, align 4, !tbaa !22
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !12
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !12   ; 7 uses
  %.not = icmp ugt i64 %i.l, %i.j
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load float, ptr %2, align 4, !tbaa !22
  br label %bb.p

bb.e:                                             ; preds = %.preheader, %.critedge2
  %.03242 = phi i64 [ %i.j, %.preheader ], [ %i.q, %.critedge2 ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.03242
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15    ; 2 uses
  switch i8 %i.p, label %.critedge [
    i8 32, label %.critedge2
    i8 61, label %.critedge2
    i8 58, label %.critedge2
  ]

.critedge2:                                       ; preds = %bb.e, %bb.e, %bb.e
  %i.q = add i64 %.03242, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.l
  br i1 %exitcond.not, label %.critedge2..critedge_crit_edge, label %bb.e, !llvm.loop !57

.critedge2..critedge_crit_edge:                   ; preds = %.critedge2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !15
  br label %.critedge, !llvm.loop !57

.critedge:                                        ; preds = %bb.e, %.critedge2..critedge_crit_edge
  %i.r = phi i8 [ %.pre, %.critedge2..critedge_crit_edge ], [ %i.p, %bb.e ]
  %.032.lcssa = phi i64 [ %i.l, %.critedge2..critedge_crit_edge ], [ %.03242, %bb.e ] ; 2 uses
  switch i8 %i.r, label %bb.g [
    i8 61, label %bb.f
    i8 58, label %bb.f
  ]

bb.f:                                             ; preds = %.critedge, %.critedge
  %i.s = add i64 %.032.lcssa, 1
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %.1 = phi i64 [ %i.s, %bb.f ], [ %.032.lcssa, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.t = icmp ugt i64 %.1, %i.l
  br i1 %i.t, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i64 noundef %.1, i64 noundef %i.l) #14, !noalias !58
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !8, !alias.scope !58
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %.1 ; 2 uses
  %i.w = sub nuw i64 %i.l, %.1                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !58
  store i64 %i.w, ptr %i.a, align 8, !tbaa !25, !noalias !58
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !16, !alias.scope !58
  %i.z = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !58
  store i64 %i.z, ptr %i.u, align 8, !tbaa !15, !alias.scope !58
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.aa = phi ptr [ %i.y, %.noexc10.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.w, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !15
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.v, i64 %i.w, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !12, !alias.scope !58
  %i.ae = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ag = load float, ptr %2, align 4, !tbaa !22
  store float %i.ag, ptr %i.b, align 4, !tbaa !22
  %i.ah = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %4, align 8, !tbaa !40
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %4, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !42
  %i.ao = and i32 %i.an, 5
  %.not41 = icmp eq i32 %i.ao, 0
  %. = select i1 %.not41, ptr %i.b, ptr %2
  %.033 = load float, ptr %., align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ap = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !40
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %4, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.au, align 8, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !15
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #13
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.au, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #12
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !40
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %4, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bi) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bj = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.u
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bl = load i64, ptr %i.u, align 8, !tbaa !15
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.p

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %i.bn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.u
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.o
  %i.br = load i64, ptr %i.u, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %bb.b
  %.134 = phi float [ %i.h, %bb.b ], [ %i.n, %bb.d ], [ %.033, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret float %.134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6miniFE20broadcast_parametersERNS_10ParametersE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(92) %0) local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6miniFE14initialize_mpiEiPPcRiS2_(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #4 {
bb.a:
  store i32 1, ptr %2, align 4, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6miniFE12finalize_mpiEv() local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5
end_hunk_0
