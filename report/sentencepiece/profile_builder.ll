Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/profile_builder?download=true
inline.NumInlined: 1869
inline.NumDeleted: 882
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSB_EE:bb.a
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.p, %i.t
  %narrow113 = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.u = icmp samesign ult i8 %narrow113, 15
  %or.cond = select i1 %.not84, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE23rebalance_right_to_leftEhPS5_PSaISt4pairIKmmEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v)
  %i.w = load i32, ptr %i.a, align 8, !tbaa !345
  %i.x = and i32 %i.w, 255
  %i.y = sub nsw i32 %i.x, %i.t                   ; 3 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !345
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.l, align 1, !tbaa !20
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20  ; 2 uses
  %i.ag = icmp ult i8 %i.f, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw i8 %i.f, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !86 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20  ; 3 uses
  %i.ao = icmp ult i8 %i.an, 15
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 15, %i.an
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !345 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i8
  %i.as = lshr i8 %narrow114, %i.ar
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.as, i8 1) ; 3 uses
  %i.at = and i32 %i.ap, 255
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.av = load i8, ptr %i.au, align 2, !tbaa !20
  %i.aw = zext i8 %i.av to i32
  %i.ax = zext nneg i8 %.sroa.speculated to i32
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %.not85 = icmp sle i32 %i.at, %i.ay
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.an
  %i.az = icmp samesign ult i8 %narrow115, 15
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.az
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE23rebalance_left_to_rightEhPS5_PSaISt4pairIKmmEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ba)
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !345 ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !20
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = icmp sgt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bh = xor i32 %i.bf, -1
  %i.bi = add nsw i32 %i.bb, %i.bh
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = icmp eq i8 %i.af, 15
  br i1 %i.bj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.bk = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !70
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !69
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !86    ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #24 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !86
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  store i32 0, ptr %i.bp, align 8
  store ptr %i.b, ptr %i.bq, align 8, !tbaa !86
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.br, align 8, !tbaa !20
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !86
  store ptr %i.bo, ptr %0, align 8, !tbaa !86
  %.pre = load ptr, ptr %1, align 8, !tbaa !86
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bs = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.083 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !20
  %.not116 = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !20
  %i.bx = add i8 %i.bw, 1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #24 ; 9 uses
  store ptr %.083, ptr %i.bz, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.ca, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  store i8 0, ptr %i.cb, align 1, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  store i8 0, ptr %i.cc, align 2, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  store i8 15, ptr %i.cd, align 1, !tbaa !20
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !345
  call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE5splitEiPS5_PSaISt4pairIKmmEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.ce, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.by)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !86
  %i.cg = load ptr, ptr %1, align 8, !tbaa !86
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !86
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ci = call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #24 ; 7 uses
  store ptr %.083, ptr %i.ci, align 8, !tbaa !86
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.bx, ptr %i.cj, align 8, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 0, ptr %i.cl, align 2, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  store i8 0, ptr %i.cm, align 1, !tbaa !20
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !345
  call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE5splitEiPS5_PSaISt4pairIKmmEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.cn, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ci, %bb.r ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !345 ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !86
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !20
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = icmp sgt i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cu = xor i32 %i.cs, -1
  %i.cv = add nsw i32 %i.co, %i.cu
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bi, %bb.k ], [ %i.ad, %bb.f ], [ %i.cv, %bb.t ]
  %.sink = phi ptr [ %i.al, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 8, !tbaa !345
  store ptr %.sink, ptr %1, align 8, !tbaa !86
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE16clear_and_deleteEPS5_PSaISt4pairIKmmEE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20    ; 2 uses
  %.not57 = icmp eq i8 %i.b, 0
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 4
  %i.e = add nuw nsw i64 %i.d, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %2 = load ptr, ptr %0, align 8, !tbaa !86
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04963 = phi ptr [ %i.j, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.04963, i64 256
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !346

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20
  %i.o = zext i8 %i.n to i64
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !86
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.o, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.p, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.147
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 11
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20    ; 2 uses
  %.not.i55 = icmp eq i8 %i.u, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.e

.lr.ph66:                                         ; preds = %bb.d, %.lr.ph66
  %.15065 = phi ptr [ %i.w, %.lr.ph66 ], [ %i.s, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %.15065, i64 256
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20    ; 2 uses
  %.not.i56 = icmp eq i8 %i.y, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !347

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = zext i8 %i.aa to i64
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !86
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.d
  %i.ad = phi i8 [ %i.y, %._crit_edge67 ], [ %i.u, %bb.d ]
  %.251 = phi ptr [ %i.w, %._crit_edge67 ], [ %i.s, %bb.d ]
  %.248 = phi i64 [ %i.ab, %._crit_edge67 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.ac, %._crit_edge67 ], [ %.1, %bb.d ] ; 3 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = add nuw nsw i64 %i.af, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ag) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20
  %i.aj = zext i8 %i.ai to i64
  %.not.not = icmp samesign ult i64 %.248, %i.aj
  br i1 %.not.not, label %.backedge, label %.preheader58

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.aq, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.am, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !348

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.am, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !20  ; 2 uses
  %i.am = load ptr, ptr %.3, align 8, !tbaa !86   ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 384) #22
  %i.an = icmp eq ptr %i.am, %2
  br i1 %i.an, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !20
  %.not = icmp ult i8 %i.al, %i.ap
  br i1 %.not, label %bb.g, label %.preheader58, !llvm.loop !349

bb.g:                                             ; preds = %bb.f
  %i.aq = zext i8 %i.al to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 384, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #22
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE23rebalance_right_to_leftEhPS5_PSaISt4pairIKmmEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !86     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.l = zext i8 %1 to i32                        ; 3 uses
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.n, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.m, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %i.i, %bb.a ]
  %.01214.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.o, %bb.a ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit.loopexit, label %.lr.ph.i, !llvm.loop !2

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !86
  %.pre60 = load i8, ptr %i.d, align 8, !tbaa !20
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit.loopexit ], [ %i.f, %bb.a ]
  %i.r = phi ptr [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit.loopexit ], [ %i.g, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.pre-phi
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 %i.x, %i.l
  %i.z = sext i32 %i.y to i64
  %i.aa = zext i8 %1 to i64                       ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.aa ; 2 uses
  %.idx.i44 = shl nuw nsw i64 %i.z, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.w, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit51, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.ae, %.lr.ph.i47 ], [ %i.o, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.ad, %.lr.ph.i47 ], [ %i.ab, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i48, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i49, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i48, i64 16
  %.not.i50 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i50, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit51, label %.lr.ph.i47, !llvm.loop !2

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit51: ; preds = %.lr.ph.i47, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %.not.i52 = icmp eq i8 %i.ag, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.aj = icmp eq i32 %i.m, 0
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aa, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.ak = load i8, ptr %i.a, align 2, !tbaa !20
  %i.al = trunc i64 %indvars.iv.epil.init to i8
  %i.am = add i8 %i.al, 1
  %i.an = add i8 %i.ak, %i.am                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.epil.init
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !86 ; 3 uses
  %i.aq = zext i8 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 %i.an, ptr %i.as, align 1, !tbaa !20
  store ptr %0, ptr %i.ap, align 8, !tbaa !86
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.at = load i8, ptr %i.v, align 1, !tbaa !20
  %.not55 = icmp ult i8 %i.at, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c
end_hunk_0
