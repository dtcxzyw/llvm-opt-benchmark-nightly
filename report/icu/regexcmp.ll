Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/regexcmp?download=true
inline.NumInlined: 589
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7812RegexCompile14minMatchLengthEii:bb.a
    i8 13, label %bb.h
    i8 1, label %bb.n
    i8 6, label %bb.p
    i8 4, label %bb.t
    i8 40, label %bb.v
    i8 25, label %bb.w
    i8 26, label %bb.w
    i8 28, label %_ZNK6icu_789UVector3210elementAtiEi.exit101
    i8 29, label %_ZNK6icu_789UVector3210elementAtiEi.exit101
    i8 50, label %_ZNK6icu_789UVector3210elementAtiEi.exit101
    i8 52, label %_ZNK6icu_789UVector3210elementAtiEi.exit101
    i8 51, label %_ZNK6icu_789UVector3210elementAtiEi.exit101
    i8 37, label %bb.y
    i8 44, label %bb.y
    i8 38, label %_ZNK6icu_789UVector3210elementAtiEi.exit101
    i8 45, label %_ZNK6icu_789UVector3210elementAtiEi.exit101
    i8 46, label %_ZNK6icu_789UVector3210elementAtiEi.exit101
    i8 47, label %_ZNK6icu_789UVector3210elementAtiEi.exit101
    i8 48, label %_ZNK6icu_789UVector3210elementAtiEi.exit101
  ]

bb.f:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99
  %i.af = and i32 %.179, -2
  %.not133 = icmp eq i32 %i.af, 2147483646
  %i.ag = add nsw i32 %.179, 1
  %.0.i = select i1 %.not133, i32 2147483647, i32 %i.ag
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.g:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit99
  %i.ah = add nsw i32 %.184148, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6icu_789UVector3210elementAtiEi.exit99
  %.285 = phi i32 [ %i.ah, %bb.g ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ] ; 6 uses
  %i.ai = and i32 %i.x, 16777215                  ; 4 uses
  %i.aj = icmp slt i32 %i.ai, %.285
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = add nuw nsw i32 %.285, 1                ; 2 uses
  %i.al = icmp sgt i32 %i.z, %i.ak
  br i1 %i.al, label %bb.j, label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.an = zext nneg i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !86
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.k:                                             ; preds = %bb.h
  %i.aq = icmp sgt i32 %i.z, %i.ai
  br i1 %i.aq, label %bb.l, label %_ZNK6icu_789UVector3210elementAtiEi.exit103

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.as = zext nneg i32 %i.ai to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !86
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit103

_ZNK6icu_789UVector3210elementAtiEi.exit103:      ; preds = %bb.k, %bb.l
  %i.av = phi i32 [ %i.au, %bb.l ], [ 0, %bb.k ]
  %i.aw = icmp sgt i32 %i.av, %.179
  br i1 %i.aw, label %bb.m, label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.m:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit103
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %.179, i32 noundef %i.ai)
          to label %_ZNK6icu_789UVector3210elementAtiEi.exit101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit99
  %i.ax = add nsw i32 %.184148, 1                 ; 2 uses
  %i.ay = icmp sgt i32 %.184148, -2
  %i.az = icmp sgt i32 %i.z, %i.ax
  %or.cond.i104 = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond.i104, label %bb.o, label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !86
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.p:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit99
  %i.be = and i32 %i.x, 16777215                  ; 4 uses
  %i.bf = icmp sgt i32 %i.be, %.184148
  br i1 %i.bf, label %bb.q, label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.q:                                             ; preds = %bb.p
  %i.bg = icmp sgt i32 %i.z, %i.be
  br i1 %i.bg, label %bb.r, label %_ZNK6icu_789UVector3210elementAtiEi.exit107

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.bi = zext nneg i32 %i.be to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !86
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit107

_ZNK6icu_789UVector3210elementAtiEi.exit107:      ; preds = %bb.q, %bb.r
  %i.bl = phi i32 [ %i.bk, %bb.r ], [ 0, %bb.q ]
  %i.bm = icmp slt i32 %.179, %i.bl
  br i1 %i.bm, label %bb.s, label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.s:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit107
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %.179, i32 noundef %i.be)
          to label %_ZNK6icu_789UVector3210elementAtiEi.exit101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit99
  %i.bn = add nsw i32 %.184148, 1                 ; 3 uses
  %i.bo = icmp sgt i32 %.184148, -2
  %i.bp = icmp slt i32 %i.bn, %i.p
  %or.cond.i108 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond.i108, label %bb.u, label %_ZNK6icu_789UVector6410elementAtiEi.exit109

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !90
  %i.bs = zext nneg i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !91
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = and i32 %i.bv, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit109

_ZNK6icu_789UVector6410elementAtiEi.exit109:      ; preds = %bb.t, %bb.u
  %i.bx = phi i32 [ %i.bw, %bb.u ], [ 0, %bb.t ]  ; 2 uses
  %i.by = sub nsw i32 2147483647, %.179
  %i.bz = icmp samesign ugt i32 %i.by, %i.bx
  %i.ca = add nsw i32 %i.bx, %.179
  %.0.i110 = select i1 %i.bz, i32 %i.ca, i32 2147483647
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.v:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit99
  %i.cb = add nsw i32 %.184148, 1
  %i.cc = and i32 %.179, -2
  %.not = icmp eq i32 %i.cc, 2147483646
  %i.cd = add nsw i32 %.179, 1
  %.0.i111 = select i1 %.not, i32 2147483647, i32 %i.cd
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.w:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99
  %i.ce = add nsw i32 %.184148, 1                 ; 2 uses
  %i.cf = icmp sgt i32 %.184148, -2
  %i.cg = icmp slt i32 %i.ce, %i.p
  %or.cond.i112 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond.i112, label %bb.x, label %_ZNK6icu_789UVector6410elementAtiEi.exit113

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !90
  %i.cj = zext nneg i32 %i.ce to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !91
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = and i32 %i.cm, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit113

