Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZN4pbrt20SimplePathIntegratorC2EibbNS_6CameraENS_7SamplerENS_9PrimitiveESt6vectorINS_5LightESaIS5_EE:bb.a
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !64
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.3 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.3
  store i64 0, ptr %i.dg, align 8, !tbaa !64
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !64
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !64
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i, 5 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.4 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.4
  store i64 0, ptr %i.dj, align 8, !tbaa !64
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !64
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !64
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i, 6 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.5 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.5
  store i64 0, ptr %i.dm, align 8, !tbaa !64
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !64
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !64
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i, 7 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.6 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.6
  store i64 0, ptr %i.dp, align 8, !tbaa !64
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !64
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !64
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %i.bt
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1003

iter.check88:                                     ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i
  store i64 %i.bj, ptr %i.bn, align 8, !tbaa !359
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !358
  %i.ds = add i64 %i.bg, -8
  %i.dt = sub i64 %i.ds, %i.bh                    ; 3 uses
  %i.du = lshr i64 %i.dt, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 5 uses
  %min.iters.check71 = icmp ult i64 %i.dt, 24
  br i1 %min.iters.check71, label %vec.epilog.scalar.ph89.preheader, label %vector.memcheck65

vector.memcheck65:                                ; preds = %iter.check88
  %i.dw = add i64 %i.bg, -8
  %i.dx = sub i64 %i.dw, %i.bh
  %i.dy = and i64 %i.dx, -8
  %i.dz = add i64 %i.dy, 8                        ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.bs, i64 %i.dz
  %scevgep67 = getelementptr i8, ptr %i.be, i64 %i.dz
  %bound068 = icmp ult ptr %i.bs, %scevgep67
  %bound169 = icmp ult ptr %i.be, %scevgep66
  %found.conflict70 = and i1 %bound068, %bound169
  br i1 %found.conflict70, label %vec.epilog.scalar.ph89.preheader, label %vector.main.loop.iter.check72

vector.main.loop.iter.check72:                    ; preds = %vector.memcheck65
  %min.iters.check73 = icmp ult i64 %i.dt, 120
  br i1 %min.iters.check73, label %vec.epilog.ph92, label %vector.ph74

vector.ph74:                                      ; preds = %vector.main.loop.iter.check72
  %i.ea = and i64 %i.dv, 12
  %n.vec75 = and i64 %i.dv, 4611686018427387888   ; 5 uses
  %i.eb = shl i64 %n.vec75, 3
  %i.ec = getelementptr i8, ptr %i.be, i64 %i.eb
  br label %vector.body76

vector.body76:                                    ; preds = %vector.ph74, %vector.body76
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next83, %vector.body76 ] ; 3 uses
  %i.ed = shl i64 %index77, 3
  %next.gep78 = getelementptr i8, ptr %i.be, i64 %i.ed ; 4 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index77 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 64 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 96 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.ee, align 8, !tbaa !64, !alias.scope !1012, !noalias !1013
  store <4 x i64> zeroinitializer, ptr %i.ef, align 8, !tbaa !64, !alias.scope !1012, !noalias !1013
  store <4 x i64> zeroinitializer, ptr %i.eg, align 8, !tbaa !64, !alias.scope !1012, !noalias !1013
  store <4 x i64> zeroinitializer, ptr %i.eh, align 8, !tbaa !64, !alias.scope !1012, !noalias !1013
  %i.ei = getelementptr i8, ptr %next.gep78, i64 32
  %i.ej = getelementptr i8, ptr %next.gep78, i64 64
  %i.ek = getelementptr i8, ptr %next.gep78, i64 96
  %wide.load79 = load <4 x i64>, ptr %next.gep78, align 8, !tbaa !64, !alias.scope !1013
  %wide.load80 = load <4 x i64>, ptr %i.ei, align 8, !tbaa !64, !alias.scope !1013
  %wide.load81 = load <4 x i64>, ptr %i.ej, align 8, !tbaa !64, !alias.scope !1013
  %wide.load82 = load <4 x i64>, ptr %i.ek, align 8, !tbaa !64, !alias.scope !1013
  store <4 x i64> %wide.load79, ptr %i.ee, align 8, !tbaa !64, !alias.scope !1012, !noalias !1013
  store <4 x i64> %wide.load80, ptr %i.ef, align 8, !tbaa !64, !alias.scope !1012, !noalias !1013
  store <4 x i64> %wide.load81, ptr %i.eg, align 8, !tbaa !64, !alias.scope !1012, !noalias !1013
  store <4 x i64> %wide.load82, ptr %i.eh, align 8, !tbaa !64, !alias.scope !1012, !noalias !1013
  %index.next83 = add nuw i64 %index77, 16        ; 2 uses
  %i.el = icmp eq i64 %index.next83, %n.vec75
  br i1 %i.el, label %middle.block84, label %vector.body76, !llvm.loop !1007

