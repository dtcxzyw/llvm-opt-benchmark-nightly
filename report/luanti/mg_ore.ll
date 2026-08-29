Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mg_ore?download=true
inline.NumInlined: 427
inline.NumDeleted: 216
begin_hunk_0_@_ZN10OreScatter8generateEP8MMVManipijN4core8vector3dIsEES4_Pt:bb.a

bb.g:                                             ; preds = %bb.f
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !110 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !85
  %i.bz = icmp eq i16 %i.bp, %i.by
  br i1 %i.bz, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.ca = icmp eq i16 %i.bp, %i.cd
  br i1 %i.ca, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !111

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.cb, %bb.h ], [ %i.bw, %bb.g ]
  %i.cb = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !110 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !85 ; 2 uses
  %i.ce = zext i16 %i.cd to i64
  %i.cf = urem i64 %i.ce, %i.br
  %.not19.i.i.i.i = icmp eq i64 %i.cf, %i.bs
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, !llvm.loop !111

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit: ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  br i1 %.not6499, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.preheader84

.preheader84:                                     ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, %._crit_edge98
  %.057100 = phi i32 [ %i.ck, %._crit_edge98 ], [ 0, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit ] ; 2 uses
  %i.cg = add i32 %.057100, %i.ay
  %sext = shl i32 %i.cg, 16
  %i.ch = ashr exact i32 %sext, 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader84, %._crit_edge
  %.05697 = phi i32 [ 0, %.preheader84 ], [ %i.cl, %._crit_edge ] ; 2 uses
  %i.ci = add i32 %.05697, %i.ax
  %sext76 = shl i32 %i.ci, 16
  %i.cj = ashr exact i32 %sext76, 16
  br label %bb.j

._crit_edge98:                                    ; preds = %._crit_edge
  %i.ck = add i32 %.057100, 1                     ; 2 uses
  %.not64 = icmp eq i32 %i.ck, %i.r
  br i1 %.not64, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.preheader84, !llvm.loop !112

._crit_edge:                                      ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  %i.cl = add i32 %.05697, 1                      ; 2 uses
  %.not65 = icmp eq i32 %i.cl, %i.r
  br i1 %.not65, label %._crit_edge98, label %.preheader, !llvm.loop !113

