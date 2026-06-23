inline.NumInlined: 385
inline.NumDeleted: 122
begin_hunk_0_@_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI:bb.a
  %i.an = sext i32 %.pre.i to i64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.ao = phi i64 [ %i.an, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.al, ptr %8, align 8, !tbaa !24
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ao
  store i32 0, ptr %i.ap, align 4, !tbaa !25
  store i32 %i.ae, ptr %i.l, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.o, %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.aq = phi ptr [ %i.ab, %_ZNK11CStringBaseIwE4LeftEi.exit ], [ %i.al, %bb.o ]
  %i.ar = load ptr, ptr %10, align 8, !tbaa !24   ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ar, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.as, %bb.p ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.au, %bb.p ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.at = load i32, ptr %.04.i.i, align 4, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.at, ptr %.0.i.i, align 4, !tbaa !25
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.q, label %bb.p, !llvm.loop !28

bb.q:                                             ; preds = %bb.p
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !21
  store i32 %i.av, ptr %i.aa, align 8, !tbaa !21
  %i.aw = icmp eq ptr %i.ar, null
  br i1 %i.aw, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !21, !noalias !135
  %i.ba = sub nsw i32 %i.az, %i.ax
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.ax, i32 noundef %i.ba)
          to label %_ZNK11CStringBaseIwE3MidEi.exit unwind label %bb.ab

_ZNK11CStringBaseIwE3MidEi.exit:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !21
  %i.bc = load ptr, ptr %9, align 8, !tbaa !24    ; 3 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bf = add nsw i32 %i.be, 1                    ; 3 uses
  %i.bg = load i32, ptr %i.o, align 4, !tbaa !27  ; 2 uses
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64, label %bb.s

bb.s:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit
  %i.bi = zext nneg i32 %i.bf to i64
  %i.bj = icmp slt i32 %i.be, -1
  %i.bk = shl nuw nsw i64 %i.bi, 2
  %i.bl = select i1 %i.bj, i64 -1, i64 %i.bk
  %i.bm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #19
          to label %.noexc70 unwind label %bb.ac  ; 3 uses

.noexc70:                                         ; preds = %bb.s
  %i.bn = icmp sgt i32 %i.bg, 0
  br i1 %i.bn, label %._crit_edge.thread.i.i68, label %bb.t

._crit_edge.thread.i.i68:                         ; preds = %.noexc70
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #20
  %.pre.i69 = load i32, ptr %i.bb, align 8, !tbaa !21
  %i.bo = sext i32 %.pre.i69 to i64
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i.i68, %.noexc70
  %i.bp = phi i64 [ %i.bo, %._crit_edge.thread.i.i68 ], [ 0, %.noexc70 ]
  store ptr %i.bm, ptr %9, align 8, !tbaa !24
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bp
  store i32 0, ptr %i.bq, align 4, !tbaa !25
  store i32 %i.bf, ptr %i.o, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64

_ZN11CStringBaseIwE11SetCapacityEi.exit.i64:      ; preds = %bb.t, %_ZNK11CStringBaseIwE3MidEi.exit
  %i.br = phi ptr [ %i.bc, %_ZNK11CStringBaseIwE3MidEi.exit ], [ %i.bm, %bb.t ]
  %i.bs = load ptr, ptr %11, align 8, !tbaa !24   ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64
  %.04.i.i65 = phi ptr [ %i.bs, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64 ], [ %i.bt, %bb.u ] ; 2 uses
  %.0.i.i66 = phi ptr [ %i.br, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64 ], [ %i.bv, %bb.u ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.04.i.i65, i64 4
  %i.bu = load i32, ptr %.04.i.i65, align 4, !tbaa !25 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 4
  store i32 %i.bu, ptr %.0.i.i66, align 4, !tbaa !25
  %.not.i.i67 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i67, label %bb.v, label %bb.u, !llvm.loop !28

bb.v:                                             ; preds = %bb.u
  %i.bw = load i32, ptr %i.bd, align 8, !tbaa !21
  store i32 %i.bw, ptr %i.bb, align 8, !tbaa !21
  %i.bx = icmp eq ptr %i.bs, null
  br i1 %i.bx, label %_ZN11CStringBaseIwED2Ev.exit72, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #20
  br label %_ZN11CStringBaseIwED2Ev.exit72

_ZN11CStringBaseIwED2Ev.exit72:                   ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  invoke void @_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.thread unwind label %bb.l

.thread:                                          ; preds = %_ZN11CStringBaseIwED2Ev.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ah

bb.x:                                             ; preds = %bb.g
  %i.by = tail call ptr @__errno_location() #21
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.bq

bb.y:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit73

bb.z:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN11CStringBaseIwED2Ev.exit73, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.cc) #20
  br label %_ZN11CStringBaseIwED2Ev.exit73

