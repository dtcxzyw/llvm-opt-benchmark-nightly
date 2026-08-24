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
  %i.o = phi ptr [ %i.c, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph ], [ %i.gi, %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit ]
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
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %_ZN3smt10watch_list10end_clauseEv.exit ] ; 4 uses
  %.084143 = phi ptr [ %i.gb, %bb.v ], [ %i.ca, %_ZN3smt10watch_list10end_clauseEv.exit ] ; 7 uses
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
  %i.dt = ptrtoaddr ptr %i.ca to i64              ; 4 uses
  %.089142208.le = ptrtoaddr ptr %.089142 to i64
  %i.du = icmp ult ptr %.084143, %i.ce
  br i1 %i.du, label %.lr.ph148.preheader, label %._crit_edge149

.lr.ph148.preheader:                              ; preds = %.preheader
  %1 = add i64 %i.dt, 8
  %i.dv = shl i64 %indvar, 3
  %2 = add i64 %i.dv, %1
  %3 = zext i32 %i.cc to i64
  %i.dw = add i64 %i.dt, %3
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.dw)
  %4 = xor i64 %i.dt, -1
  %5 = shl i64 %indvar, 3
  %6 = sub i64 %4, %5
  %i.dx = add i64 %umax, %6                       ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 216
  br i1 %min.iters.check, label %.lr.ph148.preheader212, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph148.preheader
  %i.ea = mul i64 %indvar, -8
  %i.eb = sub i64 %i.ea, %i.dt
  %i.ec = add i64 %i.eb, %.089142208.le
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 31
  br i1 %diff.check, label %.lr.ph148.preheader212, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dz, 4611686018427387900     ; 3 uses
  %i.ee = shl i64 %n.vec, 3                       ; 2 uses
  %i.ef = getelementptr i8, ptr %.084143, i64 %i.ee
  %i.eg = getelementptr i8, ptr %.089142, i64 %i.ee ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.084143, i64 %i.eh ; 2 uses
  %next.gep209 = getelementptr i8, ptr %.089142, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !875
  %wide.load210 = load <2 x ptr>, ptr %i.ei, align 8, !tbaa !875
  %i.ej = getelementptr i8, ptr %next.gep209, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep209, align 8, !tbaa !875
  store <2 x ptr> %wide.load210, ptr %i.ej, align 8, !tbaa !875
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !925

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br i1 %cmp.n, label %._crit_edge149, label %.lr.ph148.preheader212

.lr.ph148.preheader212:                           ; preds = %vector.memcheck, %.lr.ph148.preheader, %middle.block
  %.185147.ph = phi ptr [ %.084143, %vector.memcheck ], [ %.084143, %.lr.ph148.preheader ], [ %i.ef, %middle.block ]
  %.190146.ph = phi ptr [ %.089142, %vector.memcheck ], [ %.089142, %.lr.ph148.preheader ], [ %i.eg, %middle.block ]
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader212, %.lr.ph148
  %.185147 = phi ptr [ %i.en, %.lr.ph148 ], [ %.185147.ph, %.lr.ph148.preheader212 ] ; 2 uses
  %.190146 = phi ptr [ %i.em, %.lr.ph148 ], [ %.190146.ph, %.lr.ph148.preheader212 ] ; 2 uses
  %i.el = load ptr, ptr %.185147, align 8, !tbaa !875
  store ptr %i.el, ptr %.190146, align 8, !tbaa !875
  %i.em = getelementptr inbounds nuw i8, ptr %.190146, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.185147, i64 8 ; 2 uses
  %i.eo = icmp ult ptr %i.en, %i.ce
  br i1 %i.eo, label %.lr.ph148, label %._crit_edge149, !llvm.loop !928

