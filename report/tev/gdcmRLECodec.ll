Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmRLECodec?download=true
inline.NumInlined: 816
inline.NumDeleted: 407
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4gdcm27DoInvertPlanarConfigurationIcEEbPT_PKS1_j:bb.a
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !47
  %i.de = getelementptr inbounds nuw i8, ptr %.277, i64 6
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %.04976, i64 18
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !47
  %i.dh = getelementptr inbounds nuw i8, ptr %.277, i64 7
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %.04976, i64 21
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !47
  %i.dk = getelementptr inbounds nuw i8, ptr %.277, i64 8 ; 2 uses
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !47
  %i.dl = getelementptr inbounds nuw i8, ptr %.04976, i64 24 ; 2 uses
  %.not58.7 = icmp eq ptr %i.dk, %i.ce
  br i1 %.not58.7, label %._crit_edge79, label %.lr.ph78, !llvm.loop !211

._crit_edge79:                                    ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78, %.preheader
  %.049.lcssa = phi ptr [ %i.c, %.preheader ], [ %.lcssa.unr, %.lr.ph78.prol.loopexit ], [ %i.dl, %.lr.ph78 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 2
  %i.dn = icmp eq ptr %.049.lcssa, %i.dm
  br i1 %i.dn, label %bb.n, label %bb.k

bb.k:                                             ; preds = %._crit_edge79
  %i.do = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.do, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1, i32 noundef 339, ptr noundef nonnull @.str.2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge79
  ret i1 true

bb.o:                                             ; preds = %bb.g, %bb.j, %bb.m, %bb.d
  %.sink = phi ptr [ %i.bc, %bb.g ], [ %i.cm, %bb.j ], [ %i.do, %bb.m ], [ %i.p, %bb.d ]
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.cn, %bb.j ], [ %i.dp, %bb.m ], [ %i.q, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4gdcm27DoInvertPlanarConfigurationIsEEbPT_PKS1_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 2          ; 13 uses
  %i.c = getelementptr i8, ptr %1, i64 4          ; 13 uses
  %i.d = udiv i32 %2, 3                           ; 2 uses
  %i.e = mul nuw i32 %i.d, 3                      ; 3 uses
  %i.f = icmp eq i32 %i.e, %2
  %i.g = add i32 %2, -1
  %i.h = icmp eq i32 %i.e, %i.g
  %or.cond = or i1 %i.f, %i.h
  br i1 %or.cond, label %.preheader63, label %bb.b

.preheader63:                                     ; preds = %bb.a
  %i.i = shl nuw i32 %i.d, 1
  %.idx = zext i32 %i.i to i64                    ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %.idx      ; 3 uses
  %.not64 = icmp ult i32 %2, 3
  br i1 %.not64, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader63
  %i.k = add nsw i64 %.idx, -2                    ; 3 uses
  %i.l = lshr exact i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 128
  br i1 %min.iters.check, label %.lr.ph.preheader163, label %vector.memcheck

.lr.ph.preheader163:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.066.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %.05165.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.x, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.n = lshr exact i64 %i.k, 1
  %i.o = mul i64 %i.n, 6
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 2
  %bound0 = icmp ult ptr %0, %i.q
  %bound1 = icmp ult ptr %1, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader163, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.r = and i64 %i.m, 7                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 8, i64 %i.r
  %n.vec = sub i64 %i.m, %i.t                     ; 3 uses
  %i.u = shl i64 %n.vec, 1
  %i.v = getelementptr i8, ptr %0, i64 %i.u
  %i.w = mul i64 %n.vec, 6
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.y
  %i.z = mul i64 %index, 6                        ; 8 uses
  %next.gep91 = getelementptr i8, ptr %1, i64 %i.z
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %next.gep92 = getelementptr i8, ptr %i.aa, i64 6
  %i.ab = getelementptr i8, ptr %1, i64 %i.z
  %next.gep93 = getelementptr i8, ptr %i.ab, i64 12
  %i.ac = getelementptr i8, ptr %1, i64 %i.z
  %next.gep94 = getelementptr i8, ptr %i.ac, i64 18
  %i.ad = getelementptr i8, ptr %1, i64 %i.z
  %next.gep95 = getelementptr i8, ptr %i.ad, i64 24
  %i.ae = getelementptr i8, ptr %1, i64 %i.z
  %next.gep96 = getelementptr i8, ptr %i.ae, i64 30
  %i.af = getelementptr i8, ptr %1, i64 %i.z
  %next.gep97 = getelementptr i8, ptr %i.af, i64 36
  %i.ag = getelementptr i8, ptr %1, i64 %i.z
  %next.gep98 = getelementptr i8, ptr %i.ag, i64 42
  %i.ah = load i16, ptr %next.gep91, align 2, !tbaa !89, !alias.scope !227
  %i.ai = load i16, ptr %next.gep92, align 2, !tbaa !89, !alias.scope !227
  %i.aj = load i16, ptr %next.gep93, align 2, !tbaa !89, !alias.scope !227
  %i.ak = load i16, ptr %next.gep94, align 2, !tbaa !89, !alias.scope !227
  %i.al = load i16, ptr %next.gep95, align 2, !tbaa !89, !alias.scope !227
  %i.am = load i16, ptr %next.gep96, align 2, !tbaa !89, !alias.scope !227
  %i.an = load i16, ptr %next.gep97, align 2, !tbaa !89, !alias.scope !227
  %i.ao = load i16, ptr %next.gep98, align 2, !tbaa !89, !alias.scope !227
  %i.ap = insertelement <8 x i16> poison, i16 %i.ah, i64 0
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 1
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.aj, i64 2
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ak, i64 3
  %i.at = insertelement <8 x i16> %i.as, i16 %i.al, i64 4
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 5
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 6
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 7
  store <8 x i16> %i.aw, ptr %next.gep, align 2, !tbaa !89, !alias.scope !228, !noalias !227
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %.lr.ph.preheader163, label %vector.body, !llvm.loop !215

bb.b:                                             ; preds = %bb.a
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader163, %.lr.ph
  %.066 = phi ptr [ %i.bb, %.lr.ph ], [ %.066.ph, %.lr.ph.preheader163 ] ; 2 uses
  %.05165 = phi ptr [ %i.bc, %.lr.ph ], [ %.05165.ph, %.lr.ph.preheader163 ] ; 2 uses
  %i.ba = load i16, ptr %.05165, align 2, !tbaa !89
  %i.bb = getelementptr inbounds nuw i8, ptr %.066, i64 2 ; 2 uses
  store i16 %i.ba, ptr %.066, align 2, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %.05165, i64 6 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !216

._crit_edge:                                      ; preds = %.lr.ph, %.preheader63
  %.051.lcssa = phi ptr [ %1, %.preheader63 ], [ %i.bc, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %.preheader63 ], [ %i.j, %.lr.ph ] ; 9 uses
  %.0.lcssa106 = ptrtoaddr ptr %.0.lcssa to i64   ; 2 uses
  %i.bd = zext i32 %i.e to i64                    ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bd
  %i.bf = icmp eq ptr %.051.lcssa, %i.be
  br i1 %i.bf, label %.preheader62, label %bb.e

.preheader62:                                     ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.idx ; 3 uses
  %.not5768 = icmp eq ptr %.0.lcssa, %i.bg
  br i1 %.not5768, label %._crit_edge72, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %.preheader62
  %i.bh = udiv i32 %2, 3
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = add i64 %i.bj, %i.a
  %i.bl = add i64 %i.bk, -2
  %i.bm = sub i64 %i.bl, %.0.lcssa106             ; 2 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = add nuw i64 %i.bn, 1                    ; 2 uses
  %min.iters.check108 = icmp ult i64 %i.bm, 288
  br i1 %min.iters.check108, label %.lr.ph71.preheader161, label %vector.memcheck109

.lr.ph71.preheader161:                            ; preds = %vector.body115, %vector.memcheck109, %.lr.ph71.preheader
  %.170.ph = phi ptr [ %.0.lcssa, %vector.memcheck109 ], [ %.0.lcssa, %.lr.ph71.preheader ], [ %i.cb, %vector.body115 ]
  %.05069.ph = phi ptr [ %i.b, %vector.memcheck109 ], [ %i.b, %.lr.ph71.preheader ], [ %i.cd, %vector.body115 ]
  br label %.lr.ph71

vector.memcheck109:                               ; preds = %.lr.ph71.preheader
  %i.bp = shl nuw nsw i64 %i.bi, 2
  %i.bq = add i64 %i.bp, %i.a
  %i.br = add i64 %i.bq, -2
  %i.bs = sub i64 %i.br, %.0.lcssa106             ; 2 uses
  %3 = and i64 %i.bs, -2
  %4 = getelementptr i8, ptr %.0.lcssa, i64 %3
  %i.bt = getelementptr i8, ptr %4, i64 2
  %5 = lshr i64 %i.bs, 1
  %i.bu = mul i64 %5, 6
  %i.bv = getelementptr i8, ptr %1, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 4
  %bound0110 = icmp ult ptr %.0.lcssa, %i.bw
  %bound1111 = icmp ult ptr %i.b, %i.bt
  %found.conflict112 = and i1 %bound0110, %bound1111
  br i1 %found.conflict112, label %.lr.ph71.preheader161, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck109
  %i.bx = and i64 %i.bo, 7                        ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 8, i64 %i.bx
  %n.vec114 = sub i64 %i.bo, %i.bz                ; 3 uses
  %i.ca = shl i64 %n.vec114, 1
  %i.cb = getelementptr i8, ptr %.0.lcssa, i64 %i.ca
  %i.cc = mul i64 %n.vec114, 6
  %i.cd = getelementptr i8, ptr %i.b, i64 %i.cc
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next126, %vector.body115 ] ; 3 uses
  %i.ce = shl i64 %index116, 1
  %next.gep117 = getelementptr i8, ptr %.0.lcssa, i64 %i.ce
  %i.cf = mul i64 %index116, 6                    ; 8 uses
  %next.gep118 = getelementptr i8, ptr %i.b, i64 %i.cf
  %i.cg = getelementptr i8, ptr %i.b, i64 %i.cf
  %next.gep119 = getelementptr i8, ptr %i.cg, i64 6
  %i.ch = getelementptr i8, ptr %i.b, i64 %i.cf
  %next.gep120 = getelementptr i8, ptr %i.ch, i64 12
  %i.ci = getelementptr i8, ptr %i.b, i64 %i.cf
  %next.gep121 = getelementptr i8, ptr %i.ci, i64 18
  %i.cj = getelementptr i8, ptr %i.b, i64 %i.cf
  %next.gep122 = getelementptr i8, ptr %i.cj, i64 24
  %i.ck = getelementptr i8, ptr %i.b, i64 %i.cf
  %next.gep123 = getelementptr i8, ptr %i.ck, i64 30
  %i.cl = getelementptr i8, ptr %i.b, i64 %i.cf
  %next.gep124 = getelementptr i8, ptr %i.cl, i64 36
  %i.cm = getelementptr i8, ptr %i.b, i64 %i.cf
  %next.gep125 = getelementptr i8, ptr %i.cm, i64 42
  %i.cn = load i16, ptr %next.gep118, align 2, !tbaa !89, !alias.scope !229
  %i.co = load i16, ptr %next.gep119, align 2, !tbaa !89, !alias.scope !229
  %i.cp = load i16, ptr %next.gep120, align 2, !tbaa !89, !alias.scope !229
  %i.cq = load i16, ptr %next.gep121, align 2, !tbaa !89, !alias.scope !229
  %i.cr = load i16, ptr %next.gep122, align 2, !tbaa !89, !alias.scope !229
  %i.cs = load i16, ptr %next.gep123, align 2, !tbaa !89, !alias.scope !229
  %i.ct = load i16, ptr %next.gep124, align 2, !tbaa !89, !alias.scope !229
  %i.cu = load i16, ptr %next.gep125, align 2, !tbaa !89, !alias.scope !229
  %i.cv = insertelement <8 x i16> poison, i16 %i.cn, i64 0
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.co, i64 1
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 2
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 3
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 4
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 5
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 6
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 7
  store <8 x i16> %i.dc, ptr %next.gep117, align 2, !tbaa !89, !alias.scope !230, !noalias !229
  %index.next126 = add nuw i64 %index116, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next126, %n.vec114
  br i1 %i.dd, label %.lr.ph71.preheader161, label %vector.body115, !llvm.loop !220