_ZN11CStringBaseIwED2Ev.exit73:                   ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.y ], [ %i.cb, %bb.z ], [ %i.cb, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit74

bb.ac:                                            ; preds = %bb.s
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN11CStringBaseIwED2Ev.exit74, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #20
  br label %_ZN11CStringBaseIwED2Ev.exit74

_ZN11CStringBaseIwED2Ev.exit74:                   ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pn48 = phi { ptr, i32 } [ %i.ce, %bb.ab ], [ %i.cf, %bb.ac ], [ %i.cf, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit74, %_ZN11CStringBaseIwED2Ev.exit73, %bb.l
  %.pn50 = phi { ptr, i32 } [ %i.y, %bb.l ], [ %.pn48, %_ZN11CStringBaseIwED2Ev.exit74 ], [ %.pn, %_ZN11CStringBaseIwED2Ev.exit73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.body

bb.af:                                            ; preds = %bb.e
  %i.ci = load ptr, ptr %5, align 8, !tbaa !24
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef %i.ci)
          to label %bb.ah unwind label %bb.ag     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %.thread, %bb.af
  %i.co = invoke noundef i32 @_ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.c)
          to label %bb.ai unwind label %bb.aj     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %bb.ak, label %bb.bq

bb.aj:                                            ; preds = %bb.ah
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %bb.ai
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !21, !noalias !138 ; 11 uses
  %i.ct = add nsw i32 %i.cs, 1                    ; 4 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = zext nneg i32 %i.ct to i64
  %i.cw = icmp slt i32 %i.cs, -1
  %i.cx = shl nuw nsw i64 %i.cv, 2
  %i.cy = select i1 %i.cw, i64 -1, i64 %i.cx
  %i.cz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cy) #19
          to label %.noexc75 unwind label %bb.ax  ; 2 uses

.noexc75:                                         ; preds = %bb.al
  store i32 0, ptr %i.cz, align 4, !tbaa !25, !noalias !138
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc75, %bb.ak
  %.sroa.0147.0 = phi ptr [ null, %bb.ak ], [ %i.cz, %.noexc75 ] ; 8 uses
  %i.da = load ptr, ptr %8, align 8, !tbaa !24, !noalias !138
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.da, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.db, %bb.am ] ; 2 uses
  %.0.i.i.i = phi ptr [ %.sroa.0147.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.dd, %bb.am ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.dc = load i32, ptr %.04.i.i.i, align 4, !tbaa !25, !noalias !138 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.dc, ptr %.0.i.i.i, align 4, !tbaa !25, !noalias !138
  %.not.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.am, !llvm.loop !28

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.am
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !21 ; 2 uses
  %.not.i.i116 = icmp sgt i32 %i.df, 0
  br i1 %.not.i.i116, label %bb.an, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

bb.an:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.dg = icmp sgt i32 %i.cs, 63
  %i.dh = lshr i32 %i.ct, 1
  %i.di = icmp sgt i32 %i.cs, 7
  %..i.i = select i1 %i.di, i32 16, i32 4
  %.0.i.i118 = select i1 %i.dg, i32 %i.dh, i32 %..i.i
  %i.dj = call i32 @llvm.umax.i32(i32 %.0.i.i118, i32 %i.df)
  %i.dk = add nsw i32 %i.dj, %i.ct                ; 3 uses
  %12 = icmp eq i32 %i.dk, %i.cs
  br i1 %12, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i, label %13

13:                                               ; preds = %bb.an
  %14 = add nsw i32 %i.dk, 1
  %15 = zext nneg i32 %14 to i64
  %16 = icmp slt i32 %i.dk, -1
  %17 = shl nuw nsw i64 %15, 2
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %18) #19
          to label %.noexc119 unwind label %bb.aq ; 3 uses

.noexc119:                                        ; preds = %13
  %i.dl = icmp sgt i32 %i.cs, -1
  br i1 %i.dl, label %.preheader.i.i.i, label %bb.ao

