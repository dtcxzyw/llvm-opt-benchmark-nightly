Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/PropIDUtils?download=true
inline.NumInlined: 41
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb:bb.a
bb.bc:                                            ; preds = %bb.bb
  %i.mh = lshr i32 %i.jk, 16
  store <4 x i32> splat (i32 48), ptr %i.jt, align 16, !tbaa !9
  %i.mi = and i32 %i.mh, 15                       ; 3 uses
  %i.mj = lshr i32 %i.jk, 20
  %i.mk = icmp samesign ult i32 %i.mi, 10
  %i.ml = or disjoint i32 %i.mi, 48
  %i.mm = add nuw nsw i32 %i.mi, 55
  %i.mn = select i1 %i.mk, i32 %i.ml, i32 %i.mm
  store i32 %i.mn, ptr %i.js, align 4, !tbaa !9
  %i.mo = lshr i32 %i.jk, 24
  %i.mp = lshr i32 %i.jk, 28                      ; 2 uses
  %i.mq = insertelement <2 x i32> poison, i32 %i.mo, i64 0
  %i.mr = insertelement <2 x i32> %i.mq, i32 %i.mj, i64 1
  %i.ms = and <2 x i32> %i.mr, splat (i32 15)     ; 3 uses
  %i.mt = icmp samesign ult <2 x i32> %i.ms, splat (i32 10)
  %i.mu = or disjoint <2 x i32> %i.ms, splat (i32 48)
  %i.mv = add nuw nsw <2 x i32> %i.ms, splat (i32 55)
  %i.mw = select <2 x i1> %i.mt, <2 x i32> %i.mu, <2 x i32> %i.mv
  store <2 x i32> %i.mw, ptr %i.jr, align 4, !tbaa !9
  %i.mx = icmp ult i32 %i.jk, -1610612736
  %i.my = or disjoint i32 %i.mp, 48
  %i.mz = add nuw nsw i32 %i.mp, 55
  %i.na = select i1 %i.mx, i32 %i.my, i32 %i.mz
  store i32 %i.na, ptr %i.c, align 16, !tbaa !9
  store i32 0, ptr %i.kb, align 16, !tbaa !9
  %wcslen.i.i130 = call i64 @wcslen(ptr nonnull %i.c) ; 4 uses
  %i.nb = trunc i64 %wcslen.i.i130 to i32         ; 14 uses
  %i.nc = add nsw i32 %i.nb, 1                    ; 9 uses
  %i.nd = icmp eq i32 %i.nc, 0                    ; 2 uses
  br i1 %i.nd, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i132, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ne = zext nneg i32 %i.nc to i64
  %i.nf = icmp slt i32 %i.nb, -1
  %i.ng = shl nuw nsw i64 %i.ne, 2
  %i.nh = select i1 %i.nf, i64 -1, i64 %i.ng
  %i.ni = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nh) #11
          to label %.noexc146 unwind label %bb.ca ; 2 uses

.noexc146:                                        ; preds = %bb.bd
  store i32 0, ptr %i.ni, align 4, !tbaa !9
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i132

_ZN11CStringBaseIwE11SetCapacityEi.exit.i132:     ; preds = %.noexc146, %bb.bc
  %.sroa.0.0 = phi ptr [ null, %bb.bc ], [ %i.ni, %.noexc146 ] ; 6 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i132
  %.04.i.i133 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i132 ], [ %i.nl, %bb.be ] ; 2 uses
  %.0.i.i134 = phi ptr [ %i.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i132 ], [ %i.nj, %bb.be ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.0.i.i134, i64 4
  %i.nk = load i32, ptr %.0.i.i134, align 4, !tbaa !9 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.04.i.i133, i64 4
  store i32 %i.nk, ptr %.04.i.i133, align 4, !tbaa !9
  %.not.i.i135 = icmp eq i32 %i.nk, 0
  br i1 %.not.i.i135, label %_ZN11CStringBaseIwEC2EPKw.exit147, label %bb.be, !llvm.loop !16

_ZN11CStringBaseIwEC2EPKw.exit147:                ; preds = %bb.be
  br i1 %i.nd, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN11CStringBaseIwEC2EPKw.exit147
  %i.nm = zext nneg i32 %i.nc to i64
  %i.nn = icmp slt i32 %i.nb, -1
  %i.no = shl nuw nsw i64 %i.nm, 2
  %i.np = select i1 %i.nn, i64 -1, i64 %i.no
  %i.nq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.np) #11
          to label %.noexc148 unwind label %bb.cb ; 2 uses

