Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 695
loop-unroll.NumUnrolled: 833
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE23rebalance_right_to_leftEhPS5_PSaIiE:bb.a
.preheader53:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit51
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
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !876 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !876
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !813
  store ptr %0, ptr %i.bz, align 8, !tbaa !876
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !813
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !876 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !876
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %0, ptr %i.cj, align 8, !tbaa !876
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !876 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !876
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !813
  store ptr %0, ptr %i.cr, align 8, !tbaa !876
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3054

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !876 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !876
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !813
  store ptr %2, ptr %i.cy, align 8, !tbaa !876
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !3055

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !813
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !813
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE23rebalance_left_to_rightEhPS5_PSaIiE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE19transfer_n_backwardEmmmPS5_PSaIiE.exit, label %.lr.ph.preheader.i

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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !3056

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE19transfer_n_backwardEmmmPS5_PSaIiE.exit, label %.lr.ph.i.preheader

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
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE19transfer_n_backwardEmmmPS5_PSaIiE.exit, label %.lr.ph.i, !llvm.loop !3057

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE19transfer_n_backwardEmmmPS5_PSaIiE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !813
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !876
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !813 ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE19transfer_n_backwardEmmmPS5_PSaIiE.exit
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
  br i1 %i.bi, label %middle.block79, label %vector.body72, !llvm.loop !3058

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.av, %n.vec71
  br i1 %cmp.n80, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit, label %.lr.ph.i48.preheader83

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
  br i1 %.not.i49, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit, label %.lr.ph.i48, !llvm.loop !3059

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block79
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !813
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE19transfer_n_backwardEmmmPS5_PSaIiE.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE19transfer_n_backwardEmmmPS5_PSaIiE.exit ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !876
  %i.bn = load i8, ptr %i.ac, align 8, !tbaa !813
  %i.bo = zext i8 %i.bn to i64
  %i.bp = sub nsw i32 %.pre-phi, %i.e
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bq
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bs, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !813
  %.not.i50 = icmp eq i8 %i.bw, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !813  ; 5 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !876 ; 3 uses
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !876
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cc, ptr %i.ci, align 1, !tbaa !813
  store ptr %2, ptr %i.cf, align 8, !tbaa !876
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
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !876 ; 3 uses
  %i.cv = zext i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !876
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !813
  store ptr %2, ptr %i.cu, align 8, !tbaa !876
  %i.cy = trunc i64 %indvars.iv to i8
  %i.cz = add i8 %i.cy, -2                        ; 2 uses
  %i.da = add i8 %i.cz, %1                        ; 2 uses
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !876 ; 3 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !876
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !813
  store ptr %2, ptr %i.dd, align 8, !tbaa !876
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dh = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dh, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !3060

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.di = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dj = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.dk = trunc nuw i64 %indvars.iv58 to i8
  %i.dl = sub i8 %i.dk, %1
  %i.dm = add i8 %i.dl, %i.dj
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !876 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.di
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !876
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.di to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  store ptr %2, ptr %i.dp, align 8, !tbaa !876
  %i.dt = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.du = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.du, %invariant.op
  %i.dv = add i8 %.reass, %i.dt
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !876 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv58
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !876
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  store ptr %2, ptr %i.dy, align 8, !tbaa !876
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !3061

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ec = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ed = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.ee = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ef = sub i8 %i.ee, %1
  %i.eg = add i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.eh
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE23rebalance_right_to_leftEhPSB_PS6_:bb.a
.preheader53:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit51
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
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1138 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !1138
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !813
  store ptr %0, ptr %i.bz, align 8, !tbaa !1138
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !813
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1138 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !1138
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %0, ptr %i.cj, align 8, !tbaa !1138
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1138 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !1138
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !813
  store ptr %0, ptr %i.cr, align 8, !tbaa !1138
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !6003

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1138 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !1138
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !813
  store ptr %2, ptr %i.cy, align 8, !tbaa !1138
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !6004

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !813
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !813
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE23rebalance_left_to_rightEhPSB_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit, label %.lr.ph.preheader.i

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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !6005

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit, label %.lr.ph.i.preheader

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
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit, label %.lr.ph.i, !llvm.loop !6006

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !813
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !1138
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !813 ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit
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
  br i1 %i.bi, label %middle.block79, label %vector.body72, !llvm.loop !6007

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.av, %n.vec71
  br i1 %cmp.n80, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit, label %.lr.ph.i48.preheader83

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
  br i1 %.not.i49, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !6008

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block79
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !813
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !1138
  %i.bn = load i8, ptr %i.ac, align 8, !tbaa !813
  %i.bo = zext i8 %i.bn to i64
  %i.bp = sub nsw i32 %.pre-phi, %i.e
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bq
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bs, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !813
  %.not.i50 = icmp eq i8 %i.bw, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !813  ; 5 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1138 ; 3 uses
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !1138
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cc, ptr %i.ci, align 1, !tbaa !813
  store ptr %2, ptr %i.cf, align 8, !tbaa !1138
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
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1138 ; 3 uses
  %i.cv = zext i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !1138
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !813
  store ptr %2, ptr %i.cu, align 8, !tbaa !1138
  %i.cy = trunc i64 %indvars.iv to i8
  %i.cz = add i8 %i.cy, -2                        ; 2 uses
  %i.da = add i8 %i.cz, %1                        ; 2 uses
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1138 ; 3 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !1138
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !813
  store ptr %2, ptr %i.dd, align 8, !tbaa !1138
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dh = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dh, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !6009

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.di = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dj = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.dk = trunc nuw i64 %indvars.iv58 to i8
  %i.dl = sub i8 %i.dk, %1
  %i.dm = add i8 %i.dl, %i.dj
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1138 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.di
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !1138
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.di to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  store ptr %2, ptr %i.dp, align 8, !tbaa !1138
  %i.dt = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.du = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.du, %invariant.op
  %i.dv = add i8 %.reass, %i.dt
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1138 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv58
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !1138
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  store ptr %2, ptr %i.dy, align 8, !tbaa !1138
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !6010

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ec = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ed = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.ee = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ef = sub i8 %i.ee, %1
  %i.eg = add i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.eh
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE23rebalance_right_to_leftEhPS7_PSaIiE:bb.a
.preheader53:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit51
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
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1701 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !1701
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !813
  store ptr %0, ptr %i.bz, align 8, !tbaa !1701
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !813
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1701 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !1701
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %0, ptr %i.cj, align 8, !tbaa !1701
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1701 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !1701
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !813
  store ptr %0, ptr %i.cr, align 8, !tbaa !1701
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !12056

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1701 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !1701
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !813
  store ptr %2, ptr %i.cy, align 8, !tbaa !1701
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !12057

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !813
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !813
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE23rebalance_left_to_rightEhPS7_PSaIiE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit, label %.lr.ph.preheader.i

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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !12058

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit, label %.lr.ph.i.preheader

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
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit, label %.lr.ph.i, !llvm.loop !12059

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !813
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !1701
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !813 ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit
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
  br i1 %i.bi, label %middle.block79, label %vector.body72, !llvm.loop !12060

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.av, %n.vec71
  br i1 %cmp.n80, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit, label %.lr.ph.i48.preheader83

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
  br i1 %.not.i49, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit, label %.lr.ph.i48, !llvm.loop !12061

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block79
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !813
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !1701
  %i.bn = load i8, ptr %i.ac, align 8, !tbaa !813
  %i.bo = zext i8 %i.bn to i64
  %i.bp = sub nsw i32 %.pre-phi, %i.e
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bq
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bs, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !813
  %.not.i50 = icmp eq i8 %i.bw, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt7greaterIiEEEEE10transfer_nEmmmPS7_PSaIiE.exit
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !813  ; 5 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1701 ; 3 uses
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !1701
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cc, ptr %i.ci, align 1, !tbaa !813
  store ptr %2, ptr %i.cf, align 8, !tbaa !1701
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
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1701 ; 3 uses
  %i.cv = zext i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !1701
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !813
  store ptr %2, ptr %i.cu, align 8, !tbaa !1701
  %i.cy = trunc i64 %indvars.iv to i8
  %i.cz = add i8 %i.cy, -2                        ; 2 uses
  %i.da = add i8 %i.cz, %1                        ; 2 uses
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1701 ; 3 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !1701
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !813
  store ptr %2, ptr %i.dd, align 8, !tbaa !1701
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dh = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dh, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !12062

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.di = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dj = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.dk = trunc nuw i64 %indvars.iv58 to i8
  %i.dl = sub i8 %i.dk, %1
  %i.dm = add i8 %i.dl, %i.dj
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1701 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.di
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !1701
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.di to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  store ptr %2, ptr %i.dp, align 8, !tbaa !1701
  %i.dt = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.du = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.du, %invariant.op
  %i.dv = add i8 %.reass, %i.dt
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1701 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv58
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !1701
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  store ptr %2, ptr %i.dy, align 8, !tbaa !1701
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !12063

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ec = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ed = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.ee = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ef = sub i8 %i.ee, %1
  %i.eg = add i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.eh
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE23rebalance_right_to_leftEhPS7_PSaIiE:bb.a
.preheader1:                                      ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit64
  %.not7 = icmp eq i8 %1, 0
  br i1 %.not7, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.an, 1
  %i.bj = icmp eq i32 %i.l, 0
  br i1 %i.bj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.an, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod31 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %.val46.epil = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bk = trunc i64 %indvars.iv.epil.init to i8
  %i.bl = add i8 %i.bk, 1
  %i.bm = add i8 %.val46.epil, %i.bl              ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.epil.init
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1886 ; 3 uses
  %i.bp = zext i8 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !1886
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %i.bm, ptr %i.br, align 1, !tbaa !813
  store ptr %0, ptr %i.bo, align 8, !tbaa !1886
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.val453 = load i8, ptr %i.aj, align 1, !tbaa !813
  %.not4 = icmp ult i8 %.val453, %1
  br i1 %.not4, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %.val46 = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bt = trunc nuw i64 %indvars.iv.next to i8
  %i.bu = add i8 %.val46, %i.bt                   ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1886 ; 3 uses
  %i.bx = zext i8 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bx
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !1886
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i8 %i.bu, ptr %i.bz, align 1, !tbaa !813
  store ptr %0, ptr %i.bw, align 8, !tbaa !1886
  %.val46.1 = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ca = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cb = add i8 %.val46.1, %i.ca                 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1886 ; 3 uses
  %i.ce = zext i8 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ce
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !1886
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i8 %i.cb, ptr %i.cg, align 1, !tbaa !813
  store ptr %0, ptr %i.cd, align 8, !tbaa !1886
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !13835

bb.c:                                             ; preds = %.lr.ph6, %bb.c
  %.05 = phi i8 [ 0, %.lr.ph6 ], [ %i.co, %bb.c ] ; 4 uses
  %i.ch = add i8 %.05, %1
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1886 ; 3 uses
  %i.cl = zext i8 %.05 to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cl
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !1886
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i8 %.05, ptr %i.cn, align 1, !tbaa !813
  store ptr %2, ptr %i.ck, align 8, !tbaa !1886
  %i.co = add i8 %.05, 1                          ; 2 uses
  %i.cp = zext i8 %i.co to i32
  %.val45 = load i8, ptr %i.aj, align 1, !tbaa !813
  %i.cq = zext i8 %.val45 to i32
  %i.cr = sub nsw i32 %i.cq, %i.k
  %.not = icmp slt i32 %i.cr, %i.cp
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !13836

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit64
  %.val44 = load i8, ptr %i.c, align 2, !tbaa !813
  %i.cs = add i8 %.val44, %1
  store i8 %i.cs, ptr %i.c, align 2, !tbaa !813
  %.val = load i8, ptr %i.aj, align 1, !tbaa !813
  %i.ct = sub i8 %.val, %1
  store i8 %i.ct, ptr %i.aj, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE23rebalance_left_to_rightEhPS7_PSaIiE(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val58 = load i8, ptr %i.c, align 1, !tbaa !813 ; 2 uses
  %i.d = zext i8 %1 to i32                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not1.i = icmp eq i8 %.val58, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = zext i8 %.val58 to i64                   ; 2 uses
  %i.g = zext i8 %1 to i64
  %.idx.i = shl nuw nsw i64 %i.f, 2               ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.j = getelementptr i8, ptr %i.e, i64 %.idx.i  ; 3 uses
  %i.k = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.l = lshr exact i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.m, 9223372036854775800      ; 3 uses
  %i.n = mul i64 %n.vec, -4                       ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  %i.p = getelementptr i8, ptr %i.j, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.j, i64 %i.q ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %next.gep13, i64 -16
  %i.s = getelementptr inbounds i8, ptr %next.gep13, i64 -32
  %wide.load = load <4 x i32>, ptr %i.r, align 4
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4
  %i.t = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.t, align 1
  store <4 x i32> %wide.load14, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !13837

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.03.i.ph = phi ptr [ %i.i, %.lr.ph.preheader.i ], [ %i.o, %middle.block ]
  %.0142.i.ph = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.03.i.ph, %.lr.ph.i.preheader ]
  %.0142.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.0142.i.ph, %.lr.ph.i.preheader ]
  %i.w = getelementptr inbounds i8, ptr %.03.i, i64 -4 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.0142.i, i64 -4 ; 3 uses
  %.val.i = load i32, ptr %i.x, align 4
  store i32 %.val.i, ptr %i.w, align 1
  %.not.i = icmp eq ptr %i.x, %i.e
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit, label %.lr.ph.i, !llvm.loop !13838

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.y = add nsw i32 %i.d, -1                     ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val56 = load i8, ptr %i.aa, align 1, !tbaa !813
  %i.ab = zext i8 %.val56 to i64
  %.val54 = load ptr, ptr %0, align 8, !tbaa !1886
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %.val54, i64 12
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  %.val.i59 = load i32, ptr %i.ae, align 4
  store i32 %.val.i59, ptr %i.ac, align 1
  %i.af = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %.val52 = load i8, ptr %i.af, align 2, !tbaa !813 ; 2 uses
  %i.ag = zext i8 %.val52 to i32                  ; 2 uses
  %i.ah = sub nsw i32 %i.ag, %i.y
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai ; 5 uses
  %.idx.i60 = shl nuw nsw i64 %i.z, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i60
  %.not1.i61 = icmp eq i32 %i.y, 0
  br i1 %.not1.i61, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit
  %i.am = zext i8 %1 to i64
  %i.an = add nuw nsw i64 %i.am, 4611686018427387902
  %i.ao = and i64 %i.an, 4611686018427387903      ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check17 = icmp samesign ult i64 %i.ao, 31
  br i1 %min.iters.check17, label %.lr.ph.i63.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i63.preheader
  %3 = zext i8 %1 to i64
  %i.aq = shl nuw nsw i64 %3, 2
  %4 = add i64 %i.aq, %i.b
  %i.ar = zext i8 %.val52 to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = add i64 %i.as, %i.a
  %i.au = sub i64 %4, %i.at
  %i.av = add i64 %i.au, -5
  %diff.check = icmp ult i64 %i.av, 31
  br i1 %diff.check, label %.lr.ph.i63.preheader31, label %vector.ph18

vector.ph18:                                      ; preds = %vector.memcheck
  %n.vec19 = and i64 %i.ap, 9223372036854775800   ; 3 uses
  %i.aw = shl i64 %n.vec19, 2                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.e, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.aw
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph18
  %index21 = phi i64 [ 0, %vector.ph18 ], [ %index.next26, %vector.body20 ] ; 2 uses
  %i.az = shl i64 %index21, 2                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.e, i64 %i.az ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load24 = load <4 x i32>, ptr %next.gep23, align 4
  %wide.load25 = load <4 x i32>, ptr %i.ba, align 4
  %i.bb = getelementptr i8, ptr %next.gep22, i64 16
  store <4 x i32> %wide.load24, ptr %next.gep22, align 1
  store <4 x i32> %wide.load25, ptr %i.bb, align 1
  %index.next26 = add nuw i64 %index21, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next26, %n.vec19
  br i1 %i.bc, label %middle.block27, label %vector.body20, !llvm.loop !13839

middle.block27:                                   ; preds = %vector.body20
  %cmp.n28 = icmp eq i64 %i.ap, %n.vec19
  br i1 %cmp.n28, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit, label %.lr.ph.i63.preheader31

.lr.ph.i63.preheader31:                           ; preds = %vector.memcheck, %.lr.ph.i63.preheader, %middle.block27
  %.03.i64.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.i63.preheader ], [ %i.ax, %middle.block27 ]
  %.0122.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i63.preheader ], [ %i.ay, %middle.block27 ]
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader31, %.lr.ph.i63
  %.03.i64 = phi ptr [ %i.be, %.lr.ph.i63 ], [ %.03.i64.ph, %.lr.ph.i63.preheader31 ] ; 2 uses
  %.0122.i = phi ptr [ %i.bd, %.lr.ph.i63 ], [ %.0122.i.ph, %.lr.ph.i63.preheader31 ] ; 2 uses
  %.012.val.i = load i32, ptr %.0122.i, align 4
  store i32 %.012.val.i, ptr %.03.i64, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i64, i64 4
  %.not.i65 = icmp eq ptr %i.bd, %i.al
  br i1 %.not.i65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit, label %.lr.ph.i63, !llvm.loop !13840

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit: ; preds = %.lr.ph.i63, %middle.block27
  %.val51.pre = load i8, ptr %i.af, align 2, !tbaa !813
  %.pre = zext i8 %.val51.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit
  %.pre-phi = phi i32 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit ], [ %i.ag, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit ]
  %.val53 = load ptr, ptr %0, align 8, !tbaa !1886
  %.val55 = load i8, ptr %i.aa, align 8, !tbaa !813
  %i.bf = zext i8 %.val55 to i64
  %i.bg = sub nsw i32 %.pre-phi, %i.d
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.val53, i64 12
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bh
  %.val.i66 = load i32, ptr %i.bk, align 4
  store i32 %.val.i66, ptr %i.bj, align 1
  %i.bl = getelementptr i8, ptr %0, i64 11
  %.val57 = load i8, ptr %i.bl, align 1, !tbaa !813
  %.not.i67 = icmp eq i8 %.val57, 0
  br i1 %.not.i67, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaIiE.exit
  %.val50 = load i8, ptr %i.c, align 1, !tbaa !813 ; 5 uses
  %i.bm = add i8 %.val50, 1                       ; 2 uses
  %.not1 = icmp eq i8 %i.bm, 0
  br i1 %.not1, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.bo = zext i8 %i.bm to i64                    ; 2 uses
  %i.bp = and i8 %.val50, 1
  %lcmp.mod.not.not = icmp eq i8 %i.bp, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.bq = add i8 %.val50, %1                      ; 2 uses
  %i.br = zext i8 %.val50 to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1886 ; 3 uses
  %i.bu = zext i8 %i.bq to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bu
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !1886
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 %i.bq, ptr %i.bw, align 1, !tbaa !813
  store ptr %2, ptr %i.bt, align 8, !tbaa !1886
  %indvars.iv.next.prol = add nsw i64 %i.bo, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bo, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.bx = icmp eq i8 %.val50, 0
  br i1 %i.bx, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not463 = icmp eq i8 %1, 0
  br i1 %.not463, label %.loopexit, label %.lr.ph5

.lr.ph5:                                          ; preds = %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ca = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.ca, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.cb = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter32 = and i64 %i.cb, 1
  %i.cc = icmp ult i8 %i.ca, 3
  br i1 %i.cc, label %.epil.preheader, label %.lr.ph5.new

.lr.ph5.new:                                      ; preds = %.lr.ph5
  %unroll_iter = and i64 %i.cb, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.cd = trunc nuw i64 %indvars.iv to i8
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  %i.cf = add i8 %i.ce, %1                        ; 2 uses
  %i.cg = zext i8 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1886 ; 3 uses
  %i.cj = zext i8 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cj
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !1886
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.cf, ptr %i.cl, align 1, !tbaa !813
  store ptr %2, ptr %i.ci, align 8, !tbaa !1886
  %i.cm = trunc i64 %indvars.iv to i8
  %i.cn = add i8 %i.cm, -2                        ; 2 uses
  %i.co = add i8 %i.cn, %1                        ; 2 uses
  %i.cp = zext i8 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1886 ; 3 uses
  %i.cs = zext i8 %i.co to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !1886
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.co, ptr %i.cu, align 1, !tbaa !813
  store ptr %2, ptr %i.cr, align 8, !tbaa !1886
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.cv = and i64 %indvars.iv.next.1, 255
  %.not.1 = icmp eq i64 %i.cv, 0
  br i1 %.not.1, label %.preheader, label %.lr.ph.new, !llvm.loop !13841

bb.c:                                             ; preds = %bb.c, %.lr.ph5.new
  %indvars.iv7 = phi i64 [ 1, %.lr.ph5.new ], [ %indvars.iv.next8.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph5.new ], [ %niter.next.1, %bb.c ]
  %i.cw = add nsw i64 %indvars.iv7, -1            ; 2 uses
  %.val49 = load i8, ptr %i.af, align 2, !tbaa !813
  %i.cx = trunc nuw i64 %indvars.iv7 to i8
  %i.cy = sub i8 %i.cx, %1
  %i.cz = add i8 %i.cy, %.val49
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1886 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cw
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !1886
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = trunc nuw i64 %i.cw to i8
  store i8 %i.df, ptr %i.de, align 1, !tbaa !813
  store ptr %2, ptr %i.dc, align 8, !tbaa !1886
  %.val49.1 = load i8, ptr %i.af, align 2, !tbaa !813
  %i.dg = trunc i64 %indvars.iv7 to i8
  %.reass = add i8 %i.dg, %invariant.op
  %i.dh = add i8 %.reass, %.val49.1
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1886 ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv7
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !1886
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = trunc nuw i64 %indvars.iv7 to i8
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !813
  store ptr %2, ptr %i.dk, align 8, !tbaa !1886
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv7, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !13842

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph5
  %indvars.iv7.epil.init = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next8.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i64 %i.cb to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.do = add nsw i64 %indvars.iv7.epil.init, -1  ; 2 uses
  %.val49.epil = load i8, ptr %i.af, align 2, !tbaa !813
  %i.dp = trunc nuw i64 %indvars.iv7.epil.init to i8
  %i.dq = sub i8 %i.dp, %1
  %i.dr = add i8 %i.dq, %.val49.epil
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ds
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSF_EE:bb.a

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.do = getelementptr i8, ptr %.val105, i64 10
  %.val95 = load i8, ptr %i.do, align 1, !tbaa !813 ; 2 uses
  %i.dp = icmp ult i8 %.val103, %.val95
  br i1 %i.dp, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dq = add nuw i8 %.val103, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.ds = zext i8 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1921 ; 12 uses
  %i.dv = ptrtoaddr ptr %i.du to i64
  %i.dw = getelementptr i8, ptr %i.du, i64 10     ; 4 uses
  %.val112 = load i8, ptr %i.dw, align 1, !tbaa !813 ; 5 uses
  %i.dx = icmp ult i8 %.val112, 61
  br i1 %i.dx, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %narrow164 = sub nuw nsw i8 61, %.val112
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !802 ; 2 uses
  %.inv = icmp sgt i32 %i.dy, 0
  %i.dz = zext i1 %.inv to i8
  %i.ea = lshr i8 %narrow164, %i.dz               ; 4 uses
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1) ; 11 uses
  %i.eb = and i32 %i.dy, 255
  %i.ec = getelementptr i8, ptr %i.b, i64 10      ; 8 uses
  %.val94 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.ed = zext i8 %.val94 to i32
  %i.ee = zext nneg i8 %.sroa.speculated to i32   ; 3 uses
  %i.ef = sub nsw i32 %i.ed, %i.ee
  %.not86 = icmp sle i32 %i.eb, %i.ef
  %narrow165 = add nuw nsw i8 %.sroa.speculated, %.val112
  %i.eg = icmp samesign ult i8 %narrow165, 61
  %or.cond162 = select i1 %.not86, i1 true, i1 %i.eg
  br i1 %or.cond162, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 8 uses
  %.not1.i.i120 = icmp eq i8 %.val112, 0
  br i1 %.not1.i.i120, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.ei = zext nneg i8 %.val112 to i64            ; 2 uses
  %i.ej = zext nneg i8 %.sroa.speculated to i64
  %.idx.i.i121 = shl nuw nsw i64 %i.ei, 2         ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %i.eh, i64 %i.ej
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.ei ; 16 uses
  %i.em = getelementptr i8, ptr %i.eh, i64 %.idx.i.i121 ; 16 uses
  %i.en = add nsw i64 %.idx.i.i121, -4            ; 2 uses
  %i.eo = lshr exact i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check196 = icmp ult i64 %i.en, 28
  br i1 %min.iters.check196, label %.lr.ph.i.i122.preheader, label %vector.ph197

vector.ph197:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec198 = and i64 %i.ep, 9223372036854775800  ; 8 uses
  %i.eq = mul i64 %n.vec198, -4                   ; 2 uses
  %i.er = getelementptr i8, ptr %i.el, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.em, i64 %i.eq
  %i.et = getelementptr inbounds i8, ptr %i.em, i64 -16
  %i.eu = getelementptr inbounds i8, ptr %i.em, i64 -32
  %wide.load203 = load <4 x i32>, ptr %i.et, align 4
  %wide.load204 = load <4 x i32>, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds i8, ptr %i.el, i64 -16
  %i.ew = getelementptr inbounds i8, ptr %i.el, i64 -32
  store <4 x i32> %wide.load203, ptr %i.ev, align 1
  store <4 x i32> %wide.load204, ptr %i.ew, align 1
  %i.ex = icmp eq i64 %n.vec198, 8
  br i1 %i.ex, label %middle.block206, label %vector.body199.1

vector.body199.1:                                 ; preds = %vector.ph197
  %i.ey = getelementptr i8, ptr %i.em, i64 -48
  %i.ez = getelementptr i8, ptr %i.em, i64 -64
  %wide.load203.1 = load <4 x i32>, ptr %i.ey, align 4
  %wide.load204.1 = load <4 x i32>, ptr %i.ez, align 4
  %i.fa = getelementptr i8, ptr %i.el, i64 -48
  %i.fb = getelementptr i8, ptr %i.el, i64 -64
  store <4 x i32> %wide.load203.1, ptr %i.fa, align 1
  store <4 x i32> %wide.load204.1, ptr %i.fb, align 1
  %i.fc = icmp eq i64 %n.vec198, 16
  br i1 %i.fc, label %middle.block206, label %vector.body199.2

vector.body199.2:                                 ; preds = %vector.body199.1
  %i.fd = getelementptr i8, ptr %i.em, i64 -80
  %i.fe = getelementptr i8, ptr %i.em, i64 -96
  %wide.load203.2 = load <4 x i32>, ptr %i.fd, align 4
  %wide.load204.2 = load <4 x i32>, ptr %i.fe, align 4
  %i.ff = getelementptr i8, ptr %i.el, i64 -80
  %i.fg = getelementptr i8, ptr %i.el, i64 -96
  store <4 x i32> %wide.load203.2, ptr %i.ff, align 1
  store <4 x i32> %wide.load204.2, ptr %i.fg, align 1
  %i.fh = icmp eq i64 %n.vec198, 24
  br i1 %i.fh, label %middle.block206, label %vector.body199.3

vector.body199.3:                                 ; preds = %vector.body199.2
  %i.fi = getelementptr i8, ptr %i.em, i64 -112
  %i.fj = getelementptr i8, ptr %i.em, i64 -128
  %wide.load203.3 = load <4 x i32>, ptr %i.fi, align 4
  %wide.load204.3 = load <4 x i32>, ptr %i.fj, align 4
  %i.fk = getelementptr i8, ptr %i.el, i64 -112
  %i.fl = getelementptr i8, ptr %i.el, i64 -128
  store <4 x i32> %wide.load203.3, ptr %i.fk, align 1
  store <4 x i32> %wide.load204.3, ptr %i.fl, align 1
  %i.fm = icmp eq i64 %n.vec198, 32
  br i1 %i.fm, label %middle.block206, label %vector.body199.4

vector.body199.4:                                 ; preds = %vector.body199.3
  %i.fn = getelementptr i8, ptr %i.em, i64 -144
  %i.fo = getelementptr i8, ptr %i.em, i64 -160
  %wide.load203.4 = load <4 x i32>, ptr %i.fn, align 4
  %wide.load204.4 = load <4 x i32>, ptr %i.fo, align 4
  %i.fp = getelementptr i8, ptr %i.el, i64 -144
  %i.fq = getelementptr i8, ptr %i.el, i64 -160
  store <4 x i32> %wide.load203.4, ptr %i.fp, align 1
  store <4 x i32> %wide.load204.4, ptr %i.fq, align 1
  %i.fr = icmp eq i64 %n.vec198, 40
  br i1 %i.fr, label %middle.block206, label %vector.body199.5

vector.body199.5:                                 ; preds = %vector.body199.4
  %i.fs = getelementptr i8, ptr %i.em, i64 -176
  %i.ft = getelementptr i8, ptr %i.em, i64 -192
  %wide.load203.5 = load <4 x i32>, ptr %i.fs, align 4
  %wide.load204.5 = load <4 x i32>, ptr %i.ft, align 4
  %i.fu = getelementptr i8, ptr %i.el, i64 -176
  %i.fv = getelementptr i8, ptr %i.el, i64 -192
  store <4 x i32> %wide.load203.5, ptr %i.fu, align 1
  store <4 x i32> %wide.load204.5, ptr %i.fv, align 1
  %i.fw = icmp eq i64 %n.vec198, 48
  br i1 %i.fw, label %middle.block206, label %vector.body199.6

vector.body199.6:                                 ; preds = %vector.body199.5
  %i.fx = getelementptr i8, ptr %i.em, i64 -208
  %i.fy = getelementptr i8, ptr %i.em, i64 -224
  %wide.load203.6 = load <4 x i32>, ptr %i.fx, align 4
  %wide.load204.6 = load <4 x i32>, ptr %i.fy, align 4
  %i.fz = getelementptr i8, ptr %i.el, i64 -208
  %i.ga = getelementptr i8, ptr %i.el, i64 -224
  store <4 x i32> %wide.load203.6, ptr %i.fz, align 1
  store <4 x i32> %wide.load204.6, ptr %i.ga, align 1
  br label %middle.block206

middle.block206:                                  ; preds = %vector.body199.6, %vector.body199.5, %vector.body199.4, %vector.body199.3, %vector.body199.2, %vector.body199.1, %vector.ph197
  %cmp.n207 = icmp eq i64 %i.ep, %n.vec198
  br i1 %cmp.n207, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.loopexit, label %.lr.ph.i.i122.preheader

.lr.ph.i.i122.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block206
  %.03.i.i123.ph = phi ptr [ %i.el, %.lr.ph.preheader.i.i ], [ %i.er, %middle.block206 ]
  %.0142.i.i.ph = phi ptr [ %i.em, %.lr.ph.preheader.i.i ], [ %i.es, %middle.block206 ]
  br label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122.preheader, %.lr.ph.i.i122
  %.03.i.i123 = phi ptr [ %i.gb, %.lr.ph.i.i122 ], [ %.03.i.i123.ph, %.lr.ph.i.i122.preheader ]
  %.0142.i.i = phi ptr [ %i.gc, %.lr.ph.i.i122 ], [ %.0142.i.i.ph, %.lr.ph.i.i122.preheader ]
  %i.gb = getelementptr inbounds i8, ptr %.03.i.i123, i64 -4 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.0142.i.i, i64 -4 ; 3 uses
  %.val.i.i124 = load i32, ptr %i.gc, align 4
  store i32 %.val.i.i124, ptr %i.gb, align 1
  %.not.i.i125 = icmp eq ptr %i.gc, %i.eh
  br i1 %.not.i.i125, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.loopexit, label %.lr.ph.i.i122, !llvm.loop !14241

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.loopexit: ; preds = %.lr.ph.i.i122, %middle.block206
  %.val54.i126.pre = load i8, ptr %i.d, align 8, !tbaa !813
  %.val56.i.pre = load ptr, ptr %i.b, align 8, !tbaa !1921
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.loopexit, %bb.k
  %.val56.i = phi ptr [ %.val56.i.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.loopexit ], [ %.val105, %bb.k ]
  %.val54.i126 = phi i8 [ %.val54.i126.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.loopexit ], [ %.val103, %bb.k ]
  %i.gd = add nsw i32 %i.ee, -1                   ; 3 uses
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = zext i8 %.val54.i126 to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %.val56.i, i64 12
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gf
  %.val.i59.i = load i32, ptr %i.gi, align 4
  store i32 %.val.i59.i, ptr %i.gg, align 1
  %.val52.i127 = load i8, ptr %i.ec, align 2, !tbaa !813 ; 2 uses
  %i.gj = zext i8 %.val52.i127 to i32             ; 2 uses
  %i.gk = sub nsw i32 %i.gj, %i.gd
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gl ; 5 uses
  %.idx.i60.i = shl nuw nsw i64 %i.ge, 2          ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx.i60.i
  %.not1.i61.i = icmp eq i32 %i.gd, 0
  br i1 %.not1.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.i134, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i
  %i.gp = add nsw i64 %.idx.i60.i, -4             ; 2 uses
  %i.gq = lshr exact i64 %i.gp, 2
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check213 = icmp ult i64 %i.gp, 140
  br i1 %min.iters.check213, label %.lr.ph.i63.i.preheader227, label %vector.memcheck210

vector.memcheck210:                               ; preds = %.lr.ph.i63.i.preheader
  %i.gs = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1)
  %i.gt = shl nuw i8 %i.gs, 2
  %i.gu = zext i8 %i.gt to i64
  %3 = add i64 %i.dv, %i.gu
  %i.gv = zext i8 %.val52.i127 to i64
  %i.gw = shl nuw nsw i64 %i.gv, 2
  %i.gx = add i64 %i.gw, %i.c
  %i.gy = sub i64 %3, %i.gx
  %i.gz = add i64 %i.gy, -5
  %diff.check211 = icmp ult i64 %i.gz, 31
  br i1 %diff.check211, label %.lr.ph.i63.i.preheader227, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck210
  %n.vec215 = and i64 %i.gr, 9223372036854775800  ; 3 uses
  %i.ha = shl i64 %n.vec215, 2                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.eh, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.gn, i64 %i.ha
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next222, %vector.body216 ] ; 2 uses
  %i.hd = shl i64 %index217, 2                    ; 2 uses
  %next.gep218 = getelementptr i8, ptr %i.eh, i64 %i.hd ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.gn, i64 %i.hd ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep219, i64 16
  %wide.load220 = load <4 x i32>, ptr %next.gep219, align 4
  %wide.load221 = load <4 x i32>, ptr %i.he, align 4
  %i.hf = getelementptr i8, ptr %next.gep218, i64 16
  store <4 x i32> %wide.load220, ptr %next.gep218, align 1
  store <4 x i32> %wide.load221, ptr %i.hf, align 1
  %index.next222 = add nuw i64 %index217, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next222, %n.vec215
  br i1 %i.hg, label %middle.block223, label %vector.body216, !llvm.loop !14242

middle.block223:                                  ; preds = %vector.body216
  %cmp.n224 = icmp eq i64 %i.gr, %n.vec215
  br i1 %cmp.n224, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i131, label %.lr.ph.i63.i.preheader227

.lr.ph.i63.i.preheader227:                        ; preds = %vector.memcheck210, %.lr.ph.i63.i.preheader, %middle.block223
  %.03.i64.i.ph = phi ptr [ %i.eh, %vector.memcheck210 ], [ %i.eh, %.lr.ph.i63.i.preheader ], [ %i.hb, %middle.block223 ]
  %.0122.i.i128.ph = phi ptr [ %i.gn, %vector.memcheck210 ], [ %i.gn, %.lr.ph.i63.i.preheader ], [ %i.hc, %middle.block223 ]
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader227, %.lr.ph.i63.i
  %.03.i64.i = phi ptr [ %i.hi, %.lr.ph.i63.i ], [ %.03.i64.i.ph, %.lr.ph.i63.i.preheader227 ] ; 2 uses
  %.0122.i.i128 = phi ptr [ %i.hh, %.lr.ph.i63.i ], [ %.0122.i.i128.ph, %.lr.ph.i63.i.preheader227 ] ; 2 uses
  %.012.val.i.i129 = load i32, ptr %.0122.i.i128, align 4
  store i32 %.012.val.i.i129, ptr %.03.i64.i, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.0122.i.i128, i64 4 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.03.i64.i, i64 4
  %.not.i65.i130 = icmp eq ptr %i.hh, %i.go
  br i1 %.not.i65.i130, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i131, label %.lr.ph.i63.i, !llvm.loop !14243

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i131: ; preds = %.lr.ph.i63.i, %middle.block223
  %.val51.pre.i132 = load i8, ptr %i.ec, align 2, !tbaa !813
  %.pre.i133 = zext i8 %.val51.pre.i132 to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.i134

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.i134: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i131, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i
  %.pre-phi.i135 = phi i32 [ %.pre.i133, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i131 ], [ %i.gj, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i ]
  %.val55.i = load ptr, ptr %i.b, align 8, !tbaa !1921
  %.val53.i136 = load i8, ptr %i.d, align 8, !tbaa !813
  %i.hj = zext i8 %.val53.i136 to i64
  %i.hk = sub nsw i32 %.pre-phi.i135, %i.ee
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %.val55.i, i64 12
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hj
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.hl
  %.val.i66.i = load i32, ptr %i.ho, align 4
  store i32 %.val.i66.i, ptr %i.hn, align 1
  %i.hp = getelementptr i8, ptr %i.b, i64 11
  %.val57.i = load i8, ptr %i.hp, align 1, !tbaa !813
  %.not.i67.i = icmp eq i8 %.val57.i, 0
  br i1 %.not.i67.i, label %bb.l, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE23rebalance_left_to_rightEhPSB_PS6_.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.i134
  %.val50.i138 = load i8, ptr %i.dw, align 1, !tbaa !813 ; 5 uses
  %i.hq = add i8 %.val50.i138, 1                  ; 2 uses
  %.not1.i = icmp eq i8 %i.hq, 0
  br i1 %.not1.i, label %.lr.ph5.i, label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %bb.l
  %i.hr = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 6 uses
  %i.hs = zext i8 %i.hq to i64                    ; 2 uses
  %i.ht = and i8 %.val50.i138, 1
  %lcmp.mod232.not.not = icmp eq i8 %i.ht, 0
  br i1 %lcmp.mod232.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i139
  %i.hu = add i8 %.val50.i138, %.sroa.speculated  ; 2 uses
  %i.hv = zext i8 %.val50.i138 to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !1921 ; 3 uses
  %i.hy = zext i8 %i.hu to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hy
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !1921
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i8 %i.hu, ptr %i.ia, align 1, !tbaa !813
  store ptr %i.du, ptr %i.hx, align 8, !tbaa !1921
  %indvars.iv.next.i141.prol = add nsw i64 %i.hs, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i139
  %indvars.iv.i140.unr = phi i64 [ %i.hs, %.lr.ph.i139 ], [ %indvars.iv.next.i141.prol, %.prol.loopexit.unr-lcssa ]
  %i.ib = icmp eq i8 %.val50.i138, 0
  br i1 %i.ib, label %.lr.ph5.i, label %.lr.ph.i139.new