.preheader.i.i.i:                                 ; preds = %.noexc119
  %.not161 = icmp eq i32 %i.cs, 0
  br i1 %.not161, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cs to i64
  %i.dm = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %19, ptr align 4 %.sroa.0147.0, i64 %i.dm, i1 false), !tbaa !25
  br label %._crit_edge.thread.i.i.i

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.dn = icmp eq ptr %.sroa.0147.0, null
  br i1 %i.dn, label %bb.ao, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0147.0) #20
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc119
  %i.do = sext i32 %i.cs to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %19, i64 %i.do
  store i32 0, ptr %i.dp, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i:         ; preds = %bb.ao, %bb.an, %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.sroa.0147.1 = phi ptr [ %.sroa.0147.0, %bb.an ], [ %19, %bb.ao ], [ %.sroa.0147.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i ] ; 6 uses
  %20 = sext i32 %i.cs to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.sroa.0147.1, i64 %20
  %i.dr = load ptr, ptr %9, align 8, !tbaa !24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
  %.04.i.i117 = phi ptr [ %i.dr, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.ds, %bb.ap ] ; 2 uses
  %.0.i4.i = phi ptr [ %i.dq, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.du, %bb.ap ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.04.i.i117, i64 4
  %i.dt = load i32, ptr %.04.i.i117, align 4, !tbaa !25 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 4
  store i32 %i.dt, ptr %.0.i4.i, align 4, !tbaa !25
  %.not.i5.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i5.i, label %bb.as, label %bb.ap, !llvm.loop !28

bb.aq:                                            ; preds = %13
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = icmp eq ptr %.sroa.0147.0, null
  br i1 %i.dw, label %.body, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0147.0) #20
  br label %.body

bb.as:                                            ; preds = %bb.ap
  %i.dx = load i32, ptr %i.de, align 8, !tbaa !21
  %i.dy = add nsw i32 %i.dx, %i.cs                ; 3 uses
  %i.dz = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %.noexc80 unwind label %bb.ay  ; 6 uses

.noexc80:                                         ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false)
  %i.ea = add nsw i32 %i.dy, 1                    ; 3 uses
  %i.eb = icmp ne i32 %i.ea, 0
  call void @llvm.assume(i1 %i.eb)
  %i.ec = zext nneg i32 %i.ea to i64
  %i.ed = icmp slt i32 %i.dy, -1
  %i.ee = shl nuw nsw i64 %i.ec, 2
  %i.ef = select i1 %i.ed, i64 -1, i64 %i.ee
  %i.eg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ef) #19
          to label %.noexc.i unwind label %bb.au  ; 3 uses

.noexc.i:                                         ; preds = %.noexc80
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store ptr %i.eg, ptr %i.dz, align 8, !tbaa !24
  store i32 0, ptr %i.eg, align 4, !tbaa !25
  store i32 %i.ea, ptr %i.eh, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i76

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i76:    ; preds = %.noexc.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i76
  %.04.i.i.i77 = phi ptr [ %i.ei, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i76 ], [ %.sroa.0147.1, %.noexc.i ] ; 2 uses
  %.0.i.i.i78 = phi ptr [ %i.ek, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i76 ], [ %i.eg, %.noexc.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.04.i.i.i77, i64 4
  %i.ej = load i32, ptr %.04.i.i.i77, align 4, !tbaa !25 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i.i78, i64 4
  store i32 %i.ej, ptr %.0.i.i.i78, align 4, !tbaa !25
  %.not.i.i.i79 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i.i79, label %bb.at, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i76, !llvm.loop !28

bb.at:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i76
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %i.dy, ptr %i.el, align 8, !tbaa !21
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %bb.av unwind label %bb.ay

bb.au:                                            ; preds = %.noexc80
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef 16) #20
  br label %.body82

bb.av:                                            ; preds = %bb.at
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !52
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !51 ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.er
  store ptr %i.dz, ptr %i.es, align 8, !tbaa !53
  %i.et = add nsw i32 %i.eq, 1
  store i32 %i.et, ptr %i.ep, align 4, !tbaa !51
  %i.eu = icmp eq ptr %.sroa.0147.1, null
  br i1 %i.eu, label %_ZN11CStringBaseIwED2Ev.exit84, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0147.1) #20
  br label %_ZN11CStringBaseIwED2Ev.exit84

_ZN11CStringBaseIwED2Ev.exit84:                   ; preds = %bb.av, %bb.aw
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 148 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !51
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN11CStringBaseIwED2Ev.exit84
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  br label %bb.ba

._crit_edge:                                      ; preds = %_ZN11CStringBaseIwED2Ev.exit106, %_ZN11CStringBaseIwED2Ev.exit84
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !141
  store i64 %i.fa, ptr %i.b, align 8, !tbaa !122
  br label %bb.bq

bb.ax:                                            ; preds = %bb.al
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.at, %bb.as
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.body82:                                          ; preds = %bb.au, %bb.ay
  %eh.lpad-body83 = phi { ptr, i32 } [ %i.fc, %bb.ay ], [ %i.em, %bb.au ] ; 2 uses
  %i.fd = icmp eq ptr %.sroa.0147.1, null
  br i1 %i.fd, label %.body, label %bb.az

bb.az:                                            ; preds = %.body82
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0147.1) #20
  br label %.body