.noexc148:                                        ; preds = %bb.bf
  store i32 0, ptr %i.nq, align 4, !tbaa !9, !noalias !49
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc148, %_ZN11CStringBaseIwEC2EPKw.exit147
  %.sroa.0207.0 = phi ptr [ null, %_ZN11CStringBaseIwEC2EPKw.exit147 ], [ %i.nq, %.noexc148 ] ; 7 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %.sroa.0207.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.nt, %bb.bg ] ; 2 uses
  %.0.i.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.nr, %bb.bg ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.ns = load i32, ptr %.0.i.i.i, align 4, !tbaa !9, !noalias !49 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.ns, ptr %.04.i.i.i, align 4, !tbaa !9, !noalias !49
  %.not.i.i.i = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.bg, !llvm.loop !16

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.bg
  %i.nu = icmp sgt i32 %i.nb, 63
  %i.nv = lshr i32 %i.nc, 1
  %i.nw = icmp sgt i32 %i.nb, 7
  %..i.i = select i1 %i.nw, i32 16, i32 4
  %i.nx = tail call i32 @llvm.umax.i32(i32 %i.nv, i32 1)
  %.1.i.i = select i1 %i.nu, i32 %i.nx, i32 %..i.i
  %i.ny = add nsw i32 %.1.i.i, %i.nc              ; 3 uses
  %i.nz = icmp eq i32 %i.ny, %i.nb
  br i1 %i.nz, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i._crit_edge, label %bb.bh

_ZN11CStringBaseIwEC2ERKS0_.exit.i._crit_edge:    ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.pre = shl i64 %wcslen.i.i130, 32
  %.pre227 = ashr exact i64 %.pre, 30
  br label %bb.bl

bb.bh:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.oa = add nsw i32 %i.ny, 1
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = icmp slt i32 %i.ny, -1
  %i.od = shl nuw nsw i64 %i.ob, 2
  %i.oe = select i1 %i.oc, i64 -1, i64 %i.od
  %i.of = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oe) #11
          to label %.noexc182 unwind label %bb.bj ; 3 uses

.noexc182:                                        ; preds = %bb.bh
  %i.og = icmp sgt i32 %i.nb, -1
  br i1 %i.og, label %.preheader.i.i.i, label %bb.bi

.preheader.i.i.i:                                 ; preds = %.noexc182
  %.not219 = icmp eq i32 %i.nb, 0
  br i1 %.not219, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = shl i64 %wcslen.i.i130, 2
  %i.oh = and i64 %wide.trip.count.i.i.i, 8589934588
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.of, ptr align 4 %.sroa.0207.0, i64 %i.oh, i1 false), !tbaa !9
  br label %._crit_edge.thread.i.i.i

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.oi = icmp eq ptr %.sroa.0207.0, null
  br i1 %i.oi, label %bb.bi, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0207.0) #12
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc182
  %sext = shl i64 %wcslen.i.i130, 32
  %i.oj = ashr exact i64 %sext, 30                ; 2 uses
  %i.ok = getelementptr inbounds i8, ptr %i.of, i64 %i.oj
  store i32 0, ptr %i.ok, align 4, !tbaa !9
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.ol = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.om = icmp eq ptr %.sroa.0207.0, null
  br i1 %i.om, label %.body, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0207.0) #12
  br label %.body

