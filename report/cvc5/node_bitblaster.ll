Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/node_bitblaster?download=true
inline.NumInlined: 2543
inline.NumDeleted: 598
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4cvc58internal6theory2bv6rshiftINS0_12NodeTemplateILb1EEEEEvPNS0_11NodeManagerERSt6vectorIT_SaIS9_EEj:bb.a
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67   ; 4 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !67
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.b, !prof !69

bb.b:                                             ; preds = %.lr.ph
  %i.v = load i64, ptr %i.t, align 8              ; 3 uses
  %i.w = and i64 %i.v, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.w, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.c, !prof !69

bb.c:                                             ; preds = %bb.b
  %i.x = add i64 %i.v, 1152920405095219200
  %i.y = and i64 %i.x, 1152920405095219200        ; 2 uses
  %i.z = and i64 %i.v, -1152920405095219201
  %i.aa = or disjoint i64 %i.y, %i.z
  store i64 %i.aa, ptr %i.t, align 8
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %bb.d, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !69

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.d, %bb.c, %bb.b
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !67  ; 5 uses
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !67
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = lshr i64 %i.ad, 40
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = and i32 %i.af, 1048575                  ; 3 uses
  %i.ah = icmp samesign ult i32 %i.ag, 1048574
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !68

bb.e:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ai = add nuw nsw i32 %i.ag, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 40
  %i.al = and i64 %i.ad, -1152920405095219201
  %i.am = or i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.ac, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.f:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.an = icmp eq i32 %i.ag, 1048574
  br i1 %i.an, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !69

bb.g:                                             ; preds = %bb.f
  %i.ao = or i64 %i.ad, 1152920405095219200
  store i64 %i.ao, ptr %i.ac, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %.lr.ph, %bb.e, %bb.f, %bb.g
  %i.ap = add i32 %.029, 1                        ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.as = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3                 ; 3 uses
  %i.ax = sub nsw i64 %i.aw, %i.c
  %i.ay = icmp ugt i64 %i.ax, %i.aq
  br i1 %i.ay, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !791

._crit_edge33:                                    ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %._crit_edge
  ret void

.lr.ph32:                                         ; preds = %._crit_edge, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.az = phi i64 [ %i.cj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %i.l, %._crit_edge ]
  %.01830 = phi i32 [ %i.ci, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %i.k, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !795
  store i8 0, ptr %i.a, align 1, !tbaa !96, !noalias !795
  call void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %3, ptr noundef nonnull align 8 dereferenceable(3592) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !795
  %i.ba = load ptr, ptr %1, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67 ; 4 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !67
  %.not.i21 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i21, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25, label %bb.h, !prof !69

bb.h:                                             ; preds = %.lr.ph32
  %i.be = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.bf = and i64 %i.be, 1152920405095219200
  %.not.i.i22 = icmp eq i64 %i.bf, 1152920405095219200
  br i1 %.not.i.i22, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i23, label %bb.i, !prof !69

bb.i:                                             ; preds = %bb.h
  %i.bg = add i64 %i.be, 1152920405095219200
  %i.bh = and i64 %i.bg, 1152920405095219200      ; 2 uses
  %i.bi = and i64 %i.be, -1152920405095219201
  %i.bj = or disjoint i64 %i.bh, %i.bi
  store i64 %i.bj, ptr %i.bc, align 8
  %i.bk = icmp eq i64 %i.bh, 0
  br i1 %i.bk, label %bb.j, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i23, !prof !69

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i23 unwind label %bb.q

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i23:  ; preds = %bb.j, %bb.i, %bb.h
  %i.bl = load ptr, ptr %3, align 8, !tbaa !67    ; 5 uses
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !67
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = lshr i64 %i.bm, 40
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 1048575                  ; 3 uses
  %i.bq = icmp samesign ult i32 %i.bp, 1048574
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !68

bb.k:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i23
  %i.br = add nuw nsw i32 %i.bp, 1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 40
  %i.bu = and i64 %i.bm, -1152920405095219201
  %i.bv = or i64 %i.bt, %i.bu
  store i64 %i.bv, ptr %i.bl, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25

bb.l:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i23
  %i.bw = icmp eq i32 %i.bp, 1048574
  br i1 %i.bw, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25, !prof !69

bb.m:                                             ; preds = %bb.l
  %i.bx = or i64 %i.bm, 1152920405095219200
  store i64 %i.bx, ptr %i.bl, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25 unwind label %bb.q

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25: ; preds = %bb.l, %bb.k, %.lr.ph32, %bb.m
  %i.by = load ptr, ptr %3, align 8, !tbaa !67    ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %i.ca = and i64 %i.bz, 1152920405095219200
  %.not.i.i26 = icmp eq i64 %i.ca, 1152920405095219200
  br i1 %.not.i.i26, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.n, !prof !69

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25
  %i.cb = add i64 %i.bz, 1152920405095219200
  %i.cc = and i64 %i.cb, 1152920405095219200      ; 2 uses
  %i.cd = and i64 %i.bz, -1152920405095219201
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.by, align 8
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !69

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ci = add i32 %.01830, 1                      ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.cl = load ptr, ptr %1, align 8, !tbaa !83
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = icmp ugt i64 %i.cp, %i.cj
  br i1 %i.cq, label %.lr.ph32, label %._crit_edge33, !llvm.loop !794

bb.q:                                             ; preds = %bb.m, %bb.j
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.cr
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory2bv6lshiftINS0_12NodeTemplateILb1EEEEEvPNS0_11NodeManagerERSt6vectorIT_SaIS9_EEj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate.318", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = load ptr, ptr %1, align 8, !tbaa !83
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %.not.not25 = icmp slt i32 %2, %i.i
  br i1 %.not.not25, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %sext = shl i64 %i.g, 29
  %i.j = ashr i64 %sext, 32
  %4 = add nsw i64 %i.j, -1
  %i.k = sext i32 %2 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.a
  %.not.a = icmp eq i32 %2, 0
  br i1 %.not.a, label %._crit_edge, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph28

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %indvars.iv = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit ] ; 3 uses
  %i.l = trunc nsw i64 %indvars.iv to i32
  %i.m = sub i32 %i.l, %2
  %i.n = zext i32 %i.m to i64
  %i.o = load ptr, ptr %1, align 8, !tbaa !83     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67   ; 4 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !67
  %.not.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.b, !prof !69