bb.ba:                                            ; preds = %.lr.ph, %_ZN11CStringBaseIwED2Ev.exit106
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11CStringBaseIwED2Ev.exit106 ] ; 2 uses
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !52
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !53 ; 2 uses
  %i.fh = load i32, ptr %i.cr, align 8, !tbaa !21, !noalias !142 ; 11 uses
  %i.fi = add nsw i32 %i.fh, 1                    ; 4 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i86, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fk = zext nneg i32 %i.fi to i64
  %i.fl = icmp slt i32 %i.fh, -1
  %i.fm = shl nuw nsw i64 %i.fk, 2
  %i.fn = select i1 %i.fl, i64 -1, i64 %i.fm
  %i.fo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fn) #19
          to label %.noexc92 unwind label %bb.bn  ; 2 uses

.noexc92:                                         ; preds = %bb.bb
  store i32 0, ptr %i.fo, align 4, !tbaa !25, !noalias !142
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i86

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i86:    ; preds = %.noexc92, %bb.ba
  %.sroa.0.0 = phi ptr [ null, %bb.ba ], [ %i.fo, %.noexc92 ] ; 8 uses
  %i.fp = load ptr, ptr %8, align 8, !tbaa !24, !noalias !142
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i86
  %.04.i.i.i87 = phi ptr [ %i.fp, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i86 ], [ %i.fq, %bb.bc ] ; 2 uses
  %.0.i.i.i88 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i86 ], [ %i.fs, %bb.bc ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.04.i.i.i87, i64 4
  %i.fr = load i32, ptr %.04.i.i.i87, align 4, !tbaa !25, !noalias !142 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i.i88, i64 4
  store i32 %i.fr, ptr %.0.i.i.i88, align 4, !tbaa !25, !noalias !142
  %.not.i.i.i89 = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i.i89, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i90, label %bb.bc, !llvm.loop !28

_ZN11CStringBaseIwEC2ERKS0_.exit.i90:             ; preds = %bb.bc
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !21 ; 2 uses
  %.not.i.i120 = icmp sgt i32 %i.fu, 0
  br i1 %.not.i.i120, label %bb.bd, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i121

bb.bd:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i90
  %i.fv = icmp sgt i32 %i.fh, 63
  %i.fw = lshr i32 %i.fi, 1
  %i.fx = icmp sgt i32 %i.fh, 7
  %..i.i125 = select i1 %i.fx, i32 16, i32 4
  %.0.i.i126 = select i1 %i.fv, i32 %i.fw, i32 %..i.i125
  %i.fy = call i32 @llvm.umax.i32(i32 %.0.i.i126, i32 %i.fu)
  %i.fz = add nsw i32 %i.fy, %i.fi                ; 3 uses
  %21 = icmp eq i32 %i.fz, %i.fh
  br i1 %21, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i121, label %22

22:                                               ; preds = %bb.bd
  %23 = add nsw i32 %i.fz, 1
  %24 = zext nneg i32 %23 to i64
  %25 = icmp slt i32 %i.fz, -1
  %26 = shl nuw nsw i64 %24, 2
  %27 = select i1 %25, i64 -1, i64 %26
  %28 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %27) #19
          to label %.noexc138 unwind label %bb.bg ; 3 uses

.noexc138:                                        ; preds = %22
  %i.ga = icmp sgt i32 %i.fh, -1
  br i1 %i.ga, label %.preheader.i.i.i128, label %bb.be

.preheader.i.i.i128:                              ; preds = %.noexc138
  %.not162 = icmp eq i32 %i.fh, 0
  br i1 %.not162, label %._crit_edge.i.i.i130, label %.lr.ph.i.i.i133

.lr.ph.i.i.i133:                                  ; preds = %.preheader.i.i.i128
  %wide.trip.count.i.i.i134 = zext nneg i32 %i.fh to i64
  %i.gb = shl nuw nsw i64 %wide.trip.count.i.i.i134, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %28, ptr align 4 %.sroa.0.0, i64 %i.gb, i1 false), !tbaa !25
  br label %._crit_edge.thread.i.i.i131

._crit_edge.i.i.i130:                             ; preds = %.preheader.i.i.i128
  %i.gc = icmp eq ptr %.sroa.0.0, null
  br i1 %i.gc, label %bb.be, label %._crit_edge.thread.i.i.i131

._crit_edge.thread.i.i.i131:                      ; preds = %.lr.ph.i.i.i133, %._crit_edge.i.i.i130
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #20
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge.thread.i.i.i131, %._crit_edge.i.i.i130, %.noexc138
  %i.gd = sext i32 %i.fh to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %28, i64 %i.gd
  store i32 0, ptr %i.ge, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i121

