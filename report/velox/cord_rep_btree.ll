Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/cord_rep_btree?download=true
inline.NumInlined: 756
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count.i = zext i8 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01416.i = phi ptr [ %0, %.lr.ph.i ], [ %i.o, %bb.d ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i, i64 8
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %.critedge.loopexit.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  store ptr %.01416.i, ptr %i.i, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i, i64 14
  %i.k = load i8, ptr %i.j, align 2
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.c, !llvm.loop !0

.critedge.thread.i:                               ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load atomic i32, ptr %i.p acquire, align 4
  %i.r = icmp eq i32 %i.q, 2
  %i.s = zext i1 %i.r to i32
  %i.t = add nuw nsw i32 %i.s, %i.d               ; 2 uses
  store i32 %i.t, ptr %4, align 8, !tbaa !30
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit

.critedge.loopexit.i:                             ; preds = %bb.c
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.b
  %.014.lcssa.i = phi ptr [ %0, %bb.b ], [ %.01416.i, %.critedge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.u, %.critedge.loopexit.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.w = load atomic i32, ptr %i.v acquire, align 4
  %i.x = icmp eq i32 %i.w, 2
  %i.y = zext i1 %i.x to i32
  %i.z = add nuw nsw i32 %.0.lcssa.i, %i.y        ; 4 uses
  store i32 %i.z, ptr %4, align 8, !tbaa !30
  %i.aa = icmp slt i32 %.0.lcssa.i, %i.d
  br i1 %i.aa, label %.lr.ph24.i, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit

.lr.ph24.i:                                       ; preds = %.critedge.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ac = zext i32 %.0.lcssa.i to i64             ; 4 uses
  %wide.trip.count = zext i8 %i.c to i64          ; 3 uses
  %i.ad = sub nsw i64 %wide.trip.count, %i.ac
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph24.i, %.prol.preheader
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %.prol.preheader ], [ %i.ac, %.lr.ph24.i ] ; 2 uses
  %.11522.i.prol = phi ptr [ %i.ak, %.prol.preheader ], [ %.014.lcssa.i, %.lr.ph24.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph24.i ]
  %indvars.iv.next28.i.prol = add nuw nsw i64 %indvars.iv27.i.prol, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv27.i.prol
  store ptr %.11522.i.prol, ptr %i.ae, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %.11522.i.prol, i64 14
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.11522.i.prol, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !79

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph24.i
  %.lcssa178.unr = phi ptr [ poison, %.lr.ph24.i ], [ %i.ak, %.prol.preheader ]
  %indvars.iv27.i.unr = phi i64 [ %i.ac, %.lr.ph24.i ], [ %indvars.iv.next28.i.prol, %.prol.preheader ]
  %.11522.i.unr = phi ptr [ %.014.lcssa.i, %.lr.ph24.i ], [ %i.ak, %.prol.preheader ]
  %i.al = sub nsw i64 %i.ac, %wide.trip.count
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new

.lr.ph24.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph24.i.new
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %.lr.ph24.i.new ], [ %indvars.iv27.i.unr, %.prol.loopexit ] ; 5 uses
  %.11522.i = phi ptr [ %i.br, %.lr.ph24.i.new ], [ %.11522.i.unr, %.prol.loopexit ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %i.an, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %.11522.i, i64 14
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.11522.i, i64 16
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !27 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv27.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.at, ptr %i.av, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv27.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 14
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !27 ; 3 uses
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv27.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 14
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !27 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next28.i.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new, !llvm.loop !1

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit: ; preds = %.prol.loopexit, %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %i.bs = phi i32 [ %i.z, %.critedge.i ], [ %i.t, %.critedge.thread.i ], [ %i.z, %.lr.ph24.i.new ], [ %i.z, %.prol.loopexit ] ; 2 uses
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.o, %.critedge.thread.i ], [ %.lcssa178.unr, %.prol.loopexit ], [ %i.br, %.lr.ph24.i.new ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 14 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !16
  %i.by = zext i8 %i.bx to i64
  %i.bz = sub nsw i64 %i.bv, %i.by
  %i.ca = icmp ult i64 %i.bz, 6
  br i1 %i.ca, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %i.cb = icmp sgt i32 %i.bs, %i.d                ; 3 uses
  br i1 %i.cb, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cc = load i64, ptr %.115.lcssa.i, align 8, !tbaa !22
  %i.cd = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 2, ptr %i.ce, align 4, !tbaa !32
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.cf, ptr noundef nonnull align 4 dereferenceable(52) %i.cg, i64 52, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 16 ; 2 uses
  %i.ci = load i8, ptr %i.bw, align 2, !tbaa !16  ; 2 uses
  %i.cj = load i8, ptr %i.bt, align 1, !tbaa !16  ; 2 uses
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ck
  %.not10.i.i = icmp eq i8 %i.ci, %i.cj
  br i1 %.not10.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cm = zext i8 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cm
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.cn, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.co = load ptr, ptr %.011.i.i, align 8, !tbaa !27, !nonnull !34, !noundef !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = atomicrmw add ptr %i.cp, i32 2 monotonic, align 4 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cr, %i.cl
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit: ; preds = %.lr.ph.i.i, %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %.115.lcssa.i, %bb.e ], [ %i.cd, %bb.f ], [ %i.cd, %.lr.ph.i.i ] ; 10 uses
  %.sroa.3.0.i = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %.lr.ph.i.i ]
  %i.cs = tail call { i64, ptr } @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEESt17basic_string_viewIcSt11char_traitsIcEES8_m(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i, i64 %1, ptr %2, i64 noundef %3) ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0      ; 3 uses
  %i.cu = extractvalue { i64, ptr } %i.cs, 1
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cw = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !22
  %i.cx = add i64 %i.cw, %1
  store i64 %i.cx, ptr %.sroa.0.0.i, align 8, !tbaa !22
  %i.cy = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull %0, i32 noundef %i.d, i64 noundef %1, ptr nonnull %.sroa.0.0.i, i32 %.sroa.3.0.i)
  br label %bb.q

