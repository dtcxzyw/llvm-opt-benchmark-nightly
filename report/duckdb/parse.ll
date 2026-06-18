inline.NumInlined: 971
inline.NumDeleted: 313
begin_hunk_0_@_ZN10duckdb_re26Regexp6WalkerIiE12WalkInternalEPS0_ib:bb.a
  %.pre87.pre = phi i32 [ 0, %bb.k ], [ %.pre87.pre.pre, %bb.m ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.y

bb.o:                                             ; preds = %.thread, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %.pre87 = phi i32 [ %.pre87.pre, %.thread ], [ %i.av, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 6 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !61 ; 3 uses
  %.not71 = icmp eq i16 %i.bw, 0
  br i1 %.not71, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp eq i16 %i.bw, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %.0.i = select i1 %i.bx, ptr %i.by, ptr %i.bz   ; 3 uses
  %i.ca = zext i16 %i.bw to i32
  %.not72 = icmp slt i32 %.pre87, %i.ca
  br i1 %.not72, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp sgt i32 %.pre87, 0
  %or.cond = and i1 %3, %i.cb
  br i1 %or.cond, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.phi.trans.insert = sext i32 %.pre87 to i64
  %.phi.trans.insert86 = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert86, align 8, !tbaa !62
  br label %._crit_edge90

bb.r:                                             ; preds = %bb.q
  %i.cc = add nsw i32 %.pre87, -1
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !62
  %i.cg = zext nneg i32 %.pre87 to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !62 ; 2 uses
  %i.cj = icmp eq ptr %i.cf, %i.ci
  br i1 %i.cj, label %bb.s, label %._crit_edge90

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !246
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cd
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = load ptr, ptr %0, align 8, !tbaa !77
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.cn)
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !246
  %i.ct = load i32, ptr %i.au, align 8, !tbaa !250
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !3
  %i.cw = load i32, ptr %i.au, align 8, !tbaa !250
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.au, align 8, !tbaa !250
  br label %.thread80.backedge

._crit_edge90:                                    ; preds = %bb.r, %._crit_edge
  %i.cy = phi ptr [ %.pre, %._crit_edge ], [ %i.ci, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.cz = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !259
  store ptr %i.cy, ptr %6, align 8, !tbaa !243
  store i32 -1, ptr %i.af, align 8, !tbaa !250
  store i32 %i.da, ptr %i.ag, align 4, !tbaa !251
  store ptr null, ptr %i.ah, align 8, !tbaa !246
  %i.db = load ptr, ptr %i.v, align 8, !tbaa !238 ; 2 uses
  %i.dc = load ptr, ptr %i.x, align 8, !tbaa !252
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -32
  %.not.i.i.i74 = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i.i.i74, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !253
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !238
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store ptr %i.df, ptr %i.v, align 8, !tbaa !238
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

bb.u:                                             ; preds = %._crit_edge90
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.thread80.backedge

.thread80.backedge:                               ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75, %bb.s, %bb.ad
  br label %.thread80, !llvm.loop !262

bb.v:                                             ; preds = %bb.p, %bb.o
  %i.dg = getelementptr inbounds i8, ptr %i.ar, i64 -20
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !251
  %i.di = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !259
  %i.dk = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !246
  %i.dm = load ptr, ptr %0, align 8, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef i32 %i.do(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.at, i32 noundef %i.dh, i32 noundef %i.dj, ptr noundef %i.dl, i32 noundef %.pre87) ; 3 uses
  %i.dq = load i16, ptr %i.bv, align 2, !tbaa !61
  %i.dr = icmp ugt i16 %i.dq, 1
  br i1 %i.dr, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ds = load ptr, ptr %i.dk, align 8, !tbaa !246 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ds) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.n, %bb.v, %bb.x, %bb.w, %bb.i
  %.3 = phi i32 [ %i.be, %bb.i ], [ %i.dp, %bb.w ], [ %i.dp, %bb.x ], [ %i.dp, %bb.v ], [ %i.bk, %bb.n ] ; 4 uses
  %i.du = load ptr, ptr %i.v, align 8, !tbaa !238 ; 2 uses
  %i.dv = load ptr, ptr %i.ac, align 8, !tbaa !247 ; 3 uses
  %.not.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.y
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -32 ; 4 uses
  store ptr %i.dw, ptr %i.v, align 8, !tbaa !238
  %i.dx = load ptr, ptr %i.aj, align 8, !tbaa !239
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %.thread82, label %bb.z

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.dv) #28
  %i.dz = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -8 ; 2 uses
  store ptr %i.ea, ptr %i.ad, align 8, !tbaa !234
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !95 ; 3 uses
  store ptr %i.eb, ptr %i.ac, align 8, !tbaa !235
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 512
  store ptr %i.ec, ptr %i.x, align 8, !tbaa !236
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 480 ; 3 uses
  store ptr %i.ed, ptr %i.v, align 8, !tbaa !238
  %i.ee = load ptr, ptr %i.aj, align 8, !tbaa !239
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %.thread82, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.z:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.eg = icmp eq ptr %i.dw, %i.dv
  br i1 %i.eg, label %bb.aa, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.aa:                                            ; preds = %bb.z
  %i.eh = load ptr, ptr %i.ad, align 8, !tbaa !234, !noalias !263
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !95
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 512
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76: ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %bb.z, %bb.aa
  %i.el = phi ptr [ %i.ek, %bb.aa ], [ %i.dw, %bb.z ], [ %i.ed, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ] ; 4 uses
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !246 ; 2 uses
  %.not73 = icmp eq ptr %i.en, null
  br i1 %.not73, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 -24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !250
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eq
  store i32 %.3, ptr %i.er, align 4, !tbaa !3
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.es = getelementptr inbounds i8, ptr %i.el, i64 -12
  store i32 %.3, ptr %i.es, align 4, !tbaa !266
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.et = getelementptr inbounds i8, ptr %i.el, i64 -24 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !250
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 8, !tbaa !250
  br label %.thread80.backedge

.thread82:                                        ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %_ZN10LogMessageD2Ev.exit
  %.2 = phi i32 [ %2, %_ZN10LogMessageD2Ev.exit ], [ %.3, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ], [ %.3, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !234  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !234
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !235
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !236
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !239
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !231
  %i.ag = load ptr, ptr %0, align 8, !tbaa !92
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !94
  br label %_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %3 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #31
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.am, align 8, !tbaa !95
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !253
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !234
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !95 ; 3 uses
  store ptr %i.aq, ptr %i.o, align 8, !tbaa !235
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !236
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !238
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !231  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !92
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !267

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !95
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !95
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !95
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !95
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit, !prof !232

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #31 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !267

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !95
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !95
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24

_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !92
  tail call void @_ZdlPv(ptr noundef %i.bc) #28
  store ptr %i.aq, ptr %0, align 8, !tbaa !92
  store i64 %i.am, ptr %i.k, align 8, !tbaa !231
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !234
  %i.bd = load ptr, ptr %.0, align 8, !tbaa !95   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !235
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !236
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !234
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !95 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !235
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !236
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !154    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN10duckdb_re25FrameESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIN10duckdb_re25FrameESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !108
  %i.s = load i32, ptr %3, align 4, !tbaa !3
  store ptr %i.r, ptr %i.q, align 8, !tbaa !116
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.s, ptr %i.t, align 8, !tbaa !122
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.u, i8 0, i64 28, i1 false)
end_hunk_0