middle.block84:                                   ; preds = %vector.body76
  %cmp.n85 = icmp eq i64 %i.dv, %n.vec75
  br i1 %cmp.n85, label %.loopexit, label %vec.epilog.iter.check90

vec.epilog.iter.check90:                          ; preds = %middle.block84
  %min.epilog.iters.check91 = icmp eq i64 %i.ea, 0
  br i1 %min.epilog.iters.check91, label %vec.epilog.scalar.ph89.preheader, label %vec.epilog.ph92, !prof !68

vec.epilog.ph92:                                  ; preds = %vector.main.loop.iter.check72, %vec.epilog.iter.check90
  %vec.epilog.resume.val86 = phi i64 [ %n.vec75, %vec.epilog.iter.check90 ], [ 0, %vector.main.loop.iter.check72 ]
  %n.vec93 = and i64 %i.dv, 4611686018427387900   ; 4 uses
  %i.em = shl i64 %n.vec93, 3
  %i.en = getelementptr i8, ptr %i.be, i64 %i.em
  br label %vec.epilog.vector.body94

vec.epilog.vector.body94:                         ; preds = %vec.epilog.vector.body94, %vec.epilog.ph92
  %index95 = phi i64 [ %vec.epilog.resume.val86, %vec.epilog.ph92 ], [ %index.next98, %vec.epilog.vector.body94 ] ; 3 uses
  %i.eo = shl i64 %index95, 3
  %next.gep96 = getelementptr i8, ptr %i.be, i64 %i.eo
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index95 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.ep, align 8, !tbaa !64, !alias.scope !1012, !noalias !1013
  %wide.load97 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !64, !alias.scope !1013
  store <4 x i64> %wide.load97, ptr %i.ep, align 8, !tbaa !64, !alias.scope !1012, !noalias !1013
  %index.next98 = add nuw i64 %index95, 4         ; 2 uses
  %i.eq = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.eq, label %vec.epilog.middle.block99, label %vec.epilog.vector.body94, !llvm.loop !1008

vec.epilog.middle.block99:                        ; preds = %vec.epilog.vector.body94
  %cmp.n100 = icmp eq i64 %i.dv, %n.vec93
  br i1 %cmp.n100, label %.loopexit, label %vec.epilog.scalar.ph89.preheader

vec.epilog.scalar.ph89.preheader:                 ; preds = %iter.check88, %vector.memcheck65, %vec.epilog.iter.check90, %vec.epilog.middle.block99
  %.013.i.i.ph = phi ptr [ %i.be, %iter.check88 ], [ %i.be, %vector.memcheck65 ], [ %i.ec, %vec.epilog.iter.check90 ], [ %i.en, %vec.epilog.middle.block99 ]
  %.01012.i.i.ph = phi i64 [ 0, %iter.check88 ], [ 0, %vector.memcheck65 ], [ %n.vec75, %vec.epilog.iter.check90 ], [ %n.vec93, %vec.epilog.middle.block99 ]
  br label %vec.epilog.scalar.ph89

