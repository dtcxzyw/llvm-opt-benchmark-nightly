Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_context?download=true
inline.NumInlined: 9919
inline.NumDeleted: 2463
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb:bb.a
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.p, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit24

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %.pre.i21 = load ptr, ptr %i.cj, align 8, !tbaa !647 ; 2 uses
  %.phi.trans.insert.i22 = getelementptr inbounds i8, ptr %.pre.i21, i64 -4
  %.pre2.i23 = load i32, ptr %.phi.trans.insert.i22, align 4, !tbaa !644
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit24

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit24: ; preds = %bb.o, %bb.p
  %i.cr = phi i32 [ %.pre2.i23, %bb.p ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i21, %bb.p ], [ %i.ck, %bb.o ] ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %1, ptr %i.cv, align 4, !tbaa !644
  %i.cw = add i32 %i.cr, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !644
  br label %bb.q

bb.q:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit24, %bb.m, %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !699, !nonnull !585, !align !586
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 888
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !878
  %.not40 = icmp eq ptr %i.da, null
  br i1 %.not40, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNK3smt7context12trace_assignEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %1, ptr %2, i1 noundef zeroext %3)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 9048
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !638 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !73
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i32 %1)
  ret void
}

declare void @_ZNK3smt7context12trace_assignEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728), i32, ptr, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3smt7context3bcpEv(ptr noundef nonnull align 8 dereferenceable(10728) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9032 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9016 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !647  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8656
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9040 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8952 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8944 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8936
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7544 ; 2 uses
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph, %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit
  %i.o = phi ptr [ %i.c, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph ], [ %i.gh, %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit ]
  %i.p = load i32, ptr %i.a, align 8, !tbaa !879
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !644
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

bb.b:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.t = load i32, ptr %i.e, align 8, !tbaa !631
  %i.u = icmp eq i32 %i.t, 1
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !699  ; 2 uses
  br i1 %i.u, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !814, !range !815, !noundef !585
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %._crit_edge.i, label %_ZN3smt7context15get_cancel_flagEv.exit.thread

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.z = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v)
  br i1 %i.z, label %_ZN3smt7context15get_cancel_flagEv.exit, label %_ZN3smt7context15get_cancel_flagEv.exit.thread

_ZN3smt7context15get_cancel_flagEv.exit.thread:   ; preds = %bb.c, %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10492
  store i32 3, ptr %i.aa, align 4, !tbaa !687
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

_ZN3smt7context15get_cancel_flagEv.exit:          ; preds = %._crit_edge.i
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !879 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !647
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !644 ; 2 uses
  %i.ag = add i32 %i.ab, 1
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !879
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !880
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.g, align 8, !tbaa !880
  %i.aj = xor i32 %i.af, 1                        ; 3 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !788
  %i.al = zext i32 %i.af to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !699, !nonnull !585, !align !586
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 712
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !743
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit, label %.critedge101

_ZNK3smt7context25binary_clause_opt_enabledEv.exit: ; preds = %_ZN3smt7context15get_cancel_flagEv.exit
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !584, !nonnull !585, !align !586
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 517
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !1220, !range !815, !noundef !585
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.d, label %.critedge101

bb.d:                                             ; preds = %_ZNK3smt7context25binary_clause_opt_enabledEv.exit
  %i.au = shl nuw nsw i64 %i.al, 3
  %i.av = or disjoint i64 %i.au, 1                ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !882 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN3smt10watch_list12end_literalsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !644
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !644
  %i.be = zext i32 %i.bd to i64
  br label %_ZN3smt10watch_list12end_literalsEv.exit