_ZNK6icu_789UVector6410elementAtiEi.exit113:      ; preds = %bb.w, %bb.x
  %i.co = phi i32 [ %i.cn, %bb.x ], [ 0, %bb.w ]
  %i.cp = add nsw i32 %.184148, 2                 ; 2 uses
  %i.cq = icmp sgt i32 %.184148, -3
  %i.cr = icmp slt i32 %i.cp, %i.p
  %or.cond.i114 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond.i114, label %_ZNK6icu_789UVector6410elementAtiEi.exit115, label %_ZNK6icu_789UVector6410elementAtiEi.exit115.thread

_ZNK6icu_789UVector6410elementAtiEi.exit115:      ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit113
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !90
  %i.cu = zext nneg i32 %i.cp to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !91
  %.fr191 = freeze i64 %i.cw
  %i.cx = and i64 %.fr191, 4294967295
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = add nsw i32 %.184148, 3
  br i1 %i.cy, label %_ZNK6icu_789UVector6410elementAtiEi.exit115.thread, label %_ZNK6icu_789UVector3210elementAtiEi.exit101

_ZNK6icu_789UVector6410elementAtiEi.exit115.thread: ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit113, %_ZNK6icu_789UVector6410elementAtiEi.exit115
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit101

bb.y:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99
  %i.da = icmp eq i32 %i.y, 37
  %i.db = select i1 %i.da, i32 2, i32 1
  br label %.thread126.outer

.thread126.outer:                                 ; preds = %..thread126_crit_edge, %bb.y
  %.pre161166.ph = phi i32 [ %.pre161.pre, %..thread126_crit_edge ], [ %i.p, %bb.y ]
  %.pre159164.ph = phi ptr [ %.pre159.pre, %..thread126_crit_edge ], [ %i.m, %bb.y ]
  %.487.ph = phi i32 [ %i.dg, %..thread126_crit_edge ], [ %.184148, %bb.y ]
  %.0.ph = phi i32 [ %.2, %..thread126_crit_edge ], [ %i.db, %bb.y ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.pre159164.ph, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !90
  %i.de = load i32, ptr %i.h, align 8
  %i.df = load ptr, ptr %i.i, align 8
  br label %.thread126.outer199

.thread126.outer199:                              ; preds = %.thread126.outer199.backedge, %.thread126.outer
  %.487.ph200 = phi i32 [ %.487.ph, %.thread126.outer ], [ %i.dg, %.thread126.outer199.backedge ]
  %.0.ph201 = phi i32 [ %.0.ph, %.thread126.outer ], [ %.0.ph201.be, %.thread126.outer199.backedge ] ; 3 uses
  br label %.thread126

.thread126:                                       ; preds = %.thread126.outer199, %.thread126
  %.487 = phi i32 [ %i.dg, %.thread126 ], [ %.487.ph200, %.thread126.outer199 ] ; 2 uses
  %i.dg = add nsw i32 %.487, 1                    ; 8 uses
  %i.dh = icmp sgt i32 %.487, -2
  %i.di = icmp slt i32 %i.dg, %.pre161166.ph
  %or.cond.i116 = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond.i116, label %_ZNK6icu_789UVector6410elementAtiEi.exit117, label %.thread126, !llvm.loop !136

_ZNK6icu_789UVector6410elementAtiEi.exit117:      ; preds = %.thread126
  %i.dj = zext nneg i32 %i.dg to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !91 ; 2 uses
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  %i.dn = lshr i32 %i.dm, 24                      ; 3 uses
  %i.do = icmp eq i32 %i.dn, 37
  %i.dp = add nsw i32 %.0.ph201, 2
  %spec.select = select i1 %i.do, i32 %i.dp, i32 %.0.ph201 ; 2 uses
  %i.dq = icmp eq i32 %i.dn, 44
  %4 = add nsw i32 %.0.ph201, 1
  %.2 = select i1 %i.dq, i32 %4, i32 %spec.select ; 5 uses
  %trunc132 = trunc nuw i32 %i.dn to i8
  switch i8 %trunc132, label %.thread126.outer199.backedge [
    i8 38, label %bb.z
    i8 48, label %bb.aa
    i8 6, label %bb.ab
  ]

bb.z:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit117
  %i.dr = add nsw i32 %spec.select, -1            ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %_ZNK6icu_789UVector3210elementAtiEi.exit101, label %.thread126.outer199.backedge

.thread126.outer199.backedge:                     ; preds = %bb.z, %_ZNK6icu_789UVector6410elementAtiEi.exit117, %bb.ab, %_ZNK6icu_789UVector3210elementAtiEi.exit119, %bb.aa
  %.0.ph201.be = phi i32 [ %i.dt, %bb.aa ], [ %.2, %_ZNK6icu_789UVector3210elementAtiEi.exit119 ], [ %.2, %bb.ab ], [ %.2, %_ZNK6icu_789UVector6410elementAtiEi.exit117 ], [ %i.dr, %bb.z ]
  br label %.thread126.outer199, !llvm.loop !136

bb.aa:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit117
  %i.dt = add nsw i32 %.2, -1                     ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZNK6icu_789UVector3210elementAtiEi.exit101, label %.thread126.outer199.backedge

bb.ab:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit117
  %i.dv = and i32 %i.dm, 16777215                 ; 3 uses
  %i.dw = icmp samesign ugt i32 %i.dv, %i.dg
  br i1 %i.dw, label %bb.ac, label %.thread126.outer199.backedge

bb.ac:                                            ; preds = %bb.ab
  %i.dx = icmp sgt i32 %i.de, %i.dv
  br i1 %i.dx, label %bb.ad, label %_ZNK6icu_789UVector3210elementAtiEi.exit119

bb.ad:                                            ; preds = %bb.ac
  %i.dy = and i64 %i.dl, 16777215
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !86
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit119

_ZNK6icu_789UVector3210elementAtiEi.exit119:      ; preds = %bb.ac, %bb.ad
  %i.eb = phi i32 [ %i.ea, %bb.ad ], [ 0, %bb.ac ]
  %i.ec = icmp slt i32 %.179, %i.eb
  br i1 %i.ec, label %bb.ae, label %.thread126.outer199.backedge

bb.ae:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit119
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %.179, i32 noundef %i.dv)
          to label %..thread126_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..thread126_crit_edge:                            ; preds = %bb.ae
  %.pre.pre = load ptr, ptr %i.g, align 8, !tbaa !28
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 32
  %.pre159.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !66 ; 2 uses
  %.phi.trans.insert160.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre159.pre, i64 8
  %.pre161.pre = load i32, ptr %.phi.trans.insert160.phi.trans.insert, align 8
  br label %.thread126.outer, !llvm.loop !136

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.m, %bb.ae, %.lr.ph, %bb.b
  %lpad.loopexit.split-lp208 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_789UVector32D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %lpad.loopexit.split-lp208