vec.epilog.scalar.ph89:                           ; preds = %vec.epilog.scalar.ph89.preheader, %vec.epilog.scalar.ph89
  %.013.i.i = phi ptr [ %i.et, %vec.epilog.scalar.ph89 ], [ %.013.i.i.ph, %vec.epilog.scalar.ph89.preheader ] ; 2 uses
  %.01012.i.i = phi i64 [ %i.eu, %vec.epilog.scalar.ph89 ], [ %.01012.i.i.ph, %vec.epilog.scalar.ph89.preheader ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.01012.i.i ; 2 uses
  store i64 0, ptr %i.er, align 8, !tbaa !64
  %i.es = load i64, ptr %.013.i.i, align 8, !tbaa !64
  store i64 %i.es, ptr %i.er, align 8, !tbaa !64
  %i.et = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8 ; 2 uses
  %i.eu = add nuw nsw i64 %.01012.i.i, 1
  %.not.i.i = icmp eq ptr %i.et, %i.bf
  br i1 %.not.i.i, label %.loopexit, label %vec.epilog.scalar.ph89, !llvm.loop !1009

.loopexit:                                        ; preds = %vec.epilog.scalar.ph89, %middle.block84, %vec.epilog.middle.block99, %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit
  store i64 %i.bj, ptr %i.bo, align 8, !tbaa !357
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %11, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ex = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #39
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit9

bb.h:                                             ; preds = %._crit_edge.thread.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5LightEE15allocate_objectIS3_EEPT_m.exit.i.i.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt10IntegratorD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #38
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit9

_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit9:     ; preds = %bb.g, %bb.f, %bb.h
  %.pn = phi { ptr, i32 } [ %i.fb, %bb.h ], [ %i.ev, %bb.f ], [ %i.ev, %bb.g ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i, !prof !60

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #41
  unreachable

_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #40
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i ] ; 12 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !62
  %i.m = load ptr, ptr %1, align 8, !tbaa !61     ; 11 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %.not11.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not11.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4pbrt5LightESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %2 = ptrtoaddr ptr %i.n to i64
  %3 = ptrtoaddr ptr %i.m to i64
  %i.o = add i64 %2, -8
  %i.p = sub i64 %i.o, %3                         ; 3 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.p, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = ptrtoaddr ptr %i.n to i64
  %5 = ptrtoaddr ptr %i.m to i64
  %i.s = add i64 %4, -8
  %i.t = sub i64 %i.s, %5
  %i.u = and i64 %i.t, -8
  %i.v = add i64 %i.u, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.v
  %scevgep13 = getelementptr i8, ptr %i.m, i64 %i.v
  %bound0 = icmp ult ptr %i.i, %scevgep13
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check14 = icmp ult i64 %i.p, 120
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.r, 12
  %n.vec = and i64 %i.r, 4611686018427387888      ; 4 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.m, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.aa ; 5 uses
  %next.gep15 = getelementptr i8, ptr %i.m, i64 %i.aa ; 4 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %next.gep, align 8, !tbaa !64, !alias.scope !1020, !noalias !1021
  store <4 x i64> zeroinitializer, ptr %i.ab, align 8, !tbaa !64, !alias.scope !1020, !noalias !1021
  store <4 x i64> zeroinitializer, ptr %i.ac, align 8, !tbaa !64, !alias.scope !1020, !noalias !1021
  store <4 x i64> zeroinitializer, ptr %i.ad, align 8, !tbaa !64, !alias.scope !1020, !noalias !1021
  %i.ae = getelementptr i8, ptr %next.gep15, i64 32
  %i.af = getelementptr i8, ptr %next.gep15, i64 64
  %i.ag = getelementptr i8, ptr %next.gep15, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep15, align 8, !tbaa !64, !alias.scope !1021
  %wide.load16 = load <4 x i64>, ptr %i.ae, align 8, !tbaa !64, !alias.scope !1021
  %wide.load17 = load <4 x i64>, ptr %i.af, align 8, !tbaa !64, !alias.scope !1021
  %wide.load18 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !64, !alias.scope !1021
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !64, !alias.scope !1020, !noalias !1021
  store <4 x i64> %wide.load16, ptr %i.ab, align 8, !tbaa !64, !alias.scope !1020, !noalias !1021
  store <4 x i64> %wide.load17, ptr %i.ac, align 8, !tbaa !64, !alias.scope !1020, !noalias !1021
  store <4 x i64> %wide.load18, ptr %i.ad, align 8, !tbaa !64, !alias.scope !1020, !noalias !1021
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1017

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4pbrt5LightESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.r, 4611686018427387900    ; 3 uses
  %i.ai = shl i64 %n.vec20, 3                     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.m, i64 %i.ai
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.al = shl i64 %index21, 3                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.i, i64 %i.al ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.m, i64 %i.al
  store <4 x i64> zeroinitializer, ptr %next.gep22, align 8, !tbaa !64, !alias.scope !1020, !noalias !1021
  %wide.load24 = load <4 x i64>, ptr %next.gep23, align 8, !tbaa !64, !alias.scope !1021
  store <4 x i64> %wide.load24, ptr %next.gep22, align 8, !tbaa !64, !alias.scope !1020, !noalias !1021
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1018

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.r, %n.vec20
  br i1 %cmp.n26, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4pbrt5LightESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.i, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  %.sroa.08.012.i.i.i.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.013.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i64 0, ptr %.013.i.i.i.i, align 8, !tbaa !64
  %i.an = load i64, ptr %.sroa.08.012.i.i.i.i, align 8, !tbaa !64
  store i64 %i.an, ptr %.013.i.i.i.i, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4pbrt5LightESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1019

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4pbrt5LightESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.aj, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt13RayIntegratorC2ENS_6CameraENS_7SamplerENS_9PrimitiveESt6vectorINS_5LightESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %3, ptr nofree noundef align 8 dereferenceable(24) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pbrt::Camera", align 8      ; 2 uses
  %6 = alloca %"class.pbrt::Sampler", align 8     ; 2 uses
  %7 = alloca %"class.pbrt::Primitive", align 8   ; 2 uses
  %8 = alloca %"class.std::vector", align 8       ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !51
  store i64 %i.a, ptr %5, align 8, !tbaa !51
  %i.b = load i64, ptr %2, align 8, !tbaa !53
  store i64 %i.b, ptr %6, align 8, !tbaa !53
  %i.c = load i64, ptr %3, align 8, !tbaa !55
  store i64 %i.c, ptr %7, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 3 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !59     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i, !prof !60

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #41
  unreachable

_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #40
  %.pre = load ptr, ptr %4, align 8, !tbaa !61
  %.pre4 = load ptr, ptr %i.d, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre4, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i ] ; 7 uses
  %i.n = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i ] ; 9 uses
  store ptr %i.n, ptr %8, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !62
  %.not11.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.r = ptrtoaddr ptr %i.m to i64                ; 2 uses
  %i.s = ptrtoaddr ptr %i.n to i64
  %i.t = ptrtoaddr ptr %i.l to i64
  %i.u = add i64 %i.t, -8
  %i.v = sub i64 %i.u, %i.r                       ; 3 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.v, 24
  %i.y = sub i64 %i.r, %i.s
  %diff.check = icmp ugt i64 %i.y, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %i.v, 120
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.x, 12
  %n.vec = and i64 %i.x, 4611686018427387888      ; 4 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.n, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ad ; 4 uses
  %next.gep12 = getelementptr i8, ptr %i.m, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep12, i64 32
  %i.af = getelementptr i8, ptr %next.gep12, i64 64
  %i.ag = getelementptr i8, ptr %next.gep12, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep12, align 8, !tbaa !64
  %wide.load13 = load <4 x i64>, ptr %i.ae, align 8, !tbaa !64
  %wide.load14 = load <4 x i64>, ptr %i.af, align 8, !tbaa !64
  %wide.load15 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr i8, ptr %next.gep, i64 32
  %i.ai = getelementptr i8, ptr %next.gep, i64 64
  %i.aj = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !64
  store <4 x i64> %wide.load13, ptr %i.ah, align 8, !tbaa !64
  store <4 x i64> %wide.load14, ptr %i.ai, align 8, !tbaa !64
  store <4 x i64> %wide.load15, ptr %i.aj, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