bb.j:                                             ; preds = %.preheader, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  %.095 = phi i32 [ 0, %.preheader ], [ %i.et, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread ] ; 2 uses
  %i.cm = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 1, i32 noundef %i.t)
  %i.cn = load i16, ptr %i.an, align 4, !tbaa !114
  %i.co = sext i16 %i.cn to i32
  %i.cp = icmp sgt i32 %i.cm, %i.co
  br i1 %i.cp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = add i32 %.095, %i.aw
  %i.cr = load i16, ptr %i.ap, align 4, !tbaa !115
  %i.cs = sext i16 %i.cr to i32
  %i.ct = sub nsw i32 %i.ch, %i.cs
  %i.cu = load i32, ptr %i.ar, align 4, !tbaa !118
  %i.cv = mul nsw i32 %i.ct, %i.cu
  %i.cw = load i32, ptr %i.aq, align 4, !tbaa !119
  %i.cx = load i16, ptr %i.as, align 2, !tbaa !120
  %i.cy = sext i16 %i.cx to i32
  %i.cz = add i32 %i.cv, %i.cj
  %i.da = sub i32 %i.cz, %i.cy
  %i.db = mul i32 %i.da, %i.cw
  %sext77 = shl i32 %i.cq, 16
  %i.dc = ashr exact i32 %sext77, 16
  %i.dd = load i16, ptr %i.ao, align 4, !tbaa !121
  %i.de = sext i16 %i.dd to i32
  %i.df = sub nsw i32 %i.dc, %i.de
  %i.dg = add nsw i32 %i.df, %i.db
  %i.dh = load ptr, ptr %i.at, align 8, !tbaa !122 ; 4 uses
  %i.di = load ptr, ptr %i.au, align 8, !tbaa !122 ; 3 uses
  %i.dj = load ptr, ptr %i.av, align 8, !tbaa !123
  %i.dk = zext i32 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !126 ; 7 uses
  %i.dn = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.do = ptrtoint ptr %i.dh to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 3 uses
  %i.dq = ashr i64 %i.dp, 3                       ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.ds = and i64 %i.dp, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.dh, i64 %i.ds ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ %i.ef, %bb.p ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i ], [ %i.ee, %bb.p ] ; 9 uses
  %i.dt = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.du = icmp eq i16 %i.dt, %i.dm
  br i1 %i.du, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !85
  %i.dx = icmp eq i16 %i.dw, %i.dm
  br i1 %i.dx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !85
  %i.ea = icmp eq i16 %i.dz, %i.dm
  br i1 %i.ea, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit122, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !85
  %i.ed = icmp eq i16 %i.ec, %i.dm
  br i1 %i.ed, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit124, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ef = add nsw i64 %.052.i.i.i, -1
  %i.eg = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.eg, label %bb.l, label %._crit_edge.loopexit.i.i.i, !llvm.loop !128

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.p
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.dn, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.k
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dp, %bb.k ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dh, %bb.k ] ; 5 uses
  %i.eh = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.eh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.q
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.ei = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !85
  %i.ej = icmp eq i16 %i.ei, %i.dm
  br i1 %i.ej, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.r
  %.sroa.032.1.i.i.i = phi ptr [ %i.ek, %bb.r ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.el = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !85
  %i.em = icmp eq i16 %i.el, %i.dm
  br i1 %i.em, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.s
  %.sroa.032.2.i.i.i = phi ptr [ %i.en, %bb.s ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.eo = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !85
  %i.ep = icmp eq i16 %i.eo, %i.dm
  %spec.select.i.i.i = select i1 %i.ep, ptr %.sroa.032.2.i.i.i, ptr %i.di
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.m
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit122: ; preds = %bb.n
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit124: ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.l, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit122, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit124, %bb.q, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.q ], [ %i.es, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit124 ], [ %i.er, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit122 ], [ %i.eq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.l ]
  %.not78 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.di
  br i1 %.not78, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  store i32 %.sroa.073.0.insert.insert, ptr %i.dl, align 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %bb.t, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, %bb.j
  %i.et = add i32 %.095, 1                        ; 2 uses
  %.not66 = icmp eq i32 %i.et, %i.r
  br i1 %.not66, label %._crit_edge, label %bb.j, !llvm.loop !129

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread: ; preds = %.lr.ph.i.i.i.i, %._crit_edge98, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, %bb.f, %..loopexit_crit_edge21.i.i.i.i, %bb.c
  %i.eu = add nuw i32 %.059102, 1                 ; 2 uses
  %.not = icmp eq i32 %i.eu, %i.w
  br i1 %.not, label %._crit_edge104, label %bb.b, !llvm.loop !130
}

declare void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #1

declare noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK8OreSheet5cloneEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #20 ; 34 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.d, align 8, !tbaa !80
  store i8 0, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  invoke void @_ZN12NodeResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.e)
          to label %bb.c unwind label %bb.b, !inline_history !131

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !81
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #22, !inline_history !132
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 129
  store i8 1, ptr %i.k, align 1, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.n, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store float 2.500000e+02, ptr %i.o, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i32 12345, ptr %i.p, align 4, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i16 3, ptr %i.q, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.r, align 4, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  store i32 1, ptr %i.s, align 4, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %i.v, ptr %i.u, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 1, ptr %i.w, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV8OreSheet, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV8OreSheet, i64 72), ptr %i.e, align 8, !tbaa !9
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73) %i.aa, ptr noundef nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.al = load <4 x i16>, ptr %i.aj, align 4, !tbaa !85
  store <4 x i16> %i.al, ptr %i.ak, align 4, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.an = load i8, ptr %i.am, align 4, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !87
  store i32 %i.aq, ptr %i.m, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.as = load float, ptr %i.ar, align 4, !tbaa !88
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store float %i.as, ptr %i.at, align 4, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !tbaa.struct !89
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.av = icmp eq ptr %0, %i.a
  br i1 %i.av, label %_ZNK3Ore7cloneToEPS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.aw)
  br label %_ZNK3Ore7cloneToEPS_.exit

