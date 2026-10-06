Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parser?download=true
inline.NumInlined: 5493
inline.NumDeleted: 1043
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEaSEOS7_:bb.a

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph74.prol.loopexit, %vec.epilog.scalar.ph74, %middle.block70, %vec.epilog.middle.block83, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit
  store i64 %i.ee, ptr %i.d, align 8, !tbaa !161
  br label %bb.g

vec.epilog.scalar.ph74:                           ; preds = %vec.epilog.scalar.ph74.prol.loopexit, %vec.epilog.scalar.ph74
  %.029 = phi i64 [ %i.gn, %vec.epilog.scalar.ph74 ], [ %.029.unr, %vec.epilog.scalar.ph74.prol.loopexit ] ; 10 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.029
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.029
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !164
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !164
  %i.fl = add nuw i64 %.029, 1                    ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fl
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !164
  store ptr %i.fo, ptr %i.fm, align 8, !tbaa !164
  %i.fp = add nuw i64 %.029, 2                    ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fp
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !164
  store ptr %i.fs, ptr %i.fq, align 8, !tbaa !164
  %i.ft = add nuw i64 %.029, 3                    ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ft
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !164
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !164
  %i.fx = add nuw i64 %.029, 4                    ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fx
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !164
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !164
  %i.gb = add nuw i64 %.029, 5                    ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.gb
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !164
  store ptr %i.ge, ptr %i.gc, align 8, !tbaa !164
  %i.gf = add nuw i64 %.029, 6                    ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.gf
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !164
  store ptr %i.gi, ptr %i.gg, align 8, !tbaa !164
  %i.gj = add nuw i64 %.029, 7                    ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.gj
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !164
  store ptr %i.gm, ptr %i.gk, align 8, !tbaa !164
  %i.gn = add nuw i64 %.029, 8                    ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gn, %i.ee
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph74, !llvm.loop !1530

bb.g:                                             ; preds = %._crit_edge, %.loopexit, %bb.c, %bb.a
  ret ptr %0
}

declare void @_ZNK4pbrt19ParameterDictionary15GetPoint2fArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector.152") align 8, ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN4pbrtL17upgradeTriMeshUVsB5cxx11ERKNS_22FormattingParserTargetEPNS_19ParameterDictionaryEENK3$_0clEPKc"(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::vector.89", align 8    ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::vector.152", align 8   ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.c = load ptr, ptr %.0.val, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !41
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.284) #34
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.f, ptr %i.b, align 8, !tbaa !48
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc19 unwind label %bb.h   ; 2 uses

.noexc19:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8, !tbaa !45
  %i.i = load i64, ptr %i.b, align 8, !tbaa !48
  store i64 %i.i, ptr %i.d, align 8, !tbaa !44
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc19, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc19 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %0, align 1, !tbaa !44
  store i8 %i.k, ptr %i.j, align 1, !tbaa !44
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %0, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !43
  %i.n = load ptr, ptr %2, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  invoke void @_ZNK4pbrt19ParameterDictionary13GetFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.89") align 8 %1, ptr noundef nonnull align 8 dereferenceable(108) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.r = load i64, ptr %i.d, align 8, !tbaa !44
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.t = load ptr, ptr %1, align 8, !tbaa !179    ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !179  ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.y, label %bb.j

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !44
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.h
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit43

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ad = ptrtoint ptr %i.v to i64
  %i.ae = ptrtoint ptr %i.t to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 2 uses
  %i.ah = lshr i64 %i.ag, 1                       ; 3 uses
  %i.ai = icmp ugt i64 %i.ag, 2305843009213693951
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.320) #34
          to label %.noexc23 unwind label %bb.o

.noexc23:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not37 = icmp eq i64 %i.ah, 0
  br i1 %.not37, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.l
  %i.ak = shl nuw nsw i64 %i.ah, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #38
          to label %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.o ; 4 uses