end_hunk_0
begin_hunk_1_@_ZN4pbrt18FunctionIntegratorC2ESt8functionIFdNS_6Point2IfEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6CameraENS_7SamplerEbSB_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !46   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 %i.y, ptr %i.b, align 8, !tbaa !145
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt8functionIFdN4pbrt6Point2IfEEEEC2ERKS4_.exit
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !48
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !145
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt8functionIFdN4pbrt6Point2IfEEEEC2ERKS4_.exit
  %i.ac = phi ptr [ %i.aa, %.noexc ], [ %i.v, %_ZNSt8functionIFdN4pbrt6Point2IfEEEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.y, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !47
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !47
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !145 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !46
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !51
  %i.aj = load i64, ptr %3, align 8, !tbaa !51
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !53
  %i.al = load i64, ptr %4, align 8, !tbaa !53
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.c, ptr %i.am, align 8, !tbaa !605
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !43
  %i.ap = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !145
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.k
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.r   ; 2 uses

.noexc12:                                         ; preds = %.noexc.i11
  store ptr %i.at, ptr %i.an, align 8, !tbaa !48
  %i.au = load i64, ptr %i.a, align 8, !tbaa !145
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !47
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc12, %bb.k
  %i.av = phi ptr [ %i.at, %.noexc12 ], [ %i.ao, %bb.k ] ; 2 uses
  switch i64 %i.ar, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i10
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !47
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !47
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i10
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !145 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !46
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret void

bb.o:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %8, align 8, !tbaa !59    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !62
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #39
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit15

bb.q:                                             ; preds = %.noexc.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %.noexc.i11
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %i.u, align 8, !tbaa !48  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.v
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !47
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bj, %bb.r ] ; 2 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !95  ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %.body, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i32 noundef 3)
          to label %.body unwind label %bb.t      ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #42
  unreachable