_ZNK3Ore7cloneToEPS_.exit:                        ; preds = %bb.c, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.az = load <2 x i16>, ptr %i.ax, align 8, !tbaa !85
  store <2 x i16> %i.az, ptr %i.ay, align 8, !tbaa !85
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !133
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  store float %i.bb, ptr %i.bc, align 4, !tbaa !133
  ret ptr %i.a

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 296) #22
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8OreSheet8generateEP8MMVManipijN4core8vector3dIsEES4_Pt(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i48 %4, i48 %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.PcgRandom, align 8           ; 6 uses
  %.sroa.056.0.extract.trunc = trunc i48 %4 to i16 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i48 %4, 16
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i48 %4, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 4 uses
  %.sroa.051.0.extract.trunc = trunc i48 %5 to i16 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i48 %5, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16
  %.sroa.6.0.extract.shift = lshr i48 %5, 32
  %.sroa.6.0.extract.trunc = trunc nuw i48 %.sroa.6.0.extract.shift to i16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = add i32 %3, 4234
  %i.b = zext i32 %i.a to i64
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.b, i64 noundef -2720673578348880933)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i16, ptr %i.c, align 2, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = load i8, ptr %i.e, align 4, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 290 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !135
  %i.i = sext i16 %.sroa.4.0.extract.trunc to i32 ; 2 uses
  %i.j = zext i16 %i.h to i32                     ; 2 uses
  %i.k = add nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i16 %.sroa.3.0.extract.trunc to i32 ; 3 uses
  %i.m = sub nsw i32 %i.l, %i.j                   ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.k, i32 noundef %i.m)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = add nsw i32 %i.l, %i.i
  %i.q = sdiv i32 %i.p, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i32 [ %i.o, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %._crit_edge124

._crit_edge124:                                   ; preds = %bb.d
  %.pre = sext i16 %.sroa.6.0.extract.trunc to i32
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = sext i16 %.sroa.051.0.extract.trunc to i32
  %i.v = sext i16 %.sroa.056.0.extract.trunc to i32
  %reass.sub = sub nsw i32 %i.u, %i.v
  %i.w = add nsw i32 %reass.sub, 1
  %i.x = sext i16 %.sroa.6.0.extract.trunc to i32 ; 2 uses
  %i.y = sext i16 %.sroa.7.0.extract.trunc to i32
  %reass.sub115 = sub nsw i32 %i.x, %i.y
  %i.z = add nsw i32 %reass.sub115, 1
  %i.aa = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull %i.ab, i32 noundef 0, i32 noundef %i.w, i32 noundef %i.z, i32 noundef 1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !92
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN7OreBlob8generateEP8MMVManipijN4core8vector3dIsEES4_Pt:bb.a
  %.080133 = phi i1 [ false, %.preheader109.lr.ph ], [ %.4, %._crit_edge128.split ]
  %i.ck = add i32 %.078135, %i.be
  %sext = shl i32 %i.ck, 16
  %i.cl = ashr exact i32 %sext, 16
  %i.cm = sub nsw i32 %.078135, %.sext
  %i.cn = sitofp nsz i32 %i.cm to float           ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader109, %._crit_edge
  %.077127 = phi i32 [ 0, %.preheader109 ], [ %i.cv, %._crit_edge ] ; 3 uses
  %.1126 = phi i64 [ %.079134, %.preheader109 ], [ %i.cu, %._crit_edge ] ; 2 uses
  %.181125 = phi i1 [ %.080133, %.preheader109 ], [ %.4, %._crit_edge ]
  %i.co = add i32 %.077127, %i.bd
  %sext101 = shl i32 %i.co, 16
  %i.cp = ashr exact i32 %sext101, 16
  %i.cq = sub nsw i32 %.077127, %.sext
  %i.cr = sitofp nsz i32 %i.cq to float           ; 2 uses
  %i.cs = fmul nnan nsz float %i.cr, %i.cr
  br label %bb.l

._crit_edge128.split:                             ; preds = %._crit_edge
  %i.ct = add i32 %.078135, 1                     ; 2 uses
  %.not89 = icmp eq i32 %i.ct, %i.w
  br i1 %.not89, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.preheader109, !llvm.loop !157

._crit_edge:                                      ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  %i.cu = add i64 %i.bb, %.1126                   ; 2 uses
  %i.cv = add i32 %.077127, 1                     ; 2 uses
  %.not90 = icmp eq i32 %i.cv, %i.w
  br i1 %.not90, label %._crit_edge128.split, label %.preheader, !llvm.loop !158

bb.l:                                             ; preds = %.preheader, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  %.0122 = phi i32 [ 0, %.preheader ], [ %i.fq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread ] ; 3 uses
  %.2121 = phi i64 [ %.1126, %.preheader ], [ %i.fr, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread ] ; 2 uses
  %.282120 = phi i1 [ %.181125, %.preheader ], [ %.4, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread ] ; 3 uses
  %i.cw = add i32 %.0122, %i.bc
  %i.cx = load i16, ptr %i.ap, align 4, !tbaa !115
  %i.cy = sext i16 %i.cx to i32
  %i.cz = sub nsw i32 %i.cl, %i.cy
  %i.da = load i32, ptr %i.ar, align 4, !tbaa !118
  %i.db = mul nsw i32 %i.cz, %i.da
  %i.dc = load i32, ptr %i.aq, align 4, !tbaa !119
  %i.dd = load i16, ptr %i.as, align 2, !tbaa !120
  %i.de = sext i16 %i.dd to i32
  %i.df = add i32 %i.db, %i.cp
  %i.dg = sub i32 %i.df, %i.de
  %i.dh = mul i32 %i.dg, %i.dc
  %sext102 = shl i32 %i.cw, 16
  %i.di = ashr exact i32 %sext102, 16
  %i.dj = load i16, ptr %i.ao, align 4, !tbaa !121
  %i.dk = sext i16 %i.dj to i32
  %i.dl = sub nsw i32 %i.di, %i.dk
  %i.dm = add nsw i32 %i.dl, %i.dh
  %i.dn = load ptr, ptr %i.at, align 8, !tbaa !122 ; 4 uses
  %i.do = load ptr, ptr %i.au, align 8, !tbaa !122 ; 3 uses
  %i.dp = load ptr, ptr %i.av, align 8, !tbaa !123
  %i.dq = zext i32 %i.dm to i64                   ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 4, !tbaa !126 ; 7 uses
  %i.dt = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.du = ptrtoint ptr %i.dn to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 3 uses
  %i.dw = ashr i64 %i.dv, 3                       ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %i.dy = and i64 %i.dv, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.dn, i64 %i.dy ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i ], [ %i.el, %bb.q ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i ], [ %i.ek, %bb.q ] ; 9 uses
  %i.dz = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.ea = icmp eq i16 %i.dz, %i.ds
  br i1 %i.ea, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !85
  %i.ed = icmp eq i16 %i.ec, %i.ds
  br i1 %i.ed, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !85
  %i.eg = icmp eq i16 %i.ef, %i.ds
  br i1 %i.eg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit158, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !85
  %i.ej = icmp eq i16 %i.ei, %i.ds
  br i1 %i.ej, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit160, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.el = add nsw i64 %.052.i.i.i, -1
  %i.em = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.em, label %bb.m, label %._crit_edge.loopexit.i.i.i, !llvm.loop !128

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.q
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.dt, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.l
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dv, %bb.l ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dn, %bb.l ] ; 5 uses
  %i.en = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.en, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.r
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.eo = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !85
  %i.ep = icmp eq i16 %i.eo, %i.ds
  br i1 %i.ep, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.s
  %.sroa.032.1.i.i.i = phi ptr [ %i.eq, %bb.s ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.er = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !85
  %i.es = icmp eq i16 %i.er, %i.ds
  br i1 %i.es, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.t
  %.sroa.032.2.i.i.i = phi ptr [ %i.et, %bb.t ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.eu = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !85
  %i.ev = icmp eq i16 %i.eu, %i.ds
  %spec.select.i.i.i = select i1 %i.ev, ptr %.sroa.032.2.i.i.i, ptr %i.do
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.n
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit158: ; preds = %bb.o
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit160: ; preds = %bb.p
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.m, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit158, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit160, %bb.r, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.r ], [ %i.ey, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit160 ], [ %i.ex, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit158 ], [ %i.ew, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.m ]
  %.not103 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.do
  br i1 %.not103, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  %.pre146 = load ptr, ptr %i.aa, align 8, !tbaa !92 ; 2 uses
  br i1 %.282120, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ez = call noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %.pre146, float noundef %i.ch, float noundef %i.ci, float noundef %i.cj, ptr noundef null) ; 0 uses
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !92
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fa = phi ptr [ %.pre, %bb.v ], [ %.pre146, %bb.u ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 80
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !140
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.2121
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !90
  %i.ff = sub nsw i32 %.0122, %.sext
  %i.fg = sitofp nsz i32 %i.ff to float           ; 2 uses
  %i.fh = call nsz float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.cs)
  %i.fi = call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.fh)
  %i.fj = call nsz noundef float @llvm.sqrt.f32(float %i.fi)
  %i.fk = fdiv nsz float %i.fj, %i.ax
  %i.fl = fsub nsz float %i.fe, %i.fk
  %i.fm = load float, ptr %i.ay, align 4, !tbaa !88
  %i.fn = fcmp nsz olt float %i.fl, %i.fm
  br i1 %i.fn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = load ptr, ptr %i.av, align 8, !tbaa !123
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.dq
  store i32 %.sroa.098.0.insert.insert, ptr %i.fp, align 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %bb.x, %bb.w, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  %.4 = phi i1 [ %.282120, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit ], [ true, %bb.w ], [ true, %bb.x ], [ %.282120, %._crit_edge.i.i.i ] ; 3 uses
  %i.fq = add i32 %.0122, 1                       ; 2 uses
  %i.fr = add i64 %.2121, 1
  %.not91 = icmp eq i32 %i.fq, %i.w
  br i1 %.not91, label %._crit_edge, label %bb.l, !llvm.loop !159

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread: ; preds = %.lr.ph.i.i.i.i, %._crit_edge128.split, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, %bb.h, %..loopexit_crit_edge21.i.i.i.i
  %i.fs = add nuw i32 %.084137, 1                 ; 2 uses
  %.not87 = icmp eq i32 %i.fs, %i.z
  br i1 %.not87, label %._crit_edge139, label %bb.f, !llvm.loop !160
}

