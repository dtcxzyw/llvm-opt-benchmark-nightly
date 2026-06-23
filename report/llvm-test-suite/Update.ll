inline.NumInlined: 461
inline.NumDeleted: 136
begin_hunk_0_@_ZN18COutMultiVolStream5WriteEPKvjPj:bb.a

.outer.split:                                     ; preds = %.outer.split.outer, %.outer
  %i.z = phi i64 [ %.promoted602, %.outer.split.outer ], [ %i.hg, %.outer ] ; 5 uses
  %i.aa = phi i32 [ %.promoted, %.outer.split.outer ], [ %i.hh, %.outer ] ; 5 uses
  %.not77 = icmp slt i32 %i.aa, %i.u
  br i1 %.not77, label %bb.at, label %bb.c

bb.c:                                             ; preds = %.outer.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.ab = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #20 ; 2 uses
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !34
  store i32 0, ptr %i.ab, align 4, !tbaa !35
  store i32 4, ptr %i.h, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ac = add nsw i32 %i.aa, 1
  invoke void @_Z21ConvertUInt32ToStringjPw(i32 noundef %i.ac, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  %wcslen.i.i = call i64 @wcslen(ptr nonnull %i.a)
  %i.ad = trunc i64 %wcslen.i.i to i32            ; 5 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 3 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = icmp slt i32 %i.ad, -1
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = select i1 %i.ah, i64 -1, i64 %i.ai
  %i.ak = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #20
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %bb.e
  store i32 0, ptr %i.ak, align 4, !tbaa !35
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc, %bb.d
  %.sroa.0188.1 = phi ptr [ null, %bb.d ], [ %i.ak, %.noexc ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.al, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %.sroa.0188.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.an, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.am = load i32, ptr %.04.i.i, align 4, !tbaa !35 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.am, ptr %.0.i.i, align 4, !tbaa !35
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit.preheader, label %bb.f, !llvm.loop !38

_ZN11CStringBaseIwEC2EPKw.exit.preheader:         ; preds = %bb.f
  %i.ao = icmp slt i32 %i.ad, 3
  br i1 %i.ao, label %.lr.ph, label %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN11CStringBaseIwEC2EPKw.exit.preheader, %_ZN11CStringBaseIwED2Ev.exit99
  %.sroa.20.0290 = phi i32 [ %.sroa.20.2, %_ZN11CStringBaseIwED2Ev.exit99 ], [ %i.ae, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ] ; 3 uses
  %.sroa.11.0289 = phi i32 [ %i.ba, %_ZN11CStringBaseIwED2Ev.exit99 ], [ %i.ad, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ] ; 4 uses
  %.sroa.0188.0288 = phi ptr [ %.sroa.0188.2, %_ZN11CStringBaseIwED2Ev.exit99 ], [ %.sroa.0188.1, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ] ; 6 uses
  %i.ap = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %bb.g unwind label %bb.p       ; 5 uses

bb.g:                                             ; preds = %.lr.ph
  store i32 48, ptr %i.ap, align 4, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 0, ptr %i.aq, align 4, !tbaa !35
  %i.ar = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i unwind label %bb.q ; 6 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %bb.g
  store i32 48, ptr %i.ar, align 4, !tbaa !35, !noalias !39
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, %thread-pre-split
  %.0.i.i.i520 = phi ptr [ %i.ar, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.as, %thread-pre-split ]
  %.04.i.i.i519 = phi ptr [ %i.ap, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.at, %thread-pre-split ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i520, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04.i.i.i519, i64 4 ; 2 uses
  %.pr = load i32, ptr %i.at, align 4, !tbaa !35, !noalias !39 ; 2 uses
  store i32 %.pr, ptr %i.as, align 4, !tbaa !35, !noalias !39
  %.not.i.i.i = icmp eq i32 %.pr, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %thread-pre-split, !llvm.loop !38

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %thread-pre-split
  %.not.i.i138 = icmp sgt i32 %.sroa.11.0289, 0
  br i1 %.not.i.i138, label %bb.h, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

bb.h:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.au = invoke noalias noundef nonnull dereferenceable(28) ptr @_Znam(i64 noundef 28) #20
          to label %.lr.ph.i.i.i.preheader unwind label %_ZN11CStringBaseIwED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !35
  store i32 %i.av, ptr %i.au, align 4, !tbaa !35
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !35
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i:         ; preds = %.lr.ph.i.i.i.preheader, %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.sroa.0178.1 = phi ptr [ %i.ar, %_ZN11CStringBaseIwEC2ERKS0_.exit.i ], [ %i.au, %.lr.ph.i.i.i.preheader ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
  %.04.i.i139 = phi ptr [ %.sroa.0188.0288, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.ax, %bb.i ] ; 2 uses
  %.sroa.0178.1.pn = phi ptr [ %.sroa.0178.1, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %.0.i4.i, %bb.i ]
  %.0.i4.i = getelementptr inbounds nuw i8, ptr %.sroa.0178.1.pn, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04.i.i139, i64 4
  %i.ay = load i32, ptr %.04.i.i139, align 4, !tbaa !35 ; 2 uses
  store i32 %i.ay, ptr %.0.i4.i, align 4, !tbaa !35
  %.not.i5.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i5.i, label %bb.j, label %bb.i, !llvm.loop !38

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #21
  br label %_ZN11CStringBaseIwED2Ev.exit101

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i32 %.sroa.11.0289, 1           ; 2 uses
  store i32 0, ptr %.sroa.0188.0288, align 4, !tbaa !35
  %i.bb = add nsw i32 %.sroa.11.0289, 2           ; 3 uses
  %i.bc = icmp eq i32 %i.bb, %.sroa.20.0290
  br i1 %i.bc, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i94, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = icmp slt i32 %.sroa.11.0289, -2
  %i.bf = shl nuw nsw i64 %i.bd, 2
  %i.bg = select i1 %i.be, i64 -1, i64 %i.bf
  %i.bh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #20
          to label %.noexc98 unwind label %_ZN11CStringBaseIwED2Ev.exit100 ; 2 uses

.noexc98:                                         ; preds = %bb.k
  %i.bi = icmp sgt i32 %.sroa.20.0290, 0
  br i1 %i.bi, label %._crit_edge.thread.i.i, label %bb.l

._crit_edge.thread.i.i:                           ; preds = %.noexc98
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0188.0288) #21
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i.i, %.noexc98
  store i32 0, ptr %i.bh, align 4, !tbaa !35
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i94

_ZN11CStringBaseIwE11SetCapacityEi.exit.i94:      ; preds = %bb.l, %bb.j
  %.sroa.0188.2 = phi ptr [ %.sroa.0188.0288, %bb.j ], [ %i.bh, %bb.l ] ; 3 uses
  %.sroa.20.2 = phi i32 [ %.sroa.20.0290, %bb.j ], [ %i.bb, %bb.l ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i94
  %.04.i.i95 = phi ptr [ %.sroa.0178.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i94 ], [ %i.bj, %bb.m ] ; 2 uses
  %.0.i.i96 = phi ptr [ %.sroa.0188.2, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i94 ], [ %i.bl, %bb.m ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04.i.i95, i64 4
  %i.bk = load i32, ptr %.04.i.i95, align 4, !tbaa !35 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i96, i64 4
  store i32 %i.bk, ptr %.0.i.i96, align 4, !tbaa !35
  %.not.i.i97 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i97, label %_ZN11CStringBaseIwED2Ev.exit99, label %bb.m, !llvm.loop !38

_ZN11CStringBaseIwED2Ev.exit99:                   ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0178.1) #21
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #21
  %exitcond.not = icmp eq i32 %i.ba, 3
  br i1 %exitcond.not, label %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge, label %.lr.ph, !llvm.loop !42

bb.n:                                             ; preds = %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit137

bb.o:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit137

bb.p:                                             ; preds = %.lr.ph
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.q:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit101

_ZN11CStringBaseIwED2Ev.exit100:                  ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0178.1) #21
  br label %_ZN11CStringBaseIwED2Ev.exit101

_ZN11CStringBaseIwED2Ev.exit101:                  ; preds = %bb.q, %_ZN11CStringBaseIwED2Ev.exit.i, %_ZN11CStringBaseIwED2Ev.exit100
  %.pn85 = phi { ptr, i32 } [ %i.bq, %_ZN11CStringBaseIwED2Ev.exit100 ], [ %i.bp, %bb.q ], [ %i.az, %_ZN11CStringBaseIwED2Ev.exit.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #21
  br label %.body109

_ZN11CStringBaseIwEC2EPKw.exit._crit_edge:        ; preds = %_ZN11CStringBaseIwED2Ev.exit99, %_ZN11CStringBaseIwEC2EPKw.exit.preheader
  %.sroa.0188.0.lcssa = phi ptr [ %.sroa.0188.1, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ], [ %.sroa.0188.2, %_ZN11CStringBaseIwED2Ev.exit99 ] ; 7 uses
  %.sroa.11.0.lcssa = phi i32 [ %i.ad, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ], [ 3, %_ZN11CStringBaseIwED2Ev.exit99 ] ; 2 uses
  %i.br = load i32, ptr %i.j, align 8, !tbaa !43, !noalias !44 ; 9 uses
  %i.bs = add nsw i32 %i.br, 1                    ; 4 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i102, label %bb.r

bb.r:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = icmp slt i32 %i.br, -1
  %i.bw = shl nuw nsw i64 %i.bu, 2
  %i.bx = select i1 %i.bv, i64 -1, i64 %i.bw
  %i.by = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bx) #20
          to label %.noexc108 unwind label %bb.ad ; 2 uses

.noexc108:                                        ; preds = %bb.r
  store i32 0, ptr %i.by, align 4, !tbaa !35, !noalias !44
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i102

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i102:   ; preds = %.noexc108, %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge
  %.sroa.0.0 = phi ptr [ null, %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge ], [ %i.by, %.noexc108 ] ; 6 uses
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !34, !noalias !44
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i102
  %.04.i.i.i103 = phi ptr [ %i.bz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i102 ], [ %i.ca, %bb.s ] ; 2 uses
  %.0.i.i.i104 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i102 ], [ %i.cc, %bb.s ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.04.i.i.i103, i64 4
  %i.cb = load i32, ptr %.04.i.i.i103, align 4, !tbaa !35, !noalias !44 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i104, i64 4
  store i32 %i.cb, ptr %.0.i.i.i104, align 4, !tbaa !35, !noalias !44
  %.not.i.i.i105 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i105, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i106, label %bb.s, !llvm.loop !38

_ZN11CStringBaseIwEC2ERKS0_.exit.i106:            ; preds = %bb.s
  %i.cd = icmp sgt i32 %i.br, 63
  %i.ce = lshr i32 %i.bs, 1
  %i.cf = icmp sgt i32 %i.br, 7
  %..i.i147 = select i1 %i.cf, i32 16, i32 4
  %.0.i.i148 = select i1 %i.cd, i32 %i.ce, i32 %..i.i147
  %i.cg = call i32 @llvm.umax.i32(i32 %.0.i.i148, i32 %.sroa.11.0.lcssa)
  %5 = add nsw i32 %i.cg, %i.bs                   ; 2 uses
  %i.ch = add nsw i32 %5, 1
  %6 = zext nneg i32 %i.ch to i64
  %7 = icmp slt i32 %5, -1
  %8 = shl nuw nsw i64 %6, 2
  %9 = select i1 %7, i64 -1, i64 %8
  %10 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %9) #20
          to label %.noexc160 unwind label %bb.v  ; 7 uses

.noexc160:                                        ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i106
  %i.ci = icmp sgt i32 %i.br, -1
  br i1 %i.ci, label %.preheader.i.i.i150, label %bb.t

.preheader.i.i.i150:                              ; preds = %.noexc160
  %.not206 = icmp eq i32 %i.br, 0
  br i1 %.not206, label %._crit_edge.i.i.i152, label %.lr.ph.i.i.i155

.lr.ph.i.i.i155:                                  ; preds = %.preheader.i.i.i150
  %wide.trip.count.i.i.i156 = zext nneg i32 %i.br to i64
  %i.cj = shl nuw nsw i64 %wide.trip.count.i.i.i156, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %10, ptr align 4 %.sroa.0.0, i64 %i.cj, i1 false), !tbaa !35
  br label %._crit_edge.thread.i.i.i153

._crit_edge.i.i.i152:                             ; preds = %.preheader.i.i.i150
  %i.ck = icmp eq ptr %.sroa.0.0, null
  br i1 %i.ck, label %bb.t, label %._crit_edge.thread.i.i.i153

._crit_edge.thread.i.i.i153:                      ; preds = %.lr.ph.i.i.i155, %._crit_edge.i.i.i152
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #21
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i.i.i153, %._crit_edge.i.i.i152, %.noexc160
  %i.cl = sext i32 %i.br to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %10, i64 %i.cl ; 2 uses
  store i32 0, ptr %i.cm, align 4, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.04.i.i144 = phi ptr [ %.sroa.0188.0.lcssa, %bb.t ], [ %i.cn, %bb.u ] ; 2 uses
  %.0.i4.i145 = phi ptr [ %i.cm, %bb.t ], [ %i.cp, %bb.u ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.04.i.i144, i64 4
  %i.co = load i32, ptr %.04.i.i144, align 4, !tbaa !35 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i4.i145, i64 4
  store i32 %i.co, ptr %.0.i4.i145, align 4, !tbaa !35
  %.not.i5.i146 = icmp eq i32 %i.co, 0
  br i1 %.not.i5.i146, label %bb.x, label %bb.u, !llvm.loop !38

bb.v:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i106
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = icmp eq ptr %.sroa.0.0, null
  br i1 %i.cr, label %.body109, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #21
  br label %.body109

bb.x:                                             ; preds = %bb.u
  %i.cs = add nsw i32 %i.br, %.sroa.11.0.lcssa    ; 5 uses
  %i.ct = invoke noalias noundef nonnull dereferenceable(1112) ptr @_Znwm(i64 noundef 1112) #20
          to label %bb.y unwind label %bb.ae      ; 10 uses

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 0, ptr %i.cu, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV14COutFileStream, i64 16), ptr %i.ct, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO9CFileBaseE, i64 16), ptr %i.cv, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store i32 -1, ptr %i.cw, align 8, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false)
  %i.cy = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20
          to label %bb.z unwind label %bb.af      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !54
  store i8 0, ptr %i.cy, align 1, !tbaa !55
  store i32 4, ptr %i.cz, align 4, !tbaa !56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO8COutFileE, i64 16), ptr %i.cv, align 8, !tbaa !48
  store ptr %i.ct, ptr %4, align 8, !tbaa !14
  %i.da = invoke noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
          to label %.noexc113 unwind label %bb.ae, !inline_history !57 ; 0 uses