bb.af:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit99
  call void @abort() #11
  unreachable

_ZNK6icu_789UVector3210elementAtiEi.exit101:      ; preds = %bb.z, %bb.aa, %_ZNK6icu_789UVector6410elementAtiEi.exit115.thread, %_ZNK6icu_789UVector6410elementAtiEi.exit115, %bb.o, %bb.n, %bb.j, %bb.i, %bb.p, %bb.s, %_ZNK6icu_789UVector3210elementAtiEi.exit107, %bb.m, %_ZNK6icu_789UVector3210elementAtiEi.exit103, %bb.f, %_ZNK6icu_789UVector6410elementAtiEi.exit109, %bb.v, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99, %_ZNK6icu_789UVector3210elementAtiEi.exit99
  %.5 = phi i32 [ %.184148, %bb.f ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.285, %bb.j ], [ %.184148, %bb.n ], [ %i.bn, %_ZNK6icu_789UVector6410elementAtiEi.exit109 ], [ %i.cb, %bb.v ], [ %i.cz, %_ZNK6icu_789UVector6410elementAtiEi.exit115 ], [ %.184148, %bb.p ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.285, %_ZNK6icu_789UVector3210elementAtiEi.exit103 ], [ %.285, %bb.m ], [ %.184148, %_ZNK6icu_789UVector3210elementAtiEi.exit107 ], [ %.184148, %bb.s ], [ %.184148, %bb.o ], [ %.285, %bb.i ], [ %i.co, %_ZNK6icu_789UVector6410elementAtiEi.exit115.thread ], [ %i.dg, %bb.aa ], [ %i.dg, %bb.z ] ; 2 uses
  %.381 = phi i32 [ %.0.i, %bb.f ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %i.ap, %bb.j ], [ 0, %bb.n ], [ %.0.i110, %_ZNK6icu_789UVector6410elementAtiEi.exit109 ], [ %.0.i111, %bb.v ], [ %.179, %_ZNK6icu_789UVector6410elementAtiEi.exit115 ], [ %.179, %bb.p ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit99 ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit103 ], [ %.179, %bb.m ], [ %.179, %_ZNK6icu_789UVector3210elementAtiEi.exit107 ], [ %.179, %bb.s ], [ %i.bd, %bb.o ], [ 0, %bb.i ], [ %.179, %_ZNK6icu_789UVector6410elementAtiEi.exit115.thread ], [ %.179, %bb.aa ], [ %.179, %bb.z ] ; 2 uses
  %i.ed = add nsw i32 %.5, 1
  %.not95.not = icmp slt i32 %.5, %2
  br i1 %.not95.not, label %bb.d, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101, %.preheader
  %.078.lcssa = phi i32 [ 0, %.preheader ], [ %.381, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ] ; 2 uses
  %i.ee = icmp sgt i32 %2, -2
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = icmp sgt i32 %i.eg, %i.f
  %or.cond.i120 = select i1 %i.ee, i1 %i.eh, i1 false
  br i1 %or.cond.i120, label %_ZNK6icu_789UVector3210elementAtiEi.exit121, label %_ZNK6icu_789UVector3210elementAtiEi.exit121.thread

_ZNK6icu_789UVector3210elementAtiEi.exit121:      ; preds = %._crit_edge
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !88
  %i.ek = zext nneg i32 %i.f to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !86
  %spec.select190 = call i32 @llvm.smin.i32(i32 %i.em, i32 %.078.lcssa)
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit123

_ZNK6icu_789UVector3210elementAtiEi.exit121.thread: ; preds = %._crit_edge
  %spec.select131 = call i32 @llvm.smin.i32(i32 %.078.lcssa, i32 0)
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit123

