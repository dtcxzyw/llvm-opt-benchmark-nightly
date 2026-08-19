inline.NumInlined: 353
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6Unpack9AddVMCodeEjPhj:bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #28
  %.pre17.i = load i64, ptr %i.p, align 8, !tbaa !174
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = phi i64 [ %i.aa, %bb.g ], [ %.pre17.i, %bb.h ] ; 2 uses
  %i.ag = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.g, label %_ZN6Unpack13InitFilters30Eb.exit, !llvm.loop !179

_ZN6Unpack13InitFilters30Eb.exit:                 ; preds = %bb.i, %._crit_edge.i
  store i64 0, ptr %i.p, align 8, !tbaa !174
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.ai = add i32 %i.i, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 59664
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !173
  br label %bb.l

bb.l:                                             ; preds = %_ZN6Unpack13InitFilters30Eb.exit, %bb.j, %bb.k
  %.089 = phi i32 [ 0, %_ZN6Unpack13InitFilters30Eb.exit ], [ %i.ai, %bb.j ], [ %i.ak, %bb.k ] ; 4 uses
  %i.al = zext i32 %.089 to i64                   ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 59568 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 59576 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !174 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.al
  br i1 %i.ap, label %.critedge112, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 59632 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 59640 ; 6 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !172
  %i.at = icmp ult i64 %i.as, %i.al
  br i1 %i.at, label %.critedge112, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 59664
  store i32 %.089, ptr %i.au, align 8, !tbaa !173
  %i.av = icmp eq i64 %i.ao, %i.al                ; 2 uses
  %i.aw = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 20 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store i32 0, ptr %i.ay, align 8, !tbaa !252
  store i32 0, ptr %i.ax, align 8, !tbaa !261
  br i1 %i.av, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.az = icmp ugt i32 %.089, 8192
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdlPv(ptr noundef nonnull %i.aw) #28
  br label %.critedge112

bb.q:                                             ; preds = %bb.o
  %i.ba = add nuw nsw i64 %i.al, 1                ; 2 uses
  store i64 %i.ba, ptr %i.an, align 8, !tbaa !174
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 59584 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !262 ; 2 uses
  %.not128 = icmp ugt i64 %i.bc, %i.al
  br i1 %.not128, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 59592
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !263 ; 2 uses
  %i.bf = add i64 %i.be, -1
  %or.cond.i = icmp ult i64 %i.bf, %i.al
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.be)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i115 = load i64, ptr %i.bb, align 8, !tbaa !262
  %.pre10.i = load i64, ptr %i.an, align 8, !tbaa !174
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bg = phi i64 [ %.pre10.i, %bb.s ], [ %i.ba, %bb.r ]
  %i.bh = phi i64 [ %.pre.i115, %bb.s ], [ %i.bc, %bb.r ] ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add i64 %i.bh, 32
  %i.bk = add i64 %i.bj, %i.bi
  %..i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bk) ; 2 uses
  %i.bl = load ptr, ptr %i.am, align 8, !tbaa !175
  %i.bm = shl i64 %..i, 3
  %i.bn = tail call ptr @realloc(ptr noundef %i.bl, i64 noundef %i.bm) #30 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr %i.bn, ptr %i.am, align 8, !tbaa !175
  store i64 %..i, ptr %i.bb, align 8, !tbaa !262
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %i.bp = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i32 0, ptr %i.br, align 8, !tbaa !252
  store i32 0, ptr %i.bq, align 8, !tbaa !261
  %i.bs = load i64, ptr %i.an, align 8, !tbaa !174 ; 2 uses
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !175
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  store ptr %i.bp, ptr %i.bv, align 8, !tbaa !176
  %i.bw = trunc i64 %i.bs to i32
  %i.bx = add i32 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !264
  %i.bz = load i64, ptr %i.ar, align 8, !tbaa !172
  %i.ca = add i64 %i.bz, 1                        ; 5 uses
  store i64 %i.ca, ptr %i.ar, align 8, !tbaa !172
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 59648 ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !265 ; 2 uses
  %i.cd = icmp ugt i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.x, label %._ZN5ArrayIiE3AddEm.exit_crit_edge.i