bb.g:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cz = sub i64 %1, %i.ct                       ; 5 uses
  %i.da = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !22
  %i.db = add i64 %i.da, %i.cz
  store i64 %i.db, ptr %.sroa.0.0.i, align 8, !tbaa !22
  br i1 %.not91, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %i.dc = zext i8 %i.c to i64                     ; 6 uses
  %i.dd = add nsw i32 %i.d, -1
  %i.de = zext nneg i32 %i.dd to i64              ; 3 uses
  %i.df = getelementptr [8 x i8], ptr %4, i64 %i.dc ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !25 ; 4 uses
  %i.dh = sext i32 %i.bs to i64                   ; 2 uses
  br i1 %i.cb, label %.loopexit126.i.i, label %bb.i

.split.i.i:                                       ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i
  %indvars.iv.next63.jt1.i.i = add nsw i64 %indvars.iv6275105.i.i, -1 ; 2 uses
  %indvars.iv.next.jt1.i.i = add nsw i64 %indvars.iv.next8899.i.i, -1 ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next8899.i.i ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !25 ; 3 uses
  %.not46.jt1.i.i = icmp sgt i64 %indvars.iv.next8899.i.i, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 14 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i64                    ; 2 uses
  br i1 %.not46.jt1.i.i, label %.preheader, label %.loopexit93

bb.h:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i
  %indvars.iv.next63.jt0.i.i = add nsw i64 %indvars.iv6275104.i.i, -1
  %i.dn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next8898.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !25
  br label %.loopexit126.i.i

bb.i:                                             ; preds = %.preheader.i.i
  %.not46.i.i = icmp sgt i64 %i.dc, %i.dh
  %indvars.iv.next.i.i = add nsw i64 %i.dc, -1    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 14 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i64                    ; 2 uses
  br i1 %.not46.i.i, label %.preheader, label %.loopexit93

.loopexit93:                                      ; preds = %.split.i.i, %bb.i
  %i.ds = phi i64 [ %i.dr, %bb.i ], [ %i.dm, %.split.i.i ]
  %indvars.iv6275104.i.i = phi i64 [ %i.de, %bb.i ], [ %indvars.iv.next63.jt1.i.i, %.split.i.i ]
  %indvars.iv81102.i.i = phi i64 [ %i.dc, %bb.i ], [ %indvars.iv.next8899.i.i, %.split.i.i ]
  %.sroa.024.086100.i.i = phi ptr [ %.sroa.0.0.i, %bb.i ], [ %i.eg, %.split.i.i ]
  %indvars.iv.next8898.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.i ], [ %indvars.iv.next.jt1.i.i, %.split.i.i ] ; 2 uses
  %i.dt = phi ptr [ %i.df, %bb.i ], [ %i.di, %.split.i.i ]
  %i.du = phi ptr [ %i.dg, %bb.i ], [ %i.dj, %.split.i.i ] ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !27 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = atomicrmw sub ptr %i.dy, i32 2 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.dz, 2
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i, !prof !35

bb.j:                                             ; preds = %.loopexit93
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.dx)
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i

