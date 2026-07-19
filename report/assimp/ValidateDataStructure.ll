inline.NumInlined: 437
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp17ValidateDSProcess8ValidateEPK6aiMesh:bb.a
  br i1 %i.z, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ar = trunc nuw i64 %indvars.iv to i32
  tail call void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.31, i32 noundef %i.ar) #21
  unreachable

bb.k:                                             ; preds = %.lr.ph.split
  br i1 %i.y, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.as = trunc nuw i64 %indvars.iv to i32
  tail call void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.32, i32 noundef %i.as) #21
  unreachable

bb.m:                                             ; preds = %.lr.ph.split
  br i1 %i.x, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.at = trunc nuw i64 %indvars.iv to i32
  tail call void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.33, i32 noundef %i.at) #21
  unreachable

bb.o:                                             ; preds = %.lr.ph.split
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = trunc nuw i64 %indvars.iv to i32
  tail call void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.34, i32 noundef %i.au) #21
  unreachable

bb.q:                                             ; preds = %bb.i, %bb.k, %bb.m, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %.not172 = icmp eq ptr %i.aw, null
  br i1 %.not172, label %.split.us, label %_ZN6Assimp17ValidateDSProcess8ValidateEPK8aiString.exit

.split.us:                                        ; preds = %bb.q, %.lr.ph.split.us
  %.us-phi.in = phi i64 [ %indvars.iv317, %.lr.ph.split.us ], [ %indvars.iv, %bb.q ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  tail call void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.35, i32 noundef %.us-phi) #21
  unreachable

_ZN6Assimp17ValidateDSProcess8ValidateEPK8aiString.exit: ; preds = %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count320
  br i1 %exitcond.not, label %_ZN6Assimp17ValidateDSProcess8ValidateEPK8aiString.exit._crit_edge, label %.lr.ph.split, !llvm.loop !13

bb.r:                                             ; preds = %_ZN6Assimp17ValidateDSProcess8ValidateEPK8aiString.exit._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not149 = icmp eq ptr %i.ay, null
  br i1 %.not149, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.az = load i32, ptr %i.b, align 8
  %.not150 = icmp eq i32 %i.az, 0
  br i1 %.not150, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %_ZN6Assimp17ValidateDSProcess8ValidateEPK8aiString.exit._crit_edge
  tail call void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.36, ptr noundef nonnull %.0.ptr14.i) #21
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.ba = icmp slt i32 %i.an, 0
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.37, i32 noundef %i.an, i32 noundef 2147483647) #21
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bb = icmp slt i32 %i.p, 0
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.38, i32 noundef %i.p, i32 noundef 2147483647) #21
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp ne ptr %i.bd, null
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.bg, null
  %.not151 = xor i1 %i.be, %i.bh
  br i1 %.not151, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.39) #21
  unreachable

bb.aa:                                            ; preds = %bb.y
  br i1 %.not280, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %.not153 = icmp eq ptr %i.bj, null
  br i1 %.not153, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bk = load i32, ptr %i.b, align 8
  %.not154 = icmp eq i32 %i.bk, 0
  br i1 %.not154, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  tail call void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.40, ptr noundef nonnull %.0.ptr14.i) #21
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr null, ptr %2, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr null, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i32 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store ptr null, ptr %i.bo, align 8
  %i.bp = zext nneg i32 %i.an to i64
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr null, i32 0, i64 noundef %i.bp, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.preheader unwind label %bb.af

_ZNSt6vectorIbSaIbEE6resizeEmb.exit.preheader:    ; preds = %bb.ae
  %i.bq = load i32, ptr %i.o, align 8             ; 2 uses
  %.not281 = icmp eq i32 %i.bq, 0
  br i1 %.not281, label %.preheader215, label %.lr.ph255