bb.e:                                             ; preds = %._crit_edge
  %i.de = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 323, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph71:                                         ; preds = %.lr.ph71.preheader161, %.lr.ph71
  %.170 = phi ptr [ %i.dh, %.lr.ph71 ], [ %.170.ph, %.lr.ph71.preheader161 ] ; 2 uses
  %.05069 = phi ptr [ %i.di, %.lr.ph71 ], [ %.05069.ph, %.lr.ph71.preheader161 ] ; 2 uses
  %i.dg = load i16, ptr %.05069, align 2, !tbaa !89
  %i.dh = getelementptr inbounds nuw i8, ptr %.170, i64 2 ; 2 uses
  store i16 %i.dg, ptr %.170, align 2, !tbaa !89
  %i.di = getelementptr inbounds nuw i8, ptr %.05069, i64 6 ; 2 uses
  %.not57 = icmp eq ptr %i.dh, %i.bg
  br i1 %.not57, label %._crit_edge72, label %.lr.ph71, !llvm.loop !221

._crit_edge72:                                    ; preds = %.lr.ph71, %.preheader62
  %.050.lcssa = phi ptr [ %i.b, %.preheader62 ], [ %i.di, %.lr.ph71 ]
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader62 ], [ %i.bg, %.lr.ph71 ] ; 8 uses
  %.1.lcssa136 = ptrtoaddr ptr %.1.lcssa to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 2
  %i.dk = icmp eq ptr %.050.lcssa, %i.dj
  br i1 %i.dk, label %.preheader, label %bb.h