_ZN3smt10watch_list12end_literalsEv.exit:         ; preds = %bb.d, %bb.e
  %i.bf = phi ptr [ %i.bb, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.bg = phi i64 [ %i.be, %bb.e ], [ 0, %bb.d ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bg ; 2 uses
  %.not136 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not136, label %.critedge101, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3smt10watch_list12end_literalsEv.exit, %bb.h
  %.076137 = phi ptr [ %i.bz, %bb.h ], [ %i.bf, %_ZN3smt10watch_list12end_literalsEv.exit ] ; 2 uses
  %.sroa.059.0.copyload = load i32, ptr %.076137, align 4, !tbaa !644 ; 3 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !741
  %i.bj = zext i32 %.sroa.059.0.copyload to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !742
  switch i8 %i.bl, label %bb.h [
    i8 -1, label %.critedge
    i8 0, label %bb.g
  ]

.critedge:                                        ; preds = %.lr.ph
  %i.bm = load i32, ptr %i.k, align 4, !tbaa !1221
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.k, align 4, !tbaa !1221
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 9080 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !883
  %i.bq = icmp ne ptr %i.bp, null
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.bs = load i8, ptr %i.br, align 8, !range !815
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = select i1 %i.bq, i1 true, i1 %i.bt
  br i1 %i.bu, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.bv = xor i32 %.sroa.059.0.copyload, 1
  store i64 %i.av, ptr %i.bo, align 8, !tbaa !643
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 9088
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !644
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

bb.g:                                             ; preds = %.lr.ph
  %i.bx = load i32, ptr %i.k, align 4, !tbaa !1221
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.k, align 4, !tbaa !1221
  tail call void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %.sroa.059.0.copyload, ptr nonnull %i.aw, i1 noundef zeroext false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %.076137, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bz, %i.bh
  br i1 %.not, label %.critedge101, label %.lr.ph, !llvm.loop !1215

.critedge101:                                     ; preds = %bb.h, %_ZN3smt10watch_list12end_literalsEv.exit, %_ZN3smt7context15get_cancel_flagEv.exit, %_ZNK3smt7context25binary_clause_opt_enabledEv.exit
  %i.ca = load ptr, ptr %i.am, align 8, !tbaa !882 ; 8 uses
  %.not.i.i104 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i104, label %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit, label %_ZN3smt10watch_list10end_clauseEv.exit

_ZN3smt10watch_list10end_clauseEv.exit:           ; preds = %.critedge101
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !644 ; 3 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd ; 3 uses
  %.not97141 = icmp eq i32 %i.cc, 0
  br i1 %.not97141, label %._crit_edge145.thread182, label %.lr.ph144

.lr.ph144:                                        ; preds = %_ZN3smt10watch_list10end_clauseEv.exit, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %_ZN3smt10watch_list10end_clauseEv.exit ] ; 3 uses
  %.084143 = phi ptr [ %i.ga, %bb.v ], [ %i.ca, %_ZN3smt10watch_list10end_clauseEv.exit ] ; 7 uses
  %.089142 = phi ptr [ %.594.ph, %bb.v ], [ %i.ca, %_ZN3smt10watch_list10end_clauseEv.exit ] ; 11 uses
  %i.cf = load ptr, ptr %.084143, align 8, !tbaa !853 ; 11 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !884 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, %i.aj
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph144
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 2 uses
  %.sroa.017.0.copyload = load i32, ptr %i.cj, align 4, !tbaa !644 ; 2 uses
  store i32 %.sroa.017.0.copyload, ptr %i.cg, align 4, !tbaa !644
  store i32 %i.aj, ptr %i.cj, align 4, !tbaa !644
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph144
  %i.ck = phi i32 [ %.sroa.017.0.copyload, %bb.i ], [ %i.ch, %.lr.ph144 ] ; 3 uses
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !741 ; 2 uses
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !742 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 1
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.cf, ptr %.089142, align 8, !tbaa !853
  %i.cq = getelementptr inbounds nuw i8, ptr %.089142, i64 8
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.cr = load i32, ptr %i.cf, align 4, !tbaa !886 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %.idx = shl nuw nsw i64 %i.cs, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx
  %.not98138 = icmp eq i32 %i.cr, 2
  br i1 %.not98138, label %._crit_edge, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %bb.p
  %.077139 = phi ptr [ %i.dr, %bb.p ], [ %i.cu, %.lr.ph140.preheader ] ; 4 uses
  %.sroa.06.0.copyload = load i32, ptr %.077139, align 4, !tbaa !644 ; 2 uses
  %i.cv = zext i32 %.sroa.06.0.copyload to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !742
  %.not99 = icmp eq i8 %i.cx, -1
  br i1 %.not99, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph140
  %i.cy = xor i32 %.sroa.06.0.copyload, 1
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !788
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !882 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !644 ; 2 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 8
  %i.di = getelementptr inbounds i8, ptr %i.dc, i64 -8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !644
  %i.dk = zext i32 %i.dj to i64
  %.not.i105 = icmp samesign ult i64 %i.dh, %i.dk
  br i1 %.not.i105, label %_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN3smt10watch_list6expandEv(ptr noundef nonnull align 8 dereferenceable(8) %i.db)
  %.pre.i = load ptr, ptr %i.db, align 8, !tbaa !882 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -12
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !644 ; 2 uses
  %.pre3.i = zext i32 %.pre2.i to i64
  br label %_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit

_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit: ; preds = %bb.n, %bb.o
  %.pre-phi.i = phi i64 [ %.pre3.i, %bb.o ], [ %i.dg, %bb.n ]
  %i.dl = phi i32 [ %.pre2.i, %bb.o ], [ %i.df, %bb.n ]
  %i.dm = phi ptr [ %.pre.i, %bb.o ], [ %i.dc, %bb.n ] ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.pre-phi.i
  store ptr %i.cf, ptr %i.do, align 8, !tbaa !853
  %i.dp = add i32 %i.dl, 8
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !644
  %.sroa.04.0.copyload = load i32, ptr %.077139, align 4, !tbaa !644
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %.sroa.04.0.copyload, ptr %i.dq, align 4, !tbaa !644
  store i32 %i.aj, ptr %.077139, align 4, !tbaa !644
  br label %bb.v

bb.p:                                             ; preds = %.lr.ph140
  %i.dr = getelementptr inbounds nuw i8, ptr %.077139, i64 4 ; 2 uses
  %.not98 = icmp eq ptr %i.dr, %i.ct
  br i1 %.not98, label %._crit_edge, label %.lr.ph140, !llvm.loop !1216

._crit_edge:                                      ; preds = %bb.p, %bb.l
  %i.ds = icmp eq i8 %i.co, -1
  br i1 %i.ds, label %.preheader, label %bb.s

.preheader:                                       ; preds = %._crit_edge
  %i.dt = ptrtoaddr ptr %i.ca to i64
  %.089142208.le = ptrtoaddr ptr %.089142 to i64
  %i.du = icmp ult ptr %.084143, %i.ce
  br i1 %i.du, label %.lr.ph148.preheader, label %._crit_edge149

.lr.ph148.preheader:                              ; preds = %.preheader
  %1 = zext i32 %i.cc to i64
  %i.dv = shl i64 %indvar, 3
  %2 = xor i64 %i.dv, -1
  %i.dw = add i64 %2, %1                          ; 2 uses
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dw, 216
  br i1 %min.iters.check, label %.lr.ph148.preheader212, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph148.preheader
  %i.dz = mul i64 %indvar, -8
  %i.ea = sub i64 %i.dz, %i.dt
  %i.eb = add i64 %i.ea, %.089142208.le
  %i.ec = add i64 %i.eb, -1
  %diff.check = icmp ult i64 %i.ec, 31
  br i1 %diff.check, label %.lr.ph148.preheader212, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dy, 4611686018427387900     ; 3 uses
  %i.ed = shl i64 %n.vec, 3                       ; 2 uses
  %i.ee = getelementptr i8, ptr %.084143, i64 %i.ed
  %i.ef = getelementptr i8, ptr %.089142, i64 %i.ed ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.084143, i64 %i.eg ; 2 uses
  %next.gep209 = getelementptr i8, ptr %.089142, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !853
  %wide.load210 = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !853
  %i.ei = getelementptr i8, ptr %next.gep209, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep209, align 8, !tbaa !853
  store <2 x ptr> %wide.load210, ptr %i.ei, align 8, !tbaa !853
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !1217

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %._crit_edge149, label %.lr.ph148.preheader212

.lr.ph148.preheader212:                           ; preds = %vector.memcheck, %.lr.ph148.preheader, %middle.block
  %.185147.ph = phi ptr [ %.084143, %vector.memcheck ], [ %.084143, %.lr.ph148.preheader ], [ %i.ee, %middle.block ]
  %.190146.ph = phi ptr [ %.089142, %vector.memcheck ], [ %.089142, %.lr.ph148.preheader ], [ %i.ef, %middle.block ]
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader212, %.lr.ph148
  %.185147 = phi ptr [ %i.em, %.lr.ph148 ], [ %.185147.ph, %.lr.ph148.preheader212 ] ; 2 uses
  %.190146 = phi ptr [ %i.el, %.lr.ph148 ], [ %.190146.ph, %.lr.ph148.preheader212 ] ; 2 uses
  %i.ek = load ptr, ptr %.185147, align 8, !tbaa !853
  store ptr %i.ek, ptr %.190146, align 8, !tbaa !853
  %i.el = getelementptr inbounds nuw i8, ptr %.190146, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.185147, i64 8 ; 2 uses
  %i.en = icmp ult ptr %i.em, %i.ce
  br i1 %i.en, label %.lr.ph148, label %._crit_edge149, !llvm.loop !1218

._crit_edge149:                                   ; preds = %.lr.ph148, %middle.block, %.preheader
  %.190.lcssa = phi ptr [ %.089142, %.preheader ], [ %i.ef, %middle.block ], [ %i.el, %.lr.ph148 ]
  %i.eo = load ptr, ptr %i.am, align 8, !tbaa !882 ; 3 uses
  %.not.i106 = icmp eq ptr %i.eo, null
  br i1 %.not.i106, label %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge149
  %i.ep = ptrtoint ptr %.190.lcssa to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = trunc i64 %i.er to i32
  %i.et = getelementptr inbounds i8, ptr %i.eo, i64 -12
  store i32 %i.es, ptr %i.et, align 4, !tbaa !644
  br label %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit

_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit: ; preds = %._crit_edge149, %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 9080 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !883
  %i.ew = icmp ne ptr %i.ev, null
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.ey = load i8, ptr %i.ex, align 8, !range !815
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = select i1 %i.ew, i1 true, i1 %i.ez
  br i1 %i.fa, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit
  %i.fb = ptrtoint ptr %i.cf to i64
  store i64 %i.fb, ptr %i.eu, align 8, !tbaa !643
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 9088
  store i32 -2, ptr %i.fc, align 8, !tbaa !644
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

bb.s:                                             ; preds = %._crit_edge
  store ptr %i.cf, ptr %.089142, align 8, !tbaa !853
  %i.fd = getelementptr inbounds nuw i8, ptr %.089142, i64 8 ; 3 uses
  %i.fe = load i32, ptr %i.l, align 8, !tbaa !1222
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.l, align 8, !tbaa !1222
  tail call void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %i.ck, ptr nonnull %i.cf, i1 noundef zeroext false)
  %i.fg = load ptr, ptr %i.i, align 8, !tbaa !584, !nonnull !585, !align !586
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 524
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !696, !range !815, !noundef !585
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = and i32 %i.fl, 33554432
  %.not128 = icmp eq i32 %i.fm, 0
  br i1 %.not128, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fn = lshr i32 %i.ck, 1
  %i.fo = load ptr, ptr %i.m, align 8, !tbaa !629
  %i.fp = zext nneg i32 %i.fn to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !760
  %i.fs = load ptr, ptr %i.n, align 8, !tbaa !622 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !73
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.fv = load ptr, ptr %i.fu, align 8
  tail call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef %i.fr), !inline_history !14
  %i.fw = load ptr, ptr %i.n, align 8, !tbaa !622 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !73
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8
  tail call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fw), !inline_history !14
  br label %bb.v