.lr.ph5.i:                                        ; preds = %.prol.loopexit, %.lr.ph.i139.new, %bb.l
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 3 uses
  %i.ie = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1) ; 2 uses
  %umax = zext nneg i8 %i.ie to i64               ; 2 uses
  %xtraiter234 = and i64 %umax, 1
  %i.if = icmp samesign ult i8 %i.ea, 2
  br i1 %i.if, label %.epil.preheader233, label %.lr.ph5.i.new

.lr.ph5.i.new:                                    ; preds = %.lr.ph5.i
  %unroll_iter237 = and i64 %umax, 62
  %invariant.op = sub i8 1, %.sroa.speculated
  br label %bb.m

.lr.ph.i139.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i139.new
  %indvars.iv.i140 = phi i64 [ %indvars.iv.next.i141.1, %.lr.ph.i139.new ], [ %indvars.iv.i140.unr, %.prol.loopexit ] ; 3 uses
  %i.ig = trunc nuw i64 %indvars.iv.i140 to i8
  %i.ih = add i8 %i.ig, -1                        ; 2 uses
  %i.ii = add i8 %i.ih, %.sroa.speculated         ; 2 uses
  %i.ij = zext i8 %i.ih to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !1921 ; 3 uses
  %i.im = zext i8 %i.ii to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.im
  store ptr %i.il, ptr %i.in, align 8, !tbaa !1921
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i8 %i.ii, ptr %i.io, align 1, !tbaa !813
  store ptr %i.du, ptr %i.il, align 8, !tbaa !1921
  %i.ip = trunc i64 %indvars.iv.i140 to i8
  %i.iq = add i8 %i.ip, -2                        ; 2 uses
  %i.ir = add i8 %i.iq, %.sroa.speculated         ; 2 uses
  %i.is = zext i8 %i.iq to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !1921 ; 3 uses
  %i.iv = zext i8 %i.ir to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.iv
  store ptr %i.iu, ptr %i.iw, align 8, !tbaa !1921
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i8 %i.ir, ptr %i.ix, align 1, !tbaa !813
  store ptr %i.du, ptr %i.iu, align 8, !tbaa !1921
  %indvars.iv.next.i141.1 = add nsw i64 %indvars.iv.i140, -2 ; 2 uses
  %i.iy = and i64 %indvars.iv.next.i141.1, 255
  %.not.i142.1 = icmp eq i64 %i.iy, 0
  br i1 %.not.i142.1, label %.lr.ph5.i, label %.lr.ph.i139.new, !llvm.loop !14244

bb.m:                                             ; preds = %bb.m, %.lr.ph5.i.new
  %indvars.iv7.i = phi i64 [ 1, %.lr.ph5.i.new ], [ %indvars.iv.next8.i.1, %bb.m ] ; 6 uses
  %niter238 = phi i64 [ 0, %.lr.ph5.i.new ], [ %niter238.next.1, %bb.m ]
  %i.iz = add nsw i64 %indvars.iv7.i, -1          ; 2 uses
  %.val49.i = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.ja = trunc nuw i64 %indvars.iv7.i to i8
  %i.jb = sub i8 %i.ja, %.sroa.speculated
  %i.jc = add i8 %i.jb, %.val49.i
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !1921 ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iz
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !1921
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.ji = trunc nuw i64 %i.iz to i8
  store i8 %i.ji, ptr %i.jh, align 1, !tbaa !813
  store ptr %i.du, ptr %i.jf, align 8, !tbaa !1921
  %.val49.i.1 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.jj = trunc i64 %indvars.iv7.i to i8
  %.reass = add i8 %i.jj, %invariant.op
  %i.jk = add i8 %.reass, %.val49.i.1
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !1921 ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv7.i
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !1921
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = trunc nuw i64 %indvars.iv7.i to i8
  store i8 %i.jq, ptr %i.jp, align 1, !tbaa !813
  store ptr %i.du, ptr %i.jn, align 8, !tbaa !1921
  %indvars.iv.next8.i.1 = add nuw nsw i64 %indvars.iv7.i, 2 ; 2 uses
  %niter238.next.1 = add nuw i64 %niter238, 2     ; 2 uses
  %niter238.ncmp.1 = icmp eq i64 %niter238.next.1, %unroll_iter237
  br i1 %niter238.ncmp.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE23rebalance_left_to_rightEhPSB_PS6_.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !14245

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE23rebalance_left_to_rightEhPSB_PS6_.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE23rebalance_left_to_rightEhPSB_PS6_.exit, label %.epil.preheader233

.epil.preheader233:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE23rebalance_left_to_rightEhPSB_PS6_.exit.loopexit.unr-lcssa, %.lr.ph5.i
  %indvars.iv7.i.epil.init = phi i64 [ 1, %.lr.ph5.i ], [ %indvars.iv.next8.i.1, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE23rebalance_left_to_rightEhPSB_PS6_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod236 = trunc i8 %i.ie to i1
  tail call void @llvm.assume(i1 %lcmp.mod236)
  %i.jr = add nsw i64 %indvars.iv7.i.epil.init, -1 ; 2 uses
  %.val49.i.epil = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.js = trunc nuw i64 %indvars.iv7.i.epil.init to i8
  %i.jt = sub i8 %i.js, %.sroa.speculated
  %i.ju = add i8 %i.jt, %.val49.i.epil
  %i.jv = zext i8 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1921 ; 3 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.jr
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !1921
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERKiPSB_EE:bb.a

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.do = getelementptr i8, ptr %.val100, i64 10
  %.val96 = load i8, ptr %i.do, align 1, !tbaa !813 ; 2 uses
  %i.dp = icmp ult i8 %.val108, %.val96
  br i1 %i.dp, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dq = add nuw i8 %.val108, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.val100, i64 256
  %i.ds = zext i8 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1982 ; 12 uses
  %i.dv = ptrtoaddr ptr %i.du to i64
  %i.dw = getelementptr i8, ptr %i.du, i64 10     ; 4 uses
  %.val114 = load i8, ptr %i.dw, align 1, !tbaa !813 ; 5 uses
  %i.dx = icmp ult i8 %.val114, 61
  br i1 %i.dx, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %narrow165 = sub nuw nsw i8 61, %.val114
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !802 ; 2 uses
  %.inv = icmp sgt i32 %i.dy, 0
  %i.dz = zext i1 %.inv to i8
  %i.ea = lshr i8 %narrow165, %i.dz               ; 4 uses
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1) ; 11 uses
  %i.eb = and i32 %i.dy, 255
  %i.ec = getelementptr i8, ptr %i.b, i64 10      ; 8 uses
  %.val95 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.ed = zext i8 %.val95 to i32
  %i.ee = zext nneg i8 %.sroa.speculated to i32   ; 3 uses
  %i.ef = sub nsw i32 %i.ed, %i.ee
  %.not86 = icmp sle i32 %i.eb, %i.ef
  %narrow166 = add nuw nsw i8 %.sroa.speculated, %.val114
  %i.eg = icmp samesign ult i8 %narrow166, 61
  %or.cond163 = select i1 %.not86, i1 true, i1 %i.eg
  br i1 %or.cond163, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 8 uses
  %.not1.i.i120 = icmp eq i8 %.val114, 0
  br i1 %.not1.i.i120, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.ei = zext nneg i8 %.val114 to i64            ; 2 uses
  %i.ej = zext nneg i8 %.sroa.speculated to i64
  %.idx.i.i121 = shl nuw nsw i64 %i.ei, 2         ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %i.eh, i64 %i.ej
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.ei ; 16 uses
  %i.em = getelementptr i8, ptr %i.eh, i64 %.idx.i.i121 ; 16 uses
  %i.en = add nsw i64 %.idx.i.i121, -4            ; 2 uses
  %i.eo = lshr exact i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check197 = icmp ult i64 %i.en, 28
  br i1 %min.iters.check197, label %.lr.ph.i.i122.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec199 = and i64 %i.ep, 9223372036854775800  ; 8 uses
  %i.eq = mul i64 %n.vec199, -4                   ; 2 uses
  %i.er = getelementptr i8, ptr %i.el, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.em, i64 %i.eq
  %i.et = getelementptr inbounds i8, ptr %i.em, i64 -16
  %i.eu = getelementptr inbounds i8, ptr %i.em, i64 -32
  %wide.load204 = load <4 x i32>, ptr %i.et, align 4
  %wide.load205 = load <4 x i32>, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds i8, ptr %i.el, i64 -16
  %i.ew = getelementptr inbounds i8, ptr %i.el, i64 -32
  store <4 x i32> %wide.load204, ptr %i.ev, align 1
  store <4 x i32> %wide.load205, ptr %i.ew, align 1
  %i.ex = icmp eq i64 %n.vec199, 8
  br i1 %i.ex, label %middle.block207, label %vector.body200.1

vector.body200.1:                                 ; preds = %vector.ph198
  %i.ey = getelementptr i8, ptr %i.em, i64 -48
  %i.ez = getelementptr i8, ptr %i.em, i64 -64
  %wide.load204.1 = load <4 x i32>, ptr %i.ey, align 4
  %wide.load205.1 = load <4 x i32>, ptr %i.ez, align 4
  %i.fa = getelementptr i8, ptr %i.el, i64 -48
  %i.fb = getelementptr i8, ptr %i.el, i64 -64
  store <4 x i32> %wide.load204.1, ptr %i.fa, align 1
  store <4 x i32> %wide.load205.1, ptr %i.fb, align 1
  %i.fc = icmp eq i64 %n.vec199, 16
  br i1 %i.fc, label %middle.block207, label %vector.body200.2

vector.body200.2:                                 ; preds = %vector.body200.1
  %i.fd = getelementptr i8, ptr %i.em, i64 -80
  %i.fe = getelementptr i8, ptr %i.em, i64 -96
  %wide.load204.2 = load <4 x i32>, ptr %i.fd, align 4
  %wide.load205.2 = load <4 x i32>, ptr %i.fe, align 4
  %i.ff = getelementptr i8, ptr %i.el, i64 -80
  %i.fg = getelementptr i8, ptr %i.el, i64 -96
  store <4 x i32> %wide.load204.2, ptr %i.ff, align 1
  store <4 x i32> %wide.load205.2, ptr %i.fg, align 1
  %i.fh = icmp eq i64 %n.vec199, 24
  br i1 %i.fh, label %middle.block207, label %vector.body200.3

vector.body200.3:                                 ; preds = %vector.body200.2
  %i.fi = getelementptr i8, ptr %i.em, i64 -112
  %i.fj = getelementptr i8, ptr %i.em, i64 -128
  %wide.load204.3 = load <4 x i32>, ptr %i.fi, align 4
  %wide.load205.3 = load <4 x i32>, ptr %i.fj, align 4
  %i.fk = getelementptr i8, ptr %i.el, i64 -112
  %i.fl = getelementptr i8, ptr %i.el, i64 -128
  store <4 x i32> %wide.load204.3, ptr %i.fk, align 1
  store <4 x i32> %wide.load205.3, ptr %i.fl, align 1
  %i.fm = icmp eq i64 %n.vec199, 32
  br i1 %i.fm, label %middle.block207, label %vector.body200.4

vector.body200.4:                                 ; preds = %vector.body200.3
  %i.fn = getelementptr i8, ptr %i.em, i64 -144
  %i.fo = getelementptr i8, ptr %i.em, i64 -160
  %wide.load204.4 = load <4 x i32>, ptr %i.fn, align 4
  %wide.load205.4 = load <4 x i32>, ptr %i.fo, align 4
  %i.fp = getelementptr i8, ptr %i.el, i64 -144
  %i.fq = getelementptr i8, ptr %i.el, i64 -160
  store <4 x i32> %wide.load204.4, ptr %i.fp, align 1
  store <4 x i32> %wide.load205.4, ptr %i.fq, align 1
  %i.fr = icmp eq i64 %n.vec199, 40
  br i1 %i.fr, label %middle.block207, label %vector.body200.5

vector.body200.5:                                 ; preds = %vector.body200.4
  %i.fs = getelementptr i8, ptr %i.em, i64 -176
  %i.ft = getelementptr i8, ptr %i.em, i64 -192
  %wide.load204.5 = load <4 x i32>, ptr %i.fs, align 4
  %wide.load205.5 = load <4 x i32>, ptr %i.ft, align 4
  %i.fu = getelementptr i8, ptr %i.el, i64 -176
  %i.fv = getelementptr i8, ptr %i.el, i64 -192
  store <4 x i32> %wide.load204.5, ptr %i.fu, align 1
  store <4 x i32> %wide.load205.5, ptr %i.fv, align 1
  %i.fw = icmp eq i64 %n.vec199, 48
  br i1 %i.fw, label %middle.block207, label %vector.body200.6

vector.body200.6:                                 ; preds = %vector.body200.5
  %i.fx = getelementptr i8, ptr %i.em, i64 -208
  %i.fy = getelementptr i8, ptr %i.em, i64 -224
  %wide.load204.6 = load <4 x i32>, ptr %i.fx, align 4
  %wide.load205.6 = load <4 x i32>, ptr %i.fy, align 4
  %i.fz = getelementptr i8, ptr %i.el, i64 -208
  %i.ga = getelementptr i8, ptr %i.el, i64 -224
  store <4 x i32> %wide.load204.6, ptr %i.fz, align 1
  store <4 x i32> %wide.load205.6, ptr %i.ga, align 1
  br label %middle.block207

middle.block207:                                  ; preds = %vector.body200.6, %vector.body200.5, %vector.body200.4, %vector.body200.3, %vector.body200.2, %vector.body200.1, %vector.ph198
  %cmp.n208 = icmp eq i64 %i.ep, %n.vec199
  br i1 %cmp.n208, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit, label %.lr.ph.i.i122.preheader

.lr.ph.i.i122.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block207
  %.03.i.i123.ph = phi ptr [ %i.el, %.lr.ph.preheader.i.i ], [ %i.er, %middle.block207 ]
  %.0142.i.i.ph = phi ptr [ %i.em, %.lr.ph.preheader.i.i ], [ %i.es, %middle.block207 ]
  br label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122.preheader, %.lr.ph.i.i122
  %.03.i.i123 = phi ptr [ %i.gb, %.lr.ph.i.i122 ], [ %.03.i.i123.ph, %.lr.ph.i.i122.preheader ]
  %.0142.i.i = phi ptr [ %i.gc, %.lr.ph.i.i122 ], [ %.0142.i.i.ph, %.lr.ph.i.i122.preheader ]
  %i.gb = getelementptr inbounds i8, ptr %.03.i.i123, i64 -4 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.0142.i.i, i64 -4 ; 3 uses
  %.val.i.i124 = load i32, ptr %i.gc, align 4
  store i32 %.val.i.i124, ptr %i.gb, align 1
  %.not.i.i125 = icmp eq ptr %i.gc, %i.eh
  br i1 %.not.i.i125, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit, label %.lr.ph.i.i122, !llvm.loop !14972

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit: ; preds = %.lr.ph.i.i122, %middle.block207
  %.val56.i.pre = load i8, ptr %i.d, align 8, !tbaa !813
  %.val54.i126.pre = load ptr, ptr %i.b, align 8, !tbaa !1982
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit, %bb.k
  %.val54.i126 = phi ptr [ %.val54.i126.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit ], [ %.val100, %bb.k ]
  %.val56.i = phi i8 [ %.val56.i.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit ], [ %.val108, %bb.k ]
  %i.gd = add nsw i32 %i.ee, -1                   ; 3 uses
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = zext i8 %.val56.i to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %.val54.i126, i64 12
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gf
  %.val.i59.i = load i32, ptr %i.gi, align 4
  store i32 %.val.i59.i, ptr %i.gg, align 1
  %.val52.i127 = load i8, ptr %i.ec, align 2, !tbaa !813 ; 2 uses
  %i.gj = zext i8 %.val52.i127 to i32             ; 2 uses
  %i.gk = sub nsw i32 %i.gj, %i.gd
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gl ; 5 uses
  %.idx.i60.i = shl nuw nsw i64 %i.ge, 2          ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx.i60.i
  %.not1.i61.i = icmp eq i32 %i.gd, 0
  br i1 %.not1.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i134, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i
  %i.gp = add nsw i64 %.idx.i60.i, -4             ; 2 uses
  %i.gq = lshr exact i64 %i.gp, 2
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check214 = icmp ult i64 %i.gp, 140
  br i1 %min.iters.check214, label %.lr.ph.i63.i.preheader228, label %vector.memcheck211

vector.memcheck211:                               ; preds = %.lr.ph.i63.i.preheader
  %i.gs = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1)
  %i.gt = shl nuw i8 %i.gs, 2
  %i.gu = zext i8 %i.gt to i64
  %3 = add i64 %i.dv, %i.gu
  %i.gv = zext i8 %.val52.i127 to i64
  %i.gw = shl nuw nsw i64 %i.gv, 2
  %i.gx = add i64 %i.gw, %i.c
  %i.gy = sub i64 %3, %i.gx
  %i.gz = add i64 %i.gy, -5
  %diff.check212 = icmp ult i64 %i.gz, 31
  br i1 %diff.check212, label %.lr.ph.i63.i.preheader228, label %vector.ph215

vector.ph215:                                     ; preds = %vector.memcheck211
  %n.vec216 = and i64 %i.gr, 9223372036854775800  ; 3 uses
  %i.ha = shl i64 %n.vec216, 2                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.eh, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.gn, i64 %i.ha
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body217 ] ; 2 uses
  %i.hd = shl i64 %index218, 2                    ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.eh, i64 %i.hd ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.gn, i64 %i.hd ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep220, i64 16
  %wide.load221 = load <4 x i32>, ptr %next.gep220, align 4
  %wide.load222 = load <4 x i32>, ptr %i.he, align 4
  %i.hf = getelementptr i8, ptr %next.gep219, i64 16
  store <4 x i32> %wide.load221, ptr %next.gep219, align 1
  store <4 x i32> %wide.load222, ptr %i.hf, align 1
  %index.next223 = add nuw i64 %index218, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.hg, label %middle.block224, label %vector.body217, !llvm.loop !14973

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.gr, %n.vec216
  br i1 %cmp.n225, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i131, label %.lr.ph.i63.i.preheader228

.lr.ph.i63.i.preheader228:                        ; preds = %vector.memcheck211, %.lr.ph.i63.i.preheader, %middle.block224
  %.03.i64.i.ph = phi ptr [ %i.eh, %vector.memcheck211 ], [ %i.eh, %.lr.ph.i63.i.preheader ], [ %i.hb, %middle.block224 ]
  %.0122.i.i128.ph = phi ptr [ %i.gn, %vector.memcheck211 ], [ %i.gn, %.lr.ph.i63.i.preheader ], [ %i.hc, %middle.block224 ]
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader228, %.lr.ph.i63.i
  %.03.i64.i = phi ptr [ %i.hi, %.lr.ph.i63.i ], [ %.03.i64.i.ph, %.lr.ph.i63.i.preheader228 ] ; 2 uses
  %.0122.i.i128 = phi ptr [ %i.hh, %.lr.ph.i63.i ], [ %.0122.i.i128.ph, %.lr.ph.i63.i.preheader228 ] ; 2 uses
  %.012.val.i.i129 = load i32, ptr %.0122.i.i128, align 4
  store i32 %.012.val.i.i129, ptr %.03.i64.i, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.0122.i.i128, i64 4 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.03.i64.i, i64 4
  %.not.i65.i130 = icmp eq ptr %i.hh, %i.go
  br i1 %.not.i65.i130, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i131, label %.lr.ph.i63.i, !llvm.loop !14974

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i131: ; preds = %.lr.ph.i63.i, %middle.block224
  %.val51.pre.i132 = load i8, ptr %i.ec, align 2, !tbaa !813
  %.pre.i133 = zext i8 %.val51.pre.i132 to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i134

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i134: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i131, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i
  %.pre-phi.i135 = phi i32 [ %.pre.i133, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i131 ], [ %i.gj, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i ]
  %.val53.i136 = load ptr, ptr %i.b, align 8, !tbaa !1982
  %.val55.i = load i8, ptr %i.d, align 8, !tbaa !813
  %i.hj = zext i8 %.val55.i to i64
  %i.hk = sub nsw i32 %.pre-phi.i135, %i.ee
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %.val53.i136, i64 12
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hj
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.hl
  %.val.i66.i = load i32, ptr %i.ho, align 4
  store i32 %.val.i66.i, ptr %i.hn, align 1
  %i.hp = getelementptr i8, ptr %i.b, i64 11
  %.val57.i = load i8, ptr %i.hp, align 1, !tbaa !813
  %.not.i67.i = icmp eq i8 %.val57.i, 0
  br i1 %.not.i67.i, label %bb.l, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i134
  %.val50.i138 = load i8, ptr %i.dw, align 1, !tbaa !813 ; 5 uses
  %i.hq = add i8 %.val50.i138, 1                  ; 2 uses
  %.not1.i = icmp eq i8 %i.hq, 0
  br i1 %.not1.i, label %.lr.ph5.i, label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %bb.l
  %i.hr = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 6 uses
  %i.hs = zext i8 %i.hq to i64                    ; 2 uses
  %i.ht = and i8 %.val50.i138, 1
  %lcmp.mod233.not.not = icmp eq i8 %i.ht, 0
  br i1 %lcmp.mod233.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i139
  %i.hu = add i8 %.val50.i138, %.sroa.speculated  ; 2 uses
  %i.hv = zext i8 %.val50.i138 to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !1982 ; 3 uses
  %i.hy = zext i8 %i.hu to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hy
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !1982
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i8 %i.hu, ptr %i.ia, align 1, !tbaa !813
  store ptr %i.du, ptr %i.hx, align 8, !tbaa !1982
  %indvars.iv.next.i141.prol = add nsw i64 %i.hs, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i139
  %indvars.iv.i140.unr = phi i64 [ %i.hs, %.lr.ph.i139 ], [ %indvars.iv.next.i141.prol, %.prol.loopexit.unr-lcssa ]
  %i.ib = icmp eq i8 %.val50.i138, 0
  br i1 %i.ib, label %.lr.ph5.i, label %.lr.ph.i139.new

.lr.ph5.i:                                        ; preds = %.prol.loopexit, %.lr.ph.i139.new, %bb.l
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 3 uses
  %i.ie = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1) ; 2 uses
  %umax = zext nneg i8 %i.ie to i64               ; 2 uses
  %xtraiter235 = and i64 %umax, 1
  %i.if = icmp samesign ult i8 %i.ea, 2
  br i1 %i.if, label %.epil.preheader234, label %.lr.ph5.i.new

.lr.ph5.i.new:                                    ; preds = %.lr.ph5.i
  %unroll_iter238 = and i64 %umax, 62
  %invariant.op = sub i8 1, %.sroa.speculated
  br label %bb.m

.lr.ph.i139.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i139.new
  %indvars.iv.i140 = phi i64 [ %indvars.iv.next.i141.1, %.lr.ph.i139.new ], [ %indvars.iv.i140.unr, %.prol.loopexit ] ; 3 uses
  %i.ig = trunc nuw i64 %indvars.iv.i140 to i8
  %i.ih = add i8 %i.ig, -1                        ; 2 uses
  %i.ii = add i8 %i.ih, %.sroa.speculated         ; 2 uses
  %i.ij = zext i8 %i.ih to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !1982 ; 3 uses
  %i.im = zext i8 %i.ii to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.im
  store ptr %i.il, ptr %i.in, align 8, !tbaa !1982
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i8 %i.ii, ptr %i.io, align 1, !tbaa !813
  store ptr %i.du, ptr %i.il, align 8, !tbaa !1982
  %i.ip = trunc i64 %indvars.iv.i140 to i8
  %i.iq = add i8 %i.ip, -2                        ; 2 uses
  %i.ir = add i8 %i.iq, %.sroa.speculated         ; 2 uses
  %i.is = zext i8 %i.iq to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !1982 ; 3 uses
  %i.iv = zext i8 %i.ir to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.iv
  store ptr %i.iu, ptr %i.iw, align 8, !tbaa !1982
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i8 %i.ir, ptr %i.ix, align 1, !tbaa !813
  store ptr %i.du, ptr %i.iu, align 8, !tbaa !1982
  %indvars.iv.next.i141.1 = add nsw i64 %indvars.iv.i140, -2 ; 2 uses
  %i.iy = and i64 %indvars.iv.next.i141.1, 255
  %.not.i142.1 = icmp eq i64 %i.iy, 0
  br i1 %.not.i142.1, label %.lr.ph5.i, label %.lr.ph.i139.new, !llvm.loop !14975

bb.m:                                             ; preds = %bb.m, %.lr.ph5.i.new
  %indvars.iv7.i = phi i64 [ 1, %.lr.ph5.i.new ], [ %indvars.iv.next8.i.1, %bb.m ] ; 6 uses
  %niter239 = phi i64 [ 0, %.lr.ph5.i.new ], [ %niter239.next.1, %bb.m ]
  %i.iz = add nsw i64 %indvars.iv7.i, -1          ; 2 uses
  %.val49.i144 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.ja = trunc nuw i64 %indvars.iv7.i to i8
  %i.jb = sub i8 %i.ja, %.sroa.speculated
  %i.jc = add i8 %i.jb, %.val49.i144
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !1982 ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iz
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !1982
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.ji = trunc nuw i64 %i.iz to i8
  store i8 %i.ji, ptr %i.jh, align 1, !tbaa !813
  store ptr %i.du, ptr %i.jf, align 8, !tbaa !1982
  %.val49.i144.1 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.jj = trunc i64 %indvars.iv7.i to i8
  %.reass = add i8 %i.jj, %invariant.op
  %i.jk = add i8 %.reass, %.val49.i144.1
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !1982 ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv7.i
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !1982
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = trunc nuw i64 %indvars.iv7.i to i8
  store i8 %i.jq, ptr %i.jp, align 1, !tbaa !813
  store ptr %i.du, ptr %i.jn, align 8, !tbaa !1982
  %indvars.iv.next8.i.1 = add nuw nsw i64 %indvars.iv7.i, 2 ; 2 uses
  %niter239.next.1 = add nuw i64 %niter239, 2     ; 2 uses
  %niter239.ncmp.1 = icmp eq i64 %niter239.next.1, %unroll_iter238
  br i1 %niter239.ncmp.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !14976

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit, label %.epil.preheader234

.epil.preheader234:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit.loopexit.unr-lcssa, %.lr.ph5.i
  %indvars.iv7.i.epil.init = phi i64 [ 1, %.lr.ph5.i ], [ %indvars.iv.next8.i.1, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod237 = trunc i8 %i.ie to i1
  tail call void @llvm.assume(i1 %lcmp.mod237)
  %i.jr = add nsw i64 %indvars.iv7.i.epil.init, -1 ; 2 uses
  %.val49.i144.epil = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.js = trunc nuw i64 %indvars.iv7.i.epil.init to i8
  %i.jt = sub i8 %i.js, %.sroa.speculated
  %i.ju = add i8 %i.jt, %.val49.i144.epil
  %i.jv = zext i8 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1982 ; 3 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.jr
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !1982
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERKiPSB_EE:bb.a

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.do = getelementptr i8, ptr %.val100, i64 10
  %.val96 = load i8, ptr %i.do, align 1, !tbaa !813 ; 2 uses
  %i.dp = icmp ult i8 %.val108, %.val96
  br i1 %i.dp, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dq = add nuw i8 %.val108, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.val100, i64 256
  %i.ds = zext i8 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1992 ; 12 uses
  %i.dv = ptrtoaddr ptr %i.du to i64
  %i.dw = getelementptr i8, ptr %i.du, i64 10     ; 4 uses
  %.val114 = load i8, ptr %i.dw, align 1, !tbaa !813 ; 5 uses
  %i.dx = icmp ult i8 %.val114, 61
  br i1 %i.dx, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %narrow165 = sub nuw nsw i8 61, %.val114
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !802 ; 2 uses
  %.inv = icmp sgt i32 %i.dy, 0
  %i.dz = zext i1 %.inv to i8
  %i.ea = lshr i8 %narrow165, %i.dz               ; 4 uses
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1) ; 11 uses
  %i.eb = and i32 %i.dy, 255
  %i.ec = getelementptr i8, ptr %i.b, i64 10      ; 8 uses
  %.val95 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.ed = zext i8 %.val95 to i32
  %i.ee = zext nneg i8 %.sroa.speculated to i32   ; 3 uses
  %i.ef = sub nsw i32 %i.ed, %i.ee
  %.not86 = icmp sle i32 %i.eb, %i.ef
  %narrow166 = add nuw nsw i8 %.sroa.speculated, %.val114
  %i.eg = icmp samesign ult i8 %narrow166, 61
  %or.cond163 = select i1 %.not86, i1 true, i1 %i.eg
  br i1 %or.cond163, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 8 uses
  %.not1.i.i120 = icmp eq i8 %.val114, 0
  br i1 %.not1.i.i120, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.ei = zext nneg i8 %.val114 to i64            ; 2 uses
  %i.ej = zext nneg i8 %.sroa.speculated to i64
  %.idx.i.i121 = shl nuw nsw i64 %i.ei, 2         ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %i.eh, i64 %i.ej
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.ei ; 16 uses
  %i.em = getelementptr i8, ptr %i.eh, i64 %.idx.i.i121 ; 16 uses
  %i.en = add nsw i64 %.idx.i.i121, -4            ; 2 uses
  %i.eo = lshr exact i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check197 = icmp ult i64 %i.en, 28
  br i1 %min.iters.check197, label %.lr.ph.i.i122.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec199 = and i64 %i.ep, 9223372036854775800  ; 8 uses
  %i.eq = mul i64 %n.vec199, -4                   ; 2 uses
  %i.er = getelementptr i8, ptr %i.el, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.em, i64 %i.eq
  %i.et = getelementptr inbounds i8, ptr %i.em, i64 -16
  %i.eu = getelementptr inbounds i8, ptr %i.em, i64 -32
  %wide.load204 = load <4 x i32>, ptr %i.et, align 4
  %wide.load205 = load <4 x i32>, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds i8, ptr %i.el, i64 -16
  %i.ew = getelementptr inbounds i8, ptr %i.el, i64 -32
  store <4 x i32> %wide.load204, ptr %i.ev, align 1
  store <4 x i32> %wide.load205, ptr %i.ew, align 1
  %i.ex = icmp eq i64 %n.vec199, 8
  br i1 %i.ex, label %middle.block207, label %vector.body200.1

vector.body200.1:                                 ; preds = %vector.ph198
  %i.ey = getelementptr i8, ptr %i.em, i64 -48
  %i.ez = getelementptr i8, ptr %i.em, i64 -64
  %wide.load204.1 = load <4 x i32>, ptr %i.ey, align 4
  %wide.load205.1 = load <4 x i32>, ptr %i.ez, align 4
  %i.fa = getelementptr i8, ptr %i.el, i64 -48
  %i.fb = getelementptr i8, ptr %i.el, i64 -64
  store <4 x i32> %wide.load204.1, ptr %i.fa, align 1
  store <4 x i32> %wide.load205.1, ptr %i.fb, align 1
  %i.fc = icmp eq i64 %n.vec199, 16
  br i1 %i.fc, label %middle.block207, label %vector.body200.2

vector.body200.2:                                 ; preds = %vector.body200.1
  %i.fd = getelementptr i8, ptr %i.em, i64 -80
  %i.fe = getelementptr i8, ptr %i.em, i64 -96
  %wide.load204.2 = load <4 x i32>, ptr %i.fd, align 4
  %wide.load205.2 = load <4 x i32>, ptr %i.fe, align 4
  %i.ff = getelementptr i8, ptr %i.el, i64 -80
  %i.fg = getelementptr i8, ptr %i.el, i64 -96
  store <4 x i32> %wide.load204.2, ptr %i.ff, align 1
  store <4 x i32> %wide.load205.2, ptr %i.fg, align 1
  %i.fh = icmp eq i64 %n.vec199, 24
  br i1 %i.fh, label %middle.block207, label %vector.body200.3

vector.body200.3:                                 ; preds = %vector.body200.2
  %i.fi = getelementptr i8, ptr %i.em, i64 -112
  %i.fj = getelementptr i8, ptr %i.em, i64 -128
  %wide.load204.3 = load <4 x i32>, ptr %i.fi, align 4
  %wide.load205.3 = load <4 x i32>, ptr %i.fj, align 4
  %i.fk = getelementptr i8, ptr %i.el, i64 -112
  %i.fl = getelementptr i8, ptr %i.el, i64 -128
  store <4 x i32> %wide.load204.3, ptr %i.fk, align 1
  store <4 x i32> %wide.load205.3, ptr %i.fl, align 1
  %i.fm = icmp eq i64 %n.vec199, 32
  br i1 %i.fm, label %middle.block207, label %vector.body200.4

vector.body200.4:                                 ; preds = %vector.body200.3
  %i.fn = getelementptr i8, ptr %i.em, i64 -144
  %i.fo = getelementptr i8, ptr %i.em, i64 -160
  %wide.load204.4 = load <4 x i32>, ptr %i.fn, align 4
  %wide.load205.4 = load <4 x i32>, ptr %i.fo, align 4
  %i.fp = getelementptr i8, ptr %i.el, i64 -144
  %i.fq = getelementptr i8, ptr %i.el, i64 -160
  store <4 x i32> %wide.load204.4, ptr %i.fp, align 1
  store <4 x i32> %wide.load205.4, ptr %i.fq, align 1
  %i.fr = icmp eq i64 %n.vec199, 40
  br i1 %i.fr, label %middle.block207, label %vector.body200.5

vector.body200.5:                                 ; preds = %vector.body200.4
  %i.fs = getelementptr i8, ptr %i.em, i64 -176
  %i.ft = getelementptr i8, ptr %i.em, i64 -192
  %wide.load204.5 = load <4 x i32>, ptr %i.fs, align 4
  %wide.load205.5 = load <4 x i32>, ptr %i.ft, align 4
  %i.fu = getelementptr i8, ptr %i.el, i64 -176
  %i.fv = getelementptr i8, ptr %i.el, i64 -192
  store <4 x i32> %wide.load204.5, ptr %i.fu, align 1
  store <4 x i32> %wide.load205.5, ptr %i.fv, align 1
  %i.fw = icmp eq i64 %n.vec199, 48
  br i1 %i.fw, label %middle.block207, label %vector.body200.6

vector.body200.6:                                 ; preds = %vector.body200.5
  %i.fx = getelementptr i8, ptr %i.em, i64 -208
  %i.fy = getelementptr i8, ptr %i.em, i64 -224
  %wide.load204.6 = load <4 x i32>, ptr %i.fx, align 4
  %wide.load205.6 = load <4 x i32>, ptr %i.fy, align 4
  %i.fz = getelementptr i8, ptr %i.el, i64 -208
  %i.ga = getelementptr i8, ptr %i.el, i64 -224
  store <4 x i32> %wide.load204.6, ptr %i.fz, align 1
  store <4 x i32> %wide.load205.6, ptr %i.ga, align 1
  br label %middle.block207

middle.block207:                                  ; preds = %vector.body200.6, %vector.body200.5, %vector.body200.4, %vector.body200.3, %vector.body200.2, %vector.body200.1, %vector.ph198
  %cmp.n208 = icmp eq i64 %i.ep, %n.vec199
  br i1 %cmp.n208, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit, label %.lr.ph.i.i122.preheader

.lr.ph.i.i122.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block207
  %.03.i.i123.ph = phi ptr [ %i.el, %.lr.ph.preheader.i.i ], [ %i.er, %middle.block207 ]
  %.0142.i.i.ph = phi ptr [ %i.em, %.lr.ph.preheader.i.i ], [ %i.es, %middle.block207 ]
  br label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122.preheader, %.lr.ph.i.i122
  %.03.i.i123 = phi ptr [ %i.gb, %.lr.ph.i.i122 ], [ %.03.i.i123.ph, %.lr.ph.i.i122.preheader ]
  %.0142.i.i = phi ptr [ %i.gc, %.lr.ph.i.i122 ], [ %.0142.i.i.ph, %.lr.ph.i.i122.preheader ]
  %i.gb = getelementptr inbounds i8, ptr %.03.i.i123, i64 -4 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.0142.i.i, i64 -4 ; 3 uses
  %.val.i.i124 = load i32, ptr %i.gc, align 4
  store i32 %.val.i.i124, ptr %i.gb, align 1
  %.not.i.i125 = icmp eq ptr %i.gc, %i.eh
  br i1 %.not.i.i125, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit, label %.lr.ph.i.i122, !llvm.loop !14992

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit: ; preds = %.lr.ph.i.i122, %middle.block207
  %.val56.i.pre = load i8, ptr %i.d, align 8, !tbaa !813
  %.val54.i126.pre = load ptr, ptr %i.b, align 8, !tbaa !1992
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit, %bb.k
  %.val54.i126 = phi ptr [ %.val54.i126.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit ], [ %.val100, %bb.k ]
  %.val56.i = phi i8 [ %.val56.i.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i.loopexit ], [ %.val108, %bb.k ]
  %i.gd = add nsw i32 %i.ee, -1                   ; 3 uses
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = zext i8 %.val56.i to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %.val54.i126, i64 12
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gf
  %.val.i59.i = load i32, ptr %i.gi, align 4
  store i32 %.val.i59.i, ptr %i.gg, align 1
  %.val52.i127 = load i8, ptr %i.ec, align 2, !tbaa !813 ; 2 uses
  %i.gj = zext i8 %.val52.i127 to i32             ; 2 uses
  %i.gk = sub nsw i32 %i.gj, %i.gd
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gl ; 5 uses
  %.idx.i60.i = shl nuw nsw i64 %i.ge, 2          ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx.i60.i
  %.not1.i61.i = icmp eq i32 %i.gd, 0
  br i1 %.not1.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i134, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i
  %i.gp = add nsw i64 %.idx.i60.i, -4             ; 2 uses
  %i.gq = lshr exact i64 %i.gp, 2
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check214 = icmp ult i64 %i.gp, 140
  br i1 %min.iters.check214, label %.lr.ph.i63.i.preheader228, label %vector.memcheck211

vector.memcheck211:                               ; preds = %.lr.ph.i63.i.preheader
  %i.gs = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1)
  %i.gt = shl nuw i8 %i.gs, 2
  %i.gu = zext i8 %i.gt to i64
  %3 = add i64 %i.dv, %i.gu
  %i.gv = zext i8 %.val52.i127 to i64
  %i.gw = shl nuw nsw i64 %i.gv, 2
  %i.gx = add i64 %i.gw, %i.c
  %i.gy = sub i64 %3, %i.gx
  %i.gz = add i64 %i.gy, -5
  %diff.check212 = icmp ult i64 %i.gz, 31
  br i1 %diff.check212, label %.lr.ph.i63.i.preheader228, label %vector.ph215