._ZN5ArrayIiE3AddEm.exit_crit_edge.i:             ; preds = %bb.w
  %.pre1.i = load ptr, ptr %i.aq, align 8, !tbaa !266
  br label %_ZN5ArrayIiE4PushEi.exit

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 59656
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp ne i64 %i.cf, 0
  %i.cg = icmp ugt i64 %i.ca, %i.cf
  %or.cond.i.i = and i1 %.not.i.i, %i.cg
  br i1 %or.cond.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.cf)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i.i = load i64, ptr %i.cb, align 8, !tbaa !265
  %.pre10.i.i = load i64, ptr %i.ar, align 8, !tbaa !172
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ch = phi i64 [ %.pre10.i.i, %bb.y ], [ %i.ca, %bb.x ]
  %i.ci = phi i64 [ %.pre.i.i, %bb.y ], [ %i.cc, %bb.x ] ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add i64 %i.ci, 32
  %i.cl = add i64 %i.ck, %i.cj
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.cl) ; 2 uses
  %i.cm = load ptr, ptr %i.aq, align 8, !tbaa !266
  %i.cn = shl i64 %..i.i, 2
  %i.co = tail call ptr @realloc(ptr noundef %i.cm, i64 noundef %i.cn) #30 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store ptr %i.co, ptr %i.aq, align 8, !tbaa !266
  store i64 %..i.i, ptr %i.cb, align 8, !tbaa !265
  %.pre.i116 = load i64, ptr %i.ar, align 8, !tbaa !172
  br label %_ZN5ArrayIiE4PushEi.exit