_ZNK6icu_789UVector3210elementAtiEi.exit123:      ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit121, %_ZNK6icu_789UVector3210elementAtiEi.exit121.thread
  %.482 = phi i32 [ %spec.select131, %_ZNK6icu_789UVector3210elementAtiEi.exit121.thread ], [ %spec.select190, %_ZNK6icu_789UVector3210elementAtiEi.exit121 ]
  call void @_ZN6icu_789UVector32D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK6icu_789UVector3210elementAtiEi.exit123
  %.075 = phi i32 [ %.482, %_ZNK6icu_789UVector3210elementAtiEi.exit123 ], [ 0, %bb.a ]
  ret i32 %.075
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812RegexCompile14matchStartTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::UVector32", align 8 ; 14 uses
  %2 = alloca %"class.icu_78::UnicodeSet", align 8 ; 8 uses
  %3 = alloca %"class.icu_78::UnicodeSet", align 8 ; 9 uses
  %4 = alloca %"class.icu_78::UnicodeSet", align 8 ; 10 uses
  %5 = alloca %"class.icu_78::UnicodeSet", align 8 ; 11 uses
  %6 = alloca %"class.icu_78::UnicodeSet", align 8 ; 8 uses
  %7 = alloca %"class.icu_78::UnicodeSet", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !51
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.ef

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 22 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !69   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.k = add nsw i32 %i.j, 1                      ; 2 uses
  call void @_ZN6icu_789UVector32C1EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  invoke void @_ZN6icu_789UVector327setSizeEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.k)
          to label %.preheader307 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader307:                                    ; preds = %bb.b
  %i.l = icmp sgt i32 %i.j, 3
  br i1 %i.l, label %.lr.ph, label %_ZNK6icu_789UVector3210elementAtiEi.exit284

.lr.ph333:                                        ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  br label %bb.d

.lr.ph:                                           ; preds = %.preheader307, %bb.c
  %.0170328 = phi i32 [ %i.o, %bb.c ], [ 3, %.preheader307 ] ; 2 uses
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2147483647, i32 noundef %.0170328)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i32 %.0170328, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %i.j
  br i1 %exitcond.not, label %.lr.ph333, label %.lr.ph, !llvm.loop !138

bb.d:                                             ; preds = %.lr.ph333, %_ZNK6icu_789UVector3210elementAtiEi.exit256
  %.0155332 = phi i8 [ 1, %.lr.ph333 ], [ %.1156, %_ZNK6icu_789UVector3210elementAtiEi.exit256 ] ; 24 uses
  %.0157331 = phi i32 [ 0, %.lr.ph333 ], [ %.14, %_ZNK6icu_789UVector3210elementAtiEi.exit256 ] ; 63 uses
  %.0166330 = phi i32 [ 0, %.lr.ph333 ], [ %.3169, %_ZNK6icu_789UVector3210elementAtiEi.exit256 ] ; 2 uses
  %.1171329 = phi i32 [ 3, %.lr.ph333 ], [ %i.kl, %_ZNK6icu_789UVector3210elementAtiEi.exit256 ] ; 73 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !28   ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 7 uses
  %i.s = icmp sgt i32 %.1171329, -1               ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 6 uses
  %i.v = icmp slt i32 %.1171329, %i.u
  %or.cond.i = select i1 %i.s, i1 %i.v, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZNK6icu_789UVector6410elementAtiEi.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.y = zext nneg i32 %.1171329 to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !91
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit

_ZNK6icu_789UVector6410elementAtiEi.exit:         ; preds = %bb.d, %bb.e
  %i.ab = phi i64 [ %i.aa, %bb.e ], [ 0, %bb.d ]  ; 5 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 12 uses
  %i.ad = lshr i32 %i.ac, 24                      ; 2 uses
  %i.ae = load i32, ptr %i.m, align 8             ; 6 uses
  %i.af = icmp sgt i32 %i.ae, %.1171329
  %or.cond.i244 = select i1 %i.s, i1 %i.af, i1 false
  br i1 %or.cond.i244, label %_ZNK6icu_789UVector3210elementAtiEi.exit, label %_ZNK6icu_789UVector3210elementAtiEi.exit.thread

_ZNK6icu_789UVector3210elementAtiEi.exit:         ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.ah = zext nneg i32 %.1171329 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !86
  %spec.select374 = call i32 @llvm.smin.i32(i32 %i.aj, i32 %.0166330)
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit246

_ZNK6icu_789UVector3210elementAtiEi.exit.thread:  ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %spec.select292 = call i32 @llvm.smin.i32(i32 %.0166330, i32 0)
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit246

_ZNK6icu_789UVector3210elementAtiEi.exit246:      ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit, %_ZNK6icu_789UVector3210elementAtiEi.exit.thread
  %.1167 = phi i32 [ %spec.select292, %_ZNK6icu_789UVector3210elementAtiEi.exit.thread ], [ %spec.select374, %_ZNK6icu_789UVector3210elementAtiEi.exit ] ; 69 uses
  %trunc = trunc nuw i32 %i.ad to i8
  switch i8 %trunc, label %bb.dl [
end_hunk_0
begin_hunk_1_@_ZN6icu_7812RegexCompile14matchStartTypeEv:bb.a

bb.cn:                                            ; preds = %bb.cm
  %i.gl = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !90
  %i.gn = zext nneg i32 %i.gi to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !91
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = and i32 %i.gq, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit264

_ZNK6icu_789UVector6410elementAtiEi.exit264:      ; preds = %bb.cm, %bb.cn
  %i.gs = phi i32 [ %i.gr, %bb.cn ], [ 0, %bb.cm ] ; 4 uses
  %i.gt = icmp eq i32 %.1167, 0
  br i1 %i.gt, label %bb.co, label %.split209

.split209:                                        ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit264
  %i.gu = sub nsw i32 2147483647, %.1167
  %i.gv = icmp samesign ugt i32 %i.gu, %i.gs
  %i.gw = add nsw i32 %i.gs, %.1167
  %.0.i265 = select i1 %i.gv, i32 %i.gw, i32 2147483647
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit256

bb.co:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit264
  %i.gx = and i32 %i.ac, 16777215                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.gz = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.gy, i32 noundef %i.gx)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  %i.ha = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 160
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !142
  %i.hd = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.hc, i32 noundef %i.gz)
          to label %.split211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.split211:                                        ; preds = %bb.cp
  %i.he = load ptr, ptr %i.e, align 8, !tbaa !28  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 148
  store i32 %i.gx, ptr %i.hf, align 4, !tbaa !143
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 152
  store i32 %i.gs, ptr %i.hg, align 8, !tbaa !144
  %i.hh = add nsw i32 %.0157331, 1
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit256