vector.ph215:                                     ; preds = %vector.memcheck211
  %n.vec216 = and i64 %i.gr, 9223372036854775800  ; 3 uses
  %i.ha = shl i64 %n.vec216, 2                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.eh, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.gn, i64 %i.ha
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body217 ] ; 2 uses
  %i.hd = shl i64 %index218, 2                    ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.eh, i64 %i.hd ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.gn, i64 %i.hd ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep220, i64 16
  %wide.load221 = load <4 x i32>, ptr %next.gep220, align 4
  %wide.load222 = load <4 x i32>, ptr %i.he, align 4
  %i.hf = getelementptr i8, ptr %next.gep219, i64 16
  store <4 x i32> %wide.load221, ptr %next.gep219, align 1
  store <4 x i32> %wide.load222, ptr %i.hf, align 1
  %index.next223 = add nuw i64 %index218, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.hg, label %middle.block224, label %vector.body217, !llvm.loop !14993

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.gr, %n.vec216
  br i1 %cmp.n225, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i131, label %.lr.ph.i63.i.preheader228

.lr.ph.i63.i.preheader228:                        ; preds = %vector.memcheck211, %.lr.ph.i63.i.preheader, %middle.block224
  %.03.i64.i.ph = phi ptr [ %i.eh, %vector.memcheck211 ], [ %i.eh, %.lr.ph.i63.i.preheader ], [ %i.hb, %middle.block224 ]
  %.0122.i.i128.ph = phi ptr [ %i.gn, %vector.memcheck211 ], [ %i.gn, %.lr.ph.i63.i.preheader ], [ %i.hc, %middle.block224 ]
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader228, %.lr.ph.i63.i
  %.03.i64.i = phi ptr [ %i.hi, %.lr.ph.i63.i ], [ %.03.i64.i.ph, %.lr.ph.i63.i.preheader228 ] ; 2 uses
  %.0122.i.i128 = phi ptr [ %i.hh, %.lr.ph.i63.i ], [ %.0122.i.i128.ph, %.lr.ph.i63.i.preheader228 ] ; 2 uses
  %.012.val.i.i129 = load i32, ptr %.0122.i.i128, align 4
  store i32 %.012.val.i.i129, ptr %.03.i64.i, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.0122.i.i128, i64 4 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.03.i64.i, i64 4
  %.not.i65.i130 = icmp eq ptr %i.hh, %i.go
  br i1 %.not.i65.i130, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i131, label %.lr.ph.i63.i, !llvm.loop !14994

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i131: ; preds = %.lr.ph.i63.i, %middle.block224
  %.val51.pre.i132 = load i8, ptr %i.ec, align 2, !tbaa !813
  %.pre.i133 = zext i8 %.val51.pre.i132 to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i134

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i134: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i131, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i
  %.pre-phi.i135 = phi i32 [ %.pre.i133, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i131 ], [ %i.gj, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i ]
  %.val53.i136 = load ptr, ptr %i.b, align 8, !tbaa !1992
  %.val55.i = load i8, ptr %i.d, align 8, !tbaa !813
  %i.hj = zext i8 %.val55.i to i64
  %i.hk = sub nsw i32 %.pre-phi.i135, %i.ee
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %.val53.i136, i64 12
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hj
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.hl
  %.val.i66.i = load i32, ptr %i.ho, align 4
  store i32 %.val.i66.i, ptr %i.hn, align 1
  %i.hp = getelementptr i8, ptr %i.b, i64 11
  %.val57.i = load i8, ptr %i.hp, align 1, !tbaa !813
  %.not.i67.i = icmp eq i8 %.val57.i, 0
  br i1 %.not.i67.i, label %bb.l, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i134
  %.val50.i138 = load i8, ptr %i.dw, align 1, !tbaa !813 ; 5 uses
  %i.hq = add i8 %.val50.i138, 1                  ; 2 uses
  %.not1.i = icmp eq i8 %i.hq, 0
  br i1 %.not1.i, label %.lr.ph5.i, label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %bb.l
  %i.hr = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 6 uses
  %i.hs = zext i8 %i.hq to i64                    ; 2 uses
  %i.ht = and i8 %.val50.i138, 1
  %lcmp.mod233.not.not = icmp eq i8 %i.ht, 0
  br i1 %lcmp.mod233.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i139
  %i.hu = add i8 %.val50.i138, %.sroa.speculated  ; 2 uses
  %i.hv = zext i8 %.val50.i138 to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !1992 ; 3 uses
  %i.hy = zext i8 %i.hu to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hy
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !1992
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i8 %i.hu, ptr %i.ia, align 1, !tbaa !813
  store ptr %i.du, ptr %i.hx, align 8, !tbaa !1992
  %indvars.iv.next.i141.prol = add nsw i64 %i.hs, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i139
  %indvars.iv.i140.unr = phi i64 [ %i.hs, %.lr.ph.i139 ], [ %indvars.iv.next.i141.prol, %.prol.loopexit.unr-lcssa ]
  %i.ib = icmp eq i8 %.val50.i138, 0
  br i1 %i.ib, label %.lr.ph5.i, label %.lr.ph.i139.new

.lr.ph5.i:                                        ; preds = %.prol.loopexit, %.lr.ph.i139.new, %bb.l
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 3 uses
  %i.ie = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1) ; 2 uses
  %umax = zext nneg i8 %i.ie to i64               ; 2 uses
  %xtraiter235 = and i64 %umax, 1
  %i.if = icmp samesign ult i8 %i.ea, 2
  br i1 %i.if, label %.epil.preheader234, label %.lr.ph5.i.new

.lr.ph5.i.new:                                    ; preds = %.lr.ph5.i
  %unroll_iter238 = and i64 %umax, 62
  %invariant.op = sub i8 1, %.sroa.speculated
  br label %bb.m

.lr.ph.i139.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i139.new
  %indvars.iv.i140 = phi i64 [ %indvars.iv.next.i141.1, %.lr.ph.i139.new ], [ %indvars.iv.i140.unr, %.prol.loopexit ] ; 3 uses
  %i.ig = trunc nuw i64 %indvars.iv.i140 to i8
  %i.ih = add i8 %i.ig, -1                        ; 2 uses
  %i.ii = add i8 %i.ih, %.sroa.speculated         ; 2 uses
  %i.ij = zext i8 %i.ih to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !1992 ; 3 uses
  %i.im = zext i8 %i.ii to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.im
  store ptr %i.il, ptr %i.in, align 8, !tbaa !1992
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i8 %i.ii, ptr %i.io, align 1, !tbaa !813
  store ptr %i.du, ptr %i.il, align 8, !tbaa !1992
  %i.ip = trunc i64 %indvars.iv.i140 to i8
  %i.iq = add i8 %i.ip, -2                        ; 2 uses
  %i.ir = add i8 %i.iq, %.sroa.speculated         ; 2 uses
  %i.is = zext i8 %i.iq to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !1992 ; 3 uses
  %i.iv = zext i8 %i.ir to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.iv
  store ptr %i.iu, ptr %i.iw, align 8, !tbaa !1992
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i8 %i.ir, ptr %i.ix, align 1, !tbaa !813
  store ptr %i.du, ptr %i.iu, align 8, !tbaa !1992
  %indvars.iv.next.i141.1 = add nsw i64 %indvars.iv.i140, -2 ; 2 uses
  %i.iy = and i64 %indvars.iv.next.i141.1, 255
  %.not.i142.1 = icmp eq i64 %i.iy, 0
  br i1 %.not.i142.1, label %.lr.ph5.i, label %.lr.ph.i139.new, !llvm.loop !14995

bb.m:                                             ; preds = %bb.m, %.lr.ph5.i.new
  %indvars.iv7.i = phi i64 [ 1, %.lr.ph5.i.new ], [ %indvars.iv.next8.i.1, %bb.m ] ; 6 uses
  %niter239 = phi i64 [ 0, %.lr.ph5.i.new ], [ %niter239.next.1, %bb.m ]
  %i.iz = add nsw i64 %indvars.iv7.i, -1          ; 2 uses
  %.val49.i144 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.ja = trunc nuw i64 %indvars.iv7.i to i8
  %i.jb = sub i8 %i.ja, %.sroa.speculated
  %i.jc = add i8 %i.jb, %.val49.i144
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !1992 ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iz
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !1992
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.ji = trunc nuw i64 %i.iz to i8
  store i8 %i.ji, ptr %i.jh, align 1, !tbaa !813
  store ptr %i.du, ptr %i.jf, align 8, !tbaa !1992
  %.val49.i144.1 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.jj = trunc i64 %indvars.iv7.i to i8
  %.reass = add i8 %i.jj, %invariant.op
  %i.jk = add i8 %.reass, %.val49.i144.1
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !1992 ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv7.i
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !1992
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = trunc nuw i64 %indvars.iv7.i to i8
  store i8 %i.jq, ptr %i.jp, align 1, !tbaa !813
  store ptr %i.du, ptr %i.jn, align 8, !tbaa !1992
  %indvars.iv.next8.i.1 = add nuw nsw i64 %indvars.iv7.i, 2 ; 2 uses
  %niter239.next.1 = add nuw i64 %niter239, 2     ; 2 uses
  %niter239.ncmp.1 = icmp eq i64 %niter239.next.1, %unroll_iter238
  br i1 %niter239.ncmp.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !14996

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit, label %.epil.preheader234

.epil.preheader234:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit.loopexit.unr-lcssa, %.lr.ph5.i
  %indvars.iv7.i.epil.init = phi i64 [ 1, %.lr.ph5.i ], [ %indvars.iv.next8.i.1, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE23rebalance_left_to_rightEhPS7_PSaIiE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod237 = trunc i8 %i.ie to i1
  tail call void @llvm.assume(i1 %lcmp.mod237)
  %i.jr = add nsw i64 %indvars.iv7.i.epil.init, -1 ; 2 uses
  %.val49.i144.epil = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.js = trunc nuw i64 %indvars.iv7.i.epil.init to i8
  %i.jt = sub i8 %i.js, %.sroa.speculated
  %i.ju = add i8 %i.jt, %.val49.i144.epil
  %i.jv = zext i8 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1992 ; 3 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.jr
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !1992
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE23rebalance_right_to_leftEhPS9_PS7_:bb.a
.preheader53:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit51
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
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2068 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !2068
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !813
  store ptr %0, ptr %i.bz, align 8, !tbaa !2068
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !813
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2068 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2068
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %0, ptr %i.cj, align 8, !tbaa !2068
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2068 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !2068
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !813
  store ptr %0, ptr %i.cr, align 8, !tbaa !2068
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !15739

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2068 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !2068
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !813
  store ptr %2, ptr %i.cy, align 8, !tbaa !2068
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !15740

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !813
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !813
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE23rebalance_left_to_rightEhPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.preheader.i

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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !15741

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.i.preheader

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
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.i, !llvm.loop !15742

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !813
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !2068
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !813 ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit
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
  br i1 %i.bi, label %middle.block79, label %vector.body72, !llvm.loop !15743

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.av, %n.vec71
  br i1 %cmp.n80, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i48.preheader83

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
  br i1 %.not.i49, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !15744

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block79
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !813
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !2068
  %i.bn = load i8, ptr %i.ac, align 8, !tbaa !813
  %i.bo = zext i8 %i.bn to i64
  %i.bp = sub nsw i32 %.pre-phi, %i.e
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bq
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bs, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !813
  %.not.i50 = icmp eq i8 %i.bw, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34CopyAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !813  ; 5 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2068 ; 3 uses
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !2068
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cc, ptr %i.ci, align 1, !tbaa !813
  store ptr %2, ptr %i.cf, align 8, !tbaa !2068
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
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !2068 ; 3 uses
  %i.cv = zext i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !2068
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !813
  store ptr %2, ptr %i.cu, align 8, !tbaa !2068
  %i.cy = trunc i64 %indvars.iv to i8
  %i.cz = add i8 %i.cy, -2                        ; 2 uses
  %i.da = add i8 %i.cz, %1                        ; 2 uses
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2068 ; 3 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !2068
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !813
  store ptr %2, ptr %i.dd, align 8, !tbaa !2068
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dh = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dh, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !15745

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.di = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dj = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.dk = trunc nuw i64 %indvars.iv58 to i8
  %i.dl = sub i8 %i.dk, %1
  %i.dm = add i8 %i.dl, %i.dj
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2068 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.di
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !2068
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.di to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  store ptr %2, ptr %i.dp, align 8, !tbaa !2068
  %i.dt = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.du = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.du, %invariant.op
  %i.dv = add i8 %.reass, %i.dt
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !2068 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv58
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !2068
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  store ptr %2, ptr %i.dy, align 8, !tbaa !2068
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !15746

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ec = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ed = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.ee = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ef = sub i8 %i.ee, %1
  %i.eg = add i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.eh
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE23rebalance_right_to_leftEhPS9_PS7_:bb.a
.preheader53:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit51
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
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2079 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !2079
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !813
  store ptr %0, ptr %i.bz, align 8, !tbaa !2079
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !813
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2079 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2079
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %0, ptr %i.cj, align 8, !tbaa !2079
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2079 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !2079
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !813
  store ptr %0, ptr %i.cr, align 8, !tbaa !2079
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !15780

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2079 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !2079
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !813
  store ptr %2, ptr %i.cy, align 8, !tbaa !2079
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !15781

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !813
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !813
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE23rebalance_left_to_rightEhPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.preheader.i

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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !15782

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.i.preheader

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
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.i, !llvm.loop !15783

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !813
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !2079
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !813 ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit
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
  br i1 %i.bi, label %middle.block79, label %vector.body72, !llvm.loop !15784

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.av, %n.vec71
  br i1 %cmp.n80, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i48.preheader83

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
  br i1 %.not.i49, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !15785

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block79
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !813
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !2079
  %i.bn = load i8, ptr %i.ac, align 8, !tbaa !813
  %i.bo = zext i8 %i.bn to i64
  %i.bp = sub nsw i32 %.pre-phi, %i.e
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bq
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bs, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !813
  %.not.i50 = icmp eq i8 %i.bw, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !813  ; 5 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2079 ; 3 uses
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !2079
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cc, ptr %i.ci, align 1, !tbaa !813
  store ptr %2, ptr %i.cf, align 8, !tbaa !2079
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
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !2079 ; 3 uses
  %i.cv = zext i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !2079
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !813
  store ptr %2, ptr %i.cu, align 8, !tbaa !2079
  %i.cy = trunc i64 %indvars.iv to i8
  %i.cz = add i8 %i.cy, -2                        ; 2 uses
  %i.da = add i8 %i.cz, %1                        ; 2 uses
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2079 ; 3 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !2079
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !813
  store ptr %2, ptr %i.dd, align 8, !tbaa !2079
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dh = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dh, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !15786

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.di = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dj = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.dk = trunc nuw i64 %indvars.iv58 to i8
  %i.dl = sub i8 %i.dk, %1
  %i.dm = add i8 %i.dl, %i.dj
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2079 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.di
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !2079
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.di to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  store ptr %2, ptr %i.dp, align 8, !tbaa !2079
  %i.dt = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.du = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.du, %invariant.op
  %i.dv = add i8 %.reass, %i.dt
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !2079 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv58
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !2079
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  store ptr %2, ptr %i.dy, align 8, !tbaa !2079
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !15787

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ec = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ed = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.ee = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ef = sub i8 %i.ee, %1
  %i.eg = add i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.eh
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE23rebalance_right_to_leftEhPS9_PS7_:bb.a
.preheader53:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit51
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
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2099 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !2099
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !813
  store ptr %0, ptr %i.bz, align 8, !tbaa !2099
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !813
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2099 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2099
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %0, ptr %i.cj, align 8, !tbaa !2099
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2099 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !2099
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !813
  store ptr %0, ptr %i.cr, align 8, !tbaa !2099
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !15821

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2099 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !2099
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !813
  store ptr %2, ptr %i.cy, align 8, !tbaa !2099
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !15822

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !813
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !813
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE23rebalance_left_to_rightEhPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.preheader.i

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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !15823

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.i.preheader

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
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.i, !llvm.loop !15824

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !813
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !2099
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !813 ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit
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
  br i1 %i.bi, label %middle.block79, label %vector.body72, !llvm.loop !15825

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.av, %n.vec71
  br i1 %cmp.n80, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i48.preheader83

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
  br i1 %.not.i49, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !15826

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block79
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !813
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !2099
  %i.bn = load i8, ptr %i.ac, align 8, !tbaa !813
  %i.bo = zext i8 %i.bn to i64
  %i.bp = sub nsw i32 %.pre-phi, %i.e
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bq
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bs, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !813
  %.not.i50 = icmp eq i8 %i.bw, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_34MoveAssignPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !813  ; 5 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2099 ; 3 uses
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !2099
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cc, ptr %i.ci, align 1, !tbaa !813
  store ptr %2, ptr %i.cf, align 8, !tbaa !2099
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
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !2099 ; 3 uses
  %i.cv = zext i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !2099
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !813
  store ptr %2, ptr %i.cu, align 8, !tbaa !2099
  %i.cy = trunc i64 %indvars.iv to i8
  %i.cz = add i8 %i.cy, -2                        ; 2 uses
  %i.da = add i8 %i.cz, %1                        ; 2 uses
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2099 ; 3 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !2099
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !813
  store ptr %2, ptr %i.dd, align 8, !tbaa !2099
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dh = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dh, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !15827

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.di = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dj = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.dk = trunc nuw i64 %indvars.iv58 to i8
  %i.dl = sub i8 %i.dk, %1
  %i.dm = add i8 %i.dl, %i.dj
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2099 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.di
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !2099
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.di to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  store ptr %2, ptr %i.dp, align 8, !tbaa !2099
  %i.dt = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.du = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.du, %invariant.op
  %i.dv = add i8 %.reass, %i.dt
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !2099 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv58
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !2099
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  store ptr %2, ptr %i.dy, align 8, !tbaa !2099
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !15828

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ec = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ed = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.ee = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ef = sub i8 %i.ee, %1
  %i.eg = add i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.eh
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE23rebalance_right_to_leftEhPS9_PS7_:bb.a
.preheader53:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit51
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
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2089 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !2089
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !813
  store ptr %0, ptr %i.bz, align 8, !tbaa !2089
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !813
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2089 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2089
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %0, ptr %i.cj, align 8, !tbaa !2089
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2089 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !2089
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !813
  store ptr %0, ptr %i.cr, align 8, !tbaa !2089
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !15863

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2089 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !2089
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !813
  store ptr %2, ptr %i.cy, align 8, !tbaa !2089
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !15864

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !813
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !813
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE23rebalance_left_to_rightEhPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.preheader.i

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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !15865

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.i.preheader

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
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.i, !llvm.loop !15866

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !813
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !2089
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !813 ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit
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
  br i1 %i.bi, label %middle.block79, label %vector.body72, !llvm.loop !15867

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.av, %n.vec71
  br i1 %cmp.n80, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i48.preheader83

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
  br i1 %.not.i49, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !15868

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block79
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !813
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !2089
  %i.bn = load i8, ptr %i.ac, align 8, !tbaa !813
  %i.bo = zext i8 %i.bn to i64
  %i.bp = sub nsw i32 %.pre-phi, %i.e
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bq
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bs, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !813
  %.not.i50 = icmp eq i8 %i.bw, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_28SwapPropagatingCountingAllocIiEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !813  ; 5 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2089 ; 3 uses
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !2089
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cc, ptr %i.ci, align 1, !tbaa !813
  store ptr %2, ptr %i.cf, align 8, !tbaa !2089
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
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !2089 ; 3 uses
  %i.cv = zext i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !2089
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !813
  store ptr %2, ptr %i.cu, align 8, !tbaa !2089
  %i.cy = trunc i64 %indvars.iv to i8
  %i.cz = add i8 %i.cy, -2                        ; 2 uses
  %i.da = add i8 %i.cz, %1                        ; 2 uses
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2089 ; 3 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !2089
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !813
  store ptr %2, ptr %i.dd, align 8, !tbaa !2089
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dh = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dh, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !15869

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.di = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dj = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.dk = trunc nuw i64 %indvars.iv58 to i8
  %i.dl = sub i8 %i.dk, %1
  %i.dm = add i8 %i.dl, %i.dj
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2089 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.di
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !2089
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.di to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  store ptr %2, ptr %i.dp, align 8, !tbaa !2089
  %i.dt = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.du = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.du, %invariant.op
  %i.dv = add i8 %.reass, %i.dt
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !2089 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv58
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !2089
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  store ptr %2, ptr %i.dy, align 8, !tbaa !2089
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !15870

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ec = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ed = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.ee = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ef = sub i8 %i.ee, %1
  %i.eg = add i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.eh
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS8_EERKaPSD_EE:bb.a
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !813
  %.not114 = icmp eq i8 %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !813
  %i.ce = add i8 %i.cd, 1                         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not114, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #35 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 5 uses
  store ptr %.083, ptr %i.ch, align 8, !tbaa !2128
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i8 %i.ce, ptr %i.ci, align 8, !tbaa !813
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 17
  store i8 0, ptr %i.cj, align 1, !tbaa !813
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 18
  store i8 0, ptr %i.ck, align 2, !tbaa !813
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 19
  store i8 -12, ptr %i.cl, align 1, !tbaa !813
  %i.cm = load ptr, ptr %1, align 8, !tbaa !2128
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !802
  call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE5splitEiPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.cm, i32 noundef %i.cn, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cf)
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !2128
  %i.cp = load ptr, ptr %1, align 8, !tbaa !2128
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !2128
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cr = call noalias noundef nonnull dereferenceable(2224) ptr @_Znwm(i64 noundef 2224) #35 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  store ptr %.083, ptr %i.cs, align 8, !tbaa !2128
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i8 %i.ce, ptr %i.ct, align 8, !tbaa !813
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 17
  store i8 0, ptr %i.cu, align 1, !tbaa !813
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 18
  store i8 0, ptr %i.cv, align 2, !tbaa !813
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 19
  store i8 0, ptr %i.cw, align 1, !tbaa !813
  %i.cx = load ptr, ptr %1, align 8, !tbaa !2128
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !802
  call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE5splitEiPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.cx, i32 noundef %i.cy, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cf)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.ch, %bb.q ], [ %i.ch, %bb.p ], [ %i.cs, %bb.r ]
  %i.cz = load i32, ptr %i.a, align 8, !tbaa !802 ; 2 uses
  %i.da = load ptr, ptr %1, align 8, !tbaa !2128
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 10
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !813
  %i.dd = zext i8 %i.dc to i32                    ; 2 uses
  %i.de = icmp sgt i32 %i.cz, %i.dd
  br i1 %i.de, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.df = xor i32 %i.dd, -1
  %i.dg = add nsw i32 %i.cz, %i.df
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink124 = phi i32 [ %i.bn, %bb.k ], [ %i.ag, %bb.f ], [ %i.dg, %bb.t ]
  %.sink = phi ptr [ %i.ao, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink124, ptr %i.a, align 8, !tbaa !802
  store ptr %.sink, ptr %1, align 8, !tbaa !2128
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE16clear_and_deleteEPS9_PS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !813   ; 2 uses
  %.not57 = icmp eq i8 %i.b, 0
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 19
  %i.e = and i64 %i.d, 504
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8
  %i.g = add nuw nsw i64 %i.e, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.g) #36
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.i = load i8, ptr %i.h, align 1, !tbaa !813
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 2224) #36
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !2128
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04963 = phi ptr [ %i.n, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.04963, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2128 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !15903

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i8, ptr %i.q, align 1, !tbaa !813
  %i.s = zext i8 %i.r to i64
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !2128
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.s, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.t, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.147
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2128 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.y = load i8, ptr %i.x, align 1, !tbaa !813   ; 2 uses
  %.not.i55 = icmp eq i8 %i.y, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.f

.lr.ph66:                                         ; preds = %bb.e, %.lr.ph66
  %.15065 = phi ptr [ %i.aa, %.lr.ph66 ], [ %i.w, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %.15065, i64 256
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2128 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 11
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !813 ; 2 uses
  %.not.i56 = icmp eq i8 %i.ac, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !15904

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !813
  %i.af = zext i8 %i.ae to i64
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !2128
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge67, %bb.e
  %i.ah = phi i8 [ %i.ac, %._crit_edge67 ], [ %i.y, %bb.e ]
  %.251 = phi ptr [ %i.aa, %._crit_edge67 ], [ %i.w, %bb.e ]
  %.248 = phi i64 [ %i.af, %._crit_edge67 ], [ %.147, %bb.e ] ; 2 uses
  %.2 = phi ptr [ %i.ag, %._crit_edge67 ], [ %.1, %bb.e ] ; 3 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 19
  %i.ak = and i64 %i.aj, 504
  %i.al = getelementptr inbounds i8, ptr %.251, i64 -8
  %i.am = add nuw nsw i64 %i.ak, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.am) #36
  %i.an = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = zext i8 %i.ao to i64
  %.not.not = icmp samesign ult i64 %.248, %i.ap
  br i1 %.not.not, label %.backedge, label %.preheader58

.backedge:                                        ; preds = %bb.f, %bb.h
  %.147.be.in = phi i64 [ %.248, %bb.f ], [ %i.ax, %bb.h ]
  %.1.be = phi ptr [ %.2, %bb.f ], [ %i.as, %bb.h ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.e, !llvm.loop !15905

.preheader58:                                     ; preds = %bb.f, %bb.g
  %.3 = phi ptr [ %i.as, %bb.g ], [ %.2, %bb.f ]  ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !813 ; 2 uses
  %i.as = load ptr, ptr %.3, align 8, !tbaa !2128 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %.3, i64 -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 2224) #36
  %i.au = icmp eq ptr %i.as, %i.l
  br i1 %i.au, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader58
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !813
  %.not = icmp ult i8 %i.ar, %i.aw
  br i1 %.not, label %bb.h, label %.preheader58, !llvm.loop !15906

bb.h:                                             ; preds = %bb.g
  %i.ax = zext i8 %i.ar to i64
  br label %.backedge

.loopexit:                                        ; preds = %.preheader58, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE23rebalance_right_to_leftEhPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !813
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !2128   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1
  store i8 %i.n, ptr %i.k, align 1
  %i.o = zext i8 %1 to i32                        ; 3 uses
  %i.p = add nsw i32 %i.o, -1                     ; 6 uses
  %i.q = sext i32 %i.p to i64                     ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q ; 2 uses
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i32 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %i.b, %i.e
  %i.u = sub i64 %i.t, %i.a
  %diff.check = icmp ult i64 %i.u, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check61 = icmp ult i32 %i.p, 32
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.q, -32                      ; 5 uses
  %i.v = getelementptr i8, ptr %i.k, i64 %n.vec
  %i.w = getelementptr i8, ptr %i.r, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.r, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.y = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep62, align 1
  %wide.load63 = load <16 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 17
  store <16 x i8> %wide.load, ptr %i.x, align 1
  store <16 x i8> %wide.load63, ptr %i.z, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !15907

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ab = and i32 %i.p, 24
  %min.epilog.iters.check = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !2132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.q, -8                     ; 4 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 %n.vec65
  %i.ad = getelementptr i8, ptr %i.r, i64 %n.vec65
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next70, %vec.epilog.vector.body ] ; 3 uses
  %next.gep67 = getelementptr i8, ptr %i.k, i64 %index66
  %next.gep68 = getelementptr i8, ptr %i.r, i64 %index66
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep67, i64 1
  %wide.load69 = load <8 x i8>, ptr %next.gep68, align 1
  store <8 x i8> %wide.load69, ptr %i.ae, align 1
  %index.next70 = add nuw i64 %index66, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next70, %n.vec65
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15908

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n71 = icmp eq i64 %n.vec65, %i.q
  br i1 %cmp.n71, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.pn.ph = phi ptr [ %i.k, %iter.check ], [ %i.k, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader ]
  %.01214.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.01214.i, align 1
  store i8 %i.ag, ptr %.015.i, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i, !llvm.loop !15909

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit: ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !2128
  %.pre59 = load i8, ptr %i.f, align 8, !tbaa !813
  %.pre60 = zext i8 %.pre59 to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre60, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit ], [ %i.h, %bb.a ]
  %i.ai = phi ptr [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit ], [ %i.i, %bb.a ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi
  %i.al = load i8, ptr %i.s, align 1
  store i8 %i.al, ptr %i.ak, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !813 ; 2 uses
  %i.ao = zext i8 %i.an to i32
  %i.ap = sub nsw i32 %i.ao, %i.o                 ; 4 uses
  %i.aq = sext i32 %i.ap to i64                   ; 5 uses
  %i.ar = zext i8 %1 to i64                       ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ar ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  %.not13.i44 = icmp eq i8 %i.an, %1
  br i1 %.not13.i44, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit50, label %iter.check90

iter.check90:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %min.iters.check74 = icmp ult i32 %i.ap, 8
  br i1 %min.iters.check74, label %.lr.ph.i46.preheader, label %vector.main.loop.iter.check75

vector.main.loop.iter.check75:                    ; preds = %iter.check90
  %min.iters.check76 = icmp ult i32 %i.ap, 32
  br i1 %min.iters.check76, label %vec.epilog.ph94, label %vector.ph77

vector.ph77:                                      ; preds = %vector.main.loop.iter.check75
  %n.vec78 = and i64 %i.aq, -32                   ; 5 uses
  %i.au = getelementptr i8, ptr %i.r, i64 %n.vec78
  %i.av = getelementptr i8, ptr %i.as, i64 %n.vec78
  br label %vector.body79

vector.body79:                                    ; preds = %vector.ph77, %vector.body79
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next85, %vector.body79 ] ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.r, i64 %index80 ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.as, i64 %index80 ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load83 = load <16 x i8>, ptr %next.gep82, align 1
  %wide.load84 = load <16 x i8>, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %next.gep81, i64 16
  store <16 x i8> %wide.load83, ptr %next.gep81, align 1
  store <16 x i8> %wide.load84, ptr %i.ax, align 1
  %index.next85 = add nuw i64 %index80, 32        ; 2 uses
  %i.ay = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.ay, label %middle.block86, label %vector.body79, !llvm.loop !15910

middle.block86:                                   ; preds = %vector.body79
  %cmp.n87 = icmp eq i64 %n.vec78, %i.aq
  br i1 %cmp.n87, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit50, label %vec.epilog.iter.check92

vec.epilog.iter.check92:                          ; preds = %middle.block86
  %i.az = and i32 %i.ap, 24
  %min.epilog.iters.check93 = icmp eq i32 %i.az, 0
  br i1 %min.epilog.iters.check93, label %.lr.ph.i46.preheader, label %vec.epilog.ph94, !prof !2132

vec.epilog.ph94:                                  ; preds = %vector.main.loop.iter.check75, %vec.epilog.iter.check92
  %vec.epilog.resume.val88 = phi i64 [ %n.vec78, %vec.epilog.iter.check92 ], [ 0, %vector.main.loop.iter.check75 ]
  %n.vec95 = and i64 %i.aq, -8                    ; 4 uses
  %i.ba = getelementptr i8, ptr %i.r, i64 %n.vec95
  %i.bb = getelementptr i8, ptr %i.as, i64 %n.vec95
  br label %vec.epilog.vector.body96

vec.epilog.vector.body96:                         ; preds = %vec.epilog.vector.body96, %vec.epilog.ph94
  %index97 = phi i64 [ %vec.epilog.resume.val88, %vec.epilog.ph94 ], [ %index.next101, %vec.epilog.vector.body96 ] ; 3 uses
  %next.gep98 = getelementptr i8, ptr %i.r, i64 %index97
  %next.gep99 = getelementptr i8, ptr %i.as, i64 %index97
  %wide.load100 = load <8 x i8>, ptr %next.gep99, align 1
  store <8 x i8> %wide.load100, ptr %next.gep98, align 1
  %index.next101 = add nuw i64 %index97, 8        ; 2 uses
  %i.bc = icmp eq i64 %index.next101, %n.vec95
  br i1 %i.bc, label %vec.epilog.middle.block102, label %vec.epilog.vector.body96, !llvm.loop !15911

vec.epilog.middle.block102:                       ; preds = %vec.epilog.vector.body96
  %cmp.n103 = icmp eq i64 %n.vec95, %i.aq
  br i1 %cmp.n103, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit50, label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %iter.check90, %vec.epilog.iter.check92, %vec.epilog.middle.block102
  %.015.i47.ph = phi ptr [ %i.r, %iter.check90 ], [ %i.au, %vec.epilog.iter.check92 ], [ %i.ba, %vec.epilog.middle.block102 ]
  %.01214.i48.ph = phi ptr [ %i.as, %iter.check90 ], [ %i.av, %vec.epilog.iter.check92 ], [ %i.bb, %vec.epilog.middle.block102 ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader, %.lr.ph.i46
  %.015.i47 = phi ptr [ %i.bf, %.lr.ph.i46 ], [ %.015.i47.ph, %.lr.ph.i46.preheader ] ; 2 uses
  %.01214.i48 = phi ptr [ %i.be, %.lr.ph.i46 ], [ %.01214.i48.ph, %.lr.ph.i46.preheader ] ; 2 uses
  %i.bd = load i8, ptr %.01214.i48, align 1
  store i8 %i.bd, ptr %.015.i47, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i48, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i47, i64 1
  %.not.i49 = icmp eq ptr %i.be, %i.at
  br i1 %.not.i49, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit50, label %.lr.ph.i46, !llvm.loop !15912

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit50: ; preds = %.lr.ph.i46, %middle.block86, %vec.epilog.middle.block102, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !813
  %.not.i51 = icmp eq i8 %i.bh, 0
  br i1 %.not.i51, label %.preheader52, label %.loopexit

.preheader52:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit50
  %.not57 = icmp eq i8 %1, 0
  br i1 %.not57, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader52
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.ar, 1
  %i.bk = icmp eq i32 %i.p, 0
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ar, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod106 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.bl = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bm = trunc i64 %indvars.iv.epil.init to i8
  %i.bn = add i8 %i.bm, 1
  %i.bo = add i8 %i.bl, %i.bn                     ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.epil.init
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2128 ; 3 uses
  %i.br = zext i8 %i.bo to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.br
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !2128
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i8 %i.bo, ptr %i.bt, align 1, !tbaa !813
  store ptr %0, ptr %i.bq, align 8, !tbaa !2128
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader52
  %i.bu = load i8, ptr %i.am, align 1, !tbaa !813
  %.not54 = icmp ult i8 %i.bu, %1
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.bw = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv.next to i8
  %i.by = add i8 %i.bw, %i.bx                     ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2128 ; 3 uses
  %i.cb = zext i8 %i.by to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cb
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !2128
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i8 %i.by, ptr %i.cd, align 1, !tbaa !813
  store ptr %0, ptr %i.ca, align 8, !tbaa !2128
  %i.ce = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cf = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cg = add i8 %i.ce, %i.cf                     ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2128 ; 3 uses
  %i.cj = zext i8 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cj
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !2128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.cg, ptr %i.cl, align 1, !tbaa !813
  store ptr %0, ptr %i.ci, align 8, !tbaa !2128
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !15913

bb.c:                                             ; preds = %.lr.ph56, %bb.c
  %.055 = phi i8 [ 0, %.lr.ph56 ], [ %i.ct, %bb.c ] ; 4 uses
  %i.cm = add i8 %.055, %1
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2128 ; 3 uses
  %i.cq = zext i8 %.055 to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cq
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !2128
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i8 %.055, ptr %i.cs, align 1, !tbaa !813
  store ptr %2, ptr %i.cp, align 8, !tbaa !2128
  %i.ct = add i8 %.055, 1                         ; 2 uses
  %i.cu = zext i8 %i.ct to i32
  %i.cv = load i8, ptr %i.am, align 1, !tbaa !813
  %i.cw = zext i8 %i.cv to i32
  %i.cx = sub nsw i32 %i.cw, %i.o
  %.not = icmp slt i32 %i.cx, %i.cu
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !15914

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit50
  %i.cy = load i8, ptr %i.c, align 2, !tbaa !813
  %i.cz = add i8 %i.cy, %1
  store i8 %i.cz, ptr %i.c, align 2, !tbaa !813
  %i.da = load i8, ptr %i.am, align 1, !tbaa !813
  %i.db = sub i8 %i.da, %1
  store i8 %i.db, ptr %i.am, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE23rebalance_left_to_rightEhPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 4 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = zext i8 %i.d to i64                      ; 7 uses
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 18 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %i.g     ; 18 uses
  %min.iters.check = icmp ult i8 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check64 = icmp ult i8 %i.d, 32
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 224                      ; 9 uses
  %i.m = sub nsw i64 0, %n.vec                    ; 2 uses
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr i8, ptr %i.k, i64 %i.m
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 -32
  %wide.load = load <16 x i8>, ptr %i.p, align 1
  %wide.load66 = load <16 x i8>, ptr %i.q, align 1
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 -32
  store <16 x i8> %wide.load, ptr %i.r, align 1
  store <16 x i8> %wide.load66, ptr %i.s, align 1
  %i.t = icmp eq i64 %n.vec, 32
  br i1 %i.t, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.u = getelementptr i8, ptr %i.k, i64 -48
  %i.v = getelementptr i8, ptr %i.k, i64 -64
  %wide.load.1 = load <16 x i8>, ptr %i.u, align 1
  %wide.load66.1 = load <16 x i8>, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %i.j, i64 -48
  %i.x = getelementptr i8, ptr %i.j, i64 -64
  store <16 x i8> %wide.load.1, ptr %i.w, align 1
  store <16 x i8> %wide.load66.1, ptr %i.x, align 1
  %i.y = icmp eq i64 %n.vec, 64
  br i1 %i.y, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.z = getelementptr i8, ptr %i.k, i64 -80
  %i.aa = getelementptr i8, ptr %i.k, i64 -96
  %wide.load.2 = load <16 x i8>, ptr %i.z, align 1
  %wide.load66.2 = load <16 x i8>, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %i.j, i64 -80
  %i.ac = getelementptr i8, ptr %i.j, i64 -96
  store <16 x i8> %wide.load.2, ptr %i.ab, align 1
  store <16 x i8> %wide.load66.2, ptr %i.ac, align 1
  %i.ad = icmp eq i64 %n.vec, 96
  br i1 %i.ad, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ae = getelementptr i8, ptr %i.k, i64 -112
  %i.af = getelementptr i8, ptr %i.k, i64 -128
  %wide.load.3 = load <16 x i8>, ptr %i.ae, align 1
  %wide.load66.3 = load <16 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %i.j, i64 -112
  %i.ah = getelementptr i8, ptr %i.j, i64 -128
  store <16 x i8> %wide.load.3, ptr %i.ag, align 1
  store <16 x i8> %wide.load66.3, ptr %i.ah, align 1
  %i.ai = icmp eq i64 %n.vec, 128
  br i1 %i.ai, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.aj = getelementptr i8, ptr %i.k, i64 -144
  %i.ak = getelementptr i8, ptr %i.k, i64 -160
  %wide.load.4 = load <16 x i8>, ptr %i.aj, align 1
  %wide.load66.4 = load <16 x i8>, ptr %i.ak, align 1
  %i.al = getelementptr i8, ptr %i.j, i64 -144
  %i.am = getelementptr i8, ptr %i.j, i64 -160
  store <16 x i8> %wide.load.4, ptr %i.al, align 1
  store <16 x i8> %wide.load66.4, ptr %i.am, align 1
  %i.an = icmp eq i64 %n.vec, 160
  br i1 %i.an, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ao = getelementptr i8, ptr %i.k, i64 -176
  %i.ap = getelementptr i8, ptr %i.k, i64 -192
  %wide.load.5 = load <16 x i8>, ptr %i.ao, align 1
  %wide.load66.5 = load <16 x i8>, ptr %i.ap, align 1
  %i.aq = getelementptr i8, ptr %i.j, i64 -176
  %i.ar = getelementptr i8, ptr %i.j, i64 -192
  store <16 x i8> %wide.load.5, ptr %i.aq, align 1
  store <16 x i8> %wide.load66.5, ptr %i.ar, align 1
  %i.as = icmp eq i64 %n.vec, 192
  br i1 %i.as, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.at = getelementptr i8, ptr %i.k, i64 -208
  %i.au = getelementptr i8, ptr %i.k, i64 -224
  %wide.load.6 = load <16 x i8>, ptr %i.at, align 1
  %wide.load66.6 = load <16 x i8>, ptr %i.au, align 1
  %i.av = getelementptr i8, ptr %i.j, i64 -208
  %i.aw = getelementptr i8, ptr %i.j, i64 -224
  store <16 x i8> %wide.load.6, ptr %i.av, align 1
  store <16 x i8> %wide.load66.6, ptr %i.aw, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !2132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec68 = and i64 %i.g, 248                    ; 3 uses
  %i.ax = sub nsw i64 0, %n.vec68                 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.j, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.k, i64 %i.ax
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = sub i64 0, %index69                     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.j, i64 %i.ba
  %next.gep71 = getelementptr i8, ptr %i.k, i64 %i.ba
  %i.bb = getelementptr inbounds i8, ptr %next.gep71, i64 -8
  %wide.load72 = load <8 x i8>, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds i8, ptr %next.gep70, i64 -8
  store <8 x i8> %wide.load72, ptr %i.bc, align 1
  %index.next73 = add nuw i64 %index69, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next73, %n.vec68
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15915

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %n.vec68, %i.g
  br i1 %cmp.n74, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  %.01416.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.017.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.017.i.ph, %.lr.ph.i.preheader ]
  %.01416.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.01416.i.ph, %.lr.ph.i.preheader ]
  %i.be = getelementptr inbounds i8, ptr %.017.i, i64 -1 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.01416.i, i64 -1 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1
  store i8 %i.bg, ptr %i.be, align 1
  %.not.i = icmp eq ptr %i.bf, %i.f
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit, label %.lr.ph.i, !llvm.loop !15916

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.bh = add nsw i32 %i.e, -1                    ; 6 uses
  %i.bi = sext i32 %i.bh to i64                   ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !813
  %i.bl = zext i8 %i.bk to i64
  %i.bm = load ptr, ptr %0, align 8, !tbaa !2128
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  %i.bq = load i8, ptr %i.bp, align 1
  store i8 %i.bq, ptr %i.bn, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !813 ; 2 uses
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = sub nsw i32 %i.bt, %i.bh
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bi
  %.not13.i = icmp eq i32 %i.bh, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit, label %iter.check93

