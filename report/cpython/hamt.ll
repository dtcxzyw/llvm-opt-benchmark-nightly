inline.NumInlined: 175
inline.NumDeleted: 39
begin_hunk_0_@hamt_node_bitmap_assoc:bb.a
  %i.dr = load i32, ptr %i.dl, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dr, -1
  br i1 %.not.i.i, label %bb.ai, label %hamt_node_new_bitmap_or_collision.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.dl, align 8, !tbaa !18
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.aj, label %hamt_node_new_bitmap_or_collision.exit

bb.aj:                                            ; preds = %bb.ai
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dl) #12, !inline_history !80
  br label %hamt_node_new_bitmap_or_collision.exit

hamt_node_new_bitmap_or_collision.exit:           ; preds = %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.du = icmp eq ptr %i.dq, null
  br i1 %i.du, label %_Py_NewRef.exit, label %bb.ak

bb.ak:                                            ; preds = %hamt_node_new_bitmap_or_collision.exit.thread218, %hamt_node_new_bitmap_or_collision.exit
  %.3.i220 = phi ptr [ %i.bm, %hamt_node_new_bitmap_or_collision.exit.thread218 ], [ %i.dq, %hamt_node_new_bitmap_or_collision.exit ] ; 4 uses
  %i.dv = tail call fastcc ptr @hamt_node_bitmap_clone(ptr noundef nonnull %0) ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.dx = load i32, ptr %.3.i220, align 8, !tbaa !18 ; 2 uses
  %.not.i180 = icmp sgt i32 %i.dx, -1
  br i1 %.not.i180, label %bb.am, label %_Py_NewRef.exit

bb.am:                                            ; preds = %bb.al
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %.3.i220, align 8, !tbaa !18
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.an, label %_Py_NewRef.exit

bb.an:                                            ; preds = %bb.am
  tail call void @_Py_Dealloc(ptr noundef nonnull %.3.i220) #12
  br label %_Py_NewRef.exit

bb.ao:                                            ; preds = %bb.ak
  %i.ea = getelementptr i8, ptr %i.dv, i64 32     ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %i.ea, i64 %i.n ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !45 ; 3 uses
  store ptr null, ptr %i.eb, align 8, !tbaa !45
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !18 ; 2 uses
  %.not.i178 = icmp sgt i32 %i.ed, -1
  br i1 %.not.i178, label %bb.ap, label %Py_DECREF.exit179

bb.ap:                                            ; preds = %bb.ao
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !18
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.aq, label %Py_DECREF.exit179

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ec) #12
  br label %Py_DECREF.exit179

Py_DECREF.exit179:                                ; preds = %bb.ao, %bb.ap, %bb.aq
  %i.eg = getelementptr [8 x i8], ptr %i.ea, i64 %i.q ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !45 ; 3 uses
  store ptr %.3.i220, ptr %i.eg, align 8, !tbaa !45
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp sgt i32 %i.ei, -1
  br i1 %.not.i, label %bb.ar, label %Py_DECREF.exit

bb.ar:                                            ; preds = %Py_DECREF.exit179
  %i.ej = add nsw i32 %i.ei, -1                   ; 2 uses
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !18
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.as, label %Py_DECREF.exit

bb.as:                                            ; preds = %bb.ar
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.eh) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit179, %bb.ar, %bb.as
  store i32 1, ptr %5, align 4, !tbaa !7
  br label %_Py_NewRef.exit

bb.at:                                            ; preds = %bb.a
  %i.el = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.f) ; 3 uses
  %i.em = icmp samesign ugt i32 %i.el, 15
  br i1 %i.em, label %bb.au, label %bb.bj

