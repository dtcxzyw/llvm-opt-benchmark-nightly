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
  %.pre.i21 = load ptr, ptr %i.cj, align 8, !tbaa !596 ; 2 uses
  %.phi.trans.insert.i22 = getelementptr inbounds i8, ptr %.pre.i21, i64 -4
  %.pre2.i23 = load i32, ptr %.phi.trans.insert.i22, align 4, !tbaa !593
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit24

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit24: ; preds = %bb.o, %bb.p
  %i.cr = phi i32 [ %.pre2.i23, %bb.p ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i21, %bb.p ], [ %i.ck, %bb.o ] ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %1, ptr %i.cv, align 4, !tbaa !593
  %i.cw = add i32 %i.cr, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !593
  br label %bb.q

bb.q:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit24, %bb.m, %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !677, !nonnull !522, !align !523
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 888
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !912
  %.not40 = icmp eq ptr %i.da, null
  br i1 %.not40, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNK3smt7context12trace_assignEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %1, ptr %2, i1 noundef zeroext %3)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 9048
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !587 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !8
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !596  ; 2 uses
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
  %i.p = load i32, ptr %i.a, align 8, !tbaa !913
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !593
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

bb.b:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.t = load i32, ptr %i.e, align 8, !tbaa !580
  %i.u = icmp eq i32 %i.t, 1
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !677  ; 2 uses
  br i1 %i.u, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !817, !range !818, !noundef !522
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %._crit_edge.i, label %_ZN3smt7context15get_cancel_flagEv.exit.thread

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.z = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v)
  br i1 %i.z, label %_ZN3smt7context15get_cancel_flagEv.exit, label %_ZN3smt7context15get_cancel_flagEv.exit.thread

_ZN3smt7context15get_cancel_flagEv.exit.thread:   ; preds = %bb.c, %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10492
  store i32 3, ptr %i.aa, align 4, !tbaa !643
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

_ZN3smt7context15get_cancel_flagEv.exit:          ; preds = %._crit_edge.i
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !913 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !596
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !593 ; 2 uses
  %i.ag = add i32 %i.ab, 1
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !913
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !914
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.g, align 8, !tbaa !914
  %i.aj = xor i32 %i.af, 1                        ; 3 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !777
  %i.al = zext i32 %i.af to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !677, !nonnull !522, !align !523
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 712
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !721
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit, label %.critedge101

_ZNK3smt7context25binary_clause_opt_enabledEv.exit: ; preds = %_ZN3smt7context15get_cancel_flagEv.exit
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !15, !nonnull !522, !align !523
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 517
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !915, !range !818, !noundef !522
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.d, label %.critedge101

bb.d:                                             ; preds = %_ZNK3smt7context25binary_clause_opt_enabledEv.exit
  %i.au = shl nuw nsw i64 %i.al, 3
  %i.av = or disjoint i64 %i.au, 1                ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !916 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN3smt10watch_list12end_literalsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !593
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !593
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
  %.sroa.059.0.copyload = load i32, ptr %.076137, align 4, !tbaa !593 ; 3 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !719
  %i.bj = zext i32 %.sroa.059.0.copyload to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !720
  switch i8 %i.bl, label %bb.h [
    i8 -1, label %.critedge
    i8 0, label %bb.g
  ]

.critedge:                                        ; preds = %.lr.ph
  %i.bm = load i32, ptr %i.k, align 4, !tbaa !918
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.k, align 4, !tbaa !918
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 9080 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !919
  %i.bq = icmp ne ptr %i.bp, null
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.bs = load i8, ptr %i.br, align 8, !range !818
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = select i1 %i.bq, i1 true, i1 %i.bt
  br i1 %i.bu, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.bv = xor i32 %.sroa.059.0.copyload, 1
  store i64 %i.av, ptr %i.bo, align 8, !tbaa !592
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 9088
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !593
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

bb.g:                                             ; preds = %.lr.ph
  %i.bx = load i32, ptr %i.k, align 4, !tbaa !918
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.k, align 4, !tbaa !918
  tail call void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %.sroa.059.0.copyload, ptr nonnull %i.aw, i1 noundef zeroext false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %.076137, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bz, %i.bh
  br i1 %.not, label %.critedge101, label %.lr.ph, !llvm.loop !920