.noexc113:                                        ; preds = %bb.z
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !58  ; 3 uses
  %.not6.i = icmp eq ptr %i.db, null
  br i1 %.not6.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc113
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = invoke noundef i32 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db)
          to label %bb.ab unwind label %bb.ae, !inline_history !57 ; 0 uses

bb.ab:                                            ; preds = %.noexc113, %bb.aa
  store ptr %i.ct, ptr %i.f, align 8, !tbaa !58
  %i.dg = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1104
  store i64 0, ptr %i.dh, align 8, !tbaa !59
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO8COutFile6CreateEPKwb(ptr noundef nonnull align 8 dereferenceable(1084) %i.di, ptr noundef nonnull %10, i1 noundef zeroext false)
          to label %_ZN14COutFileStream6CreateEPKwb.exit unwind label %bb.ae ; 2 uses

_ZN14COutFileStream6CreateEPKwb.exit:             ; preds = %bb.ab
  br i1 %i.dj, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_ZN14COutFileStream6CreateEPKwb.exit
  %i.dk = tail call ptr @__errno_location() #22
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  br label %bb.an

bb.ad:                                            ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.ae:                                            ; preds = %bb.ak, %bb.ah, %bb.ag, %bb.ab, %bb.aa, %bb.z, %bb.am, %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body122