_ZN5ArrayIiE4PushEi.exit:                         ; preds = %._ZN5ArrayIiE3AddEm.exit_crit_edge.i, %bb.ab
  %i.cq = phi ptr [ %.pre1.i, %._ZN5ArrayIiE3AddEm.exit_crit_edge.i ], [ %i.co, %bb.ab ]
  %i.cr = phi i64 [ %i.ca, %._ZN5ArrayIiE3AddEm.exit_crit_edge.i ], [ %.pre.i116, %bb.ab ]
  %i.cs = getelementptr [4 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 -4
  store i32 0, ptr %i.ct, align 4, !tbaa !85
  br label %bb.ad

bb.ac:                                            ; preds = %bb.n
  %i.cu = load ptr, ptr %i.am, align 8, !tbaa !175
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.al
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !176
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %.089, ptr %i.cx, align 4, !tbaa !264
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN5ArrayIiE4PushEi.exit
  %.079 = phi ptr [ %i.bp, %_ZN5ArrayIiE4PushEi.exit ], [ %i.cw, %bb.ac ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 59600 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 59608 ; 4 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !174 ; 7 uses
  %.not141 = icmp eq i64 %i.da, 0
  br i1 %.not141, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !175 ; 2 uses
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.ag
  %i.dc = icmp eq i32 %spec.select, 0
  br i1 %i.dc, label %bb.ah, label %_ZN5ArrayIP14UnpackFilter30E3AddEm.exit122

bb.ae:                                            ; preds = %.lr.ph, %bb.ag
  %indvars.iv.a = phi i64 [ 0, %.lr.ph ], [ %8, %bb.ag ]
  %.078132.a = phi i32 [ 0, %.lr.ph ], [ %7, %bb.ag ] ; 2 uses
  %.078132 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.ag ] ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.a ; 2 uses
  %6 = load ptr, ptr %5, align 8, !tbaa !176      ; 2 uses
  %i.dd = sub i32 %.078132.a, %.078132
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.de
  store ptr %6, ptr %i.df, align 8, !tbaa !176
  %i.dg = icmp eq ptr %6, null
  %i.dh = zext i1 %i.dg to i32
  %spec.select = add i32 %.078132, %i.dh          ; 4 uses
  %.not109 = icmp eq i32 %spec.select, 0
  br i1 %.not109, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %5, align 8, !tbaa !176
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %7 = add i32 %.078132.a, 1                      ; 2 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.di = icmp ugt i64 %i.da, %8
  br i1 %i.di, label %bb.ae, label %._crit_edge, !llvm.loop !268

bb.ah:                                            ; preds = %._crit_edge
  %i.dj = icmp samesign ugt i64 %i.da, 8192
  br i1 %i.dj, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdlPv(ptr noundef nonnull %i.aw) #28
  br label %.critedge112

.thread:                                          ; preds = %bb.ad, %bb.ah
  %i.dk = add nuw nsw i64 %i.da, 1                ; 3 uses
  store i64 %i.dk, ptr %i.cz, align 8, !tbaa !174
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 59616 ; 3 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !262 ; 2 uses
  %.not129 = icmp ult i64 %i.da, %i.dm
  br i1 %.not129, label %_ZN5ArrayIP14UnpackFilter30E3AddEm.exit122, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 59624
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !263 ; 2 uses
  %i.dp = add i64 %i.do, -1
  %or.cond.i118 = icmp ult i64 %i.dp, %i.da
  br i1 %or.cond.i118, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.do)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i120 = load i64, ptr %i.dl, align 8, !tbaa !262
  %.pre10.i121 = load i64, ptr %i.cz, align 8, !tbaa !174
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dq = phi i64 [ %.pre10.i121, %bb.ak ], [ %i.dk, %bb.aj ]
  %i.dr = phi i64 [ %.pre.i120, %bb.ak ], [ %i.dm, %bb.aj ] ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add i64 %i.dr, 32
  %i.du = add i64 %i.dt, %i.ds
  %..i119 = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.du) ; 2 uses
  %i.dv = load ptr, ptr %i.cy, align 8, !tbaa !175
  %i.dw = shl i64 %..i119, 3
  %i.dx = tail call ptr @realloc(ptr noundef %i.dv, i64 noundef %i.dw) #30 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store ptr %i.dx, ptr %i.cy, align 8, !tbaa !175
  store i64 %..i119, ptr %i.dl, align 8, !tbaa !262
  %.pre = load i64, ptr %i.cz, align 8, !tbaa !174
  br label %_ZN5ArrayIP14UnpackFilter30E3AddEm.exit122