bb.bl:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i._crit_edge, %bb.bi
  %.pre-phi = phi i64 [ %.pre227, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._crit_edge ], [ %i.oj, %bb.bi ]
  %.sroa.0207.1 = phi ptr [ %.sroa.0207.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._crit_edge ], [ %i.of, %bb.bi ] ; 5 uses
  %i.on = getelementptr inbounds i8, ptr %.sroa.0207.1, i64 %.pre-phi
  store i32 32, ptr %i.on, align 4, !tbaa !9
  %i.oo = sext i32 %i.nc to i64                   ; 3 uses
  %i.op = getelementptr inbounds [4 x i8], ptr %.sroa.0207.1, i64 %i.oo
  store i32 0, ptr %i.op, align 4, !tbaa !9
  %i.oq = add nsw i32 %i.nb, 2                    ; 5 uses
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i149, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.os = zext nneg i32 %i.oq to i64
  %i.ot = icmp slt i32 %i.nb, -2
  %i.ou = shl nuw nsw i64 %i.os, 2
  %i.ov = select i1 %i.ot, i64 -1, i64 %i.ou
  %i.ow = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ov) #11
          to label %.noexc155 unwind label %bb.cc ; 2 uses

.noexc155:                                        ; preds = %bb.bm
  store i32 0, ptr %i.ow, align 4, !tbaa !9, !noalias !50
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i149

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i149:   ; preds = %.noexc155, %bb.bl
  %.sroa.0.0226 = phi ptr [ null, %bb.bl ], [ %i.ow, %.noexc155 ] ; 9 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i149
  %.04.i.i.i150 = phi ptr [ %.sroa.0.0226, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i149 ], [ %i.oz, %bb.bn ] ; 2 uses
  %.0.i.i.i151 = phi ptr [ %.sroa.0207.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i149 ], [ %i.ox, %bb.bn ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.0.i.i.i151, i64 4
  %i.oy = load i32, ptr %.0.i.i.i151, align 4, !tbaa !9, !noalias !50 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.04.i.i.i150, i64 4
  store i32 %i.oy, ptr %.04.i.i.i150, align 4, !tbaa !9, !noalias !50
  %.not.i.i.i152 = icmp eq i32 %i.oy, 0
  br i1 %.not.i.i.i152, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i153, label %bb.bn, !llvm.loop !16

_ZN11CStringBaseIwEC2ERKS0_.exit.i153:            ; preds = %bb.bn
  %i.pa = load i32, ptr %i.ib, align 8, !tbaa !43 ; 2 uses
  %.not.i.i183 = icmp sgt i32 %i.pa, 0
  br i1 %.not.i.i183, label %bb.bo, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

bb.bo:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i153
  %i.pb = icmp sgt i32 %i.nb, 62
  %i.pc = lshr i32 %i.oq, 1
  %i.pd = icmp sgt i32 %i.nb, 6
  %..i.i186 = select i1 %i.pd, i32 16, i32 4
  %.0.i.i187 = select i1 %i.pb, i32 %i.pc, i32 %..i.i186
  %.1.i.i188 = tail call i32 @llvm.smax.i32(i32 %.0.i.i187, i32 %i.pa)
  %i.pe = add nsw i32 %.1.i.i188, %i.oq           ; 2 uses
  %i.pf = add nsw i32 %i.pe, 1                    ; 2 uses
  %i.pg = icmp eq i32 %i.pf, %i.oq
  br i1 %i.pg, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ph = zext nneg i32 %i.pf to i64
  %i.pi = icmp slt i32 %i.pe, -1
  %i.pj = shl nuw nsw i64 %i.ph, 2
  %i.pk = select i1 %i.pi, i64 -1, i64 %i.pj
  %i.pl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pk) #11
          to label %.noexc200 unwind label %bb.bs ; 4 uses

.noexc200:                                        ; preds = %bb.bp
  %i.pm = icmp sgt i32 %i.nb, -2
  br i1 %i.pm, label %.preheader.i.i.i190, label %bb.bq

.preheader.i.i.i190:                              ; preds = %.noexc200
  %i.pn = icmp sgt i32 %i.nb, -1
  br i1 %i.pn, label %.lr.ph.i.i.i195, label %._crit_edge.i.i.i192