_ZN11CStringBaseIwE10GrowLengthEi.exit.i121:      ; preds = %bb.be, %bb.bd, %_ZN11CStringBaseIwEC2ERKS0_.exit.i90
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.bd ], [ %28, %bb.be ], [ %.sroa.0.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i90 ] ; 6 uses
  %29 = sext i32 %i.fh to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %.sroa.0.1, i64 %29
  %i.gg = load ptr, ptr %i.fg, align 8, !tbaa !24
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i121
  %.04.i.i122 = phi ptr [ %i.gg, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i121 ], [ %i.gh, %bb.bf ] ; 2 uses
  %.0.i4.i123 = phi ptr [ %i.gf, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i121 ], [ %i.gj, %bb.bf ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.04.i.i122, i64 4
  %i.gi = load i32, ptr %.04.i.i122, align 4, !tbaa !25 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i4.i123, i64 4
  store i32 %i.gi, ptr %.0.i4.i123, align 4, !tbaa !25
  %.not.i5.i124 = icmp eq i32 %i.gi, 0
  br i1 %.not.i5.i124, label %bb.bi, label %bb.bf, !llvm.loop !28

bb.bg:                                            ; preds = %22
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = icmp eq ptr %.sroa.0.0, null
  br i1 %i.gl, label %.body, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #20
  br label %.body

bb.bi:                                            ; preds = %bb.bf
  %i.gm = load i32, ptr %i.ft, align 8, !tbaa !21
  %i.gn = add nsw i32 %i.gm, %i.fh                ; 3 uses
  %i.go = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %.noexc101 unwind label %bb.bo ; 6 uses

.noexc101:                                        ; preds = %bb.bi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, i8 0, i64 16, i1 false)
  %i.gp = add nsw i32 %i.gn, 1                    ; 3 uses
  %i.gq = icmp ne i32 %i.gp, 0
  call void @llvm.assume(i1 %i.gq)
  %i.gr = zext nneg i32 %i.gp to i64
  %i.gs = icmp slt i32 %i.gn, -1
  %i.gt = shl nuw nsw i64 %i.gr, 2
  %i.gu = select i1 %i.gs, i64 -1, i64 %i.gt
  %i.gv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gu) #19
          to label %.noexc.i96 unwind label %bb.bk ; 3 uses

.noexc.i96:                                       ; preds = %.noexc101
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store ptr %i.gv, ptr %i.go, align 8, !tbaa !24
  store i32 0, ptr %i.gv, align 4, !tbaa !25
  store i32 %i.gp, ptr %i.gw, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i97

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i97:    ; preds = %.noexc.i96, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i97
  %.04.i.i.i98 = phi ptr [ %i.gx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i97 ], [ %.sroa.0.1, %.noexc.i96 ] ; 2 uses
  %.0.i.i.i99 = phi ptr [ %i.gz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i97 ], [ %i.gv, %.noexc.i96 ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.04.i.i.i98, i64 4
  %i.gy = load i32, ptr %.04.i.i.i98, align 4, !tbaa !25 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i.i.i99, i64 4
  store i32 %i.gy, ptr %.0.i.i.i99, align 4, !tbaa !25
  %.not.i.i.i100 = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i.i100, label %bb.bj, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i97, !llvm.loop !28

bb.bj:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i97
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i32 %i.gn, ptr %i.ha, align 8, !tbaa !21
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %bb.bl unwind label %bb.bo

bb.bk:                                            ; preds = %.noexc101
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef 16) #20
  br label %.body103

bb.bl:                                            ; preds = %bb.bj
  %i.hc = load ptr, ptr %i.en, align 8, !tbaa !52
  %i.hd = load i32, ptr %i.ep, align 4, !tbaa !51 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.he
  store ptr %i.go, ptr %i.hf, align 8, !tbaa !53
  %i.hg = add nsw i32 %i.hd, 1
  store i32 %i.hg, ptr %i.ep, align 4, !tbaa !51
  %i.hh = icmp eq ptr %.sroa.0.1, null
  br i1 %i.hh, label %_ZN11CStringBaseIwED2Ev.exit106, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #20
  br label %_ZN11CStringBaseIwED2Ev.exit106

_ZN11CStringBaseIwED2Ev.exit106:                  ; preds = %bb.bl, %bb.bm
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hi = load i32, ptr %i.ev, align 4, !tbaa !51
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next, %i.hj
  br i1 %i.hk, label %bb.ba, label %._crit_edge, !llvm.loop !145

bb.bn:                                            ; preds = %bb.bb
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bo:                                            ; preds = %bb.bj, %bb.bi
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body103

.body103:                                         ; preds = %bb.bk, %bb.bo
  %eh.lpad-body104 = phi { ptr, i32 } [ %i.hm, %bb.bo ], [ %i.hb, %bb.bk ] ; 2 uses
  %i.hn = icmp eq ptr %.sroa.0.1, null
  br i1 %i.hn, label %.body, label %bb.bp

