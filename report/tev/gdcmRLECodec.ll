Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmRLECodec?download=true
inline.NumInlined: 816
inline.NumDeleted: 407
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4gdcm27DoInvertPlanarConfigurationIcEEbPT_PKS1_j:bb.a
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol

.lr.ph71.prol:                                    ; preds = %.lr.ph71.preheader, %.lr.ph71.prol
  %.170.prol = phi ptr [ %i.ay, %.lr.ph71.prol ], [ %.0.lcssa, %.lr.ph71.preheader ] ; 2 uses
  %.05069.prol = phi ptr [ %i.az, %.lr.ph71.prol ], [ %i.b, %.lr.ph71.preheader ] ; 2 uses
  %prol.iter96 = phi i64 [ %prol.iter96.next, %.lr.ph71.prol ], [ 0, %.lr.ph71.preheader ]
  %i.ax = load i8, ptr %.05069.prol, align 1, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %.170.prol, i64 1 ; 2 uses
  store i8 %i.ax, ptr %.170.prol, align 1, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %.05069.prol, i64 3 ; 3 uses
  %prol.iter96.next = add i64 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i64 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol, !llvm.loop !208

.lr.ph71.prol.loopexit:                           ; preds = %.lr.ph71.prol, %.lr.ph71.preheader
  %.lcssa91.unr = phi ptr [ poison, %.lr.ph71.preheader ], [ %i.az, %.lr.ph71.prol ]
  %.170.unr = phi ptr [ %.0.lcssa, %.lr.ph71.preheader ], [ %i.ay, %.lr.ph71.prol ]
  %.05069.unr = phi ptr [ %i.b, %.lr.ph71.preheader ], [ %i.az, %.lr.ph71.prol ]
  %i.ba = sub i64 %.0.lcssa93, %i.av
  %i.bb = icmp ugt i64 %i.ba, -8
  br i1 %i.bb, label %._crit_edge72, label %.lr.ph71

bb.e:                                             ; preds = %._crit_edge
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 323, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph71:                                         ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71
  %.170 = phi ptr [ %i.ca, %.lr.ph71 ], [ %.170.unr, %.lr.ph71.prol.loopexit ] ; 9 uses
  %.05069 = phi ptr [ %i.cb, %.lr.ph71 ], [ %.05069.unr, %.lr.ph71.prol.loopexit ] ; 9 uses
  %i.be = load i8, ptr %.05069, align 1, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %.170, i64 1
  store i8 %i.be, ptr %.170, align 1, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %.05069, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %.170, i64 2
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %.05069, i64 6
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %.170, i64 3
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %.05069, i64 9
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %.170, i64 4
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %.05069, i64 12
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %.170, i64 5
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !47
  %i.bs = getelementptr inbounds nuw i8, ptr %.05069, i64 15
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %.170, i64 6
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %.05069, i64 18
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %.170, i64 7
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !47
  %i.by = getelementptr inbounds nuw i8, ptr %.05069, i64 21
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %.170, i64 8 ; 2 uses
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %.05069, i64 24 ; 2 uses
  %.not57.7 = icmp eq ptr %i.ca, %i.au
  br i1 %.not57.7, label %._crit_edge72, label %.lr.ph71, !llvm.loop !209

._crit_edge72:                                    ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71, %.preheader62
  %.050.lcssa = phi ptr [ %i.b, %.preheader62 ], [ %.lcssa91.unr, %.lr.ph71.prol.loopexit ], [ %i.cb, %.lr.ph71 ]
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader62 ], [ %i.au, %.lr.ph71 ], [ %i.au, %.lr.ph71.prol.loopexit ] ; 4 uses
  %.1.lcssa97 = ptrtoaddr ptr %.1.lcssa to i64    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 1
  %i.cd = icmp eq ptr %.050.lcssa, %i.cc
  br i1 %i.cd, label %.preheader, label %bb.h

.preheader:                                       ; preds = %._crit_edge72
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap ; 2 uses
  %.not5875 = icmp eq ptr %.1.lcssa, %i.ce
  br i1 %.not5875, label %._crit_edge79, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.preheader
  %i.cf = add i64 %i.a, %i.ap                     ; 2 uses
  %i.cg = sub i64 %i.cf, %.1.lcssa97
  %xtraiter98 = and i64 %i.cg, 7                  ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol

