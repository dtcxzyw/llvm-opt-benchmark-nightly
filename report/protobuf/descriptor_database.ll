Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/descriptor_database?download=true
inline.NumInlined: 6448
inline.NumDeleted: 2427
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSC_EE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !58    ; 3 uses
  %i.n = icmp ult i8 %i.m, 61
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !35
  %i.p = and i32 %i.o, 255                        ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 61
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.p, %i.t
  %narrow113 = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.u = icmp samesign ult i8 %narrow113, 61
  %or.cond = select i1 %.not84, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_right_to_leftEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v)
  %i.w = load i32, ptr %i.a, align 8, !tbaa !35
  %i.x = and i32 %i.w, 255
  %i.y = sub nsw i32 %i.x, %i.t                   ; 3 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !35
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.l, align 1, !tbaa !58
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !58  ; 2 uses
  %i.ag = icmp ult i8 %i.f, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw i8 %i.f, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !224 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !58  ; 3 uses
  %i.ao = icmp ult i8 %i.an, 61
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 61, %i.an
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i8
  %i.as = lshr i8 %narrow114, %i.ar
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.as, i8 1) ; 3 uses
  %i.at = and i32 %i.ap, 255
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.av = load i8, ptr %i.au, align 2, !tbaa !58
  %i.aw = zext i8 %i.av to i32
  %i.ax = zext nneg i8 %.sroa.speculated to i32
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %.not85 = icmp sle i32 %i.at, %i.ay
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.an
  %i.az = icmp samesign ult i8 %narrow115, 61
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.az
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_left_to_rightEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ba)
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !224
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !58
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = icmp sgt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bh = xor i32 %i.bf, -1
  %i.bi = add nsw i32 %i.bb, %i.bh
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = icmp eq i8 %i.af, 61
  br i1 %i.bj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bk = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !227
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !226
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !224   ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #31 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !224
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %1, align 8, !tbaa !224   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !224
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i8 0, ptr %i.bs, align 1, !tbaa !58
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !224
  store ptr %i.bo, ptr %0, align 8, !tbaa !224
  %.pre = load ptr, ptr %1, align 8, !tbaa !224
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bt = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 2 uses
  %.083 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !58
  %.not116 = icmp eq i8 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !58
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #31 ; 9 uses
  store ptr %.083, ptr %i.ca, align 8, !tbaa !224
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i8 %i.by, ptr %i.cb, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  store i8 0, ptr %i.cc, align 1, !tbaa !58
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  store i8 0, ptr %i.cd, align 2, !tbaa !58
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 11
  store i8 61, ptr %i.ce, align 1, !tbaa !58
  %i.cf = load ptr, ptr %1, align 8, !tbaa !224
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !35
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE5splitEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.cf, i32 noundef %i.cg, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.bz)
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !224
  %i.ci = load ptr, ptr %1, align 8, !tbaa !224
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !224
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ck = call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #31 ; 7 uses
  store ptr %.083, ptr %i.ck, align 8, !tbaa !224
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i8 %i.by, ptr %i.cl, align 8, !tbaa !58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 9
  store i8 0, ptr %i.cm, align 1, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 10
  store i8 0, ptr %i.cn, align 2, !tbaa !58
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 11
  store i8 0, ptr %i.co, align 1, !tbaa !58
  %i.cp = load ptr, ptr %1, align 8, !tbaa !224
  %i.cq = load i32, ptr %i.a, align 8, !tbaa !35
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE5splitEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, i32 noundef %i.cq, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.bz)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.ca, %bb.q ], [ %i.ca, %bb.p ], [ %i.ck, %bb.r ]
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !224
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !58
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = icmp sgt i32 %i.cr, %i.cv
  br i1 %i.cw, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cx = xor i32 %i.cv, -1
  %i.cy = add nsw i32 %i.cr, %i.cx
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink126 = phi i32 [ %i.bi, %bb.k ], [ %i.ad, %bb.f ], [ %i.cy, %bb.t ]
  %.sink = phi ptr [ %i.al, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink126, ptr %i.a, align 8, !tbaa !35
  store ptr %.sink, ptr %1, align 8, !tbaa !224
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_right_to_leftEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %2 to i64
  %5 = ptrtoaddr ptr %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !58
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !58
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !224    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.c ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4
  store i32 %i.l, ptr %i.i, align 1
  %i.m = zext i8 %1 to i32                        ; 3 uses
  %i.n = add nsw i32 %i.m, -1                     ; 3 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %.idx.i = shl nuw nsw i64 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.n, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.r = zext i8 %1 to i64
  %i.s = add nuw nsw i64 %i.r, 4611686018427387902
  %i.t = and i64 %i.s, 4611686018427387903        ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 19
  br i1 %min.iters.check, label %.lr.ph.i.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.v = shl nuw nsw i64 %i.c, 2
  %i.w = add i64 %i.v, %5
  %i.x = sub i64 %i.w, %4
  %i.y = add i64 %i.x, 3
  %diff.check = icmp ult i64 %i.y, 31
  br i1 %diff.check, label %.lr.ph.i.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.i, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.p, i64 %i.ac ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ae = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4
  %wide.load63 = load <4 x i32>, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.ad, align 1
  store <4 x i32> %wide.load63, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !683

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i.preheader81

.lr.ph.i.preheader81:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.pn.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader81, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader81 ]
  %.01214.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 4 ; 2 uses
  %i.ah = load i32, ptr %.01214.i, align 4
  store i32 %i.ah, ptr %.015.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !684

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !224
  %.pre60 = load i8, ptr %i.d, align 8, !tbaa !58
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.f, %bb.a ]
  %i.aj = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.g, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.pre-phi
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.an = load i32, ptr %i.am, align 4
  store i32 %i.an, ptr %i.al, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !58  ; 3 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.aq, %i.m
  %i.as = sext i32 %i.ar to i64
  %i.at = zext i8 %1 to i64                       ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.at ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.as, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ap, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.aw = zext i8 %i.ap to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = shl nuw nsw i64 %i.at, 2
  %i.az = add nsw i64 %i.ax, -4
  %i.ba = sub nsw i64 %i.az, %i.ay                ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.ba, 28
  br i1 %min.iters.check66, label %.lr.ph.i47.preheader80, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec68 = and i64 %i.bc, 9223372036854775800   ; 3 uses
  %i.bd = shl i64 %n.vec68, 2                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.p, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.au, i64 %i.bd
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 2 uses
  %i.bg = shl i64 %index70, 2                     ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.p, i64 %i.bg ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.au, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load73 = load <4 x i32>, ptr %next.gep72, align 4
  %wide.load74 = load <4 x i32>, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %next.gep71, i64 16
  store <4 x i32> %wide.load73, ptr %next.gep71, align 1
  store <4 x i32> %wide.load74, ptr %i.bi, align 1
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.bj, label %middle.block76, label %vector.body69, !llvm.loop !685

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %i.bc, %n.vec68
  br i1 %cmp.n77, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47.preheader80

