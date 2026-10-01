Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lgc?download=true
inline.NumInlined: 48
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL6gcstepP9lua_Statem:bb.a
  %.not.i50.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i50.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ch)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !65
  %i.cn = icmp sgt i32 %i.cm, 5
  br i1 %i.cn, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !58 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !58
  %i.cs = and i8 %i.cr, 3
  %.not15.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not15.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.cp)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 44
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !66
  %i.cv = icmp sgt i32 %i.cu, 5
  br i1 %i.cv, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !58 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !58
  %i.da = and i8 %i.cz, 3
  %.not16.i.i = icmp eq i8 %i.da, 0
  br i1 %.not16.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.cx)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %indvars.iv.next.i48.i = add nuw nsw i64 %indvars.iv.i47.i, 1 ; 2 uses
  %exitcond.not.i49.i = icmp eq i64 %indvars.iv.next.i48.i, 130
  br i1 %exitcond.not.i49.i, label %_ZL21markudatadirectaccessP12global_State.exit.i, label %bb.r, !llvm.loop !1

_ZL21markudatadirectaccessP12global_State.exit.i: ; preds = %bb.aa, %_ZL12marktaggetmtP12global_State.exit.i
  %i.db = load i8, ptr @_ZN5FFlag18LuauDirectFieldGetE, align 8, !tbaa !44, !range !45, !noundef !46
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.ab, label %_ZL21markudatadirectfieldsP12global_State.exit.i

bb.ab:                                            ; preds = %_ZL21markudatadirectaccessP12global_State.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aq, i64 17488
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %bb.ab
  %indvars.iv.i51.i = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next.i54.i, %bb.af ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i51.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !62 ; 3 uses
  %.not.i52.i = icmp eq ptr %i.df, null
  br i1 %.not.i52.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !58
  %i.di = and i8 %i.dh, 3
  %.not9.i53.i = icmp eq i8 %i.di, 0
  br i1 %.not9.i53.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.df)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %indvars.iv.next.i54.i = add nuw nsw i64 %indvars.iv.i51.i, 1 ; 2 uses
  %exitcond.not.i55.i = icmp eq i64 %indvars.iv.next.i54.i, 130
  br i1 %exitcond.not.i55.i, label %_ZL21markudatadirectfieldsP12global_State.exit.i, label %bb.ac, !llvm.loop !2

_ZL21markudatadirectfieldsP12global_State.exit.i: ; preds = %bb.af, %_ZL21markudatadirectaccessP12global_State.exit.i
  %i.dj = load ptr, ptr %i.bh, align 8, !tbaa !55
  %.not3.i56.i = icmp eq ptr %i.dj, null
  br i1 %.not3.i56.i, label %_ZL12propagateallP12global_State.exit61.i, label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %_ZL21markudatadirectfieldsP12global_State.exit.i, %.lr.ph.i57.i
  %.04.i58.i = phi i64 [ %i.dl, %.lr.ph.i57.i ], [ 0, %_ZL21markudatadirectfieldsP12global_State.exit.i ]
  %i.dk = tail call fastcc noundef i64 @_ZL13propagatemarkP12global_State(ptr noundef nonnull %i.aq)
  %i.dl = add i64 %i.dk, %.04.i58.i               ; 2 uses
  %i.dm = load ptr, ptr %i.bh, align 8, !tbaa !55
  %.not.i59.i = icmp eq ptr %i.dm, null
  br i1 %.not.i59.i, label %_ZL12propagateallP12global_State.exit61.i, label %.lr.ph.i57.i, !llvm.loop !124

_ZL12propagateallP12global_State.exit61.i:        ; preds = %.lr.ph.i57.i, %_ZL21markudatadirectfieldsP12global_State.exit.i
  %.0.lcssa.i60.i = phi i64 [ 0, %_ZL21markudatadirectfieldsP12global_State.exit.i ], [ %i.dl, %.lr.ph.i57.i ]
  %i.dn = add i64 %i.bm, %.0.lcssa.i60.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 16, !tbaa !57 ; 2 uses
  store ptr %i.dp, ptr %i.bh, align 8, !tbaa !55
  store ptr null, ptr %i.do, align 16, !tbaa !57
  %.not3.i62.i = icmp eq ptr %i.dp, null
  br i1 %.not3.i62.i, label %_ZL12propagateallP12global_State.exit67.i, label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %_ZL12propagateallP12global_State.exit61.i, %.lr.ph.i63.i
  %.04.i64.i = phi i64 [ %i.dr, %.lr.ph.i63.i ], [ 0, %_ZL12propagateallP12global_State.exit61.i ]
  %i.dq = tail call fastcc noundef i64 @_ZL13propagatemarkP12global_State(ptr noundef nonnull %i.aq)
  %i.dr = add i64 %i.dq, %.04.i64.i               ; 2 uses
  %i.ds = load ptr, ptr %i.bh, align 8, !tbaa !55
  %.not.i65.i = icmp eq ptr %i.ds, null
  br i1 %.not.i65.i, label %_ZL12propagateallP12global_State.exit67.i, label %.lr.ph.i63.i, !llvm.loop !124