bb.v:                                             ; preds = %bb.k, %_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit, %bb.u, %bb.t, %bb.s
  %.594.ph = phi ptr [ %i.fd, %bb.t ], [ %i.fd, %bb.u ], [ %.089142, %_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit ], [ %i.fd, %bb.s ], [ %i.cq, %bb.k ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.084143, i64 8 ; 2 uses
  %.not97 = icmp eq ptr %i.ga, %i.ce
  %indvar.next = add i64 %indvar, 1
  br i1 %.not97, label %._crit_edge145, label %.lr.ph144, !llvm.loop !1219

._crit_edge145:                                   ; preds = %bb.v
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !882 ; 2 uses
  %.not.i107 = icmp eq ptr %.pre, null
  br i1 %.not.i107, label %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit, label %._crit_edge145.thread182

._crit_edge145.thread182:                         ; preds = %_ZN3smt10watch_list10end_clauseEv.exit, %._crit_edge145
  %.089.lcssa185 = phi ptr [ %.594.ph, %._crit_edge145 ], [ %i.ca, %_ZN3smt10watch_list10end_clauseEv.exit ]
  %i.gb = phi ptr [ %.pre, %._crit_edge145 ], [ %i.ca, %_ZN3smt10watch_list10end_clauseEv.exit ] ; 2 uses
  %i.gc = ptrtoint ptr %.089.lcssa185 to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds i8, ptr %i.gb, i64 -12
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !644
  br label %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit

_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit: ; preds = %.critedge101, %._crit_edge145.thread182, %._crit_edge145
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !647 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit, %bb.a, %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit, %.critedge, %bb.f, %bb.r, %_ZN3smt7context15get_cancel_flagEv.exit.thread
  %.11 = phi i1 [ true, %_ZN3smt7context15get_cancel_flagEv.exit.thread ], [ false, %.critedge ], [ false, %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit ], [ false, %bb.r ], [ false, %bb.f ], [ true, %bb.a ], [ true, %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit ], [ true, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ]
  ret i1 %.11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(10728) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9080 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !883
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.e = load i8, ptr %i.d, align 8, !range !815
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !643
  store i64 %i.h, ptr %i.a, align 8, !tbaa !643
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9088
  store i32 %2, ptr %i.i, align 8, !tbaa !644
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context14push_new_th_eqEiii(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8864 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !790  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !644  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !644
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN6vectorIN3smt7context9new_th_eqELb0EjE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN3smt7context9new_th_eqELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !790 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
end_hunk_0
begin_hunk_1_@_ZN6vectorIN3smt11replay_unitELb1EjE13expand_vectorEv:bb.a
  %i.ce = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !644 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.cq, %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i ], [ %i.cf, %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i ], [ %i.ak, %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit.i.i ] ; 3 uses
  %i.cg = load ptr, ptr %.047.i.i.i.i.i, align 8, !tbaa !783 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !784, !nonnull !585, !align !586
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !763
  %i.cl = add i32 %i.ck, -1                       ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !763
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.m, label %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ci, ptr noundef nonnull %i.cg)
          to label %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  tail call void @__clang_call_terminate(ptr %i.co) #31
  unreachable