.lr.ph78.prol:                                    ; preds = %.lr.ph78.preheader, %.lr.ph78.prol
  %.277.prol = phi ptr [ %i.ci, %.lr.ph78.prol ], [ %.1.lcssa, %.lr.ph78.preheader ] ; 2 uses
  %.04976.prol = phi ptr [ %i.cj, %.lr.ph78.prol ], [ %i.c, %.lr.ph78.preheader ] ; 2 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %.lr.ph78.prol ], [ 0, %.lr.ph78.preheader ]
  %i.ch = load i8, ptr %.04976.prol, align 1, !tbaa !47
  %i.ci = getelementptr inbounds nuw i8, ptr %.277.prol, i64 1 ; 2 uses
  store i8 %i.ch, ptr %.277.prol, align 1, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %.04976.prol, i64 3 ; 3 uses
  %prol.iter100.next = add i64 %prol.iter100, 1   ; 2 uses
  %prol.iter100.cmp.not = icmp eq i64 %prol.iter100.next, %xtraiter98
  br i1 %prol.iter100.cmp.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol, !llvm.loop !210

.lr.ph78.prol.loopexit:                           ; preds = %.lr.ph78.prol, %.lr.ph78.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph78.preheader ], [ %i.cj, %.lr.ph78.prol ]
  %.277.unr = phi ptr [ %.1.lcssa, %.lr.ph78.preheader ], [ %i.ci, %.lr.ph78.prol ]
  %.04976.unr = phi ptr [ %i.c, %.lr.ph78.preheader ], [ %i.cj, %.lr.ph78.prol ]
  %i.ck = sub i64 %.1.lcssa97, %i.cf
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %._crit_edge79, label %.lr.ph78

bb.h:                                             ; preds = %._crit_edge72
  %i.cm = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 331, ptr noundef nonnull @.str.2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph78:                                         ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78
  %.277 = phi ptr [ %i.dk, %.lr.ph78 ], [ %.277.unr, %.lr.ph78.prol.loopexit ] ; 9 uses
  %.04976 = phi ptr [ %i.dl, %.lr.ph78 ], [ %.04976.unr, %.lr.ph78.prol.loopexit ] ; 9 uses
  %i.co = load i8, ptr %.04976, align 1, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %.277, i64 1
  store i8 %i.co, ptr %.277, align 1, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %.04976, i64 3
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %.277, i64 2
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !47
  %i.ct = getelementptr inbounds nuw i8, ptr %.04976, i64 6
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %.277, i64 3
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %.04976, i64 9
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !47
  %i.cy = getelementptr inbounds nuw i8, ptr %.277, i64 4
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !47
  %i.cz = getelementptr inbounds nuw i8, ptr %.04976, i64 12
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !47
  %i.db = getelementptr inbounds nuw i8, ptr %.277, i64 5
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !47
  %i.dc = getelementptr inbounds nuw i8, ptr %.04976, i64 15
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
  %3 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.a = getelementptr i8, ptr %1, i64 2          ; 13 uses
  %i.b = getelementptr i8, ptr %1, i64 4          ; 13 uses
  %i.c = udiv i32 %2, 3                           ; 2 uses
  %i.d = mul nuw i32 %i.c, 3                      ; 3 uses
  %i.e = icmp eq i32 %i.d, %2
  %i.f = add i32 %2, -1
  %i.g = icmp eq i32 %i.d, %i.f
  %or.cond = or i1 %i.e, %i.g
  br i1 %or.cond, label %.preheader63, label %bb.b

.preheader63:                                     ; preds = %bb.a
  %i.h = shl nuw i32 %i.c, 1
  %.idx = zext i32 %i.h to i64                    ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 %.idx      ; 3 uses
  %.not64 = icmp ult i32 %2, 3
  br i1 %.not64, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader63
  %i.j = add nsw i64 %.idx, -2                    ; 3 uses
  %i.k = lshr exact i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 128
  br i1 %min.iters.check, label %.lr.ph.preheader161, label %vector.memcheck