_ZL12propagateallP12global_State.exit67.i:        ; preds = %.lr.ph.i63.i, %_ZL12propagateallP12global_State.exit61.i
  %.0.lcssa.i66.i = phi i64 [ 0, %_ZL12propagateallP12global_State.exit61.i ], [ %i.dr, %.lr.ph.i63.i ]
  %i.dt = add i64 %i.dn, %.0.lcssa.i66.i          ; 4 uses
  %i.du = load i8, ptr @_ZN5FFlag16LuauGcTraceUdataE, align 8, !tbaa !44, !range !45, !noundef !46
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.ag, label %.loopexit.i

bb.ag:                                            ; preds = %_ZL12propagateallP12global_State.exit67.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16456 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !67 ; 2 uses
  %.not42.i = icmp eq ptr %i.dx, null
  br i1 %.not42.i, label %.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aq, i64 760 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !68
  tail call void %i.dx(ptr noundef %i.dz, ptr noundef nonnull @_ZL15embeddermarkrefP9lua_Statei), !inline_history !125
  %i.ea = load ptr, ptr %i.bh, align 8, !tbaa !55
  %.not4389.i = icmp eq ptr %i.ea, null
  br i1 %.not4389.i, label %.loopexit.i, label %.lr.ph.i69.preheader.i

.lr.ph.i69.preheader.i:                           ; preds = %bb.ah, %_ZL12propagateallP12global_State.exit73.i
  %.090.i = phi i64 [ %i.ee, %_ZL12propagateallP12global_State.exit73.i ], [ %i.dt, %bb.ah ]
  br label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %.lr.ph.i69.i, %.lr.ph.i69.preheader.i
  %.04.i70.i = phi i64 [ %i.ec, %.lr.ph.i69.i ], [ 0, %.lr.ph.i69.preheader.i ]
  %i.eb = tail call fastcc noundef i64 @_ZL13propagatemarkP12global_State(ptr noundef nonnull %i.aq)
  %i.ec = add i64 %i.eb, %.04.i70.i               ; 2 uses
  %i.ed = load ptr, ptr %i.bh, align 8, !tbaa !55
  %.not.i71.i = icmp eq ptr %i.ed, null
  br i1 %.not.i71.i, label %_ZL12propagateallP12global_State.exit73.i, label %.lr.ph.i69.i, !llvm.loop !124

_ZL12propagateallP12global_State.exit73.i:        ; preds = %.lr.ph.i69.i
  %i.ee = add i64 %i.ec, %.090.i                  ; 2 uses
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !67
  %i.eg = load ptr, ptr %i.dy, align 8, !tbaa !68
  tail call void %i.ef(ptr noundef %i.eg, ptr noundef nonnull @_ZL15embeddermarkrefP9lua_Statei), !inline_history !125
  %i.eh = load ptr, ptr %i.bh, align 8, !tbaa !55
  %.not43.i = icmp eq ptr %i.eh, null
  br i1 %.not43.i, label %.loopexit.i, label %.lr.ph.i69.preheader.i, !llvm.loop !126

.loopexit.i:                                      ; preds = %_ZL12propagateallP12global_State.exit73.i, %bb.ah, %bb.ag, %_ZL12propagateallP12global_State.exit67.i
  %.1.i = phi i64 [ %i.dt, %_ZL12propagateallP12global_State.exit67.i ], [ %i.dt, %bb.ag ], [ %i.dt, %bb.ah ], [ %i.ee, %_ZL12propagateallP12global_State.exit73.i ]
  %i.ei = load ptr, ptr %i.bn, align 8, !tbaa !61 ; 2 uses
  %.not66.i.i = icmp eq ptr %i.ei, null
  br i1 %.not66.i.i, label %_ZL10cleartableP9lua_StateP8GCObject.exit.i, label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %.loopexit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i, %.lr.ph70.i.i
  %.04068.i.i = phi i64 [ 0, %.lr.ph70.i.i ], [ %.141.i.i, %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i ]
  %.04267.i.i = phi ptr [ %i.ei, %.lr.ph70.i.i ], [ %i.hy, %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i ] ; 9 uses
  %i.ek = load i8, ptr @_ZN6DFFlag18LuauGcTableStepFixE, align 8, !tbaa !44, !range !45, !noundef !46
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %.04267.i.i, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !71 ; 2 uses
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = shl nsw i64 %i.eo, 4
  br i1 %i.el, label %bb.aj, label %.sink.split.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.eq = getelementptr inbounds nuw i8, ptr %.04267.i.i, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !72
  %i.es = icmp eq ptr %i.er, @luaH_dummynode
  br i1 %i.es, label %bb.ak, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.aj, %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %.04267.i.i, i64 6
  %i.eu = load i8, ptr %i.et, align 2, !tbaa !73
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = shl nuw i32 1, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 5
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split.i.i, %bb.aj
  %.sink.i.i = phi i64 [ 0, %bb.aj ], [ %i.ey, %.sink.split.i.i ]
  %i.ez = add i64 %.04068.i.i, 48
  %i.fa = add i64 %i.ez, %i.ep
  %.141.i.i = add i64 %i.fa, %.sink.i.i           ; 2 uses
  %.not4464.i.i = icmp eq i32 %i.en, 0
  br i1 %.not4464.i.i, label %._crit_edge.i.i, label %.lr.ph.i74.i