_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l, %.lr.ph.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 24
  %i.cq = add i32 %.08.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !782
  br label %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit.i.i
  %i.cr = phi ptr [ %.pre.i, %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.ak, %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit.i.i ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cs)
  br label %_ZN6vectorIN3smt11replay_unitELb1EjE7destroyEv.exit

_ZN6vectorIN3smt11replay_unitELb1EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIPN3smt11replay_unitEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit, %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.i
  %i.ct = phi ptr [ %i.cd, %_ZSt20uninitialized_move_nIPN3smt11replay_unitEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit ], [ %i.ap, %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.i ]
  store ptr %i.ct, ptr %0, align 8, !tbaa !782
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !644
  br label %bb.o

bb.o:                                             ; preds = %_ZN6vectorIN3smt11replay_unitELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.p:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.293", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !691    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !644
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !644
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !691
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !644  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %narrow = add nuw i32 %i.j, 8                   ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.k = add i32 %i.g, 8
  %.not27 = icmp ugt i32 %narrow, %i.k
  %or.cond = select i1 %.not, i1 %.not27, i1 false
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.l, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !818
  %i.o = load ptr, ptr %1, align 8, !tbaa !819    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !820  ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.o, ptr %i.m, align 8, !tbaa !819
  %i.v = load i64, ptr %i.p, align 8, !tbaa !742
  store i64 %i.v, ptr %i.n, align 8, !tbaa !742
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !820
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.w, ptr %i.y, align 8, !tbaa !820
  store ptr %i.p, ptr %1, align 8, !tbaa !819
  store i64 0, ptr %i.x, align 8, !tbaa !820
  store i8 0, ptr %i.p, align 8, !tbaa !742
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #32
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !819   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !742
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @__cxa_free_exception(ptr %i.l) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %.pn32