.preheader215:                                    ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.preheader
  %i.br = load i32, ptr %i.am, align 4            ; 6 uses
  %.not283 = icmp eq i32 %i.br, 0
  %i.bs = load ptr, ptr %2, align 8               ; 5 uses
  br i1 %.not283, label %.thread372, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %.preheader215
  %min.iters.check = icmp ult i32 %i.br, 4
  br i1 %min.iters.check, label %.lr.ph258.preheader459, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph258.preheader
  %n.vec = and i32 %i.br, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.cl, %vector.body ]
  %vec.phi446 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.cm, %vector.body ]
  %step.add = add nuw <2 x i32> %vec.ind, splat (i32 2)
  %i.bt = lshr i32 %index, 6
  %i.bu = lshr i32 %index, 6
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bw
  %i.bz = and <2 x i32> %vec.ind, splat (i32 63)
  %i.ca = and <2 x i32> %step.add, splat (i32 63)
  %i.cb = zext nneg <2 x i32> %i.bz to <2 x i64>
  %i.cc = zext nneg <2 x i32> %i.ca to <2 x i64>
  %i.cd = shl nuw <2 x i64> splat (i64 1), %i.cb
  %i.ce = shl nuw <2 x i64> splat (i64 1), %i.cc
  %i.cf = load i64, ptr %i.bx, align 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cg = load i64, ptr %i.by, align 8
  %broadcast.splatinsert447 = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat448 = shufflevector <2 x i64> %broadcast.splatinsert447, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ch = and <2 x i64> %broadcast.splat, %i.cd
  %i.ci = and <2 x i64> %broadcast.splat448, %i.ce
  %i.cj = icmp eq <2 x i64> %i.ch, zeroinitializer
  %i.ck = icmp eq <2 x i64> %i.ci, zeroinitializer
  %i.cl = or <2 x i1> %vec.phi, %i.cj             ; 2 uses
  %i.cm = or <2 x i1> %vec.phi446, %i.ck          ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i32> %vec.ind, splat (i32 4)
  %i.cn = icmp eq i32 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.cm, %i.cl
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.co = bitcast <2 x i1> %bin.rdx.fr to i2
  %i.cp = icmp ne i2 %i.co, 0                     ; 2 uses
  %cmp.n = icmp eq i32 %i.br, %n.vec
  br i1 %cmp.n, label %._crit_edge259, label %.lr.ph258.preheader459

.lr.ph258.preheader459:                           ; preds = %.lr.ph258.preheader, %middle.block
  %.0122257.ph = phi i32 [ 0, %.lr.ph258.preheader ], [ %n.vec, %middle.block ]
  %.0123256.ph = phi i1 [ false, %.lr.ph258.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph258

bb.af:                                            ; preds = %bb.ae
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit184

.lr.ph255:                                        ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.preheader, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.cr = phi i32 [ %i.cy, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit ], [ %i.bq, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.preheader ]
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit ], [ 0, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.preheader ] ; 4 uses
  %i.cs = load ptr, ptr %i.bi, align 8
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %indvars.iv325 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8            ; 3 uses
  %i.cv = icmp ugt i32 %i.cu, 32767
  br i1 %i.cv, label %bb.ag, label %.preheader216

.preheader216:                                    ; preds = %.lr.ph255
  %.not282 = icmp eq i32 %i.cu, 0
  br i1 %.not282, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %.preheader216
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  br label %bb.aj

bb.ag:                                            ; preds = %.lr.ph255
  %3 = trunc nuw i64 %indvars.iv325 to i32
  invoke void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.41, i32 noundef %3, i32 noundef %i.cu, i32 noundef 32767) #21
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit184

_ZNSt6vectorIbSaIbEE6resizeEmb.exit.loopexit:     ; preds = %bb.an
  %.pre = load i32, ptr %i.o, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.loopexit, %.preheader216
  %i.cy = phi i32 [ %.pre, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.loopexit ], [ %i.cr, %.preheader216 ] ; 2 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %4 = zext i32 %i.cy to i64
  %i.cz = icmp samesign ult i64 %indvars.iv.next326, %4
  br i1 %i.cz, label %.lr.ph255, label %.preheader215, !llvm.loop !17