.lr.ph.i74.i:                                     ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %.04267.i.i, i64 24 ; 2 uses
  %.pre76.i.i = load ptr, ptr %i.fb, align 8, !tbaa !74
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %.lr.ph.i74.i
  %4 = phi ptr [ %.pre76.i.i, %.lr.ph.i74.i ], [ %5, %bb.ao ] ; 4 uses
  %indvars.iv.i75.i = phi i64 [ %i.eo, %.lr.ph.i74.i ], [ %indvars.iv.next.i76.i, %bb.ao ]
  %indvars.iv.next.i76.i = add nsw i64 %indvars.iv.i75.i, -1 ; 3 uses
  %i.fc = getelementptr inbounds [16 x i8], ptr %4, i64 %indvars.iv.next.i76.i ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !60
  %i.ff = icmp sgt i32 %i.fe, 5
  br i1 %i.ff, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !58 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !58
  %i.fi = icmp eq i8 %i.fh, 6
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !58  ; 2 uses
  br i1 %i.fi, label %_ZL12isobjclearedP8GCObject.exit.thread.i.i, label %_ZL12isobjclearedP8GCObject.exit.i.i

_ZL12isobjclearedP8GCObject.exit.thread.i.i:      ; preds = %bb.am
  %i.fl = and i8 %i.fk, -8
  %i.fm = or disjoint i8 %i.fl, 4
  store i8 %i.fm, ptr %i.fj, align 1, !tbaa !58
  %.pre.i.i = load ptr, ptr %i.fb, align 8, !tbaa !74
  br label %bb.ao

_ZL12isobjclearedP8GCObject.exit.i.i:             ; preds = %bb.am
  %i.fn = and i8 %i.fk, 3
  %.not50.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not50.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZL12isobjclearedP8GCObject.exit.i.i
  store i32 0, ptr %i.fd, align 4, !tbaa !60
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZL12isobjclearedP8GCObject.exit.i.i, %_ZL12isobjclearedP8GCObject.exit.thread.i.i, %bb.al
  %5 = phi ptr [ %.pre.i.i, %_ZL12isobjclearedP8GCObject.exit.thread.i.i ], [ %4, %bb.an ], [ %4, %_ZL12isobjclearedP8GCObject.exit.i.i ], [ %4, %bb.al ]
  %.not44.i.i = icmp eq i64 %indvars.iv.next.i76.i, 0
  br i1 %.not44.i.i, label %._crit_edge.i.i, label %bb.al, !llvm.loop !127

._crit_edge.i.i:                                  ; preds = %bb.ao, %bb.ak
  %i.fo = getelementptr inbounds nuw i8, ptr %.04267.i.i, i64 6 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 2, !tbaa !73
  %i.fq = zext nneg i8 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %.04267.i.i, i64 32
  %notmask.i.i = shl nsw i32 -1, %i.fq
  %i.fs = xor i32 %notmask.i.i, -1
  %i.ft = zext nneg i32 %i.fs to i64
  br label %bb.ap

bb.ap:                                            ; preds = %_ZL11removeentryP7LuaNode.exit.i.i, %._crit_edge.i.i
  %indvars.iv73.i.i = phi i64 [ %i.ft, %._crit_edge.i.i ], [ %indvars.iv.next74.i.i, %_ZL11removeentryP7LuaNode.exit.i.i ] ; 3 uses
  %.065.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %.1.i.i, %_ZL11removeentryP7LuaNode.exit.i.i ] ; 4 uses
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !72
  %i.fv = getelementptr inbounds [32 x i8], ptr %i.fu, i64 %indvars.iv73.i.i ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12 ; 4 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !77 ; 3 uses
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %_ZL11removeentryP7LuaNode.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 28 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 4            ; 2 uses
  %i.gb = and i32 %i.ga, 14
  %i.gc = icmp samesign ugt i32 %i.gb, 5
  br i1 %i.gc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !58 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !58
  %i.gg = icmp eq i8 %i.gf, 6
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !58  ; 2 uses
  br i1 %i.gg, label %_ZL12isobjclearedP8GCObject.exit52.thread.i.i, label %_ZL12isobjclearedP8GCObject.exit52.i.i