.lr.ph.i.i.i195:                                  ; preds = %.preheader.i.i.i190
  %wide.trip.count.i.i.i196 = zext nneg i32 %i.nc to i64 ; 3 uses
  %min.iters.check275 = icmp ult i32 %i.nc, 8
  br i1 %min.iters.check275, label %scalar.ph274.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.i.i.i195
  %n.vec277 = and i64 %wide.trip.count.i.i.i196, 2147483640 ; 3 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next282, %vector.body278 ] ; 3 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0226, i64 %index279 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %wide.load280 = load <4 x i32>, ptr %i.po, align 4, !tbaa !9
  %wide.load281 = load <4 x i32>, ptr %i.pp, align 4, !tbaa !9
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index279 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store <4 x i32> %wide.load280, ptr %i.pq, align 4, !tbaa !9
  store <4 x i32> %wide.load281, ptr %i.pr, align 4, !tbaa !9
  %index.next282 = add nuw i64 %index279, 8       ; 2 uses
  %i.ps = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.ps, label %middle.block283, label %vector.body278, !llvm.loop !30

middle.block283:                                  ; preds = %vector.body278
  %cmp.n284 = icmp eq i64 %n.vec277, %wide.trip.count.i.i.i196
  br i1 %cmp.n284, label %._crit_edge.thread.i.i.i193, label %scalar.ph274.preheader

scalar.ph274.preheader:                           ; preds = %.lr.ph.i.i.i195, %middle.block283
  %indvars.iv.i.i.i197.ph = phi i64 [ 0, %.lr.ph.i.i.i195 ], [ %n.vec277, %middle.block283 ]
  br label %scalar.ph274

._crit_edge.i.i.i192:                             ; preds = %.preheader.i.i.i190
  %i.pt = icmp eq ptr %.sroa.0.0226, null
  br i1 %i.pt, label %bb.bq, label %._crit_edge.thread.i.i.i193

scalar.ph274:                                     ; preds = %scalar.ph274.preheader, %scalar.ph274
  %indvars.iv.i.i.i197 = phi i64 [ %indvars.iv.next.i.i.i198, %scalar.ph274 ], [ %indvars.iv.i.i.i197.ph, %scalar.ph274.preheader ] ; 3 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0226, i64 %indvars.iv.i.i.i197
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !9
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv.i.i.i197
  store i32 %i.pv, ptr %i.pw, align 4, !tbaa !9
  %indvars.iv.next.i.i.i198 = add nuw nsw i64 %indvars.iv.i.i.i197, 1 ; 2 uses
  %exitcond.not.i.i.i199 = icmp eq i64 %indvars.iv.next.i.i.i198, %wide.trip.count.i.i.i196
  br i1 %exitcond.not.i.i.i199, label %._crit_edge.thread.i.i.i193, label %scalar.ph274, !llvm.loop !31

._crit_edge.thread.i.i.i193:                      ; preds = %scalar.ph274, %middle.block283, %._crit_edge.i.i.i192
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0226) #12
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.thread.i.i.i193, %._crit_edge.i.i.i192, %.noexc200
  %i.px = getelementptr inbounds [4 x i8], ptr %i.pl, i64 %i.oo
  store i32 0, ptr %i.px, align 4, !tbaa !9
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i:         ; preds = %bb.bo, %_ZN11CStringBaseIwEC2ERKS0_.exit.i153, %bb.bq
  %i.py = phi ptr [ %i.pl, %bb.bq ], [ %.sroa.0.0226, %_ZN11CStringBaseIwEC2ERKS0_.exit.i153 ], [ %.sroa.0.0226, %bb.bo ] ; 6 uses
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.oo
  %i.qa = load ptr, ptr %0, align 8, !tbaa !44    ; 3 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
  %.04.i.i184 = phi ptr [ %i.pz, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.qd, %bb.br ] ; 2 uses
  %.0.i4.i = phi ptr [ %i.qa, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.qb, %bb.br ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 4
  %i.qc = load i32, ptr %.0.i4.i, align 4, !tbaa !9 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.04.i.i184, i64 4
  store i32 %i.qc, ptr %.04.i.i184, align 4, !tbaa !9
  %.not.i5.i = icmp eq i32 %i.qc, 0
  br i1 %.not.i5.i, label %bb.bu, label %bb.br, !llvm.loop !16

bb.bs:                                            ; preds = %bb.bp
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = icmp eq ptr %.sroa.0.0226, null
  br i1 %i.qf, label %_ZN11CStringBaseIwED2Ev.exit176, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0226) #12
  br label %_ZN11CStringBaseIwED2Ev.exit176