.preheader:                                       ; preds = %._crit_edge72
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bd ; 2 uses
  %.not5875 = icmp eq ptr %.1.lcssa, %i.dl
  br i1 %.not5875, label %._crit_edge79, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.preheader
  %i.dm = udiv i32 %2, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = mul nuw nsw i64 %i.dn, 6
  %i.dp = add i64 %i.do, %i.a
  %i.dq = add i64 %i.dp, -2
  %i.dr = sub i64 %i.dq, %.1.lcssa136             ; 4 uses
  %i.ds = lshr i64 %i.dr, 1
  %i.dt = add nuw i64 %i.ds, 1                    ; 2 uses
  %min.iters.check138 = icmp ult i64 %i.dr, 304
  br i1 %min.iters.check138, label %.lr.ph78.preheader160, label %vector.memcheck139

.lr.ph78.preheader160:                            ; preds = %vector.body145, %vector.memcheck139, %.lr.ph78.preheader
  %.277.ph = phi ptr [ %.1.lcssa, %vector.memcheck139 ], [ %.1.lcssa, %.lr.ph78.preheader ], [ %i.ee, %vector.body145 ]
  %.04976.ph = phi ptr [ %i.c, %vector.memcheck139 ], [ %i.c, %.lr.ph78.preheader ], [ %i.eg, %vector.body145 ]
  br label %.lr.ph78