_ZL12isobjclearedP8GCObject.exit52.thread.i.i:    ; preds = %bb.ar
  %i.gj = and i8 %i.gi, -8
  %i.gk = or disjoint i8 %i.gj, 4
  store i8 %i.gk, ptr %i.gh, align 1, !tbaa !58
  %.pre.i.i.a = load i32, ptr %i.fw, align 4, !tbaa !77
  br label %bb.as

_ZL12isobjclearedP8GCObject.exit52.i.i:           ; preds = %bb.ar
  %i.gl = and i8 %i.gi, 3
  %.not48.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not48.i.i, label %bb.as, label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZL12isobjclearedP8GCObject.exit52.i.i
  store i32 0, ptr %i.fw, align 4, !tbaa !77
  br label %bb.av

bb.as:                                            ; preds = %_ZL12isobjclearedP8GCObject.exit52.i.i, %_ZL12isobjclearedP8GCObject.exit52.thread.i.i, %bb.aq
  %i.gm = phi i32 [ %.pre.i.i.a, %_ZL12isobjclearedP8GCObject.exit52.thread.i.i ], [ %i.fx, %_ZL12isobjclearedP8GCObject.exit52.i.i ], [ %i.fx, %bb.aq ]
  %i.gn = icmp sgt i32 %i.gm, 5
  br i1 %i.gn, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.go = load ptr, ptr %i.fv, align 8, !tbaa !58 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !58
  %i.gq = icmp eq i8 %i.gp, 6
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 1 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !58  ; 2 uses
  br i1 %i.gq, label %_ZL12isobjclearedP8GCObject.exit54.thread.i.i, label %_ZL12isobjclearedP8GCObject.exit54.i.i

_ZL12isobjclearedP8GCObject.exit54.thread.i.i:    ; preds = %bb.at
  %i.gt = and i8 %i.gs, -8
  %i.gu = or disjoint i8 %i.gt, 4
  store i8 %i.gu, ptr %i.gr, align 1, !tbaa !58
  br label %bb.aw

_ZL12isobjclearedP8GCObject.exit54.i.i:           ; preds = %bb.at
  %i.gv = and i8 %i.gs, 3
  %.not49.i.i = icmp eq i8 %i.gv, 0
  br i1 %.not49.i.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZL12isobjclearedP8GCObject.exit54.i.i
  %.pre76.i.i.a = load i32, ptr %i.fz, align 4    ; 2 uses
  %.pre77.i.i = and i32 %.pre76.i.i.a, 14
  store i32 0, ptr %i.fw, align 4, !tbaa !77
  %i.gw = icmp samesign ugt i32 %.pre77.i.i, 5
  br i1 %i.gw, label %bb.av, label %_ZL11removeentryP7LuaNode.exit.i.i

bb.av:                                            ; preds = %bb.au, %.thread.i.i
  %i.gx = phi i32 [ %i.ga, %.thread.i.i ], [ %.pre76.i.i.a, %bb.au ]
  %i.gy = and i32 %i.gx, -16
  %i.gz = or disjoint i32 %i.gy, 14
  store i32 %i.gz, ptr %i.fz, align 4
  br label %_ZL11removeentryP7LuaNode.exit.i.i

bb.aw:                                            ; preds = %_ZL12isobjclearedP8GCObject.exit54.i.i, %_ZL12isobjclearedP8GCObject.exit54.thread.i.i, %bb.as
  %i.ha = add nsw i32 %.065.i.i, 1
  br label %_ZL11removeentryP7LuaNode.exit.i.i

_ZL11removeentryP7LuaNode.exit.i.i:               ; preds = %bb.aw, %bb.av, %bb.au, %bb.ap
  %.1.i.i = phi i32 [ %.065.i.i, %bb.ap ], [ %i.ha, %bb.aw ], [ %.065.i.i, %bb.au ], [ %.065.i.i, %bb.av ] ; 3 uses
  %indvars.iv.next74.i.i = add nsw i64 %indvars.iv73.i.i, -1
  %i.hb = icmp eq i64 %indvars.iv73.i.i, 0
  br i1 %i.hb, label %bb.ax, label %bb.ap, !llvm.loop !128

bb.ax:                                            ; preds = %_ZL11removeentryP7LuaNode.exit.i.i
  %i.hc = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.hd = getelementptr i8, ptr %.04267.i.i, i64 16
  %.042.val.i.i = load ptr, ptr %i.hd, align 8, !tbaa !78 ; 3 uses
  %i.he = icmp eq ptr %.042.val.i.i, null
  br i1 %i.he, label %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hf = getelementptr inbounds nuw i8, ptr %.042.val.i.i, i64 3
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !79
  %i.hh = and i8 %i.hg, 4
  %.not.i.i.i = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i, label %bb.az, label %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i