iter.check93:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit
  %min.iters.check77 = icmp ult i32 %i.bh, 8
  br i1 %min.iters.check77, label %.lr.ph.i47.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check93
  %i.bz = zext i8 %1 to i64
  %4 = add i64 %i.b, %i.bz
  %5 = zext i8 %i.bs to i64
  %i.ca = sub i64 %i.a, %4
  %i.cb = add i64 %i.ca, %5
  %i.cc = add i64 %i.cb, 32
  %diff.check = icmp ult i64 %i.cc, 31
  br i1 %diff.check, label %.lr.ph.i47.preheader, label %vector.main.loop.iter.check78

vector.main.loop.iter.check78:                    ; preds = %vector.memcheck
  %min.iters.check79 = icmp ult i32 %i.bh, 32
  br i1 %min.iters.check79, label %vec.epilog.ph97, label %vector.ph80

vector.ph80:                                      ; preds = %vector.main.loop.iter.check78
  %n.vec81 = and i64 %i.bi, -32                   ; 5 uses
  %i.cd = getelementptr i8, ptr %i.f, i64 %n.vec81
  %i.ce = getelementptr i8, ptr %i.bx, i64 %n.vec81
  br label %vector.body82

vector.body82:                                    ; preds = %vector.ph80, %vector.body82
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 3 uses
  %next.gep84 = getelementptr i8, ptr %i.f, i64 %index83 ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.bx, i64 %index83 ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep85, i64 16
  %wide.load86 = load <16 x i8>, ptr %next.gep85, align 1
  %wide.load87 = load <16 x i8>, ptr %i.cf, align 1
  %i.cg = getelementptr i8, ptr %next.gep84, i64 16
  store <16 x i8> %wide.load86, ptr %next.gep84, align 1
  store <16 x i8> %wide.load87, ptr %i.cg, align 1
  %index.next88 = add nuw i64 %index83, 32        ; 2 uses
  %i.ch = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.ch, label %middle.block89, label %vector.body82, !llvm.loop !15917

middle.block89:                                   ; preds = %vector.body82
  %cmp.n90 = icmp eq i64 %n.vec81, %i.bi
  br i1 %cmp.n90, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %vec.epilog.iter.check95

vec.epilog.iter.check95:                          ; preds = %middle.block89
  %i.ci = and i32 %i.bh, 24
  %min.epilog.iters.check96 = icmp eq i32 %i.ci, 0
  br i1 %min.epilog.iters.check96, label %.lr.ph.i47.preheader, label %vec.epilog.ph97, !prof !2132

vec.epilog.ph97:                                  ; preds = %vector.main.loop.iter.check78, %vec.epilog.iter.check95
  %vec.epilog.resume.val91 = phi i64 [ %n.vec81, %vec.epilog.iter.check95 ], [ 0, %vector.main.loop.iter.check78 ]
  %n.vec98 = and i64 %i.bi, -8                    ; 4 uses
  %i.cj = getelementptr i8, ptr %i.f, i64 %n.vec98
  %i.ck = getelementptr i8, ptr %i.bx, i64 %n.vec98
  br label %vec.epilog.vector.body99

vec.epilog.vector.body99:                         ; preds = %vec.epilog.vector.body99, %vec.epilog.ph97
  %index100 = phi i64 [ %vec.epilog.resume.val91, %vec.epilog.ph97 ], [ %index.next104, %vec.epilog.vector.body99 ] ; 3 uses
  %next.gep101 = getelementptr i8, ptr %i.f, i64 %index100
  %next.gep102 = getelementptr i8, ptr %i.bx, i64 %index100
  %wide.load103 = load <8 x i8>, ptr %next.gep102, align 1
  store <8 x i8> %wide.load103, ptr %next.gep101, align 1
  %index.next104 = add nuw i64 %index100, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next104, %n.vec98
  br i1 %i.cl, label %vec.epilog.middle.block105, label %vec.epilog.vector.body99, !llvm.loop !15918

vec.epilog.middle.block105:                       ; preds = %vec.epilog.vector.body99
  %cmp.n106 = icmp eq i64 %n.vec98, %i.bi
  br i1 %cmp.n106, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %iter.check93, %vector.memcheck, %vec.epilog.iter.check95, %vec.epilog.middle.block105
  %.015.i.ph = phi ptr [ %i.f, %iter.check93 ], [ %i.f, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check95 ], [ %i.cj, %vec.epilog.middle.block105 ]
  %.01214.i.ph = phi ptr [ %i.bx, %iter.check93 ], [ %i.bx, %vector.memcheck ], [ %i.ce, %vec.epilog.iter.check95 ], [ %i.ck, %vec.epilog.middle.block105 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.lr.ph.i47
  %.015.i = phi ptr [ %i.co, %.lr.ph.i47 ], [ %.015.i.ph, %.lr.ph.i47.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.cn, %.lr.ph.i47 ], [ %.01214.i.ph, %.lr.ph.i47.preheader ] ; 2 uses
  %i.cm = load i8, ptr %.01214.i, align 1
  store i8 %i.cm, ptr %.015.i, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.01214.i, i64 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %.not.i48 = icmp eq ptr %i.cn, %i.by
  br i1 %.not.i48, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i47, !llvm.loop !15919

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit: ; preds = %.lr.ph.i47, %vec.epilog.middle.block105, %middle.block89
  %.pre = load i8, ptr %i.br, align 2, !tbaa !813
  %.pre61 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit
  %.pre-phi = phi i32 [ %.pre61, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit ], [ %i.bt, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !2128
  %i.cq = load i8, ptr %i.bj, align 8, !tbaa !813
  %i.cr = zext i8 %i.cq to i64
  %i.cs = sub nsw i32 %.pre-phi, %i.e
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ct
  %i.cx = load i8, ptr %i.cw, align 1
  store i8 %i.cx, ptr %i.cv, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !813
  %.not.i49 = icmp eq i8 %i.cz, 0
  br i1 %.not.i49, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %i.da = load i8, ptr %i.c, align 1, !tbaa !813  ; 5 uses
  %i.db = add i8 %i.da, 1                         ; 2 uses
  %.not5051 = icmp eq i8 %i.db, 0
  br i1 %.not5051, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.dd = zext i8 %i.db to i64                    ; 2 uses
  %i.de = and i8 %i.da, 1
  %lcmp.mod.not.not = icmp eq i8 %i.de, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.df = add i8 %i.da, %1                        ; 2 uses
  %i.dg = zext i8 %i.da to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2128 ; 3 uses
  %i.dj = zext i8 %i.df to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dj
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !2128
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %i.df, ptr %i.dl, align 1, !tbaa !813
  store ptr %2, ptr %i.di, align 8, !tbaa !2128
  %indvars.iv.next.prol = add nsw i64 %i.dd, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.dd, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.dm = icmp eq i8 %i.da, 0
  br i1 %i.dm, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not53 = icmp eq i8 %1, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dp = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.dp, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.dq = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter109 = and i64 %i.dq, 1
  %i.dr = icmp ult i8 %i.dp, 3
  br i1 %i.dr, label %.epil.preheader, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.lr.ph55
  %unroll_iter = and i64 %i.dq, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.ds = trunc nuw i64 %indvars.iv to i8
  %i.dt = add i8 %i.ds, -1                        ; 2 uses
  %i.du = add i8 %i.dt, %1                        ; 2 uses
  %i.dv = zext i8 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !2128 ; 3 uses
  %i.dy = zext i8 %i.du to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dy
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !2128
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i8 %i.du, ptr %i.ea, align 1, !tbaa !813
  store ptr %2, ptr %i.dx, align 8, !tbaa !2128
  %i.eb = trunc i64 %indvars.iv to i8
  %i.ec = add i8 %i.eb, -2                        ; 2 uses
  %i.ed = add i8 %i.ec, %1                        ; 2 uses
  %i.ee = zext i8 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !2128 ; 3 uses
  %i.eh = zext i8 %i.ed to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.eh
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !2128
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i8 %i.ed, ptr %i.ej, align 1, !tbaa !813
  store ptr %2, ptr %i.eg, align 8, !tbaa !2128
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ek = and i64 %indvars.iv.next.1, 255
  %.not50.1 = icmp eq i64 %i.ek, 0
  br i1 %.not50.1, label %.preheader, label %.lr.ph.new, !llvm.loop !15920

bb.c:                                             ; preds = %bb.c, %.lr.ph55.new
  %indvars.iv57 = phi i64 [ 1, %.lr.ph55.new ], [ %indvars.iv.next58.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph55.new ], [ %niter.next.1, %bb.c ]
  %i.el = add nsw i64 %indvars.iv57, -1           ; 2 uses
  %i.em = load i8, ptr %i.br, align 2, !tbaa !813
  %i.en = trunc nuw i64 %indvars.iv57 to i8
  %i.eo = sub i8 %i.en, %1
  %i.ep = add i8 %i.eo, %i.em
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2128 ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.el
  store ptr %i.es, ptr %i.et, align 8, !tbaa !2128
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = trunc nuw i64 %i.el to i8
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !813
  store ptr %2, ptr %i.es, align 8, !tbaa !2128
  %i.ew = load i8, ptr %i.br, align 2, !tbaa !813
  %i.ex = trunc i64 %indvars.iv57 to i8
  %.reass = add i8 %i.ex, %invariant.op
  %i.ey = add i8 %.reass, %i.ew
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !2128 ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv57
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !2128
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fe = trunc nuw i64 %indvars.iv57 to i8
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !813
  store ptr %2, ptr %i.fb, align 8, !tbaa !2128
  %indvars.iv.next58.1 = add nuw nsw i64 %indvars.iv57, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !15921

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv57.epil.init = phi i64 [ 1, %.lr.ph55 ], [ %indvars.iv.next58.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod111 = trunc i64 %i.dq to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.ff = add nsw i64 %indvars.iv57.epil.init, -1 ; 2 uses
  %i.fg = load i8, ptr %i.br, align 2, !tbaa !813
  %i.fh = trunc nuw i64 %indvars.iv57.epil.init to i8
  %i.fi = sub i8 %i.fh, %1
  %i.fj = add i8 %i.fi, %i.fg
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2128 ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.ff
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !2128
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fp = trunc nuw i64 %i.ff to i8
  store i8 %i.fp, ptr %i.fo, align 1, !tbaa !813
  store ptr %2, ptr %i.fm, align 8, !tbaa !2128
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %i.fq = load i8, ptr %i.br, align 2, !tbaa !813
  %i.fr = sub i8 %i.fq, %1
  store i8 %i.fr, ptr %i.br, align 2, !tbaa !813
  %i.fs = load i8, ptr %i.c, align 1, !tbaa !813
  %i.ft = add i8 %i.fs, %1
  store i8 %i.ft, ptr %i.c, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE5splitEiPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 244, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813
  %i.e = add i8 %i.d, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !813
  %i.h = lshr i8 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.i, align 1, !tbaa !813
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.m = sub i8 %i.k, %.sink                      ; 3 uses
  store i8 %i.m, ptr %i.j, align 1, !tbaa !813
  %i.n = load i8, ptr %i.l, align 1, !tbaa !813   ; 4 uses
  %i.o = zext i8 %i.n to i64                      ; 6 uses
  %i.p = zext i8 %i.m to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 20 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  %.not13.i = icmp eq i8 %i.n, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %min.iters.check = icmp ult i8 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.u = add i64 %i.a, %i.p
  %i.v = sub i64 %i.u, %i.b
  %diff.check = icmp ugt i64 %i.v, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i8 %i.n, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.o, 24
  %n.vec = and i64 %i.o, 224                      ; 10 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %n.vec
  %i.y = getelementptr i8, ptr %i.r, i64 %n.vec
  %i.z = getelementptr i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1
  %wide.load38 = load <16 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %2, i64 28
  store <16 x i8> %wide.load, ptr %i.t, align 1
  store <16 x i8> %wide.load38, ptr %i.aa, align 1
  %i.ab = icmp eq i64 %n.vec, 32
  br i1 %i.ab, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %2, i64 44
  %next.gep37.1 = getelementptr i8, ptr %i.r, i64 32
  %i.ac = getelementptr i8, ptr %i.r, i64 48
  %wide.load.1 = load <16 x i8>, ptr %next.gep37.1, align 1
  %wide.load38.1 = load <16 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %2, i64 60
  store <16 x i8> %wide.load.1, ptr %next.gep.1, align 1
  store <16 x i8> %wide.load38.1, ptr %i.ad, align 1
  %i.ae = icmp eq i64 %n.vec, 64
  br i1 %i.ae, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %2, i64 76
  %next.gep37.2 = getelementptr i8, ptr %i.r, i64 64
  %i.af = getelementptr i8, ptr %i.r, i64 80
  %wide.load.2 = load <16 x i8>, ptr %next.gep37.2, align 1
  %wide.load38.2 = load <16 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %2, i64 92
  store <16 x i8> %wide.load.2, ptr %next.gep.2, align 1
  store <16 x i8> %wide.load38.2, ptr %i.ag, align 1
  %i.ah = icmp eq i64 %n.vec, 96
  br i1 %i.ah, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %2, i64 108
  %next.gep37.3 = getelementptr i8, ptr %i.r, i64 96
  %i.ai = getelementptr i8, ptr %i.r, i64 112
  %wide.load.3 = load <16 x i8>, ptr %next.gep37.3, align 1
  %wide.load38.3 = load <16 x i8>, ptr %i.ai, align 1
  %i.aj = getelementptr i8, ptr %2, i64 124
  store <16 x i8> %wide.load.3, ptr %next.gep.3, align 1
  store <16 x i8> %wide.load38.3, ptr %i.aj, align 1
  %i.ak = icmp eq i64 %n.vec, 128
  br i1 %i.ak, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %2, i64 140
  %next.gep37.4 = getelementptr i8, ptr %i.r, i64 128
  %i.al = getelementptr i8, ptr %i.r, i64 144
  %wide.load.4 = load <16 x i8>, ptr %next.gep37.4, align 1
  %wide.load38.4 = load <16 x i8>, ptr %i.al, align 1
  %i.am = getelementptr i8, ptr %2, i64 156
  store <16 x i8> %wide.load.4, ptr %next.gep.4, align 1
  store <16 x i8> %wide.load38.4, ptr %i.am, align 1
  %i.an = icmp eq i64 %n.vec, 160
  br i1 %i.an, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %2, i64 172
  %next.gep37.5 = getelementptr i8, ptr %i.r, i64 160
  %i.ao = getelementptr i8, ptr %i.r, i64 176
  %wide.load.5 = load <16 x i8>, ptr %next.gep37.5, align 1
  %wide.load38.5 = load <16 x i8>, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %2, i64 188
  store <16 x i8> %wide.load.5, ptr %next.gep.5, align 1
  store <16 x i8> %wide.load38.5, ptr %i.ap, align 1
  %i.aq = icmp eq i64 %n.vec, 192
  br i1 %i.aq, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %2, i64 204
  %next.gep37.6 = getelementptr i8, ptr %i.r, i64 192
  %i.ar = getelementptr i8, ptr %i.r, i64 208
  %wide.load.6 = load <16 x i8>, ptr %next.gep37.6, align 1
  %wide.load38.6 = load <16 x i8>, ptr %i.ar, align 1
  %i.as = getelementptr i8, ptr %2, i64 220
  store <16 x i8> %wide.load.6, ptr %next.gep.6, align 1
  store <16 x i8> %wide.load38.6, ptr %i.as, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.o
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !2132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.o, 248                    ; 4 uses
  %i.at = getelementptr i8, ptr %i.t, i64 %n.vec40
  %i.au = getelementptr i8, ptr %i.r, i64 %n.vec40
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %next.gep42 = getelementptr i8, ptr %i.t, i64 %index41
  %next.gep43 = getelementptr i8, ptr %i.r, i64 %index41
  %wide.load44 = load <8 x i8>, ptr %next.gep43, align 1
  store <8 x i8> %wide.load44, ptr %next.gep42, align 1
  %index.next45 = add nuw i64 %index41, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15922

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %n.vec40, %i.o
  br i1 %cmp.n46, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aw = load i8, ptr %.01214.i, align 1
  store i8 %i.aw, ptr %.015.i, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %.not.i = icmp eq ptr %i.ax, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i, !llvm.loop !15923

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit: ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load i8, ptr %i.j, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, %bb.d
  %i.az = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit ], [ %i.m, %bb.d ]
  %i.ba = add i8 %i.az, -1                        ; 2 uses
  store i8 %i.ba, ptr %i.j, align 1, !tbaa !813
  %i.bb = load ptr, ptr %0, align 8, !tbaa !2128  ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !813 ; 4 uses
  %i.be = zext i8 %i.ba to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.be
  %i.bg = zext i8 %i.bd to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 10 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !813 ; 3 uses
  %i.bj = icmp ult i8 %i.bd, %i.bi
  %i.bk = zext i8 %i.bd to i64                    ; 4 uses
  br i1 %i.bj, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk  ; 2 uses
  %narrow.i = sub nuw i8 %i.bi, %i.bd
  %i.bn = zext i8 %narrow.i to i64
  %i.bo = getelementptr i8, ptr %i.bm, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bm, i64 %i.bn, i1 false)
  %.pre.i = load i8, ptr %i.bh, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %i.bp = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bi, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk
  %i.bs = load i8, ptr %i.bf, align 1, !tbaa !813
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !813
  %i.bt = add i8 %i.bp, 1                         ; 3 uses
  store i8 %i.bt, ptr %i.bh, align 1, !tbaa !813
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 11
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !813
  %.not.i18.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE13emplace_valueIJPaEEEvhPS7_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE19transfer_n_backwardEmmmPS9_PS7_.exit.i
  %i.bw = zext i8 %i.bt to i32
  %i.bx = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, %i.bw
  br i1 %i.by, label %.lr.ph.i27, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE13emplace_valueIJPaEEEvhPS7_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 256 ; 10 uses
  %i.ca = zext i8 %i.bt to i64                    ; 4 uses
  %i.cb = zext nneg i32 %i.bx to i64
  %i.cc = xor i64 %i.bk, -1
  %i.cd = add nsw i64 %i.cc, %i.ca
  %i.ce = add nsw i64 %i.ca, -2
  %i.cf = sub nsw i64 %i.ce, %i.bk
  %xtraiter = and i64 %i.cd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i27, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.cg, %.prol.preheader ], [ %i.ca, %.lr.ph.i27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i27 ]
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS8_EERKaPSD_EE:bb.a
  %i.ce = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !2128 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 11
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !813
  %.not17.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not17.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEEERKaPSB_EppEv.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i14
  %i.ch = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !813 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 10
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !813
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i.i14, label %.critedge.loopexit23.i.i.i, !llvm.loop !570

.thread.i.i15:                                    ; preds = %bb.c
  %i.cm = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 256
  %i.cn = add i32 %.fca.1.extract, 1
  %i.co = and i32 %i.cn, 255
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cp
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.thread.i.i15
  %.116.in.i.i.i = phi ptr [ %i.cq, %.thread.i.i15 ], [ %i.ct, %bb.f ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !2128 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !813
  %.not.i.i.i.i16 = icmp eq i8 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i16, label %bb.f, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEEERKaPSB_EppEv.exit, !llvm.loop !571

.critedge.loopexit23.i.i.i:                       ; preds = %bb.e
  %i.cu = zext i8 %i.ci to i32
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEEERKaPSB_EppEv.exit

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEEERKaPSB_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.f, %bb.d, %.critedge.loopexit23.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit ], [ 0, %bb.f ], [ %i.bz, %bb.d ], [ %i.cu, %.critedge.loopexit23.i.i.i ], [ %i.bz, %.lr.ph.i.i.i14 ]
  %.sroa.027.0 = phi ptr [ %.fca.0.extract, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit ], [ %.116.i.i.i, %bb.f ], [ %.fca.0.extract, %bb.d ], [ %i.ce, %.critedge.loopexit23.i.i.i ], [ %.fca.0.extract, %.lr.ph.i.i.i14 ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS8_EERKaPSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2131   ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2128 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !813   ; 5 uses
  %.not = icmp eq i8 %i.d, 0                      ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i8 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2128 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = zext i8 %i.k to i32
  %i.m = add nuw nsw i32 %i.l, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !813
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.m, %i.p
  %i.r = icmp samesign ugt i32 %i.q, 244
  br i1 %i.r, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !2130
  %i.u = add nsw i32 %i.t, %i.m
  store i32 %i.u, ptr %i.s, align 8, !tbaa !2130
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE5mergeEPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.v)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2128
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %bb.d, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.v, align 8, !tbaa !2128
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.i, ptr %1, align 8, !tbaa !2131
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53.thread

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !813
  %i.aa = icmp ult i8 %i.d, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53

bb.e:                                             ; preds = %.critedge
  %i.ab = add nuw i8 %i.d, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ad = zext i8 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2128 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !813 ; 2 uses
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !813 ; 3 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = add nuw nsw i32 %i.aj, %i.am
  %i.ao = icmp samesign ult i32 %i.an, 245
  br i1 %i.ao, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE5mergeEPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ap)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2128
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %bb.g, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53.thread

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.ap, align 8, !tbaa !2128
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53.thread

bb.h:                                             ; preds = %bb.e
  %i.as = icmp ugt i8 %i.al, 122
  br i1 %i.as, label %bb.i, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53

bb.i:                                             ; preds = %bb.h
  %i.at = icmp eq i8 %i.ah, 0
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !2130
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = sub nsw i32 %i.am, %i.ai
  %.lhs.trunc = trunc nsw i32 %i.ax to i16
  %i.ay = sdiv i16 %.lhs.trunc, 2
  %i.az = trunc nsw i16 %i.ay to i8
  %i.ba = add i8 %i.al, -1
  %.sroa.speculated59 = tail call i8 @llvm.umin.i8(i8 %i.ba, i8 %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE23rebalance_right_to_leftEhPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, i8 noundef zeroext %.sroa.speculated59, ptr noundef nonnull %i.af, ptr noundef nonnull %i.bb)
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53.thread

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53: ; preds = %bb.j, %bb.h, %.critedge
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53
  %i.bc = add i8 %i.d, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.be = zext i8 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !813 ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 122
  br i1 %i.bj, label %bb.m, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53.thread

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !813 ; 3 uses
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !2130
  %i.bp = zext i8 %i.bl to i32
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.o, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53.thread

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.br = zext i8 %i.bi to i16
  %i.bs = zext i8 %i.bl to i16
  %.lhs.trunc68 = sub nsw i16 %i.br, %i.bs
  %i.bt = sdiv i16 %.lhs.trunc68, 2
  %i.bu = trunc nsw i16 %i.bt to i8
  %i.bv = add i8 %i.bi, -1
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %i.bv, i8 %i.bu) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE23rebalance_left_to_rightEhPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bw)
  %i.bx = zext i8 %.sroa.speculated to i32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !2130
  %i.ca = add nsw i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !2130
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53.thread

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53.thread: ; preds = %bb.l, %bb.n, %bb.g, %bb.f, %bb.k, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53, %bb.o, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit
  %.5 = phi i1 [ true, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit ], [ false, %bb.o ], [ false, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE11merge_nodesEPNS1_10btree_nodeIS8_EESC_.exit53 ], [ false, %bb.k ], [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.n ], [ false, %bb.l ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE5mergeEPS9_PS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !2128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !813
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.k = zext i8 %i.d to i64                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k ; 20 uses
  %i.n = load i8, ptr %i.j, align 1, !tbaa !813
  store i8 %i.n, ptr %i.m, align 1, !tbaa !813
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813   ; 4 uses
  %i.q = zext i8 %i.p to i64                      ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %.not13.i = icmp eq i8 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i8 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %i.b, %i.k
  %i.u = sub i64 %i.t, %i.a
  %diff.check = icmp ult i64 %i.u, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i8 %i.p, 32
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.q, 24
  %n.vec = and i64 %i.q, 224                      ; 10 uses
  %i.w = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.x = getelementptr i8, ptr %i.r, i64 %n.vec
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.z = getelementptr i8, ptr %1, i64 28
  %wide.load = load <16 x i8>, ptr %i.r, align 1
  %wide.load32 = load <16 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  store <16 x i8> %wide.load, ptr %i.y, align 1
  store <16 x i8> %wide.load32, ptr %i.aa, align 1
  %i.ab = icmp eq i64 %n.vec, 32
  br i1 %i.ab, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep31.1 = getelementptr i8, ptr %1, i64 44
  %i.ac = getelementptr i8, ptr %i.m, i64 33
  %i.ad = getelementptr i8, ptr %1, i64 60
  %wide.load.1 = load <16 x i8>, ptr %next.gep31.1, align 1
  %wide.load32.1 = load <16 x i8>, ptr %i.ad, align 1
  %i.ae = getelementptr i8, ptr %i.m, i64 49
  store <16 x i8> %wide.load.1, ptr %i.ac, align 1
  store <16 x i8> %wide.load32.1, ptr %i.ae, align 1
  %i.af = icmp eq i64 %n.vec, 64
  br i1 %i.af, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep31.2 = getelementptr i8, ptr %1, i64 76
  %i.ag = getelementptr i8, ptr %i.m, i64 65
  %i.ah = getelementptr i8, ptr %1, i64 92
  %wide.load.2 = load <16 x i8>, ptr %next.gep31.2, align 1
  %wide.load32.2 = load <16 x i8>, ptr %i.ah, align 1
  %i.ai = getelementptr i8, ptr %i.m, i64 81
  store <16 x i8> %wide.load.2, ptr %i.ag, align 1
  store <16 x i8> %wide.load32.2, ptr %i.ai, align 1
  %i.aj = icmp eq i64 %n.vec, 96
  br i1 %i.aj, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep31.3 = getelementptr i8, ptr %1, i64 108
  %i.ak = getelementptr i8, ptr %i.m, i64 97
  %i.al = getelementptr i8, ptr %1, i64 124
  %wide.load.3 = load <16 x i8>, ptr %next.gep31.3, align 1
  %wide.load32.3 = load <16 x i8>, ptr %i.al, align 1
  %i.am = getelementptr i8, ptr %i.m, i64 113
  store <16 x i8> %wide.load.3, ptr %i.ak, align 1
  store <16 x i8> %wide.load32.3, ptr %i.am, align 1
  %i.an = icmp eq i64 %n.vec, 128
  br i1 %i.an, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep31.4 = getelementptr i8, ptr %1, i64 140
  %i.ao = getelementptr i8, ptr %i.m, i64 129
  %i.ap = getelementptr i8, ptr %1, i64 156
  %wide.load.4 = load <16 x i8>, ptr %next.gep31.4, align 1
  %wide.load32.4 = load <16 x i8>, ptr %i.ap, align 1
  %i.aq = getelementptr i8, ptr %i.m, i64 145
  store <16 x i8> %wide.load.4, ptr %i.ao, align 1
  store <16 x i8> %wide.load32.4, ptr %i.aq, align 1
  %i.ar = icmp eq i64 %n.vec, 160
  br i1 %i.ar, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep31.5 = getelementptr i8, ptr %1, i64 172
  %i.as = getelementptr i8, ptr %i.m, i64 161
  %i.at = getelementptr i8, ptr %1, i64 188
  %wide.load.5 = load <16 x i8>, ptr %next.gep31.5, align 1
  %wide.load32.5 = load <16 x i8>, ptr %i.at, align 1
  %i.au = getelementptr i8, ptr %i.m, i64 177
  store <16 x i8> %wide.load.5, ptr %i.as, align 1
  store <16 x i8> %wide.load32.5, ptr %i.au, align 1
  %i.av = icmp eq i64 %n.vec, 192
  br i1 %i.av, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep31.6 = getelementptr i8, ptr %1, i64 204
  %i.aw = getelementptr i8, ptr %i.m, i64 193
  %i.ax = getelementptr i8, ptr %1, i64 220
  %wide.load.6 = load <16 x i8>, ptr %next.gep31.6, align 1
  %wide.load32.6 = load <16 x i8>, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %i.m, i64 209
  store <16 x i8> %wide.load.6, ptr %i.aw, align 1
  store <16 x i8> %wide.load32.6, ptr %i.ay, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !2132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.q, 248                    ; 4 uses
  %i.az = getelementptr i8, ptr %i.m, i64 %n.vec34
  %i.ba = getelementptr i8, ptr %i.r, i64 %n.vec34
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.m, i64 %index35
  %next.gep37 = getelementptr i8, ptr %i.r, i64 %index35
  %i.bb = getelementptr inbounds nuw i8, ptr %next.gep36, i64 1
  %wide.load38 = load <8 x i8>, ptr %next.gep37, align 1
  store <8 x i8> %wide.load38, ptr %i.bb, align 1
  %index.next39 = add nuw i64 %index35, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15944

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %n.vec34, %i.q
  br i1 %cmp.n40, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.pn.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ] ; 2 uses
  %.01214.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ] ; 3 uses
  %i.bd = add i64 %i.a, %i.q                      ; 2 uses
  %i.be = xor i64 %i.bd, 4
  %.01214.i.ph77 = ptrtoaddr ptr %.01214.i.ph to i64 ; 2 uses
  %i.bf = sub i64 %i.be, %.01214.i.ph77
  %i.bg = add i64 %i.bd, 11
  %i.bh = sub i64 %i.bg, %.01214.i.ph77
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.015.i.pn.prol = phi ptr [ %.015.i.prol, %.lr.ph.i.prol ], [ %.015.i.pn.ph, %.lr.ph.i.preheader ]
  %.01214.i.prol = phi ptr [ %i.bj, %.lr.ph.i.prol ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.prol, i64 1 ; 3 uses
  %i.bi = load i8, ptr %.01214.i.prol, align 1
  store i8 %i.bi, ptr %.015.i.prol, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !15945

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.pn.unr = phi ptr [ %.015.i.pn.ph, %.lr.ph.i.preheader ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %.01214.i.ph, %.lr.ph.i.preheader ], [ %i.bj, %.lr.ph.i.prol ]
  %i.bk = icmp ult i64 %i.bh, 7
  br i1 %i.bk, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i.7, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %.01214.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 1
  %i.bl = load i8, ptr %.01214.i, align 1
  store i8 %i.bl, ptr %.015.i, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i, i64 1
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  store i8 %i.bn, ptr %.015.i.1, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i, i64 2
  %.015.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1
  store i8 %i.bp, ptr %.015.i.2, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.01214.i, i64 3
  %.015.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 4
  %i.br = load i8, ptr %i.bq, align 1
  store i8 %i.br, ptr %.015.i.3, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %.015.i.4 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 5
  %i.bt = load i8, ptr %i.bs, align 1
  store i8 %i.bt, ptr %.015.i.4, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i, i64 5
  %.015.i.5 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 6
  %i.bv = load i8, ptr %i.bu, align 1
  store i8 %i.bv, ptr %.015.i.5, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.01214.i, i64 6
  %.015.i.6 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 7
  %i.bx = load i8, ptr %i.bw, align 1
  store i8 %i.bx, ptr %.015.i.6, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.01214.i, i64 7
  %.015.i.7 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 8 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  store i8 %i.bz, ptr %.015.i.7, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ca, %i.s
  br i1 %.not.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, label %.lr.ph.i, !llvm.loop !15946

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre25.pre = load i8, ptr %i.c, align 2, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit, %bb.a
  %.pre25 = phi i8 [ %.pre25.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !813
  %.not.i20 = icmp eq i8 %i.cc, 0
  br i1 %.not.i20, label %bb.b, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit..loopexit_crit_edge

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit..loopexit_crit_edge: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %.pre26 = load i8, ptr %i.o, align 1, !tbaa !813
  br label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0.in24 = phi i8 [ %.pre25, %bb.b ], [ %.0, %bb.c ]
  %.01923 = phi i8 [ 0, %bb.b ], [ %i.cl, %bb.c ] ; 2 uses
  %.0 = add i8 %.0.in24, 1                        ; 3 uses
  %i.cf = zext i8 %.01923 to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2128 ; 3 uses
  %i.ci = zext i8 %.0 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !2128
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %.0, ptr %i.ck, align 1, !tbaa !813
  store ptr %0, ptr %i.ch, align 8, !tbaa !2128
  %i.cl = add i8 %.01923, 1                       ; 2 uses
  %i.cm = load i8, ptr %i.o, align 1, !tbaa !813  ; 2 uses
  %.not = icmp ugt i8 %i.cl, %i.cm
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !15947

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load i8, ptr %i.c, align 2, !tbaa !813
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit..loopexit_crit_edge, %.loopexit.loopexit
  %i.cn = phi i8 [ %i.cm, %.loopexit.loopexit ], [ %.pre26, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit..loopexit_crit_edge ]
  %i.co = phi i8 [ %.pre, %.loopexit.loopexit ], [ %.pre25, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit..loopexit_crit_edge ]
  %i.cp = add i8 %i.co, 1
  %i.cq = add i8 %i.cp, %i.cn
  store i8 %i.cq, ptr %i.c, align 2, !tbaa !813
  store i8 0, ptr %i.o, align 1, !tbaa !813
  %i.cr = load ptr, ptr %0, align 8, !tbaa !2128  ; 4 uses
  %i.cs = load i8, ptr %i.f, align 8, !tbaa !813  ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 10 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !813 ; 4 uses
  %i.cv = zext i8 %i.cs to i32
  %i.cw = add nuw nsw i32 %i.cv, 1                ; 2 uses
  %i.cx = zext i8 %i.cu to i32                    ; 2 uses
  %i.cy = and i32 %i.cw, 255                      ; 3 uses
  %i.cz = sub nsw i32 %i.cx, %i.cy                ; 4 uses
  %i.da = sext i32 %i.cz to i64                   ; 5 uses
  %i.db = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.da
  %.not13.i.i = icmp eq i32 %i.cy, %i.cx
  br i1 %.not13.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.i, label %iter.check61

iter.check61:                                     ; preds = %.loopexit
  %i.df = zext i8 %i.cs to i64                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.df ; 5 uses
  %min.iters.check45 = icmp ult i32 %i.cz, 8
  %i.dh = sub nsw i64 %i.db, %i.df
  %diff.check44 = icmp ugt i64 %i.dh, -32
  %or.cond = select i1 %min.iters.check45, i1 true, i1 %diff.check44
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check46

vector.main.loop.iter.check46:                    ; preds = %iter.check61
  %min.iters.check47 = icmp ult i32 %i.cz, 32
  br i1 %min.iters.check47, label %vec.epilog.ph65, label %vector.ph48

vector.ph48:                                      ; preds = %vector.main.loop.iter.check46
  %n.vec49 = and i64 %i.da, -32                   ; 5 uses
  %i.di = getelementptr i8, ptr %i.dg, i64 %n.vec49
  %i.dj = getelementptr i8, ptr %i.dd, i64 %n.vec49
  br label %vector.body50

vector.body50:                                    ; preds = %vector.ph48, %vector.body50
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next56, %vector.body50 ] ; 3 uses
  %next.gep52 = getelementptr i8, ptr %i.dg, i64 %index51 ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.dd, i64 %index51 ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <16 x i8>, ptr %next.gep53, align 1
  %wide.load55 = load <16 x i8>, ptr %i.dk, align 1
  %i.dl = getelementptr i8, ptr %next.gep52, i64 16
  store <16 x i8> %wide.load54, ptr %next.gep52, align 1
  store <16 x i8> %wide.load55, ptr %i.dl, align 1
  %index.next56 = add nuw i64 %index51, 32        ; 2 uses
  %i.dm = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.dm, label %middle.block57, label %vector.body50, !llvm.loop !15948

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %n.vec49, %i.da
  br i1 %cmp.n58, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.i, label %vec.epilog.iter.check63

vec.epilog.iter.check63:                          ; preds = %middle.block57
  %i.dn = and i32 %i.cz, 24
  %min.epilog.iters.check64 = icmp eq i32 %i.dn, 0
  br i1 %min.epilog.iters.check64, label %.lr.ph.i.i.preheader, label %vec.epilog.ph65, !prof !2132

vec.epilog.ph65:                                  ; preds = %vector.main.loop.iter.check46, %vec.epilog.iter.check63
  %vec.epilog.resume.val59 = phi i64 [ %n.vec49, %vec.epilog.iter.check63 ], [ 0, %vector.main.loop.iter.check46 ]
  %n.vec66 = and i64 %i.da, -8                    ; 4 uses
  %i.do = getelementptr i8, ptr %i.dg, i64 %n.vec66
  %i.dp = getelementptr i8, ptr %i.dd, i64 %n.vec66
  br label %vec.epilog.vector.body67

vec.epilog.vector.body67:                         ; preds = %vec.epilog.vector.body67, %vec.epilog.ph65
  %index68 = phi i64 [ %vec.epilog.resume.val59, %vec.epilog.ph65 ], [ %index.next72, %vec.epilog.vector.body67 ] ; 3 uses
  %next.gep69 = getelementptr i8, ptr %i.dg, i64 %index68
  %next.gep70 = getelementptr i8, ptr %i.dd, i64 %index68
  %wide.load71 = load <8 x i8>, ptr %next.gep70, align 1
  store <8 x i8> %wide.load71, ptr %next.gep69, align 1
  %index.next72 = add nuw i64 %index68, 8         ; 2 uses
  %i.dq = icmp eq i64 %index.next72, %n.vec66
  br i1 %i.dq, label %vec.epilog.middle.block73, label %vec.epilog.vector.body67, !llvm.loop !15949

vec.epilog.middle.block73:                        ; preds = %vec.epilog.vector.body67
  %cmp.n74 = icmp eq i64 %n.vec66, %i.da
  br i1 %cmp.n74, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIaJSt4lessIaENS1_21MinimumAlignmentAllocIaEEEEEE10transfer_nEmmmPS9_PS7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check61, %vec.epilog.iter.check63, %vec.epilog.middle.block73
  %.015.i.i.ph = phi ptr [ %i.dg, %iter.check61 ], [ %i.di, %vec.epilog.iter.check63 ], [ %i.do, %vec.epilog.middle.block73 ]
  %.01214.i.i.ph = phi ptr [ %i.dd, %iter.check61 ], [ %i.dj, %vec.epilog.iter.check63 ], [ %i.dp, %vec.epilog.middle.block73 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE:bb.a

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.do = getelementptr i8, ptr %.val100, i64 10
  %.val96 = load i8, ptr %i.do, align 1, !tbaa !813 ; 2 uses
  %i.dp = icmp ult i8 %.val108, %.val96
  br i1 %i.dp, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dq = add nuw i8 %.val108, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.val100, i64 256
  %i.ds = zext i8 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !2179 ; 12 uses
  %i.dv = ptrtoaddr ptr %i.du to i64
  %i.dw = getelementptr i8, ptr %i.du, i64 10     ; 4 uses
  %.val114 = load i8, ptr %i.dw, align 1, !tbaa !813 ; 5 uses
  %i.dx = icmp ult i8 %.val114, 61
  br i1 %i.dx, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %narrow165 = sub nuw nsw i8 61, %.val114
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !802 ; 2 uses
  %.inv = icmp sgt i32 %i.dy, 0
  %i.dz = zext i1 %.inv to i8
  %i.ea = lshr i8 %narrow165, %i.dz               ; 4 uses
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1) ; 11 uses
  %i.eb = and i32 %i.dy, 255
  %i.ec = getelementptr i8, ptr %i.b, i64 10      ; 8 uses
  %.val95 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.ed = zext i8 %.val95 to i32
  %i.ee = zext nneg i8 %.sroa.speculated to i32   ; 3 uses
  %i.ef = sub nsw i32 %i.ed, %i.ee
  %.not86 = icmp sle i32 %i.eb, %i.ef
  %narrow166 = add nuw nsw i8 %.sroa.speculated, %.val114
  %i.eg = icmp samesign ult i8 %narrow166, 61
  %or.cond163 = select i1 %.not86, i1 true, i1 %i.eg
  br i1 %or.cond163, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 8 uses
  %.not1.i.i120 = icmp eq i8 %.val114, 0
  br i1 %.not1.i.i120, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.ei = zext nneg i8 %.val114 to i64            ; 2 uses
  %i.ej = zext nneg i8 %.sroa.speculated to i64
  %.idx.i.i121 = shl nuw nsw i64 %i.ei, 2         ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %i.eh, i64 %i.ej
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.ei ; 16 uses
  %i.em = getelementptr i8, ptr %i.eh, i64 %.idx.i.i121 ; 16 uses
  %i.en = add nsw i64 %.idx.i.i121, -4            ; 2 uses
  %i.eo = lshr exact i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check197 = icmp ult i64 %i.en, 28
  br i1 %min.iters.check197, label %.lr.ph.i.i122.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec199 = and i64 %i.ep, 9223372036854775800  ; 8 uses
  %i.eq = mul i64 %n.vec199, -4                   ; 2 uses
  %i.er = getelementptr i8, ptr %i.el, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.em, i64 %i.eq
  %i.et = getelementptr inbounds i8, ptr %i.em, i64 -16
  %i.eu = getelementptr inbounds i8, ptr %i.em, i64 -32
  %wide.load204 = load <4 x i32>, ptr %i.et, align 4
  %wide.load205 = load <4 x i32>, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds i8, ptr %i.el, i64 -16
  %i.ew = getelementptr inbounds i8, ptr %i.el, i64 -32
  store <4 x i32> %wide.load204, ptr %i.ev, align 1
  store <4 x i32> %wide.load205, ptr %i.ew, align 1
  %i.ex = icmp eq i64 %n.vec199, 8
  br i1 %i.ex, label %middle.block207, label %vector.body200.1

vector.body200.1:                                 ; preds = %vector.ph198
  %i.ey = getelementptr i8, ptr %i.em, i64 -48
  %i.ez = getelementptr i8, ptr %i.em, i64 -64
  %wide.load204.1 = load <4 x i32>, ptr %i.ey, align 4
  %wide.load205.1 = load <4 x i32>, ptr %i.ez, align 4
  %i.fa = getelementptr i8, ptr %i.el, i64 -48
  %i.fb = getelementptr i8, ptr %i.el, i64 -64
  store <4 x i32> %wide.load204.1, ptr %i.fa, align 1
  store <4 x i32> %wide.load205.1, ptr %i.fb, align 1
  %i.fc = icmp eq i64 %n.vec199, 16
  br i1 %i.fc, label %middle.block207, label %vector.body200.2

vector.body200.2:                                 ; preds = %vector.body200.1
  %i.fd = getelementptr i8, ptr %i.em, i64 -80
  %i.fe = getelementptr i8, ptr %i.em, i64 -96
  %wide.load204.2 = load <4 x i32>, ptr %i.fd, align 4
  %wide.load205.2 = load <4 x i32>, ptr %i.fe, align 4
  %i.ff = getelementptr i8, ptr %i.el, i64 -80
  %i.fg = getelementptr i8, ptr %i.el, i64 -96
  store <4 x i32> %wide.load204.2, ptr %i.ff, align 1
  store <4 x i32> %wide.load205.2, ptr %i.fg, align 1
  %i.fh = icmp eq i64 %n.vec199, 24
  br i1 %i.fh, label %middle.block207, label %vector.body200.3

vector.body200.3:                                 ; preds = %vector.body200.2
  %i.fi = getelementptr i8, ptr %i.em, i64 -112
  %i.fj = getelementptr i8, ptr %i.em, i64 -128
  %wide.load204.3 = load <4 x i32>, ptr %i.fi, align 4
  %wide.load205.3 = load <4 x i32>, ptr %i.fj, align 4
  %i.fk = getelementptr i8, ptr %i.el, i64 -112
  %i.fl = getelementptr i8, ptr %i.el, i64 -128
  store <4 x i32> %wide.load204.3, ptr %i.fk, align 1
  store <4 x i32> %wide.load205.3, ptr %i.fl, align 1
  %i.fm = icmp eq i64 %n.vec199, 32
  br i1 %i.fm, label %middle.block207, label %vector.body200.4

vector.body200.4:                                 ; preds = %vector.body200.3
  %i.fn = getelementptr i8, ptr %i.em, i64 -144
  %i.fo = getelementptr i8, ptr %i.em, i64 -160
  %wide.load204.4 = load <4 x i32>, ptr %i.fn, align 4
  %wide.load205.4 = load <4 x i32>, ptr %i.fo, align 4
  %i.fp = getelementptr i8, ptr %i.el, i64 -144
  %i.fq = getelementptr i8, ptr %i.el, i64 -160
  store <4 x i32> %wide.load204.4, ptr %i.fp, align 1
  store <4 x i32> %wide.load205.4, ptr %i.fq, align 1
  %i.fr = icmp eq i64 %n.vec199, 40
  br i1 %i.fr, label %middle.block207, label %vector.body200.5

vector.body200.5:                                 ; preds = %vector.body200.4
  %i.fs = getelementptr i8, ptr %i.em, i64 -176
  %i.ft = getelementptr i8, ptr %i.em, i64 -192
  %wide.load204.5 = load <4 x i32>, ptr %i.fs, align 4
  %wide.load205.5 = load <4 x i32>, ptr %i.ft, align 4
  %i.fu = getelementptr i8, ptr %i.el, i64 -176
  %i.fv = getelementptr i8, ptr %i.el, i64 -192
  store <4 x i32> %wide.load204.5, ptr %i.fu, align 1
  store <4 x i32> %wide.load205.5, ptr %i.fv, align 1
  %i.fw = icmp eq i64 %n.vec199, 48
  br i1 %i.fw, label %middle.block207, label %vector.body200.6

vector.body200.6:                                 ; preds = %vector.body200.5
  %i.fx = getelementptr i8, ptr %i.em, i64 -208
  %i.fy = getelementptr i8, ptr %i.em, i64 -224
  %wide.load204.6 = load <4 x i32>, ptr %i.fx, align 4
  %wide.load205.6 = load <4 x i32>, ptr %i.fy, align 4
  %i.fz = getelementptr i8, ptr %i.el, i64 -208
  %i.ga = getelementptr i8, ptr %i.el, i64 -224
  store <4 x i32> %wide.load204.6, ptr %i.fz, align 1
  store <4 x i32> %wide.load205.6, ptr %i.ga, align 1
  br label %middle.block207

middle.block207:                                  ; preds = %vector.body200.6, %vector.body200.5, %vector.body200.4, %vector.body200.3, %vector.body200.2, %vector.body200.1, %vector.ph198
  %cmp.n208 = icmp eq i64 %i.ep, %n.vec199
  br i1 %cmp.n208, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i.loopexit, label %.lr.ph.i.i122.preheader

.lr.ph.i.i122.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block207
  %.03.i.i123.ph = phi ptr [ %i.el, %.lr.ph.preheader.i.i ], [ %i.er, %middle.block207 ]
  %.0142.i.i.ph = phi ptr [ %i.em, %.lr.ph.preheader.i.i ], [ %i.es, %middle.block207 ]
  br label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122.preheader, %.lr.ph.i.i122
  %.03.i.i123 = phi ptr [ %i.gb, %.lr.ph.i.i122 ], [ %.03.i.i123.ph, %.lr.ph.i.i122.preheader ]
  %.0142.i.i = phi ptr [ %i.gc, %.lr.ph.i.i122 ], [ %.0142.i.i.ph, %.lr.ph.i.i122.preheader ]
  %i.gb = getelementptr inbounds i8, ptr %.03.i.i123, i64 -4 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.0142.i.i, i64 -4 ; 3 uses
  %.val.i.i124 = load i32, ptr %i.gc, align 4
  store i32 %.val.i.i124, ptr %i.gb, align 1
  %.not.i.i125 = icmp eq ptr %i.gc, %i.eh
  br i1 %.not.i.i125, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i.loopexit, label %.lr.ph.i.i122, !llvm.loop !16696

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i.loopexit: ; preds = %.lr.ph.i.i122, %middle.block207
  %.val56.i.pre = load i8, ptr %i.d, align 8, !tbaa !813
  %.val54.i126.pre = load ptr, ptr %i.b, align 8, !tbaa !2179
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i.loopexit, %bb.k
  %.val54.i126 = phi ptr [ %.val54.i126.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i.loopexit ], [ %.val100, %bb.k ]
  %.val56.i = phi i8 [ %.val56.i.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i.loopexit ], [ %.val108, %bb.k ]
  %i.gd = add nsw i32 %i.ee, -1                   ; 3 uses
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = zext i8 %.val56.i to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %.val54.i126, i64 12
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gf
  %.val.i59.i = load i32, ptr %i.gi, align 4
  store i32 %.val.i59.i, ptr %i.gg, align 1
  %.val52.i127 = load i8, ptr %i.ec, align 2, !tbaa !813 ; 2 uses
  %i.gj = zext i8 %.val52.i127 to i32             ; 2 uses
  %i.gk = sub nsw i32 %i.gj, %i.gd
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gl ; 5 uses
  %.idx.i60.i = shl nuw nsw i64 %i.ge, 2          ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx.i60.i
  %.not1.i61.i = icmp eq i32 %i.gd, 0
  br i1 %.not1.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i134, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i
  %i.gp = add nsw i64 %.idx.i60.i, -4             ; 2 uses
  %i.gq = lshr exact i64 %i.gp, 2
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check214 = icmp ult i64 %i.gp, 140
  br i1 %min.iters.check214, label %.lr.ph.i63.i.preheader228, label %vector.memcheck211

vector.memcheck211:                               ; preds = %.lr.ph.i63.i.preheader
  %i.gs = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1)
  %i.gt = shl nuw i8 %i.gs, 2
  %i.gu = zext i8 %i.gt to i64
  %3 = add i64 %i.dv, %i.gu
  %i.gv = zext i8 %.val52.i127 to i64
  %i.gw = shl nuw nsw i64 %i.gv, 2
  %i.gx = add i64 %i.gw, %i.c
  %i.gy = sub i64 %3, %i.gx
  %i.gz = add i64 %i.gy, -5
  %diff.check212 = icmp ult i64 %i.gz, 31
  br i1 %diff.check212, label %.lr.ph.i63.i.preheader228, label %vector.ph215