.critedge101:                                     ; preds = %bb.h, %_ZN3smt10watch_list12end_literalsEv.exit, %_ZN3smt7context15get_cancel_flagEv.exit, %_ZNK3smt7context25binary_clause_opt_enabledEv.exit
  %i.ca = load ptr, ptr %i.am, align 8, !tbaa !916 ; 8 uses
  %.not.i.i104 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i104, label %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit, label %_ZN3smt10watch_list10end_clauseEv.exit

_ZN3smt10watch_list10end_clauseEv.exit:           ; preds = %.critedge101
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !593 ; 3 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd ; 3 uses
  %.not97141 = icmp eq i32 %i.cc, 0
  br i1 %.not97141, label %._crit_edge145.thread182, label %.lr.ph144

.lr.ph144:                                        ; preds = %_ZN3smt10watch_list10end_clauseEv.exit, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %_ZN3smt10watch_list10end_clauseEv.exit ] ; 3 uses
  %.084143 = phi ptr [ %i.ga, %bb.v ], [ %i.ca, %_ZN3smt10watch_list10end_clauseEv.exit ] ; 7 uses
  %.089142 = phi ptr [ %.594.ph, %bb.v ], [ %i.ca, %_ZN3smt10watch_list10end_clauseEv.exit ] ; 11 uses
  %i.cf = load ptr, ptr %.084143, align 8, !tbaa !875 ; 11 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !921 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, %i.aj
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph144
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 2 uses
  %.sroa.017.0.copyload = load i32, ptr %i.cj, align 4, !tbaa !593 ; 2 uses
  store i32 %.sroa.017.0.copyload, ptr %i.cg, align 4, !tbaa !593
  store i32 %i.aj, ptr %i.cj, align 4, !tbaa !593
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph144
  %i.ck = phi i32 [ %.sroa.017.0.copyload, %bb.i ], [ %i.ch, %.lr.ph144 ] ; 3 uses
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !719 ; 2 uses
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !720 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 1
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.cf, ptr %.089142, align 8, !tbaa !875
  %i.cq = getelementptr inbounds nuw i8, ptr %.089142, i64 8
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.cr = load i32, ptr %i.cf, align 4, !tbaa !922 ; 2 uses
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
  %.sroa.06.0.copyload = load i32, ptr %.077139, align 4, !tbaa !593 ; 2 uses
  %i.cv = zext i32 %.sroa.06.0.copyload to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !720
  %.not99 = icmp eq i8 %i.cx, -1
  br i1 %.not99, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph140
  %i.cy = xor i32 %.sroa.06.0.copyload, 1
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !777
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !916 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !593 ; 2 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 8
  %i.di = getelementptr inbounds i8, ptr %i.dc, i64 -8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !593
  %i.dk = zext i32 %i.dj to i64
  %.not.i105 = icmp samesign ult i64 %i.dh, %i.dk
  br i1 %.not.i105, label %_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN3smt10watch_list6expandEv(ptr noundef nonnull align 8 dereferenceable(8) %i.db)
  %.pre.i = load ptr, ptr %i.db, align 8, !tbaa !916 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -12
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !593 ; 2 uses
  %.pre3.i = zext i32 %.pre2.i to i64
  br label %_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit

_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit: ; preds = %bb.n, %bb.o
  %.pre-phi.i = phi i64 [ %.pre3.i, %bb.o ], [ %i.dg, %bb.n ]
  %i.dl = phi i32 [ %.pre2.i, %bb.o ], [ %i.df, %bb.n ]
  %i.dm = phi ptr [ %.pre.i, %bb.o ], [ %i.dc, %bb.n ] ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.pre-phi.i
  store ptr %i.cf, ptr %i.do, align 8, !tbaa !875
  %i.dp = add i32 %i.dl, 8
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !593
  %.sroa.04.0.copyload = load i32, ptr %.077139, align 4, !tbaa !593
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %.sroa.04.0.copyload, ptr %i.dq, align 4, !tbaa !593
  store i32 %i.aj, ptr %.077139, align 4, !tbaa !593
  br label %bb.v