bb.az:                                            ; preds = %bb.ay
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 1048
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !80
  %i.hk = call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %.042.val.i.i, i32 noundef 2, ptr noundef %i.hj) ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not10.i.i.i, label %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !60
  %i.hn = icmp eq i32 %i.hm, 6
  br i1 %i.hn, label %bb.bb, label %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !58
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.hp, i32 noundef 115) #10
  %.not47.i.i = icmp eq ptr %i.hq, null
  br i1 %.not47.i.i, label %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hr = load i8, ptr %i.fo, align 2, !tbaa !73
  %i.hs = zext nneg i8 %i.hr to i32
  %i.ht = shl i32 3, %i.hs
  %i.hu = sdiv i32 %i.ht, 8
  %i.hv = icmp slt i32 %.1.i.i, %i.hu
  br i1 %i.hv, label %bb.bd, label %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %.04267.i.i, ptr %3, align 8, !tbaa !82
  store i32 %.1.i.i, ptr %i.ej, align 8, !tbaa !83
  %i.hw = call noundef i32 @_Z20luaD_rawrunprotectedP9lua_StatePFvS0_PvES1_(ptr noundef nonnull %0, ptr noundef nonnull @_ZZL20tableresizeprotectedP9lua_StateP8LuaTableiEN11CallContext3runES0_Pv, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i

_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax
  %i.hx = getelementptr inbounds nuw i8, ptr %.04267.i.i, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !84 ; 2 uses
  %.not.i77.i = icmp eq ptr %i.hy, null
  br i1 %.not.i77.i, label %_ZL10cleartableP9lua_StateP8GCObject.exit.i, label %bb.ai, !llvm.loop !129

_ZL10cleartableP9lua_StateP8GCObject.exit.i:      ; preds = %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i, %.loopexit.i
  %.040.lcssa.i.i = phi i64 [ 0, %.loopexit.i ], [ %.141.i.i, %_ZL12gettablemodeP12global_StateP8LuaTable.exit.thread.i.i ]
  store ptr null, ptr %i.bn, align 8, !tbaa !61
  %i.hz = load ptr, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 768 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 792
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !58 ; 2 uses
  %.not15.i78.i = icmp eq ptr %i.ic, %i.ia
  br i1 %.not15.i78.i, label %_ZL6atomicP9lua_State.exit, label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %_ZL10cleartableP9lua_StateP8GCObject.exit.i, %bb.bg
  %.017.i.i = phi ptr [ %.1.i81.i, %bb.bg ], [ %i.ic, %_ZL10cleartableP9lua_StateP8GCObject.exit.i ] ; 5 uses
  %.01316.i.i = phi i64 [ %i.id, %bb.bg ], [ 0, %_ZL10cleartableP9lua_StateP8GCObject.exit.i ]
  %i.id = add i64 %.01316.i.i, 40                 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 3 ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !85
  %.not14.i80.i = icmp eq i8 %i.if, 0
  br i1 %.not14.i80.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i79.i
  store i8 0, ptr %i.ie, align 1, !tbaa !85
  %i.ig = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !58
  br label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i79.i
  %i.ii = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !58
  %i.ik = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !58
  %i.im = and i8 %i.il, 3
  %i.in = icmp ne i8 %i.im, 0
  call void @_Z15luaF_closeupvalP9lua_StateP5UpValb(ptr noundef %0, ptr noundef nonnull %.017.i.i, i1 noundef zeroext %i.in)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.1.i81.i = phi ptr [ %i.ih, %bb.be ], [ %i.ij, %bb.bf ] ; 2 uses
  %.not.i82.i = icmp eq ptr %.1.i81.i, %i.ia
  br i1 %.not.i82.i, label %_ZL6atomicP9lua_State.exit, label %.lr.ph.i79.i, !llvm.loop !130

_ZL6atomicP9lua_State.exit:                       ; preds = %bb.bg, %_ZL10cleartableP9lua_StateP8GCObject.exit.i
end_hunk_0
begin_hunk_1_@_ZL7freeobjP9lua_StateP8GCObjectP8lua_Page:bb.a
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  tail call void @_Z14luaF_freeupvalP9lua_StateP5UpValP8lua_Page(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  tail call void @_Z9luaH_freeP9lua_StateP8LuaTableP8lua_Page(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  tail call void @_Z15luaE_freethreadP9lua_StateS0_P8lua_Page(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  tail call void @_Z9luaS_freeP9lua_StateP7TStringP8lua_Page(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  tail call void @_Z14luaU_freeudataP9lua_StateP5UdataP8lua_Page(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  tail call void @_Z17luaVec_freevectorP9lua_StateP10LuauVectorP8lua_Page(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  tail call void @_Z15luaB_freebufferP9lua_StateP10LuauBufferP8lua_Page(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  tail call void @_Z14luaR_freeclassP9lua_StateP9LuauClassP8lua_Page(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void @_Z15luaR_freeobjectP9lua_StateP10LuauObjectP8lua_Page(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare hidden void @_Z14luaF_freeprotoP9lua_StateP5ProtoP8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z16luaF_freeclosureP9lua_StateP7ClosureP8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z14luaF_freeupvalP9lua_StateP5UpValP8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z9luaH_freeP9lua_StateP8LuaTableP8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z15luaE_freethreadP9lua_StateS0_P8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z9luaS_freeP9lua_StateP7TStringP8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z14luaU_freeudataP9lua_StateP5UdataP8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z17luaVec_freevectorP9lua_StateP10LuauVectorP8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z15luaB_freebufferP9lua_StateP10LuauBufferP8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z14luaR_freeclassP9lua_StateP9LuauClassP8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z15luaR_freeobjectP9lua_StateP10LuauObjectP8lua_Page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -137438953344, 137438953537) i64 @_ZL13propagatemarkP12global_State(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.CallContext, align 1        ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 66 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !58
  %i.e = or i8 %i.d, 4
  store i8 %i.e, ptr %i.c, align 1, !tbaa !58
  %i.f = load i8, ptr %i.b, align 8, !tbaa !58
  switch i8 %i.f, label %_ZL14traverseobjectP12global_StateP10LuauObject.exit [
    i8 7, label %bb.b
    i8 8, label %bb.al
    i8 10, label %bb.bf
    i8 15, label %bb.bk
    i8 12, label %bb.co
    i8 13, label %bb.de
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  store ptr %i.h, ptr %i.a, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.thread69.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !58
  %i.m = and i8 %i.l, 3
  %.not53.i = icmp eq i8 %i.m, 0
  br i1 %.not53.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  %.val.pr.pre.i = load ptr, ptr %i.i, align 8, !tbaa !78 ; 2 uses
  %i.n = icmp eq ptr %.val.pr.pre.i, null
  br i1 %i.n, label %.thread69.i, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %.val.pr103.i = phi ptr [ %.val.pr.pre.i, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.pr103.i, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !79
  %i.q = and i8 %i.p, 4
  %.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %.thread69.i

bb.e:                                             ; preds = %.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.t = tail call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %.val.pr103.i, i32 noundef 2, ptr noundef %i.s) ; 3 uses
  %.not10.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i, label %.thread69.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !60
  %i.w = icmp eq i32 %i.v, 6
  br i1 %i.w, label %bb.g, label %.thread69.i

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.y, i32 noundef 107) #10
  %i.aa = icmp ne ptr %i.z, null                  ; 4 uses
  %i.ab = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.y, i32 noundef 118) #10
  %i.ac = icmp ne ptr %i.ab, null                 ; 3 uses
  %or.cond.i = or i1 %i.aa, %i.ac
  br i1 %or.cond.i, label %bb.h, label %.thread69.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !84
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !61
  %or.cond3.i = and i1 %i.aa, %i.ac
  br i1 %or.cond3.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.ac, label %.loopexit.thread.i, label %.thread69.i

.thread69.i:                                      ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %.thread.i, %bb.d, %bb.b
  %.048.shrunk6774.i = phi i1 [ %i.aa, %bb.i ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %.thread.i ], [ false, %bb.b ], [ false, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !71 ; 2 uses
  %.not5576.i = icmp eq i32 %i.ag, 0
  br i1 %.not5576.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread69.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ai = sext i32 %i.ag to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !74
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %indvars.iv.next.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !60
  %i.an = icmp sgt i32 %i.am, 5
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !58 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !58
  %i.ar = and i8 %i.aq, 3
  %.not56.i = icmp eq i8 %i.ar, 0
  br i1 %.not56.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef %0, ptr noundef nonnull %i.ao)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.not55.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not55.i, label %.loopexit.i, label %bb.j, !llvm.loop !147

.loopexit.i:                                      ; preds = %bb.m, %.thread69.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.at = load i8, ptr %i.as, align 2, !tbaa !73
  %i.au = zext nneg i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.au
  %i.aw = xor i32 %notmask.i, -1
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  br i1 %.048.shrunk6774.i, label %.split.us.split.i, label %.split.split.i

.loopexit.thread.i:                               ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !73
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %notmask109.i = shl nsw i32 -1, %i.ba
  %i.bc = xor i32 %notmask109.i, -1
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  br i1 %i.aa, label %.split.us.split.us.preheader.i, label %.split.split.us.i

.split.us.split.us.preheader.i:                   ; preds = %.loopexit.thread.i
  %.pre99.i = load ptr, ptr %i.bb, align 8, !tbaa !72
  br label %.split.us.split.us.i

.split.us.split.us.i:                             ; preds = %_ZL11removeentryP7LuaNode.exit.us.us.i, %.split.us.split.us.preheader.i
  %2 = phi ptr [ %.pre99.i, %.split.us.split.us.preheader.i ], [ %3, %_ZL11removeentryP7LuaNode.exit.us.us.i ] ; 3 uses
  %indvars.iv94.i = phi i64 [ %i.bd, %.split.us.split.us.preheader.i ], [ %indvars.iv.next95.i, %_ZL11removeentryP7LuaNode.exit.us.us.i ] ; 3 uses
  %i.be = getelementptr inbounds [32 x i8], ptr %2, i64 %indvars.iv94.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !77
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.n, label %_ZL11removeentryP7LuaNode.exit.us.us.i

bb.n:                                             ; preds = %.split.us.split.us.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 28 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = and i32 %i.bj, 14
  %i.bl = icmp samesign ugt i32 %i.bk, 5
  br i1 %i.bl, label %bb.o, label %_ZL11removeentryP7LuaNode.exit.us.us.i

bb.o:                                             ; preds = %bb.n
  %i.bm = and i32 %i.bj, -16
  %i.bn = or disjoint i32 %i.bm, 14
  store i32 %i.bn, ptr %i.bi, align 4
  %.pre98.i = load ptr, ptr %i.bb, align 8, !tbaa !72
  br label %_ZL11removeentryP7LuaNode.exit.us.us.i

_ZL11removeentryP7LuaNode.exit.us.us.i:           ; preds = %bb.o, %bb.n, %.split.us.split.us.i
  %3 = phi ptr [ %2, %.split.us.split.us.i ], [ %.pre98.i, %bb.o ], [ %2, %bb.n ]
  %indvars.iv.next95.i = add nsw i64 %indvars.iv94.i, -1
  %i.bo = icmp eq i64 %indvars.iv94.i, 0
  br i1 %i.bo, label %.loopexit, label %.split.us.split.us.i, !llvm.loop !148

.split.us.split.i:                                ; preds = %.loopexit.i, %_ZL11removeentryP7LuaNode.exit.us.i
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %_ZL11removeentryP7LuaNode.exit.us.i ], [ %i.ax, %.loopexit.i ] ; 3 uses
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !72
  %i.bq = getelementptr inbounds [32 x i8], ptr %i.bp, i64 %indvars.iv91.i ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !77 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.split.us.split.i
  %i.bu = icmp sgt i32 %i.bs, 5
  br i1 %i.bu, label %bb.q, label %_ZL11removeentryP7LuaNode.exit.us.i

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !58 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !58
  %i.by = and i8 %i.bx, 3
  %.not59.us.i = icmp eq i8 %i.by, 0
  br i1 %.not59.us.i, label %_ZL11removeentryP7LuaNode.exit.us.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef %0, ptr noundef nonnull %i.bv)
  br label %_ZL11removeentryP7LuaNode.exit.us.i

bb.s:                                             ; preds = %.split.us.split.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 28 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = and i32 %i.ca, 14
  %i.cc = icmp samesign ugt i32 %i.cb, 5
  br i1 %i.cc, label %bb.t, label %_ZL11removeentryP7LuaNode.exit.us.i

bb.t:                                             ; preds = %bb.s
  %i.cd = and i32 %i.ca, -16
  %i.ce = or disjoint i32 %i.cd, 14
  store i32 %i.ce, ptr %i.bz, align 4
  br label %_ZL11removeentryP7LuaNode.exit.us.i

_ZL11removeentryP7LuaNode.exit.us.i:              ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %indvars.iv.next92.i = add nsw i64 %indvars.iv91.i, -1
  %i.cf = icmp eq i64 %indvars.iv91.i, 0
  br i1 %i.cf, label %.loopexit, label %.split.us.split.i, !llvm.loop !148

.split.split.us.i:                                ; preds = %.loopexit.thread.i, %_ZL11removeentryP7LuaNode.exit.us79.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %_ZL11removeentryP7LuaNode.exit.us79.i ], [ %i.bd, %.loopexit.thread.i ] ; 3 uses
  %i.cg = load ptr, ptr %i.bb, align 8, !tbaa !72
  %i.ch = getelementptr inbounds [32 x i8], ptr %i.cg, i64 %indvars.iv88.i ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !77
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 28 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4            ; 2 uses
  %i.cn = and i32 %i.cm, 14
  %i.co = icmp samesign ugt i32 %i.cn, 5          ; 2 uses
  br i1 %i.ck, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.split.split.us.i
  br i1 %i.co, label %bb.v, label %_ZL11removeentryP7LuaNode.exit.us79.i

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !58 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !58
  %i.ct = and i8 %i.cs, 3
  %.not58.us.i = icmp eq i8 %i.ct, 0
  br i1 %.not58.us.i, label %_ZL11removeentryP7LuaNode.exit.us79.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef %0, ptr noundef nonnull %i.cq)
  br label %_ZL11removeentryP7LuaNode.exit.us79.i

bb.x:                                             ; preds = %.split.split.us.i
  br i1 %i.co, label %bb.y, label %_ZL11removeentryP7LuaNode.exit.us79.i

bb.y:                                             ; preds = %bb.x
  %i.cu = and i32 %i.cm, -16
  %i.cv = or disjoint i32 %i.cu, 14
  store i32 %i.cv, ptr %i.cl, align 4
  br label %_ZL11removeentryP7LuaNode.exit.us79.i

_ZL11removeentryP7LuaNode.exit.us79.i:            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %indvars.iv.next89.i = add nsw i64 %indvars.iv88.i, -1
  %i.cw = icmp eq i64 %indvars.iv88.i, 0
  br i1 %i.cw, label %.loopexit, label %.split.split.us.i, !llvm.loop !148

.split.split.i:                                   ; preds = %.loopexit.i, %_ZL11removeentryP7LuaNode.exit.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %_ZL11removeentryP7LuaNode.exit.i ], [ %i.ax, %.loopexit.i ] ; 3 uses
  %i.cx = load ptr, ptr %i.av, align 8, !tbaa !72
  %i.cy = getelementptr inbounds [32 x i8], ptr %i.cx, i64 %indvars.iv85.i ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !77 ; 3 uses
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 28 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.de = and i32 %i.dd, 14
  %i.df = icmp samesign ugt i32 %i.de, 5          ; 2 uses
  br i1 %i.db, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.split.split.i
  br i1 %i.df, label %bb.aa, label %_ZL11removeentryP7LuaNode.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.dg = and i32 %i.dd, -16
  %i.dh = or disjoint i32 %i.dg, 14
  store i32 %i.dh, ptr %i.dc, align 4
  br label %_ZL11removeentryP7LuaNode.exit.i

bb.ab:                                            ; preds = %.split.split.i
  br i1 %i.df, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !58 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !58
  %i.dm = and i8 %i.dl, 3
  %.not58.i = icmp eq i8 %i.dm, 0
  br i1 %.not58.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef %0, ptr noundef nonnull %i.dj)
  %.pre.i = load i32, ptr %i.cz, align 4, !tbaa !77
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.dn = phi i32 [ %i.da, %bb.ab ], [ %i.da, %bb.ac ], [ %.pre.i, %bb.ad ]
  %i.do = icmp sgt i32 %i.dn, 5
  br i1 %i.do, label %bb.af, label %_ZL11removeentryP7LuaNode.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.dp = load ptr, ptr %i.cy, align 8, !tbaa !58 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !58
  %i.ds = and i8 %i.dr, 3
  %.not59.i = icmp eq i8 %i.ds, 0
  br i1 %.not59.i, label %_ZL11removeentryP7LuaNode.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef %0, ptr noundef nonnull %i.dp)
  br label %_ZL11removeentryP7LuaNode.exit.i

_ZL11removeentryP7LuaNode.exit.i:                 ; preds = %bb.ag, %bb.af, %bb.ae, %bb.aa, %bb.z
  %indvars.iv.next86.i = add nsw i64 %indvars.iv85.i, -1
  %i.dt = icmp eq i64 %indvars.iv85.i, 0
  br i1 %i.dt, label %_ZL13traversetableP12global_StateP8LuaTable.exit, label %.split.split.i, !llvm.loop !148

.loopexit:                                        ; preds = %_ZL11removeentryP7LuaNode.exit.us79.i, %_ZL11removeentryP7LuaNode.exit.us.us.i, %_ZL11removeentryP7LuaNode.exit.us.i, %bb.h
  %i.du = load i8, ptr %i.c, align 1, !tbaa !58
  %i.dv = and i8 %i.du, -5
  store i8 %i.dv, ptr %i.c, align 1, !tbaa !58
  br label %_ZL13traversetableP12global_StateP8LuaTable.exit

_ZL13traversetableP12global_StateP8LuaTable.exit: ; preds = %_ZL11removeentryP7LuaNode.exit.i, %.loopexit
  %i.dw = load i8, ptr @_ZN6DFFlag18LuauGcTableStepFixE, align 8, !tbaa !44, !range !45, !noundef !46
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !71
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 4
  %i.ec = add nsw i64 %i.eb, 48                   ; 2 uses
  br i1 %i.dx, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %_ZL13traversetableP12global_StateP8LuaTable.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !72
  %i.ef = icmp eq ptr %i.ee, @luaH_dummynode
  br i1 %i.ef, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !73
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = shl nuw i32 1, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 5
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.em = phi i64 [ %i.el, %bb.ai ], [ 0, %bb.ah ]
  %i.en = add nsw i64 %i.ec, %i.em
  br label %_ZL14traverseobjectP12global_StateP10LuauObject.exit

bb.ak:                                            ; preds = %_ZL13traversetableP12global_StateP8LuaTable.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ep = load i8, ptr %i.eo, align 2, !tbaa !73
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = shl nuw i32 1, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = shl nsw i64 %i.es, 5
  %i.eu = add nsw i64 %i.ec, %i.et
  br label %_ZL14traverseobjectP12global_StateP10LuauObject.exit

bb.al:                                            ; preds = %bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !94
end_hunk_1