vector.ph215:                                     ; preds = %vector.memcheck211
  %n.vec216 = and i64 %i.gr, 9223372036854775800  ; 3 uses
  %i.ha = shl i64 %n.vec216, 2                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.eh, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.gn, i64 %i.ha
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body217 ] ; 2 uses
  %i.hd = shl i64 %index218, 2                    ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.eh, i64 %i.hd ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.gn, i64 %i.hd ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep220, i64 16
  %wide.load221 = load <4 x i32>, ptr %next.gep220, align 4
  %wide.load222 = load <4 x i32>, ptr %i.he, align 4
  %i.hf = getelementptr i8, ptr %next.gep219, i64 16
  store <4 x i32> %wide.load221, ptr %next.gep219, align 1
  store <4 x i32> %wide.load222, ptr %i.hf, align 1
  %index.next223 = add nuw i64 %index218, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.hg, label %middle.block224, label %vector.body217, !llvm.loop !16697

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.gr, %n.vec216
  br i1 %cmp.n225, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i131, label %.lr.ph.i63.i.preheader228

.lr.ph.i63.i.preheader228:                        ; preds = %vector.memcheck211, %.lr.ph.i63.i.preheader, %middle.block224
  %.03.i64.i.ph = phi ptr [ %i.eh, %vector.memcheck211 ], [ %i.eh, %.lr.ph.i63.i.preheader ], [ %i.hb, %middle.block224 ]
  %.0122.i.i128.ph = phi ptr [ %i.gn, %vector.memcheck211 ], [ %i.gn, %.lr.ph.i63.i.preheader ], [ %i.hc, %middle.block224 ]
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader228, %.lr.ph.i63.i
  %.03.i64.i = phi ptr [ %i.hi, %.lr.ph.i63.i ], [ %.03.i64.i.ph, %.lr.ph.i63.i.preheader228 ] ; 2 uses
  %.0122.i.i128 = phi ptr [ %i.hh, %.lr.ph.i63.i ], [ %.0122.i.i128.ph, %.lr.ph.i63.i.preheader228 ] ; 2 uses
  %.012.val.i.i129 = load i32, ptr %.0122.i.i128, align 4
  store i32 %.012.val.i.i129, ptr %.03.i64.i, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.0122.i.i128, i64 4 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.03.i64.i, i64 4
  %.not.i65.i130 = icmp eq ptr %i.hh, %i.go
  br i1 %.not.i65.i130, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i131, label %.lr.ph.i63.i, !llvm.loop !16698

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i131: ; preds = %.lr.ph.i63.i, %middle.block224
  %.val51.pre.i132 = load i8, ptr %i.ec, align 2, !tbaa !813
  %.pre.i133 = zext i8 %.val51.pre.i132 to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i134

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i134: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i131, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i
  %.pre-phi.i135 = phi i32 [ %.pre.i133, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i131 ], [ %i.gj, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i ]
  %.val53.i136 = load ptr, ptr %i.b, align 8, !tbaa !2179
  %.val55.i = load i8, ptr %i.d, align 8, !tbaa !813
  %i.hj = zext i8 %.val55.i to i64
  %i.hk = sub nsw i32 %.pre-phi.i135, %i.ee
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %.val53.i136, i64 12
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hj
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.hl
  %.val.i66.i = load i32, ptr %i.ho, align 4
  store i32 %.val.i66.i, ptr %i.hn, align 1
  %i.hp = getelementptr i8, ptr %i.b, i64 11
  %.val57.i = load i8, ptr %i.hp, align 1, !tbaa !813
  %.not.i67.i = icmp eq i8 %.val57.i, 0
  br i1 %.not.i67.i, label %bb.l, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE23rebalance_left_to_rightEhPS8_PSaIS5_E.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i134
  %.val50.i138 = load i8, ptr %i.dw, align 1, !tbaa !813 ; 5 uses
  %i.hq = add i8 %.val50.i138, 1                  ; 2 uses
  %.not1.i = icmp eq i8 %i.hq, 0
  br i1 %.not1.i, label %.lr.ph5.i, label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %bb.l
  %i.hr = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 6 uses
  %i.hs = zext i8 %i.hq to i64                    ; 2 uses
  %i.ht = and i8 %.val50.i138, 1
  %lcmp.mod233.not.not = icmp eq i8 %i.ht, 0
  br i1 %lcmp.mod233.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i139
  %i.hu = add i8 %.val50.i138, %.sroa.speculated  ; 2 uses
  %i.hv = zext i8 %.val50.i138 to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !2179 ; 3 uses
  %i.hy = zext i8 %i.hu to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hy
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !2179
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i8 %i.hu, ptr %i.ia, align 1, !tbaa !813
  store ptr %i.du, ptr %i.hx, align 8, !tbaa !2179
  %indvars.iv.next.i141.prol = add nsw i64 %i.hs, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i139
  %indvars.iv.i140.unr = phi i64 [ %i.hs, %.lr.ph.i139 ], [ %indvars.iv.next.i141.prol, %.prol.loopexit.unr-lcssa ]
  %i.ib = icmp eq i8 %.val50.i138, 0
  br i1 %i.ib, label %.lr.ph5.i, label %.lr.ph.i139.new

.lr.ph5.i:                                        ; preds = %.prol.loopexit, %.lr.ph.i139.new, %bb.l
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 3 uses
  %i.ie = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 1) ; 2 uses
  %umax = zext nneg i8 %i.ie to i64               ; 2 uses
  %xtraiter235 = and i64 %umax, 1
  %i.if = icmp samesign ult i8 %i.ea, 2
  br i1 %i.if, label %.epil.preheader234, label %.lr.ph5.i.new

.lr.ph5.i.new:                                    ; preds = %.lr.ph5.i
  %unroll_iter238 = and i64 %umax, 62
  %invariant.op = sub i8 1, %.sroa.speculated
  br label %bb.m

.lr.ph.i139.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i139.new
  %indvars.iv.i140 = phi i64 [ %indvars.iv.next.i141.1, %.lr.ph.i139.new ], [ %indvars.iv.i140.unr, %.prol.loopexit ] ; 3 uses
  %i.ig = trunc nuw i64 %indvars.iv.i140 to i8
  %i.ih = add i8 %i.ig, -1                        ; 2 uses
  %i.ii = add i8 %i.ih, %.sroa.speculated         ; 2 uses
  %i.ij = zext i8 %i.ih to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !2179 ; 3 uses
  %i.im = zext i8 %i.ii to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.im
  store ptr %i.il, ptr %i.in, align 8, !tbaa !2179
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i8 %i.ii, ptr %i.io, align 1, !tbaa !813
  store ptr %i.du, ptr %i.il, align 8, !tbaa !2179
  %i.ip = trunc i64 %indvars.iv.i140 to i8
  %i.iq = add i8 %i.ip, -2                        ; 2 uses
  %i.ir = add i8 %i.iq, %.sroa.speculated         ; 2 uses
  %i.is = zext i8 %i.iq to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !2179 ; 3 uses
  %i.iv = zext i8 %i.ir to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.iv
  store ptr %i.iu, ptr %i.iw, align 8, !tbaa !2179
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i8 %i.ir, ptr %i.ix, align 1, !tbaa !813
  store ptr %i.du, ptr %i.iu, align 8, !tbaa !2179
  %indvars.iv.next.i141.1 = add nsw i64 %indvars.iv.i140, -2 ; 2 uses
  %i.iy = and i64 %indvars.iv.next.i141.1, 255
  %.not.i142.1 = icmp eq i64 %i.iy, 0
  br i1 %.not.i142.1, label %.lr.ph5.i, label %.lr.ph.i139.new, !llvm.loop !16699

bb.m:                                             ; preds = %bb.m, %.lr.ph5.i.new
  %indvars.iv7.i = phi i64 [ 1, %.lr.ph5.i.new ], [ %indvars.iv.next8.i.1, %bb.m ] ; 6 uses
  %niter239 = phi i64 [ 0, %.lr.ph5.i.new ], [ %niter239.next.1, %bb.m ]
  %i.iz = add nsw i64 %indvars.iv7.i, -1          ; 2 uses
  %.val49.i144 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.ja = trunc nuw i64 %indvars.iv7.i to i8
  %i.jb = sub i8 %i.ja, %.sroa.speculated
  %i.jc = add i8 %i.jb, %.val49.i144
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !2179 ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iz
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !2179
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.ji = trunc nuw i64 %i.iz to i8
  store i8 %i.ji, ptr %i.jh, align 1, !tbaa !813
  store ptr %i.du, ptr %i.jf, align 8, !tbaa !2179
  %.val49.i144.1 = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.jj = trunc i64 %indvars.iv7.i to i8
  %.reass = add i8 %i.jj, %invariant.op
  %i.jk = add i8 %.reass, %.val49.i144.1
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !2179 ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv7.i
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !2179
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = trunc nuw i64 %indvars.iv7.i to i8
  store i8 %i.jq, ptr %i.jp, align 1, !tbaa !813
  store ptr %i.du, ptr %i.jn, align 8, !tbaa !2179
  %indvars.iv.next8.i.1 = add nuw nsw i64 %indvars.iv7.i, 2 ; 2 uses
  %niter239.next.1 = add nuw i64 %niter239, 2     ; 2 uses
  %niter239.ncmp.1 = icmp eq i64 %niter239.next.1, %unroll_iter238
  br i1 %niter239.ncmp.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE23rebalance_left_to_rightEhPS8_PSaIS5_E.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !16700

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE23rebalance_left_to_rightEhPS8_PSaIS5_E.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE23rebalance_left_to_rightEhPS8_PSaIS5_E.exit, label %.epil.preheader234

.epil.preheader234:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE23rebalance_left_to_rightEhPS8_PSaIS5_E.exit.loopexit.unr-lcssa, %.lr.ph5.i
  %indvars.iv7.i.epil.init = phi i64 [ 1, %.lr.ph5.i ], [ %indvars.iv.next8.i.1, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE23rebalance_left_to_rightEhPS8_PSaIS5_E.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod237 = trunc i8 %i.ie to i1
  tail call void @llvm.assume(i1 %lcmp.mod237)
  %i.jr = add nsw i64 %indvars.iv7.i.epil.init, -1 ; 2 uses
  %.val49.i144.epil = load i8, ptr %i.ec, align 2, !tbaa !813
  %i.js = trunc nuw i64 %indvars.iv7.i.epil.init to i8
  %i.jt = sub i8 %i.js, %.sroa.speculated
  %i.ju = add i8 %i.jt, %.val49.i144.epil
  %i.jv = zext i8 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !2179 ; 3 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.jr
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !2179
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE23rebalance_right_to_leftEhPS7_PSaIiE:bb.a
.preheader53:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit51
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
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2429 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !2429
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !813
  store ptr %0, ptr %i.bz, align 8, !tbaa !2429
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !813
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2429 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2429
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %0, ptr %i.cj, align 8, !tbaa !2429
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2429 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !2429
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !813
  store ptr %0, ptr %i.cr, align 8, !tbaa !2429
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !18207

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2429 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !2429
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !813
  store ptr %2, ptr %i.cy, align 8, !tbaa !2429
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !18208

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !813
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !813
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !813
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE23rebalance_left_to_rightEhPS7_PSaIiE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit, label %.lr.ph.preheader.i

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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !18209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit, label %.lr.ph.i.preheader

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
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit, label %.lr.ph.i, !llvm.loop !18210

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !813
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !2429
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !813 ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit
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
  br i1 %i.bi, label %middle.block79, label %vector.body72, !llvm.loop !18211

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.av, %n.vec71
  br i1 %cmp.n80, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit, label %.lr.ph.i48.preheader83

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
  br i1 %.not.i49, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit, label %.lr.ph.i48, !llvm.loop !18212

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block79
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !813
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !2429
  %i.bn = load i8, ptr %i.ac, align 8, !tbaa !813
  %i.bo = zext i8 %i.bn to i64
  %i.bp = sub nsw i32 %.pre-phi, %i.e
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bq
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bs, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !813
  %.not.i50 = icmp eq i8 %i.bw, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJPFbiiEEEEE10transfer_nEmmmPS7_PSaIiE.exit
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !813  ; 5 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2429 ; 3 uses
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !2429
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cc, ptr %i.ci, align 1, !tbaa !813
  store ptr %2, ptr %i.cf, align 8, !tbaa !2429
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
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !2429 ; 3 uses
  %i.cv = zext i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !2429
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !813
  store ptr %2, ptr %i.cu, align 8, !tbaa !2429
  %i.cy = trunc i64 %indvars.iv to i8
  %i.cz = add i8 %i.cy, -2                        ; 2 uses
  %i.da = add i8 %i.cz, %1                        ; 2 uses
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2429 ; 3 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !2429
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !813
  store ptr %2, ptr %i.dd, align 8, !tbaa !2429
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dh = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dh, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !18213

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.di = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dj = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.dk = trunc nuw i64 %indvars.iv58 to i8
  %i.dl = sub i8 %i.dk, %1
  %i.dm = add i8 %i.dl, %i.dj
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2429 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.di
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !2429
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.di to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  store ptr %2, ptr %i.dp, align 8, !tbaa !2429
  %i.dt = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.du = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.du, %invariant.op
  %i.dv = add i8 %.reass, %i.dt
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !2429 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv58
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !2429
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  store ptr %2, ptr %i.dy, align 8, !tbaa !2429
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !18214

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ec = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ed = load i8, ptr %i.ak, align 2, !tbaa !813
  %i.ee = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ef = sub i8 %i.ee, %1
  %i.eg = add i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.eh
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSE_EE:bb.a
  %i.dm = add nsw i32 %i.dl, %i.dk
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.dn = getelementptr i8, ptr %.val105, i64 10
  %.val95 = load i8, ptr %i.dn, align 1, !tbaa !813 ; 2 uses
  %i.do = icmp ult i8 %.val103, %.val95
  br i1 %i.do, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dp = add nuw i8 %.val103, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2498 ; 12 uses
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.dt, i64 10     ; 4 uses
  %.val111 = load i8, ptr %i.dv, align 1, !tbaa !813 ; 5 uses
  %i.dw = icmp ult i8 %.val111, 61
  br i1 %i.dw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %narrow163 = sub nuw nsw i8 61, %.val111
  %i.dx = load i32, ptr %i.a, align 8, !tbaa !802 ; 2 uses
  %.inv = icmp sgt i32 %i.dx, 0
  %i.dy = zext i1 %.inv to i8
  %i.dz = lshr i8 %narrow163, %i.dy               ; 4 uses
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.dz, i8 1) ; 11 uses
  %i.ea = and i32 %i.dx, 255
  %i.eb = getelementptr i8, ptr %i.b, i64 10      ; 8 uses
  %.val94 = load i8, ptr %i.eb, align 2, !tbaa !813
  %i.ec = zext i8 %.val94 to i32
  %i.ed = zext nneg i8 %.sroa.speculated to i32   ; 3 uses
  %i.ee = sub nsw i32 %i.ec, %i.ed
  %.not86 = icmp sle i32 %i.ea, %i.ee
  %narrow164 = add nuw nsw i8 %.sroa.speculated, %.val111
  %i.ef = icmp samesign ult i8 %narrow164, 61
  %or.cond161 = select i1 %.not86, i1 true, i1 %i.ef
  br i1 %or.cond161, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 12 ; 8 uses
  %.not1.i.i120 = icmp eq i8 %.val111, 0
  br i1 %.not1.i.i120, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.eh = zext nneg i8 %.val111 to i64            ; 2 uses
  %i.ei = zext nneg i8 %.sroa.speculated to i64
  %.idx.i.i121 = shl nuw nsw i64 %i.eh, 2         ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = getelementptr [4 x i8], ptr %i.ej, i64 %i.eh ; 16 uses
  %i.el = getelementptr i8, ptr %i.eg, i64 %.idx.i.i121 ; 16 uses
  %i.em = add nsw i64 %.idx.i.i121, -4            ; 2 uses
  %i.en = lshr exact i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check194 = icmp ult i64 %i.em, 28
  br i1 %min.iters.check194, label %.lr.ph.i.i122.preheader, label %vector.ph195

vector.ph195:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec196 = and i64 %i.eo, 9223372036854775800  ; 8 uses
  %i.ep = mul i64 %n.vec196, -4                   ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ek, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.el, i64 %i.ep
  %i.es = getelementptr inbounds i8, ptr %i.el, i64 -16
  %i.et = getelementptr inbounds i8, ptr %i.el, i64 -32
  %wide.load201 = load <4 x i32>, ptr %i.es, align 4, !tbaa !2497
  %wide.load202 = load <4 x i32>, ptr %i.et, align 4, !tbaa !2497
  %i.eu = getelementptr inbounds i8, ptr %i.ek, i64 -16
  %i.ev = getelementptr inbounds i8, ptr %i.ek, i64 -32
  store <4 x i32> %wide.load201, ptr %i.eu, align 4, !tbaa !2497
  store <4 x i32> %wide.load202, ptr %i.ev, align 4, !tbaa !2497
  %i.ew = icmp eq i64 %n.vec196, 8
  br i1 %i.ew, label %middle.block204, label %vector.body197.1

vector.body197.1:                                 ; preds = %vector.ph195
  %i.ex = getelementptr i8, ptr %i.el, i64 -48
  %i.ey = getelementptr i8, ptr %i.el, i64 -64
  %wide.load201.1 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !2497
  %wide.load202.1 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !2497
  %i.ez = getelementptr i8, ptr %i.ek, i64 -48
  %i.fa = getelementptr i8, ptr %i.ek, i64 -64
  store <4 x i32> %wide.load201.1, ptr %i.ez, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.1, ptr %i.fa, align 4, !tbaa !2497
  %i.fb = icmp eq i64 %n.vec196, 16
  br i1 %i.fb, label %middle.block204, label %vector.body197.2

vector.body197.2:                                 ; preds = %vector.body197.1
  %i.fc = getelementptr i8, ptr %i.el, i64 -80
  %i.fd = getelementptr i8, ptr %i.el, i64 -96
  %wide.load201.2 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !2497
  %wide.load202.2 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !2497
  %i.fe = getelementptr i8, ptr %i.ek, i64 -80
  %i.ff = getelementptr i8, ptr %i.ek, i64 -96
  store <4 x i32> %wide.load201.2, ptr %i.fe, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.2, ptr %i.ff, align 4, !tbaa !2497
  %i.fg = icmp eq i64 %n.vec196, 24
  br i1 %i.fg, label %middle.block204, label %vector.body197.3

vector.body197.3:                                 ; preds = %vector.body197.2
  %i.fh = getelementptr i8, ptr %i.el, i64 -112
  %i.fi = getelementptr i8, ptr %i.el, i64 -128
  %wide.load201.3 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !2497
  %wide.load202.3 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !2497
  %i.fj = getelementptr i8, ptr %i.ek, i64 -112
  %i.fk = getelementptr i8, ptr %i.ek, i64 -128
  store <4 x i32> %wide.load201.3, ptr %i.fj, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.3, ptr %i.fk, align 4, !tbaa !2497
  %i.fl = icmp eq i64 %n.vec196, 32
  br i1 %i.fl, label %middle.block204, label %vector.body197.4

vector.body197.4:                                 ; preds = %vector.body197.3
  %i.fm = getelementptr i8, ptr %i.el, i64 -144
  %i.fn = getelementptr i8, ptr %i.el, i64 -160
  %wide.load201.4 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !2497
  %wide.load202.4 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !2497
  %i.fo = getelementptr i8, ptr %i.ek, i64 -144
  %i.fp = getelementptr i8, ptr %i.ek, i64 -160
  store <4 x i32> %wide.load201.4, ptr %i.fo, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.4, ptr %i.fp, align 4, !tbaa !2497
  %i.fq = icmp eq i64 %n.vec196, 40
  br i1 %i.fq, label %middle.block204, label %vector.body197.5

vector.body197.5:                                 ; preds = %vector.body197.4
  %i.fr = getelementptr i8, ptr %i.el, i64 -176
  %i.fs = getelementptr i8, ptr %i.el, i64 -192
  %wide.load201.5 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !2497
  %wide.load202.5 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !2497
  %i.ft = getelementptr i8, ptr %i.ek, i64 -176
  %i.fu = getelementptr i8, ptr %i.ek, i64 -192
  store <4 x i32> %wide.load201.5, ptr %i.ft, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.5, ptr %i.fu, align 4, !tbaa !2497
  %i.fv = icmp eq i64 %n.vec196, 48
  br i1 %i.fv, label %middle.block204, label %vector.body197.6

vector.body197.6:                                 ; preds = %vector.body197.5
  %i.fw = getelementptr i8, ptr %i.el, i64 -208
  %i.fx = getelementptr i8, ptr %i.el, i64 -224
  %wide.load201.6 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !2497
  %wide.load202.6 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !2497
  %i.fy = getelementptr i8, ptr %i.ek, i64 -208
  %i.fz = getelementptr i8, ptr %i.ek, i64 -224
  store <4 x i32> %wide.load201.6, ptr %i.fy, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.6, ptr %i.fz, align 4, !tbaa !2497
  br label %middle.block204

middle.block204:                                  ; preds = %vector.body197.6, %vector.body197.5, %vector.body197.4, %vector.body197.3, %vector.body197.2, %vector.body197.1, %vector.ph195
  %cmp.n205 = icmp eq i64 %i.eo, %n.vec196
  br i1 %cmp.n205, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i.loopexit, label %.lr.ph.i.i122.preheader

.lr.ph.i.i122.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block204
  %.03.i.i123.ph = phi ptr [ %i.ek, %.lr.ph.preheader.i.i ], [ %i.eq, %middle.block204 ]
  %.0142.i.i.ph = phi ptr [ %i.el, %.lr.ph.preheader.i.i ], [ %i.er, %middle.block204 ]
  br label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122.preheader, %.lr.ph.i.i122
  %.03.i.i123 = phi ptr [ %i.ga, %.lr.ph.i.i122 ], [ %.03.i.i123.ph, %.lr.ph.i.i122.preheader ]
  %.0142.i.i = phi ptr [ %i.gb, %.lr.ph.i.i122 ], [ %.0142.i.i.ph, %.lr.ph.i.i122.preheader ]
  %i.ga = getelementptr inbounds i8, ptr %.03.i.i123, i64 -4 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.0142.i.i, i64 -4 ; 3 uses
  %.val.i.i124 = load i32, ptr %i.gb, align 4, !tbaa !2497
  store i32 %.val.i.i124, ptr %i.ga, align 4, !tbaa !2497
  %.not.i.i125 = icmp eq ptr %i.gb, %i.eg
  br i1 %.not.i.i125, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i.loopexit, label %.lr.ph.i.i122, !llvm.loop !19016

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i.loopexit: ; preds = %.lr.ph.i.i122, %middle.block204
  %.val54.i126.pre = load i8, ptr %i.d, align 8, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i.loopexit, %bb.k
  %.val54.i126 = phi i8 [ %.val54.i126.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i.loopexit ], [ %.val103, %bb.k ]
  %i.gc = add nsw i32 %i.ed, -1                   ; 3 uses
  %i.gd = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.ge = zext i8 %.val54.i126 to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.gd
  %i.gg = getelementptr inbounds nuw i8, ptr %.val105, i64 12 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.ge
  %.val.i59.i = load i32, ptr %i.gh, align 4, !tbaa !2497
  store i32 %.val.i59.i, ptr %i.gf, align 4, !tbaa !2497
  %.val52.i127 = load i8, ptr %i.eb, align 2, !tbaa !813 ; 2 uses
  %i.gi = zext i8 %.val52.i127 to i32             ; 2 uses
  %i.gj = sub nsw i32 %i.gi, %i.gc
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gk ; 5 uses
  %.idx.i60.i = shl nuw nsw i64 %i.gd, 2          ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.idx.i60.i
  %.not1.i61.i = icmp eq i32 %i.gc, 0
  br i1 %.not1.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i133, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %i.go = add nsw i64 %.idx.i60.i, -4             ; 2 uses
  %i.gp = lshr exact i64 %i.go, 2
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check211 = icmp ult i64 %i.go, 140
  br i1 %min.iters.check211, label %.lr.ph.i63.i.preheader225, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph.i63.i.preheader
  %i.gr = tail call i8 @llvm.umax.i8(i8 %i.dz, i8 1)
  %i.gs = shl nuw i8 %i.gr, 2
  %i.gt = zext i8 %i.gs to i64
  %3 = add i64 %i.du, %i.gt
  %i.gu = zext i8 %.val52.i127 to i64
  %i.gv = shl nuw nsw i64 %i.gu, 2
  %i.gw = add i64 %i.gv, %i.c
  %i.gx = sub i64 %3, %i.gw
  %i.gy = add i64 %i.gx, -5
  %diff.check209 = icmp ult i64 %i.gy, 31
  br i1 %diff.check209, label %.lr.ph.i63.i.preheader225, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck208
  %n.vec213 = and i64 %i.gq, 9223372036854775800  ; 3 uses
  %i.gz = shl i64 %n.vec213, 2                    ; 2 uses
  %i.ha = getelementptr i8, ptr %i.eg, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.gm, i64 %i.gz
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.hc = shl i64 %index215, 2                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.eg, i64 %i.hc ; 2 uses
  %next.gep217 = getelementptr i8, ptr %i.gm, i64 %i.hc ; 2 uses
  %i.hd = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <4 x i32>, ptr %next.gep217, align 4, !tbaa !2497
  %wide.load219 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !2497
  %i.he = getelementptr i8, ptr %next.gep216, i64 16
  store <4 x i32> %wide.load218, ptr %next.gep216, align 4, !tbaa !2497
  store <4 x i32> %wide.load219, ptr %i.he, align 4, !tbaa !2497
  %index.next220 = add nuw i64 %index215, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.hf, label %middle.block221, label %vector.body214, !llvm.loop !19017

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.gq, %n.vec213
  br i1 %cmp.n222, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i131, label %.lr.ph.i63.i.preheader225