vector.memcheck139:                               ; preds = %.lr.ph78.preheader
  %i.du = and i64 %i.dr, -2
  %i.dv = getelementptr i8, ptr %.1.lcssa, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 2
  %6 = lshr i64 %i.dr, 1
  %i.dx = mul i64 %6, 6
  %i.dy = getelementptr i8, ptr %1, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 6
  %bound0140 = icmp ult ptr %.1.lcssa, %i.dz
  %bound1141 = icmp ult ptr %i.c, %i.dw
  %found.conflict142 = and i1 %bound0140, %bound1141
  br i1 %found.conflict142, label %.lr.ph78.preheader160, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck139
  %i.ea = and i64 %i.dt, 7                        ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  %i.ec = select i1 %i.eb, i64 8, i64 %i.ea
  %n.vec144 = sub i64 %i.dt, %i.ec                ; 3 uses
  %i.ed = shl i64 %n.vec144, 1
  %i.ee = getelementptr i8, ptr %.1.lcssa, i64 %i.ed
  %i.ef = mul i64 %n.vec144, 6
  %i.eg = getelementptr i8, ptr %i.c, i64 %i.ef
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next156, %vector.body145 ] ; 3 uses
  %i.eh = shl i64 %index146, 1
  %next.gep147 = getelementptr i8, ptr %.1.lcssa, i64 %i.eh
  %i.ei = mul i64 %index146, 6                    ; 8 uses
  %next.gep148 = getelementptr i8, ptr %i.c, i64 %i.ei
  %i.ej = getelementptr i8, ptr %i.c, i64 %i.ei
  %next.gep149 = getelementptr i8, ptr %i.ej, i64 6
  %i.ek = getelementptr i8, ptr %i.c, i64 %i.ei
  %next.gep150 = getelementptr i8, ptr %i.ek, i64 12
  %i.el = getelementptr i8, ptr %i.c, i64 %i.ei
  %next.gep151 = getelementptr i8, ptr %i.el, i64 18
  %i.em = getelementptr i8, ptr %i.c, i64 %i.ei
  %next.gep152 = getelementptr i8, ptr %i.em, i64 24
  %i.en = getelementptr i8, ptr %i.c, i64 %i.ei
  %next.gep153 = getelementptr i8, ptr %i.en, i64 30
  %i.eo = getelementptr i8, ptr %i.c, i64 %i.ei
  %next.gep154 = getelementptr i8, ptr %i.eo, i64 36
  %i.ep = getelementptr i8, ptr %i.c, i64 %i.ei
  %next.gep155 = getelementptr i8, ptr %i.ep, i64 42
  %i.eq = load i16, ptr %next.gep148, align 2, !tbaa !89, !alias.scope !231
  %i.er = load i16, ptr %next.gep149, align 2, !tbaa !89, !alias.scope !231
  %i.es = load i16, ptr %next.gep150, align 2, !tbaa !89, !alias.scope !231
  %i.et = load i16, ptr %next.gep151, align 2, !tbaa !89, !alias.scope !231
  %i.eu = load i16, ptr %next.gep152, align 2, !tbaa !89, !alias.scope !231
  %i.ev = load i16, ptr %next.gep153, align 2, !tbaa !89, !alias.scope !231
  %i.ew = load i16, ptr %next.gep154, align 2, !tbaa !89, !alias.scope !231
  %i.ex = load i16, ptr %next.gep155, align 2, !tbaa !89, !alias.scope !231
  %i.ey = insertelement <8 x i16> poison, i16 %i.eq, i64 0
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 1
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 2
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 3
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 4
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 5
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 6
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 7
  store <8 x i16> %i.ff, ptr %next.gep147, align 2, !tbaa !89, !alias.scope !232, !noalias !231
  %index.next156 = add nuw i64 %index146, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next156, %n.vec144
  br i1 %i.fg, label %.lr.ph78.preheader160, label %vector.body145, !llvm.loop !225