bb.au:                                            ; preds = %bb.at
  %i.en = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyHamt_ArrayNode_Type) #12 ; 9 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %_Py_NewRef.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.au
  %i.ep = add nuw nsw i32 %i.el, 1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr i8, ptr %i.en, i64 16     ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.er, i8 0, i64 256, i1 false), !tbaa !22
  %i.es = getelementptr i8, ptr %i.en, i64 272
  store i64 %i.eq, ptr %i.es, align 8, !tbaa !24
  %i.et = getelementptr i8, ptr %i.en, i64 -16    ; 2 uses
  %i.eu = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !26 ; 7 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 7408
  %i.ex = getelementptr i8, ptr %i.ev, i64 7416   ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !28 ; 2 uses
  %i.ez = inttoptr i64 %i.ey to ptr               ; 2 uses
  %i.fa = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !30
  %i.fc = and i64 %i.fb, 3
  %i.fd = or i64 %i.fc, %i.fa
  store i64 %i.fd, ptr %i.ez, align 8, !tbaa !30
  %i.fe = getelementptr i8, ptr %i.en, i64 -8     ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !28
  %i.fg = and i64 %i.ff, 3
  %i.fh = or i64 %i.fg, %i.ey
  store i64 %i.fh, ptr %i.fe, align 8, !tbaa !28
  %i.fi = getelementptr i8, ptr %i.ev, i64 7672
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !31
  %i.fk = xor i32 %i.fj, 1
  %i.fl = sext i32 %i.fk to i64
  %i.fm = ptrtoint ptr %i.ew to i64
  %i.fn = or i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.et, align 8, !tbaa !30
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !28
  %i.fo = getelementptr i8, ptr %i.ev, i64 7428   ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !35
  %i.fq = add i32 %i.fp, 1                        ; 2 uses
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !35
  %i.fr = getelementptr i8, ptr %i.ev, i64 7656   ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !36
  %i.ft = add i64 %i.fs, 1
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !36
  %i.fu = getelementptr i8, ptr %i.ev, i64 7424
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !37
  %i.fw = icmp sgt i32 %i.fq, %i.fv
  br i1 %i.fw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.preheader.i
  %i.fx = getelementptr i8, ptr %i.ev, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.fx) #12
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.preheader.i
  %i.fy = add i32 %1, 5                           ; 2 uses
  %i.fz = tail call fastcc ptr @hamt_node_assoc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119496), i32 noundef %i.fy, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 2 uses
  %i.ga = zext nneg i32 %i.c to i64
  %i.gb = getelementptr [8 x i8], ptr %i.er, i64 %i.ga
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !22
  %i.gc = icmp eq ptr %i.fz, null
  br i1 %i.gc, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.aw
  %i.gd = getelementptr i8, ptr %0, i64 32
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %bb.bd
  %.0155248 = phi i64 [ 0, %.preheader ], [ %.1156, %bb.bd ] ; 3 uses
  %.0157246 = phi i64 [ 0, %.preheader ], [ %i.he, %bb.bd ] ; 4 uses
  %i.ge = load i32, ptr %i.e, align 8, !tbaa !41
  %i.gf = trunc nuw nsw i64 %.0157246 to i32
  %i.gg = shl nuw i32 1, %i.gf
  %i.gh = and i32 %i.ge, %i.gg
  %.not176 = icmp eq i32 %i.gh, 0
  br i1 %.not176, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gi = getelementptr [8 x i8], ptr %i.gd, i64 %.0155248 ; 4 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !45 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.gl = getelementptr i8, ptr %i.gi, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !45 ; 3 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !18 ; 2 uses
  %i.go = icmp ugt i32 %i.gn, -1073741825
  br i1 %i.go, label %_Py_NewRef.exit195, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gp = add nuw i32 %i.gn, 1
  store i32 %i.gp, ptr %i.gm, align 8, !tbaa !18
  br label %_Py_NewRef.exit195

_Py_NewRef.exit195:                               ; preds = %bb.az, %bb.ba
  %i.gq = getelementptr [8 x i8], ptr %i.er, i64 %.0157246
  store ptr %i.gm, ptr %i.gq, align 8, !tbaa !22
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  %i.gr = tail call i64 @PyObject_Hash(ptr noundef nonnull %i.gj) #12 ; 3 uses
  %i.gs = icmp eq i64 %i.gr, -1
  br i1 %i.gs, label %.thread, label %hamt_hash.exit

hamt_hash.exit:                                   ; preds = %bb.bb
  %i.gt = lshr i64 %i.gr, 32
  %i.gu = xor i64 %i.gt, %i.gr
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = tail call i32 @llvm.umin.i32(i32 %i.gv, i32 -2)
  %i.gx = load ptr, ptr %i.gi, align 8, !tbaa !45
  %i.gy = getelementptr i8, ptr %i.gi, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !45
  %i.ha = tail call fastcc ptr @hamt_node_assoc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119496), i32 noundef %i.fy, i32 noundef %i.gw, ptr noundef %i.gx, ptr noundef %i.gz, ptr noundef %5)
  %.fr = freeze ptr %i.ha                         ; 2 uses
  %i.hb = getelementptr [8 x i8], ptr %i.er, i64 %.0157246
  store ptr %.fr, ptr %i.hb, align 8, !tbaa !22
  %i.hc = icmp eq ptr %.fr, null
  br i1 %i.hc, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %hamt_hash.exit, %_Py_NewRef.exit195
  %i.hd = add i64 %.0155248, 2
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ax, %bb.bc
  %.1156 = phi i64 [ %i.hd, %bb.bc ], [ %.0155248, %bb.ax ]
  %i.he = add nuw nsw i64 %.0157246, 1            ; 2 uses
  %exitcond254.not = icmp eq i64 %i.he, 32
  br i1 %exitcond254.not, label %.thread, label %bb.ax, !llvm.loop !81