.lr.ph.i63.i.preheader225:                        ; preds = %vector.memcheck208, %.lr.ph.i63.i.preheader, %middle.block221
  %.03.i64.i.ph = phi ptr [ %i.eg, %vector.memcheck208 ], [ %i.eg, %.lr.ph.i63.i.preheader ], [ %i.ha, %middle.block221 ]
  %.0122.i.i128.ph = phi ptr [ %i.gm, %vector.memcheck208 ], [ %i.gm, %.lr.ph.i63.i.preheader ], [ %i.hb, %middle.block221 ]
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader225, %.lr.ph.i63.i
  %.03.i64.i = phi ptr [ %i.hh, %.lr.ph.i63.i ], [ %.03.i64.i.ph, %.lr.ph.i63.i.preheader225 ] ; 2 uses
  %.0122.i.i128 = phi ptr [ %i.hg, %.lr.ph.i63.i ], [ %.0122.i.i128.ph, %.lr.ph.i63.i.preheader225 ] ; 2 uses
  %.012.val.i.i129 = load i32, ptr %.0122.i.i128, align 4, !tbaa !2497
  store i32 %.012.val.i.i129, ptr %.03.i64.i, align 4, !tbaa !2497
  %i.hg = getelementptr inbounds nuw i8, ptr %.0122.i.i128, i64 4 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.03.i64.i, i64 4
  %.not.i65.i130 = icmp eq ptr %i.hg, %i.gn
  br i1 %.not.i65.i130, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i131, label %.lr.ph.i63.i, !llvm.loop !19018

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i131: ; preds = %.lr.ph.i63.i, %middle.block221
  %.val51.pre.i = load i8, ptr %i.eb, align 2, !tbaa !813
  %.pre.i132 = zext i8 %.val51.pre.i to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i133

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i133: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i131, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %.pre-phi.i134 = phi i32 [ %.pre.i132, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i131 ], [ %i.gi, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i ]
  %.val53.i135 = load i8, ptr %i.d, align 8, !tbaa !813
  %i.hi = zext i8 %.val53.i135 to i64
  %i.hj = sub nsw i32 %.pre-phi.i134, %i.ed
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.hi
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.hk
  %.val.i66.i = load i32, ptr %i.hm, align 4, !tbaa !2497
  store i32 %.val.i66.i, ptr %i.hl, align 4, !tbaa !2497
  %i.hn = getelementptr i8, ptr %i.b, i64 11
  %.val57.i = load i8, ptr %i.hn, align 1, !tbaa !813
  %.not.i67.i = icmp eq i8 %.val57.i, 0
  br i1 %.not.i67.i, label %bb.l, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i133
  %.val50.i137 = load i8, ptr %i.dv, align 1, !tbaa !813 ; 5 uses
  %i.ho = add i8 %.val50.i137, 1                  ; 2 uses
  %.not1.i = icmp eq i8 %i.ho, 0
  br i1 %.not1.i, label %.lr.ph5.i, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %bb.l
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dt, i64 256 ; 6 uses
  %i.hq = zext i8 %i.ho to i64                    ; 2 uses
  %i.hr = and i8 %.val50.i137, 1
  %lcmp.mod230.not.not = icmp eq i8 %i.hr, 0
  br i1 %lcmp.mod230.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i138
  %i.hs = add i8 %.val50.i137, %.sroa.speculated  ; 2 uses
  %i.ht = zext i8 %.val50.i137 to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !2498 ; 3 uses
  %i.hw = zext i8 %i.hs to i64
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hw
  store ptr %i.hv, ptr %i.hx, align 8, !tbaa !2498
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i8 %i.hs, ptr %i.hy, align 1, !tbaa !813
  store ptr %i.dt, ptr %i.hv, align 8, !tbaa !2498
  %indvars.iv.next.i140.prol = add nsw i64 %i.hq, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i138
  %indvars.iv.i139.unr = phi i64 [ %i.hq, %.lr.ph.i138 ], [ %indvars.iv.next.i140.prol, %.prol.loopexit.unr-lcssa ]
  %i.hz = icmp eq i8 %.val50.i137, 0
  br i1 %i.hz, label %.lr.ph5.i, label %.lr.ph.i138.new

.lr.ph5.i:                                        ; preds = %.prol.loopexit, %.lr.ph.i138.new, %bb.l
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dt, i64 256 ; 3 uses
  %i.ic = tail call i8 @llvm.umax.i8(i8 %i.dz, i8 1) ; 2 uses
  %umax = zext nneg i8 %i.ic to i64               ; 2 uses
  %xtraiter232 = and i64 %umax, 1
  %i.id = icmp samesign ult i8 %i.dz, 2
  br i1 %i.id, label %.epil.preheader231, label %.lr.ph5.i.new

.lr.ph5.i.new:                                    ; preds = %.lr.ph5.i
  %unroll_iter235 = and i64 %umax, 62
  %invariant.op = sub i8 1, %.sroa.speculated
  br label %bb.m

.lr.ph.i138.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i138.new
  %indvars.iv.i139 = phi i64 [ %indvars.iv.next.i140.1, %.lr.ph.i138.new ], [ %indvars.iv.i139.unr, %.prol.loopexit ] ; 3 uses
  %i.ie = trunc nuw i64 %indvars.iv.i139 to i8
  %i.if = add i8 %i.ie, -1                        ; 2 uses
  %i.ig = add i8 %i.if, %.sroa.speculated         ; 2 uses
  %i.ih = zext i8 %i.if to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !2498 ; 3 uses
  %i.ik = zext i8 %i.ig to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ik
  store ptr %i.ij, ptr %i.il, align 8, !tbaa !2498
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i8 %i.ig, ptr %i.im, align 1, !tbaa !813
  store ptr %i.dt, ptr %i.ij, align 8, !tbaa !2498
  %i.in = trunc i64 %indvars.iv.i139 to i8
  %i.io = add i8 %i.in, -2                        ; 2 uses
  %i.ip = add i8 %i.io, %.sroa.speculated         ; 2 uses
  %i.iq = zext i8 %i.io to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !2498 ; 3 uses
  %i.it = zext i8 %i.ip to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.it
  store ptr %i.is, ptr %i.iu, align 8, !tbaa !2498
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i8 %i.ip, ptr %i.iv, align 1, !tbaa !813
  store ptr %i.dt, ptr %i.is, align 8, !tbaa !2498
  %indvars.iv.next.i140.1 = add nsw i64 %indvars.iv.i139, -2 ; 2 uses
  %i.iw = and i64 %indvars.iv.next.i140.1, 255
  %.not.i141.1 = icmp eq i64 %i.iw, 0
  br i1 %.not.i141.1, label %.lr.ph5.i, label %.lr.ph.i138.new, !llvm.loop !19019

bb.m:                                             ; preds = %bb.m, %.lr.ph5.i.new
  %indvars.iv7.i = phi i64 [ 1, %.lr.ph5.i.new ], [ %indvars.iv.next8.i.1, %bb.m ] ; 6 uses
  %niter236 = phi i64 [ 0, %.lr.ph5.i.new ], [ %niter236.next.1, %bb.m ]
  %i.ix = add nsw i64 %indvars.iv7.i, -1          ; 2 uses
  %.val49.i = load i8, ptr %i.eb, align 2, !tbaa !813
  %i.iy = trunc nuw i64 %indvars.iv7.i to i8
  %i.iz = sub i8 %i.iy, %.sroa.speculated
  %i.ja = add i8 %i.iz, %.val49.i
  %i.jb = zext i8 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !2498 ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ix
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !2498
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jg = trunc nuw i64 %i.ix to i8
  store i8 %i.jg, ptr %i.jf, align 1, !tbaa !813
  store ptr %i.dt, ptr %i.jd, align 8, !tbaa !2498
  %.val49.i.1 = load i8, ptr %i.eb, align 2, !tbaa !813
  %i.jh = trunc i64 %indvars.iv7.i to i8
  %.reass = add i8 %i.jh, %invariant.op
  %i.ji = add i8 %.reass, %.val49.i.1
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !2498 ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv7.i
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !2498
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = trunc nuw i64 %indvars.iv7.i to i8
  store i8 %i.jo, ptr %i.jn, align 1, !tbaa !813
  store ptr %i.dt, ptr %i.jl, align 8, !tbaa !2498
  %indvars.iv.next8.i.1 = add nuw nsw i64 %indvars.iv7.i, 2 ; 2 uses
  %niter236.next.1 = add nuw i64 %niter236, 2     ; 2 uses
  %niter236.ncmp.1 = icmp eq i64 %niter236.next.1, %unroll_iter235
  br i1 %niter236.ncmp.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !19020

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit, label %.epil.preheader231

.epil.preheader231:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit.loopexit.unr-lcssa, %.lr.ph5.i
  %indvars.iv7.i.epil.init = phi i64 [ 1, %.lr.ph5.i ], [ %indvars.iv.next8.i.1, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod234 = trunc i8 %i.ic to i1
  tail call void @llvm.assume(i1 %lcmp.mod234)
  %i.jp = add nsw i64 %indvars.iv7.i.epil.init, -1 ; 2 uses
  %.val49.i.epil = load i8, ptr %i.eb, align 2, !tbaa !813
  %i.jq = trunc nuw i64 %indvars.iv7.i.epil.init to i8
  %i.jr = sub i8 %i.jq, %.sroa.speculated
  %i.js = add i8 %i.jr, %.val49.i.epil
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !2498 ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.jp
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !2498
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = trunc nuw i64 %i.jp to i8
  store i8 %i.jy, ptr %i.jx, align 1, !tbaa !813
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISC_EERKS5_PSH_EE:bb.a
  %i.dm = add nsw i32 %i.dl, %i.dk
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.dn = getelementptr i8, ptr %.val105, i64 10
  %.val95 = load i8, ptr %i.dn, align 1, !tbaa !813 ; 2 uses
  %i.do = icmp ult i8 %.val103, %.val95
  br i1 %i.do, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dp = add nuw i8 %.val103, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2526 ; 12 uses
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.dt, i64 10     ; 4 uses
  %.val112 = load i8, ptr %i.dv, align 1, !tbaa !813 ; 5 uses
  %i.dw = icmp ult i8 %.val112, 61
  br i1 %i.dw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %narrow163 = sub nuw nsw i8 61, %.val112
  %i.dx = load i32, ptr %i.a, align 8, !tbaa !802 ; 2 uses
  %.inv = icmp sgt i32 %i.dx, 0
  %i.dy = zext i1 %.inv to i8
  %i.dz = lshr i8 %narrow163, %i.dy               ; 4 uses
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.dz, i8 1) ; 11 uses
  %i.ea = and i32 %i.dx, 255
  %i.eb = getelementptr i8, ptr %i.b, i64 10      ; 8 uses
  %.val94 = load i8, ptr %i.eb, align 2, !tbaa !813
  %i.ec = zext i8 %.val94 to i32
  %i.ed = zext nneg i8 %.sroa.speculated to i32   ; 3 uses
  %i.ee = sub nsw i32 %i.ec, %i.ed
  %.not86 = icmp sle i32 %i.ea, %i.ee
  %narrow164 = add nuw nsw i8 %.sroa.speculated, %.val112
  %i.ef = icmp samesign ult i8 %narrow164, 61
  %or.cond161 = select i1 %.not86, i1 true, i1 %i.ef
  br i1 %or.cond161, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 12 ; 8 uses
  %.not1.i.i120 = icmp eq i8 %.val112, 0
  br i1 %.not1.i.i120, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.eh = zext nneg i8 %.val112 to i64            ; 2 uses
  %i.ei = zext nneg i8 %.sroa.speculated to i64
  %.idx.i.i121 = shl nuw nsw i64 %i.eh, 2         ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = getelementptr [4 x i8], ptr %i.ej, i64 %i.eh ; 16 uses
  %i.el = getelementptr i8, ptr %i.eg, i64 %.idx.i.i121 ; 16 uses
  %i.em = add nsw i64 %.idx.i.i121, -4            ; 2 uses
  %i.en = lshr exact i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check194 = icmp ult i64 %i.em, 28
  br i1 %min.iters.check194, label %.lr.ph.i.i122.preheader, label %vector.ph195

vector.ph195:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec196 = and i64 %i.eo, 9223372036854775800  ; 8 uses
  %i.ep = mul i64 %n.vec196, -4                   ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ek, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.el, i64 %i.ep
  %i.es = getelementptr inbounds i8, ptr %i.el, i64 -16
  %i.et = getelementptr inbounds i8, ptr %i.el, i64 -32
  %wide.load201 = load <4 x i32>, ptr %i.es, align 4, !tbaa !2497
  %wide.load202 = load <4 x i32>, ptr %i.et, align 4, !tbaa !2497
  %i.eu = getelementptr inbounds i8, ptr %i.ek, i64 -16
  %i.ev = getelementptr inbounds i8, ptr %i.ek, i64 -32
  store <4 x i32> %wide.load201, ptr %i.eu, align 4, !tbaa !2497
  store <4 x i32> %wide.load202, ptr %i.ev, align 4, !tbaa !2497
  %i.ew = icmp eq i64 %n.vec196, 8
  br i1 %i.ew, label %middle.block204, label %vector.body197.1

vector.body197.1:                                 ; preds = %vector.ph195
  %i.ex = getelementptr i8, ptr %i.el, i64 -48
  %i.ey = getelementptr i8, ptr %i.el, i64 -64
  %wide.load201.1 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !2497
  %wide.load202.1 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !2497
  %i.ez = getelementptr i8, ptr %i.ek, i64 -48
  %i.fa = getelementptr i8, ptr %i.ek, i64 -64
  store <4 x i32> %wide.load201.1, ptr %i.ez, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.1, ptr %i.fa, align 4, !tbaa !2497
  %i.fb = icmp eq i64 %n.vec196, 16
  br i1 %i.fb, label %middle.block204, label %vector.body197.2

vector.body197.2:                                 ; preds = %vector.body197.1
  %i.fc = getelementptr i8, ptr %i.el, i64 -80
  %i.fd = getelementptr i8, ptr %i.el, i64 -96
  %wide.load201.2 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !2497
  %wide.load202.2 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !2497
  %i.fe = getelementptr i8, ptr %i.ek, i64 -80
  %i.ff = getelementptr i8, ptr %i.ek, i64 -96
  store <4 x i32> %wide.load201.2, ptr %i.fe, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.2, ptr %i.ff, align 4, !tbaa !2497
  %i.fg = icmp eq i64 %n.vec196, 24
  br i1 %i.fg, label %middle.block204, label %vector.body197.3

vector.body197.3:                                 ; preds = %vector.body197.2
  %i.fh = getelementptr i8, ptr %i.el, i64 -112
  %i.fi = getelementptr i8, ptr %i.el, i64 -128
  %wide.load201.3 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !2497
  %wide.load202.3 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !2497
  %i.fj = getelementptr i8, ptr %i.ek, i64 -112
  %i.fk = getelementptr i8, ptr %i.ek, i64 -128
  store <4 x i32> %wide.load201.3, ptr %i.fj, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.3, ptr %i.fk, align 4, !tbaa !2497
  %i.fl = icmp eq i64 %n.vec196, 32
  br i1 %i.fl, label %middle.block204, label %vector.body197.4

vector.body197.4:                                 ; preds = %vector.body197.3
  %i.fm = getelementptr i8, ptr %i.el, i64 -144
  %i.fn = getelementptr i8, ptr %i.el, i64 -160
  %wide.load201.4 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !2497
  %wide.load202.4 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !2497
  %i.fo = getelementptr i8, ptr %i.ek, i64 -144
  %i.fp = getelementptr i8, ptr %i.ek, i64 -160
  store <4 x i32> %wide.load201.4, ptr %i.fo, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.4, ptr %i.fp, align 4, !tbaa !2497
  %i.fq = icmp eq i64 %n.vec196, 40
  br i1 %i.fq, label %middle.block204, label %vector.body197.5

vector.body197.5:                                 ; preds = %vector.body197.4
  %i.fr = getelementptr i8, ptr %i.el, i64 -176
  %i.fs = getelementptr i8, ptr %i.el, i64 -192
  %wide.load201.5 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !2497
  %wide.load202.5 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !2497
  %i.ft = getelementptr i8, ptr %i.ek, i64 -176
  %i.fu = getelementptr i8, ptr %i.ek, i64 -192
  store <4 x i32> %wide.load201.5, ptr %i.ft, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.5, ptr %i.fu, align 4, !tbaa !2497
  %i.fv = icmp eq i64 %n.vec196, 48
  br i1 %i.fv, label %middle.block204, label %vector.body197.6

vector.body197.6:                                 ; preds = %vector.body197.5
  %i.fw = getelementptr i8, ptr %i.el, i64 -208
  %i.fx = getelementptr i8, ptr %i.el, i64 -224
  %wide.load201.6 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !2497
  %wide.load202.6 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !2497
  %i.fy = getelementptr i8, ptr %i.ek, i64 -208
  %i.fz = getelementptr i8, ptr %i.ek, i64 -224
  store <4 x i32> %wide.load201.6, ptr %i.fy, align 4, !tbaa !2497
  store <4 x i32> %wide.load202.6, ptr %i.fz, align 4, !tbaa !2497
  br label %middle.block204

middle.block204:                                  ; preds = %vector.body197.6, %vector.body197.5, %vector.body197.4, %vector.body197.3, %vector.body197.2, %vector.body197.1, %vector.ph195
  %cmp.n205 = icmp eq i64 %i.eo, %n.vec196
  br i1 %cmp.n205, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i.loopexit, label %.lr.ph.i.i122.preheader

.lr.ph.i.i122.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block204
  %.03.i.i123.ph = phi ptr [ %i.ek, %.lr.ph.preheader.i.i ], [ %i.eq, %middle.block204 ]
  %.0142.i.i.ph = phi ptr [ %i.el, %.lr.ph.preheader.i.i ], [ %i.er, %middle.block204 ]
  br label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122.preheader, %.lr.ph.i.i122
  %.03.i.i123 = phi ptr [ %i.ga, %.lr.ph.i.i122 ], [ %.03.i.i123.ph, %.lr.ph.i.i122.preheader ]
  %.0142.i.i = phi ptr [ %i.gb, %.lr.ph.i.i122 ], [ %.0142.i.i.ph, %.lr.ph.i.i122.preheader ]
  %i.ga = getelementptr inbounds i8, ptr %.03.i.i123, i64 -4 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.0142.i.i, i64 -4 ; 3 uses
  %.val.i.i124 = load i32, ptr %i.gb, align 4, !tbaa !2497
  store i32 %.val.i.i124, ptr %i.ga, align 4, !tbaa !2497
  %.not.i.i125 = icmp eq ptr %i.gb, %i.eg
  br i1 %.not.i.i125, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i.loopexit, label %.lr.ph.i.i122, !llvm.loop !19089

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i.loopexit: ; preds = %.lr.ph.i.i122, %middle.block204
  %.val54.i126.pre = load i8, ptr %i.d, align 8, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i.loopexit, %bb.k
  %.val54.i126 = phi i8 [ %.val54.i126.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i.loopexit ], [ %.val103, %bb.k ]
  %i.gc = add nsw i32 %i.ed, -1                   ; 3 uses
  %i.gd = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.ge = zext i8 %.val54.i126 to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.gd
  %i.gg = getelementptr inbounds nuw i8, ptr %.val105, i64 12 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.ge
  %.val.i59.i = load i32, ptr %i.gh, align 4, !tbaa !2497
  store i32 %.val.i59.i, ptr %i.gf, align 4, !tbaa !2497
  %.val52.i127 = load i8, ptr %i.eb, align 2, !tbaa !813 ; 2 uses
  %i.gi = zext i8 %.val52.i127 to i32             ; 2 uses
  %i.gj = sub nsw i32 %i.gi, %i.gc
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gk ; 5 uses
  %.idx.i60.i = shl nuw nsw i64 %i.gd, 2          ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.idx.i60.i
  %.not1.i61.i = icmp eq i32 %i.gc, 0
  br i1 %.not1.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i133, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i
  %i.go = add nsw i64 %.idx.i60.i, -4             ; 2 uses
  %i.gp = lshr exact i64 %i.go, 2
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check211 = icmp ult i64 %i.go, 140
  br i1 %min.iters.check211, label %.lr.ph.i63.i.preheader225, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph.i63.i.preheader
  %i.gr = tail call i8 @llvm.umax.i8(i8 %i.dz, i8 1)
  %i.gs = shl nuw i8 %i.gr, 2
  %i.gt = zext i8 %i.gs to i64
  %3 = add i64 %i.du, %i.gt
  %i.gu = zext i8 %.val52.i127 to i64
  %i.gv = shl nuw nsw i64 %i.gu, 2
  %i.gw = add i64 %i.gv, %i.c
  %i.gx = sub i64 %3, %i.gw
  %i.gy = add i64 %i.gx, -5
  %diff.check209 = icmp ult i64 %i.gy, 31
  br i1 %diff.check209, label %.lr.ph.i63.i.preheader225, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck208
  %n.vec213 = and i64 %i.gq, 9223372036854775800  ; 3 uses
  %i.gz = shl i64 %n.vec213, 2                    ; 2 uses
  %i.ha = getelementptr i8, ptr %i.eg, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.gm, i64 %i.gz
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.hc = shl i64 %index215, 2                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.eg, i64 %i.hc ; 2 uses
  %next.gep217 = getelementptr i8, ptr %i.gm, i64 %i.hc ; 2 uses
  %i.hd = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <4 x i32>, ptr %next.gep217, align 4, !tbaa !2497
  %wide.load219 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !2497
  %i.he = getelementptr i8, ptr %next.gep216, i64 16
  store <4 x i32> %wide.load218, ptr %next.gep216, align 4, !tbaa !2497
  store <4 x i32> %wide.load219, ptr %i.he, align 4, !tbaa !2497
  %index.next220 = add nuw i64 %index215, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.hf, label %middle.block221, label %vector.body214, !llvm.loop !19090

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.gq, %n.vec213
  br i1 %cmp.n222, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i131, label %.lr.ph.i63.i.preheader225

.lr.ph.i63.i.preheader225:                        ; preds = %vector.memcheck208, %.lr.ph.i63.i.preheader, %middle.block221
  %.03.i64.i.ph = phi ptr [ %i.eg, %vector.memcheck208 ], [ %i.eg, %.lr.ph.i63.i.preheader ], [ %i.ha, %middle.block221 ]
  %.0122.i.i128.ph = phi ptr [ %i.gm, %vector.memcheck208 ], [ %i.gm, %.lr.ph.i63.i.preheader ], [ %i.hb, %middle.block221 ]
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader225, %.lr.ph.i63.i
  %.03.i64.i = phi ptr [ %i.hh, %.lr.ph.i63.i ], [ %.03.i64.i.ph, %.lr.ph.i63.i.preheader225 ] ; 2 uses
  %.0122.i.i128 = phi ptr [ %i.hg, %.lr.ph.i63.i ], [ %.0122.i.i128.ph, %.lr.ph.i63.i.preheader225 ] ; 2 uses
  %.012.val.i.i129 = load i32, ptr %.0122.i.i128, align 4, !tbaa !2497
  store i32 %.012.val.i.i129, ptr %.03.i64.i, align 4, !tbaa !2497
  %i.hg = getelementptr inbounds nuw i8, ptr %.0122.i.i128, i64 4 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.03.i64.i, i64 4
  %.not.i65.i130 = icmp eq ptr %i.hg, %i.gn
  br i1 %.not.i65.i130, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i131, label %.lr.ph.i63.i, !llvm.loop !19091

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i131: ; preds = %.lr.ph.i63.i, %middle.block221
  %.val51.pre.i = load i8, ptr %i.eb, align 2, !tbaa !813
  %.pre.i132 = zext i8 %.val51.pre.i to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i133

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i133: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i131, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i
  %.pre-phi.i134 = phi i32 [ %.pre.i132, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i131 ], [ %i.gi, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i ]
  %.val53.i135 = load i8, ptr %i.d, align 8, !tbaa !813
  %i.hi = zext i8 %.val53.i135 to i64
  %i.hj = sub nsw i32 %.pre-phi.i134, %i.ed
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.hi
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.hk
  %.val.i66.i = load i32, ptr %i.hm, align 4, !tbaa !2497
  store i32 %.val.i66.i, ptr %i.hl, align 4, !tbaa !2497
  %i.hn = getelementptr i8, ptr %i.b, i64 11
  %.val57.i = load i8, ptr %i.hn, align 1, !tbaa !813
  %.not.i67.i = icmp eq i8 %.val57.i, 0
  br i1 %.not.i67.i, label %bb.l, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i133
  %.val50.i137 = load i8, ptr %i.dv, align 1, !tbaa !813 ; 5 uses
  %i.ho = add i8 %.val50.i137, 1                  ; 2 uses
  %.not1.i = icmp eq i8 %i.ho, 0
  br i1 %.not1.i, label %.lr.ph5.i, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %bb.l
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dt, i64 256 ; 6 uses
  %i.hq = zext i8 %i.ho to i64                    ; 2 uses
  %i.hr = and i8 %.val50.i137, 1
  %lcmp.mod230.not.not = icmp eq i8 %i.hr, 0
  br i1 %lcmp.mod230.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i138
  %i.hs = add i8 %.val50.i137, %.sroa.speculated  ; 2 uses
  %i.ht = zext i8 %.val50.i137 to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !2526 ; 3 uses
  %i.hw = zext i8 %i.hs to i64
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hw
  store ptr %i.hv, ptr %i.hx, align 8, !tbaa !2526
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i8 %i.hs, ptr %i.hy, align 1, !tbaa !813
  store ptr %i.dt, ptr %i.hv, align 8, !tbaa !2526
  %indvars.iv.next.i140.prol = add nsw i64 %i.hq, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i138
  %indvars.iv.i139.unr = phi i64 [ %i.hq, %.lr.ph.i138 ], [ %indvars.iv.next.i140.prol, %.prol.loopexit.unr-lcssa ]
  %i.hz = icmp eq i8 %.val50.i137, 0
  br i1 %i.hz, label %.lr.ph5.i, label %.lr.ph.i138.new

.lr.ph5.i:                                        ; preds = %.prol.loopexit, %.lr.ph.i138.new, %bb.l
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dt, i64 256 ; 3 uses
  %i.ic = tail call i8 @llvm.umax.i8(i8 %i.dz, i8 1) ; 2 uses
  %umax = zext nneg i8 %i.ic to i64               ; 2 uses
  %xtraiter232 = and i64 %umax, 1
  %i.id = icmp samesign ult i8 %i.dz, 2
  br i1 %i.id, label %.epil.preheader231, label %.lr.ph5.i.new

.lr.ph5.i.new:                                    ; preds = %.lr.ph5.i
  %unroll_iter235 = and i64 %umax, 62
  %invariant.op = sub i8 1, %.sroa.speculated
  br label %bb.m

.lr.ph.i138.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i138.new
  %indvars.iv.i139 = phi i64 [ %indvars.iv.next.i140.1, %.lr.ph.i138.new ], [ %indvars.iv.i139.unr, %.prol.loopexit ] ; 3 uses
  %i.ie = trunc nuw i64 %indvars.iv.i139 to i8
  %i.if = add i8 %i.ie, -1                        ; 2 uses
  %i.ig = add i8 %i.if, %.sroa.speculated         ; 2 uses
  %i.ih = zext i8 %i.if to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !2526 ; 3 uses
  %i.ik = zext i8 %i.ig to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ik
  store ptr %i.ij, ptr %i.il, align 8, !tbaa !2526
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i8 %i.ig, ptr %i.im, align 1, !tbaa !813
  store ptr %i.dt, ptr %i.ij, align 8, !tbaa !2526
  %i.in = trunc i64 %indvars.iv.i139 to i8
  %i.io = add i8 %i.in, -2                        ; 2 uses
  %i.ip = add i8 %i.io, %.sroa.speculated         ; 2 uses
  %i.iq = zext i8 %i.io to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !2526 ; 3 uses
  %i.it = zext i8 %i.ip to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.it
  store ptr %i.is, ptr %i.iu, align 8, !tbaa !2526
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i8 %i.ip, ptr %i.iv, align 1, !tbaa !813
  store ptr %i.dt, ptr %i.is, align 8, !tbaa !2526
  %indvars.iv.next.i140.1 = add nsw i64 %indvars.iv.i139, -2 ; 2 uses
  %i.iw = and i64 %indvars.iv.next.i140.1, 255
  %.not.i141.1 = icmp eq i64 %i.iw, 0
  br i1 %.not.i141.1, label %.lr.ph5.i, label %.lr.ph.i138.new, !llvm.loop !19092

bb.m:                                             ; preds = %bb.m, %.lr.ph5.i.new
  %indvars.iv7.i = phi i64 [ 1, %.lr.ph5.i.new ], [ %indvars.iv.next8.i.1, %bb.m ] ; 6 uses
  %niter236 = phi i64 [ 0, %.lr.ph5.i.new ], [ %niter236.next.1, %bb.m ]
  %i.ix = add nsw i64 %indvars.iv7.i, -1          ; 2 uses
  %.val49.i = load i8, ptr %i.eb, align 2, !tbaa !813
  %i.iy = trunc nuw i64 %indvars.iv7.i to i8
  %i.iz = sub i8 %i.iy, %.sroa.speculated
  %i.ja = add i8 %i.iz, %.val49.i
  %i.jb = zext i8 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !2526 ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ix
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !2526
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jg = trunc nuw i64 %i.ix to i8
  store i8 %i.jg, ptr %i.jf, align 1, !tbaa !813
  store ptr %i.dt, ptr %i.jd, align 8, !tbaa !2526
  %.val49.i.1 = load i8, ptr %i.eb, align 2, !tbaa !813
  %i.jh = trunc i64 %indvars.iv7.i to i8
  %.reass = add i8 %i.jh, %invariant.op
  %i.ji = add i8 %.reass, %.val49.i.1
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !2526 ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv7.i
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !2526
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = trunc nuw i64 %indvars.iv7.i to i8
  store i8 %i.jo, ptr %i.jn, align 1, !tbaa !813
  store ptr %i.dt, ptr %i.jl, align 8, !tbaa !2526
  %indvars.iv.next8.i.1 = add nuw nsw i64 %indvars.iv7.i, 2 ; 2 uses
  %niter236.next.1 = add nuw i64 %niter236, 2     ; 2 uses
  %niter236.ncmp.1 = icmp eq i64 %niter236.next.1, %unroll_iter235
  br i1 %niter236.ncmp.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !19093

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit, label %.epil.preheader231

.epil.preheader231:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit.loopexit.unr-lcssa, %.lr.ph5.i
  %indvars.iv7.i.epil.init = phi i64 [ 1, %.lr.ph5.i ], [ %indvars.iv.next8.i.1, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod234 = trunc i8 %i.ic to i1
  tail call void @llvm.assume(i1 %lcmp.mod234)
  %i.jp = add nsw i64 %indvars.iv7.i.epil.init, -1 ; 2 uses
  %.val49.i.epil = load i8, ptr %i.eb, align 2, !tbaa !813
  %i.jq = trunc nuw i64 %indvars.iv7.i.epil.init to i8
  %i.jr = sub i8 %i.jq, %.sroa.speculated
  %i.js = add i8 %i.jr, %.val49.i.epil
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !2526 ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.jp
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !2526
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = trunc nuw i64 %i.jp to i8
  store i8 %i.jy, ptr %i.jx, align 1, !tbaa !813
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE23rebalance_right_to_leftEhPS7_PSaIS5_E:bb.a
.preheader1:                                      ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit64
  %.not7 = icmp eq i8 %1, 0
  br i1 %.not7, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.bi = icmp eq i32 %i.l, 0
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.am, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %.val46.epil = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bj = trunc i64 %indvars.iv.epil.init to i8
  %i.bk = add i8 %i.bj, 1
  %i.bl = add i8 %.val46.epil, %i.bk              ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.epil.init
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2612 ; 3 uses
  %i.bo = zext i8 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bo
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !2612
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %i.bl, ptr %i.bq, align 1, !tbaa !813
  store ptr %0, ptr %i.bn, align 8, !tbaa !2612
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.val453 = load i8, ptr %i.ai, align 1, !tbaa !813
  %.not4 = icmp ult i8 %.val453, %1
  br i1 %.not4, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %.val46 = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bs = trunc nuw i64 %indvars.iv.next to i8
  %i.bt = add i8 %.val46, %i.bs                   ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2612 ; 3 uses
  %i.bw = zext i8 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bw
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !2612
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !813
  store ptr %0, ptr %i.bv, align 8, !tbaa !2612
  %.val46.1 = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bz = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.ca = add i8 %.val46.1, %i.bz                 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2612 ; 3 uses
  %i.cd = zext i8 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !2612
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.ca, ptr %i.cf, align 1, !tbaa !813
  store ptr %0, ptr %i.cc, align 8, !tbaa !2612
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !19770

bb.c:                                             ; preds = %.lr.ph6, %bb.c
  %.05 = phi i8 [ 0, %.lr.ph6 ], [ %i.cn, %bb.c ] ; 4 uses
  %i.cg = add i8 %.05, %1
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2612 ; 3 uses
  %i.ck = zext i8 %.05 to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2612
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %.05, ptr %i.cm, align 1, !tbaa !813
  store ptr %2, ptr %i.cj, align 8, !tbaa !2612
  %i.cn = add i8 %.05, 1                          ; 2 uses
  %i.co = zext i8 %i.cn to i32
  %.val45 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.cp = zext i8 %.val45 to i32
  %i.cq = sub nsw i32 %i.cp, %i.k
  %.not = icmp slt i32 %i.cq, %i.co
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !19771

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit64
  %.val44 = load i8, ptr %i.c, align 2, !tbaa !813
  %i.cr = add i8 %.val44, %1
  store i8 %i.cr, ptr %i.c, align 2, !tbaa !813
  %.val = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.cs = sub i8 %.val, %1
  store i8 %i.cs, ptr %i.ai, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE23rebalance_left_to_rightEhPS7_PSaIS5_E(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val58 = load i8, ptr %i.c, align 1, !tbaa !813 ; 2 uses
  %i.d = zext i8 %1 to i32                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not1.i = icmp eq i8 %.val58, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE19transfer_n_backwardEmmmPS7_PSaIS5_E.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = zext i8 %.val58 to i64                   ; 2 uses
  %i.g = zext i8 %1 to i64
  %.idx.i = shl nuw nsw i64 %i.f, 2               ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.j = getelementptr i8, ptr %i.e, i64 %.idx.i  ; 3 uses
  %i.k = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.l = lshr exact i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.m, 9223372036854775800      ; 3 uses
  %i.n = mul i64 %n.vec, -4                       ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  %i.p = getelementptr i8, ptr %i.j, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.j, i64 %i.q ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %next.gep13, i64 -16
  %i.s = getelementptr inbounds i8, ptr %next.gep13, i64 -32
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !2611
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4, !tbaa !2611
  %i.t = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !2611
  store <4 x i32> %wide.load14, ptr %i.u, align 4, !tbaa !2611
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !19772

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE19transfer_n_backwardEmmmPS7_PSaIS5_E.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.03.i.ph = phi ptr [ %i.i, %.lr.ph.preheader.i ], [ %i.o, %middle.block ]
  %.0142.i.ph = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.03.i.ph, %.lr.ph.i.preheader ]
  %.0142.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.0142.i.ph, %.lr.ph.i.preheader ]
  %i.w = getelementptr inbounds i8, ptr %.03.i, i64 -4 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.0142.i, i64 -4 ; 3 uses
  %.val.i = load i32, ptr %i.x, align 4, !tbaa !2611
  store i32 %.val.i, ptr %i.w, align 4, !tbaa !2611
  %.not.i = icmp eq ptr %i.x, %i.e
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE19transfer_n_backwardEmmmPS7_PSaIS5_E.exit, label %.lr.ph.i, !llvm.loop !19773

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE19transfer_n_backwardEmmmPS7_PSaIS5_E.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.y = add nsw i32 %i.d, -1                     ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val54 = load i8, ptr %i.aa, align 1, !tbaa !813
  %i.ab = zext i8 %.val54 to i64
  %.val56 = load ptr, ptr %0, align 8, !tbaa !2612
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %.val56, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  %.val.i59 = load i32, ptr %i.ae, align 4, !tbaa !2611
  store i32 %.val.i59, ptr %i.ac, align 4, !tbaa !2611
  %i.af = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %.val52 = load i8, ptr %i.af, align 2, !tbaa !813 ; 2 uses
  %i.ag = zext i8 %.val52 to i32                  ; 2 uses
  %i.ah = sub nsw i32 %i.ag, %i.y
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai ; 5 uses
  %.idx.i60 = shl nuw nsw i64 %i.z, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i60
  %.not1.i61 = icmp eq i32 %i.y, 0
  br i1 %.not1.i61, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE19transfer_n_backwardEmmmPS7_PSaIS5_E.exit
  %i.am = zext i8 %1 to i64
  %i.an = add nuw nsw i64 %i.am, 4611686018427387902
  %i.ao = and i64 %i.an, 4611686018427387903      ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check17 = icmp samesign ult i64 %i.ao, 31
  br i1 %min.iters.check17, label %.lr.ph.i63.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i63.preheader
  %3 = zext i8 %1 to i64
  %i.aq = shl nuw nsw i64 %3, 2
  %4 = add i64 %i.aq, %i.b
  %i.ar = zext i8 %.val52 to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = add i64 %i.as, %i.a
  %i.au = sub i64 %4, %i.at
  %i.av = add i64 %i.au, -5
  %diff.check = icmp ult i64 %i.av, 31
  br i1 %diff.check, label %.lr.ph.i63.preheader31, label %vector.ph18

vector.ph18:                                      ; preds = %vector.memcheck
  %n.vec19 = and i64 %i.ap, 9223372036854775800   ; 3 uses
  %i.aw = shl i64 %n.vec19, 2                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.e, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.aw
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph18
  %index21 = phi i64 [ 0, %vector.ph18 ], [ %index.next26, %vector.body20 ] ; 2 uses
  %i.az = shl i64 %index21, 2                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.e, i64 %i.az ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load24 = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !2611
  %wide.load25 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !2611
  %i.bb = getelementptr i8, ptr %next.gep22, i64 16
  store <4 x i32> %wide.load24, ptr %next.gep22, align 4, !tbaa !2611
  store <4 x i32> %wide.load25, ptr %i.bb, align 4, !tbaa !2611
  %index.next26 = add nuw i64 %index21, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next26, %n.vec19
  br i1 %i.bc, label %middle.block27, label %vector.body20, !llvm.loop !19774

middle.block27:                                   ; preds = %vector.body20
  %cmp.n28 = icmp eq i64 %i.ap, %n.vec19
  br i1 %cmp.n28, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.loopexit, label %.lr.ph.i63.preheader31