bb.af:                                            ; preds = %bb.y
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef 1112) #21
  br label %.body122

bb.ag:                                            ; preds = %_ZN14COutFileStream6CreateEPKwb.exit
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !62  ; 3 uses
  %i.dq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %.noexc120 unwind label %bb.ae ; 6 uses

.noexc120:                                        ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  %i.dr = add nsw i32 %i.cs, 1                    ; 6 uses
  %i.ds = icmp ne i32 %i.dr, 0
  call void @llvm.assume(i1 %i.ds)
  %i.dt = zext nneg i32 %i.dr to i64
  %i.du = icmp slt i32 %i.cs, -1
  %i.dv = shl nuw nsw i64 %i.dt, 2
  %i.dw = select i1 %i.du, i64 -1, i64 %i.dv
  %i.dx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #20
          to label %.noexc.i unwind label %bb.ai  ; 3 uses

.noexc.i:                                         ; preds = %.noexc120
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store ptr %i.dx, ptr %i.dq, align 8, !tbaa !34
  store i32 0, ptr %i.dx, align 4, !tbaa !35
  store i32 %i.dr, ptr %i.dy, align 4, !tbaa !37
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i116

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i116:   ; preds = %.noexc.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i116
  %.04.i.i.i117 = phi ptr [ %i.dz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i116 ], [ %10, %.noexc.i ] ; 2 uses
  %.0.i.i.i118 = phi ptr [ %i.eb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i116 ], [ %i.dx, %.noexc.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.04.i.i.i117, i64 4
  %i.ea = load i32, ptr %.04.i.i.i117, align 4, !tbaa !35 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i.i118, i64 4
  store i32 %i.ea, ptr %.0.i.i.i118, align 4, !tbaa !35
  %.not.i.i.i119 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i119, label %bb.ah, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i116, !llvm.loop !38

bb.ah:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i116
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 %i.cs, ptr %i.ec, align 8, !tbaa !43
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dp)
          to label %bb.aj unwind label %bb.ae