bb.bu:                                            ; preds = %bb.br
  %i.qg = load i32, ptr %i.ib, align 8, !tbaa !43
  %i.qh = add nsw i32 %i.qg, %i.nc                ; 3 uses
  store i32 0, ptr %i.ib, align 8, !tbaa !43
  store i32 0, ptr %i.qa, align 4, !tbaa !9
  %i.qi = add nsw i32 %i.qh, 1                    ; 3 uses
  %i.qj = load i32, ptr %i.ic, align 4, !tbaa !42
  %i.qk = icmp eq i32 %i.qi, %i.qj
  br i1 %i.qk, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158.preheader, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ql = zext nneg i32 %i.qi to i64
  %i.qm = icmp slt i32 %i.qh, -1
  %i.qn = shl nuw nsw i64 %i.ql, 2
  %i.qo = select i1 %i.qm, i64 -1, i64 %i.qn
  %i.qp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qo) #11
          to label %.noexc172 unwind label %bb.cd ; 10 uses

.noexc172:                                        ; preds = %bb.bv
  %i.qq = ptrtoaddr ptr %i.qp to i64
  %i.qr = load i32, ptr %i.ic, align 4, !tbaa !42
  %i.qs = icmp sgt i32 %i.qr, 0
  %.pre7.i = load i32, ptr %i.ib, align 8, !tbaa !43 ; 5 uses
  br i1 %i.qs, label %.preheader.i.i162, label %bb.bw

.preheader.i.i162:                                ; preds = %.noexc172
  %i.qt = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i163 = load ptr, ptr %0, align 8, !tbaa !44 ; 9 uses
  br i1 %i.qt, label %.lr.ph.i.i167, label %._crit_edge.i.i164

.lr.ph.i.i167:                                    ; preds = %.preheader.i.i162
  %.pre.i.i163287 = ptrtoaddr ptr %.pre.i.i163 to i64
  %wide.trip.count.i.i168 = zext nneg i32 %.pre7.i to i64 ; 5 uses
  %min.iters.check290 = icmp ult i32 %.pre7.i, 8
  %i.qu = sub i64 %.pre.i.i163287, %i.qq
  %diff.check288 = icmp ugt i64 %i.qu, -32
  %or.cond350 = select i1 %min.iters.check290, i1 true, i1 %diff.check288
  br i1 %or.cond350, label %scalar.ph289.preheader, label %vector.ph291

vector.ph291:                                     ; preds = %.lr.ph.i.i167
  %n.vec292 = and i64 %wide.trip.count.i.i168, 2147483640 ; 3 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph291
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next297, %vector.body293 ] ; 3 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i163, i64 %index294 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %wide.load295 = load <4 x i32>, ptr %i.qv, align 4, !tbaa !9
  %wide.load296 = load <4 x i32>, ptr %i.qw, align 4, !tbaa !9
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %index294 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  store <4 x i32> %wide.load295, ptr %i.qx, align 4, !tbaa !9
  store <4 x i32> %wide.load296, ptr %i.qy, align 4, !tbaa !9
  %index.next297 = add nuw i64 %index294, 8       ; 2 uses
  %i.qz = icmp eq i64 %index.next297, %n.vec292
  br i1 %i.qz, label %middle.block298, label %vector.body293, !llvm.loop !32