bb.h:                                             ; preds = %._crit_edge72
  %i.fh = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fh, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 331, ptr noundef nonnull @.str.2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.fh, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph78:                                         ; preds = %.lr.ph78.preheader160, %.lr.ph78
  %.277 = phi ptr [ %i.fk, %.lr.ph78 ], [ %.277.ph, %.lr.ph78.preheader160 ] ; 2 uses
  %.04976 = phi ptr [ %i.fl, %.lr.ph78 ], [ %.04976.ph, %.lr.ph78.preheader160 ] ; 2 uses
  %i.fj = load i16, ptr %.04976, align 2, !tbaa !89
  %i.fk = getelementptr inbounds nuw i8, ptr %.277, i64 2 ; 2 uses
  store i16 %i.fj, ptr %.277, align 2, !tbaa !89
  %i.fl = getelementptr inbounds nuw i8, ptr %.04976, i64 6 ; 2 uses
  %.not58 = icmp eq ptr %i.fk, %i.dl
  br i1 %.not58, label %._crit_edge79, label %.lr.ph78, !llvm.loop !226

._crit_edge79:                                    ; preds = %.lr.ph78, %.preheader
  %.049.lcssa = phi ptr [ %i.c, %.preheader ], [ %i.fl, %.lr.ph78 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 4
  %i.fn = icmp eq ptr %.049.lcssa, %i.fm
  br i1 %i.fn, label %bb.n, label %bb.k

bb.k:                                             ; preds = %._crit_edge79
  %i.fo = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fo, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1, i32 noundef 339, ptr noundef nonnull @.str.2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.fo, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge79
  ret i1 true

bb.o:                                             ; preds = %bb.g, %bb.j, %bb.m, %bb.d
  %.sink = phi ptr [ %i.de, %bb.g ], [ %i.fh, %bb.j ], [ %i.fo, %bb.m ], [ %i.ay, %bb.d ]
  %.pn.pn = phi { ptr, i32 } [ %i.df, %bb.g ], [ %i.fi, %bb.j ], [ %i.fp, %bb.m ], [ %i.az, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4gdcm27DoInvertPlanarConfigurationIiEEbPT_PKS1_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = udiv i32 %2, 3                           ; 3 uses
  %i.d = mul nuw i32 %i.c, 3                      ; 3 uses
  %i.e = icmp eq i32 %i.d, %2
  %i.f = add i32 %2, -1
  %i.g = icmp eq i32 %i.d, %i.f
  %or.cond = or i1 %i.e, %i.g
  br i1 %or.cond, label %.preheader63, label %bb.b

.preheader63:                                     ; preds = %bb.a
  %i.h = zext nneg i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.h, 2                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %.not64 = icmp ult i32 %2, 3
  br i1 %.not64, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader63
  %i.j = add nsw i64 %.idx, -4                    ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1
  %xtraiter = and i64 %i.l, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.066.prol = phi ptr [ %i.n, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.05165.prol = phi ptr [ %i.o, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.m = load i32, ptr %.05165.prol, align 4, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %.066.prol, i64 4 ; 2 uses
  store i32 %i.m, ptr %.066.prol, align 4, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %.05165.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !233

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa92.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.066.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.05165.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %i.p = icmp ult i64 %i.j, 28
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.066 = phi ptr [ %i.ao, %.lr.ph ], [ %.066.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.05165 = phi ptr [ %i.ap, %.lr.ph ], [ %.05165.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.s = load i32, ptr %.05165, align 4, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %.066, i64 4
  store i32 %i.s, ptr %.066, align 4, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %.05165, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %.066, i64 8
  store i32 %i.v, ptr %i.t, align 4, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %.05165, i64 24
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %.066, i64 12
  store i32 %i.y, ptr %i.w, align 4, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %.05165, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %.066, i64 16
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %.05165, i64 48
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %.066, i64 20
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %.05165, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %.066, i64 24
end_hunk_0