bb.p:                                             ; preds = %.lr.ph140
  %i.dr = getelementptr inbounds nuw i8, ptr %.077139, i64 4 ; 2 uses
  %.not98 = icmp eq ptr %i.dr, %i.ct
  br i1 %.not98, label %._crit_edge, label %.lr.ph140, !llvm.loop !924

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
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !875
  %wide.load210 = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !875
  %i.ei = getelementptr i8, ptr %next.gep209, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep209, align 8, !tbaa !875
  store <2 x ptr> %wide.load210, ptr %i.ei, align 8, !tbaa !875
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !925

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
  %i.ek = load ptr, ptr %.185147, align 8, !tbaa !875
  store ptr %i.ek, ptr %.190146, align 8, !tbaa !875
  %i.el = getelementptr inbounds nuw i8, ptr %.190146, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.185147, i64 8 ; 2 uses
  %i.en = icmp ult ptr %i.em, %i.ce
  br i1 %i.en, label %.lr.ph148, label %._crit_edge149, !llvm.loop !928

._crit_edge149:                                   ; preds = %.lr.ph148, %middle.block, %.preheader
  %.190.lcssa = phi ptr [ %.089142, %.preheader ], [ %i.ef, %middle.block ], [ %i.el, %.lr.ph148 ]
  %i.eo = load ptr, ptr %i.am, align 8, !tbaa !916 ; 3 uses
  %.not.i106 = icmp eq ptr %i.eo, null
  br i1 %.not.i106, label %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge149
  %i.ep = ptrtoint ptr %.190.lcssa to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = trunc i64 %i.er to i32
  %i.et = getelementptr inbounds i8, ptr %i.eo, i64 -12
  store i32 %i.es, ptr %i.et, align 4, !tbaa !593
  br label %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit

_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit: ; preds = %._crit_edge149, %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 9080 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !919
  %i.ew = icmp ne ptr %i.ev, null
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.ey = load i8, ptr %i.ex, align 8, !range !818
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = select i1 %i.ew, i1 true, i1 %i.ez
  br i1 %i.fa, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit
  %i.fb = ptrtoint ptr %i.cf to i64
  store i64 %i.fb, ptr %i.eu, align 8, !tbaa !592
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 9088
  store i32 -2, ptr %i.fc, align 8, !tbaa !593
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

bb.s:                                             ; preds = %._crit_edge
  store ptr %i.cf, ptr %.089142, align 8, !tbaa !875
  %i.fd = getelementptr inbounds nuw i8, ptr %.089142, i64 8 ; 3 uses
  %i.fe = load i32, ptr %i.l, align 8, !tbaa !929
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.l, align 8, !tbaa !929
  tail call void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %i.ck, ptr nonnull %i.cf, i1 noundef zeroext false)
  %i.fg = load ptr, ptr %i.i, align 8, !tbaa !15, !nonnull !522, !align !523
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 524
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !660, !range !818, !noundef !522
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
  %i.fo = load ptr, ptr %i.m, align 8, !tbaa !576
  %i.fp = zext nneg i32 %i.fn to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !740
  %i.fs = load ptr, ptr %i.n, align 8, !tbaa !560 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.fv = load ptr, ptr %i.fu, align 8
  tail call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef %i.fr), !inline_history !930
  %i.fw = load ptr, ptr %i.n, align 8, !tbaa !560 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8
  tail call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fw), !inline_history !930
  br label %bb.v