middle.block298:                                  ; preds = %vector.body293
  %cmp.n299 = icmp eq i64 %n.vec292, %wide.trip.count.i.i168
  br i1 %cmp.n299, label %._crit_edge.thread.i.i165, label %scalar.ph289.preheader

scalar.ph289.preheader:                           ; preds = %.lr.ph.i.i167, %middle.block298
  %indvars.iv.i.i169.ph = phi i64 [ 0, %.lr.ph.i.i167 ], [ %n.vec292, %middle.block298 ] ; 3 uses
  %xtraiter354 = and i64 %wide.trip.count.i.i168, 3 ; 2 uses
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %scalar.ph289.prol.loopexit, label %scalar.ph289.prol

scalar.ph289.prol:                                ; preds = %scalar.ph289.preheader, %scalar.ph289.prol
  %indvars.iv.i.i169.prol = phi i64 [ %indvars.iv.next.i.i170.prol, %scalar.ph289.prol ], [ %indvars.iv.i.i169.ph, %scalar.ph289.preheader ] ; 3 uses
  %prol.iter356 = phi i64 [ %prol.iter356.next, %scalar.ph289.prol ], [ 0, %scalar.ph289.preheader ]
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i163, i64 %indvars.iv.i.i169.prol
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !9
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.i.i169.prol
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !9
  %indvars.iv.next.i.i170.prol = add nuw nsw i64 %indvars.iv.i.i169.prol, 1 ; 2 uses
  %prol.iter356.next = add i64 %prol.iter356, 1   ; 2 uses
  %prol.iter356.cmp.not = icmp eq i64 %prol.iter356.next, %xtraiter354
  br i1 %prol.iter356.cmp.not, label %scalar.ph289.prol.loopexit, label %scalar.ph289.prol, !llvm.loop !33

scalar.ph289.prol.loopexit:                       ; preds = %scalar.ph289.prol, %scalar.ph289.preheader
  %indvars.iv.i.i169.unr = phi i64 [ %indvars.iv.i.i169.ph, %scalar.ph289.preheader ], [ %indvars.iv.next.i.i170.prol, %scalar.ph289.prol ]
  %i.rd = sub nsw i64 %indvars.iv.i.i169.ph, %wide.trip.count.i.i168
  %i.re = icmp ugt i64 %i.rd, -4
  br i1 %i.re, label %._crit_edge.thread.i.i165, label %scalar.ph289

._crit_edge.i.i164:                               ; preds = %.preheader.i.i162
  %i.rf = icmp eq ptr %.pre.i.i163, null
  br i1 %i.rf, label %bb.bw, label %._crit_edge.thread.i.i165

scalar.ph289:                                     ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289
  %indvars.iv.i.i169 = phi i64 [ %indvars.iv.next.i.i170.3, %scalar.ph289 ], [ %indvars.iv.i.i169.unr, %scalar.ph289.prol.loopexit ] ; 6 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i163, i64 %indvars.iv.i.i169
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !9
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.i.i169
  store i32 %i.rh, ptr %i.ri, align 4, !tbaa !9
  %indvars.iv.next.i.i170 = add nuw nsw i64 %indvars.iv.i.i169, 1 ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i163, i64 %indvars.iv.next.i.i170
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !9
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.next.i.i170
  store i32 %i.rk, ptr %i.rl, align 4, !tbaa !9
  %indvars.iv.next.i.i170.1 = add nuw nsw i64 %indvars.iv.i.i169, 2 ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i163, i64 %indvars.iv.next.i.i170.1
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !9
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.next.i.i170.1
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !9
  %indvars.iv.next.i.i170.2 = add nuw nsw i64 %indvars.iv.i.i169, 3 ; 2 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i163, i64 %indvars.iv.next.i.i170.2
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !9
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.next.i.i170.2
  store i32 %i.rq, ptr %i.rr, align 4, !tbaa !9
  %indvars.iv.next.i.i170.3 = add nuw nsw i64 %indvars.iv.i.i169, 4 ; 2 uses
  %exitcond.not.i.i171.3 = icmp eq i64 %indvars.iv.next.i.i170.3, %wide.trip.count.i.i168
  br i1 %exitcond.not.i.i171.3, label %._crit_edge.thread.i.i165, label %scalar.ph289, !llvm.loop !34