bb.aj:                                            ; preds = %.lr.ph253, %bb.an
  %indvars.iv322 = phi i64 [ 0, %.lr.ph253 ], [ %indvars.iv.next323, %bb.an ] ; 3 uses
  %i.da = load ptr, ptr %i.cw, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv322
  %i.dc = load i32, ptr %i.db, align 4            ; 3 uses
  %i.dd = load i32, ptr %i.am, align 4
  %.not165 = icmp ult i32 %i.dc, %i.dd
  br i1 %.not165, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %5 = trunc nuw i64 %indvars.iv325 to i32
  %i.de = trunc nuw i64 %indvars.iv322 to i32
  invoke void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.42, i32 noundef %5, i32 noundef %i.de) #21
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit184

bb.an:                                            ; preds = %bb.aj
  %i.dg = load ptr, ptr %2, align 8
  %i.dh = lshr i32 %i.dc, 6
  %.zext = zext nneg i32 %i.dh to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.zext ; 2 uses
  %i.dj = and i32 %i.dc, 63
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = load i64, ptr %i.di, align 8
  %i.dn = or i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.di, align 8
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %i.do = load i32, ptr %i.ct, align 8
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next323, %i.dp
  br i1 %i.dq, label %bb.aj, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.loopexit, !llvm.loop !18

._crit_edge259:                                   ; preds = %.lr.ph258, %middle.block
  %spec.select.lcssa = phi i1 [ %i.cp, %middle.block ], [ %spec.select, %.lr.ph258 ]
  store ptr %i.bs, ptr %i.bm, align 8
  store i32 0, ptr %i.bn, align 8
  br i1 %spec.select.lcssa, label %bb.ao, label %bb.aq

.lr.ph258:                                        ; preds = %.lr.ph258.preheader459, %.lr.ph258
  %.0122257 = phi i32 [ %i.dy, %.lr.ph258 ], [ %.0122257.ph, %.lr.ph258.preheader459 ] ; 3 uses
  %.0123256 = phi i1 [ %spec.select, %.lr.ph258 ], [ %.0123256.ph, %.lr.ph258.preheader459 ]
  %i.dr = lshr i32 %.0122257, 6
  %.zext211 = zext nneg i32 %i.dr to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.zext211
  %i.dt = and i32 %.0122257, 63
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = load i64, ptr %i.ds, align 8
  %i.dx = and i64 %i.dw, %i.dv
  %.not212 = icmp eq i64 %i.dx, 0
  %spec.select = select i1 %.not212, i1 true, i1 %.0123256 ; 2 uses
  %i.dy = add nuw i32 %.0122257, 1                ; 2 uses
  %exitcond325.not = icmp eq i32 %i.dy, %i.br
  br i1 %exitcond325.not, label %._crit_edge259, label %.lr.ph258, !llvm.loop !19

bb.ao:                                            ; preds = %._crit_edge259
  invoke void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess13ReportWarningEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.43)
          to label %._crit_edge unwind label %bb.ap

._crit_edge:                                      ; preds = %bb.ao
  %.pre349 = load i32, ptr %i.am, align 4
  br label %bb.aq

bb.ap:                                            ; preds = %bb.bs, %bb.bc, %bb.ao
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit184

.thread372:                                       ; preds = %.preheader215
  store ptr %i.bs, ptr %i.bm, align 8
  store i32 0, ptr %i.bn, align 8
  br label %._crit_edge267

bb.aq:                                            ; preds = %._crit_edge, %._crit_edge259
  %i.ea = phi i32 [ %.pre349, %._crit_edge ], [ %i.br, %._crit_edge259 ]
  %.fr284 = freeze i32 %i.ea                      ; 10 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 9 uses
  %.not285 = icmp eq i32 %.fr284, 0
  br i1 %.not285, label %._crit_edge267, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

_ZNK6aiMesh15HasVertexColorsEj.exit.preheader:    ; preds = %bb.aq
  %i.ec = load ptr, ptr %i.eb, align 8
  %.not.i.not = icmp eq ptr %i.ec, null
  br i1 %.not.i.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit179, label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

bb.ar:                                            ; preds = %bb.as
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit184