bb.b:                                             ; preds = %.lr.ph
  %i.t = load i64, ptr %i.r, align 8              ; 3 uses
  %i.u = and i64 %i.t, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.u, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.c, !prof !69

bb.c:                                             ; preds = %bb.b
  %i.v = add i64 %i.t, 1152920405095219200
  %i.w = and i64 %i.v, 1152920405095219200        ; 2 uses
  %i.x = and i64 %i.t, -1152920405095219201
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.r, align 8
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %bb.d, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !69

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.d, %bb.c, %bb.b
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !67  ; 5 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !67
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = lshr i64 %i.ab, 40
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1048575                  ; 3 uses
  %i.af = icmp samesign ult i32 %i.ae, 1048574
  br i1 %i.af, label %bb.e, label %bb.f, !prof !68

bb.e:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ag = add nuw nsw i32 %i.ae, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 40
  %i.aj = and i64 %i.ab, -1152920405095219201
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.aa, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.f:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.al = icmp eq i32 %i.ae, 1048574
  br i1 %i.al, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !69

bb.g:                                             ; preds = %bb.f
  %i.am = or i64 %i.ab, 1152920405095219200
  store i64 %i.am, ptr %i.aa, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %.lr.ph, %bb.e, %bb.f, %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !796

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %.preheader
  ret void

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %indvars.iv30 = phi i64 [ 0, %.lr.ph28.preheader ], [ %indvars.iv.next31, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !800
  store i8 0, ptr %i.a, align 1, !tbaa !96, !noalias !800
  call void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %3, ptr noundef nonnull align 8 dereferenceable(3592) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !800
  %i.an = load ptr, ptr %1, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv30 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !67 ; 4 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !67
  %.not.i18 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i18, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit22, label %bb.h, !prof !69

bb.h:                                             ; preds = %.lr.ph28
  %i.ar = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.as = and i64 %i.ar, 1152920405095219200
  %.not.i.i19 = icmp eq i64 %i.as, 1152920405095219200
  br i1 %.not.i.i19, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i20, label %bb.i, !prof !69

bb.i:                                             ; preds = %bb.h
  %i.at = add i64 %i.ar, 1152920405095219200
  %i.au = and i64 %i.at, 1152920405095219200      ; 2 uses
  %i.av = and i64 %i.ar, -1152920405095219201
  %i.aw = or disjoint i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ap, align 8
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %bb.j, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i20, !prof !69

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i20 unwind label %bb.q

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i20:  ; preds = %bb.j, %bb.i, %bb.h
  %i.ay = load ptr, ptr %3, align 8, !tbaa !67    ; 5 uses
  store ptr %i.ay, ptr %i.ao, align 8, !tbaa !67
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.ba = lshr i64 %i.az, 40
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1048575                  ; 3 uses
  %i.bd = icmp samesign ult i32 %i.bc, 1048574
  br i1 %i.bd, label %bb.k, label %bb.l, !prof !68

bb.k:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i20
  %i.be = add nuw nsw i32 %i.bc, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 40
  %i.bh = and i64 %i.az, -1152920405095219201
  %i.bi = or i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %i.ay, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit22

bb.l:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i20
  %i.bj = icmp eq i32 %i.bc, 1048574
  br i1 %i.bj, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit22, !prof !69

bb.m:                                             ; preds = %bb.l
  %i.bk = or i64 %i.az, 1152920405095219200
  store i64 %i.bk, ptr %i.ay, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit22 unwind label %bb.q

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit22: ; preds = %bb.l, %bb.k, %.lr.ph28, %bb.m
  %i.bl = load ptr, ptr %3, align 8, !tbaa !67    ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = and i64 %i.bm, 1152920405095219200
  %.not.i.i23 = icmp eq i64 %i.bn, 1152920405095219200
  br i1 %.not.i.i23, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.n, !prof !69

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit22
  %i.bo = add i64 %i.bm, 1152920405095219200
  %i.bp = and i64 %i.bo, 1152920405095219200      ; 2 uses
  %i.bq = and i64 %i.bm, -1152920405095219201
  %i.br = or disjoint i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.bl, align 8
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !69

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit22, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph28, !llvm.loop !799

bb.q:                                             ; preds = %bb.m, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.bv
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #18

declare noundef i32 @_ZN4cvc58internal6theory2bv5utils14getExtractHighENS0_12NodeTemplateILb0EEE(ptr noundef align 8) local_unnamed_addr #1

declare noundef i32 @_ZN4cvc58internal6theory2bv5utils13getExtractLowENS0_12NodeTemplateILb0EEE(ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4cvc58internal12NodeTemplateILb0EE11getOperatorEv(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023
  %i.f = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.e)
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.h = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 1023
  call void @_ZN4cvc58internal11NodeManager10operatorOfENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %2, ptr noundef nonnull align 8 dereferenceable(3592) %i.j, i32 noundef %i.n)
  %i.o = load ptr, ptr %2, align 8, !tbaa !64     ; 5 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !67
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = lshr i64 %i.p, 40
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 1048575                    ; 3 uses
  %i.t = icmp samesign ult i32 %i.s, 1048574
  br i1 %i.t, label %bb.c, label %bb.d, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.u = add nuw nsw i32 %i.s, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 40
  %i.x = and i64 %i.p, -1152920405095219201
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %i.o, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %i.s, 1048574
  br i1 %i.z, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !69

bb.e:                                             ; preds = %bb.d
  %i.aa = or i64 %i.p, 1152920405095219200
  store i64 %i.aa, ptr %i.o, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

bb.f:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %1, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 5 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !67
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = lshr i64 %i.ae, 40
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = and i32 %i.ag, 1048575                  ; 3 uses
  %i.ai = icmp samesign ult i32 %i.ah, 1048574
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !68

bb.g:                                             ; preds = %bb.f
  %i.aj = add nuw nsw i32 %i.ah, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 40
  %i.am = and i64 %i.ae, -1152920405095219201
  %i.an = or i64 %i.al, %i.am
  store i64 %i.an, ptr %i.ad, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = icmp eq i32 %i.ah, 1048574
  br i1 %i.ao, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, !prof !69

bb.i:                                             ; preds = %bb.h
  %i.ap = or i64 %i.ae, 1152920405095219200
  store i64 %i.ap, ptr %i.ad, align 8
end_hunk_0