_ZN5ArrayIP14UnpackFilter30E3AddEm.exit122:       ; preds = %bb.an, %.thread, %._crit_edge
  %i.dz = phi i64 [ %i.da, %._crit_edge ], [ %i.dk, %.thread ], [ %.pre, %bb.an ]
  %.2 = phi i32 [ %spec.select, %._crit_edge ], [ 1, %.thread ], [ 1, %bb.an ]
  %i.ea = zext i32 %.2 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = load ptr, ptr %i.cy, align 8, !tbaa !175
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store ptr %i.aw, ptr %i.ed, align 8, !tbaa !176
  %i.ee = tail call noundef i32 @_ZN5RarVM8ReadDataER8BitInput(ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.ef = and i32 %1, 64
  %.not100 = icmp eq i32 %i.ef, 0
  %i.eg = add i32 %i.ee, 258
  %spec.select110 = select i1 %.not100, i32 %i.ee, i32 %i.eg
  %i.eh = zext i32 %spec.select110 to i64         ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !151 ; 2 uses
  %i.ek = add i64 %i.ej, %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 59680 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !153
  %i.en = and i64 %i.ek, %i.em
  %i.eo = trunc i64 %i.en to i32
  store i32 %i.eo, ptr %i.aw, align 8, !tbaa !249
  %i.ep = and i32 %1, 32
  %.not101 = icmp eq i32 %i.ep, 0
  br i1 %.not101, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN5ArrayIP14UnpackFilter30E3AddEm.exit122
  %i.eq = tail call noundef i32 @_ZN5RarVM8ReadDataER8BitInput(ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !250
  %i.es = load ptr, ptr %i.aq, align 8, !tbaa !266
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.al
  store i32 %i.eq, ptr %i.et, align 4, !tbaa !85
  %.pre151 = load i64, ptr %i.ei, align 8, !tbaa !151
  br label %bb.as

bb.ap:                                            ; preds = %_ZN5ArrayIP14UnpackFilter30E3AddEm.exit122
  %i.eu = load i64, ptr %i.ar, align 8, !tbaa !172
  %i.ev = icmp ugt i64 %i.eu, %i.al
  br i1 %i.ev, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ew = load ptr, ptr %i.aq, align 8, !tbaa !266
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.al
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !85
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.ez = phi i32 [ %i.ey, %bb.aq ], [ 0, %bb.ap ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !250
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %i.fb = phi i64 [ %i.ej, %bb.ar ], [ %.pre151, %bb.ao ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !150 ; 2 uses
  %.not102 = icmp eq i64 %i.fd, %i.fb
  br i1 %.not102, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fe = sub i64 %i.fd, %i.fb
  %i.ff = load i64, ptr %i.el, align 8, !tbaa !153
  %i.fg = and i64 %i.ff, %i.fe
  %i.fh = icmp ule i64 %i.fg, %i.eh
  %i.fi = zext i1 %i.fh to i8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fj = phi i8 [ 0, %bb.as ], [ %i.fi, %bb.at ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.fj, ptr %i.fk, align 8, !tbaa !245
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aw, i64 20 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fl, i8 0, i64 28, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !250
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !85
  %i.fp = and i32 %1, 16
  %.not103 = icmp eq i32 %i.fp, 0
  br i1 %.not103, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fq = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 7 uses
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 7)
  %i.fr = and i32 %i.fq, 512
  %.not108 = icmp eq i32 %i.fr, 0
  br i1 %.not108, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fs = tail call noundef i32 @_ZN5RarVM8ReadDataER8BitInput(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  store i32 %i.fs, ptr %i.fl, align 4, !tbaa !85
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.ft = and i32 %i.fq, 1024
  %.not108.1 = icmp eq i32 %i.ft, 0
  br i1 %.not108.1, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fu = tail call noundef i32 @_ZN5RarVM8ReadDataER8BitInput(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !85
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fw = and i32 %i.fq, 2048
  %.not108.2 = icmp eq i32 %i.fw, 0
  br i1 %.not108.2, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fx = tail call noundef i32 @_ZN5RarVM8ReadDataER8BitInput(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aw, i64 28
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !85
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fz = and i32 %i.fq, 4096
  %.not108.3 = icmp eq i32 %i.fz, 0
  br i1 %.not108.3, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ga = tail call noundef i32 @_ZN5RarVM8ReadDataER8BitInput(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i32 %i.ga, ptr %i.gb, align 8, !tbaa !85
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gc = and i32 %i.fq, 8192
  %.not108.4 = icmp eq i32 %i.gc, 0
  br i1 %.not108.4, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gd = tail call noundef i32 @_ZN5RarVM8ReadDataER8BitInput(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !85
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gf = and i32 %i.fq, 16384
  %.not108.5 = icmp eq i32 %i.gf, 0
  br i1 %.not108.5, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
end_hunk_0
begin_hunk_1_@_ZN6Unpack14ReadFilterDataER8BitInput:bb.a
  %i.i = and i32 %i.e, 7
  store i32 %i.i, ptr %i.c, align 4, !tbaa !161
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret i32 %i.n

bb.c:                                             ; preds = %bb.a, %bb.c
  %.011 = phi i32 [ 0, %bb.a ], [ %i.u, %bb.c ]   ; 3 uses
  %.0910 = phi i32 [ 0, %bb.a ], [ %i.n, %bb.c ]
  %i.j = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.k = lshr i32 %i.j, 8
  %i.l = shl nuw nsw i32 %.011, 3
  %i.m = shl i32 %i.k, %i.l
  %i.n = add i32 %i.m, %.0910                     ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !161  ; 2 uses
  %i.p = add i32 %i.o, 8
  %i.q = lshr i32 %i.p, 3
  %i.r = load i32, ptr %1, align 8, !tbaa !162
  %i.s = add i32 %i.q, %i.r
  store i32 %i.s, ptr %1, align 8, !tbaa !162
  %i.t = and i32 %i.o, 7
  store i32 %i.t, ptr %i.c, align 4, !tbaa !161
  %i.u = add nuw nsw i32 %.011, 1
  %exitcond.not = icmp eq i32 %.011, %i.b
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !315
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6Unpack11InitFiltersEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(59688) initializes((104, 112)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.a, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5ArrayI12UnpackFilterE4PushES0_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !160
  %i.c = add i64 %i.b, 1                          ; 5 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !312  ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._ZN5ArrayI12UnpackFilterE3AddEm.exit_crit_edge

._ZN5ArrayI12UnpackFilterE3AddEm.exit_crit_edge:  ; preds = %bb.a
  %.pre1 = load ptr, ptr %0, align 8, !tbaa !299
  br label %_ZN5ArrayI12UnpackFilterE3AddEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !313  ; 3 uses
  %.not.i = icmp ne i64 %i.h, 0
  %i.i = icmp ugt i64 %i.c, %i.h
  %or.cond.i = and i1 %.not.i, %i.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.h)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !312
  %.pre10.i = load i64, ptr %i.a, align 8, !tbaa !160
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %.pre10.i, %bb.c ], [ %i.c, %bb.b ]
  %i.k = phi i64 [ %.pre.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.l = lshr i64 %i.k, 2
  %i.m = add i64 %i.k, 32
  %i.n = add i64 %i.m, %i.l
  %..i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.n) ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !299
  %i.p = shl i64 %..i, 4
  %i.q = tail call ptr @realloc(ptr noundef %i.o, i64 noundef %i.p) #30 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.q, ptr %0, align 8, !tbaa !299
  store i64 %..i, ptr %i.d, align 8, !tbaa !312
  %.pre = load i64, ptr %i.a, align 8, !tbaa !160
  br label %_ZN5ArrayI12UnpackFilterE3AddEm.exit

_ZN5ArrayI12UnpackFilterE3AddEm.exit:             ; preds = %._ZN5ArrayI12UnpackFilterE3AddEm.exit_crit_edge, %bb.f
  %i.s = phi ptr [ %.pre1, %._ZN5ArrayI12UnpackFilterE3AddEm.exit_crit_edge ], [ %i.q, %bb.f ]
  %i.t = phi i64 [ %i.c, %._ZN5ArrayI12UnpackFilterE3AddEm.exit_crit_edge ], [ %.pre, %bb.f ]
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  store i64 %1, ptr %i.v, align 4
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %i.u, i64 -8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN16FragmentedWindow8CopyDataEPhmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #20 align 2 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]  ; 3 uses
  %i.a = add i64 %.07, %2
  %i.b = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN16FragmentedWindowixEm(ptr noundef nonnull align 8 dereferenceable(512) %0, i64 noundef %i.a)
  %i.c = load i8, ptr %i.b, align 1, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.07
  store i8 %i.c, ptr %i.d, align 1, !tbaa !27
  %i.e = add nuw i64 %.07, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !303
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6Unpack11ApplyFilterEPhjP12UnpackFilter(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(59688) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %3, align 4, !tbaa !300     ; 2 uses
  switch i8 %i.a, label %.loopexit [
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 3, label %bb.j
    i8 0, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19856
  %i.c = load i64, ptr %i.b, align 8, !tbaa !163
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp eq i8 %i.a, 2
  %i.f = select i1 %i.e, i32 233, i32 232
  %i.g = icmp ugt i32 %2, 4
  br i1 %i.g, label %.lr.ph87, label %.loopexit

.lr.ph87:                                         ; preds = %bb.b, %bb.i
  %.06685 = phi i32 [ %.167, %bb.i ], [ 0, %bb.b ] ; 2 uses
  %.06884 = phi ptr [ %.169, %bb.i ], [ %1, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06884, i64 1 ; 3 uses
  %i.i = load i8, ptr %.06884, align 1, !tbaa !27 ; 2 uses
  %i.j = add i32 %.06685, 1                       ; 2 uses
  %i.k = icmp eq i8 %i.i, -24
  %i.l = zext i8 %i.i to i32
  %i.m = icmp eq i32 %i.f, %i.l
  %or.cond = or i1 %i.k, %i.m
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph87
  %i.n = add i32 %i.j, %i.d
  %i.o = and i32 %i.n, 16777215                   ; 2 uses
  %i.p = load i32, ptr %i.h, align 4, !tbaa !85   ; 5 uses
  %.not = icmp sgt i32 %i.p, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %i.p, %i.o
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.p, 16777216
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %.not72 = icmp samesign ugt i32 %i.p, 16777215
  br i1 %.not72, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = sub nsw i32 %i.p, %i.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.sink = phi i32 [ %i.t, %bb.g ], [ %i.s, %bb.e ]
  store i32 %.sink, ptr %i.h, align 4, !tbaa !85
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.06884, i64 5
  %i.v = add i32 %.06685, 5
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph87, %bb.h
  %.169 = phi ptr [ %i.u, %bb.h ], [ %i.h, %.lr.ph87 ]
  %.167 = phi i32 [ %i.v, %bb.h ], [ %i.j, %.lr.ph87 ] ; 2 uses
  %i.w = add i32 %.167, 4
  %i.x = icmp ult i32 %i.w, %2
  br i1 %i.x, label %.lr.ph87, label %.loopexit, !llvm.loop !317

bb.j:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 19856
  %i.z = load i64, ptr %i.y, align 8, !tbaa !163
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp ugt i32 %2, 3
  br i1 %i.ab, label %.lr.ph83, label %.loopexit

.lr.ph83:                                         ; preds = %bb.j, %bb.l
  %.06581 = phi i32 [ %5, %bb.l ], [ 0, %bb.j ]   ; 3 uses
  %4 = zext i32 %.06581 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %4 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = icmp eq i8 %i.ae, -21
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph83
  %i.ag = load i16, ptr %i.ac, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 16
  %i.an = or disjoint i32 %i.am, %i.ah
  %i.ao = add i32 %.06581, %i.aa
  %i.ap = lshr i32 %i.ao, 2
  %i.aq = sub nsw i32 %i.an, %i.ap                ; 3 uses
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %i.ac, align 1, !tbaa !27
  %i.as = lshr i32 %i.aq, 8
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr %i.ai, align 1, !tbaa !27
  %i.au = lshr i32 %i.aq, 16
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.aj, align 1, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph83
  %5 = add i32 %.06581, 4                         ; 2 uses
  %6 = or disjoint i32 %5, 3
  %i.aw = icmp ult i32 %6, %2
  br i1 %i.aw, label %.lr.ph83, label %.loopexit, !llvm.loop !318

bb.m:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !316 ; 4 uses
  %i.az = zext i8 %i.ay to i32                    ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bb = zext i32 %2 to i64                      ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !259 ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 %i.bb, ptr %i.bf, align 8, !tbaa !257
  br i1 %i.be, label %bb.n, label %._ZN5ArrayIhE5AllocEm.exit_crit_edge

._ZN5ArrayIhE5AllocEm.exit_crit_edge:             ; preds = %bb.m
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !258
  br label %_ZN5ArrayIhE5AllocEm.exit

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !302 ; 3 uses
  %.not.i.i = icmp ne i64 %i.bh, 0
  %i.bi = icmp ult i64 %i.bh, %i.bb
  %or.cond.i.i = and i1 %.not.i.i, %i.bi
  br i1 %or.cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.bh)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i.i = load i64, ptr %i.bc, align 8, !tbaa !259
  %.pre10.i.i = load i64, ptr %i.bf, align 8, !tbaa !257
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bj = phi i64 [ %.pre10.i.i, %bb.o ], [ %i.bb, %bb.n ]
  %i.bk = phi i64 [ %.pre.i.i, %bb.o ], [ %i.bd, %bb.n ] ; 2 uses
  %i.bl = lshr i64 %i.bk, 2
  %i.bm = add i64 %i.bk, 32
  %i.bn = add i64 %i.bm, %i.bl
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bn) ; 2 uses
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !258
  %i.bp = tail call ptr @realloc(ptr noundef %i.bo, i64 noundef %..i.i) #30 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.q, label %_ZN5ArrayIhE3AddEm.exit.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %_ZN5ArrayIhE3AddEm.exit.i

_ZN5ArrayIhE3AddEm.exit.i:                        ; preds = %bb.q, %bb.p
  store ptr %i.bp, ptr %i.ba, align 8, !tbaa !258
  store i64 %..i.i, ptr %i.bc, align 8, !tbaa !259
  br label %_ZN5ArrayIhE5AllocEm.exit

_ZN5ArrayIhE5AllocEm.exit:                        ; preds = %._ZN5ArrayIhE5AllocEm.exit_crit_edge, %_ZN5ArrayIhE3AddEm.exit.i
  %i.br = phi ptr [ %.pre, %._ZN5ArrayIhE5AllocEm.exit_crit_edge ], [ %i.bp, %_ZN5ArrayIhE3AddEm.exit.i ] ; 7 uses
  %.not88 = icmp eq i8 %i.ay, 0
  br i1 %.not88, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5ArrayIhE5AllocEm.exit
  %xtraiter = and i32 %i.az, 1
  %i.bs = icmp eq i8 %i.ay, 1
  br i1 %i.bs, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %i.az, 254
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.1, %.preheader.preheader.new
  %.06280 = phi i32 [ 0, %.preheader.preheader.new ], [ %i.cf, %._crit_edge.1 ] ; 4 uses
  %.06379 = phi i32 [ 0, %.preheader.preheader.new ], [ %.1.lcssa.1, %._crit_edge.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.bt = icmp ult i32 %.06280, %2
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.1.lcssa = phi i32 [ %.06379, %.preheader ], [ %i.cg, %.lr.ph ] ; 2 uses
  %i.bu = or disjoint i32 %.06280, 1              ; 2 uses
  %i.bv = icmp ult i32 %i.bu, %2
  br i1 %i.bv, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %.078.1 = phi i32 [ %i.cd, %.lr.ph.1 ], [ %i.bu, %._crit_edge ] ; 2 uses
  %.06177.1 = phi i8 [ %i.ca, %.lr.ph.1 ], [ 0, %._crit_edge ]
  %.176.1 = phi i32 [ %i.bw, %.lr.ph.1 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.bw = add i32 %.176.1, 1                      ; 2 uses
  %i.bx = zext i32 %.176.1 to i64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !27
  %i.ca = sub i8 %.06177.1, %i.bz                 ; 2 uses
  %i.cb = zext i32 %.078.1 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !27
  %i.cd = add i32 %.078.1, %i.az                  ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %2
  br i1 %i.ce, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !319

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %i.bw, %.lr.ph.1 ] ; 2 uses
  %i.cf = add nuw nsw i32 %.06280, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit103.unr-lcssa, label %.preheader, !llvm.loop !320

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.078 = phi i32 [ %i.cn, %.lr.ph ], [ %.06280, %.preheader ] ; 2 uses
  %.06177 = phi i8 [ %i.ck, %.lr.ph ], [ 0, %.preheader ]
  %.176 = phi i32 [ %i.cg, %.lr.ph ], [ %.06379, %.preheader ] ; 2 uses
  %i.cg = add i32 %.176, 1                        ; 2 uses
  %i.ch = zext i32 %.176 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !27
  %i.ck = sub i8 %.06177, %i.cj                   ; 2 uses
  %i.cl = zext i32 %.078 to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cl
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !27
  %i.cn = add i32 %.078, %i.az                    ; 2 uses
  %i.co = icmp ult i32 %i.cn, %2
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !319

.loopexit.loopexit103.unr-lcssa:                  ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit103.unr-lcssa, %.preheader.preheader
  %.06280.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %i.cf, %.loopexit.loopexit103.unr-lcssa ] ; 2 uses
  %.06379.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %.1.lcssa.1, %.loopexit.loopexit103.unr-lcssa ]
  %lcmp.mod104 = trunc i8 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.cp = icmp ult i32 %.06280.epil.init, %2
  br i1 %i.cp, label %.lr.ph.epil, label %.loopexit

.lr.ph.epil:                                      ; preds = %.preheader.epil.preheader, %.lr.ph.epil
  %.078.epil = phi i32 [ %i.cx, %.lr.ph.epil ], [ %.06280.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.06177.epil = phi i8 [ %i.cu, %.lr.ph.epil ], [ 0, %.preheader.epil.preheader ]
  %.176.epil = phi i32 [ %i.cq, %.lr.ph.epil ], [ %.06379.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %i.cq = add i32 %.176.epil, 1
  %i.cr = zext i32 %.176.epil to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !27
  %i.cu = sub i8 %.06177.epil, %i.ct              ; 2 uses
  %i.cv = zext i32 %.078.epil to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cv
  store i8 %i.cu, ptr %i.cw, align 1, !tbaa !27
  %i.cx = add i32 %.078.epil, %i.az               ; 2 uses
  %i.cy = icmp ult i32 %i.cx, %2
  br i1 %i.cy, label %.lr.ph.epil, label %.loopexit, !llvm.loop !319

.loopexit:                                        ; preds = %.loopexit.loopexit103.unr-lcssa, %.lr.ph.epil, %.preheader.epil.preheader, %bb.l, %bb.i, %_ZN5ArrayIhE5AllocEm.exit, %bb.j, %bb.b, %bb.a
  %.064 = phi ptr [ %1, %bb.b ], [ %1, %bb.j ], [ null, %bb.a ], [ %i.br, %_ZN5ArrayIhE5AllocEm.exit ], [ %1, %bb.l ], [ %1, %bb.i ], [ %i.br, %.preheader.epil.preheader ], [ %i.br, %.lr.ph.epil ], [ %i.br, %.loopexit.loopexit103.unr-lcssa ]
  ret ptr %.064
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN16FragmentedWindow12GetBlockSizeEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !278  ; 2 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i64, ptr %i.d, align 8, !tbaa !278  ; 2 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load i64, ptr %i.g, align 8, !tbaa !278  ; 2 uses
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = load i64, ptr %i.j, align 8, !tbaa !278  ; 2 uses
  %i.l = icmp ult i64 %1, %i.k
  br i1 %i.l, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = load i64, ptr %i.m, align 8, !tbaa !278  ; 2 uses
  %i.o = icmp ult i64 %1, %i.n
  br i1 %i.o, label %bb.ag, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load i64, ptr %i.p, align 8, !tbaa !278  ; 2 uses
  %i.r = icmp ult i64 %1, %i.q
  br i1 %i.r, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.t = load i64, ptr %i.s, align 8, !tbaa !278  ; 2 uses
  %i.u = icmp ult i64 %1, %i.t
  br i1 %i.u, label %bb.ag, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
end_hunk_1