.thread:                                          ; preds = %hamt_hash.exit, %bb.bb, %bb.bd, %bb.aw
  %.0158.ph = phi ptr [ null, %bb.aw ], [ null, %bb.bb ], [ null, %hamt_hash.exit ], [ %i.en, %bb.bd ] ; 2 uses
  %i.hf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119496), align 8, !tbaa !18 ; 2 uses
  %.not.i.i197 = icmp sgt i32 %i.hf, -1
  br i1 %.not.i.i197, label %bb.be, label %Py_XDECREF.exit

bb.be:                                            ; preds = %.thread
  %i.hg = add nsw i32 %i.hf, -1                   ; 2 uses
  store i32 %i.hg, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119496), align 8, !tbaa !18
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.bf, label %Py_XDECREF.exit

bb.bf:                                            ; preds = %bb.be
  tail call void @_Py_Dealloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119496)) #12
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.thread, %bb.be, %bb.bf
  %.not240 = icmp eq ptr %.0158.ph, null
  br i1 %.not240, label %bb.bg, label %_Py_NewRef.exit

bb.bg:                                            ; preds = %Py_XDECREF.exit
  %i.hi = load i32, ptr %i.en, align 8, !tbaa !18 ; 2 uses
  %.not.i.i200 = icmp sgt i32 %i.hi, -1
  br i1 %.not.i.i200, label %bb.bh, label %_Py_NewRef.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hj = add nsw i32 %i.hi, -1                   ; 2 uses
  store i32 %i.hj, ptr %i.en, align 8, !tbaa !18
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.bi, label %_Py_NewRef.exit

bb.bi:                                            ; preds = %bb.bh
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.en) #12
  br label %_Py_NewRef.exit

bb.bj:                                            ; preds = %bb.at
  %i.hl = shl nuw nsw i32 %i.i, 1                 ; 3 uses
  store i32 1, ptr %5, align 4, !tbaa !7
  %i.hm = shl nuw nsw i32 %i.el, 1
  %i.hn = add nuw nsw i32 %i.hm, 2
  %i.ho = zext nneg i32 %i.hn to i64              ; 3 uses
  %i.hp = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @_PyHamt_BitmapNode_Type, i64 noundef %i.ho) #12 ; 7 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %_Py_NewRef.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hr = getelementptr i8, ptr %i.hp, i64 16
  store i64 %i.ho, ptr %i.hr, align 8, !tbaa !44
  %i.hs = getelementptr i8, ptr %i.hp, i64 32     ; 5 uses
  %i.ht = shl nuw nsw i64 %i.ho, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hs, i8 0, i64 %i.ht, i1 false), !tbaa !45
  %i.hu = getelementptr i8, ptr %i.hp, i64 24     ; 2 uses
  store i32 0, ptr %i.hu, align 8, !tbaa !41
  %i.hv = getelementptr i8, ptr %i.hp, i64 -16    ; 2 uses
  %i.hw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !26 ; 7 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 7408
  %i.hz = getelementptr i8, ptr %i.hx, i64 7416   ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !28 ; 2 uses
  %i.ib = inttoptr i64 %i.ia to ptr               ; 2 uses
  %i.ic = ptrtoint ptr %i.hv to i64               ; 2 uses
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !30
  %i.ie = and i64 %i.id, 3
  %i.if = or i64 %i.ie, %i.ic
  store i64 %i.if, ptr %i.ib, align 8, !tbaa !30
  %i.ig = getelementptr i8, ptr %i.hp, i64 -8     ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !28
  %i.ii = and i64 %i.ih, 3
  %i.ij = or i64 %i.ii, %i.ia
  store i64 %i.ij, ptr %i.ig, align 8, !tbaa !28
  %i.ik = getelementptr i8, ptr %i.hx, i64 7672
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !31
  %i.im = xor i32 %i.il, 1
  %i.in = sext i32 %i.im to i64
  %i.io = ptrtoint ptr %i.hy to i64
  %i.ip = or i64 %i.in, %i.io
  store i64 %i.ip, ptr %i.hv, align 8, !tbaa !30
  store i64 %i.ic, ptr %i.hz, align 8, !tbaa !28
  %i.iq = getelementptr i8, ptr %i.hx, i64 7428   ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !35
  %i.is = add i32 %i.ir, 1                        ; 2 uses
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !35
  %i.it = getelementptr i8, ptr %i.hx, i64 7656   ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !36
  %i.iv = add i64 %i.iu, 1
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !36
  %i.iw = getelementptr i8, ptr %i.hx, i64 7424
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !37
  %i.iy = icmp sgt i32 %i.is, %i.ix
  br i1 %i.iy, label %bb.bl, label %hamt_node_bitmap_new.exit