bb.bp:                                            ; preds = %.body103
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #20
  br label %.body

bb.bq:                                            ; preds = %bb.x, %bb.ai, %._crit_edge
  %.3 = phi i32 [ 0, %._crit_edge ], [ %i.co, %bb.ai ], [ %i.bz, %bb.x ]
  %i.ho = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_ZN11CStringBaseIwED2Ev.exit108, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_ZdaPv(ptr noundef nonnull %i.ho) #20
  br label %_ZN11CStringBaseIwED2Ev.exit108

_ZN11CStringBaseIwED2Ev.exit108:                  ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.hq = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %_ZN11CStringBaseIwED2Ev.exit109, label %bb.bs

bb.bs:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit108
  call void @_ZdaPv(ptr noundef nonnull %i.hq) #20
  br label %_ZN11CStringBaseIwED2Ev.exit109

_ZN11CStringBaseIwED2Ev.exit109:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit108, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.hs = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit109
  call void @_ZdaPv(ptr noundef nonnull %i.hs) #20
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN11CStringBaseIwED2Ev.exit109
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.hu = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef i32 %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit unwind label %bb.bv ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #18
  unreachable

_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit:   ; preds = %bb.bu
  ret i32 %.3

.body:                                            ; preds = %bb.bg, %bb.bh, %bb.bn, %.body103, %bb.bp, %bb.aq, %bb.ar, %bb.ax, %.body82, %bb.az, %bb.aj, %bb.ag, %bb.ae
  %.pn54.pn = phi { ptr, i32 } [ %eh.lpad-body83, %bb.az ], [ %.pn50, %bb.ae ], [ %i.cp, %bb.aj ], [ %i.cn, %bb.ag ], [ %i.dv, %bb.aq ], [ %i.fb, %bb.ax ], [ %i.dv, %bb.ar ], [ %eh.lpad-body83, %.body82 ], [ %i.gk, %bb.bg ], [ %i.hl, %bb.bn ], [ %i.gk, %bb.bh ], [ %eh.lpad-body104, %.body103 ], [ %eh.lpad-body104, %bb.bp ] ; 2 uses
  %i.ia = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %_ZN11CStringBaseIwED2Ev.exit111, label %bb.bw

bb.bw:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #20
  br label %_ZN11CStringBaseIwED2Ev.exit111

_ZN11CStringBaseIwED2Ev.exit111:                  ; preds = %bb.bw, %.body, %bb.k
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.x, %bb.k ], [ %.pn54.pn, %.body ], [ %.pn54.pn, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.ic = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN11CStringBaseIwED2Ev.exit112, label %bb.bx

bb.bx:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit111
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #20
  br label %_ZN11CStringBaseIwED2Ev.exit112

_ZN11CStringBaseIwED2Ev.exit112:                  ; preds = %bb.bx, %_ZN11CStringBaseIwED2Ev.exit111, %bb.j
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.j ], [ %.pn54.pn.pn, %_ZN11CStringBaseIwED2Ev.exit111 ], [ %.pn54.pn.pn, %bb.bx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.ie = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit112
  call void @_ZdaPv(ptr noundef nonnull %i.ie) #20
  br label %bb.bz

bb.bz:                                            ; preds = %bb.i, %_ZN11CStringBaseIwED2Ev.exit112, %bb.by
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %.pn54.pn.pn.pn, %_ZN11CStringBaseIwED2Ev.exit112 ], [ %.pn54.pn.pn.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ig = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = invoke noundef i32 %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit115 unwind label %bb.ca ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #18
  unreachable

_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit115: ; preds = %bb.bz, %bb.h
  %.pn54.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.h ], [ %.pn54.pn.pn.pn.pn, %bb.bz ]
  resume { ptr, i32 } %.pn54.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16COpenCallbackImpC2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !84
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV16COpenCallbackImp, i64 16), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV16COpenCallbackImp, i64 120), ptr %i.a, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV16COpenCallbackImp, i64 192), ptr %i.b, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV16COpenCallbackImp, i64 256), ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.g = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !24
  store i32 0, ptr %i.g, align 4, !tbaa !25
  store i32 4, ptr %i.f, align 4, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.b unwind label %.thread    ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108
  store ptr %i.i, ptr %i.h, align 8, !tbaa !24
  store i32 0, ptr %i.i, align 4, !tbaa !25
  store i32 4, ptr %i.j, align 4, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 132
  store ptr %i.l, ptr %i.k, align 8, !tbaa !24
  store i32 0, ptr %i.l, align 4, !tbaa !25
  store i32 4, ptr %i.m, align 4, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.p, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %i.n, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  ret void