bb.ai:                                            ; preds = %.noexc120
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 16) #21
  br label %.body122

bb.aj:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 12 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8  ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.ei
  store ptr %i.dq, ptr %i.ej, align 8, !tbaa !13
  %i.ek = add nsw i32 %i.eh, 1
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !8
  store i32 0, ptr %i.n, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.el = load ptr, ptr %i.g, align 8, !tbaa !34  ; 3 uses
  store i32 0, ptr %i.el, align 4, !tbaa !35
  %i.em = load i32, ptr %i.h, align 4, !tbaa !37  ; 2 uses
  %i.en = icmp eq i32 %i.dr, %i.em
  br i1 %i.en, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124.preheader, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = zext nneg i32 %i.dr to i64
  %i.ep = icmp slt i32 %i.cs, -1
  %i.eq = shl nuw nsw i64 %i.eo, 2
  %i.er = select i1 %i.ep, i64 -1, i64 %i.eq
  %i.es = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.er) #20
          to label %.noexc130 unwind label %bb.ae ; 3 uses

.noexc130:                                        ; preds = %bb.ak
  %i.et = icmp sgt i32 %i.em, 0
  br i1 %i.et, label %._crit_edge.thread.i.i128, label %bb.al

._crit_edge.thread.i.i128:                        ; preds = %.noexc130
  call void @_ZdaPv(ptr noundef nonnull %i.el) #21
  %.pre.i129 = load i32, ptr %i.n, align 8, !tbaa !43
  %i.eu = sext i32 %.pre.i129 to i64
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.thread.i.i128, %.noexc130
  %i.ev = phi i64 [ %i.eu, %._crit_edge.thread.i.i128 ], [ 0, %.noexc130 ]
  store ptr %i.es, ptr %i.g, align 8, !tbaa !34
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ev
  store i32 0, ptr %i.ew, align 4, !tbaa !35
  store i32 %i.dr, ptr %i.h, align 4, !tbaa !37
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i124.preheader: ; preds = %bb.al, %bb.aj
  %.0.i.i126.ph = phi ptr [ %i.el, %bb.aj ], [ %i.es, %bb.al ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124

_ZN11CStringBaseIwE11SetCapacityEi.exit.i124:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124
  %.04.i.i125 = phi ptr [ %i.ex, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124 ], [ %10, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124.preheader ] ; 2 uses
  %.0.i.i126 = phi ptr [ %i.ez, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124 ], [ %.0.i.i126.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124.preheader ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.04.i.i125, i64 4
  %i.ey = load i32, ptr %.04.i.i125, align 4, !tbaa !35 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i.i126, i64 4
  store i32 %i.ey, ptr %.0.i.i126, align 4, !tbaa !35
  %.not.i.i127 = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i127, label %bb.am, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124, !llvm.loop !38

bb.am:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124
  store i32 %i.cs, ptr %i.n, align 8, !tbaa !43
  %i.fa = invoke noundef i32 @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.an unwind label %bb.ae, !llvm.loop !63 ; 0 uses

bb.an:                                            ; preds = %bb.am, %bb.ac
  %.1 = phi i32 [ %i.dl, %bb.ac ], [ %.0.ph, %bb.am ] ; 2 uses
  call void @_ZdaPv(ptr noundef nonnull %10) #21
  %i.fb = icmp eq ptr %.sroa.0188.0.lcssa, null
  br i1 %i.fb, label %_ZN11CStringBaseIwED2Ev.exit133, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0188.0.lcssa) #21
  br label %_ZN11CStringBaseIwED2Ev.exit133

_ZN11CStringBaseIwED2Ev.exit133:                  ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.fc = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %_ZN11CStringBaseIwED2Ev.exit.i134, label %bb.ap

bb.ap:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit133
  call void @_ZdaPv(ptr noundef nonnull %i.fc) #21
  br label %_ZN11CStringBaseIwED2Ev.exit.i134

_ZN11CStringBaseIwED2Ev.exit.i134:                ; preds = %bb.ap, %_ZN11CStringBaseIwED2Ev.exit133
  %i.fe = load ptr, ptr %i.f, align 8, !tbaa !58  ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i135, label %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i134
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = invoke noundef i32 %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #23
  unreachable

_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit: ; preds = %_ZN11CStringBaseIwED2Ev.exit.i134, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %i.dj, label %.outer.split.outer, label %.thread

.body122:                                         ; preds = %bb.af, %bb.ai, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.do, %bb.af ], [ %i.dn, %bb.ae ], [ %i.ed, %bb.ai ]
  call void @_ZdaPv(ptr noundef nonnull %10) #21
  br label %.body109