.preheader:                                       ; preds = %bb.i, %.split.i.i
  %i.ea = phi i64 [ %i.dm, %.split.i.i ], [ %i.dr, %bb.i ]
  %i.eb = phi ptr [ %i.dk, %.split.i.i ], [ %i.dp, %bb.i ]
  %indvars.iv6275105.i.i = phi i64 [ %indvars.iv.next63.jt1.i.i, %.split.i.i ], [ %i.de, %bb.i ]
  %indvars.iv81103.i.i = phi i64 [ %indvars.iv.next8899.i.i, %.split.i.i ], [ %i.dc, %bb.i ]
  %.sroa.024.086101.i.i = phi ptr [ %i.eg, %.split.i.i ], [ %.sroa.0.0.i, %bb.i ]
  %indvars.iv.next8899.i.i = phi i64 [ %indvars.iv.next.jt1.i.i, %.split.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 5 uses
  %i.ec = phi ptr [ %i.di, %.split.i.i ], [ %i.df, %bb.i ]
  %i.ed = phi ptr [ %i.dj, %.split.i.i ], [ %i.dg, %bb.i ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 15
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !22 ; 2 uses
  %i.eg = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 2, ptr %i.eh, align 4, !tbaa !32
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ei, ptr noundef nonnull align 4 dereferenceable(52) %i.ej, i64 52, i1 false)
  %i.ek = load i8, ptr %i.eb, align 1, !tbaa !16
  %i.el = zext i8 %i.ek to i64
  %i.em = load i8, ptr %i.ee, align 1, !tbaa !16
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.el, 3
  %.idx22.i.i.i = shl nuw nsw i64 %i.en, 3        ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx22.i.i.i
  %i.eq = add nuw nsw i64 %.idx.i.i.i, 8          ; 2 uses
  %.not20.i.i.i = icmp samesign eq i64 %i.eq, %.idx22.i.i.i
  br i1 %.not20.i.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader
  %.019.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eq
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.021.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.019.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.er = load ptr, ptr %.021.i.i.i, align 8, !tbaa !27, !nonnull !34, !noundef !34
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = atomicrmw add ptr %i.es, i32 2 monotonic, align 4 ; 0 uses
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.ep
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i, label %.lr.ph.i.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre.i = load i64, ptr %i.eg, align 8, !tbaa !22
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i, %.preheader
  %i.eu = phi i64 [ %.pre.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i ], [ %i.ef, %.preheader ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ea
  store ptr %.sroa.024.086101.i.i, ptr %i.ew, align 8, !tbaa !27
  %i.ex = add i64 %i.eu, %i.cz
  store i64 %i.ex, ptr %i.eg, align 8, !tbaa !22
  store ptr %i.eg, ptr %i.ec, align 8, !tbaa !25
  %i.ey = icmp sgt i64 %indvars.iv81103.i.i, 1
  br i1 %i.ey, label %.split.i.i, label %.loopexit.thread115.i.i, !llvm.loop !80

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i: ; preds = %bb.j, %.loopexit93
  store ptr %.sroa.024.086100.i.i, ptr %i.dw, align 8, !tbaa !27
  %i.ez = load i64, ptr %i.du, align 8, !tbaa !22
  %i.fa = add i64 %i.ez, %i.cz
  store i64 %i.fa, ptr %i.du, align 8, !tbaa !22
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !25
  %5 = icmp sgt i64 %indvars.iv81102.i.i, 1
  br i1 %5, label %bb.h, label %.loopexit, !llvm.loop !80

.loopexit126.i.i:                                 ; preds = %.preheader.i.i, %bb.h
  %i.fb = phi ptr [ %i.do, %bb.h ], [ %i.dg, %.preheader.i.i ] ; 3 uses
  %indvars.iv80.i.i = phi i64 [ %indvars.iv.next8898.i.i, %bb.h ], [ %i.dc, %.preheader.i.i ]
  %indvars.iv6274.i.i = phi i64 [ %indvars.iv.next63.jt0.i.i, %bb.h ], [ %i.de, %.preheader.i.i ]
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !22
  %i.fd = add i64 %i.fc, %i.cz
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !22
  %6 = icmp sgt i64 %indvars.iv80.i.i, 1
  br i1 %6, label %.lr.ph.i.i68, label %.loopexit

.lr.ph.i.i68:                                     ; preds = %.loopexit126.i.i, %.lr.ph.i.i68
  %indvars.iv65.i.i = phi i64 [ %indvars.iv.next66.i.i, %.lr.ph.i.i68 ], [ %indvars.iv6274.i.i, %.loopexit126.i.i ] ; 3 uses
  %indvars.iv.next66.i.i = add nsw i64 %indvars.iv65.i.i, -1
  %i.fe = getelementptr [8 x i8], ptr %4, i64 %indvars.iv65.i.i
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !25 ; 3 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !22
  %i.fh = add i64 %i.fg, %i.cz
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !22
  %i.fi = icmp sgt i64 %indvars.iv65.i.i, 1
  br i1 %i.fi, label %.lr.ph.i.i68, label %.loopexit, !llvm.loop !81

.loopexit.i.i:                                    ; preds = %bb.g
  br i1 %i.cb, label %.loopexit, label %.loopexit.thread115.i.i

.loopexit.thread115.i.i:                          ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i, %.loopexit.i.i
  %.sroa.024.3118.i.i = phi ptr [ %.sroa.0.0.i, %.loopexit.i.i ], [ %i.eg, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = atomicrmw sub ptr %i.fj, i32 2 acq_rel, align 4
  %.not.i.i36.i.i = icmp eq i32 %i.fk, 2
  br i1 %.not.i.i36.i.i, label %bb.k, label %.loopexit, !prof !35

bb.k:                                             ; preds = %.loopexit.thread115.i.i
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i68, %.loopexit.i.i, %bb.k, %.loopexit.thread115.i.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i, %.loopexit126.i.i
  %.2.i.i = phi ptr [ %.sroa.024.3118.i.i, %bb.k ], [ %i.fb, %.loopexit126.i.i ], [ %i.du, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i ], [ %.sroa.0.0.i, %.loopexit.i.i ], [ %.sroa.024.3118.i.i, %.loopexit.thread115.i.i ], [ %i.ff, %.lr.ph.i.i68 ]
  %i.fl = add nuw nsw i32 %i.d, 1
  store i32 %i.fl, ptr %4, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %.sroa.11.0 = phi ptr [ %i.cu, %.loopexit ], [ %2, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.ct, %.loopexit ], [ %1, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 4 uses
  %.160 = phi ptr [ %.2.i.i, %.loopexit ], [ %0, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 2 uses
  %i.fm = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %.sroa.0.0, ptr %.sroa.11.0, i64 noundef %3) ; 3 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !22 ; 2 uses
  %.not106 = icmp eq i64 %i.fn, %.sroa.0.0
  br i1 %.not106, label %.thread85, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %bb.m

.thread85:                                        ; preds = %bb.p, %bb.l
  %.063.lcssa = phi i32 [ %i.d, %bb.l ], [ %i.fw, %bb.p ]
  %.261.lcssa = phi ptr [ %.160, %bb.l ], [ %i.ft, %bb.p ]
  %.lcssa94 = phi ptr [ %i.fm, %bb.l ], [ %i.hl, %bb.p ]
  %.lcssa = phi i64 [ %.sroa.0.0, %bb.l ], [ %.sroa.speculated.i.i, %bb.p ]
  %i.fp = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261.lcssa, i32 noundef %.063.lcssa, i64 noundef %.lcssa, ptr nonnull %.lcssa94, i32 2)
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph, %bb.p
  %i.fq = phi i64 [ %i.fn, %.lr.ph ], [ %i.hm, %bb.p ] ; 2 uses
  %i.fr = phi ptr [ %i.fm, %.lr.ph ], [ %i.hl, %bb.p ]
  %.261109 = phi ptr [ %.160, %.lr.ph ], [ %i.ft, %bb.p ]
  %.063108 = phi i32 [ %i.d, %.lr.ph ], [ %i.fw, %bb.p ]
  %.sroa.0.1107 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.speculated.i.i, %bb.p ] ; 2 uses
  %i.fs = sub i64 %.sroa.0.1107, %i.fq
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.1107, i64 %i.fs) ; 4 uses
  %i.ft = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261109, i32 noundef %.063108, i64 noundef %i.fq, ptr nonnull %i.fr, i32 2) ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 13
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !16  ; 4 uses
  %i.fw = zext i8 %i.fv to i32                    ; 3 uses
  %.not92 = icmp eq i8 %i.fv, 0
  br i1 %.not92, label %bb.p, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %bb.m
  %wide.trip.count.i72 = zext i8 %i.fv to i64     ; 2 uses
  %xtraiter182 = and i64 %wide.trip.count.i72, 3  ; 3 uses
  %i.fx = icmp ult i8 %i.fv, 4
  br i1 %i.fx, label %.epil.preheader, label %.lr.ph.i71.new