bb.j:                                             ; preds = %bb.c
  %i.af = zext i32 %narrow to i64
  %i.ag = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.af) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %0, align 8, !tbaa !691
  store i32 %i.j, ptr %i.ag, align 4, !tbaa !644
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind memory(none) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { nounwind allocsize(0) }

!llvm.module.flags = !{!64, !65}
!llvm.ident = !{!66}
!llvm.errno.tbaa = !{!71}

!0 = distinct !{null}
!1 = distinct !{!1, !757}
!2 = distinct !{!2, !757}
!3 = distinct !{!3, !757}
!4 = distinct !{null, null, null}
!5 = distinct !{!5, !757}
!6 = distinct !{!6, !757}
!7 = distinct !{!7, !757}
!8 = distinct !{!8, !757}
!9 = distinct !{!9, !757}
!10 = distinct !{!10, !757}
!11 = distinct !{null}
!12 = distinct !{!12, !757}
!13 = distinct !{!13, !757}
!14 = distinct !{null}
!15 = distinct !{!15, !757}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{!18, !757}
!19 = distinct !{null, null, null, null}
!20 = distinct !{null, null}
!21 = distinct !{null, null, null}
!22 = distinct !{!22, !757}
!23 = distinct !{!23, !757}
!24 = distinct !{!24, !757}
!25 = distinct !{!25, !757}
!26 = distinct !{!26, !757}
!27 = distinct !{!27, !757}
!28 = distinct !{!28, !757}
!29 = distinct !{!29, !757}
!30 = distinct !{!30, !757}
!31 = distinct !{!31, !757}
!32 = distinct !{!32, !757}
!33 = distinct !{!33, !757}
!34 = distinct !{!34, !757}
!35 = distinct !{null, null, null}
!36 = distinct !{null, null, null, null}
!37 = distinct !{!37, !757}
!38 = distinct !{!38, !757}
!39 = distinct !{!39, !757}
!40 = distinct !{!40, !757}
!41 = distinct !{null, ptr @_ZN3refI5modelEaSEPS0_, null, null, null}
!42 = distinct !{null, null, null, null, null}
!43 = distinct !{ptr @_ZN3smt7context15has_case_splitsEv, null, null, null}
!44 = distinct !{!44, !757}
!45 = distinct !{!45, !757}
!46 = distinct !{!46, !757}
!47 = distinct !{!47, !757}
!48 = distinct !{!48, !757}
!49 = distinct !{null}
!50 = distinct !{!50, !757}
!51 = distinct !{!51, !757}
!52 = distinct !{!52, !757}
!53 = distinct !{!53, !757}
!54 = distinct !{!54, !757}
!55 = distinct !{!55, !757}
!56 = distinct !{null, null}
!57 = distinct !{!57, !757}
!58 = distinct !{!58, !757}
!59 = distinct !{!59, !757}
!60 = distinct !{!60, !757}
!61 = distinct !{!61, !757}
!62 = distinct !{!62, !757}
!63 = distinct !{!63, !757}
!64 = !{i32 8, !"PIC Level", i32 2}
!65 = !{i32 7, !"uwtable", i32 2}
!66 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!67 = !{!"Simple C++ TBAA"}
!68 = !{!"omnipotent char", !67, i64 0}
!69 = !{!"int", !68, i64 0}
!70 = !{!"__libc_errno", !69, i64 0}
!71 = !{!70, !69, i64 0}
!72 = !{!"vtable pointer", !67, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"any pointer", !68, i64 0}
!75 = !{!"p1 _ZTS11ast_manager", !74, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p1 _ZTS10smt_params", !74, i64 0}
!78 = !{!"_ZTSN3smt10statisticsE", !69, i64 0, !69, i64 4, !69, i64 8, !69, i64 12, !69, i64 16, !69, i64 20, !69, i64 24, !69, i64 28, !69, i64 32, !69, i64 36, !69, i64 40, !69, i64 44, !69, i64 48, !69, i64 52, !69, i64 56, !69, i64 60, !69, i64 64, !69, i64 68, !69, i64 72, !69, i64 76, !69, i64 80, !69, i64 84, !69, i64 88, !69, i64 92, !69, i64 96}
!79 = !{!"p1 _ZTS6params", !74, i64 0}
!80 = !{!"_ZTS10params_ref", !79, i64 0}
!81 = !{!"p1 _ZTSSt4pairIPKcjE", !74, i64 0}
!82 = !{!"_ZTS6vectorISt4pairIPKcjELb0EjE", !81, i64 0}
!83 = !{!"_ZTS7svectorISt4pairIPKcjEjE", !82, i64 0}
!84 = !{!"p1 _ZTSSt4pairIPKcdE", !74, i64 0}
!85 = !{!"_ZTS6vectorISt4pairIPKcdELb0EjE", !84, i64 0}
!86 = !{!"_ZTS7svectorISt4pairIPKcdEjE", !85, i64 0}
!87 = !{!"_ZTS10statistics", !83, i64 0, !86, i64 8}
!88 = !{!"p1 _ZTSN3smt7contextE", !74, i64 0}
!89 = !{!"p1 omnipotent char", !74, i64 0}
!90 = !{!"_ZTS6symbol", !89, i64 0}
!91 = !{!"bool", !68, i64 0}
!92 = !{!"_ZTSN3smt5setupE", !88, i64 0, !75, i64 8, !77, i64 16, !90, i64 24, !91, i64 32}
!93 = !{!"long", !68, i64 0}
!94 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !93, i64 0}
!95 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !94, i64 0}
!96 = !{!"_ZTS9stopwatch", !95, i64 0, !94, i64 8, !91, i64 16}
!97 = !{!"_ZTS5timer", !96, i64 0}
!98 = !{!"p1 _ZTSN6region4markE", !74, i64 0}
!99 = !{!"_ZTS6region", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !98, i64 32}
!100 = !{!"p1 _ZTSN11th_rewriter3impE", !74, i64 0}
!101 = !{!"_ZTS11th_rewriter", !100, i64 0, !80, i64 8}
!102 = !{!"p1 _ZTSN7obj_mapI4exprPS0_E13obj_map_entryE", !74, i64 0}
!103 = !{!"_ZTS14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE", !102, i64 0, !69, i64 8, !69, i64 12, !69, i64 16}
!104 = !{!"_ZTS7obj_mapI4exprPS0_E", !103, i64 0}
!105 = !{!"p1 _ZTS7obj_mapI4exprP3appE", !74, i64 0}
!106 = !{!"_ZTS10scoped_ptrI7obj_mapI4exprP3appEE", !105, i64 0}
!107 = !{!"p1 _ZTS7obj_mapI4exprPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !74, i64 0}
!108 = !{!"_ZTS10scoped_ptrI7obj_mapI4exprPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEEE", !107, i64 0}
!109 = !{!"_ZTS17expr_substitution", !75, i64 0, !104, i64 8, !106, i64 32, !108, i64 40, !69, i64 48, !69, i64 48}
!110 = !{!"p1 _ZTS17expr_substitution", !74, i64 0}
!111 = !{!"_ZTS19ref_manager_wrapperI4expr11ast_managerE", !75, i64 0}
!112 = !{!"any p2 pointer", !74, i64 0}
!113 = !{!"p2 _ZTS4expr", !112, i64 0}
!114 = !{!"_ZTS6vectorIP4exprLb0EjE", !113, i64 0}
!115 = !{!"_ZTS10ptr_vectorI4exprE", !114, i64 0}
!116 = !{!"_ZTS15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE", !111, i64 0, !115, i64 8}
!117 = !{!"_ZTS10ref_vectorI4expr11ast_managerE", !116, i64 0}
!118 = !{!"p1 int", !74, i64 0}
!119 = !{!"_ZTS6vectorIjLb0EjE", !118, i64 0}
!120 = !{!"_ZTS7svectorIjjE", !119, i64 0}
!121 = !{!"_ZTS24scoped_expr_substitution", !110, i64 0, !117, i64 8, !120, i64 24}
!122 = !{!"p1 _ZTSN13defined_names4implE", !74, i64 0}
!123 = !{!"p1 _ZTSN13defined_names8pos_implE", !74, i64 0}
!124 = !{!"_ZTS13defined_names", !122, i64 0, !123, i64 8}
!125 = !{!"p1 _ZTS17arith_decl_plugin", !74, i64 0}
!126 = !{!"_ZTS10arith_util", !75, i64 0, !125, i64 8}
!127 = !{!"_ZTS14bv_recognizers", !69, i64 0}
!128 = !{!"p1 _ZTS14bv_decl_plugin", !74, i64 0}
!129 = !{!"_ZTS7bv_util", !127, i64 0, !75, i64 8, !128, i64 16}
!130 = !{!"_ZTS17array_recognizers", !69, i64 0}
!131 = !{!"_ZTS10array_util", !130, i64 0, !75, i64 8}
!132 = !{!"p1 _ZTS15fpa_decl_plugin", !74, i64 0}
!133 = !{!"_ZTS8fpa_util", !75, i64 0, !132, i64 8, !69, i64 16, !126, i64 24, !129, i64 40}
!134 = !{!"p1 _ZTS15seq_decl_plugin", !74, i64 0}
!135 = !{!"p1 _ZTS16char_decl_plugin", !74, i64 0}
!136 = !{!"p1 _ZTS8seq_util", !74, i64 0}
!137 = !{!"_ZTSN8seq_util3strE", !136, i64 0, !75, i64 8, !69, i64 16}
!138 = !{!"p1 _ZTSN8seq_util3rex4infoE", !74, i64 0}
!139 = !{!"_ZTS6vectorIN8seq_util3rex4infoELb1EjE", !138, i64 0}
!140 = !{!"_ZTS5lbool", !68, i64 0}
!141 = !{!"_ZTSN8seq_util3rex4infoE", !140, i64 0, !91, i64 4, !140, i64 8, !69, i64 12, !91, i64 16}
!142 = !{!"_ZTSN8seq_util3rexE", !136, i64 0, !75, i64 8, !69, i64 16, !139, i64 24, !117, i64 32, !141, i64 48, !141, i64 68}
!143 = !{!"_ZTS8seq_util", !75, i64 0, !134, i64 8, !135, i64 16, !69, i64 24, !137, i64 32, !142, i64 56}
!144 = !{!"_ZTS14default_t2uintI4exprE"}
!145 = !{!"_ZTS10bit_vector", !69, i64 0, !69, i64 4, !118, i64 8}
!146 = !{!"_ZTS8obj_markI4expr10bit_vector14default_t2uintIS0_EE", !144, i64 0, !145, i64 8}
!147 = !{!"_ZTSN8ast_mark9decl2uintE"}
!148 = !{!"_ZTS8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEE", !147, i64 0, !145, i64 8}
!149 = !{!"_ZTS8ast_mark", !146, i64 8, !148, i64 32}
!150 = !{!"p1 _ZTS8mpz_cell", !74, i64 0}
!151 = !{!"_ZTS3mpz", !69, i64 0, !69, i64 4, !69, i64 4, !150, i64 8}
!152 = !{!"_ZTS3mpq", !151, i64 0, !151, i64 16}
!153 = !{!"_ZTS8rational", !152, i64 0}
!154 = !{!"p1 _ZTS17default_map_entryIjjE", !74, i64 0}
!155 = !{!"_ZTS14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !154, i64 0, !69, i64 8, !69, i64 12, !69, i64 16}
!156 = !{!"_ZTS9table2mapI17default_map_entryIjjE6u_hash4u_eqE", !155, i64 0}
!157 = !{!"_ZTS3mapIjj6u_hash4u_eqE", !156, i64 0}
!158 = !{!"_ZTS5u_mapIjE", !157, i64 0}
end_hunk_1