.body109:                                         ; preds = %bb.v, %bb.w, %bb.ad, %.body122, %bb.p, %_ZN11CStringBaseIwED2Ev.exit101
  %.sroa.0188.0217 = phi ptr [ %.sroa.0188.0288, %bb.p ], [ %.sroa.0188.0288, %_ZN11CStringBaseIwED2Ev.exit101 ], [ %.sroa.0188.0.lcssa, %bb.v ], [ %.sroa.0188.0.lcssa, %bb.ad ], [ %.sroa.0188.0.lcssa, %bb.w ], [ %.sroa.0188.0.lcssa, %.body122 ] ; 2 uses
  %.pn85.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.p ], [ %.pn85, %_ZN11CStringBaseIwED2Ev.exit101 ], [ %i.cq, %bb.v ], [ %i.dm, %bb.ad ], [ %i.cq, %bb.w ], [ %.pn, %.body122 ] ; 2 uses
  %i.fl = icmp eq ptr %.sroa.0188.0217, null
  br i1 %i.fl, label %_ZN11CStringBaseIwED2Ev.exit137, label %bb.as

bb.as:                                            ; preds = %.body109
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0188.0217) #21
  br label %_ZN11CStringBaseIwED2Ev.exit137

_ZN11CStringBaseIwED2Ev.exit137:                  ; preds = %bb.o, %.body109, %bb.as, %bb.n
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.n ], [ %i.bn, %bb.o ], [ %.pn85.pn.pn, %.body109 ], [ %.pn85.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN18COutMultiVolStream14CSubStreamInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn85.pn.pn.pn.pn

bb.at:                                            ; preds = %.outer.split
  %i.fm = sext i32 %i.aa to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !13 ; 4 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.x)
  %i.fp = sext i32 %spec.select to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !64 ; 5 uses
  %.not79 = icmp ult i64 %i.z, %i.fr
  br i1 %.not79, label %bb.au, label %.outer