bb.cq:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit246
  %i.hi = add nsw i32 %.1171329, 1                ; 4 uses
  %i.hj = icmp sgt i32 %.1171329, -2
  %i.hk = icmp slt i32 %i.hi, %i.u
  %or.cond.i267 = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %or.cond.i267, label %bb.cr, label %_ZNK6icu_789UVector6410elementAtiEi.exit268

bb.cr:                                            ; preds = %bb.cq
  %i.hl = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !90
  %i.hn = zext nneg i32 %i.hi to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !91
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = and i32 %i.hq, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit268

_ZNK6icu_789UVector6410elementAtiEi.exit268:      ; preds = %bb.cq, %bb.cr
  %i.hs = phi i32 [ %i.hr, %bb.cr ], [ 0, %bb.cq ] ; 3 uses
  %i.ht = icmp eq i32 %.1167, 0
  br i1 %i.ht, label %bb.cs, label %.split213

.split213:                                        ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit268
  %i.hu = sub nsw i32 2147483647, %.1167
  %i.hv = icmp samesign ugt i32 %i.hu, %i.hs
  %i.hw = add nsw i32 %i.hs, %.1167
  %.0.i269 = select i1 %i.hv, i32 %i.hw, i32 2147483647
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit256

bb.cs:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit268
  %i.hx = and i32 %i.ac, 16777215
  %i.hy = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.hz = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.hy, i32 noundef %i.hx)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  invoke void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %7)
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN6icu_7812RegexCompile27findCaseInsensitiveStartersEiPNS_10UnicodeSetE(i32 noundef %i.hz, ptr noundef nonnull %7)
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.ia = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 160
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !142
  %i.id = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6addAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %i.ic, ptr noundef nonnull align 8 dereferenceable(200) %7)
          to label %.split215 unwind label %bb.cx ; 0 uses

.split215:                                        ; preds = %bb.cv
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.ie = add nsw i32 %.0157331, 2
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit256

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bl, %bb.bu, %bb.ce, %bb.cl, %bb.cp, %bb.co, %bb.bx, %bb.bw, %bb.u, %bb.t, %bb.k, %bb.n, %bb.m, %bb.q, %bb.p, %bb.x, %bb.dc, %bb.cs, %.preheader.i, %bb.dj, %.lr.ph, %bb.dq, %bb.dz, %bb.dx, %bb.dv, %bb.b
  %lpad.loopexit.split-lp396 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cw:                                            ; preds = %bb.ct
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %7) #10
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pn = phi { ptr, i32 } [ %i.ig, %bb.cx ], [ %i.if, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %.loopexit.split-lp

bb.cz:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246
  %i.ih = add nsw i32 %.1171329, 1                ; 2 uses
  %i.ii = icmp sgt i32 %.1171329, -2
  %i.ij = icmp slt i32 %i.ih, %i.u
  %or.cond.i271 = select i1 %i.ii, i1 %i.ij, i1 false
  br i1 %or.cond.i271, label %bb.da, label %_ZNK6icu_789UVector6410elementAtiEi.exit272

bb.da:                                            ; preds = %bb.cz
  %i.ik = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !90
  %i.im = zext nneg i32 %i.ih to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.im
  %i.io = load i64, ptr %i.in, align 8, !tbaa !91
  %i.ip = trunc i64 %i.io to i32
  %i.iq = and i32 %i.ip, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit272

_ZNK6icu_789UVector6410elementAtiEi.exit272:      ; preds = %bb.cz, %bb.da
  %i.ir = phi i32 [ %i.iq, %bb.da ], [ 0, %bb.cz ] ; 3 uses
  %i.is = add nsw i32 %.1171329, 2                ; 2 uses
  %i.it = icmp sgt i32 %.1171329, -3
  %i.iu = icmp slt i32 %i.is, %i.u
  %or.cond.i273 = select i1 %i.it, i1 %i.iu, i1 false
  br i1 %or.cond.i273, label %_ZNK6icu_789UVector6410elementAtiEi.exit274, label %_ZNK6icu_789UVector6410elementAtiEi.exit274.thread

_ZNK6icu_789UVector6410elementAtiEi.exit274:      ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit272
  %i.iv = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !90
  %i.ix = zext nneg i32 %i.is to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !91
  %i.ja = and i64 %i.iz, 4294967295
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %_ZNK6icu_789UVector6410elementAtiEi.exit274.thread, label %bb.dd

_ZNK6icu_789UVector6410elementAtiEi.exit274.thread: ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit272, %_ZNK6icu_789UVector6410elementAtiEi.exit274
  %i.jc = icmp sgt i32 %i.ae, %i.ir
  br i1 %i.jc, label %bb.db, label %_ZNK6icu_789UVector3210elementAtiEi.exit276

bb.db:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit274.thread
  %i.jd = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.je = zext nneg i32 %i.ir to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !86
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit276

_ZNK6icu_789UVector3210elementAtiEi.exit276:      ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit274.thread, %bb.db
  %i.jh = phi i32 [ %i.jg, %bb.db ], [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit274.thread ]
  %i.ji = icmp sgt i32 %i.jh, %.1167
  br i1 %i.ji, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit276
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.1167, i32 noundef %i.ir)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit276, %bb.dc, %_ZNK6icu_789UVector6410elementAtiEi.exit274
  %i.jj = add nsw i32 %.1171329, 3
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit256

bb.de:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246
  %i.jk = icmp eq i32 %i.ad, 37
  %i.jl = select i1 %i.jk, i32 2, i32 1
  br label %.thread288.outer