_ZNK6aiMesh15HasVertexColorsEj.exit.1:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8
  %.not.i.not.1 = icmp eq ptr %i.ef, null
  br i1 %.not.i.not.1, label %_ZNK6aiMesh15HasVertexColorsEj.exit179, label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eh = load ptr, ptr %i.eg, align 8
  %.not.i.not.2 = icmp eq ptr %i.eh, null
  br i1 %.not.i.not.2, label %_ZNK6aiMesh15HasVertexColorsEj.exit179, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8
  %.not.i.not.3 = icmp eq ptr %i.ej, null
  br i1 %.not.i.not.3, label %_ZNK6aiMesh15HasVertexColorsEj.exit179, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.el = load ptr, ptr %i.ek, align 8
  %.not.i.not.4 = icmp eq ptr %i.el, null
  br i1 %.not.i.not.4, label %_ZNK6aiMesh15HasVertexColorsEj.exit179, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.en = load ptr, ptr %i.em, align 8
  %.not.i.not.5 = icmp eq ptr %i.en, null
  br i1 %.not.i.not.5, label %_ZNK6aiMesh15HasVertexColorsEj.exit179, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ep = load ptr, ptr %i.eo, align 8
  %.not.i.not.6 = icmp eq ptr %i.ep, null
  br i1 %.not.i.not.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit179, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.er = load ptr, ptr %i.eq, align 8
  %.not.i.not.7 = icmp eq ptr %i.er, null
  br i1 %.not.i.not.7, label %_ZNK6aiMesh15HasVertexColorsEj.exit179, label %._crit_edge267

_ZNK6aiMesh15HasVertexColorsEj.exit179:           ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.7, %_ZNK6aiMesh15HasVertexColorsEj.exit.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.5, %_ZNK6aiMesh15HasVertexColorsEj.exit.4, %_ZNK6aiMesh15HasVertexColorsEj.exit.3, %_ZNK6aiMesh15HasVertexColorsEj.exit.2, %_ZNK6aiMesh15HasVertexColorsEj.exit.1, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader
  %indvars.iv330.ph = phi i64 [ 4, %_ZNK6aiMesh15HasVertexColorsEj.exit.4 ], [ 6, %_ZNK6aiMesh15HasVertexColorsEj.exit.6 ], [ 3, %_ZNK6aiMesh15HasVertexColorsEj.exit.3 ], [ 5, %_ZNK6aiMesh15HasVertexColorsEj.exit.5 ], [ 2, %_ZNK6aiMesh15HasVertexColorsEj.exit.2 ], [ 7, %_ZNK6aiMesh15HasVertexColorsEj.exit.7 ], [ 1, %_ZNK6aiMesh15HasVertexColorsEj.exit.1 ], [ 0, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader ] ; 9 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv330.ph
  %i.et = load ptr, ptr %i.es, align 8
  %.not.i177.not = icmp eq ptr %i.et, null
  br i1 %.not.i177.not, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit179.7, %_ZNK6aiMesh15HasVertexColorsEj.exit179.6, %_ZNK6aiMesh15HasVertexColorsEj.exit179.5, %_ZNK6aiMesh15HasVertexColorsEj.exit179.4, %_ZNK6aiMesh15HasVertexColorsEj.exit179.3, %_ZNK6aiMesh15HasVertexColorsEj.exit179.2, %_ZNK6aiMesh15HasVertexColorsEj.exit179.1, %_ZNK6aiMesh15HasVertexColorsEj.exit179
  %indvars.iv330.lcssa = phi i64 [ %indvars.iv330.ph, %_ZNK6aiMesh15HasVertexColorsEj.exit179 ], [ %indvars.iv.next331, %_ZNK6aiMesh15HasVertexColorsEj.exit179.1 ], [ %indvars.iv.next331.1, %_ZNK6aiMesh15HasVertexColorsEj.exit179.2 ], [ %indvars.iv.next331.2, %_ZNK6aiMesh15HasVertexColorsEj.exit179.3 ], [ %indvars.iv.next331.3, %_ZNK6aiMesh15HasVertexColorsEj.exit179.4 ], [ %indvars.iv.next331.4, %_ZNK6aiMesh15HasVertexColorsEj.exit179.5 ], [ %indvars.iv.next331.5, %_ZNK6aiMesh15HasVertexColorsEj.exit179.6 ], [ %indvars.iv.next331.6, %_ZNK6aiMesh15HasVertexColorsEj.exit179.7 ]
  %i.eu = trunc nuw nsw i64 %indvars.iv330.lcssa to i32
  invoke void (ptr, ptr, ...) @_ZN6Assimp17ValidateDSProcess11ReportErrorEPKcz(ptr nonnull align 8 poison, ptr noundef nonnull @.str.44, i32 noundef %i.eu) #21
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit179
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330.ph, 1 ; 3 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next331, 8
  br i1 %exitcond333.not, label %._crit_edge267, label %_ZNK6aiMesh15HasVertexColorsEj.exit179.1