.lr.ph.preheader161:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.066.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %.05165.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.w, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = lshr exact i64 %i.j, 1
  %i.n = mul i64 %i.m, 6
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 2
  %bound0 = icmp ult ptr %0, %i.p
  %bound1 = icmp ult ptr %1, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader161, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.q = and i64 %i.l, 7                          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 8, i64 %i.q
  %n.vec = sub i64 %i.l, %i.s                     ; 3 uses
  %i.t = shl i64 %n.vec, 1
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %i.v = mul i64 %n.vec, 6
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.x
  %i.y = mul i64 %index, 6                        ; 8 uses
  %next.gep91 = getelementptr i8, ptr %1, i64 %i.y
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %next.gep92 = getelementptr i8, ptr %i.z, i64 6
  %i.aa = getelementptr i8, ptr %1, i64 %i.y
  %next.gep93 = getelementptr i8, ptr %i.aa, i64 12
  %i.ab = getelementptr i8, ptr %1, i64 %i.y
  %next.gep94 = getelementptr i8, ptr %i.ab, i64 18
  %i.ac = getelementptr i8, ptr %1, i64 %i.y
  %next.gep95 = getelementptr i8, ptr %i.ac, i64 24
  %i.ad = getelementptr i8, ptr %1, i64 %i.y
  %next.gep96 = getelementptr i8, ptr %i.ad, i64 30
  %i.ae = getelementptr i8, ptr %1, i64 %i.y
  %next.gep97 = getelementptr i8, ptr %i.ae, i64 36
  %i.af = getelementptr i8, ptr %1, i64 %i.y
  %next.gep98 = getelementptr i8, ptr %i.af, i64 42
  %i.ag = load i16, ptr %next.gep91, align 2, !tbaa !89, !alias.scope !227
  %i.ah = load i16, ptr %next.gep92, align 2, !tbaa !89, !alias.scope !227
  %i.ai = load i16, ptr %next.gep93, align 2, !tbaa !89, !alias.scope !227
  %i.aj = load i16, ptr %next.gep94, align 2, !tbaa !89, !alias.scope !227
  %i.ak = load i16, ptr %next.gep95, align 2, !tbaa !89, !alias.scope !227
  %i.al = load i16, ptr %next.gep96, align 2, !tbaa !89, !alias.scope !227
  %i.am = load i16, ptr %next.gep97, align 2, !tbaa !89, !alias.scope !227
  %i.an = load i16, ptr %next.gep98, align 2, !tbaa !89, !alias.scope !227
  %i.ao = insertelement <8 x i16> poison, i16 %i.ag, i64 0
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 1
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 2
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.aj, i64 3
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ak, i64 4
  %i.at = insertelement <8 x i16> %i.as, i16 %i.al, i64 5
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 6
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 7
  store <8 x i16> %i.av, ptr %next.gep, align 2, !tbaa !89, !alias.scope !228, !noalias !227
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %.lr.ph.preheader161, label %vector.body, !llvm.loop !215

bb.b:                                             ; preds = %bb.a
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader161, %.lr.ph
  %.066 = phi ptr [ %i.ba, %.lr.ph ], [ %.066.ph, %.lr.ph.preheader161 ] ; 2 uses
  %.05165 = phi ptr [ %i.bb, %.lr.ph ], [ %.05165.ph, %.lr.ph.preheader161 ] ; 2 uses
  %i.az = load i16, ptr %.05165, align 2, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %.066, i64 2 ; 2 uses
  store i16 %i.az, ptr %.066, align 2, !tbaa !89
  %i.bb = getelementptr inbounds nuw i8, ptr %.05165, i64 6 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !216

._crit_edge:                                      ; preds = %.lr.ph, %.preheader63
  %.051.lcssa = phi ptr [ %1, %.preheader63 ], [ %i.bb, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %.preheader63 ], [ %i.i, %.lr.ph ] ; 9 uses
  %.0.lcssa106 = ptrtoaddr ptr %.0.lcssa to i64   ; 2 uses
  %i.bc = zext i32 %i.d to i64                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bc
  %i.be = icmp eq ptr %.051.lcssa, %i.bd
  br i1 %i.be, label %.preheader62, label %bb.e

.preheader62:                                     ; preds = %._crit_edge
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.idx ; 3 uses
  %.not5768 = icmp eq ptr %.0.lcssa, %i.bf
  br i1 %.not5768, label %._crit_edge72, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %.preheader62
  %i.bg = udiv i32 %2, 3
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = add i64 %i.bi, %3
  %i.bk = add i64 %i.bj, -2
  %i.bl = sub i64 %i.bk, %.0.lcssa106             ; 2 uses
  %i.bm = lshr i64 %i.bl, 1
  %i.bn = add nuw i64 %i.bm, 1                    ; 2 uses
  %min.iters.check107 = icmp ult i64 %i.bl, 288
  br i1 %min.iters.check107, label %.lr.ph71.preheader159, label %vector.memcheck108