.thread288.outer:                                 ; preds = %..thread288_crit_edge, %bb.de
  %.pre345352.ph = phi i32 [ %.pre345.pre, %..thread288_crit_edge ], [ %i.u, %bb.de ]
  %.pre343350.ph = phi ptr [ %.pre343.pre, %..thread288_crit_edge ], [ %i.r, %bb.de ]
  %.3173.ph = phi i32 [ %i.jq, %..thread288_crit_edge ], [ %.1171329, %bb.de ]
  %.0.ph = phi i32 [ %.2, %..thread288_crit_edge ], [ %i.jl, %bb.de ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.pre343350.ph, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !90
  %i.jo = load i32, ptr %i.m, align 8
  %i.jp = load ptr, ptr %i.n, align 8
  br label %.thread288.outer387

.thread288.outer387:                              ; preds = %.thread288.outer387.backedge, %.thread288.outer
  %.3173.ph388 = phi i32 [ %.3173.ph, %.thread288.outer ], [ %i.jq, %.thread288.outer387.backedge ]
  %.0.ph389 = phi i32 [ %.0.ph, %.thread288.outer ], [ %.0.ph389.be, %.thread288.outer387.backedge ] ; 3 uses
  br label %.thread288

.thread288:                                       ; preds = %.thread288.outer387, %.thread288
  %.3173 = phi i32 [ %i.jq, %.thread288 ], [ %.3173.ph388, %.thread288.outer387 ] ; 2 uses
  %i.jq = add nsw i32 %.3173, 1                   ; 7 uses
  %i.jr = icmp sgt i32 %.3173, -2
  %i.js = icmp slt i32 %i.jq, %.pre345352.ph
  %or.cond.i277 = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %or.cond.i277, label %_ZNK6icu_789UVector6410elementAtiEi.exit278, label %.thread288, !llvm.loop !139

_ZNK6icu_789UVector6410elementAtiEi.exit278:      ; preds = %.thread288
  %i.jt = zext nneg i32 %i.jq to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jt
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !91 ; 2 uses
  %i.jw = trunc i64 %i.jv to i32                  ; 2 uses
  %i.jx = lshr i32 %i.jw, 24                      ; 3 uses
  %i.jy = icmp eq i32 %i.jx, 37
  %i.jz = add nsw i32 %.0.ph389, 2
  %spec.select = select i1 %i.jy, i32 %i.jz, i32 %.0.ph389
  %i.ka = icmp eq i32 %i.jx, 44
  %8 = add nsw i32 %.0.ph389, 1
  %.2 = select i1 %i.ka, i32 %8, i32 %spec.select ; 5 uses
  %trunc293 = trunc nuw i32 %i.jx to i8
  switch i8 %trunc293, label %.thread288.outer387.backedge [
    i8 38, label %bb.df
    i8 48, label %bb.df
    i8 6, label %bb.dg
  ]

bb.df:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit278, %_ZNK6icu_789UVector6410elementAtiEi.exit278
  %i.kb = add nsw i32 %.2, -1                     ; 2 uses
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %_ZNK6icu_789UVector3210elementAtiEi.exit256, label %.thread288.outer387.backedge

.thread288.outer387.backedge:                     ; preds = %bb.df, %_ZNK6icu_789UVector6410elementAtiEi.exit278, %bb.dg, %_ZNK6icu_789UVector3210elementAtiEi.exit280
  %.0.ph389.be = phi i32 [ %.2, %_ZNK6icu_789UVector3210elementAtiEi.exit280 ], [ %.2, %bb.dg ], [ %.2, %_ZNK6icu_789UVector6410elementAtiEi.exit278 ], [ %i.kb, %bb.df ]
  br label %.thread288.outer387, !llvm.loop !139

bb.dg:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit278
  %i.kd = and i32 %i.jw, 16777215                 ; 3 uses
  %i.ke = icmp samesign ugt i32 %i.kd, %i.jq
  br i1 %i.ke, label %bb.dh, label %.thread288.outer387.backedge

bb.dh:                                            ; preds = %bb.dg
  %i.kf = icmp sgt i32 %i.jo, %i.kd
  br i1 %i.kf, label %bb.di, label %_ZNK6icu_789UVector3210elementAtiEi.exit280

bb.di:                                            ; preds = %bb.dh
  %i.kg = and i64 %i.jv, 16777215
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !86
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit280

_ZNK6icu_789UVector3210elementAtiEi.exit280:      ; preds = %bb.dh, %bb.di
  %i.kj = phi i32 [ %i.ki, %bb.di ], [ 0, %bb.dh ]
  %i.kk = icmp slt i32 %.1167, %i.kj
  br i1 %i.kk, label %bb.dj, label %.thread288.outer387.backedge

bb.dj:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit280
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.1167, i32 noundef %i.kd)
          to label %..thread288_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..thread288_crit_edge:                            ; preds = %bb.dj
  %.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !28
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 32
  %.pre343.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !66 ; 2 uses
  %.phi.trans.insert344.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre343.pre, i64 8
  %.pre345.pre = load i32, ptr %.phi.trans.insert344.phi.trans.insert, align 8
  br label %.thread288.outer, !llvm.loop !139

bb.dk:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246
  call void @abort() #11
  unreachable

bb.dl:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit246
  call void @abort() #11
  unreachable