.body:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %.pn, %bb.s ], [ %i.p, %bb.g ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN4pbrt10IntegratorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #38
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit15

_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit15:    ; preds = %bb.p, %bb.o, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.bb, %bb.o ], [ %i.bb, %bb.p ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt10IntegratorC2ENS_9PrimitiveESt6vectorINS_5LightESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.pbrt::Bounds3", align 16    ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4pbrt10IntegratorE, i64 16), ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !55
  %i.b = load i64, ptr %1, align 8, !tbaa !55
  store i64 %i.b, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i, !prof !60

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #41
  unreachable

_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #40
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i ] ; 12 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !62
  %i.p = load ptr, ptr %2, align 8, !tbaa !61     ; 11 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %5 = ptrtoaddr ptr %i.q to i64
  %6 = ptrtoaddr ptr %i.p to i64
  %i.r = add i64 %5, -8
  %i.s = sub i64 %i.r, %6                         ; 3 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.s, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %7 = ptrtoaddr ptr %i.q to i64
  %8 = ptrtoaddr ptr %i.p to i64
  %i.v = add i64 %7, -8
  %i.w = sub i64 %i.v, %8
  %i.x = and i64 %i.w, -8
  %i.y = add i64 %i.x, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.y
  %scevgep39 = getelementptr i8, ptr %i.p, i64 %i.y
  %bound0 = icmp ult ptr %i.l, %scevgep39
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %i.s, 120
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.u, 12
  %n.vec = and i64 %i.u, 4611686018427387888      ; 4 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.ad ; 5 uses
  %next.gep41 = getelementptr i8, ptr %i.p, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %next.gep, align 8, !tbaa !64, !alias.scope !1667, !noalias !1668
  store <4 x i64> zeroinitializer, ptr %i.ae, align 8, !tbaa !64, !alias.scope !1667, !noalias !1668
  store <4 x i64> zeroinitializer, ptr %i.af, align 8, !tbaa !64, !alias.scope !1667, !noalias !1668
  store <4 x i64> zeroinitializer, ptr %i.ag, align 8, !tbaa !64, !alias.scope !1667, !noalias !1668
  %i.ah = getelementptr i8, ptr %next.gep41, i64 32
  %i.ai = getelementptr i8, ptr %next.gep41, i64 64
  %i.aj = getelementptr i8, ptr %next.gep41, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep41, align 8, !tbaa !64, !alias.scope !1668
  %wide.load42 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !64, !alias.scope !1668
  %wide.load43 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !64, !alias.scope !1668
  %wide.load44 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !64, !alias.scope !1668
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !64, !alias.scope !1667, !noalias !1668
  store <4 x i64> %wide.load42, ptr %i.ae, align 8, !tbaa !64, !alias.scope !1667, !noalias !1668
  store <4 x i64> %wide.load43, ptr %i.af, align 8, !tbaa !64, !alias.scope !1667, !noalias !1668
  store <4 x i64> %wide.load44, ptr %i.ag, align 8, !tbaa !64, !alias.scope !1667, !noalias !1668
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1659

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.u, 4611686018427387900    ; 3 uses
  %i.al = shl i64 %n.vec46, 3                     ; 2 uses
  %i.am = getelementptr i8, ptr %i.l, i64 %i.al   ; 2 uses
  %i.an = getelementptr i8, ptr %i.p, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = shl i64 %index47, 3                     ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.l, i64 %i.ao ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.p, i64 %i.ao
  store <4 x i64> zeroinitializer, ptr %next.gep48, align 8, !tbaa !64, !alias.scope !1667, !noalias !1668
  %wide.load50 = load <4 x i64>, ptr %next.gep49, align 8, !tbaa !64, !alias.scope !1668
  store <4 x i64> %wide.load50, ptr %next.gep48, align 8, !tbaa !64, !alias.scope !1667, !noalias !1668
  %index.next51 = add nuw i64 %index47, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1660

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.u, %n.vec46
  br i1 %cmp.n52, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.l, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.p, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  store i64 0, ptr %.013.i.i.i.i.i, align 8, !tbaa !64
  %i.aq = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !64
  store i64 %i.aq, ptr %.013.i.i.i.i.i, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1661