_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE11_M_allocateEm.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre9.pre = load ptr, ptr %1, align 8, !tbaa !177 ; 2 uses
  %.pre.pre = load ptr, ptr %i.u, align 8, !tbaa !176
  store ptr %i.al, ptr %3, align 8, !tbaa !213
  store ptr %i.al, ptr %i.am, align 8, !tbaa !212
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ah
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !214
  %.pre12 = ptrtoint ptr %.pre.pre to i64
  %.pre13 = ptrtoint ptr %.pre9.pre to i64
  %.pre15 = sub i64 %.pre12, %.pre13
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE7reserveEm.exit: ; preds = %bb.l, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.pre-phi16 = phi i64 [ %i.af, %bb.l ], [ %.pre15, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.ao = phi ptr [ null, %bb.l ], [ %i.al, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.ap = phi ptr [ %i.t, %bb.l ], [ %.pre9.pre, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %.not = icmp ult i64 %.pre-phi16, 5
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE7reserveEm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE7reserveEm.exit
  %i.ar = load ptr, ptr %.0.val, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !41
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.at, ptr %i.a, align 8, !tbaa !48
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %.noexc.i26, label %._crit_edge.i.i25

.noexc.i26:                                       ; preds = %._crit_edge
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.aa  ; 2 uses

.noexc28:                                         ; preds = %.noexc.i26
  store ptr %i.av, ptr %4, align 8, !tbaa !45
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !44
  br label %._crit_edge.i.i25

._crit_edge.i.i25:                                ; preds = %.noexc28, %._crit_edge
  %i.ax = phi ptr [ %i.av, %.noexc28 ], [ %i.as, %._crit_edge ] ; 2 uses
  switch i64 %i.at, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.u
  ]

bb.m:                                             ; preds = %._crit_edge.i.i25
  %i.ay = load i8, ptr %0, align 1, !tbaa !44
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !44
  br label %bb.u

bb.n:                                             ; preds = %._crit_edge.i.i25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr nonnull align 1 %0, i64 %i.at, i1 false)
  br label %bb.u

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE11_M_allocateEm.exit.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit
  %i.ba = phi ptr [ %i.ao, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.bb = phi ptr [ %i.ap, %.lr.ph ], [ %i.cy, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit ]
  %.08 = phi i64 [ 0, %.lr.ph ], [ %i.cw, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.idx = shl nuw i64 %.08, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !33 ; 2 uses
  %5 = load ptr, ptr %i.aj, align 8, !tbaa !214
  %.not.i.i = icmp eq ptr %i.ba, %5
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store <2 x float> %i.bd, ptr %i.ba, align 4
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !212
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.aq, align 8, !tbaa !212
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit

bb.r:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %3, align 8, !tbaa !213   ; 9 uses
  %i.bh = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.s, label %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #34
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #38
          to label %.noexc32 unwind label %.loopexit ; 10 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store <2 x float> %i.bd, ptr %i.bs, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.ba
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc32
  %i.bt = ptrtoaddr ptr %i.br to i64
  %i.bu = add i64 %i.bh, -8
  %i.bv = sub i64 %i.bu, %i.bi                    ; 3 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bv, 24
  %i.by = sub i64 %i.bi, %i.bt
  %diff.check = icmp ugt i64 %i.by, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i64 %i.bv, 120
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.bx, 12
  %n.vec = and i64 %i.bx, 4611686018427387888     ; 4 uses
  %i.ca = shl i64 %n.vec, 3                       ; 2 uses
  %i.cb = getelementptr i8, ptr %i.br, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bg, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.cd ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.bg, i64 %i.cd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %i.ce = getelementptr i8, ptr %next.gep39, i64 32
  %i.cf = getelementptr i8, ptr %next.gep39, i64 64
  %i.cg = getelementptr i8, ptr %next.gep39, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep39, align 4, !alias.scope !1539, !noalias !1538
  %wide.load40 = load <4 x i64>, ptr %i.ce, align 4, !alias.scope !1539, !noalias !1538
  %wide.load41 = load <4 x i64>, ptr %i.cf, align 4, !alias.scope !1539, !noalias !1538
  %wide.load42 = load <4 x i64>, ptr %i.cg, align 4, !alias.scope !1539, !noalias !1538
  %i.ch = getelementptr i8, ptr %next.gep, i64 32
  %i.ci = getelementptr i8, ptr %next.gep, i64 64
  %i.cj = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !1538, !noalias !1539
  store <4 x i64> %wide.load40, ptr %i.ch, align 4, !alias.scope !1538, !noalias !1539
  store <4 x i64> %wide.load41, ptr %i.ci, align 4, !alias.scope !1538, !noalias !1539
  store <4 x i64> %wide.load42, ptr %i.cj, align 4, !alias.scope !1538, !noalias !1539
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !1534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !130

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.bx, 4611686018427387900   ; 3 uses
  %i.cl = shl i64 %n.vec44, 3                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.br, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bg, i64 %i.cl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %i.co = shl i64 %index45, 3                     ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.br, i64 %i.co
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.co
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %wide.load48 = load <4 x i64>, ptr %next.gep47, align 4, !alias.scope !1539, !noalias !1538
  store <4 x i64> %wide.load48, ptr %next.gep46, align 4, !alias.scope !1538, !noalias !1539
  %index.next49 = add nuw i64 %index45, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1535

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.bx, %n.vec44
  br i1 %cmp.n50, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.br, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %i.cq = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !1539, !noalias !1538
  store i64 %i.cq, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !1538, !noalias !1539
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.ba
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1536

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc32
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.br, %.noexc32 ], [ %i.cm, %vec.epilog.middle.block ], [ %i.cb, %middle.block ], [ %i.cs, %.lr.ph.i.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bj) #36
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.br, ptr %3, align 8, !tbaa !213
  store ptr %i.ct, ptr %i.aq, align 8, !tbaa !212
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.cu, ptr %i.aj, align 8, !tbaa !214
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.q
  %i.cv = phi ptr [ %i.ct, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bf, %bb.q ]
  %i.cw = add nuw nsw i64 %.08, 1                 ; 2 uses
  %i.cx = load ptr, ptr %i.u, align 8, !tbaa !176
  %i.cy = load ptr, ptr %1, align 8, !tbaa !177   ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 2
  %i.dd = lshr i64 %i.dc, 1
  %i.de = icmp samesign ult i64 %i.cw, %i.dd
  br i1 %i.de, label %bb.p, label %._crit_edge, !llvm.loop !1537

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i25
  %i.df = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !43
  %i.dh = load ptr, ptr %4, align 8, !tbaa !45
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  invoke void @_ZN4pbrt19ParameterDictionary11RemoveFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(108) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.dj = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.as
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.v
  %i.dl = load i64, ptr %i.as, align 8, !tbaa !44
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.dn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.w unwind label %bb.o       ; 0 uses

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.do = load ptr, ptr %3, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = load ptr, ptr %i.aj, align 8, !tbaa !214
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #36
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit:  ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %.pr = load ptr, ptr %1, align 8, !tbaa !177
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit
  %i.dt = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pr, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !178
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void

bb.aa:                                            ; preds = %.noexc.i26
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.ab:                                            ; preds = %bb.u
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.as
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.ab
  %i.ed = load i64, ptr %i.as, align 8, !tbaa !44
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.aa
  %.pn14 = phi { ptr, i32 } [ %i.dz, %bb.aa ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.ea, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.o
  %.pn16 = phi { ptr, i32 } [ %.pn14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.az, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ef = load ptr, ptr %3, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !214
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #36
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.el = load ptr, ptr %1, align 8, !tbaa !177   ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIfSaIfEED2Ev.exit43, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !178
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.eq) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit43

_ZNSt6vectorIfSaIfEED2Ev.exit43:                  ; preds = %bb.ae, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %.pn16, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41 ], [ %.pn16, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !213    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !214
  %i.i = load ptr, ptr %0, align 8, !tbaa !213    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE11_M_allocateEm.exit.i, !prof !194

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !213    ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !214
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #36
  br label %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit

end_hunk_0