.lr.ph.i63.preheader31:                           ; preds = %vector.memcheck, %.lr.ph.i63.preheader, %middle.block27
  %.03.i64.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.i63.preheader ], [ %i.ax, %middle.block27 ]
  %.0122.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i63.preheader ], [ %i.ay, %middle.block27 ]
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader31, %.lr.ph.i63
  %.03.i64 = phi ptr [ %i.be, %.lr.ph.i63 ], [ %.03.i64.ph, %.lr.ph.i63.preheader31 ] ; 2 uses
  %.0122.i = phi ptr [ %i.bd, %.lr.ph.i63 ], [ %.0122.i.ph, %.lr.ph.i63.preheader31 ] ; 2 uses
  %.012.val.i = load i32, ptr %.0122.i, align 4, !tbaa !2611
  store i32 %.012.val.i, ptr %.03.i64, align 4, !tbaa !2611
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i64, i64 4
  %.not.i65 = icmp eq ptr %i.bd, %i.al
  br i1 %.not.i65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.loopexit, label %.lr.ph.i63, !llvm.loop !19775

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.loopexit: ; preds = %.lr.ph.i63, %middle.block27
  %.val51.pre = load i8, ptr %i.af, align 2, !tbaa !813
  %.pre = zext i8 %.val51.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE19transfer_n_backwardEmmmPS7_PSaIS5_E.exit
  %.pre-phi = phi i32 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.loopexit ], [ %i.ag, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE19transfer_n_backwardEmmmPS7_PSaIS5_E.exit ]
  %.val53 = load i8, ptr %i.aa, align 8, !tbaa !813
  %i.bf = zext i8 %.val53 to i64
  %i.bg = sub nsw i32 %.pre-phi, %i.d
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bf
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bh
  %.val.i66 = load i32, ptr %i.bj, align 4, !tbaa !2611
  store i32 %.val.i66, ptr %i.bi, align 4, !tbaa !2611
  %i.bk = getelementptr i8, ptr %0, i64 11
  %.val57 = load i8, ptr %i.bk, align 1, !tbaa !813
  %.not.i67 = icmp eq i8 %.val57, 0
  br i1 %.not.i67, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit
  %.val50 = load i8, ptr %i.c, align 1, !tbaa !813 ; 5 uses
  %i.bl = add i8 %.val50, 1                       ; 2 uses
  %.not1 = icmp eq i8 %i.bl, 0
  br i1 %.not1, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.bn = zext i8 %i.bl to i64                    ; 2 uses
  %i.bo = and i8 %.val50, 1
  %lcmp.mod.not.not = icmp eq i8 %i.bo, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.bp = add i8 %.val50, %1                      ; 2 uses
  %i.bq = zext i8 %.val50 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2612 ; 3 uses
  %i.bt = zext i8 %i.bp to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bt
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !2612
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !813
  store ptr %2, ptr %i.bs, align 8, !tbaa !2612
  %indvars.iv.next.prol = add nsw i64 %i.bn, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bn, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.bw = icmp eq i8 %.val50, 0
  br i1 %i.bw, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not463 = icmp eq i8 %1, 0
  br i1 %.not463, label %.loopexit, label %.lr.ph5

.lr.ph5:                                          ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bz = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.bz, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.ca = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter32 = and i64 %i.ca, 1
  %i.cb = icmp ult i8 %i.bz, 3
  br i1 %i.cb, label %.epil.preheader, label %.lr.ph5.new

.lr.ph5.new:                                      ; preds = %.lr.ph5
  %unroll_iter = and i64 %i.ca, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.cc = trunc nuw i64 %indvars.iv to i8
  %i.cd = add i8 %i.cc, -1                        ; 2 uses
  %i.ce = add i8 %i.cd, %1                        ; 2 uses
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2612 ; 3 uses
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !2612
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !813
  store ptr %2, ptr %i.ch, align 8, !tbaa !2612
  %i.cl = trunc i64 %indvars.iv to i8
  %i.cm = add i8 %i.cl, -2                        ; 2 uses
  %i.cn = add i8 %i.cm, %1                        ; 2 uses
  %i.co = zext i8 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !2612 ; 3 uses
  %i.cr = zext i8 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cr
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !2612
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i8 %i.cn, ptr %i.ct, align 1, !tbaa !813
  store ptr %2, ptr %i.cq, align 8, !tbaa !2612
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.cu = and i64 %indvars.iv.next.1, 255
  %.not.1 = icmp eq i64 %i.cu, 0
  br i1 %.not.1, label %.preheader, label %.lr.ph.new, !llvm.loop !19776

bb.c:                                             ; preds = %bb.c, %.lr.ph5.new
  %indvars.iv7 = phi i64 [ 1, %.lr.ph5.new ], [ %indvars.iv.next8.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph5.new ], [ %niter.next.1, %bb.c ]
  %i.cv = add nsw i64 %indvars.iv7, -1            ; 2 uses
  %.val49 = load i8, ptr %i.af, align 2, !tbaa !813
  %i.cw = trunc nuw i64 %indvars.iv7 to i8
  %i.cx = sub i8 %i.cw, %1
  %i.cy = add i8 %i.cx, %.val49
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !2612 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cv
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !2612
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %i.cv to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !813
  store ptr %2, ptr %i.db, align 8, !tbaa !2612
  %.val49.1 = load i8, ptr %i.af, align 2, !tbaa !813
  %i.df = trunc i64 %indvars.iv7 to i8
  %.reass = add i8 %i.df, %invariant.op
  %i.dg = add i8 %.reass, %.val49.1
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !2612 ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv7
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !2612
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = trunc nuw i64 %indvars.iv7 to i8
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !813
  store ptr %2, ptr %i.dj, align 8, !tbaa !2612
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv7, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !19777

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph5
  %indvars.iv7.epil.init = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next8.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i64 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.dn = add nsw i64 %indvars.iv7.epil.init, -1  ; 2 uses
  %.val49.epil = load i8, ptr %i.af, align 2, !tbaa !813
  %i.do = trunc nuw i64 %indvars.iv7.epil.init to i8
  %i.dp = sub i8 %i.do, %1
  %i.dq = add i8 %i.dp, %.val49.epil
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2612 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.dn
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_:bb.a
.preheader1:                                      ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit64
  %.not7 = icmp eq i8 %1, 0
  br i1 %.not7, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.bi = icmp eq i32 %i.l, 0
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.am, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %.val46.epil = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bj = trunc i64 %indvars.iv.epil.init to i8
  %i.bk = add i8 %i.bj, 1
  %i.bl = add i8 %.val46.epil, %i.bk              ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.epil.init
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2635 ; 3 uses
  %i.bo = zext i8 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bo
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !2635
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %i.bl, ptr %i.bq, align 1, !tbaa !813
  store ptr %0, ptr %i.bn, align 8, !tbaa !2635
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.val453 = load i8, ptr %i.ai, align 1, !tbaa !813
  %.not4 = icmp ult i8 %.val453, %1
  br i1 %.not4, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %.val46 = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bs = trunc nuw i64 %indvars.iv.next to i8
  %i.bt = add i8 %.val46, %i.bs                   ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2635 ; 3 uses
  %i.bw = zext i8 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bw
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !2635
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !813
  store ptr %0, ptr %i.bv, align 8, !tbaa !2635
  %.val46.1 = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bz = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.ca = add i8 %.val46.1, %i.bz                 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2635 ; 3 uses
  %i.cd = zext i8 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !2635
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.ca, ptr %i.cf, align 1, !tbaa !813
  store ptr %0, ptr %i.cc, align 8, !tbaa !2635
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !19933

bb.c:                                             ; preds = %.lr.ph6, %bb.c
  %.05 = phi i8 [ 0, %.lr.ph6 ], [ %i.cn, %bb.c ] ; 4 uses
  %i.cg = add i8 %.05, %1
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2635 ; 3 uses
  %i.ck = zext i8 %.05 to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2635
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %.05, ptr %i.cm, align 1, !tbaa !813
  store ptr %2, ptr %i.cj, align 8, !tbaa !2635
  %i.cn = add i8 %.05, 1                          ; 2 uses
  %i.co = zext i8 %i.cn to i32
  %.val45 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.cp = zext i8 %.val45 to i32
  %i.cq = sub nsw i32 %i.cp, %i.k
  %.not = icmp slt i32 %i.cq, %i.co
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !19934

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit64
  %.val44 = load i8, ptr %i.c, align 2, !tbaa !813
  %i.cr = add i8 %.val44, %1
  store i8 %i.cr, ptr %i.c, align 2, !tbaa !813
  %.val = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.cs = sub i8 %.val, %1
  store i8 %i.cs, ptr %i.ai, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val58 = load i8, ptr %i.c, align 1, !tbaa !813 ; 2 uses
  %i.d = zext i8 %1 to i32                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not1.i = icmp eq i8 %.val58, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = zext i8 %.val58 to i64                   ; 2 uses
  %i.g = zext i8 %1 to i64
  %.idx.i = shl nuw nsw i64 %i.f, 2               ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.j = getelementptr i8, ptr %i.e, i64 %.idx.i  ; 3 uses
  %i.k = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.l = lshr exact i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.m, 9223372036854775800      ; 3 uses
  %i.n = mul i64 %n.vec, -4                       ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  %i.p = getelementptr i8, ptr %i.j, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.j, i64 %i.q ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %next.gep13, i64 -16
  %i.s = getelementptr inbounds i8, ptr %next.gep13, i64 -32
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !2611
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4, !tbaa !2611
  %i.t = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !2611
  store <4 x i32> %wide.load14, ptr %i.u, align 4, !tbaa !2611
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !19935

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.03.i.ph = phi ptr [ %i.i, %.lr.ph.preheader.i ], [ %i.o, %middle.block ]
  %.0142.i.ph = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.03.i.ph, %.lr.ph.i.preheader ]
  %.0142.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.0142.i.ph, %.lr.ph.i.preheader ]
  %i.w = getelementptr inbounds i8, ptr %.03.i, i64 -4 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.0142.i, i64 -4 ; 3 uses
  %.val.i = load i32, ptr %i.x, align 4, !tbaa !2611
  store i32 %.val.i, ptr %i.w, align 4, !tbaa !2611
  %.not.i = icmp eq ptr %i.x, %i.e
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit, label %.lr.ph.i, !llvm.loop !19936

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.y = add nsw i32 %i.d, -1                     ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val54 = load i8, ptr %i.aa, align 1, !tbaa !813
  %i.ab = zext i8 %.val54 to i64
  %.val56 = load ptr, ptr %0, align 8, !tbaa !2635
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %.val56, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  %.val.i59 = load i32, ptr %i.ae, align 4, !tbaa !2611
  store i32 %.val.i59, ptr %i.ac, align 4, !tbaa !2611
  %i.af = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %.val52 = load i8, ptr %i.af, align 2, !tbaa !813 ; 2 uses
  %i.ag = zext i8 %.val52 to i32                  ; 2 uses
  %i.ah = sub nsw i32 %i.ag, %i.y
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai ; 5 uses
  %.idx.i60 = shl nuw nsw i64 %i.z, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i60
  %.not1.i61 = icmp eq i32 %i.y, 0
  br i1 %.not1.i61, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit
  %i.am = zext i8 %1 to i64
  %i.an = add nuw nsw i64 %i.am, 4611686018427387902
  %i.ao = and i64 %i.an, 4611686018427387903      ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check17 = icmp samesign ult i64 %i.ao, 31
  br i1 %min.iters.check17, label %.lr.ph.i63.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i63.preheader
  %3 = zext i8 %1 to i64
  %i.aq = shl nuw nsw i64 %3, 2
  %4 = add i64 %i.aq, %i.b
  %i.ar = zext i8 %.val52 to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = add i64 %i.as, %i.a
  %i.au = sub i64 %4, %i.at
  %i.av = add i64 %i.au, -5
  %diff.check = icmp ult i64 %i.av, 31
  br i1 %diff.check, label %.lr.ph.i63.preheader31, label %vector.ph18

vector.ph18:                                      ; preds = %vector.memcheck
  %n.vec19 = and i64 %i.ap, 9223372036854775800   ; 3 uses
  %i.aw = shl i64 %n.vec19, 2                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.e, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.aw
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph18
  %index21 = phi i64 [ 0, %vector.ph18 ], [ %index.next26, %vector.body20 ] ; 2 uses
  %i.az = shl i64 %index21, 2                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.e, i64 %i.az ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load24 = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !2611
  %wide.load25 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !2611
  %i.bb = getelementptr i8, ptr %next.gep22, i64 16
  store <4 x i32> %wide.load24, ptr %next.gep22, align 4, !tbaa !2611
  store <4 x i32> %wide.load25, ptr %i.bb, align 4, !tbaa !2611
  %index.next26 = add nuw i64 %index21, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next26, %n.vec19
  br i1 %i.bc, label %middle.block27, label %vector.body20, !llvm.loop !19937

middle.block27:                                   ; preds = %vector.body20
  %cmp.n28 = icmp eq i64 %i.ap, %n.vec19
  br i1 %cmp.n28, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit, label %.lr.ph.i63.preheader31

.lr.ph.i63.preheader31:                           ; preds = %vector.memcheck, %.lr.ph.i63.preheader, %middle.block27
  %.03.i64.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.i63.preheader ], [ %i.ax, %middle.block27 ]
  %.0122.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i63.preheader ], [ %i.ay, %middle.block27 ]
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader31, %.lr.ph.i63
  %.03.i64 = phi ptr [ %i.be, %.lr.ph.i63 ], [ %.03.i64.ph, %.lr.ph.i63.preheader31 ] ; 2 uses
  %.0122.i = phi ptr [ %i.bd, %.lr.ph.i63 ], [ %.0122.i.ph, %.lr.ph.i63.preheader31 ] ; 2 uses
  %.012.val.i = load i32, ptr %.0122.i, align 4, !tbaa !2611
  store i32 %.012.val.i, ptr %.03.i64, align 4, !tbaa !2611
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i64, i64 4
  %.not.i65 = icmp eq ptr %i.bd, %i.al
  br i1 %.not.i65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit, label %.lr.ph.i63, !llvm.loop !19938

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit: ; preds = %.lr.ph.i63, %middle.block27
  %.val51.pre = load i8, ptr %i.af, align 2, !tbaa !813
  %.pre = zext i8 %.val51.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit
  %.pre-phi = phi i32 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit ], [ %i.ag, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit ]
  %.val53 = load i8, ptr %i.aa, align 8, !tbaa !813
  %i.bf = zext i8 %.val53 to i64
  %i.bg = sub nsw i32 %.pre-phi, %i.d
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bf
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bh
  %.val.i66 = load i32, ptr %i.bj, align 4, !tbaa !2611
  store i32 %.val.i66, ptr %i.bi, align 4, !tbaa !2611
  %i.bk = getelementptr i8, ptr %0, i64 11
  %.val57 = load i8, ptr %i.bk, align 1, !tbaa !813
  %.not.i67 = icmp eq i8 %.val57, 0
  br i1 %.not.i67, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit
  %.val50 = load i8, ptr %i.c, align 1, !tbaa !813 ; 5 uses
  %i.bl = add i8 %.val50, 1                       ; 2 uses
  %.not1 = icmp eq i8 %i.bl, 0
  br i1 %.not1, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.bn = zext i8 %i.bl to i64                    ; 2 uses
  %i.bo = and i8 %.val50, 1
  %lcmp.mod.not.not = icmp eq i8 %i.bo, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.bp = add i8 %.val50, %1                      ; 2 uses
  %i.bq = zext i8 %.val50 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2635 ; 3 uses
  %i.bt = zext i8 %i.bp to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bt
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !2635
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !813
  store ptr %2, ptr %i.bs, align 8, !tbaa !2635
  %indvars.iv.next.prol = add nsw i64 %i.bn, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bn, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.bw = icmp eq i8 %.val50, 0
  br i1 %i.bw, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not463 = icmp eq i8 %1, 0
  br i1 %.not463, label %.loopexit, label %.lr.ph5

.lr.ph5:                                          ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bz = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.bz, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.ca = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter32 = and i64 %i.ca, 1
  %i.cb = icmp ult i8 %i.bz, 3
  br i1 %i.cb, label %.epil.preheader, label %.lr.ph5.new

.lr.ph5.new:                                      ; preds = %.lr.ph5
  %unroll_iter = and i64 %i.ca, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.cc = trunc nuw i64 %indvars.iv to i8
  %i.cd = add i8 %i.cc, -1                        ; 2 uses
  %i.ce = add i8 %i.cd, %1                        ; 2 uses
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2635 ; 3 uses
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !2635
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !813
  store ptr %2, ptr %i.ch, align 8, !tbaa !2635
  %i.cl = trunc i64 %indvars.iv to i8
  %i.cm = add i8 %i.cl, -2                        ; 2 uses
  %i.cn = add i8 %i.cm, %1                        ; 2 uses
  %i.co = zext i8 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !2635 ; 3 uses
  %i.cr = zext i8 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cr
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !2635
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i8 %i.cn, ptr %i.ct, align 1, !tbaa !813
  store ptr %2, ptr %i.cq, align 8, !tbaa !2635
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.cu = and i64 %indvars.iv.next.1, 255
  %.not.1 = icmp eq i64 %i.cu, 0
  br i1 %.not.1, label %.preheader, label %.lr.ph.new, !llvm.loop !19939

bb.c:                                             ; preds = %bb.c, %.lr.ph5.new
  %indvars.iv7 = phi i64 [ 1, %.lr.ph5.new ], [ %indvars.iv.next8.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph5.new ], [ %niter.next.1, %bb.c ]
  %i.cv = add nsw i64 %indvars.iv7, -1            ; 2 uses
  %.val49 = load i8, ptr %i.af, align 2, !tbaa !813
  %i.cw = trunc nuw i64 %indvars.iv7 to i8
  %i.cx = sub i8 %i.cw, %1
  %i.cy = add i8 %i.cx, %.val49
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !2635 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cv
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !2635
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %i.cv to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !813
  store ptr %2, ptr %i.db, align 8, !tbaa !2635
  %.val49.1 = load i8, ptr %i.af, align 2, !tbaa !813
  %i.df = trunc i64 %indvars.iv7 to i8
  %.reass = add i8 %i.df, %invariant.op
  %i.dg = add i8 %.reass, %.val49.1
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !2635 ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv7
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !2635
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = trunc nuw i64 %indvars.iv7 to i8
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !813
  store ptr %2, ptr %i.dj, align 8, !tbaa !2635
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv7, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !19940

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph5
  %indvars.iv7.epil.init = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next8.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i64 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.dn = add nsw i64 %indvars.iv7.epil.init, -1  ; 2 uses
  %.val49.epil = load i8, ptr %i.af, align 2, !tbaa !813
  %i.do = trunc nuw i64 %indvars.iv7.epil.init to i8
  %i.dp = sub i8 %i.do, %1
  %i.dq = add i8 %i.dp, %.val49.epil
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2635 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.dn
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERKhPS9_EE:bb.a
  store ptr %i.bt, ptr %0, align 8, !tbaa !2776
  %.pre = load ptr, ptr %1, align 8, !tbaa !2776
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.by = phi ptr [ %i.br, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 2 uses
  %.083 = phi ptr [ %i.bs, %bb.m ], [ %i.c, %bb.l ], [ %i.bt, %bb.n ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !813
  %.not114 = icmp eq i8 %i.ca, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !813
  %i.cd = add i8 %i.cc, 1                         ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not114, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #35 ; 9 uses
  store ptr %.083, ptr %i.cf, align 8, !tbaa !2776
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cd, ptr %i.cg, align 8, !tbaa !813
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 9
  store i8 0, ptr %i.ch, align 1, !tbaa !813
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 10
  store i8 0, ptr %i.ci, align 2, !tbaa !813
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 11
  store i8 -12, ptr %i.cj, align 1, !tbaa !813
  %i.ck = load ptr, ptr %1, align 8, !tbaa !2776
  %i.cl = load i32, ptr %i.a, align 8, !tbaa !802
  call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE5splitEiPS5_PSaIhE(ptr noundef nonnull align 1 dereferenceable(1) %i.ck, i32 noundef %i.cl, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ce)
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !2776
  %i.cn = load ptr, ptr %1, align 8, !tbaa !2776
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !2776
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cp = call noalias noundef nonnull dereferenceable(2216) ptr @_Znwm(i64 noundef 2216) #35 ; 7 uses
  store ptr %.083, ptr %i.cp, align 8, !tbaa !2776
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i8 %i.cd, ptr %i.cq, align 8, !tbaa !813
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  store i8 0, ptr %i.cr, align 1, !tbaa !813
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  store i8 0, ptr %i.cs, align 2, !tbaa !813
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 11
  store i8 0, ptr %i.ct, align 1, !tbaa !813
  %i.cu = load ptr, ptr %1, align 8, !tbaa !2776
  %i.cv = load i32, ptr %i.a, align 8, !tbaa !802
  call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE5splitEiPS5_PSaIhE(ptr noundef nonnull align 1 dereferenceable(1) %i.cu, i32 noundef %i.cv, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.ce)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.cf, %bb.q ], [ %i.cf, %bb.p ], [ %i.cp, %bb.r ]
  %i.cw = load i32, ptr %i.a, align 8, !tbaa !802 ; 2 uses
  %i.cx = load ptr, ptr %1, align 8, !tbaa !2776
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 10
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !813
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %i.db = icmp sgt i32 %i.cw, %i.da
  br i1 %i.db, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.dc = xor i32 %i.da, -1
  %i.dd = add nsw i32 %i.cw, %i.dc
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink124 = phi i32 [ %i.bn, %bb.k ], [ %i.ag, %bb.f ], [ %i.dd, %bb.t ]
  %.sink = phi ptr [ %i.ao, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink124, ptr %i.a, align 8, !tbaa !802
  store ptr %.sink, ptr %1, align 8, !tbaa !2776
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE16clear_and_deleteEPS5_PSaIhE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !813   ; 2 uses
  %.not57 = icmp eq i8 %i.b, 0
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 19
  %i.e = and i64 %i.d, 504
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !813
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !2776
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04963 = phi ptr [ %i.k, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.04963, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2776 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.m = load i8, ptr %i.l, align 1, !tbaa !813
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !20746

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i8, ptr %i.n, align 1, !tbaa !813
  %i.p = zext i8 %i.o to i64
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !2776
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.p, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.q, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.147
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2776 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !813   ; 2 uses
  %.not.i55 = icmp eq i8 %i.v, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.e

.lr.ph66:                                         ; preds = %bb.d, %.lr.ph66
  %.15065 = phi ptr [ %i.x, %.lr.ph66 ], [ %i.t, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.15065, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2776 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !813   ; 2 uses
  %.not.i56 = icmp eq i8 %i.z, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !20747

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !813
  %i.ac = zext i8 %i.ab to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !2776
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.d
  %i.ae = phi i8 [ %i.z, %._crit_edge67 ], [ %i.v, %bb.d ]
  %.251 = phi ptr [ %i.x, %._crit_edge67 ], [ %i.t, %bb.d ]
  %.248 = phi i64 [ %i.ac, %._crit_edge67 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.ad, %._crit_edge67 ], [ %.1, %bb.d ] ; 3 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 19
  %i.ah = and i64 %i.ag, 504
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ah) #36
  %i.ai = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.ak = zext i8 %i.aj to i64
  %.not.not = icmp samesign ult i64 %.248, %i.ak
  br i1 %.not.not, label %.backedge, label %.preheader58

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.ar, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.an, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !20748

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.an, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.am = load i8, ptr %i.al, align 1, !tbaa !813 ; 2 uses
  %i.an = load ptr, ptr %.3, align 8, !tbaa !2776 ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 2216) #36
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !813
  %.not = icmp ult i8 %i.am, %i.aq
  br i1 %.not, label %bb.g, label %.preheader58, !llvm.loop !20749

bb.g:                                             ; preds = %bb.f
  %i.ar = zext i8 %i.am to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 2216, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #36
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE23rebalance_right_to_leftEhPS5_PSaIhE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !813
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !2776   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1
  store i8 %i.n, ptr %i.k, align 1
  %i.o = zext i8 %1 to i32                        ; 3 uses
  %i.p = add nsw i32 %i.o, -1                     ; 6 uses
  %i.q = sext i32 %i.p to i64                     ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q ; 2 uses
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i32 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %i.b, %i.e
  %i.u = sub i64 %i.t, %i.a
  %diff.check = icmp ult i64 %i.u, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check61 = icmp ult i32 %i.p, 32
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.q, -32                      ; 5 uses
  %i.v = getelementptr i8, ptr %i.k, i64 %n.vec
  %i.w = getelementptr i8, ptr %i.r, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.r, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.y = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep62, align 1
  %wide.load63 = load <16 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 17
  store <16 x i8> %wide.load, ptr %i.x, align 1
  store <16 x i8> %wide.load63, ptr %i.z, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !20750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ab = and i32 %i.p, 24
  %min.epilog.iters.check = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !2132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.q, -8                     ; 4 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 %n.vec65
  %i.ad = getelementptr i8, ptr %i.r, i64 %n.vec65
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next70, %vec.epilog.vector.body ] ; 3 uses
  %next.gep67 = getelementptr i8, ptr %i.k, i64 %index66
  %next.gep68 = getelementptr i8, ptr %i.r, i64 %index66
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep67, i64 1
  %wide.load69 = load <8 x i8>, ptr %next.gep68, align 1
  store <8 x i8> %wide.load69, ptr %i.ae, align 1
  %index.next70 = add nuw i64 %index66, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next70, %n.vec65
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20751

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n71 = icmp eq i64 %n.vec65, %i.q
  br i1 %cmp.n71, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.pn.ph = phi ptr [ %i.k, %iter.check ], [ %i.k, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader ]
  %.01214.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.01214.i, align 1
  store i8 %i.ag, ptr %.015.i, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %.lr.ph.i, !llvm.loop !20752

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit: ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !2776
  %.pre59 = load i8, ptr %i.f, align 8, !tbaa !813
  %.pre60 = zext i8 %.pre59 to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre60, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit ], [ %i.h, %bb.a ]
  %i.ai = phi ptr [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit ], [ %i.i, %bb.a ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi
  %i.al = load i8, ptr %i.s, align 1
  store i8 %i.al, ptr %i.ak, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !813 ; 2 uses
  %i.ao = zext i8 %i.an to i32
  %i.ap = sub nsw i32 %i.ao, %i.o                 ; 4 uses
  %i.aq = sext i32 %i.ap to i64                   ; 5 uses
  %i.ar = zext i8 %1 to i64                       ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ar ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  %.not13.i44 = icmp eq i8 %i.an, %1
  br i1 %.not13.i44, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit50, label %iter.check90

iter.check90:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit
  %min.iters.check74 = icmp ult i32 %i.ap, 8
  br i1 %min.iters.check74, label %.lr.ph.i46.preheader, label %vector.main.loop.iter.check75

vector.main.loop.iter.check75:                    ; preds = %iter.check90
  %min.iters.check76 = icmp ult i32 %i.ap, 32
  br i1 %min.iters.check76, label %vec.epilog.ph94, label %vector.ph77

vector.ph77:                                      ; preds = %vector.main.loop.iter.check75
  %n.vec78 = and i64 %i.aq, -32                   ; 5 uses
  %i.au = getelementptr i8, ptr %i.r, i64 %n.vec78
  %i.av = getelementptr i8, ptr %i.as, i64 %n.vec78
  br label %vector.body79

vector.body79:                                    ; preds = %vector.ph77, %vector.body79
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next85, %vector.body79 ] ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.r, i64 %index80 ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.as, i64 %index80 ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load83 = load <16 x i8>, ptr %next.gep82, align 1
  %wide.load84 = load <16 x i8>, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %next.gep81, i64 16
  store <16 x i8> %wide.load83, ptr %next.gep81, align 1
  store <16 x i8> %wide.load84, ptr %i.ax, align 1
  %index.next85 = add nuw i64 %index80, 32        ; 2 uses
  %i.ay = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.ay, label %middle.block86, label %vector.body79, !llvm.loop !20753

middle.block86:                                   ; preds = %vector.body79
  %cmp.n87 = icmp eq i64 %n.vec78, %i.aq
  br i1 %cmp.n87, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit50, label %vec.epilog.iter.check92

vec.epilog.iter.check92:                          ; preds = %middle.block86
  %i.az = and i32 %i.ap, 24
  %min.epilog.iters.check93 = icmp eq i32 %i.az, 0
  br i1 %min.epilog.iters.check93, label %.lr.ph.i46.preheader, label %vec.epilog.ph94, !prof !2132

vec.epilog.ph94:                                  ; preds = %vector.main.loop.iter.check75, %vec.epilog.iter.check92
  %vec.epilog.resume.val88 = phi i64 [ %n.vec78, %vec.epilog.iter.check92 ], [ 0, %vector.main.loop.iter.check75 ]
  %n.vec95 = and i64 %i.aq, -8                    ; 4 uses
  %i.ba = getelementptr i8, ptr %i.r, i64 %n.vec95
  %i.bb = getelementptr i8, ptr %i.as, i64 %n.vec95
  br label %vec.epilog.vector.body96

vec.epilog.vector.body96:                         ; preds = %vec.epilog.vector.body96, %vec.epilog.ph94
  %index97 = phi i64 [ %vec.epilog.resume.val88, %vec.epilog.ph94 ], [ %index.next101, %vec.epilog.vector.body96 ] ; 3 uses
  %next.gep98 = getelementptr i8, ptr %i.r, i64 %index97
  %next.gep99 = getelementptr i8, ptr %i.as, i64 %index97
  %wide.load100 = load <8 x i8>, ptr %next.gep99, align 1
  store <8 x i8> %wide.load100, ptr %next.gep98, align 1
  %index.next101 = add nuw i64 %index97, 8        ; 2 uses
  %i.bc = icmp eq i64 %index.next101, %n.vec95
  br i1 %i.bc, label %vec.epilog.middle.block102, label %vec.epilog.vector.body96, !llvm.loop !20754

vec.epilog.middle.block102:                       ; preds = %vec.epilog.vector.body96
  %cmp.n103 = icmp eq i64 %n.vec95, %i.aq
  br i1 %cmp.n103, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit50, label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %iter.check90, %vec.epilog.iter.check92, %vec.epilog.middle.block102
  %.015.i47.ph = phi ptr [ %i.r, %iter.check90 ], [ %i.au, %vec.epilog.iter.check92 ], [ %i.ba, %vec.epilog.middle.block102 ]
  %.01214.i48.ph = phi ptr [ %i.as, %iter.check90 ], [ %i.av, %vec.epilog.iter.check92 ], [ %i.bb, %vec.epilog.middle.block102 ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader, %.lr.ph.i46
  %.015.i47 = phi ptr [ %i.bf, %.lr.ph.i46 ], [ %.015.i47.ph, %.lr.ph.i46.preheader ] ; 2 uses
  %.01214.i48 = phi ptr [ %i.be, %.lr.ph.i46 ], [ %.01214.i48.ph, %.lr.ph.i46.preheader ] ; 2 uses
  %i.bd = load i8, ptr %.01214.i48, align 1
  store i8 %i.bd, ptr %.015.i47, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i48, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i47, i64 1
  %.not.i49 = icmp eq ptr %i.be, %i.at
  br i1 %.not.i49, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit50, label %.lr.ph.i46, !llvm.loop !20755

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit50: ; preds = %.lr.ph.i46, %middle.block86, %vec.epilog.middle.block102, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !813
  %.not.i51 = icmp eq i8 %i.bh, 0
  br i1 %.not.i51, label %.preheader52, label %.loopexit

.preheader52:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit50
  %.not57 = icmp eq i8 %1, 0
  br i1 %.not57, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader52
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.ar, 1
  %i.bk = icmp eq i32 %i.p, 0
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ar, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod106 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.bl = load i8, ptr %i.c, align 2, !tbaa !813
  %i.bm = trunc i64 %indvars.iv.epil.init to i8
  %i.bn = add i8 %i.bm, 1
  %i.bo = add i8 %i.bl, %i.bn                     ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.epil.init
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2776 ; 3 uses
  %i.br = zext i8 %i.bo to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.br
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !2776
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i8 %i.bo, ptr %i.bt, align 1, !tbaa !813
  store ptr %0, ptr %i.bq, align 8, !tbaa !2776
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader52
  %i.bu = load i8, ptr %i.am, align 1, !tbaa !813
  %.not54 = icmp ult i8 %i.bu, %1
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.bw = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv.next to i8
  %i.by = add i8 %i.bw, %i.bx                     ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2776 ; 3 uses
  %i.cb = zext i8 %i.by to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cb
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !2776
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i8 %i.by, ptr %i.cd, align 1, !tbaa !813
  store ptr %0, ptr %i.ca, align 8, !tbaa !2776
  %i.ce = load i8, ptr %i.c, align 2, !tbaa !813
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cf = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cg = add i8 %i.ce, %i.cf                     ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2776 ; 3 uses
  %i.cj = zext i8 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cj
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !2776
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.cg, ptr %i.cl, align 1, !tbaa !813
  store ptr %0, ptr %i.ci, align 8, !tbaa !2776
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !20756

bb.c:                                             ; preds = %.lr.ph56, %bb.c
  %.055 = phi i8 [ 0, %.lr.ph56 ], [ %i.ct, %bb.c ] ; 4 uses
  %i.cm = add i8 %.055, %1
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2776 ; 3 uses
  %i.cq = zext i8 %.055 to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cq
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !2776
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i8 %.055, ptr %i.cs, align 1, !tbaa !813
  store ptr %2, ptr %i.cp, align 8, !tbaa !2776
  %i.ct = add i8 %.055, 1                         ; 2 uses
  %i.cu = zext i8 %i.ct to i32
  %i.cv = load i8, ptr %i.am, align 1, !tbaa !813
  %i.cw = zext i8 %i.cv to i32
  %i.cx = sub nsw i32 %i.cw, %i.o
  %.not = icmp slt i32 %i.cx, %i.cu
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !20757

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit50
  %i.cy = load i8, ptr %i.c, align 2, !tbaa !813
  %i.cz = add i8 %i.cy, %1
  store i8 %i.cz, ptr %i.c, align 2, !tbaa !813
  %i.da = load i8, ptr %i.am, align 1, !tbaa !813
  %i.db = sub i8 %i.da, %1
  store i8 %i.db, ptr %i.am, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE23rebalance_left_to_rightEhPS5_PSaIhE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 4 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = zext i8 %i.d to i64                      ; 7 uses
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 18 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %i.g     ; 18 uses
  %min.iters.check = icmp ult i8 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check64 = icmp ult i8 %i.d, 32
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 224                      ; 9 uses
  %i.m = sub nsw i64 0, %n.vec                    ; 2 uses
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr i8, ptr %i.k, i64 %i.m
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 -32
  %wide.load = load <16 x i8>, ptr %i.p, align 1
  %wide.load66 = load <16 x i8>, ptr %i.q, align 1
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 -32
  store <16 x i8> %wide.load, ptr %i.r, align 1
  store <16 x i8> %wide.load66, ptr %i.s, align 1
  %i.t = icmp eq i64 %n.vec, 32
  br i1 %i.t, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.u = getelementptr i8, ptr %i.k, i64 -48
  %i.v = getelementptr i8, ptr %i.k, i64 -64
  %wide.load.1 = load <16 x i8>, ptr %i.u, align 1
  %wide.load66.1 = load <16 x i8>, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %i.j, i64 -48
  %i.x = getelementptr i8, ptr %i.j, i64 -64
  store <16 x i8> %wide.load.1, ptr %i.w, align 1
  store <16 x i8> %wide.load66.1, ptr %i.x, align 1
  %i.y = icmp eq i64 %n.vec, 64
  br i1 %i.y, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.z = getelementptr i8, ptr %i.k, i64 -80
  %i.aa = getelementptr i8, ptr %i.k, i64 -96
  %wide.load.2 = load <16 x i8>, ptr %i.z, align 1
  %wide.load66.2 = load <16 x i8>, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %i.j, i64 -80
  %i.ac = getelementptr i8, ptr %i.j, i64 -96
  store <16 x i8> %wide.load.2, ptr %i.ab, align 1
  store <16 x i8> %wide.load66.2, ptr %i.ac, align 1
  %i.ad = icmp eq i64 %n.vec, 96
  br i1 %i.ad, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ae = getelementptr i8, ptr %i.k, i64 -112
  %i.af = getelementptr i8, ptr %i.k, i64 -128
  %wide.load.3 = load <16 x i8>, ptr %i.ae, align 1
  %wide.load66.3 = load <16 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %i.j, i64 -112
  %i.ah = getelementptr i8, ptr %i.j, i64 -128
  store <16 x i8> %wide.load.3, ptr %i.ag, align 1
  store <16 x i8> %wide.load66.3, ptr %i.ah, align 1
  %i.ai = icmp eq i64 %n.vec, 128
  br i1 %i.ai, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.aj = getelementptr i8, ptr %i.k, i64 -144
  %i.ak = getelementptr i8, ptr %i.k, i64 -160
  %wide.load.4 = load <16 x i8>, ptr %i.aj, align 1
  %wide.load66.4 = load <16 x i8>, ptr %i.ak, align 1
  %i.al = getelementptr i8, ptr %i.j, i64 -144
  %i.am = getelementptr i8, ptr %i.j, i64 -160
  store <16 x i8> %wide.load.4, ptr %i.al, align 1
  store <16 x i8> %wide.load66.4, ptr %i.am, align 1
  %i.an = icmp eq i64 %n.vec, 160
  br i1 %i.an, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ao = getelementptr i8, ptr %i.k, i64 -176
  %i.ap = getelementptr i8, ptr %i.k, i64 -192
  %wide.load.5 = load <16 x i8>, ptr %i.ao, align 1
  %wide.load66.5 = load <16 x i8>, ptr %i.ap, align 1
  %i.aq = getelementptr i8, ptr %i.j, i64 -176
  %i.ar = getelementptr i8, ptr %i.j, i64 -192
  store <16 x i8> %wide.load.5, ptr %i.aq, align 1
  store <16 x i8> %wide.load66.5, ptr %i.ar, align 1
  %i.as = icmp eq i64 %n.vec, 192
  br i1 %i.as, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.at = getelementptr i8, ptr %i.k, i64 -208
  %i.au = getelementptr i8, ptr %i.k, i64 -224
  %wide.load.6 = load <16 x i8>, ptr %i.at, align 1
  %wide.load66.6 = load <16 x i8>, ptr %i.au, align 1
  %i.av = getelementptr i8, ptr %i.j, i64 -208
  %i.aw = getelementptr i8, ptr %i.j, i64 -224
  store <16 x i8> %wide.load.6, ptr %i.av, align 1
  store <16 x i8> %wide.load66.6, ptr %i.aw, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !2132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec68 = and i64 %i.g, 248                    ; 3 uses
  %i.ax = sub nsw i64 0, %n.vec68                 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.j, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.k, i64 %i.ax
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = sub i64 0, %index69                     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.j, i64 %i.ba
  %next.gep71 = getelementptr i8, ptr %i.k, i64 %i.ba
  %i.bb = getelementptr inbounds i8, ptr %next.gep71, i64 -8
  %wide.load72 = load <8 x i8>, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds i8, ptr %next.gep70, i64 -8
  store <8 x i8> %wide.load72, ptr %i.bc, align 1
  %index.next73 = add nuw i64 %index69, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next73, %n.vec68
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20758

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %n.vec68, %i.g
  br i1 %cmp.n74, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  %.01416.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.017.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.017.i.ph, %.lr.ph.i.preheader ]
  %.01416.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.01416.i.ph, %.lr.ph.i.preheader ]
  %i.be = getelementptr inbounds i8, ptr %.017.i, i64 -1 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.01416.i, i64 -1 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1
  store i8 %i.bg, ptr %i.be, align 1
  %.not.i = icmp eq ptr %i.bf, %i.f
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit, label %.lr.ph.i, !llvm.loop !20759

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.bh = add nsw i32 %i.e, -1                    ; 6 uses
  %i.bi = sext i32 %i.bh to i64                   ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !813
  %i.bl = zext i8 %i.bk to i64
  %i.bm = load ptr, ptr %0, align 8, !tbaa !2776
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  %i.bq = load i8, ptr %i.bp, align 1
  store i8 %i.bq, ptr %i.bn, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !813 ; 2 uses
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = sub nsw i32 %i.bt, %i.bh
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bi
  %.not13.i = icmp eq i32 %i.bh, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit, label %iter.check93