._crit_edge.thread.i.i165:                        ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289, %middle.block298, %._crit_edge.i.i164
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i163) #12
  %.pre.i166 = load i32, ptr %i.ib, align 8, !tbaa !43
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.thread.i.i165, %._crit_edge.i.i164, %.noexc172
  %i.rs = phi i32 [ %.pre.i166, %._crit_edge.thread.i.i165 ], [ %.pre7.i, %._crit_edge.i.i164 ], [ %.pre7.i, %.noexc172 ]
  store ptr %i.qp, ptr %0, align 8, !tbaa !44
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.qp, i64 %i.rt
  store i32 0, ptr %i.ru, align 4, !tbaa !9
  store i32 %i.qi, ptr %i.ic, align 4, !tbaa !42
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i158.preheader: ; preds = %bb.bw, %bb.bu
  %.04.i.i159.ph = phi ptr [ %i.qp, %bb.bw ], [ %i.qa, %bb.bu ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158

_ZN11CStringBaseIwE11SetCapacityEi.exit.i158:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158
  %.04.i.i159 = phi ptr [ %i.rx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158 ], [ %.04.i.i159.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158.preheader ] ; 2 uses
  %.0.i.i160 = phi ptr [ %i.rv, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158 ], [ %i.py, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158.preheader ] ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.i.i160, i64 4
  %i.rw = load i32, ptr %.0.i.i160, align 4, !tbaa !9 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.04.i.i159, i64 4
  store i32 %i.rw, ptr %.04.i.i159, align 4, !tbaa !9
  %.not.i.i161 = icmp eq i32 %i.rw, 0
  br i1 %.not.i.i161, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158, !llvm.loop !16

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i158
  store i32 %i.qh, ptr %i.ib, align 8, !tbaa !43
  %i.ry = icmp eq ptr %i.py, null
  br i1 %i.ry, label %_ZN11CStringBaseIwED2Ev.exit173, label %bb.bx

bb.bx:                                            ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.py) #12
  br label %_ZN11CStringBaseIwED2Ev.exit173

_ZN11CStringBaseIwED2Ev.exit173:                  ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, %bb.bx
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0207.1) #12
  %i.rz = icmp eq ptr %.sroa.0.0, null
  br i1 %i.rz, label %_ZN11CStringBaseIwED2Ev.exit174, label %bb.by

bb.by:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit173
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #12
  br label %_ZN11CStringBaseIwED2Ev.exit174

bb.bz:                                            ; preds = %bb.az
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit177

bb.ca:                                            ; preds = %bb.bd
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit177

bb.cb:                                            ; preds = %bb.bf
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cc:                                            ; preds = %bb.bm
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit176

bb.cd:                                            ; preds = %bb.bv
  %i.se = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sf = icmp eq ptr %i.py, null
  br i1 %i.sf, label %_ZN11CStringBaseIwED2Ev.exit176, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @_ZdaPv(ptr noundef nonnull %i.py) #12
  br label %_ZN11CStringBaseIwED2Ev.exit176

_ZN11CStringBaseIwED2Ev.exit176:                  ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.bt, %bb.bs
  %.pn = phi { ptr, i32 } [ %i.qe, %bb.bs ], [ %i.sd, %bb.cc ], [ %i.qe, %bb.bt ], [ %i.se, %bb.cd ], [ %i.se, %bb.ce ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0207.1) #12
  br label %.body

.body:                                            ; preds = %bb.cb, %bb.bk, %bb.bj, %_ZN11CStringBaseIwED2Ev.exit176
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit176 ], [ %i.sc, %bb.cb ], [ %i.ol, %bb.bk ], [ %i.ol, %bb.bj ] ; 2 uses
  %i.sg = icmp eq ptr %.sroa.0.0, null
  br i1 %i.sg, label %_ZN11CStringBaseIwED2Ev.exit177, label %bb.cf