.thread:                                          ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #20
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !24  ; 2 uses
  %i.t = icmp eq ptr %.pre, null
  br i1 %i.t, label %_ZN11CStringBaseIwED2Ev.exit9, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.pn.pn11 = phi { ptr, i32 } [ %i.r, %.thread ], [ %i.s, %bb.d ]
  %i.u = phi ptr [ %i.g, %.thread ], [ %.pre, %bb.d ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #20
  br label %_ZN11CStringBaseIwED2Ev.exit9

_ZN11CStringBaseIwED2Ev.exit9:                    ; preds = %bb.e, %bb.d
  %.pn.pn12 = phi { ptr, i32 } [ %.pn.pn11, %bb.e ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %.pn.pn12
}

declare noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br i1 %i.b, label %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, label %bb.b

._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge:      ; preds = %bb.a
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21, !noalias !146
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %.phi.trans.insert, align 8, !tbaa !21
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27   ; 2 uses
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.f to i64
  %i.k = icmp slt i32 %i.e, -1
  %i.l = shl nuw nsw i64 %i.j, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #19 ; 3 uses
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #20
  %.pre.i = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21
  %i.p = sext i32 %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %bb.c
  %i.q = phi i64 [ %i.p, %._crit_edge.thread.i.i ], [ 0, %bb.c ]
  store ptr %i.n, ptr %i.a, align 8, !tbaa !24
  %i.r = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !25
  store i32 %i.f, ptr %i.g, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.s = phi ptr [ %i.c, %bb.b ], [ %i.n, %bb.d ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.t, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.u, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.w, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.v = load i32, ptr %.04.i.i, align 4, !tbaa !25 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.v, ptr %.0.i.i, align 4, !tbaa !25
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.e, !llvm.loop !28

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.e
  %i.x = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  store i32 %i.x, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %i.y = phi i32 [ %.pre, %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge ], [ %i.x, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ] ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = add nsw i32 %i.y, 1                     ; 4 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = icmp slt i32 %i.y, -1
  %i.ae = shl nuw nsw i64 %i.ac, 2
  %i.af = select i1 %i.ad, i64 -1, i64 %i.ae
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #19, !noalias !146 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !25, !noalias !146
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %bb.f, %_ZN11CStringBaseIwEaSERKS0_.exit
  %.sroa.0.0 = phi ptr [ null, %_ZN11CStringBaseIwEaSERKS0_.exit ], [ %i.ag, %bb.f ] ; 8 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !24, !noalias !146
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.ah, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.0.i.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ak, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.aj = load i32, ptr %.04.i.i.i, align 4, !tbaa !25, !noalias !146 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.aj, ptr %.0.i.i.i, align 4, !tbaa !25, !noalias !146
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.g, !llvm.loop !28

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.am, 0
  br i1 %.not.i.i5, label %bb.h, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

bb.h:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.an = icmp sgt i32 %i.y, 63
  %i.ao = lshr i32 %i.aa, 1
  %i.ap = icmp sgt i32 %i.y, 7
  %..i.i = select i1 %i.ap, i32 16, i32 4
  %.0.i.i8 = select i1 %i.an, i32 %i.ao, i32 %..i.i
  %i.aq = tail call i32 @llvm.umax.i32(i32 %.0.i.i8, i32 %i.am)
  %i.ar = add nsw i32 %i.aq, %i.aa                ; 3 uses
  %3 = icmp eq i32 %i.ar, %i.y
  br i1 %3, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i, label %4

4:                                                ; preds = %bb.h
  %5 = add nsw i32 %i.ar, 1
  %6 = zext nneg i32 %5 to i64
  %7 = icmp slt i32 %i.ar, -1
  %8 = shl nuw nsw i64 %6, 2
  %9 = select i1 %7, i64 -1, i64 %8
  %10 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %9) #19
          to label %.noexc unwind label %bb.k     ; 3 uses

.noexc:                                           ; preds = %4
  %i.as = icmp sgt i32 %i.y, -1
  br i1 %i.as, label %.preheader.i.i.i, label %bb.i

.preheader.i.i.i:                                 ; preds = %.noexc
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.y to i64
  %i.at = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %10, ptr align 4 %.sroa.0.0, i64 %i.at, i1 false), !tbaa !25
  br label %._crit_edge.thread.i.i.i

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.au = icmp eq ptr %.sroa.0.0, null
  br i1 %i.au, label %bb.i, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #20
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc
  %i.av = sext i32 %i.y to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %10, i64 %i.av
  store i32 0, ptr %i.aw, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i:         ; preds = %bb.i, %bb.h, %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.h ], [ %10, %bb.i ], [ %.sroa.0.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i ] ; 6 uses
  %11 = sext i32 %i.y to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %.sroa.0.1, i64 %11
  %i.ay = load ptr, ptr %2, align 8, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
  %.04.i.i6 = phi ptr [ %i.ay, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.az, %bb.j ] ; 2 uses
  %.0.i4.i = phi ptr [ %i.ax, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.bb, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.04.i.i6, i64 4
  %i.ba = load i32, ptr %.04.i.i6, align 4, !tbaa !25 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 4
  store i32 %i.ba, ptr %.0.i4.i, align 4, !tbaa !25
  %.not.i5.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i5.i, label %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit, label %bb.j, !llvm.loop !28

bb.k:                                             ; preds = %4
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = icmp eq ptr %.sroa.0.0, null
  br i1 %i.bd, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.k, %bb.o
  %.sroa.0.1.sink = phi ptr [ %.sroa.0.1, %bb.o ], [ %.sroa.0.0, %bb.k ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.bc, %bb.k ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1.sink) #20
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.o, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.bh, %bb.o ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZplIwE11CStringBaseIT_ERKS2_S4_.exit:            ; preds = %bb.j
  %i.be = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef %.sroa.0.1)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
  %i.bf = icmp eq ptr %.sroa.0.1, null
  br i1 %i.bf, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.l, %bb.m
  br i1 %i.be, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.bg = tail call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.bg, align 16, !tbaa !4
  tail call void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIi, ptr null) #22
  unreachable