.lr.ph.i71.new:                                   ; preds = %.lr.ph.i71
  %unroll_iter = and i64 %wide.trip.count.i72, 252
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i71.new
  %indvars.iv.i73 = phi i64 [ 0, %.lr.ph.i71.new ], [ %indvars.iv.next.i74.3, %bb.n ] ; 5 uses
  %.067.i = phi ptr [ %i.ft, %.lr.ph.i71.new ], [ %i.hc, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i71.new ], [ %niter.next.3, %bb.n ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i73
  store ptr %.067.i, ptr %i.fy, align 8, !tbaa !25
  %i.fz = getelementptr inbounds nuw i8, ptr %.067.i, i64 14
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !27 ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i73
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !25
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 14
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gj
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !27 ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i73
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store ptr %i.gm, ptr %i.go, align 8, !tbaa !25
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 14
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !27 ; 3 uses
  %indvars.iv.next.i74.3 = add nuw nsw i64 %indvars.iv.i73, 4 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i73
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  store ptr %i.gu, ptr %i.gw, align 8, !tbaa !25
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 14
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gz
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !27 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.n, !llvm.loop !82

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.n
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i71
  %indvars.iv.i73.epil.init = phi i64 [ 0, %.lr.ph.i71 ], [ %indvars.iv.next.i74.3, %._crit_edge.loopexit.i.unr-lcssa ]
  %.067.i.epil.init = phi ptr [ %i.ft, %.lr.ph.i71 ], [ %i.hc, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter182, 0
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %indvars.iv.i73.epil = phi i64 [ %indvars.iv.i73.epil.init, %.epil.preheader ], [ %indvars.iv.next.i74.epil, %bb.o ] ; 2 uses
  %.067.i.epil = phi ptr [ %.067.i.epil.init, %.epil.preheader ], [ %i.hj, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %indvars.iv.next.i74.epil = add nuw nsw i64 %indvars.iv.i73.epil, 1
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i73.epil
  store ptr %.067.i.epil, ptr %i.hd, align 8, !tbaa !25
  %i.he = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 14
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 16
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !27
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter182
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.o, !llvm.loop !83

._crit_edge.loopexit.i:                           ; preds = %bb.o, %._crit_edge.loopexit.i.unr-lcssa
  %i.hk = add nuw nsw i32 %i.fw, 1
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.loopexit.i, %bb.m
  %.0.lcssa.i70 = phi i32 [ 1, %bb.m ], [ %i.hk, %._crit_edge.loopexit.i ]
  store i32 %.0.lcssa.i70, ptr %4, align 8, !tbaa !30
  %i.hl = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %.sroa.speculated.i.i, ptr %.sroa.11.0, i64 noundef %3) ; 3 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq i64 %i.hm, %.sroa.speculated.i.i
  br i1 %.not, label %.thread85, label %bb.m

bb.q:                                             ; preds = %.thread85, %.thread
  %.4 = phi ptr [ %i.fp, %.thread85 ], [ %i.cy, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.5 = phi ptr [ %.4, %bb.q ], [ %0, %bb.a ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEESt17basic_string_viewIcSt11char_traitsIcEES8_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16    ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = sub nsw i64 6, %i.c                      ; 2 uses
  %.not.i = icmp eq i8 %i.b, 6
  br i1 %.not.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !16
  %i.g = zext i8 %i.f to i64
  %i.h = add nsw i64 %i.d, %i.g                   ; 3 uses
  %i.i = trunc i64 %i.h to i8
  store i8 %i.i, ptr %i.e, align 2, !tbaa !16
  store i8 6, ptr %i.a, align 1, !tbaa !16
  %.not1415.i = icmp ugt i64 %i.h, 5
  br i1 %.not1415.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.016.i = phi i64 [ 5, %.lr.ph.i ], [ %.0.i, %bb.c ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  br i1 %.not107, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count.i = zext i8 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01416.i = phi ptr [ %0, %.lr.ph.i ], [ %i.n, %bb.d ] ; 4 uses
  %i.f = getelementptr i8, ptr %.01416.i, i64 8   ; 2 uses
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %.critedge.loopexit.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  store ptr %.01416.i, ptr %i.i, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i, i64 15
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr [8 x i8], ptr %i.f, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.c, !llvm.loop !3

.critedge.thread.i:                               ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic i32, ptr %i.o acquire, align 4
  %i.q = icmp eq i32 %i.p, 2
  %i.r = zext i1 %i.q to i32
  %i.s = add nuw nsw i32 %i.r, %i.d               ; 2 uses
  store i32 %i.s, ptr %4, align 8, !tbaa !37
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.critedge.loopexit.i:                             ; preds = %bb.c
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.b
  %.014.lcssa.i = phi ptr [ %0, %bb.b ], [ %.01416.i, %.critedge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.t, %.critedge.loopexit.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp eq i32 %i.v, 2
  %i.x = zext i1 %i.w to i32
  %i.y = add nuw nsw i32 %.0.lcssa.i, %i.x        ; 4 uses
  store i32 %i.y, ptr %4, align 8, !tbaa !37
  %i.z = icmp slt i32 %.0.lcssa.i, %i.d
  br i1 %i.z, label %.lr.ph24.i, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.lr.ph24.i:                                       ; preds = %.critedge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ab = zext i32 %.0.lcssa.i to i64             ; 4 uses
  %wide.trip.count = zext i8 %i.c to i64          ; 3 uses
  %i.ac = sub nsw i64 %wide.trip.count, %i.ab
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph24.i, %.prol.preheader
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %.prol.preheader ], [ %i.ab, %.lr.ph24.i ] ; 2 uses
  %.11522.i.prol = phi ptr [ %i.aj, %.prol.preheader ], [ %.014.lcssa.i, %.lr.ph24.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph24.i ]
  %indvars.iv.next28.i.prol = add nuw nsw i64 %indvars.iv27.i.prol, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i.prol
  store ptr %.11522.i.prol, ptr %i.ad, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %.11522.i.prol, i64 15
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr i8, ptr %.11522.i.prol, i64 8
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !86

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph24.i
  %.lcssa225.unr = phi ptr [ poison, %.lr.ph24.i ], [ %i.aj, %.prol.preheader ]
  %indvars.iv27.i.unr = phi i64 [ %i.ab, %.lr.ph24.i ], [ %indvars.iv.next28.i.prol, %.prol.preheader ]
  %.11522.i.unr = phi ptr [ %.014.lcssa.i, %.lr.ph24.i ], [ %i.aj, %.prol.preheader ]
  %i.ak = sub nsw i64 %i.ab, %wide.trip.count
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new

.lr.ph24.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph24.i.new
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %.lr.ph24.i.new ], [ %indvars.iv27.i.unr, %.prol.loopexit ] ; 5 uses
  %.11522.i = phi ptr [ %i.bq, %.lr.ph24.i.new ], [ %.11522.i.unr, %.prol.loopexit ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %.11522.i, i64 15
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr i8, ptr %.11522.i, i64 8
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !27 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.au, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 15
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr i8, ptr %i.as, i64 8
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 15
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.ba, i64 8
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !27 ; 3 uses
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 15
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr %i.bi, i64 8
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next28.i.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new, !llvm.loop !4

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit: ; preds = %.prol.loopexit, %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %i.br = phi i32 [ %i.y, %.critedge.i ], [ %i.s, %.critedge.thread.i ], [ %i.y, %.lr.ph24.i.new ], [ %i.y, %.prol.loopexit ] ; 2 uses
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.n, %.critedge.thread.i ], [ %.lcssa225.unr, %.prol.loopexit ], [ %i.bq, %.lr.ph24.i.new ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 14 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.bx = zext i8 %i.bw to i64
  %i.by = sub nsw i64 %i.bu, %i.bx
  %i.bz = icmp ult i64 %i.by, 6
  br i1 %i.bz, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit
  %i.ca = icmp sgt i32 %i.br, %i.d                ; 3 uses
  br i1 %i.ca, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = load i64, ptr %.115.lcssa.i, align 8, !tbaa !22
  %i.cc = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.cd, align 4, !tbaa !32
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ce, ptr noundef nonnull align 4 dereferenceable(52) %i.cf, i64 52, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 16 ; 2 uses
  %i.ch = load i8, ptr %i.bv, align 2, !tbaa !16  ; 2 uses
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !16  ; 2 uses
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cj
  %.not10.i.i = icmp eq i8 %i.ch, %i.ci
  br i1 %.not10.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cl = zext i8 %i.ch to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.cm, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cn = load ptr, ptr %.011.i.i, align 8, !tbaa !27, !nonnull !34, !noundef !34
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = atomicrmw add ptr %i.co, i32 2 monotonic, align 4 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, %i.ck
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit: ; preds = %.lr.ph.i.i, %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %.115.lcssa.i, %bb.e ], [ %i.cc, %bb.f ], [ %i.cc, %.lr.ph.i.i ] ; 10 uses
  %.sroa.3.0.i = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %.lr.ph.i.i ]
  %i.cr = tail call { i64, ptr } @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i, i64 %1, ptr %2, i64 noundef %3) ; 2 uses
  %i.cs = extractvalue { i64, ptr } %i.cr, 0      ; 3 uses
  %i.ct = extractvalue { i64, ptr } %i.cr, 1
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cv = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !22
  %i.cw = add i64 %i.cv, %1
  store i64 %i.cw, ptr %.sroa.0.0.i, align 8, !tbaa !22
  %i.cx = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull %0, i32 noundef %i.d, i64 noundef %1, ptr nonnull %.sroa.0.0.i, i32 %.sroa.3.0.i)
  br label %bb.r

bb.g:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cy = sub i64 %1, %i.cs                       ; 5 uses
  %i.cz = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !22
  %i.da = add i64 %i.cz, %i.cy
  store i64 %i.da, ptr %.sroa.0.0.i, align 8, !tbaa !22
  br i1 %.not107, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %i.db = zext i8 %i.c to i64                     ; 6 uses
  %i.dc = add nsw i32 %i.d, -1
  %i.dd = zext nneg i32 %i.dc to i64              ; 3 uses
  %i.de = getelementptr [8 x i8], ptr %4, i64 %i.db ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !25 ; 4 uses
  %i.dg = sext i32 %i.br to i64                   ; 2 uses
  br i1 %i.ca, label %.loopexit121.i.i, label %bb.i

.split.i.i:                                       ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i
  %indvars.iv.next59.jt1.i.i = add nsw i64 %indvars.iv5871100.i.i, -1 ; 2 uses
  %indvars.iv.next.jt1.i.i = add nsw i64 %indvars.iv.next8494.i.i, -1 ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next8494.i.i ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !25 ; 3 uses
  %.not45.jt1.i.i = icmp sgt i64 %indvars.iv.next8494.i.i, %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 15 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i64
  %i.dm = add nsw i64 %i.dl, -1                   ; 2 uses
  br i1 %.not45.jt1.i.i, label %.preheader, label %.loopexit109

bb.h:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i
  %indvars.iv.next59.jt0.i.i = add nsw i64 %indvars.iv587199.i.i, -1
  %i.dn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next8493.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !25
  br label %.loopexit121.i.i

bb.i:                                             ; preds = %.preheader.i.i
  %.not45.i.i = icmp sgt i64 %i.db, %i.dg
  %indvars.iv.next.i.i = add nsw i64 %i.db, -1    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 15 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i64
  %i.ds = add nsw i64 %i.dr, -1                   ; 2 uses
  br i1 %.not45.i.i, label %.preheader, label %.loopexit109

.loopexit109:                                     ; preds = %.split.i.i, %bb.i
  %i.dt = phi i64 [ %i.ds, %bb.i ], [ %i.dm, %.split.i.i ]
  %indvars.iv587199.i.i = phi i64 [ %i.dd, %bb.i ], [ %indvars.iv.next59.jt1.i.i, %.split.i.i ]
  %indvars.iv7797.i.i = phi i64 [ %i.db, %bb.i ], [ %indvars.iv.next8494.i.i, %.split.i.i ]
  %.sroa.024.08295.i.i = phi ptr [ %.sroa.0.0.i, %bb.i ], [ %i.eh, %.split.i.i ]
  %indvars.iv.next8493.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.i ], [ %indvars.iv.next.jt1.i.i, %.split.i.i ] ; 2 uses
  %i.du = phi ptr [ %i.de, %bb.i ], [ %i.dh, %.split.i.i ]
  %i.dv = phi ptr [ %i.df, %bb.i ], [ %i.di, %.split.i.i ] ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dt ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !27 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = atomicrmw sub ptr %i.dz, i32 2 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ea, 2
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i, !prof !35