declare noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7OreVeinD2Ev(ptr noundef nonnull align 8 dead_on_return(308) dereferenceable(308) initializes((0, 8), (56, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreVein, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn56_N7OreVeinD1Ev(ptr noundef initializes((-56, -48), (0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreVein, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7OreVeinD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !163
  br label %_ZN7OreVeinD2Ev.exit

_ZN7OreVeinD2Ev.exit:                             ; preds = %bb.a, %bb.b
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(308) %i.a) #19, !inline_history !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7OreVeinD0Ev(ptr noundef nonnull align 8 dereferenceable(308) initializes((0, 8), (56, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreVein, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7OreVeinD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !163
  br label %_ZN7OreVeinD2Ev.exit

_ZN7OreVeinD2Ev.exit:                             ; preds = %bb.a, %bb.b
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(308) %0) #19, !inline_history !163
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn56_N7OreVeinD0Ev(ptr noundef initializes((-56, -48), (0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreVein, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7OreVeinD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !164
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !164
  br label %_ZN7OreVeinD0Ev.exit

_ZN7OreVeinD0Ev.exit:                             ; preds = %bb.a, %bb.b
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(308) %i.a) #19, !inline_history !164
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(308) %i.a, i64 noundef 312) #22, !inline_history !165
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK7OreVein5cloneEv(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #20 ; 35 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.d, align 8, !tbaa !80
  store i8 0, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  invoke void @_ZN12NodeResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.e)
          to label %bb.c unwind label %bb.b, !inline_history !166

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !81
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #22, !inline_history !167
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 129
  store i8 1, ptr %i.k, align 1, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.n, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store float 2.500000e+02, ptr %i.o, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i32 12345, ptr %i.p, align 4, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i16 3, ptr %i.q, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.r, align 4, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  store i32 1, ptr %i.s, align 4, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %i.v, ptr %i.u, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 1, ptr %i.w, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreVein, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %i.e, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !168
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73) %i.ac, ptr noundef nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ah = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !84
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.an = load <4 x i16>, ptr %i.al, align 4, !tbaa !85
  store <4 x i16> %i.an, ptr %i.am, align 4, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !86
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i8 %i.ap, ptr %i.aq, align 4, !tbaa !86
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !87
  store i32 %i.as, ptr %i.m, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.au = load float, ptr %i.at, align 4, !tbaa !88
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store float %i.au, ptr %i.av, align 4, !tbaa !88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i64 40, i1 false), !tbaa.struct !89
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.ax = icmp eq ptr %0, %i.a
  br i1 %i.ax, label %_ZNK3Ore7cloneToEPS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.ay)
  br label %_ZNK3Ore7cloneToEPS_.exit

_ZNK3Ore7cloneToEPS_.exit:                        ; preds = %bb.c, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 288
end_hunk_1