bb.cf:                                            ; preds = %.body
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #12
  br label %_ZN11CStringBaseIwED2Ev.exit177

_ZN11CStringBaseIwED2Ev.exit174:                  ; preds = %bb.by, %_ZN11CStringBaseIwED2Ev.exit173, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.ci

_ZN11CStringBaseIwED2Ev.exit177:                  ; preds = %bb.ca, %.body, %bb.cf, %bb.bz
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sa, %bb.bz ], [ %i.sb, %bb.ca ], [ %.pn.pn, %.body ], [ %.pn.pn, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.sh = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %_ZN11CStringBaseIwED2Ev.exit178, label %bb.cg

bb.cg:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit177
  tail call void @_ZdaPv(ptr noundef nonnull %i.sh) #12
  br label %_ZN11CStringBaseIwED2Ev.exit178

_ZN11CStringBaseIwED2Ev.exit178:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit177, %bb.cg
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.ch:                                            ; preds = %bb.ar, %bb.k, %bb.h, %bb.b, %bb.a
  tail call void @_Z26ConvertPropVariantToStringRK14tagPROPVARIANT(ptr dead_on_unwind writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit174, %bb.ch, %_ZN11CStringBaseIwEC2EPKw.exit100, %_ZN11CStringBaseIwEC2EPKw.exit, %bb.g
  ret void
}

declare i32 @FileTimeToLocalFileTime(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z23ConvertFileTimeToStringRK9_FILETIMEbb(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_Z26ConvertPropVariantToStringRK14tagPROPVARIANT(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"wchar_t", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = distinct !{!10, !45, !46, !47}
!11 = distinct !{!11, !48}
!12 = distinct !{!12, !45, !46}
!13 = distinct !{!13, !45, !46, !47}
!14 = distinct !{!14, !48}
!15 = distinct !{!15, !45, !46}
!16 = distinct !{!16, !45}
!17 = distinct !{!17, !45, !46, !47}
!18 = distinct !{!18, !48}
!19 = distinct !{!19, !45, !46}
!20 = distinct !{!20, !45, !46, !47}
!21 = distinct !{!21, !48}
!22 = distinct !{!22, !45, !46}
!23 = distinct !{!23, !45, !46, !47}
!24 = distinct !{!24, !48}
!25 = distinct !{!25, !45, !46}
!26 = distinct !{!26, i1 false, !"_ZplIwE11CStringBaseIT_ERKS2_S1_"}
!27 = distinct !{!27, !26, !"_ZplIwE11CStringBaseIT_ERKS2_S1_: argument 0"}
!28 = distinct !{!28, i1 false, !"_ZplIwE11CStringBaseIT_ERKS2_S4_"}
!29 = distinct !{!29, !28, !"_ZplIwE11CStringBaseIT_ERKS2_S4_: argument 0"}
!30 = distinct !{!30, !45, !46, !47}
!31 = distinct !{!31, !45, !47, !46}
!32 = distinct !{!32, !45, !46, !47}
!33 = distinct !{!33, !48}
!34 = distinct !{!34, !45, !46}
!35 = !{!"short", !5, i64 0}
!36 = !{!"_ZTS14tagPROPVARIANT", !35, i64 0, !35, i64 2, !35, i64 4, !35, i64 6, !5, i64 8}
!37 = !{!36, !35, i64 0}
!38 = !{!5, !5, i64 0}
!39 = !{!"any pointer", !5, i64 0}
!40 = !{!"p1 wchar_t", !39, i64 0}
!41 = !{!"_ZTS11CStringBaseIwE", !40, i64 0, !6, i64 8, !6, i64 12}
!42 = !{!41, !6, i64 12}
!43 = !{!41, !6, i64 8}
!44 = !{!41, !40, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!27}
!50 = !{!29}
end_hunk_0