bb.j:                                             ; preds = %.loopexit109
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.dy)
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i

.preheader:                                       ; preds = %bb.i, %.split.i.i
  %i.eb = phi i64 [ %i.dm, %.split.i.i ], [ %i.ds, %bb.i ]
  %i.ec = phi ptr [ %i.dj, %.split.i.i ], [ %i.dp, %bb.i ]
  %indvars.iv5871100.i.i = phi i64 [ %indvars.iv.next59.jt1.i.i, %.split.i.i ], [ %i.dd, %bb.i ]
  %indvars.iv7798.i.i = phi i64 [ %indvars.iv.next8494.i.i, %.split.i.i ], [ %i.db, %bb.i ]
  %.sroa.024.08296.i.i = phi ptr [ %i.eh, %.split.i.i ], [ %.sroa.0.0.i, %bb.i ]
  %indvars.iv.next8494.i.i = phi i64 [ %indvars.iv.next.jt1.i.i, %.split.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 5 uses
  %i.ed = phi ptr [ %i.dh, %.split.i.i ], [ %i.de, %bb.i ]
  %i.ee = phi ptr [ %i.di, %.split.i.i ], [ %i.df, %bb.i ] ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 14
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !22 ; 2 uses
  %i.eh = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 2, ptr %i.ei, align 4, !tbaa !32
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ej, ptr noundef nonnull align 4 dereferenceable(52) %i.ek, i64 52, i1 false)
  %i.el = load i8, ptr %i.ef, align 2, !tbaa !16
  %i.em = zext i8 %i.el to i64
  %i.en = load i8, ptr %i.ec, align 1, !tbaa !16
  %i.eo = zext i8 %i.en to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.em, 3
  %i.ep = add nuw nsw i64 %.idx.i.i.i, 16         ; 2 uses
  %.idx21.i.i.i = shl nuw nsw i64 %i.eo, 3
  %i.eq = add nuw nsw i64 %.idx21.i.i.i, 8        ; 2 uses
  %i.er = getelementptr i8, ptr %i.ee, i64 %i.eq
  %.not19.i.i.i = icmp eq i64 %i.ep, %i.eq
  br i1 %.not19.i.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ep
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i ], [ %i.es, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.et = load ptr, ptr %.020.i.i.i, align 8, !tbaa !27, !nonnull !34, !noundef !34
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = atomicrmw add ptr %i.eu, i32 2 monotonic, align 4 ; 0 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ew, %i.er
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i, label %.lr.ph.i.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre136.i = load i64, ptr %i.eh, align 8, !tbaa !22
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i, %.preheader
  %i.ex = phi i64 [ %.pre136.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i ], [ %i.eg, %.preheader ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.eb
  store ptr %.sroa.024.08296.i.i, ptr %i.ez, align 8, !tbaa !27
  %i.fa = add i64 %i.ex, %i.cy
  store i64 %i.fa, ptr %i.eh, align 8, !tbaa !22
  store ptr %i.eh, ptr %i.ed, align 8, !tbaa !25
  %i.fb = icmp sgt i64 %indvars.iv7798.i.i, 1
  br i1 %i.fb, label %.split.i.i, label %.loopexit.thread110.i.i, !llvm.loop !87

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i: ; preds = %bb.j, %.loopexit109
  store ptr %.sroa.024.08295.i.i, ptr %i.dx, align 8, !tbaa !27
  %i.fc = load i64, ptr %i.dv, align 8, !tbaa !22
  %i.fd = add i64 %i.fc, %i.cy
  store i64 %i.fd, ptr %i.dv, align 8, !tbaa !22
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !25
  %5 = icmp sgt i64 %indvars.iv7797.i.i, 1
  br i1 %5, label %bb.h, label %.loopexit, !llvm.loop !87

.loopexit121.i.i:                                 ; preds = %.preheader.i.i, %bb.h
  %i.fe = phi ptr [ %i.do, %bb.h ], [ %i.df, %.preheader.i.i ] ; 3 uses
  %indvars.iv76.i.i = phi i64 [ %indvars.iv.next8493.i.i, %bb.h ], [ %i.db, %.preheader.i.i ]
  %indvars.iv5870.i.i = phi i64 [ %indvars.iv.next59.jt0.i.i, %bb.h ], [ %i.dd, %.preheader.i.i ]
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !22
  %i.fg = add i64 %i.ff, %i.cy
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !22
  %6 = icmp sgt i64 %indvars.iv76.i.i, 1
  br i1 %6, label %.lr.ph.i.i68, label %.loopexit

.lr.ph.i.i68:                                     ; preds = %.loopexit121.i.i, %.lr.ph.i.i68
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %.lr.ph.i.i68 ], [ %indvars.iv5870.i.i, %.loopexit121.i.i ] ; 3 uses
  %indvars.iv.next62.i.i = add nsw i64 %indvars.iv61.i.i, -1
  %i.fh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv61.i.i
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !25 ; 3 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !22
  %i.fk = add i64 %i.fj, %i.cy
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !22
  %i.fl = icmp sgt i64 %indvars.iv61.i.i, 1
  br i1 %i.fl, label %.lr.ph.i.i68, label %.loopexit, !llvm.loop !88

.loopexit.i.i:                                    ; preds = %bb.g
  br i1 %i.ca, label %.loopexit, label %.loopexit.thread110.i.i

.loopexit.thread110.i.i:                          ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i, %.loopexit.i.i
  %.sroa.024.3113.i.i = phi ptr [ %.sroa.0.0.i, %.loopexit.i.i ], [ %i.eh, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fn = atomicrmw sub ptr %i.fm, i32 2 acq_rel, align 4
  %.not.i.i35.i.i = icmp eq i32 %i.fn, 2
  br i1 %.not.i.i35.i.i, label %bb.k, label %.loopexit, !prof !35

bb.k:                                             ; preds = %.loopexit.thread110.i.i
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i68, %.loopexit.i.i, %bb.k, %.loopexit.thread110.i.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i, %.loopexit121.i.i
  %.2.i.i = phi ptr [ %.sroa.024.3113.i.i, %bb.k ], [ %i.fe, %.loopexit121.i.i ], [ %i.dv, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i ], [ %.sroa.0.0.i, %.loopexit.i.i ], [ %.sroa.024.3113.i.i, %.loopexit.thread110.i.i ], [ %i.fi, %.lr.ph.i.i68 ]
  %i.fo = add nuw nsw i32 %i.d, 1
  store i32 %i.fo, ptr %4, align 8, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit
  %.sroa.11.0 = phi ptr [ %i.ct, %.loopexit ], [ %2, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %.sroa.0.0 = phi i64 [ %i.cs, %.loopexit ], [ %1, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %.160 = phi ptr [ %.2.i.i, %.loopexit ], [ %0, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %i.fp = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 2, ptr %i.fq, align 4, !tbaa !32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i8 3, ptr %i.fr, align 4, !tbaa !33
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 13
  store i8 0, ptr %i.fs, align 1, !tbaa !16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 14
  store i8 0, ptr %i.ft, align 2, !tbaa !16
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i: ; preds = %bb.q, %bb.l
  %i.fv = phi ptr [ %i.fp, %bb.l ], [ %i.ix, %bb.q ] ; 5 uses
  %.261137 = phi ptr [ %.160, %bb.l ], [ %i.hf, %bb.q ] ; 2 uses
  %.063136 = phi i32 [ %i.d, %bb.l ], [ %i.hi, %bb.q ] ; 2 uses
  %.sroa.0.1135 = phi i64 [ %.sroa.0.0, %bb.l ], [ %i.hd, %bb.q ] ; 6 uses
  %.sroa.11.1134 = phi ptr [ %.sroa.11.0, %bb.l ], [ %i.he, %bb.q ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i: ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i
  %.029.i = phi i64 [ 0, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gu, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ]
  %.01828.i = phi i64 [ 0, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gt, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 2 uses
  %.sroa.6.027.i = phi ptr [ %.sroa.11.1134, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gw, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 2 uses
  %.sroa.0.026.i = phi i64 [ %.sroa.0.1135, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gv, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 3 uses
  %i.fx = add i64 %.sroa.0.026.i, %3              ; 2 uses
  %i.fy = icmp ult i64 %i.fx, 20
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.fx, i64 4083)
  %i.fz = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %i.fy, i64 32, i64 %i.fz  ; 2 uses
  %i.ga = icmp samesign ult i64 %.0.i.i.i, 513    ; 2 uses
  %.neg.i.i.i = select i1 %i.ga, i64 -8, i64 -64
  %i.gb = select i1 %i.ga, i64 8, i64 64
  %i.gc = add nsw i64 %.0.i.i.i, -1
  %i.gd = add nuw nsw i64 %i.gc, %i.gb
  %i.ge = and i64 %i.gd, %.neg.i.i.i              ; 3 uses
  %i.gf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #20 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 2, ptr %i.gg, align 8
  %i.gh = icmp samesign ult i64 %i.ge, 513        ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.gh, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.gh, i64 2, i64 58
  %i.gi = lshr i64 %i.ge, %.sink6.i.i.i.i.i
  %i.gj = add nuw nsw i64 %i.gi, %.sink5.i.i.i.i.i ; 3 uses
  %i.gk = trunc nuw nsw i64 %i.gj to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i8 %i.gk, ptr %i.gl, align 4, !tbaa !33
  %i.gm = trunc nuw nsw i64 %i.gj to i32
  %i.gn = icmp samesign ult i64 %i.gj, 67         ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.gn, i32 3, i32 6
  %i.go = shl nuw nsw i32 %i.gm, %.sink6.i.i.i.i
  %i.gp = select i1 %i.gn, i32 -29, i32 -3725
  %narrow.i.i.i = add nsw i32 %i.go, %i.gp
  %i.gq = sext i32 %narrow.i.i.i to i64
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.026.i, i64 %i.gq) ; 5 uses
  store i64 %.sroa.speculated.i, ptr %i.gf, align 8, !tbaa !22
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.01828.i
  store ptr %i.gf, ptr %i.gr, align 8, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr align 1 %.sroa.6.027.i, i64 %.sroa.speculated.i, i1 false)
  %i.gt = add nuw nsw i64 %.01828.i, 1            ; 3 uses
  %i.gu = add i64 %.sroa.speculated.i, %.029.i    ; 8 uses
  %i.gv = sub nuw i64 %.sroa.0.026.i, %.sroa.speculated.i ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.6.027.i, i64 %.sroa.speculated.i
  %i.gx = icmp eq i64 %i.gv, 0
  %i.gy = icmp eq i64 %i.gt, 6
  %.not19.i = select i1 %i.gx, i1 true, i1 %i.gy
  br i1 %.not19.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i, !llvm.loop !6

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i
  %i.gz = trunc i64 %i.gt to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fv, i64 15
  store i64 %i.gu, ptr %i.fv, align 8, !tbaa !22
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !16
  %.not = icmp eq i64 %i.gu, %.sroa.0.1135
  br i1 %.not, label %.thread100, label %bb.m

.thread100:                                       ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit
  %i.hb = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261137, i32 noundef %.063136, i64 noundef %.sroa.0.1135, ptr nonnull %i.fv, i32 2)
  br label %bb.r

bb.m:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit
  %i.hc = icmp ugt i64 %i.gu, %.sroa.0.1135
  br i1 %i.hc, label %bb.n, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i64 noundef %i.gu, i64 noundef %.sroa.0.1135) #21
  unreachable

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit: ; preds = %bb.m
  %i.hd = sub nuw i64 %.sroa.0.1135, %i.gu
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.11.1134, i64 %i.gu
  %i.hf = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261137, i32 noundef %.063136, i64 noundef %i.gu, ptr nonnull %i.fv, i32 2) ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 13
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !16  ; 4 uses
  %i.hi = zext i8 %i.hh to i32                    ; 2 uses
  %.not108 = icmp eq i8 %i.hh, 0
  br i1 %.not108, label %bb.q, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit
  %wide.trip.count.i73 = zext i8 %i.hh to i64     ; 2 uses
  %xtraiter229 = and i64 %wide.trip.count.i73, 3  ; 3 uses
  %i.hj = icmp ult i8 %i.hh, 4
  br i1 %i.hj, label %.epil.preheader, label %.lr.ph.i72.new

.lr.ph.i72.new:                                   ; preds = %.lr.ph.i72
  %unroll_iter = and i64 %wide.trip.count.i73, 252
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i72.new
  %indvars.iv.i74 = phi i64 [ 0, %.lr.ph.i72.new ], [ %indvars.iv.next.i75.3, %bb.o ] ; 5 uses
  %.067.i = phi ptr [ %i.hf, %.lr.ph.i72.new ], [ %i.io, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i72.new ], [ %niter.next.3, %bb.o ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.i74
  store ptr %.067.i, ptr %i.hk, align 8, !tbaa !25
  %i.hl = getelementptr inbounds nuw i8, ptr %.067.i, i64 15
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr i8, ptr %.067.i, i64 8
  %i.hp = getelementptr [8 x i8], ptr %i.ho, i64 %i.hn
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !27 ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.i74
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store ptr %i.hq, ptr %i.hs, align 8, !tbaa !25
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 15
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr i8, ptr %i.hq, i64 8
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !27 ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.i74
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store ptr %i.hy, ptr %i.ia, align 8, !tbaa !25
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 15
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr i8, ptr %i.hy, i64 8
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %i.id
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !27 ; 3 uses
  %indvars.iv.next.i75.3 = add nuw nsw i64 %indvars.iv.i74, 4 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.i74
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  store ptr %i.ig, ptr %i.ii, align 8, !tbaa !25
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 15
  %i.ik = load i8, ptr %i.ij, align 1
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr i8, ptr %i.ig, i64 8
  %i.in = getelementptr [8 x i8], ptr %i.im, i64 %i.il
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !27 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i77.unr-lcssa, label %bb.o, !llvm.loop !89

._crit_edge.loopexit.i77.unr-lcssa:               ; preds = %bb.o
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %._crit_edge.loopexit.i77, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i77.unr-lcssa, %.lr.ph.i72
  %indvars.iv.i74.epil.init = phi i64 [ 0, %.lr.ph.i72 ], [ %indvars.iv.next.i75.3, %._crit_edge.loopexit.i77.unr-lcssa ]
  %.067.i.epil.init = phi ptr [ %i.hf, %.lr.ph.i72 ], [ %i.io, %._crit_edge.loopexit.i77.unr-lcssa ]
  %lcmp.mod231 = icmp ne i64 %xtraiter229, 0
  tail call void @llvm.assume(i1 %lcmp.mod231)
end_hunk_1