bb.au:                                            ; preds = %bb.at
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 32 ; 4 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !65
  %.not80 = icmp eq i64 %i.z, %i.ft
  br i1 %.not80, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !58 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !48
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = call noundef i32 %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, i64 noundef %i.z, i32 noundef 0, ptr noundef null) ; 2 uses
  %.not81 = icmp eq i32 %i.fz, 0
  br i1 %.not81, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %bb.av
  %i.ga = load i64, ptr %i.r, align 8, !tbaa !66  ; 2 uses
  store i64 %i.ga, ptr %i.fs, align 8, !tbaa !65
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.gb = phi i64 [ %i.ga, %bb.aw ], [ %i.z, %bb.au ] ; 2 uses
  %i.gc = zext i32 %2 to i64
  %i.gd = sub i64 %i.fr, %i.gb
  %i.ge = call noundef i64 @llvm.umin.i64(i64 %i.gc, i64 %i.gd)
  %i.gf = trunc nuw i64 %i.ge to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !58 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef i32 %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef %1, i32 noundef %i.gf, ptr noundef nonnull %i.b) ; 2 uses
  %.not82 = icmp eq i32 %i.gl, 0
  br i1 %.not82, label %bb.ay, label %.thread.sink.split

bb.ay:                                            ; preds = %bb.ax
  %i.gm = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %i.gn = zext i32 %i.gm to i64                   ; 3 uses
  %i.go = load i64, ptr %i.fs, align 8, !tbaa !65
  %i.gp = add i64 %i.go, %i.gn                    ; 2 uses
  store i64 %i.gp, ptr %i.fs, align 8, !tbaa !65
  %i.gq = load i64, ptr %i.r, align 8, !tbaa !66
  %i.gr = add i64 %i.gq, %i.gn                    ; 3 uses
  store i64 %i.gr, ptr %i.r, align 8, !tbaa !66
  %i.gs = load i64, ptr %i.s, align 8, !tbaa !67
  %i.gt = add i64 %i.gs, %i.gn                    ; 3 uses
  store i64 %i.gt, ptr %i.s, align 8, !tbaa !67
  %i.gu = load i64, ptr %i.t, align 8, !tbaa !68
  %i.gv = icmp ugt i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i64 %i.gt, ptr %i.t, align 8, !tbaa !68
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fo, i64 40 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !69
  %i.gy = icmp ugt i64 %i.gr, %i.gx
  br i1 %i.gy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i64 %i.gr, ptr %i.gw, align 8, !tbaa !69
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br i1 %.not, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gz = load i32, ptr %3, align 4, !tbaa !4
  %i.ha = add i32 %i.gz, %i.gm
  store i32 %i.ha, ptr %3, align 4, !tbaa !4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hb = icmp eq i64 %i.gp, %i.fr
  br i1 %i.hb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hc = load i32, ptr %i.c, align 4, !tbaa !24
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.c, align 4, !tbaa !24
  store i64 0, ptr %i.r, align 8, !tbaa !66
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.he = icmp eq i32 %i.gm, 0
  %i.hf = icmp ne i64 %i.fr, %i.gb
  %or.cond = and i1 %i.hf, %i.he
  %spec.select452 = select i1 %or.cond, i32 -2147467259, i32 0
  br label %.thread.sink.split