bb.v:                                             ; preds = %bb.k, %_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit, %bb.u, %bb.t, %bb.s
  %.594.ph = phi ptr [ %i.fd, %bb.t ], [ %i.fd, %bb.u ], [ %.089142, %_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit ], [ %i.fd, %bb.s ], [ %i.cq, %bb.k ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.084143, i64 8 ; 2 uses
  %.not97 = icmp eq ptr %i.ga, %i.ce
  %indvar.next = add i64 %indvar, 1
  br i1 %.not97, label %._crit_edge145, label %.lr.ph144, !llvm.loop !931

._crit_edge145:                                   ; preds = %bb.v
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !916 ; 2 uses
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
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !593
  br label %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit

_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit: ; preds = %.critedge101, %._crit_edge145.thread182, %._crit_edge145
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !596 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !919
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.e = load i8, ptr %i.d, align 8, !range !818
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !592
  store i64 %i.h, ptr %i.a, align 8, !tbaa !592
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9088
  store i32 %2, ptr %i.i, align 8, !tbaa !593
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context14push_new_th_eqEiii(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8864 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !780  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !593  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !593
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN6vectorIN3smt7context9new_th_eqELb0EjE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN3smt7context9new_th_eqELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !780 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
end_hunk_0
begin_hunk_1_@_ZN6vectorIN3smt11replay_unitELb1EjE13expand_vectorEv:bb.a
  %i.ce = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !593 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.cq, %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i ], [ %i.cf, %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i ], [ %i.ak, %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit.i.i ] ; 3 uses
  %i.cg = load ptr, ptr %.047.i.i.i.i.i, align 8, !tbaa !770 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !771, !nonnull !522, !align !523
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !742
  %i.cl = add i32 %i.ck, -1                       ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !742
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
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !772

_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyIN3smt11replay_unitEEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !769
  br label %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit.i.i
  %i.cr = phi ptr [ %.pre.i, %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.ak, %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit.i.i ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cs)
  br label %_ZN6vectorIN3smt11replay_unitELb1EjE7destroyEv.exit

_ZN6vectorIN3smt11replay_unitELb1EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIPN3smt11replay_unitEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit, %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.i
  %i.ct = phi ptr [ %i.cd, %_ZSt20uninitialized_move_nIPN3smt11replay_unitEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit ], [ %i.ap, %_ZN6vectorIN3smt11replay_unitELb1EjE16destroy_elementsEv.exit.i ]
  store ptr %i.ct, ptr %0, align 8, !tbaa !769
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !593
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !647    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !593
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !593
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !647
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !593  ; 3 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !821
  %i.o = load ptr, ptr %1, align 8, !tbaa !822    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !823  ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.o, ptr %i.m, align 8, !tbaa !822
  %i.v = load i64, ptr %i.p, align 8, !tbaa !720
  store i64 %i.v, ptr %i.n, align 8, !tbaa !720
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !823
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.w, ptr %i.y, align 8, !tbaa !823
  store ptr %i.p, ptr %1, align 8, !tbaa !822
  store i64 0, ptr %i.x, align 8, !tbaa !823
  store i8 0, ptr %i.p, align 8, !tbaa !720
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #32
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !822   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !720
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
  store ptr %i.ah, ptr %0, align 8, !tbaa !647
  store i32 %i.j, ptr %i.ag, align 4, !tbaa !593
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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS11ast_manager", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS10smt_params", !12, i64 0}
!15 = !{!16, !14, i64 120}
!16 = !{!"_ZTSN3smt7contextE", !17, i64 8, !11, i64 112, !14, i64 120, !18, i64 128, !20, i64 136, !27, i64 152, !5, i64 192, !32, i64 200, !37, i64 224, !39, i64 264, !40, i64 7512, !316, i64 7528, !318, i64 7536, !320, i64 7544, !322, i64 7552, !323, i64 7560, !31, i64 7564, !5, i64 7568, !324, i64 7576, !5, i64 7584, !325, i64 7592, !367, i64 8512, !52, i64 8592, !52, i64 8608, !379, i64 8624, !5, i64 8632, !31, i64 8636, !382, i64 8640, !5, i64 8648, !31, i64 8652, !84, i64 8656, !383, i64 8664, !385, i64 8672, !6, i64 8680, !59, i64 8696, !387, i64 8704, !387, i64 8712, !375, i64 8720, !375, i64 8728, !388, i64 8736, !389, i64 8752, !392, i64 8760, !375, i64 8768, !394, i64 8776, !400, i64 8824, !404, i64 8848, !406, i64 8856, !409, i64 8864, !409, i64 8872, !387, i64 8880, !412, i64 8888, !414, i64 8920, !59, i64 8928, !55, i64 8936, !417, i64 8944, !419, i64 8952, !59, i64 8960, !421, i64 8968, !424, i64 8976, !427, i64 8984, !427, i64 8992, !430, i64 9000, !432, i64 9008, !434, i64 9016, !437, i64 9024, !5, i64 9032, !5, i64 9036, !5, i64 9040, !439, i64 9048, !441, i64 9056, !31, i64 9064, !5, i64 9068, !31, i64 9072, !442, i64 9080, !443, i64 9088, !444, i64 9096, !192, i64 9104, !434, i64 9120, !115, i64 9128, !182, i64 9152, !446, i64 9176, !473, i64 9408, !475, i64 9416, !30, i64 9424, !434, i64 9432, !477, i64 9440, !52, i64 9464, !5, i64 9480, !482, i64 9488, !485, i64 9496, !486, i64 9504, !488, i64 9512, !493, i64 9536, !31, i64 9544, !495, i64 9552, !5, i64 9608, !5, i64 9612, !5, i64 9616, !499, i64 9624, !502, i64 9632, !5, i64 9640, !505, i64 9648, !508, i64 9656, !508, i64 9664, !510, i64 9672, !513, i64 9696, !515, i64 9712, !330, i64 9728, !84, i64 10488, !516, i64 10492, !389, i64 10496, !31, i64 10504, !5, i64 10508, !5, i64 10512, !5, i64 10516, !5, i64 10520, !5, i64 10524, !5, i64 10528, !5, i64 10532, !5, i64 10536, !441, i64 10544, !5, i64 10552, !31, i64 10556, !100, i64 10560, !85, i64 10568, !31, i64 10624, !517, i64 10632, !43, i64 10656, !477, i64 10680, !43, i64 10704}
!17 = !{!"_ZTSN3smt10statisticsE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96}
!18 = !{!"_ZTS10params_ref", !19, i64 0}
!19 = !{!"p1 _ZTS6params", !12, i64 0}
!20 = !{!"_ZTS10statistics", !21, i64 0, !24, i64 8}
!21 = !{!"_ZTS7svectorISt4pairIPKcjEjE", !22, i64 0}
!22 = !{!"_ZTS6vectorISt4pairIPKcjELb0EjE", !23, i64 0}
!23 = !{!"p1 _ZTSSt4pairIPKcjE", !12, i64 0}
!24 = !{!"_ZTS7svectorISt4pairIPKcdEjE", !25, i64 0}
!25 = !{!"_ZTS6vectorISt4pairIPKcdELb0EjE", !26, i64 0}
!26 = !{!"p1 _ZTSSt4pairIPKcdE", !12, i64 0}
!27 = !{!"_ZTSN3smt5setupE", !28, i64 0, !11, i64 8, !14, i64 16, !29, i64 24, !31, i64 32}
!28 = !{!"p1 _ZTSN3smt7contextE", !12, i64 0}
!29 = !{!"_ZTS6symbol", !30, i64 0}
!30 = !{!"p1 omnipotent char", !12, i64 0}
!31 = !{!"bool", !6, i64 0}
!32 = !{!"_ZTS5timer", !33, i64 0}
!33 = !{!"_ZTS9stopwatch", !34, i64 0, !35, i64 8, !31, i64 16}
!34 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !35, i64 0}
!35 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !36, i64 0}
!36 = !{!"long", !6, i64 0}
!37 = !{!"_ZTS6region", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !38, i64 32}
!38 = !{!"p1 _ZTSN6region4markE", !12, i64 0}
!39 = !{!"_ZTS17asserted_formulas", !11, i64 0, !14, i64 8, !18, i64 16, !40, i64 24, !42, i64 40, !50, i64 96, !62, i64 128, !65, i64 144, !106, i64 944, !5, i64 952, !31, i64 956, !108, i64 960, !170, i64 1528, !172, i64 1536, !31, i64 2208, !31, i64 2209, !204, i64 2216, !207, i64 2224, !210, i64 2256, !219, i64 2408, !262, i64 3480, !263, i64 3512, !264, i64 3544, !270, i64 4152, !273, i64 4192, !276, i64 4232, !281, i64 4808, !286, i64 5400, !292, i64 5728, !301, i64 5896, !306, i64 6488, !311, i64 7080, !312, i64 7112, !313, i64 7144, !314, i64 7176, !315, i64 7208, !5, i64 7240}
!40 = !{!"_ZTS11th_rewriter", !41, i64 0, !18, i64 8}
!41 = !{!"p1 _ZTSN11th_rewriter3impE", !12, i64 0}
!42 = !{!"_ZTS17expr_substitution", !11, i64 0, !43, i64 8, !46, i64 32, !48, i64 40, !5, i64 48, !5, i64 48}
!43 = !{!"_ZTS7obj_mapI4exprPS0_E", !44, i64 0}
!44 = !{!"_ZTS14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE", !45, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!45 = !{!"p1 _ZTSN7obj_mapI4exprPS0_E13obj_map_entryE", !12, i64 0}
!46 = !{!"_ZTS10scoped_ptrI7obj_mapI4exprP3appEE", !47, i64 0}
!47 = !{!"p1 _ZTS7obj_mapI4exprP3appE", !12, i64 0}
!48 = !{!"_ZTS10scoped_ptrI7obj_mapI4exprPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEEE", !49, i64 0}
!49 = !{!"p1 _ZTS7obj_mapI4exprPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !12, i64 0}
!50 = !{!"_ZTS24scoped_expr_substitution", !51, i64 0, !52, i64 8, !59, i64 24}
!51 = !{!"p1 _ZTS17expr_substitution", !12, i64 0}
!52 = !{!"_ZTS10ref_vectorI4expr11ast_managerE", !53, i64 0}
!53 = !{!"_ZTS15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE", !54, i64 0, !55, i64 8}
!54 = !{!"_ZTS19ref_manager_wrapperI4expr11ast_managerE", !11, i64 0}
!55 = !{!"_ZTS10ptr_vectorI4exprE", !56, i64 0}
!56 = !{!"_ZTS6vectorIP4exprLb0EjE", !57, i64 0}
!57 = !{!"p2 _ZTS4expr", !58, i64 0}
!58 = !{!"any p2 pointer", !12, i64 0}
!59 = !{!"_ZTS7svectorIjjE", !60, i64 0}
!60 = !{!"_ZTS6vectorIjLb0EjE", !61, i64 0}
!61 = !{!"p1 int", !12, i64 0}
!62 = !{!"_ZTS13defined_names", !63, i64 0, !64, i64 8}
!63 = !{!"p1 _ZTSN13defined_names4implE", !12, i64 0}
!64 = !{!"p1 _ZTSN13defined_names8pos_implE", !12, i64 0}
!65 = !{!"_ZTS15static_features", !11, i64 0, !66, i64 8, !68, i64 24, !71, i64 48, !73, i64 64, !75, i64 128, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !85, i64 296, !85, i64 352, !31, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !31, i64 524, !31, i64 525, !31, i64 526, !31, i64 527, !31, i64 528, !31, i64 529, !31, i64 530, !31, i64 531, !31, i64 532, !31, i64 533, !91, i64 536, !5, i64 568, !5, i64 572, !5, i64 576, !5, i64 580, !5, i64 584, !5, i64 588, !5, i64 592, !5, i64 596, !5, i64 600, !59, i64 608, !59, i64 616, !59, i64 624, !59, i64 632, !59, i64 640, !5, i64 648, !59, i64 656, !59, i64 664, !5, i64 672, !95, i64 680, !95, i64 704, !95, i64 728, !5, i64 752, !100, i64 760, !29, i64 768, !29, i64 776, !29, i64 784, !103, i64 792}
!66 = !{!"_ZTS10arith_util", !11, i64 0, !67, i64 8}
!67 = !{!"p1 _ZTS17arith_decl_plugin", !12, i64 0}
!68 = !{!"_ZTS7bv_util", !69, i64 0, !11, i64 8, !70, i64 16}
!69 = !{!"_ZTS14bv_recognizers", !5, i64 0}
!70 = !{!"p1 _ZTS14bv_decl_plugin", !12, i64 0}
!71 = !{!"_ZTS10array_util", !72, i64 0, !11, i64 8}
!72 = !{!"_ZTS17array_recognizers", !5, i64 0}
!73 = !{!"_ZTS8fpa_util", !11, i64 0, !74, i64 8, !5, i64 16, !66, i64 24, !68, i64 40}
!74 = !{!"p1 _ZTS15fpa_decl_plugin", !12, i64 0}
!75 = !{!"_ZTS8seq_util", !11, i64 0, !76, i64 8, !77, i64 16, !5, i64 24, !78, i64 32, !80, i64 56}
!76 = !{!"p1 _ZTS15seq_decl_plugin", !12, i64 0}
!77 = !{!"p1 _ZTS16char_decl_plugin", !12, i64 0}
!78 = !{!"_ZTSN8seq_util3strE", !79, i64 0, !11, i64 8, !5, i64 16}
!79 = !{!"p1 _ZTS8seq_util", !12, i64 0}
!80 = !{!"_ZTSN8seq_util3rexE", !79, i64 0, !11, i64 8, !5, i64 16, !81, i64 24, !52, i64 32, !83, i64 48, !83, i64 68}
!81 = !{!"_ZTS6vectorIN8seq_util3rex4infoELb1EjE", !82, i64 0}
!82 = !{!"p1 _ZTSN8seq_util3rex4infoE", !12, i64 0}
!83 = !{!"_ZTSN8seq_util3rex4infoE", !84, i64 0, !31, i64 4, !84, i64 8, !5, i64 12, !31, i64 16}
!84 = !{!"_ZTS5lbool", !6, i64 0}
!85 = !{!"_ZTS8ast_mark", !86, i64 8, !89, i64 32}
!86 = !{!"_ZTS8obj_markI4expr10bit_vector14default_t2uintIS0_EE", !87, i64 0, !88, i64 8}
!87 = !{!"_ZTS14default_t2uintI4exprE"}
!88 = !{!"_ZTS10bit_vector", !5, i64 0, !5, i64 4, !61, i64 8}
!89 = !{!"_ZTS8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEE", !90, i64 0, !88, i64 8}
!90 = !{!"_ZTSN8ast_mark9decl2uintE"}
!91 = !{!"_ZTS8rational", !92, i64 0}
!92 = !{!"_ZTS3mpq", !93, i64 0, !93, i64 16}
!93 = !{!"_ZTS3mpz", !5, i64 0, !5, i64 4, !5, i64 4, !94, i64 8}
!94 = !{!"p1 _ZTS8mpz_cell", !12, i64 0}
!95 = !{!"_ZTS5u_mapIjE", !96, i64 0}
!96 = !{!"_ZTS3mapIjj6u_hash4u_eqE", !97, i64 0}
!97 = !{!"_ZTS9table2mapI17default_map_entryIjjE6u_hash4u_eqE", !98, i64 0}
!98 = !{!"_ZTS14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !99, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!99 = !{!"p1 _ZTS17default_map_entryIjjE", !12, i64 0}
!100 = !{!"_ZTS7svectorIbjE", !101, i64 0}
!101 = !{!"_ZTS6vectorIbLb0EjE", !102, i64 0}
!102 = !{!"p1 bool", !12, i64 0}
!103 = !{!"_ZTS7svectorIN15static_features10to_processEjE", !104, i64 0}
!104 = !{!"_ZTS6vectorIN15static_features10to_processELb0EjE", !105, i64 0}
!105 = !{!"p1 _ZTSN15static_features10to_processE", !12, i64 0}
!106 = !{!"_ZTS6vectorI14justified_exprLb1EjE", !107, i64 0}
!107 = !{!"p1 _ZTS14justified_expr", !12, i64 0}
!108 = !{!"_ZTS13macro_manager", !11, i64 0, !109, i64 8, !127, i64 328, !130, i64 352, !133, i64 376, !136, i64 400, !142, i64 416, !148, i64 432, !154, i64 448, !160, i64 464, !136, i64 488, !160, i64 504, !163, i64 528, !166, i64 536}
!109 = !{!"_ZTS10macro_util", !11, i64 0, !68, i64 8, !66, i64 32, !110, i64 48, !118, i64 144, !126, i64 304, !122, i64 312}
!110 = !{!"_ZTS14arith_rewriter", !111, i64 0, !31, i64 84, !31, i64 85, !31, i64 86, !31, i64 87, !31, i64 88, !31, i64 89, !31, i64 90, !31, i64 91, !5, i64 92}
!111 = !{!"_ZTS13poly_rewriterI19arith_rewriter_coreE", !112, i64 0, !114, i64 40, !115, i64 48, !31, i64 72, !31, i64 73, !5, i64 76, !31, i64 80, !31, i64 81, !31, i64 82, !31, i64 83}
!112 = !{!"_ZTS19arith_rewriter_core", !11, i64 0, !66, i64 8, !113, i64 24, !31, i64 32, !31, i64 33, !31, i64 34}
!113 = !{!"_ZTS10scoped_ptrI8seq_utilE", !79, i64 0}
!114 = !{!"p1 _ZTS4sort", !12, i64 0}
!115 = !{!"_ZTS7obj_mapI4exprjE", !116, i64 0}
!116 = !{!"_ZTS14core_hashtableIN7obj_mapI4exprjE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE", !117, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!117 = !{!"p1 _ZTSN7obj_mapI4exprjE13obj_map_entryE", !12, i64 0}
!118 = !{!"_ZTS11bv_rewriter", !119, i64 0, !123, i64 96, !66, i64 128, !31, i64 144, !31, i64 145, !31, i64 146, !31, i64 147, !31, i64 148, !31, i64 149, !31, i64 150, !31, i64 151, !31, i64 152, !31, i64 153, !31, i64 154, !31, i64 155, !31, i64 156}
!119 = !{!"_ZTS13poly_rewriterI16bv_rewriter_coreE", !120, i64 0, !114, i64 48, !115, i64 56, !31, i64 80, !31, i64 81, !5, i64 84, !31, i64 88, !31, i64 89, !31, i64 90, !31, i64 91}
!120 = !{!"_ZTS16bv_rewriter_core", !11, i64 0, !68, i64 8, !121, i64 32}
!121 = !{!"_ZTS7obj_refI4expr11ast_managerE", !122, i64 0, !11, i64 8}
!122 = !{!"p1 _ZTS4expr", !12, i64 0}
!123 = !{!"_ZTS15mk_extract_proc", !124, i64 0, !5, i64 8, !5, i64 12, !114, i64 16, !125, i64 24}
!124 = !{!"p1 _ZTS7bv_util", !12, i64 0}
!125 = !{!"p1 _ZTS9func_decl", !12, i64 0}
!126 = !{!"p1 _ZTS13obj_hashtableI9func_declE", !12, i64 0}
!127 = !{!"_ZTS7obj_mapI9func_declP10quantifierE", !128, i64 0}
!128 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declP10quantifierE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EE", !129, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!129 = !{!"p1 _ZTSN7obj_mapI9func_declP10quantifierE13obj_map_entryE", !12, i64 0}
!130 = !{!"_ZTS7obj_mapI9func_declP3appE", !131, i64 0}
!131 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declP3appE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EE", !132, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!132 = !{!"p1 _ZTSN7obj_mapI9func_declP3appE13obj_map_entryE", !12, i64 0}
!133 = !{!"_ZTS7obj_mapI9func_declPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !134, i64 0}
!134 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE13obj_map_entryE8obj_hashINS8_8key_dataEE10default_eqISB_EE", !135, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!135 = !{!"p1 _ZTSN7obj_mapI9func_declPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE13obj_map_entryE", !12, i64 0}
!136 = !{!"_ZTS10ref_vectorI9func_decl11ast_managerE", !137, i64 0}
!137 = !{!"_ZTS15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE", !138, i64 0, !139, i64 8}
!138 = !{!"_ZTS19ref_manager_wrapperI9func_decl11ast_managerE", !11, i64 0}
!139 = !{!"_ZTS10ptr_vectorI9func_declE", !140, i64 0}
!140 = !{!"_ZTS6vectorIP9func_declLb0EjE", !141, i64 0}
!141 = !{!"p2 _ZTS9func_decl", !58, i64 0}
!142 = !{!"_ZTS10ref_vectorI10quantifier11ast_managerE", !143, i64 0}
!143 = !{!"_ZTS15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE", !144, i64 0, !145, i64 8}
!144 = !{!"_ZTS19ref_manager_wrapperI10quantifier11ast_managerE", !11, i64 0}
!145 = !{!"_ZTS10ptr_vectorI10quantifierE", !146, i64 0}
!146 = !{!"_ZTS6vectorIP10quantifierLb0EjE", !147, i64 0}
!147 = !{!"p2 _ZTS10quantifier", !58, i64 0}
!148 = !{!"_ZTS10ref_vectorI3app11ast_managerE", !149, i64 0}
!149 = !{!"_ZTS15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE", !150, i64 0, !151, i64 8}
!150 = !{!"_ZTS19ref_manager_wrapperI3app11ast_managerE", !11, i64 0}
!151 = !{!"_ZTS10ptr_vectorI3appE", !152, i64 0}
!152 = !{!"_ZTS6vectorIP3appLb0EjE", !153, i64 0}
!153 = !{!"p2 _ZTS3app", !58, i64 0}
!154 = !{!"_ZTS10ref_vectorIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E", !155, i64 0}
!155 = !{!"_ZTS15ref_vector_coreIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE19ref_manager_wrapperIS4_S1_EE", !156, i64 0, !157, i64 8}
!156 = !{!"_ZTS19ref_manager_wrapperIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E", !11, i64 0}
!157 = !{!"_ZTS10ptr_vectorIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !158, i64 0}
!158 = !{!"_ZTS6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE", !159, i64 0}
end_hunk_1