.lr.ph71.preheader159:                            ; preds = %vector.body114, %vector.memcheck108, %.lr.ph71.preheader
  %.170.ph = phi ptr [ %.0.lcssa, %vector.memcheck108 ], [ %.0.lcssa, %.lr.ph71.preheader ], [ %i.cd, %vector.body114 ]
  %.05069.ph = phi ptr [ %i.a, %vector.memcheck108 ], [ %i.a, %.lr.ph71.preheader ], [ %i.cf, %vector.body114 ]
  br label %.lr.ph71

vector.memcheck108:                               ; preds = %.lr.ph71.preheader
  %i.bo = shl nuw nsw i64 %i.bh, 2
  %i.bp = add i64 %i.bo, %3
  %i.bq = add i64 %i.bp, -2
  %i.br = sub i64 %i.bq, %.0.lcssa106             ; 2 uses
  %i.bs = and i64 %i.br, -2
  %i.bt = getelementptr i8, ptr %.0.lcssa, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 2
  %i.bv = lshr i64 %i.br, 1
  %i.bw = mul i64 %i.bv, 6
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %bound0109 = icmp ult ptr %.0.lcssa, %i.by
  %bound1110 = icmp ult ptr %i.a, %i.bu
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %.lr.ph71.preheader159, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck108
  %i.bz = and i64 %i.bn, 7                        ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 8, i64 %i.bz
  %n.vec113 = sub i64 %i.bn, %i.cb                ; 3 uses
  %i.cc = shl i64 %n.vec113, 1
  %i.cd = getelementptr i8, ptr %.0.lcssa, i64 %i.cc
  %i.ce = mul i64 %n.vec113, 6
  %i.cf = getelementptr i8, ptr %i.a, i64 %i.ce
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next125, %vector.body114 ] ; 3 uses
  %i.cg = shl i64 %index115, 1
  %next.gep116 = getelementptr i8, ptr %.0.lcssa, i64 %i.cg
  %i.ch = mul i64 %index115, 6                    ; 8 uses
  %next.gep117 = getelementptr i8, ptr %i.a, i64 %i.ch
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.ch
  %next.gep118 = getelementptr i8, ptr %i.ci, i64 6
  %i.cj = getelementptr i8, ptr %i.a, i64 %i.ch
  %next.gep119 = getelementptr i8, ptr %i.cj, i64 12
  %i.ck = getelementptr i8, ptr %i.a, i64 %i.ch
  %next.gep120 = getelementptr i8, ptr %i.ck, i64 18
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ch
  %next.gep121 = getelementptr i8, ptr %i.cl, i64 24
  %i.cm = getelementptr i8, ptr %i.a, i64 %i.ch
  %next.gep122 = getelementptr i8, ptr %i.cm, i64 30
  %i.cn = getelementptr i8, ptr %i.a, i64 %i.ch
  %next.gep123 = getelementptr i8, ptr %i.cn, i64 36
  %i.co = getelementptr i8, ptr %i.a, i64 %i.ch
  %next.gep124 = getelementptr i8, ptr %i.co, i64 42
  %i.cp = load i16, ptr %next.gep117, align 2, !tbaa !89, !alias.scope !229
  %i.cq = load i16, ptr %next.gep118, align 2, !tbaa !89, !alias.scope !229
  %i.cr = load i16, ptr %next.gep119, align 2, !tbaa !89, !alias.scope !229
  %i.cs = load i16, ptr %next.gep120, align 2, !tbaa !89, !alias.scope !229
  %i.ct = load i16, ptr %next.gep121, align 2, !tbaa !89, !alias.scope !229
  %i.cu = load i16, ptr %next.gep122, align 2, !tbaa !89, !alias.scope !229
  %i.cv = load i16, ptr %next.gep123, align 2, !tbaa !89, !alias.scope !229
  %i.cw = load i16, ptr %next.gep124, align 2, !tbaa !89, !alias.scope !229
  %i.cx = insertelement <8 x i16> poison, i16 %i.cp, i64 0
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 1
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 2
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 3
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 4
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 5
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 6
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 7
  store <8 x i16> %i.de, ptr %next.gep116, align 2, !tbaa !89, !alias.scope !230, !noalias !229
  %index.next125 = add nuw i64 %index115, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next125, %n.vec113
  br i1 %i.df, label %.lr.ph71.preheader159, label %vector.body114, !llvm.loop !220