._crit_edge149:                                   ; preds = %.lr.ph148, %middle.block, %.preheader
  %.190.lcssa = phi ptr [ %.089142, %.preheader ], [ %i.eg, %middle.block ], [ %i.em, %.lr.ph148 ]
  %i.ep = load ptr, ptr %i.am, align 8, !tbaa !916 ; 3 uses
  %.not.i106 = icmp eq ptr %i.ep, null
  br i1 %.not.i106, label %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge149
  %i.eq = ptrtoint ptr %.190.lcssa to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = trunc i64 %i.es to i32
  %i.eu = getelementptr inbounds i8, ptr %i.ep, i64 -12
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !593
  br label %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit

_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit: ; preds = %._crit_edge149, %bb.q
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 9080 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !919
  %i.ex = icmp ne ptr %i.ew, null
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.ez = load i8, ptr %i.ey, align 8, !range !818
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = select i1 %i.ex, i1 true, i1 %i.fa
  br i1 %i.fb, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN3smt10watch_list14set_end_clauseEPPNS_6clauseE.exit
  %i.fc = ptrtoint ptr %i.cf to i64
  store i64 %i.fc, ptr %i.ev, align 8, !tbaa !592
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 9088
  store i32 -2, ptr %i.fd, align 8, !tbaa !593
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

bb.s:                                             ; preds = %._crit_edge
  store ptr %i.cf, ptr %.089142, align 8, !tbaa !875
  %i.fe = getelementptr inbounds nuw i8, ptr %.089142, i64 8 ; 3 uses
  %i.ff = load i32, ptr %i.l, align 8, !tbaa !929
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.l, align 8, !tbaa !929
  tail call void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %i.ck, ptr nonnull %i.cf, i1 noundef zeroext false)
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !15, !nonnull !522, !align !523
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 524
  %i.fj = load i8, ptr %i.fi, align 4, !tbaa !660, !range !818, !noundef !522
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = and i32 %i.fm, 33554432
  %.not128 = icmp eq i32 %i.fn, 0
  br i1 %.not128, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = lshr i32 %i.ck, 1
  %i.fp = load ptr, ptr %i.m, align 8, !tbaa !576
  %i.fq = zext nneg i32 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !740
  %i.ft = load ptr, ptr %i.n, align 8, !tbaa !560 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef %i.fs), !inline_history !930
  %i.fx = load ptr, ptr %i.n, align 8, !tbaa !560 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.ga = load ptr, ptr %i.fz, align 8
  tail call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fx), !inline_history !930
  br label %bb.v

bb.v:                                             ; preds = %bb.k, %_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit, %bb.u, %bb.t, %bb.s
  %.594.ph = phi ptr [ %i.fe, %bb.t ], [ %i.fe, %bb.u ], [ %.089142, %_ZN3smt10watch_list13insert_clauseEPNS_6clauseE.exit ], [ %i.fe, %bb.s ], [ %i.cq, %bb.k ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.084143, i64 8 ; 2 uses
  %.not97 = icmp eq ptr %i.gb, %i.ce
  %indvar.next = add i64 %indvar, 1
  br i1 %.not97, label %._crit_edge145, label %.lr.ph144, !llvm.loop !931

._crit_edge145:                                   ; preds = %bb.v
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !916 ; 2 uses
  %.not.i107 = icmp eq ptr %.pre, null
  br i1 %.not.i107, label %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit, label %._crit_edge145.thread182

._crit_edge145.thread182:                         ; preds = %_ZN3smt10watch_list10end_clauseEv.exit, %._crit_edge145
  %.089.lcssa185 = phi ptr [ %.594.ph, %._crit_edge145 ], [ %i.ca, %_ZN3smt10watch_list10end_clauseEv.exit ]
  %i.gc = phi ptr [ %.pre, %._crit_edge145 ], [ %i.ca, %_ZN3smt10watch_list10end_clauseEv.exit ] ; 2 uses
  %i.gd = ptrtoint ptr %.089.lcssa185 to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = getelementptr inbounds i8, ptr %i.gc, i64 -12
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !593
  br label %_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit

_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE.exit: ; preds = %.critedge101, %._crit_edge145.thread182, %._crit_edge145
  %i.gi = load ptr, ptr %i.b, align 8, !tbaa !596 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

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
