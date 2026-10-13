Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/descriptor_database?download=true
inline.NumInlined: 6448
inline.NumDeleted: 2427
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_right_to_leftEhPS8_PS6_:bb.a
.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.bt = icmp eq i32 %i.p, 0
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.av, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod82 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !59
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !226 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !226
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !59
  store ptr %0, ptr %i.bz, align 8, !tbaa !226
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !59
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !59
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !226 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !226
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !59
  store ptr %0, ptr %i.cj, align 8, !tbaa !226
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !59
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !226 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !226
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !59
  store ptr %0, ptr %i.cr, align 8, !tbaa !226
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !689

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !226 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !226
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !59
  store ptr %2, ptr %i.cy, align 8, !tbaa !226
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !59
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !690

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !59
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !59
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !59
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_left_to_rightEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !59    ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 2               ; 2 uses
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %.idx.i  ; 3 uses
  %i.l = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.o = mul i64 %n.vec, -4                       ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  %i.q = getelementptr i8, ptr %i.k, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.r ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.k, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %next.gep65, i64 -16
  %i.t = getelementptr inbounds i8, ptr %next.gep65, i64 -32
  %wide.load = load <4 x i32>, ptr %i.s, align 4
  %wide.load66 = load <4 x i32>, ptr %i.t, align 4
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.v = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.u, align 1
  store <4 x i32> %wide.load66, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !691

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.017.i.ph = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %i.p, %middle.block ]
  %.01416.i.ph = phi ptr [ %i.k, %.lr.ph.preheader.i ], [ %i.q, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.017.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.017.i.ph, %.lr.ph.i.preheader ]
  %.01416.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01416.i.ph, %.lr.ph.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.017.i, i64 -4 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.01416.i, i64 -4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  store i32 %i.z, ptr %i.x, align 1
  %.not.i = icmp eq ptr %i.y, %i.f
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i, !llvm.loop !692

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !59
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !226
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !59  ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %i.as = zext i8 %1 to i64
  %i.at = add nuw nsw i64 %i.as, 4611686018427387902
  %i.au = and i64 %i.at, 4611686018427387903      ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check69 = icmp samesign ult i64 %i.au, 31
  br i1 %min.iters.check69, label %.lr.ph.i48.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %4 = zext i8 %1 to i64
  %i.aw = shl nuw nsw i64 %4, 2
  %5 = add i64 %i.aw, %i.b
  %i.ax = zext i8 %i.al to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = add i64 %i.ay, %i.a
  %i.ba = sub i64 %5, %i.az
  %i.bb = add i64 %i.ba, -5
  %diff.check = icmp ult i64 %i.bb, 31
  br i1 %diff.check, label %.lr.ph.i48.preheader83, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck
  %n.vec71 = and i64 %i.av, 9223372036854775800   ; 3 uses
  %i.bc = shl i64 %n.vec71, 2                     ; 2 uses
  %i.bd = getelementptr i8, ptr %i.f, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.aq, i64 %i.bc
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next78, %vector.body72 ] ; 2 uses
  %i.bf = shl i64 %index73, 2                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.f, i64 %i.bf ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.aq, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <4 x i32>, ptr %next.gep75, align 4
  %wide.load77 = load <4 x i32>, ptr %i.bg, align 4
  %i.bh = getelementptr i8, ptr %next.gep74, i64 16
  store <4 x i32> %wide.load76, ptr %next.gep74, align 1
  store <4 x i32> %wide.load77, ptr %i.bh, align 1
  %index.next78 = add nuw i64 %index73, 8         ; 2 uses
  %i.bi = icmp eq i64 %index.next78, %n.vec71
  br i1 %i.bi, label %middle.block79, label %vector.body72, !llvm.loop !693

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.av, %n.vec71
  br i1 %cmp.n80, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48.preheader83

.lr.ph.i48.preheader83:                           ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block79
  %.015.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i48.preheader ], [ %i.bd, %middle.block79 ]
  %.01214.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i48.preheader ], [ %i.be, %middle.block79 ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader83, %.lr.ph.i48
  %.015.i = phi ptr [ %i.bl, %.lr.ph.i48 ], [ %.015.i.ph, %.lr.ph.i48.preheader83 ] ; 2 uses
  %.01214.i = phi ptr [ %i.bk, %.lr.ph.i48 ], [ %.01214.i.ph, %.lr.ph.i48.preheader83 ] ; 2 uses
  %i.bj = load i32, ptr %.01214.i, align 4
  store i32 %i.bj, ptr %.015.i, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i49 = icmp eq ptr %i.bk, %i.ar
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !694

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block79
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !59
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !226
  %i.bn = load i8, ptr %i.ac, align 8, !tbaa !59
  %i.bo = zext i8 %i.bn to i64
  %i.bp = sub nsw i32 %.pre-phi, %i.e
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bq
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bs, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !59
  %.not.i50 = icmp eq i8 %i.bw, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !59   ; 5 uses
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.by, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.ca = zext i8 %i.by to i64                    ; 2 uses
  %i.cb = and i8 %i.bx, 1
  %lcmp.mod.not.not = icmp eq i8 %i.cb, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.cc = add i8 %i.bx, %1                        ; 2 uses
  %i.cd = zext i8 %i.bx to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !226 ; 3 uses
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !226
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cc, ptr %i.ci, align 1, !tbaa !59
  store ptr %2, ptr %i.cf, align 8, !tbaa !226
  %indvars.iv.next.prol = add nsw i64 %i.ca, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.ca, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cj = icmp eq i8 %i.bx, 0
  br i1 %i.cj, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.cm = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.cm, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.cn = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter84 = and i64 %i.cn, 1
  %i.co = icmp ult i8 %i.cm, 3
  br i1 %i.co, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.cn, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.cp = trunc nuw i64 %indvars.iv to i8
  %i.cq = add i8 %i.cp, -1                        ; 2 uses
  %i.cr = add i8 %i.cq, %1                        ; 2 uses
  %i.cs = zext i8 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !226 ; 3 uses
  %i.cv = zext i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !226
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !59
  store ptr %2, ptr %i.cu, align 8, !tbaa !226
  %i.cy = trunc i64 %indvars.iv to i8
  %i.cz = add i8 %i.cy, -2                        ; 2 uses
  %i.da = add i8 %i.cz, %1                        ; 2 uses
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !226 ; 3 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !226
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !59
  store ptr %2, ptr %i.dd, align 8, !tbaa !226
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dh = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dh, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !695

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.di = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dj = load i8, ptr %i.ak, align 2, !tbaa !59
  %i.dk = trunc nuw i64 %indvars.iv58 to i8
  %i.dl = sub i8 %i.dk, %1
  %i.dm = add i8 %i.dl, %i.dj
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !226 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.di
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !226
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.di to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !59
  store ptr %2, ptr %i.dp, align 8, !tbaa !226
  %i.dt = load i8, ptr %i.ak, align 2, !tbaa !59
  %i.du = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.du, %invariant.op
  %i.dv = add i8 %.reass, %i.dt
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !226 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv58
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !226
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !59
  store ptr %2, ptr %i.dy, align 8, !tbaa !226
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !696

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ec = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ed = load i8, ptr %i.ak, align 2, !tbaa !59
  %i.ee = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ef = sub i8 %i.ee, %1
  %i.eg = add i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.eh
end_hunk_0