bb.e:                                             ; preds = %._crit_edge
  %i.dg = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dg, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 323, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph71:                                         ; preds = %.lr.ph71.preheader159, %.lr.ph71
  %.170 = phi ptr [ %i.dj, %.lr.ph71 ], [ %.170.ph, %.lr.ph71.preheader159 ] ; 2 uses
  %.05069 = phi ptr [ %i.dk, %.lr.ph71 ], [ %.05069.ph, %.lr.ph71.preheader159 ] ; 2 uses
  %i.di = load i16, ptr %.05069, align 2, !tbaa !89
  %i.dj = getelementptr inbounds nuw i8, ptr %.170, i64 2 ; 2 uses
  store i16 %i.di, ptr %.170, align 2, !tbaa !89
  %i.dk = getelementptr inbounds nuw i8, ptr %.05069, i64 6 ; 2 uses
  %.not57 = icmp eq ptr %i.dj, %i.bf
  br i1 %.not57, label %._crit_edge72, label %.lr.ph71, !llvm.loop !221

._crit_edge72:                                    ; preds = %.lr.ph71, %.preheader62
  %.050.lcssa = phi ptr [ %i.a, %.preheader62 ], [ %i.dk, %.lr.ph71 ]
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader62 ], [ %i.bf, %.lr.ph71 ] ; 8 uses
  %.1.lcssa136 = ptrtoaddr ptr %.1.lcssa to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 2
  %i.dm = icmp eq ptr %.050.lcssa, %i.dl
  br i1 %i.dm, label %.preheader, label %bb.h

.preheader:                                       ; preds = %._crit_edge72
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bc ; 2 uses
  %.not5875 = icmp eq ptr %.1.lcssa, %i.dn
  br i1 %.not5875, label %._crit_edge79, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.preheader
  %i.do = udiv i32 %2, 3
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = mul nuw nsw i64 %i.dp, 6
  %i.dr = add i64 %i.dq, %3
  %i.ds = add i64 %i.dr, -2
  %i.dt = sub i64 %i.ds, %.1.lcssa136             ; 4 uses
  %i.du = lshr i64 %i.dt, 1
  %i.dv = add nuw i64 %i.du, 1                    ; 2 uses
  %min.iters.check136 = icmp ult i64 %i.dt, 304
  br i1 %min.iters.check136, label %.lr.ph78.preheader158, label %vector.memcheck137

.lr.ph78.preheader158:                            ; preds = %vector.body143, %vector.memcheck137, %.lr.ph78.preheader
  %.277.ph = phi ptr [ %.1.lcssa, %vector.memcheck137 ], [ %.1.lcssa, %.lr.ph78.preheader ], [ %i.eh, %vector.body143 ]
  %.04976.ph = phi ptr [ %i.b, %vector.memcheck137 ], [ %i.b, %.lr.ph78.preheader ], [ %i.ej, %vector.body143 ]
  br label %.lr.ph78