_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.am, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.au = load i64, ptr %1, align 8, !tbaa !55
  %i.av = and i64 %i.au, 144115188075855871
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit
  invoke void @_ZNK4pbrt9Primitive6BoundsEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.f unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %4, align 16
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.aw, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !176
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.az, ptr %3, align 8, !tbaa !43, !alias.scope !1669
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !46, !alias.scope !1669
  store i8 0, ptr %i.az, align 8, !tbaa !47, !alias.scope !1669
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_7Bounds3IfEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.180, ptr noundef nonnull align 4 dereferenceable(24) %4)
          to label %_ZN4pbrt12StringPrintfIJRNS_7Bounds3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %3, align 8, !tbaa !48, !alias.scope !1669 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.az
  br i1 %i.bd, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.be = load i64, ptr %i.az, align 8, !tbaa !47, !alias.scope !1669
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #39
  br label %.body

_ZN4pbrt12StringPrintfIJRNS_7Bounds3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.g
  %i.bg = load ptr, ptr %3, align 8, !tbaa !48
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.179, i32 noundef 70, ptr noundef %i.bg)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Bounds3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.bh = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.az
  br i1 %i.bi, label %_ZN4pbrt3LogIJRNS_7Bounds3IfEEEEEvNS_8LogLevelEPKciS6_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #39
  br label %_ZN4pbrt3LogIJRNS_7Bounds3IfEEEEEvNS_8LogLevelEPKciS6_DpOT_.exit

bb.j:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Bounds3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.az
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.j
  %i.bo = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %.body

_ZN4pbrt3LogIJRNS_7Bounds3IfEEEEEvNS_8LogLevelEPKciS6_DpOT_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt3LogIJRNS_7Bounds3IfEEEEEvNS_8LogLevelEPKciS6_DpOT_.exit, %bb.f
  %i.bq = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %.not1618 = icmp eq ptr %i.bq, %i.br
  br i1 %.not1618, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backERKS1_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.l:                                             ; preds = %bb.d
  %i.bu = landingpad { ptr, i32 }
          cleanup
end_hunk_1