iter.check93:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit
  %min.iters.check77 = icmp ult i32 %i.bh, 8
  br i1 %min.iters.check77, label %.lr.ph.i47.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check93
  %i.bz = zext i8 %1 to i64
  %4 = add i64 %i.b, %i.bz
  %5 = zext i8 %i.bs to i64
  %i.ca = sub i64 %i.a, %4
  %i.cb = add i64 %i.ca, %5
  %i.cc = add i64 %i.cb, 32
  %diff.check = icmp ult i64 %i.cc, 31
  br i1 %diff.check, label %.lr.ph.i47.preheader, label %vector.main.loop.iter.check78

vector.main.loop.iter.check78:                    ; preds = %vector.memcheck
  %min.iters.check79 = icmp ult i32 %i.bh, 32
  br i1 %min.iters.check79, label %vec.epilog.ph97, label %vector.ph80

vector.ph80:                                      ; preds = %vector.main.loop.iter.check78
  %n.vec81 = and i64 %i.bi, -32                   ; 5 uses
  %i.cd = getelementptr i8, ptr %i.f, i64 %n.vec81
  %i.ce = getelementptr i8, ptr %i.bx, i64 %n.vec81
  br label %vector.body82

vector.body82:                                    ; preds = %vector.ph80, %vector.body82
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 3 uses
  %next.gep84 = getelementptr i8, ptr %i.f, i64 %index83 ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.bx, i64 %index83 ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep85, i64 16
  %wide.load86 = load <16 x i8>, ptr %next.gep85, align 1
  %wide.load87 = load <16 x i8>, ptr %i.cf, align 1
  %i.cg = getelementptr i8, ptr %next.gep84, i64 16
  store <16 x i8> %wide.load86, ptr %next.gep84, align 1
  store <16 x i8> %wide.load87, ptr %i.cg, align 1
  %index.next88 = add nuw i64 %index83, 32        ; 2 uses
  %i.ch = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.ch, label %middle.block89, label %vector.body82, !llvm.loop !20760

middle.block89:                                   ; preds = %vector.body82
  %cmp.n90 = icmp eq i64 %n.vec81, %i.bi
  br i1 %cmp.n90, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %vec.epilog.iter.check95

vec.epilog.iter.check95:                          ; preds = %middle.block89
  %i.ci = and i32 %i.bh, 24
  %min.epilog.iters.check96 = icmp eq i32 %i.ci, 0
  br i1 %min.epilog.iters.check96, label %.lr.ph.i47.preheader, label %vec.epilog.ph97, !prof !2132

vec.epilog.ph97:                                  ; preds = %vector.main.loop.iter.check78, %vec.epilog.iter.check95
  %vec.epilog.resume.val91 = phi i64 [ %n.vec81, %vec.epilog.iter.check95 ], [ 0, %vector.main.loop.iter.check78 ]
  %n.vec98 = and i64 %i.bi, -8                    ; 4 uses
  %i.cj = getelementptr i8, ptr %i.f, i64 %n.vec98
  %i.ck = getelementptr i8, ptr %i.bx, i64 %n.vec98
  br label %vec.epilog.vector.body99

vec.epilog.vector.body99:                         ; preds = %vec.epilog.vector.body99, %vec.epilog.ph97
  %index100 = phi i64 [ %vec.epilog.resume.val91, %vec.epilog.ph97 ], [ %index.next104, %vec.epilog.vector.body99 ] ; 3 uses
  %next.gep101 = getelementptr i8, ptr %i.f, i64 %index100
  %next.gep102 = getelementptr i8, ptr %i.bx, i64 %index100
  %wide.load103 = load <8 x i8>, ptr %next.gep102, align 1
  store <8 x i8> %wide.load103, ptr %next.gep101, align 1
  %index.next104 = add nuw i64 %index100, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next104, %n.vec98
  br i1 %i.cl, label %vec.epilog.middle.block105, label %vec.epilog.vector.body99, !llvm.loop !20761

vec.epilog.middle.block105:                       ; preds = %vec.epilog.vector.body99
  %cmp.n106 = icmp eq i64 %n.vec98, %i.bi
  br i1 %cmp.n106, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %iter.check93, %vector.memcheck, %vec.epilog.iter.check95, %vec.epilog.middle.block105
  %.015.i.ph = phi ptr [ %i.f, %iter.check93 ], [ %i.f, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check95 ], [ %i.cj, %vec.epilog.middle.block105 ]
  %.01214.i.ph = phi ptr [ %i.bx, %iter.check93 ], [ %i.bx, %vector.memcheck ], [ %i.ce, %vec.epilog.iter.check95 ], [ %i.ck, %vec.epilog.middle.block105 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.lr.ph.i47
  %.015.i = phi ptr [ %i.co, %.lr.ph.i47 ], [ %.015.i.ph, %.lr.ph.i47.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.cn, %.lr.ph.i47 ], [ %.01214.i.ph, %.lr.ph.i47.preheader ] ; 2 uses
  %i.cm = load i8, ptr %.01214.i, align 1
  store i8 %i.cm, ptr %.015.i, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.01214.i, i64 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %.not.i48 = icmp eq ptr %i.cn, %i.by
  br i1 %.not.i48, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %.lr.ph.i47, !llvm.loop !20762

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit: ; preds = %.lr.ph.i47, %vec.epilog.middle.block105, %middle.block89
  %.pre = load i8, ptr %i.br, align 2, !tbaa !813
  %.pre61 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit
  %.pre-phi = phi i32 [ %.pre61, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit ], [ %i.bt, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !2776
  %i.cq = load i8, ptr %i.bj, align 8, !tbaa !813
  %i.cr = zext i8 %i.cq to i64
  %i.cs = sub nsw i32 %.pre-phi, %i.e
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ct
  %i.cx = load i8, ptr %i.cw, align 1
  store i8 %i.cx, ptr %i.cv, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !813
  %.not.i49 = icmp eq i8 %i.cz, 0
  br i1 %.not.i49, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit
  %i.da = load i8, ptr %i.c, align 1, !tbaa !813  ; 5 uses
  %i.db = add i8 %i.da, 1                         ; 2 uses
  %.not5051 = icmp eq i8 %i.db, 0
  br i1 %.not5051, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.dd = zext i8 %i.db to i64                    ; 2 uses
  %i.de = and i8 %i.da, 1
  %lcmp.mod.not.not = icmp eq i8 %i.de, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.df = add i8 %i.da, %1                        ; 2 uses
  %i.dg = zext i8 %i.da to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2776 ; 3 uses
  %i.dj = zext i8 %i.df to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dj
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !2776
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %i.df, ptr %i.dl, align 1, !tbaa !813
  store ptr %2, ptr %i.di, align 8, !tbaa !2776
  %indvars.iv.next.prol = add nsw i64 %i.dd, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.dd, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.dm = icmp eq i8 %i.da, 0
  br i1 %i.dm, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not53 = icmp eq i8 %1, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dp = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.dp, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.dq = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter109 = and i64 %i.dq, 1
  %i.dr = icmp ult i8 %i.dp, 3
  br i1 %i.dr, label %.epil.preheader, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.lr.ph55
  %unroll_iter = and i64 %i.dq, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.ds = trunc nuw i64 %indvars.iv to i8
  %i.dt = add i8 %i.ds, -1                        ; 2 uses
  %i.du = add i8 %i.dt, %1                        ; 2 uses
  %i.dv = zext i8 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !2776 ; 3 uses
  %i.dy = zext i8 %i.du to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dy
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !2776
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i8 %i.du, ptr %i.ea, align 1, !tbaa !813
  store ptr %2, ptr %i.dx, align 8, !tbaa !2776
  %i.eb = trunc i64 %indvars.iv to i8
  %i.ec = add i8 %i.eb, -2                        ; 2 uses
  %i.ed = add i8 %i.ec, %1                        ; 2 uses
  %i.ee = zext i8 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !2776 ; 3 uses
  %i.eh = zext i8 %i.ed to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.eh
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !2776
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i8 %i.ed, ptr %i.ej, align 1, !tbaa !813
  store ptr %2, ptr %i.eg, align 8, !tbaa !2776
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ek = and i64 %indvars.iv.next.1, 255
  %.not50.1 = icmp eq i64 %i.ek, 0
  br i1 %.not50.1, label %.preheader, label %.lr.ph.new, !llvm.loop !20763

bb.c:                                             ; preds = %bb.c, %.lr.ph55.new
  %indvars.iv57 = phi i64 [ 1, %.lr.ph55.new ], [ %indvars.iv.next58.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph55.new ], [ %niter.next.1, %bb.c ]
  %i.el = add nsw i64 %indvars.iv57, -1           ; 2 uses
  %i.em = load i8, ptr %i.br, align 2, !tbaa !813
  %i.en = trunc nuw i64 %indvars.iv57 to i8
  %i.eo = sub i8 %i.en, %1
  %i.ep = add i8 %i.eo, %i.em
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2776 ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.el
  store ptr %i.es, ptr %i.et, align 8, !tbaa !2776
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = trunc nuw i64 %i.el to i8
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !813
  store ptr %2, ptr %i.es, align 8, !tbaa !2776
  %i.ew = load i8, ptr %i.br, align 2, !tbaa !813
  %i.ex = trunc i64 %indvars.iv57 to i8
  %.reass = add i8 %i.ex, %invariant.op
  %i.ey = add i8 %.reass, %i.ew
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !2776 ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv57
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !2776
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fe = trunc nuw i64 %indvars.iv57 to i8
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !813
  store ptr %2, ptr %i.fb, align 8, !tbaa !2776
  %indvars.iv.next58.1 = add nuw nsw i64 %indvars.iv57, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !20764

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv57.epil.init = phi i64 [ 1, %.lr.ph55 ], [ %indvars.iv.next58.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod111 = trunc i64 %i.dq to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.ff = add nsw i64 %indvars.iv57.epil.init, -1 ; 2 uses
  %i.fg = load i8, ptr %i.br, align 2, !tbaa !813
  %i.fh = trunc nuw i64 %indvars.iv57.epil.init to i8
  %i.fi = sub i8 %i.fh, %1
  %i.fj = add i8 %i.fi, %i.fg
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2776 ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.ff
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !2776
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fp = trunc nuw i64 %i.ff to i8
  store i8 %i.fp, ptr %i.fo, align 1, !tbaa !813
  store ptr %2, ptr %i.fm, align 8, !tbaa !2776
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit
  %i.fq = load i8, ptr %i.br, align 2, !tbaa !813
  %i.fr = sub i8 %i.fq, %1
  store i8 %i.fr, ptr %i.br, align 2, !tbaa !813
  %i.fs = load i8, ptr %i.c, align 1, !tbaa !813
  %i.ft = add i8 %i.fs, %1
  store i8 %i.ft, ptr %i.c, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE5splitEiPS5_PSaIhE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 244, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813
  %i.e = add i8 %i.d, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !813
  %i.h = lshr i8 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.i, align 1, !tbaa !813
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.m = sub i8 %i.k, %.sink                      ; 3 uses
  store i8 %i.m, ptr %i.j, align 1, !tbaa !813
  %i.n = load i8, ptr %i.l, align 1, !tbaa !813   ; 4 uses
  %i.o = zext i8 %i.n to i64                      ; 6 uses
  %i.p = zext i8 %i.m to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 20 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  %.not13.i = icmp eq i8 %i.n, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %min.iters.check = icmp ult i8 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.u = add i64 %i.a, %i.p
  %i.v = sub i64 %i.u, %i.b
  %diff.check = icmp ugt i64 %i.v, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i8 %i.n, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.o, 24
  %n.vec = and i64 %i.o, 224                      ; 10 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %n.vec
  %i.y = getelementptr i8, ptr %i.r, i64 %n.vec
  %i.z = getelementptr i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1
  %wide.load38 = load <16 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %2, i64 28
  store <16 x i8> %wide.load, ptr %i.t, align 1
  store <16 x i8> %wide.load38, ptr %i.aa, align 1
  %i.ab = icmp eq i64 %n.vec, 32
  br i1 %i.ab, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %2, i64 44
  %next.gep37.1 = getelementptr i8, ptr %i.r, i64 32
  %i.ac = getelementptr i8, ptr %i.r, i64 48
  %wide.load.1 = load <16 x i8>, ptr %next.gep37.1, align 1
  %wide.load38.1 = load <16 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %2, i64 60
  store <16 x i8> %wide.load.1, ptr %next.gep.1, align 1
  store <16 x i8> %wide.load38.1, ptr %i.ad, align 1
  %i.ae = icmp eq i64 %n.vec, 64
  br i1 %i.ae, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %2, i64 76
  %next.gep37.2 = getelementptr i8, ptr %i.r, i64 64
  %i.af = getelementptr i8, ptr %i.r, i64 80
  %wide.load.2 = load <16 x i8>, ptr %next.gep37.2, align 1
  %wide.load38.2 = load <16 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %2, i64 92
  store <16 x i8> %wide.load.2, ptr %next.gep.2, align 1
  store <16 x i8> %wide.load38.2, ptr %i.ag, align 1
  %i.ah = icmp eq i64 %n.vec, 96
  br i1 %i.ah, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %2, i64 108
  %next.gep37.3 = getelementptr i8, ptr %i.r, i64 96
  %i.ai = getelementptr i8, ptr %i.r, i64 112
  %wide.load.3 = load <16 x i8>, ptr %next.gep37.3, align 1
  %wide.load38.3 = load <16 x i8>, ptr %i.ai, align 1
  %i.aj = getelementptr i8, ptr %2, i64 124
  store <16 x i8> %wide.load.3, ptr %next.gep.3, align 1
  store <16 x i8> %wide.load38.3, ptr %i.aj, align 1
  %i.ak = icmp eq i64 %n.vec, 128
  br i1 %i.ak, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %2, i64 140
  %next.gep37.4 = getelementptr i8, ptr %i.r, i64 128
  %i.al = getelementptr i8, ptr %i.r, i64 144
  %wide.load.4 = load <16 x i8>, ptr %next.gep37.4, align 1
  %wide.load38.4 = load <16 x i8>, ptr %i.al, align 1
  %i.am = getelementptr i8, ptr %2, i64 156
  store <16 x i8> %wide.load.4, ptr %next.gep.4, align 1
  store <16 x i8> %wide.load38.4, ptr %i.am, align 1
  %i.an = icmp eq i64 %n.vec, 160
  br i1 %i.an, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %2, i64 172
  %next.gep37.5 = getelementptr i8, ptr %i.r, i64 160
  %i.ao = getelementptr i8, ptr %i.r, i64 176
  %wide.load.5 = load <16 x i8>, ptr %next.gep37.5, align 1
  %wide.load38.5 = load <16 x i8>, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %2, i64 188
  store <16 x i8> %wide.load.5, ptr %next.gep.5, align 1
  store <16 x i8> %wide.load38.5, ptr %i.ap, align 1
  %i.aq = icmp eq i64 %n.vec, 192
  br i1 %i.aq, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %2, i64 204
  %next.gep37.6 = getelementptr i8, ptr %i.r, i64 192
  %i.ar = getelementptr i8, ptr %i.r, i64 208
  %wide.load.6 = load <16 x i8>, ptr %next.gep37.6, align 1
  %wide.load38.6 = load <16 x i8>, ptr %i.ar, align 1
  %i.as = getelementptr i8, ptr %2, i64 220
  store <16 x i8> %wide.load.6, ptr %next.gep.6, align 1
  store <16 x i8> %wide.load38.6, ptr %i.as, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.o
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !2132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.o, 248                    ; 4 uses
  %i.at = getelementptr i8, ptr %i.t, i64 %n.vec40
  %i.au = getelementptr i8, ptr %i.r, i64 %n.vec40
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %next.gep42 = getelementptr i8, ptr %i.t, i64 %index41
  %next.gep43 = getelementptr i8, ptr %i.r, i64 %index41
  %wide.load44 = load <8 x i8>, ptr %next.gep43, align 1
  store <8 x i8> %wide.load44, ptr %next.gep42, align 1
  %index.next45 = add nuw i64 %index41, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20765

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %n.vec40, %i.o
  br i1 %cmp.n46, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aw = load i8, ptr %.01214.i, align 1
  store i8 %i.aw, ptr %.015.i, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %.not.i = icmp eq ptr %i.ax, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %.lr.ph.i, !llvm.loop !20766

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit: ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load i8, ptr %i.j, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, %bb.d
  %i.az = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit ], [ %i.m, %bb.d ]
  %i.ba = add i8 %i.az, -1                        ; 2 uses
  store i8 %i.ba, ptr %i.j, align 1, !tbaa !813
  %i.bb = load ptr, ptr %0, align 8, !tbaa !2776  ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !813 ; 4 uses
  %i.be = zext i8 %i.ba to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.be
  %i.bg = zext i8 %i.bd to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 10 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !813 ; 3 uses
  %i.bj = icmp ult i8 %i.bd, %i.bi
  %i.bk = zext i8 %i.bd to i64                    ; 4 uses
  br i1 %i.bj, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk  ; 2 uses
  %narrow.i = sub nuw i8 %i.bi, %i.bd
  %i.bn = zext i8 %narrow.i to i64
  %i.bo = getelementptr i8, ptr %i.bm, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bm, i64 %i.bn, i1 false)
  %.pre.i = load i8, ptr %i.bh, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit
  %i.bp = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bi, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk
  %i.bs = load i8, ptr %i.bf, align 1, !tbaa !813
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !813
  %i.bt = add i8 %i.bp, 1                         ; 3 uses
  store i8 %i.bt, ptr %i.bh, align 1, !tbaa !813
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 11
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !813
  %.not.i18.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE13emplace_valueIJPhEEEvhPSaIhEDpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE19transfer_n_backwardEmmmPS5_PSaIhE.exit.i
  %i.bw = zext i8 %i.bt to i32
  %i.bx = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, %i.bw
  br i1 %i.by, label %.lr.ph.i27, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE13emplace_valueIJPhEEEvhPSaIhEDpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 256 ; 10 uses
  %i.ca = zext i8 %i.bt to i64                    ; 4 uses
  %i.cb = zext nneg i32 %i.bx to i64
  %i.cc = xor i64 %i.bk, -1
  %i.cd = add nsw i64 %i.cc, %i.ca
  %i.ce = add nsw i64 %i.ca, -2
  %i.cf = sub nsw i64 %i.ce, %i.bk
  %xtraiter = and i64 %i.cd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i27, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.cg, %.prol.preheader ], [ %i.ca, %.lr.ph.i27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i27 ]
end_hunk_19
begin_hunk_20_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS4_EERKhPS9_EE:bb.a
  %i.ce = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !2776 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 11
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !813
  %.not17.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not17.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIhJEEEEERKhPS7_EppEv.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i14
  %i.ch = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !813 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 10
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !813
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i.i14, label %.critedge.loopexit23.i.i.i, !llvm.loop !763

.thread.i.i15:                                    ; preds = %bb.c
  %i.cm = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 256
  %i.cn = add i32 %.fca.1.extract, 1
  %i.co = and i32 %i.cn, 255
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cp
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.thread.i.i15
  %.116.in.i.i.i = phi ptr [ %i.cq, %.thread.i.i15 ], [ %i.ct, %bb.f ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !2776 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !813
  %.not.i.i.i.i16 = icmp eq i8 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i16, label %bb.f, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIhJEEEEERKhPS7_EppEv.exit, !llvm.loop !764

.critedge.loopexit23.i.i.i:                       ; preds = %bb.e
  %i.cu = zext i8 %i.ci to i32
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIhJEEEEERKhPS7_EppEv.exit

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIhJEEEEERKhPS7_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.f, %bb.d, %.critedge.loopexit23.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit ], [ 0, %bb.f ], [ %i.bz, %bb.d ], [ %i.cu, %.critedge.loopexit23.i.i.i ], [ %i.bz, %.lr.ph.i.i.i14 ]
  %.sroa.027.0 = phi ptr [ %.fca.0.extract, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit ], [ %.116.i.i.i, %bb.f ], [ %.fca.0.extract, %bb.d ], [ %i.ce, %.critedge.loopexit23.i.i.i ], [ %.fca.0.extract, %.lr.ph.i.i.i14 ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERKhPS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2778   ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2776 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !813   ; 5 uses
  %.not = icmp eq i8 %i.d, 0                      ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i8 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2776 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = zext i8 %i.k to i32
  %i.m = add nuw nsw i32 %i.l, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !813
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.m, %i.p
  %i.r = icmp samesign ugt i32 %i.q, 244
  br i1 %i.r, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !2779
  %i.u = add nsw i32 %i.t, %i.m
  store i32 %i.u, ptr %i.s, align 8, !tbaa !2779
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE5mergeEPS5_PSaIhE(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.v)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2776
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %bb.d, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.v, align 8, !tbaa !2776
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.i, ptr %1, align 8, !tbaa !2778
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53.thread

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !813
  %i.aa = icmp ult i8 %i.d, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53

bb.e:                                             ; preds = %.critedge
  %i.ab = add nuw i8 %i.d, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ad = zext i8 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2776 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !813 ; 2 uses
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !813 ; 3 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = add nuw nsw i32 %i.aj, %i.am
  %i.ao = icmp samesign ult i32 %i.an, 245
  br i1 %i.ao, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE5mergeEPS5_PSaIhE(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ap)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2776
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %bb.g, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53.thread

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.ap, align 8, !tbaa !2776
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53.thread

bb.h:                                             ; preds = %bb.e
  %i.as = icmp ugt i8 %i.al, 122
  br i1 %i.as, label %bb.i, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53

bb.i:                                             ; preds = %bb.h
  %i.at = icmp eq i8 %i.ah, 0
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !2779
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = sub nsw i32 %i.am, %i.ai
  %.lhs.trunc = trunc nsw i32 %i.ax to i16
  %i.ay = sdiv i16 %.lhs.trunc, 2
  %i.az = trunc nsw i16 %i.ay to i8
  %i.ba = add i8 %i.al, -1
  %.sroa.speculated59 = tail call i8 @llvm.umin.i8(i8 %i.ba, i8 %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE23rebalance_right_to_leftEhPS5_PSaIhE(ptr noundef nonnull align 1 dereferenceable(1) %i.a, i8 noundef zeroext %.sroa.speculated59, ptr noundef nonnull %i.af, ptr noundef nonnull %i.bb)
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53.thread

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53: ; preds = %bb.j, %bb.h, %.critedge
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53
  %i.bc = add i8 %i.d, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.be = zext i8 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2776 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !813 ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 122
  br i1 %i.bj, label %bb.m, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53.thread

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !813 ; 3 uses
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !2779
  %i.bp = zext i8 %i.bl to i32
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.o, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53.thread

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.br = zext i8 %i.bi to i16
  %i.bs = zext i8 %i.bl to i16
  %.lhs.trunc68 = sub nsw i16 %i.br, %i.bs
  %i.bt = sdiv i16 %.lhs.trunc68, 2
  %i.bu = trunc nsw i16 %i.bt to i8
  %i.bv = add i8 %i.bi, -1
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %i.bv, i8 %i.bu) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE23rebalance_left_to_rightEhPS5_PSaIhE(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bw)
  %i.bx = zext i8 %.sroa.speculated to i32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !2779
  %i.ca = add nsw i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !2779
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53.thread

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53.thread: ; preds = %bb.l, %bb.n, %bb.g, %bb.f, %bb.k, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53, %bb.o, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit
  %.5 = phi i1 [ true, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit ], [ false, %bb.o ], [ false, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIhJEEEE11merge_nodesEPNS1_10btree_nodeIS4_EES8_.exit53 ], [ false, %bb.k ], [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.n ], [ false, %bb.l ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE5mergeEPS5_PSaIhE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !2776
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !813
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.k = zext i8 %i.d to i64                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k ; 20 uses
  %i.n = load i8, ptr %i.j, align 1, !tbaa !813
  store i8 %i.n, ptr %i.m, align 1, !tbaa !813
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813   ; 4 uses
  %i.q = zext i8 %i.p to i64                      ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %.not13.i = icmp eq i8 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i8 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %i.b, %i.k
  %i.u = sub i64 %i.t, %i.a
  %diff.check = icmp ult i64 %i.u, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i8 %i.p, 32
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.q, 24
  %n.vec = and i64 %i.q, 224                      ; 10 uses
  %i.w = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.x = getelementptr i8, ptr %i.r, i64 %n.vec
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.z = getelementptr i8, ptr %1, i64 28
  %wide.load = load <16 x i8>, ptr %i.r, align 1
  %wide.load32 = load <16 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  store <16 x i8> %wide.load, ptr %i.y, align 1
  store <16 x i8> %wide.load32, ptr %i.aa, align 1
  %i.ab = icmp eq i64 %n.vec, 32
  br i1 %i.ab, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep31.1 = getelementptr i8, ptr %1, i64 44
  %i.ac = getelementptr i8, ptr %i.m, i64 33
  %i.ad = getelementptr i8, ptr %1, i64 60
  %wide.load.1 = load <16 x i8>, ptr %next.gep31.1, align 1
  %wide.load32.1 = load <16 x i8>, ptr %i.ad, align 1
  %i.ae = getelementptr i8, ptr %i.m, i64 49
  store <16 x i8> %wide.load.1, ptr %i.ac, align 1
  store <16 x i8> %wide.load32.1, ptr %i.ae, align 1
  %i.af = icmp eq i64 %n.vec, 64
  br i1 %i.af, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep31.2 = getelementptr i8, ptr %1, i64 76
  %i.ag = getelementptr i8, ptr %i.m, i64 65
  %i.ah = getelementptr i8, ptr %1, i64 92
  %wide.load.2 = load <16 x i8>, ptr %next.gep31.2, align 1
  %wide.load32.2 = load <16 x i8>, ptr %i.ah, align 1
  %i.ai = getelementptr i8, ptr %i.m, i64 81
  store <16 x i8> %wide.load.2, ptr %i.ag, align 1
  store <16 x i8> %wide.load32.2, ptr %i.ai, align 1
  %i.aj = icmp eq i64 %n.vec, 96
  br i1 %i.aj, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep31.3 = getelementptr i8, ptr %1, i64 108
  %i.ak = getelementptr i8, ptr %i.m, i64 97
  %i.al = getelementptr i8, ptr %1, i64 124
  %wide.load.3 = load <16 x i8>, ptr %next.gep31.3, align 1
  %wide.load32.3 = load <16 x i8>, ptr %i.al, align 1
  %i.am = getelementptr i8, ptr %i.m, i64 113
  store <16 x i8> %wide.load.3, ptr %i.ak, align 1
  store <16 x i8> %wide.load32.3, ptr %i.am, align 1
  %i.an = icmp eq i64 %n.vec, 128
  br i1 %i.an, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep31.4 = getelementptr i8, ptr %1, i64 140
  %i.ao = getelementptr i8, ptr %i.m, i64 129
  %i.ap = getelementptr i8, ptr %1, i64 156
  %wide.load.4 = load <16 x i8>, ptr %next.gep31.4, align 1
  %wide.load32.4 = load <16 x i8>, ptr %i.ap, align 1
  %i.aq = getelementptr i8, ptr %i.m, i64 145
  store <16 x i8> %wide.load.4, ptr %i.ao, align 1
  store <16 x i8> %wide.load32.4, ptr %i.aq, align 1
  %i.ar = icmp eq i64 %n.vec, 160
  br i1 %i.ar, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep31.5 = getelementptr i8, ptr %1, i64 172
  %i.as = getelementptr i8, ptr %i.m, i64 161
  %i.at = getelementptr i8, ptr %1, i64 188
  %wide.load.5 = load <16 x i8>, ptr %next.gep31.5, align 1
  %wide.load32.5 = load <16 x i8>, ptr %i.at, align 1
  %i.au = getelementptr i8, ptr %i.m, i64 177
  store <16 x i8> %wide.load.5, ptr %i.as, align 1
  store <16 x i8> %wide.load32.5, ptr %i.au, align 1
  %i.av = icmp eq i64 %n.vec, 192
  br i1 %i.av, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep31.6 = getelementptr i8, ptr %1, i64 204
  %i.aw = getelementptr i8, ptr %i.m, i64 193
  %i.ax = getelementptr i8, ptr %1, i64 220
  %wide.load.6 = load <16 x i8>, ptr %next.gep31.6, align 1
  %wide.load32.6 = load <16 x i8>, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %i.m, i64 209
  store <16 x i8> %wide.load.6, ptr %i.aw, align 1
  store <16 x i8> %wide.load32.6, ptr %i.ay, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !2132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.q, 248                    ; 4 uses
  %i.az = getelementptr i8, ptr %i.m, i64 %n.vec34
  %i.ba = getelementptr i8, ptr %i.r, i64 %n.vec34
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.m, i64 %index35
  %next.gep37 = getelementptr i8, ptr %i.r, i64 %index35
  %i.bb = getelementptr inbounds nuw i8, ptr %next.gep36, i64 1
  %wide.load38 = load <8 x i8>, ptr %next.gep37, align 1
  store <8 x i8> %wide.load38, ptr %i.bb, align 1
  %index.next39 = add nuw i64 %index35, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20785

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %n.vec34, %i.q
  br i1 %cmp.n40, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.pn.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ] ; 2 uses
  %.01214.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ] ; 3 uses
  %i.bd = add i64 %i.a, %i.q                      ; 2 uses
  %i.be = xor i64 %i.bd, 4
  %.01214.i.ph77 = ptrtoaddr ptr %.01214.i.ph to i64 ; 2 uses
  %i.bf = sub i64 %i.be, %.01214.i.ph77
  %i.bg = add i64 %i.bd, 11
  %i.bh = sub i64 %i.bg, %.01214.i.ph77
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.015.i.pn.prol = phi ptr [ %.015.i.prol, %.lr.ph.i.prol ], [ %.015.i.pn.ph, %.lr.ph.i.preheader ]
  %.01214.i.prol = phi ptr [ %i.bj, %.lr.ph.i.prol ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.prol, i64 1 ; 3 uses
  %i.bi = load i8, ptr %.01214.i.prol, align 1
  store i8 %i.bi, ptr %.015.i.prol, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !20786

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.pn.unr = phi ptr [ %.015.i.pn.ph, %.lr.ph.i.preheader ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %.01214.i.ph, %.lr.ph.i.preheader ], [ %i.bj, %.lr.ph.i.prol ]
  %i.bk = icmp ult i64 %i.bh, 7
  br i1 %i.bk, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i.7, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %.01214.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 1
  %i.bl = load i8, ptr %.01214.i, align 1
  store i8 %i.bl, ptr %.015.i, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i, i64 1
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  store i8 %i.bn, ptr %.015.i.1, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i, i64 2
  %.015.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1
  store i8 %i.bp, ptr %.015.i.2, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.01214.i, i64 3
  %.015.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 4
  %i.br = load i8, ptr %i.bq, align 1
  store i8 %i.br, ptr %.015.i.3, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %.015.i.4 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 5
  %i.bt = load i8, ptr %i.bs, align 1
  store i8 %i.bt, ptr %.015.i.4, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i, i64 5
  %.015.i.5 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 6
  %i.bv = load i8, ptr %i.bu, align 1
  store i8 %i.bv, ptr %.015.i.5, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.01214.i, i64 6
  %.015.i.6 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 7
  %i.bx = load i8, ptr %i.bw, align 1
  store i8 %i.bx, ptr %.015.i.6, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.01214.i, i64 7
  %.015.i.7 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 8 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  store i8 %i.bz, ptr %.015.i.7, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ca, %i.s
  br i1 %.not.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, label %.lr.ph.i, !llvm.loop !20787

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre25.pre = load i8, ptr %i.c, align 2, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit, %bb.a
  %.pre25 = phi i8 [ %.pre25.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !813
  %.not.i20 = icmp eq i8 %i.cc, 0
  br i1 %.not.i20, label %bb.b, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit..loopexit_crit_edge

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit..loopexit_crit_edge: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit
  %.pre26 = load i8, ptr %i.o, align 1, !tbaa !813
  br label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0.in24 = phi i8 [ %.pre25, %bb.b ], [ %.0, %bb.c ]
  %.01923 = phi i8 [ 0, %bb.b ], [ %i.cl, %bb.c ] ; 2 uses
  %.0 = add i8 %.0.in24, 1                        ; 3 uses
  %i.cf = zext i8 %.01923 to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2776 ; 3 uses
  %i.ci = zext i8 %.0 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !2776
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %.0, ptr %i.ck, align 1, !tbaa !813
  store ptr %0, ptr %i.ch, align 8, !tbaa !2776
  %i.cl = add i8 %.01923, 1                       ; 2 uses
  %i.cm = load i8, ptr %i.o, align 1, !tbaa !813  ; 2 uses
  %.not = icmp ugt i8 %i.cl, %i.cm
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !20788

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load i8, ptr %i.c, align 2, !tbaa !813
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit..loopexit_crit_edge, %.loopexit.loopexit
  %i.cn = phi i8 [ %i.cm, %.loopexit.loopexit ], [ %.pre26, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit..loopexit_crit_edge ]
  %i.co = phi i8 [ %.pre, %.loopexit.loopexit ], [ %.pre25, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit..loopexit_crit_edge ]
  %i.cp = add i8 %i.co, 1
  %i.cq = add i8 %i.cp, %i.cn
  store i8 %i.cq, ptr %i.c, align 2, !tbaa !813
  store i8 0, ptr %i.o, align 1, !tbaa !813
  %i.cr = load ptr, ptr %0, align 8, !tbaa !2776  ; 4 uses
  %i.cs = load i8, ptr %i.f, align 8, !tbaa !813  ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 10 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !813 ; 4 uses
  %i.cv = zext i8 %i.cs to i32
  %i.cw = add nuw nsw i32 %i.cv, 1                ; 2 uses
  %i.cx = zext i8 %i.cu to i32                    ; 2 uses
  %i.cy = and i32 %i.cw, 255                      ; 3 uses
  %i.cz = sub nsw i32 %i.cx, %i.cy                ; 4 uses
  %i.da = sext i32 %i.cz to i64                   ; 5 uses
  %i.db = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.da
  %.not13.i.i = icmp eq i32 %i.cy, %i.cx
  br i1 %.not13.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.i, label %iter.check61

iter.check61:                                     ; preds = %.loopexit
  %i.df = zext i8 %i.cs to i64                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.df ; 5 uses
  %min.iters.check45 = icmp ult i32 %i.cz, 8
  %i.dh = sub nsw i64 %i.db, %i.df
  %diff.check44 = icmp ugt i64 %i.dh, -32
  %or.cond = select i1 %min.iters.check45, i1 true, i1 %diff.check44
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check46

vector.main.loop.iter.check46:                    ; preds = %iter.check61
  %min.iters.check47 = icmp ult i32 %i.cz, 32
  br i1 %min.iters.check47, label %vec.epilog.ph65, label %vector.ph48

vector.ph48:                                      ; preds = %vector.main.loop.iter.check46
  %n.vec49 = and i64 %i.da, -32                   ; 5 uses
  %i.di = getelementptr i8, ptr %i.dg, i64 %n.vec49
  %i.dj = getelementptr i8, ptr %i.dd, i64 %n.vec49
  br label %vector.body50

vector.body50:                                    ; preds = %vector.ph48, %vector.body50
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next56, %vector.body50 ] ; 3 uses
  %next.gep52 = getelementptr i8, ptr %i.dg, i64 %index51 ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.dd, i64 %index51 ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <16 x i8>, ptr %next.gep53, align 1
  %wide.load55 = load <16 x i8>, ptr %i.dk, align 1
  %i.dl = getelementptr i8, ptr %next.gep52, i64 16
  store <16 x i8> %wide.load54, ptr %next.gep52, align 1
  store <16 x i8> %wide.load55, ptr %i.dl, align 1
  %index.next56 = add nuw i64 %index51, 32        ; 2 uses
  %i.dm = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.dm, label %middle.block57, label %vector.body50, !llvm.loop !20789

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %n.vec49, %i.da
  br i1 %cmp.n58, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.i, label %vec.epilog.iter.check63

vec.epilog.iter.check63:                          ; preds = %middle.block57
  %i.dn = and i32 %i.cz, 24
  %min.epilog.iters.check64 = icmp eq i32 %i.dn, 0
  br i1 %min.epilog.iters.check64, label %.lr.ph.i.i.preheader, label %vec.epilog.ph65, !prof !2132

vec.epilog.ph65:                                  ; preds = %vector.main.loop.iter.check46, %vec.epilog.iter.check63
  %vec.epilog.resume.val59 = phi i64 [ %n.vec49, %vec.epilog.iter.check63 ], [ 0, %vector.main.loop.iter.check46 ]
  %n.vec66 = and i64 %i.da, -8                    ; 4 uses
  %i.do = getelementptr i8, ptr %i.dg, i64 %n.vec66
  %i.dp = getelementptr i8, ptr %i.dd, i64 %n.vec66
  br label %vec.epilog.vector.body67

vec.epilog.vector.body67:                         ; preds = %vec.epilog.vector.body67, %vec.epilog.ph65
  %index68 = phi i64 [ %vec.epilog.resume.val59, %vec.epilog.ph65 ], [ %index.next72, %vec.epilog.vector.body67 ] ; 3 uses
  %next.gep69 = getelementptr i8, ptr %i.dg, i64 %index68
  %next.gep70 = getelementptr i8, ptr %i.dd, i64 %index68
  %wide.load71 = load <8 x i8>, ptr %next.gep70, align 1
  store <8 x i8> %wide.load71, ptr %next.gep69, align 1
  %index.next72 = add nuw i64 %index68, 8         ; 2 uses
  %i.dq = icmp eq i64 %index.next72, %n.vec66
  br i1 %i.dq, label %vec.epilog.middle.block73, label %vec.epilog.vector.body67, !llvm.loop !20790

vec.epilog.middle.block73:                        ; preds = %vec.epilog.vector.body67
  %cmp.n74 = icmp eq i64 %n.vec66, %i.da
  br i1 %cmp.n74, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIhJEEEE10transfer_nEmmmPS5_PSaIhE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check61, %vec.epilog.iter.check63, %vec.epilog.middle.block73
  %.015.i.i.ph = phi ptr [ %i.dg, %iter.check61 ], [ %i.di, %vec.epilog.iter.check63 ], [ %i.do, %vec.epilog.middle.block73 ]
  %.01214.i.i.ph = phi ptr [ %i.dd, %iter.check61 ], [ %i.dj, %vec.epilog.iter.check63 ], [ %i.dp, %vec.epilog.middle.block73 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
end_hunk_20