vector.memcheck137:                               ; preds = %.lr.ph78.preheader
  %i.dw = and i64 %i.dt, -2
  %i.dx = getelementptr i8, ptr %.1.lcssa, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 2
  %i.dz = lshr i64 %i.dt, 1
  %i.ea = mul i64 %i.dz, 6
  %i.eb = getelementptr i8, ptr %1, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 6
  %bound0138 = icmp ult ptr %.1.lcssa, %i.ec
  %bound1139 = icmp ult ptr %i.b, %i.dy
  %found.conflict140 = and i1 %bound0138, %bound1139
  br i1 %found.conflict140, label %.lr.ph78.preheader158, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck137
  %i.ed = and i64 %i.dv, 7                        ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  %i.ef = select i1 %i.ee, i64 8, i64 %i.ed
  %n.vec142 = sub i64 %i.dv, %i.ef                ; 3 uses
  %i.eg = shl i64 %n.vec142, 1
  %i.eh = getelementptr i8, ptr %.1.lcssa, i64 %i.eg
  %i.ei = mul i64 %n.vec142, 6
  %i.ej = getelementptr i8, ptr %i.b, i64 %i.ei
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next154, %vector.body143 ] ; 3 uses
  %i.ek = shl i64 %index144, 1
  %next.gep145 = getelementptr i8, ptr %.1.lcssa, i64 %i.ek
  %i.el = mul i64 %index144, 6                    ; 8 uses
  %next.gep146 = getelementptr i8, ptr %i.b, i64 %i.el
  %i.em = getelementptr i8, ptr %i.b, i64 %i.el
  %next.gep147 = getelementptr i8, ptr %i.em, i64 6
  %i.en = getelementptr i8, ptr %i.b, i64 %i.el
  %next.gep148 = getelementptr i8, ptr %i.en, i64 12
  %i.eo = getelementptr i8, ptr %i.b, i64 %i.el
  %next.gep149 = getelementptr i8, ptr %i.eo, i64 18
  %i.ep = getelementptr i8, ptr %i.b, i64 %i.el
  %next.gep150 = getelementptr i8, ptr %i.ep, i64 24
  %i.eq = getelementptr i8, ptr %i.b, i64 %i.el
  %next.gep151 = getelementptr i8, ptr %i.eq, i64 30
  %i.er = getelementptr i8, ptr %i.b, i64 %i.el
  %next.gep152 = getelementptr i8, ptr %i.er, i64 36
  %i.es = getelementptr i8, ptr %i.b, i64 %i.el
  %next.gep153 = getelementptr i8, ptr %i.es, i64 42
  %i.et = load i16, ptr %next.gep146, align 2, !tbaa !89, !alias.scope !231
  %i.eu = load i16, ptr %next.gep147, align 2, !tbaa !89, !alias.scope !231
  %i.ev = load i16, ptr %next.gep148, align 2, !tbaa !89, !alias.scope !231
  %i.ew = load i16, ptr %next.gep149, align 2, !tbaa !89, !alias.scope !231
  %i.ex = load i16, ptr %next.gep150, align 2, !tbaa !89, !alias.scope !231
  %i.ey = load i16, ptr %next.gep151, align 2, !tbaa !89, !alias.scope !231
  %i.ez = load i16, ptr %next.gep152, align 2, !tbaa !89, !alias.scope !231
  %i.fa = load i16, ptr %next.gep153, align 2, !tbaa !89, !alias.scope !231
  %i.fb = insertelement <8 x i16> poison, i16 %i.et, i64 0
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 1
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 2
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 3
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 4
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 5
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 6
  %i.fi = insertelement <8 x i16> %i.fh, i16 %i.fa, i64 7
  store <8 x i16> %i.fi, ptr %next.gep145, align 2, !tbaa !89, !alias.scope !232, !noalias !231
  %index.next154 = add nuw i64 %index144, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next154, %n.vec142
  br i1 %i.fj, label %.lr.ph78.preheader158, label %vector.body143, !llvm.loop !225

bb.h:                                             ; preds = %._crit_edge72
  %i.fk = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fk, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 331, ptr noundef nonnull @.str.2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph78:                                         ; preds = %.lr.ph78.preheader158, %.lr.ph78
  %.277 = phi ptr [ %i.fn, %.lr.ph78 ], [ %.277.ph, %.lr.ph78.preheader158 ] ; 2 uses
  %.04976 = phi ptr [ %i.fo, %.lr.ph78 ], [ %.04976.ph, %.lr.ph78.preheader158 ] ; 2 uses
  %i.fm = load i16, ptr %.04976, align 2, !tbaa !89
  %i.fn = getelementptr inbounds nuw i8, ptr %.277, i64 2 ; 2 uses
  store i16 %i.fm, ptr %.277, align 2, !tbaa !89
  %i.fo = getelementptr inbounds nuw i8, ptr %.04976, i64 6 ; 2 uses
  %.not58 = icmp eq ptr %i.fn, %i.dn
  br i1 %.not58, label %._crit_edge79, label %.lr.ph78, !llvm.loop !226

._crit_edge79:                                    ; preds = %.lr.ph78, %.preheader
  %.049.lcssa = phi ptr [ %i.b, %.preheader ], [ %i.fo, %.lr.ph78 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 4
  %i.fq = icmp eq ptr %.049.lcssa, %i.fp
  br i1 %i.fq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %._crit_edge79
  %i.fr = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1, i32 noundef 339, ptr noundef nonnull @.str.2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.fr, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge79
  ret i1 true

bb.o:                                             ; preds = %bb.g, %bb.j, %bb.m, %bb.d
  %.sink = phi ptr [ %i.dg, %bb.g ], [ %i.fk, %bb.j ], [ %i.fr, %bb.m ], [ %i.ax, %bb.d ]
  %.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.g ], [ %i.fl, %bb.j ], [ %i.fs, %bb.m ], [ %i.ay, %bb.d ]
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
end_hunk_0