_ZNK6icu_789UVector3210elementAtiEi.exit256:      ; preds = %bb.df, %bb.ch, %bb.cg, %bb.cb, %bb.ca, %.split215, %.split213, %.split211, %.split209, %bb.ci, %bb.cl, %_ZNK6icu_789UVector3210elementAtiEi.exit262, %bb.ce, %_ZNK6icu_789UVector3210elementAtiEi.exit258, %.split207, %.split205, %.split203, %.split201, %.split199, %.split197, %.split195, %.split193, %.split191, %.split189, %.split187, %.split185, %.split183, %.split181, %bb.s, %bb.v, %bb.o, %bb.r, %.split179, %.split177, %.split176, %.split, %bb.cf, %bb.dd, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %_ZNK6icu_789UVector3210elementAtiEi.exit246, %bb.g, %bb.f, %bb.i, %bb.h
  %.4174 = phi i32 [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1171329, %bb.g ], [ %.1171329, %bb.f ], [ %.1171329, %bb.i ], [ %.1171329, %bb.h ], [ %i.gi, %.split209 ], [ %.1171329, %.split176 ], [ %.1171329, %.split179 ], [ %.1171329, %bb.o ], [ %.1171329, %bb.s ], [ %.1171329, %.split183 ], [ %.1171329, %.split187 ], [ %.1171329, %.split191 ], [ %.1171329, %.split195 ], [ %.1171329, %.split199 ], [ %.1171329, %.split203 ], [ %.1171329, %.split207 ], [ %.1171329, %bb.cf ], [ %.2172, %bb.cb ], [ %.1171329, %bb.ch ], [ %.1171329, %bb.ci ], [ %i.gi, %.split211 ], [ %i.jj, %bb.dd ], [ %i.hi, %.split215 ], [ %i.hi, %.split213 ], [ %.1171329, %.split ], [ %.1171329, %.split177 ], [ %.1171329, %bb.r ], [ %.1171329, %bb.v ], [ %.1171329, %.split181 ], [ %.1171329, %.split185 ], [ %.1171329, %.split189 ], [ %.1171329, %.split193 ], [ %.1171329, %.split197 ], [ %.1171329, %.split201 ], [ %.1171329, %.split205 ], [ %.2172, %_ZNK6icu_789UVector3210elementAtiEi.exit258 ], [ %.2172, %bb.ce ], [ %.1171329, %_ZNK6icu_789UVector3210elementAtiEi.exit262 ], [ %.1171329, %bb.cl ], [ %.2172, %bb.ca ], [ %.1171329, %bb.cg ], [ %i.jq, %bb.df ]
  %.3169 = phi i32 [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.1167, %bb.g ], [ %.1167, %bb.f ], [ %.1167, %bb.i ], [ %.1167, %bb.h ], [ %.0.i265, %.split209 ], [ 1, %.split176 ], [ 1, %.split179 ], [ %.1167, %bb.o ], [ %.1167, %bb.s ], [ 1, %.split183 ], [ 1, %.split187 ], [ 1, %.split191 ], [ 1, %.split195 ], [ 1, %.split199 ], [ 1, %.split203 ], [ 1, %.split207 ], [ %.1167, %bb.cf ], [ %i.fk, %bb.cb ], [ %i.fy, %bb.ch ], [ %.1167, %bb.ci ], [ %i.gs, %.split211 ], [ %.1167, %bb.dd ], [ %i.hs, %.split215 ], [ %.0.i269, %.split213 ], [ %.0.i, %.split ], [ %.0.i247, %.split177 ], [ 0, %bb.r ], [ 0, %bb.v ], [ %.0.i248, %.split181 ], [ %.0.i249, %.split185 ], [ %.0.i250, %.split189 ], [ %.0.i251, %.split193 ], [ %.0.i252, %.split197 ], [ %.0.i253, %.split201 ], [ %.0.i254, %.split205 ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit258 ], [ %.1167, %bb.ce ], [ %.1167, %_ZNK6icu_789UVector3210elementAtiEi.exit262 ], [ %.1167, %bb.cl ], [ 0, %bb.ca ], [ 0, %bb.cg ], [ %.1167, %bb.df ]
  %.14 = phi i32 [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0157331, %bb.g ], [ %.0157331, %bb.f ], [ %.0157331, %bb.i ], [ %.0157331, %bb.h ], [ %.0157331, %.split209 ], [ %i.ar, %.split176 ], [ %i.bb, %.split179 ], [ %.0157331, %bb.o ], [ %.0157331, %bb.s ], [ %i.cd, %.split183 ], [ %i.cp, %.split187 ], [ %i.dd, %.split191 ], [ %i.dq, %.split195 ], [ %i.ed, %.split199 ], [ %i.es, %.split203 ], [ %i.fb, %.split207 ], [ %.0157331, %bb.cf ], [ %.0157331, %bb.cb ], [ %.0157331, %bb.ch ], [ %.0157331, %bb.ci ], [ %i.hh, %.split211 ], [ %.0157331, %bb.dd ], [ %i.ie, %.split215 ], [ %.0157331, %.split213 ], [ %.0157331, %.split ], [ %.0157331, %.split177 ], [ %i.bl, %bb.r ], [ %i.bu, %bb.v ], [ %.0157331, %.split181 ], [ %.0157331, %.split185 ], [ %.0157331, %.split189 ], [ %.0157331, %.split193 ], [ %.0157331, %.split197 ], [ %.0157331, %.split201 ], [ %.0157331, %.split205 ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit258 ], [ %.0157331, %bb.ce ], [ %.0157331, %_ZNK6icu_789UVector3210elementAtiEi.exit262 ], [ %.0157331, %bb.cl ], [ %.0157331, %bb.ca ], [ %.0157331, %bb.cg ], [ %.0157331, %bb.df ] ; 2 uses
  %.1156 = phi i8 [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ %.0155332, %_ZNK6icu_789UVector3210elementAtiEi.exit246 ], [ 1, %bb.g ], [ 0, %bb.f ], [ 1, %bb.i ], [ 0, %bb.h ], [ 0, %.split209 ], [ 0, %.split176 ], [ 0, %.split179 ], [ 0, %bb.o ], [ 0, %bb.s ], [ 0, %.split183 ], [ 0, %.split187 ], [ 0, %.split191 ], [ 0, %.split195 ], [ 0, %.split199 ], [ 0, %.split203 ], [ 0, %.split207 ], [ 0, %bb.cf ], [ 0, %bb.cb ], [ 0, %bb.ch ], [ 0, %bb.ci ], [ 0, %.split211 ], [ 0, %bb.dd ], [ 0, %.split215 ], [ 0, %.split213 ], [ 0, %.split ], [ 0, %.split177 ], [ 0, %bb.r ], [ 0, %bb.v ], [ 0, %.split181 ], [ 0, %.split185 ], [ 0, %.split189 ], [ 0, %.split193 ], [ 0, %.split197 ], [ 0, %.split201 ], [ 0, %.split205 ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit258 ], [ 0, %bb.ce ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit262 ], [ 0, %bb.cl ], [ 0, %bb.ca ], [ 0, %bb.cg ], [ %.0155332, %bb.df ]
  %i.kl = add nsw i32 %.4174, 1                   ; 2 uses
  %i.km = icmp slt i32 %i.kl, %i.j
  br i1 %i.km, label %bb.d, label %_ZNK6icu_789UVector3210elementAtiEi.exit284.loopexit, !llvm.loop !140