bb.o:                                             ; preds = %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = icmp eq ptr %.sroa.0.1, null
  br i1 %i.bi, label %common.resume, label %common.resume.sink.split

bb.p:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.bk, align 8, !tbaa !149
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.bl, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CArchiveLink6ReOpenEP7CCodecsRK11CStringBaseIwEP20IArchiveOpenCallback(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 11 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %class.CStringBase, align 8         ; 7 uses
  %6 = alloca %class.CStringBase, align 8         ; 7 uses
  %7 = alloca %class.CRecordVector, align 8       ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !51   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.c, label %.noexc

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.g, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %7, align 8, !tbaa !14
  %i.h = invoke noundef i32 @_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit37

.noexc:                                           ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #19 ; 11 uses
  invoke void @_ZN16COpenCallbackImpC2Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.j)
          to label %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit.i unwind label %.body.thread49

_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !150 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  store ptr null, ptr %i.o, align 8, !tbaa !124
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 2 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %.noexc28, label %bb.f

bb.f:                                             ; preds = %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit.i
  %i.q = load ptr, ptr %3, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc28 unwind label %.body.thread54, !inline_history !150 ; 0 uses

.noexc28:                                         ; preds = %bb.f, %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit.i
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !151  ; 3 uses
  %.not6.i17.i = icmp eq ptr %i.u, null
  br i1 %.not6.i17.i, label %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit18.i, label %bb.g

bb.g:                                             ; preds = %.noexc28
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit18.i unwind label %.body.thread54, !inline_history !150 ; 0 uses

_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit18.i: ; preds = %bb.g, %.noexc28
  store ptr %3, ptr %i.p, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc30 unwind label %.body.thread54 ; 2 uses

.noexc30:                                         ; preds = %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit18.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 12
  store ptr %i.aa, ptr %4, align 8, !tbaa !24
  store i32 0, ptr %i.aa, align 4, !tbaa !25
  store i32 4, ptr %i.ab, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ac = load ptr, ptr %2, align 8, !tbaa !24
  %i.ad = invoke noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.h unwind label %bb.m       ; 0 uses

bb.h:                                             ; preds = %.noexc30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !4
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef %i.ae)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit.i unwind label %bb.n

_ZNK11CStringBaseIwE4LeftEi.exit.i:               ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.af = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !21, !noalias !152
  %i.ah = sub nsw i32 %i.ag, %i.af
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.af, i32 noundef %i.ah)
          to label %_ZNK11CStringBaseIwE3MidEi.exit.i unwind label %bb.o

_ZNK11CStringBaseIwE3MidEi.exit.i:                ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit.i
  invoke void @_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_(ptr noundef nonnull align 8 dereferenceable(192) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit.i
  %i.ai = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #20
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ak = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN11CStringBaseIwED2Ev.exit19.i, label %bb.k

bb.k:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #20
  br label %_ZN11CStringBaseIwED2Ev.exit19.i

_ZN11CStringBaseIwED2Ev.exit19.i:                 ; preds = %bb.k, %_ZN11CStringBaseIwED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.am = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.u, label %bb.l

bb.l:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit19.i
  call void @_ZdaPv(ptr noundef nonnull %i.am) #20
  br label %bb.u

.body.thread49:                                   ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 192) #20
  br label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit37

bb.m:                                             ; preds = %.noexc30
  %i.ap = landingpad { ptr, i32 }
end_hunk_0