.lr.ph.i47.preheader80:                           ; preds = %.lr.ph.i47.preheader, %middle.block76
  %.015.i48.ph = phi ptr [ %i.p, %.lr.ph.i47.preheader ], [ %i.be, %middle.block76 ]
  %.01214.i49.ph = phi ptr [ %i.au, %.lr.ph.i47.preheader ], [ %i.bf, %middle.block76 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader80, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.bm, %.lr.ph.i47 ], [ %.015.i48.ph, %.lr.ph.i47.preheader80 ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.bl, %.lr.ph.i47 ], [ %.01214.i49.ph, %.lr.ph.i47.preheader80 ] ; 2 uses
  %i.bk = load i32, ptr %.01214.i49, align 4
  store i32 %i.bk, ptr %.015.i48, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i48, i64 4
  %.not.i50 = icmp eq ptr %i.bl, %i.av
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47, !llvm.loop !686

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51: ; preds = %.lr.ph.i47, %middle.block76, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !58
  %.not.i52 = icmp eq i8 %i.bo, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.at, 1
  %i.br = icmp eq i32 %i.n, 0
  br i1 %i.br, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.at, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod82 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.bs = load i8, ptr %i.a, align 2, !tbaa !58
  %i.bt = trunc i64 %indvars.iv.epil.init to i8
  %i.bu = add i8 %i.bt, 1
  %i.bv = add i8 %i.bs, %i.bu                     ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.epil.init
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !224 ; 3 uses
  %i.by = zext i8 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.by
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !224
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 %i.bv, ptr %i.ca, align 1, !tbaa !58
  store ptr %0, ptr %i.bx, align 8, !tbaa !224
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cb = load i8, ptr %i.ao, align 1, !tbaa !58
  %.not55 = icmp ult i8 %i.cb, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cd = load i8, ptr %i.a, align 2, !tbaa !58
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next to i8
  %i.cf = add i8 %i.cd, %i.ce                     ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !224 ; 3 uses
  %i.ci = zext i8 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !224
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.cf, ptr %i.ck, align 1, !tbaa !58
  store ptr %0, ptr %i.ch, align 8, !tbaa !224
  %i.cl = load i8, ptr %i.a, align 2, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cm = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cn = add i8 %i.cl, %i.cm                     ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !224 ; 3 uses
  %i.cq = zext i8 %i.cn to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cq
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !224
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i8 %i.cn, ptr %i.cs, align 1, !tbaa !58
  store ptr %0, ptr %i.cp, align 8, !tbaa !224
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !687

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.da, %bb.c ] ; 4 uses
  %i.ct = add i8 %.056, %1
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !224 ; 3 uses
  %i.cx = zext i8 %.056 to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cx
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !224
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 %.056, ptr %i.cz, align 1, !tbaa !58
  store ptr %2, ptr %i.cw, align 8, !tbaa !224
  %i.da = add i8 %.056, 1                         ; 2 uses
  %i.db = zext i8 %i.da to i32
  %i.dc = load i8, ptr %i.ao, align 1, !tbaa !58
  %i.dd = zext i8 %i.dc to i32
  %i.de = sub nsw i32 %i.dd, %i.m
  %.not = icmp slt i32 %i.de, %i.db
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !688

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51
  %i.df = load i8, ptr %i.a, align 2, !tbaa !58
  %i.dg = add i8 %i.df, %1
  store i8 %i.dg, ptr %i.a, align 2, !tbaa !58
  %i.dh = load i8, ptr %i.ao, align 1, !tbaa !58
  %i.di = sub i8 %i.dh, %1
  store i8 %i.di, ptr %i.ao, align 1, !tbaa !58
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_left_to_rightEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %2 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !58    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 2               ; 2 uses
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %i.e ; 3 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i  ; 3 uses
  %i.j = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.l, 9223372036854775800      ; 3 uses
  %i.m = mul i64 %n.vec, -4                       ; 2 uses
  %i.n = getelementptr i8, ptr %i.h, i64 %i.m
  %i.o = getelementptr i8, ptr %i.i, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.p ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.i, i64 %i.p ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %next.gep65, i64 -16
  %i.r = getelementptr inbounds i8, ptr %next.gep65, i64 -32
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load66 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.t = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.s, align 1
  store <4 x i32> %wide.load66, ptr %i.t, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.017.i.ph = phi ptr [ %i.h, %.lr.ph.preheader.i ], [ %i.n, %middle.block ]
  %.01416.i.ph = phi ptr [ %i.i, %.lr.ph.preheader.i ], [ %i.o, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.017.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.017.i.ph, %.lr.ph.i.preheader ]
  %.01416.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.01416.i.ph, %.lr.ph.i.preheader ]
  %i.v = getelementptr inbounds i8, ptr %.017.i, i64 -4 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4
  store i32 %i.x, ptr %i.v, align 1
  %.not.i = icmp eq ptr %i.w, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i, !llvm.loop !690

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.y = add nsw i32 %i.c, -1                     ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !58
  %i.ac = zext i8 %i.ab to i64
  %i.ad = load ptr, ptr %0, align 8, !tbaa !224
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ac
  %i.ah = load i32, ptr %i.ag, align 4
  store i32 %i.ah, ptr %i.ae, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !58  ; 2 uses
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = sub nsw i32 %i.ak, %i.y
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.am ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.z, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.y, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %i.aq = zext i8 %1 to i64
  %i.ar = add nuw nsw i64 %i.aq, 4611686018427387902
  %i.as = and i64 %i.ar, 4611686018427387903      ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check69 = icmp samesign ult i64 %i.as, 31
  br i1 %min.iters.check69, label %.lr.ph.i48.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %6 = zext i8 %1 to i64
  %i.au = shl nuw nsw i64 %6, 2
  %7 = add i64 %i.au, %5
  %i.av = zext i8 %i.aj to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = add i64 %i.aw, %4
  %i.ay = sub i64 %7, %i.ax
  %i.az = add i64 %i.ay, -5
  %diff.check = icmp ult i64 %i.az, 31
  br i1 %diff.check, label %.lr.ph.i48.preheader83, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck
  %n.vec71 = and i64 %i.at, 9223372036854775800   ; 3 uses
  %i.ba = shl i64 %n.vec71, 2                     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.d, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.ao, i64 %i.ba
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next78, %vector.body72 ] ; 2 uses
  %i.bd = shl i64 %index73, 2                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.d, i64 %i.bd ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.ao, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <4 x i32>, ptr %next.gep75, align 4
  %wide.load77 = load <4 x i32>, ptr %i.be, align 4
  %i.bf = getelementptr i8, ptr %next.gep74, i64 16
  store <4 x i32> %wide.load76, ptr %next.gep74, align 1
  store <4 x i32> %wide.load77, ptr %i.bf, align 1
  %index.next78 = add nuw i64 %index73, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next78, %n.vec71
  br i1 %i.bg, label %middle.block79, label %vector.body72, !llvm.loop !691

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.at, %n.vec71
  br i1 %cmp.n80, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48.preheader83