_ZNK6icu_789UVector3210elementAtiEi.exit284.loopexit: ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit256
  %i.kn = icmp eq i32 %.14, 1
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit284

_ZNK6icu_789UVector3210elementAtiEi.exit284:      ; preds = %.preheader307, %_ZNK6icu_789UVector3210elementAtiEi.exit284.loopexit
  %.0157.lcssa = phi i1 [ false, %.preheader307 ], [ %i.kn, %_ZNK6icu_789UVector3210elementAtiEi.exit284.loopexit ]
  %i.ko = load ptr, ptr %i.e, align 8, !tbaa !28  ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 176
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !145
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 160
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !142 ; 2 uses
  %.not.i = icmp eq ptr %i.ks, null
  br i1 %.not.i, label %_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit284, %bb.dn
  %.08.i = phi i32 [ %i.lc, %bb.dn ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit284 ] ; 4 uses
  %i.kt = invoke noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ks, i32 noundef %.08.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.preheader.i
  %.not7.i = icmp eq i8 %i.kt, 0
  br i1 %.not7.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.noexc
  %i.ku = and i32 %.08.i, 7
  %i.kv = shl nuw nsw i32 1, %i.ku
  %i.kw = lshr i32 %.08.i, 3
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kx ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !11
  %i.la = trunc nuw i32 %i.kv to i8
  %i.lb = or i8 %i.kz, %i.la
  store i8 %i.lb, ptr %i.ky, align 1, !tbaa !11
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.noexc
  %i.lc = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.lc, 256
  br i1 %exitcond.not.i, label %_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit.loopexit, label %.preheader.i, !llvm.loop !0

_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit.loopexit: ; preds = %bb.dn
  %.pre348 = load ptr, ptr %i.e, align 8, !tbaa !28
  br label %_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit

_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit: ; preds = %_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit.loopexit, %_ZNK6icu_789UVector3210elementAtiEi.exit284
  %i.ld = phi ptr [ %.pre348, %_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit.loopexit ], [ %i.ko, %_ZNK6icu_789UVector3210elementAtiEi.exit284 ] ; 6 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 144 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !141 ; 2 uses
  %i.lg = icmp eq i32 %i.lf, 3
  br i1 %i.lg, label %bb.ee, label %bb.do

bb.do:                                            ; preds = %_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit
  br i1 %.0157.lcssa, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 124
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !70
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 148
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !143
  %i.ln = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.lk, i32 noundef %i.lm)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dr:                                            ; preds = %bb.dq
  %i.lo = load ptr, ptr %i.e, align 8, !tbaa !28  ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 144
  store i32 5, ptr %i.lp, align 8, !tbaa !141
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 168
  store i32 %i.ln, ptr %i.lq, align 8, !tbaa !146
  br label %bb.ee

bb.ds:                                            ; preds = %bb.dp, %bb.do
  %i.lr = icmp eq i32 %i.lf, 4
  br i1 %i.lr, label %bb.ee, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ld, i64 124
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !70
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i32 0, ptr %i.le, align 8, !tbaa !141
  br label %bb.ee

bb.dv:                                            ; preds = %bb.dt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ld, i64 160
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !142
  %i.lx = invoke noundef i32 @_ZNK6icu_7810UnicodeSet4sizeEv(ptr noundef nonnull align 8 dereferenceable(200) %i.lw)
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %bb.dv
  %i.ly = icmp eq i32 %i.lx, 1
  %i.lz = load ptr, ptr %i.e, align 8, !tbaa !28  ; 3 uses
  br i1 %i.ly, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 144
  store i32 1, ptr %i.ma, align 8, !tbaa !141
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 160
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !142
  %i.md = invoke noundef i32 @_ZNK6icu_7810UnicodeSet6charAtEi(ptr noundef nonnull align 8 dereferenceable(200) %i.mc, i32 noundef 0)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dy:                                            ; preds = %bb.dx
  %i.me = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 168
  store i32 %i.md, ptr %i.mf, align 8, !tbaa !146
  br label %bb.ee

bb.dz:                                            ; preds = %bb.dw
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 160
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !142
  %i.mi = invoke noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEii(ptr noundef nonnull align 8 dereferenceable(200) %i.mh, i32 noundef 0, i32 noundef 1114111)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  %i.mj = icmp eq i8 %i.mi, 0
  %.pre349 = load ptr, ptr %i.e, align 8, !tbaa !28 ; 3 uses
  br i1 %i.mj, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.mk = getelementptr inbounds nuw i8, ptr %.pre349, i64 124
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !70
  %i.mm = icmp sgt i32 %i.ml, 0
  br i1 %i.mm, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.mn = getelementptr inbounds nuw i8, ptr %.pre349, i64 144
  store i32 2, ptr %i.mn, align 8, !tbaa !141
  br label %bb.ee
end_hunk_1