_ZNK6aiMesh15HasVertexColorsEj.exit179.1:         ; preds = %bb.au
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next331
  %i.ew = load ptr, ptr %i.ev, align 8
  %.not.i177.not.1 = icmp eq ptr %i.ew, null
  br i1 %.not.i177.not.1, label %bb.av, label %bb.as

bb.av:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit179.1
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330.ph, 2 ; 3 uses
  %exitcond333.not.1 = icmp eq i64 %indvars.iv.next331.1, 8
  br i1 %exitcond333.not.1, label %._crit_edge267, label %_ZNK6aiMesh15HasVertexColorsEj.exit179.2

_ZNK6aiMesh15HasVertexColorsEj.exit179.2:         ; preds = %bb.av
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next331.1
  %i.ey = load ptr, ptr %i.ex, align 8
  %.not.i177.not.2 = icmp eq ptr %i.ey, null
  br i1 %.not.i177.not.2, label %bb.aw, label %bb.as

bb.aw:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit179.2
  %indvars.iv.next331.2 = add nuw nsw i64 %indvars.iv330.ph, 3 ; 3 uses
  %exitcond333.not.2 = icmp eq i64 %indvars.iv.next331.2, 8
  br i1 %exitcond333.not.2, label %._crit_edge267, label %_ZNK6aiMesh15HasVertexColorsEj.exit179.3

_ZNK6aiMesh15HasVertexColorsEj.exit179.3:         ; preds = %bb.aw
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next331.2
  %i.fa = load ptr, ptr %i.ez, align 8
  %.not.i177.not.3 = icmp eq ptr %i.fa, null
  br i1 %.not.i177.not.3, label %bb.ax, label %bb.as

bb.ax:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit179.3
  %indvars.iv.next331.3 = add nuw nsw i64 %indvars.iv330.ph, 4 ; 3 uses
  %exitcond333.not.3 = icmp eq i64 %indvars.iv.next331.3, 8
  br i1 %exitcond333.not.3, label %._crit_edge267, label %_ZNK6aiMesh15HasVertexColorsEj.exit179.4

_ZNK6aiMesh15HasVertexColorsEj.exit179.4:         ; preds = %bb.ax
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next331.3
  %i.fc = load ptr, ptr %i.fb, align 8
  %.not.i177.not.4 = icmp eq ptr %i.fc, null
  br i1 %.not.i177.not.4, label %bb.ay, label %bb.as

bb.ay:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit179.4
  %indvars.iv.next331.4 = add nuw nsw i64 %indvars.iv330.ph, 5 ; 3 uses
  %exitcond333.not.4 = icmp eq i64 %indvars.iv.next331.4, 8
  br i1 %exitcond333.not.4, label %._crit_edge267, label %_ZNK6aiMesh15HasVertexColorsEj.exit179.5

_ZNK6aiMesh15HasVertexColorsEj.exit179.5:         ; preds = %bb.ay
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next331.4
  %i.fe = load ptr, ptr %i.fd, align 8
  %.not.i177.not.5 = icmp eq ptr %i.fe, null
  br i1 %.not.i177.not.5, label %bb.az, label %bb.as

bb.az:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit179.5
  %indvars.iv.next331.5 = add nuw nsw i64 %indvars.iv330.ph, 6 ; 3 uses
end_hunk_0