.outer:                                           ; preds = %bb.at
  %i.hg = sub nuw i64 %i.z, %i.fr                 ; 2 uses
  store i64 %i.hg, ptr %i.r, align 8, !tbaa !66
  %i.hh = add nsw i32 %i.aa, 1                    ; 2 uses
  store i32 %i.hh, ptr %i.c, align 4, !tbaa !24
  br label %.outer.split

.thread.sink.split:                               ; preds = %bb.bg, %bb.ax
  %.7.ph = phi i32 [ %spec.select452, %bb.bg ], [ %i.gl, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.thread

.thread:                                          ; preds = %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit, %.outer.preheader, %.thread.sink.split, %bb.av
  %.7 = phi i32 [ %i.fz, %bb.av ], [ %.7.ph, %.thread.sink.split ], [ 0, %.outer.preheader ], [ %.1, %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit ]
  ret i32 %.7
}

declare void @_Z21ConvertUInt32ToStringjPw(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !43
  %i.c = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37   ; 2 uses
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.f to i64
  %i.k = icmp slt i32 %i.e, -1
  %i.l = shl nuw nsw i64 %i.j, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #20 ; 3 uses
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #21
  %.pre = load i32, ptr %i.b, align 8, !tbaa !43
  %i.p = sext i32 %.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i, %bb.c
  %i.q = phi i64 [ %i.p, %._crit_edge.thread.i ], [ 0, %bb.c ]
  store ptr %i.n, ptr %0, align 8, !tbaa !34
  %i.r = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !35
  store i32 %i.f, ptr %i.g, align 4, !tbaa !37
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit

_ZN11CStringBaseIwE11SetCapacityEi.exit:          ; preds = %bb.b, %bb.d
  %i.s = phi ptr [ %i.c, %bb.b ], [ %i.n, %bb.d ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %.04.i = phi ptr [ %i.t, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.u, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.w, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %i.v = load i32, ptr %.04.i, align 4, !tbaa !35 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.v, ptr %.0.i, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !38

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.x = load i32, ptr %i.d, align 8, !tbaa !43
  store i32 %i.x, ptr %i.b, align 8, !tbaa !43
end_hunk_0