.lr.ph.i48.preheader83:                           ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block79
  %.015.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i48.preheader ], [ %i.bb, %middle.block79 ]
  %.01214.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i48.preheader ], [ %i.bc, %middle.block79 ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader83, %.lr.ph.i48
  %.015.i = phi ptr [ %i.bj, %.lr.ph.i48 ], [ %.015.i.ph, %.lr.ph.i48.preheader83 ] ; 2 uses
  %.01214.i = phi ptr [ %i.bi, %.lr.ph.i48 ], [ %.01214.i.ph, %.lr.ph.i48.preheader83 ] ; 2 uses
  %i.bh = load i32, ptr %.01214.i, align 4
  store i32 %i.bh, ptr %.015.i, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i49 = icmp eq ptr %i.bi, %i.ap
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !692

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block79
  %.pre = load i8, ptr %i.ai, align 2, !tbaa !58
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.ak, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit ]
  %i.bk = load ptr, ptr %0, align 8, !tbaa !224
  %i.bl = load i8, ptr %i.aa, align 8, !tbaa !58
  %i.bm = zext i8 %i.bl to i64
  %i.bn = sub nsw i32 %.pre-phi, %i.c
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bm
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4
  store i32 %i.bs, ptr %i.bq, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !58
  %.not.i50 = icmp eq i8 %i.bu, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.bv = load i8, ptr %i.a, align 1, !tbaa !58   ; 5 uses
  %i.bw = add i8 %i.bv, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.bw, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.by = zext i8 %i.bw to i64                    ; 2 uses
  %i.bz = and i8 %i.bv, 1
  %lcmp.mod.not.not = icmp eq i8 %i.bz, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ca = add i8 %i.bv, %1                        ; 2 uses
  %i.cb = zext i8 %i.bv to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !224 ; 3 uses
  %i.ce = zext i8 %i.ca to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ce
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !224
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i8 %i.ca, ptr %i.cg, align 1, !tbaa !58
  store ptr %2, ptr %i.cd, align 8, !tbaa !224
  %indvars.iv.next.prol = add nsw i64 %i.by, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.by, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ch = icmp eq i8 %i.bv, 0
  br i1 %i.ch, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ck = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.ck, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.cl = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter84 = and i64 %i.cl, 1
  %i.cm = icmp ult i8 %i.ck, 3
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.cl, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.cn = trunc nuw i64 %indvars.iv to i8
  %i.co = add i8 %i.cn, -1                        ; 2 uses
  %i.cp = add i8 %i.co, %1                        ; 2 uses
  %i.cq = zext i8 %i.co to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !224 ; 3 uses
  %i.ct = zext i8 %i.cp to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ct
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !224
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 %i.cp, ptr %i.cv, align 1, !tbaa !58
  store ptr %2, ptr %i.cs, align 8, !tbaa !224
  %i.cw = trunc i64 %indvars.iv to i8
  %i.cx = add i8 %i.cw, -2                        ; 2 uses
  %i.cy = add i8 %i.cx, %1                        ; 2 uses
  %i.cz = zext i8 %i.cx to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !224 ; 3 uses
  %i.dc = zext i8 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dc
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !224
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 %i.cy, ptr %i.de, align 1, !tbaa !58
  store ptr %2, ptr %i.db, align 8, !tbaa !224
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.df = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.df, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !693

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.dg = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dh = load i8, ptr %i.ai, align 2, !tbaa !58
  %i.di = trunc nuw i64 %indvars.iv58 to i8
  %i.dj = sub i8 %i.di, %1
  %i.dk = add i8 %i.dj, %i.dh
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !224 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dg
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !224
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = trunc nuw i64 %i.dg to i8
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !58
  store ptr %2, ptr %i.dn, align 8, !tbaa !224
  %i.dr = load i8, ptr %i.ai, align 2, !tbaa !58
  %i.ds = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.ds, %invariant.op
  %i.dt = add i8 %.reass, %i.dr
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !224 ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv58
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !224
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !58
  store ptr %2, ptr %i.dw, align 8, !tbaa !224
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !694

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.cl to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ea = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.eb = load i8, ptr %i.ai, align 2, !tbaa !58
  %i.ec = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ed = sub i8 %i.ec, %1
  %i.ee = add i8 %i.ed, %i.eb
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !224 ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ea
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !224
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = trunc nuw i64 %i.ea to i8
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !58
  store ptr %2, ptr %i.eh, align 8, !tbaa !224
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.el = load i8, ptr %i.ai, align 2, !tbaa !58
  %i.em = sub i8 %i.el, %1
  store i8 %i.em, ptr %i.ai, align 2, !tbaa !58
  %i.en = load i8, ptr %i.a, align 1, !tbaa !58
  %i.eo = add i8 %i.en, %1
  store i8 %i.eo, ptr %i.a, align 1, !tbaa !58
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE5splitEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 61, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !58
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !58
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !58
  %i.l = load i8, ptr %i.j, align 1, !tbaa !58    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.m, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.s = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.t = lshr exact i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 76
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.v = shl nuw nsw i64 %i.n, 2
  %i.w = add i64 %i.v, %4
  %i.x = sub i64 %i.w, %5
  %diff.check = icmp ugt i64 %i.x, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep36, align 4
  %wide.load37 = load <4 x i32>, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load37, ptr %i.ad, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !695

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.015.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader.i ], [ %i.z, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.preheader.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.af = load i32, ptr %.01214.i, align 4
  store i32 %i.af, ptr %.015.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !696

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.h, align 1, !tbaa !58
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %bb.d
  %i.ai = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.aj = add i8 %i.ai, -1                        ; 2 uses
  store i8 %i.aj, ptr %i.h, align 1, !tbaa !58
  %i.ak = load ptr, ptr %0, align 8, !tbaa !224   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !58  ; 4 uses
  %i.an = zext i8 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.an
  %i.ap = zext i8 %i.am to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 10 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !58  ; 3 uses
  %i.as = icmp ult i8 %i.am, %i.ar
  %i.at = zext i8 %i.am to i64                    ; 4 uses
  br i1 %i.as, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %narrow.i = sub nuw i8 %i.ar, %i.am
  %i.aw = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.aw, 2
  %i.ax = getelementptr i8, ptr %i.av, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ax, ptr align 4 %i.av, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.aq, align 1, !tbaa !58
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.ay = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.ar, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.at
  %i.bb = load i32, ptr %i.ao, align 4, !tbaa !35
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !35
  %i.bc = add i8 %i.ay, 1                         ; 3 uses
  store i8 %i.bc, ptr %i.aq, align 1, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !58
  %.not.i18.i = icmp eq i8 %i.be, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i
  %i.bf = zext i8 %i.bc to i32
  %i.bg = add nuw nsw i32 %i.ap, 1                ; 2 uses
  %i.bh = icmp samesign ult i32 %i.bg, %i.bf
  br i1 %i.bh, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 256 ; 10 uses
  %i.bj = zext i8 %i.bc to i64                    ; 4 uses
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = xor i64 %i.at, -1
  %i.bm = add nsw i64 %i.bl, %i.bj
  %i.bn = add nsw i64 %i.bj, -2
  %i.bo = sub nsw i64 %i.bn, %i.at
  %xtraiter = and i64 %i.bm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i27, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.bp, %.prol.preheader ], [ %i.bj, %.lr.ph.i27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i27 ]
  %i.bp = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !224 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.prol
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !224
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !58
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !697

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i27
  %indvars.iv.unr = phi i64 [ %i.bj, %.lr.ph.i27 ], [ %i.bp, %.prol.preheader ]
  %i.bv = icmp ult i64 %i.bo, 3
  br i1 %i.bv, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit, label %.lr.ph.i27.new