bb.bl:                                            ; preds = %bb.bk
  %i.iz = getelementptr i8, ptr %i.hx, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.iz) #12
  br label %hamt_node_bitmap_new.exit

hamt_node_bitmap_new.exit:                        ; preds = %bb.bk, %bb.bl
  %.not249 = icmp eq i32 %i.h, 0
  br i1 %.not249, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hamt_node_bitmap_new.exit
  %i.ja = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.hl to i64
  br label %bb.bm

bb.bm:                                            ; preds = %_Py_XNewRef.exit.1, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_Py_XNewRef.exit.1 ] ; 4 uses
  %i.jb = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !45 ; 4 uses
  %.not.i.i203 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i203, label %_Py_XNewRef.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !18 ; 2 uses
  %i.je = icmp ugt i32 %i.jd, -1073741825
  br i1 %i.je, label %_Py_XNewRef.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jf = add nuw i32 %i.jd, 1
  store i32 %i.jf, ptr %i.jc, align 8, !tbaa !18
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %bb.bm, %bb.bn, %bb.bo
  %i.jg = getelementptr [8 x i8], ptr %i.hs, i64 %indvars.iv
  store ptr %i.jc, ptr %i.jg, align 8, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.jh = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.next
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !45 ; 4 uses
  %.not.i.i203.1 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i203.1, label %_Py_XNewRef.exit.1, label %bb.bp

bb.bp:                                            ; preds = %_Py_XNewRef.exit
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !18 ; 2 uses
  %i.jk = icmp ugt i32 %i.jj, -1073741825
  br i1 %i.jk, label %_Py_XNewRef.exit.1, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jl = add nuw i32 %i.jj, 1
  store i32 %i.jl, ptr %i.ji, align 8, !tbaa !18
  br label %_Py_XNewRef.exit.1

_Py_XNewRef.exit.1:                               ; preds = %bb.bq, %bb.bp, %_Py_XNewRef.exit
  %i.jm = getelementptr [8 x i8], ptr %i.hs, i64 %indvars.iv.next
  store ptr %i.ji, ptr %i.jm, align 8, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.bm, !llvm.loop !82

._crit_edge:                                      ; preds = %_Py_XNewRef.exit.1, %hamt_node_bitmap_new.exit
  %i.jn = load i32, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.jo = icmp ugt i32 %i.jn, -1073741825
  br i1 %i.jo, label %_Py_NewRef.exit204, label %bb.br

bb.br:                                            ; preds = %._crit_edge
  %i.jp = add nuw i32 %i.jn, 1
  store i32 %i.jp, ptr %3, align 8, !tbaa !18
  br label %_Py_NewRef.exit204

_Py_NewRef.exit204:                               ; preds = %._crit_edge, %bb.br
  %i.jq = zext nneg i32 %i.hl to i64
  %i.jr = getelementptr [8 x i8], ptr %i.hs, i64 %i.jq ; 2 uses
  store ptr %3, ptr %i.jr, align 8, !tbaa !45
  %i.js = load i32, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.jt = icmp ugt i32 %i.js, -1073741825
  br i1 %i.jt, label %_Py_NewRef.exit205, label %bb.bs

bb.bs:                                            ; preds = %_Py_NewRef.exit204
  %i.ju = add nuw i32 %i.js, 1
  store i32 %i.ju, ptr %4, align 8, !tbaa !18
  br label %_Py_NewRef.exit205

_Py_NewRef.exit205:                               ; preds = %_Py_NewRef.exit204, %bb.bs
  %i.jv = getelementptr i8, ptr %i.jr, i64 8
  store ptr %4, ptr %i.jv, align 8, !tbaa !45
  %i.jw = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val242 = load i64, ptr %i.jw, align 8, !tbaa !44 ; 2 uses
  %i.jx = trunc i64 %.val242 to i32
  %i.jy = icmp ult i32 %i.hl, %i.jx
  br i1 %i.jy, label %.lr.ph244, label %._crit_edge245

.lr.ph244:                                        ; preds = %_Py_NewRef.exit205
  %i.jz = getelementptr i8, ptr %0, i64 32
  %i.ka = shl nuw nsw i32 %i.i, 1
  %i.kb = zext nneg i32 %i.ka to i64
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph244, %_Py_XNewRef.exit207
  %.val255 = phi i64 [ %.val242, %.lr.ph244 ], [ %.val, %_Py_XNewRef.exit207 ] ; 2 uses
end_hunk_0
