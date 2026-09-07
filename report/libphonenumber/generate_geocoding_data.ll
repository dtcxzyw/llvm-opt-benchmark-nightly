Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/generate_geocoding_data?download=true
inline.NumInlined: 2644
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_right_to_leftEiPS8_PS6_:bb.a
_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %bb.a
  %sext.i43.pre-phi = phi i64 [ %.pre66, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %sext4.i, %bb.a ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %sext.i43.pre-phi
  %i.ak = load i32, ptr %i.r, align 4, !tbaa !28
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !28
  %i.al = getelementptr i8, ptr %2, i64 10        ; 5 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !26  ; 2 uses
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = sub nsw i32 %i.an, %1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sext i32 %1 to i64                      ; 3 uses
  %i.ar = shl nsw i64 %i.aq, 2                    ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.q, i64 %i.ar ; 4 uses
  %.idx.i46 = shl nuw nsw i64 %i.ap, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i46
  %.not14.i47 = icmp eq i32 %1, %i.an
  br i1 %.not14.i47, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54, label %.lr.ph.i50.preheader

.lr.ph.i50.preheader:                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.au = zext i8 %i.am to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = add nsw i64 %i.av, -4
  %i.ax = sub nsw i64 %i.aw, %i.ar                ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.ax, 60
  %i.ba = shl nsw i64 %i.aq, 2
  %diff.check71 = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check73, i1 true, i1 %diff.check71
  br i1 %or.cond, label %.lr.ph.i50.preheader87, label %vector.ph74

vector.ph74:                                      ; preds = %.lr.ph.i50.preheader
  %n.vec75 = and i64 %i.az, 9223372036854775800   ; 3 uses
  %i.bb = shl i64 %n.vec75, 2                     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.q, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.as, i64 %i.bb
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.be = shl i64 %index77, 2                     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.q, i64 %i.be ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !28
  %wide.load81 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !28
  %i.bg = getelementptr i8, ptr %next.gep78, i64 16
  store <4 x i32> %wide.load80, ptr %next.gep78, align 4, !tbaa !28
  store <4 x i32> %wide.load81, ptr %i.bg, align 4, !tbaa !28
  %index.next82 = add nuw i64 %index77, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.bh, label %middle.block83, label %vector.body76, !llvm.loop !370

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.az, %n.vec75
  br i1 %cmp.n84, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54, label %.lr.ph.i50.preheader87

.lr.ph.i50.preheader87:                           ; preds = %.lr.ph.i50.preheader, %middle.block83
  %.016.i51.ph = phi ptr [ %i.q, %.lr.ph.i50.preheader ], [ %i.bc, %middle.block83 ]
  %.01215.i52.ph = phi ptr [ %i.as, %.lr.ph.i50.preheader ], [ %i.bd, %middle.block83 ]
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader87, %.lr.ph.i50
  %.016.i51 = phi ptr [ %i.bk, %.lr.ph.i50 ], [ %.016.i51.ph, %.lr.ph.i50.preheader87 ] ; 2 uses
  %.01215.i52 = phi ptr [ %i.bj, %.lr.ph.i50 ], [ %.01215.i52.ph, %.lr.ph.i50.preheader87 ] ; 2 uses
  %i.bi = load i32, ptr %.01215.i52, align 4, !tbaa !28
  store i32 %i.bi, ptr %.016.i51, align 4, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %.01215.i52, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.016.i51, i64 4
  %.not.i53 = icmp eq ptr %i.bj, %i.at
  br i1 %.not.i53, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54, label %.lr.ph.i50, !llvm.loop !371

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54: ; preds = %.lr.ph.i50, %middle.block83, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.bl = getelementptr i8, ptr %0, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !26
  %.not.i55 = icmp eq i8 %i.bm, 0
  br i1 %.not.i55, label %.preheader56, label %.loopexit

.preheader56:                                     ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54
  %i.bn = icmp sgt i32 %1, 0
  br i1 %i.bn, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader56
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bq = icmp eq i32 %1, 1
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod89 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.br = load i8, ptr %i.c, align 2, !tbaa !26
  %i.bs = zext i8 %i.br to i32
  %i.bt = trunc i64 %indvars.iv.epil.init to i32
  %i.bu = add i32 %i.bt, 1
  %i.bv = add nuw nsw i32 %i.bu, %i.bs            ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.epil.init
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !83 ; 3 uses
  %i.by = zext nneg i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.by
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !83
  %i.ca = trunc i32 %i.bv to i8
  %i.cb = getelementptr i8, ptr %i.bx, i64 8
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !26
  store ptr %0, ptr %i.bx, align 8, !tbaa !83
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader56
  %i.cc = load i8, ptr %i.al, align 1, !tbaa !26
  %i.cd = zext i8 %i.cc to i32
  %.not58 = icmp sgt i32 %1, %i.cd
  br i1 %.not58, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ce, i64 %i.aq
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !26
  %i.cg = zext i8 %i.cf to i32
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ci = add nuw nsw i32 %i.ch, %i.cg            ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !83 ; 3 uses
  %i.cl = zext nneg i32 %i.ci to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cl
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !83
  %i.cn = trunc i32 %i.ci to i8
  %i.co = getelementptr i8, ptr %i.ck, i64 8
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !26
  store ptr %0, ptr %i.ck, align 8, !tbaa !83
  %i.cp = load i8, ptr %i.c, align 2, !tbaa !26
  %i.cq = zext i8 %i.cp to i32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.cs = add nuw nsw i32 %i.cr, %i.cq            ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !83 ; 3 uses
  %i.cv = zext nneg i32 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !83
  %i.cx = trunc i32 %i.cs to i8
  %i.cy = getelementptr i8, ptr %i.cu, i64 8
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !26
  store ptr %0, ptr %i.cu, align 8, !tbaa !83
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !372

bb.c:                                             ; preds = %.lr.ph60, %bb.c
  %indvars.iv62 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next63, %bb.c ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv62
  %i.cz = load ptr, ptr %gep, align 8, !tbaa !83  ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv62
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !83
  %i.db = trunc i64 %indvars.iv62 to i8
  %i.dc = getelementptr i8, ptr %i.cz, i64 8
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !26
  store ptr %2, ptr %i.cz, align 8, !tbaa !83
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %i.dd = load i8, ptr %i.al, align 1, !tbaa !26
  %i.de = zext i8 %i.dd to i32
  %i.df = sub nsw i32 %i.de, %1
  %i.dg = sext i32 %i.df to i64
  %.not.not = icmp slt i64 %indvars.iv62, %i.dg
  br i1 %.not.not, label %bb.c, label %.loopexit, !llvm.loop !373

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !26
  %i.di = trunc i32 %1 to i8                      ; 2 uses
  %i.dj = add i8 %i.dh, %i.di
  store i8 %i.dj, ptr %i.c, align 2, !tbaa !26
  %i.dk = load i8, ptr %i.al, align 1, !tbaa !26
  %i.dl = sub i8 %i.dk, %i.di
  store i8 %i.dl, ptr %i.al, align 1, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_left_to_rightEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26    ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  %i.g = shl nuw nsw i64 %i.e, 32
  %sext.i = add nsw i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext.i, 30               ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h ; 4 uses
  %.neg.i = mul nsw i64 %i.e, -4
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.neg.i
  %.not16.i = icmp eq i8 %i.d, 0
  br i1 %.not16.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.k = zext i32 %1 to i64
  %i.l = add nuw nsw i64 %i.e, %i.k
  %i.m = shl i64 %i.l, 32
  %sext15.i = add i64 %i.m, -4294967296
  %i.n = ashr exact i64 %sext15.i, 30             ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 %i.n ; 3 uses
  %i.p = lshr exact i64 %i.h, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 44
  %4 = sub nsw i64 %i.n, %i.h
  %diff.check = icmp ugt i64 %4, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.q, 9223372036854775800      ; 3 uses
  %i.r = mul i64 %n.vec, -4                       ; 2 uses
  %i.s = getelementptr i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr i8, ptr %i.i, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.u ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.i, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep61, i64 -12
  %i.w = getelementptr i8, ptr %next.gep61, i64 -28
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !28
  %wide.load62 = load <4 x i32>, ptr %i.w, align 4, !tbaa !28
  %i.x = getelementptr i8, ptr %next.gep, i64 -12
  %i.y = getelementptr i8, ptr %next.gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.x, align 4, !tbaa !28
  store <4 x i32> %wide.load62, ptr %i.y, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.018.i.ph = phi ptr [ %i.o, %.lr.ph.preheader.i ], [ %i.s, %middle.block ]
  %.01417.i.ph = phi ptr [ %i.i, %.lr.ph.preheader.i ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.018.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01417.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.01417.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aa = load i32, ptr %.01417.i, align 4, !tbaa !28
  store i32 %i.aa, ptr %.018.i, align 4, !tbaa !28
  %i.ab = getelementptr inbounds i8, ptr %.01417.i, i64 -4 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.018.i, i64 -4
  %.not.i = icmp eq ptr %i.ab, %i.j
  br i1 %.not.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i, !llvm.loop !375

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.ad = add nsw i32 %1, -1                      ; 3 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !26
  %i.ah = zext i8 %i.ag to i64
  %i.ai = load ptr, ptr %0, align 8, !tbaa !83
  %i.aj = shl nsw i64 %i.ae, 2                    ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.f, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 2 uses
  %sext4.i = shl nuw nsw i64 %i.ah, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %sext4.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !28
  %i.ao = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !26  ; 2 uses
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %i.ar = sub nsw i32 %i.aq, %i.ad
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.au = shl nsw i64 %i.as, 2
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aj
  %.not14.i = icmp eq i32 %i.ad, 0
  br i1 %.not14.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %i.ax = add nsw i64 %i.aj, -4                   ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.ax, 76
  br i1 %min.iters.check67, label %.lr.ph.i48.preheader81, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.lr.ph.i48.preheader
  %i.ba = add i64 %i.aj, %i.b
  %i.bb = zext i8 %i.ap to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = add i64 %i.bc, %i.a
  %i.be = sub i64 %i.bd, %i.ba
  %diff.check65 = icmp ugt i64 %i.be, -32
  br i1 %diff.check65, label %.lr.ph.i48.preheader81, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck64
  %n.vec69 = and i64 %i.az, 9223372036854775800   ; 3 uses
  %i.bf = shl i64 %n.vec69, 2                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.f, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bf
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.bi = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.f, i64 %i.bi ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.av, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !28
  %wide.load75 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !28
  %i.bk = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x i32> %wide.load74, ptr %next.gep72, align 4, !tbaa !28
  store <4 x i32> %wide.load75, ptr %i.bk, align 4, !tbaa !28
  %index.next76 = add nuw i64 %index71, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bl, label %middle.block77, label %vector.body70, !llvm.loop !376

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.az, %n.vec69
  br i1 %cmp.n78, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48.preheader81

.lr.ph.i48.preheader81:                           ; preds = %vector.memcheck64, %.lr.ph.i48.preheader, %middle.block77
  %.016.i.ph = phi ptr [ %i.f, %vector.memcheck64 ], [ %i.f, %.lr.ph.i48.preheader ], [ %i.bg, %middle.block77 ]
  %.01215.i.ph = phi ptr [ %i.av, %vector.memcheck64 ], [ %i.av, %.lr.ph.i48.preheader ], [ %i.bh, %middle.block77 ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader81, %.lr.ph.i48
  %.016.i = phi ptr [ %i.bo, %.lr.ph.i48 ], [ %.016.i.ph, %.lr.ph.i48.preheader81 ] ; 2 uses
  %.01215.i = phi ptr [ %i.bn, %.lr.ph.i48 ], [ %.01215.i.ph, %.lr.ph.i48.preheader81 ] ; 2 uses
  %i.bm = load i32, ptr %.01215.i, align 4, !tbaa !28
  store i32 %i.bm, ptr %.016.i, align 4, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.016.i, i64 4
  %.not.i49 = icmp eq ptr %i.bn, %i.aw
  br i1 %.not.i49, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !377

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block77
  %.pre = load i8, ptr %i.ao, align 2, !tbaa !26
  %.pre60 = zext i8 %.pre to i32
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %.pre-phi = phi i32 [ %.pre60, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.aq, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit ]
  %i.bp = load i8, ptr %i.af, align 8, !tbaa !26
  %i.bq = zext i8 %i.bp to i64
  %i.br = sub nsw i32 %.pre-phi, %1
  %i.bs = sext i32 %i.br to i64
  %sext.i50 = shl nuw nsw i64 %i.bq, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 %sext.i50
  %i.bu = shl nsw i64 %i.bs, 2
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !28
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !28
  %i.bx = getelementptr i8, ptr %0, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !26
  %.not.i52 = icmp eq i8 %i.by, 0
  br i1 %.not.i52, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.bz = load i8, ptr %i.c, align 1, !tbaa !26   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 9 uses
  %i.cb = zext i8 %i.bz to i64                    ; 5 uses
  %i.cc = sext i32 %1 to i64                      ; 3 uses
  %i.cd = and i64 %i.cb, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cd, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.b
  %i.ce = add nsw i64 %i.cb, %i.cc                ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !83 ; 3 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.ce
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !83
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = getelementptr i8, ptr %i.cg, i64 8
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !26
  store ptr %2, ptr %i.cg, align 8, !tbaa !83
  %indvars.iv.next.prol = add nsw i64 %i.cb, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.b
  %indvars.iv.unr = phi i64 [ %i.cb, %bb.b ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ck = icmp eq i8 %i.bz, 0
  br i1 %i.ck, label %.preheader, label %.new

.preheader:                                       ; preds = %.new, %.prol.loopexit
  %.not4454 = icmp slt i32 %1, 1
  br i1 %.not4454, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cm = zext nneg i32 %1 to i64                 ; 2 uses
  %xtraiter82 = and i64 %i.cm, 1
  %i.cn = icmp eq i32 %1, 1
  br i1 %i.cn, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cm, 2147483646
  %invariant.op = sub i32 1, %1
  br label %bb.c

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.co = add nsw i64 %indvars.iv, %i.cc          ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !83 ; 3 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.co
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !83
  %i.cs = trunc i64 %i.co to i8
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !26
  store ptr %2, ptr %i.cq, align 8, !tbaa !83
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.cu = add nsw i64 %indvars.iv.next, %i.cc     ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !83 ; 3 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cu
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !83
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = getelementptr i8, ptr %i.cw, i64 8
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !26
  store ptr %2, ptr %i.cw, align 8, !tbaa !83
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.preheader, label %.new, !llvm.loop !378

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv57 = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next58.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.da = add nsw i64 %indvars.iv57, -1           ; 2 uses
  %i.db = load i8, ptr %i.ao, align 2, !tbaa !26
  %i.dc = zext i8 %i.db to i32
  %i.dd = trunc i64 %indvars.iv57 to i32
  %i.de = sub i32 %i.dd, %1
  %i.df = add i32 %i.de, %i.dc
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !83 ; 3 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.da
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !83
  %i.dk = trunc i64 %i.da to i8
end_hunk_0