.lr.ph.i27.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i27.new
  %indvars.iv = phi i64 [ %i.co, %.lr.ph.i27.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.bw = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !224 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !224
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = trunc nuw i64 %indvars.iv to i8
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !58
  %i.cc = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !224 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bw
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !224
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = trunc nuw i64 %i.bw to i8
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !58
  %i.ci = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !224 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cc
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !224
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = trunc nuw i64 %i.cc to i8
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !58
  %i.co = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !224 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ci
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !224
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = trunc nuw i64 %i.ci to i8
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !58
  %.wide.3 = icmp ugt i64 %i.co, %i.bk
  br i1 %.wide.3, label %.lr.ph.i27.new, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit, !llvm.loop !698

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i27.new, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i, %bb.e
  %i.cu = load ptr, ptr %0, align 8, !tbaa !224
  %i.cv = load i8, ptr %i.al, align 8, !tbaa !58
  %i.cw = add i8 %i.cv, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 256
  %i.cy = zext i8 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  store ptr %2, ptr %i.cz, align 8, !tbaa !224
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.db = load i8, ptr %i.da, align 1, !tbaa !58
  %.not.i28 = icmp eq i8 %i.db, 0
  br i1 %.not.i28, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit
  %i.dc = load i8, ptr %i.h, align 2, !tbaa !58
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.0.in30 = phi i8 [ %i.dc, %bb.f ], [ %.0, %bb.g ]
  %.02529 = phi i8 [ 0, %bb.f ], [ %i.dl, %bb.g ] ; 3 uses
  %.0 = add i8 %.0.in30, 1                        ; 2 uses
  %i.df = zext i8 %.0 to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !224 ; 3 uses
  %i.di = zext i8 %.02529 to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.di
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !224
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i8 %.02529, ptr %i.dk, align 1, !tbaa !58
  store ptr %2, ptr %i.dh, align 8, !tbaa !224
  %i.dl = add i8 %.02529, 1                       ; 2 uses
  %i.dm = load i8, ptr %i.j, align 1, !tbaa !58
  %.not = icmp ugt i8 %i.dl, %i.dm
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !699

end_hunk_0
