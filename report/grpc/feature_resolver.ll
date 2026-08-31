Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/feature_resolver?download=true
inline.NumInlined: 1813
inline.NumDeleted: 752
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6google8protobuf12_GLOBAL__N_118ValidateDescriptorERKNS0_10DescriptorE:bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !90
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph78, label %.critedge

.lr.ph78:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.l = xor i64 %i.k, -1
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.25, i64 %i.k, ptr nonnull %i.m, ptr noundef nonnull @.str.26)
  br label %.critedge.thread

bb.c:                                             ; preds = %.lr.ph78, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %indvars.iv ; 13 uses
  %i.p = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor11is_requiredEv(ptr noundef nonnull align 8 dereferenceable(88) %i.o)
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.0.copyload.i.i.i46 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.0.copyload.i.i.i46 to i64     ; 2 uses
  %i.u = xor i64 %i.t, -1
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.t, ptr nonnull %i.v, ptr noundef nonnull @.str.28)
  br label %.critedge.thread

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 32
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.0.copyload.i.i.i49 = load i16, ptr %i.ab, align 1
  %i.ac = zext i16 %.0.copyload.i.i.i49 to i64    ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.ac, ptr nonnull %i.ae, ptr noundef nonnull @.str.29)
  br label %.critedge.thread

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !92
  switch i8 %i.ag, label %bb.h [
    i8 14, label %bb.i
    i8 8, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %.0.copyload.i.i.i52 = load i16, ptr %i.aj, align 1
  %i.ak = zext i16 %.0.copyload.i.i.i52 to i64    ; 2 uses
  %i.al = xor i64 %i.ak, -1
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.ak, ptr nonnull %i.am, ptr noundef nonnull @.str.30)
  br label %.critedge.thread

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !93 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 116
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !94
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %.0.copyload.i.i.i55 = load i16, ptr %i.au, align 1
  %i.av = zext i16 %.0.copyload.i.i.i55 to i64    ; 2 uses
  %i.aw = xor i64 %i.av, -1
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.av, ptr nonnull %i.ax, ptr noundef nonnull @.str.31)
  br label %.critedge.thread

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !97
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = add i64 %i.ba, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = select i1 %i.bc, ptr %i.ay, ptr %i.bf   ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !99 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %.idx = shl nsw i64 %i.bj, 3                    ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %.idx ; 2 uses
  %.not6574 = icmp eq i32 %i.bi, 0
  br i1 %.not6574, label %.critedge79, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.bl = add nsw i64 %.idx, -8                   ; 2 uses
  %i.bm = lshr exact i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 3 uses
  %i.bo = icmp ult i64 %i.bl, 24
  br i1 %i.bo, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bn, 4611686018427387900
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.04176.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %..041.3, %._crit_edge.unr-lcssa ]
  %.sroa.061.075.epil.init = phi ptr [ %i.bg, %.lr.ph.preheader ], [ %i.cq, %._crit_edge.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04176.epil = phi i1 [ %..041.epil, %.lr.ph.epil ], [ %.04176.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.061.075.epil = phi ptr [ %i.bt, %.lr.ph.epil ], [ %.sroa.061.075.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bp = load ptr, ptr %.sroa.061.075.epil, align 8, !tbaa !100
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !40
  %i.bs = icmp eq i32 %i.br, 900
  %..041.epil = select i1 %i.bs, i1 true, i1 %.04176.epil ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.061.075.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %..041.lcssa = phi i1 [ %..041.3, %._crit_edge.unr-lcssa ], [ %..041.epil, %.lr.ph.epil ]
  br i1 %..041.lcssa, label %bb.l, label %.critedge79

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04176 = phi i1 [ false, %.lr.ph.preheader.new ], [ %..041.3, %.lr.ph ]
  %.sroa.061.075 = phi ptr [ %i.bg, %.lr.ph.preheader.new ], [ %i.cq, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bu = load ptr, ptr %.sroa.061.075, align 8, !tbaa !100
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !40
  %i.bx = icmp eq i32 %i.bw, 900
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !100
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !40
  %i.cc = icmp eq i32 %i.cb, 900
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !100
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !40
  %i.ch = icmp eq i32 %i.cg, 900
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !100
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !40
  %i.cm = icmp eq i32 %i.cl, 900
  %i.cn = select i1 %i.cm, i1 true, i1 %i.ch
  %i.co = select i1 %i.cn, i1 true, i1 %i.cc
  %i.cp = select i1 %i.co, i1 true, i1 %i.bx
  %..041.3 = select i1 %i.cp, i1 true, i1 %.04176 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

.critedge79:                                      ; preds = %bb.k, %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %.0.copyload.i.i.i58 = load i16, ptr %i.ct, align 1
  %i.cu = zext i16 %.0.copyload.i.i.i58 to i64    ; 2 uses
  %i.cv = xor i64 %i.cu, -1
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.cu, ptr nonnull %i.cw, ptr noundef nonnull @.str.32)
  br label %.critedge.thread

bb.l:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !64, !noalias !103
  %i.cz = and i32 %i.cy, 8
  %.not.i = icmp eq i32 %i.cz, 0                  ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %3 = load ptr, ptr %2, align 8, !noalias !103   ; 3 uses
  %4 = icmp ne ptr %3, null
  %5 = select i1 %.not.i, i1 true, i1 %4
  tail call void @llvm.assume(i1 %5)
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !16, !noalias !103 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.dc, align 1, !noalias !103
  %i.dd = zext i16 %.0.copyload.i.i.i.i to i64    ; 2 uses
  %i.de = xor i64 %i.dd, -1
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %i.de
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.dd, ptr nonnull %i.df, ptr noundef nonnull @.str.33)
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %.not.i.i.i = icmp eq ptr %3, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf36FieldOptions_FeatureSupport_globals_E, ptr %3 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !64, !noalias !103
  %.fr80 = freeze i32 %i.dh                       ; 2 uses
  %i.di = and i32 %.fr80, 4
  %.not38.i = icmp eq i32 %i.di, 0
  br i1 %.not38.i, label %bb.o, label %.lr.ph.i

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !16, !noalias !103 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %.0.copyload.i.i.i25.i = load i16, ptr %i.dl, align 1, !noalias !103
  %i.dm = zext i16 %.0.copyload.i.i.i25.i to i64  ; 2 uses
  %i.dn = xor i64 %i.dm, -1
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %i.dn
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.dm, ptr nonnull %i.do, ptr noundef nonnull @.str.34)
  br label %bb.v

.lr.ph.i:                                         ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 40 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 48
  %i.dr = and i32 %.fr80, 16
  %.not40.i = icmp eq i32 %i.dr, 0
  br i1 %.not40.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %bb.q
  %.sroa.034.043.i.us = phi ptr [ %i.dy, %bb.q ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %i.ds = load ptr, ptr %.sroa.034.043.i.us, align 8, !tbaa !100, !noalias !103
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !40, !noalias !103 ; 3 uses
  %i.dv = icmp slt i32 %i.du, 1000
  br i1 %i.dv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.split.us
  %i.dw = load i32, ptr %i.dp, align 8, !tbaa !40, !noalias !103
  %i.dx = icmp slt i32 %i.du, %i.dw
  br i1 %i.dx, label %.split.us, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.split.us
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.034.043.i.us, i64 8 ; 2 uses
  %.not39.i.us = icmp eq ptr %i.dy, %i.bk
  br i1 %.not39.i.us, label %.thread, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.u
  %.sroa.034.043.i = phi ptr [ %i.et, %bb.u ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %i.dz = load ptr, ptr %.sroa.034.043.i, align 8, !tbaa !100, !noalias !103
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !40, !noalias !103 ; 5 uses
  %i.ec = icmp slt i32 %i.eb, 1000
  br i1 %i.ec, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.split
  %i.ed = load i32, ptr %i.dp, align 8, !tbaa !40, !noalias !103
  %i.ee = icmp slt i32 %i.eb, %i.ed
  br i1 %i.ee, label %.split.us, label %bb.s

.split.us:                                        ; preds = %bb.r, %bb.p
  %.us-phi = phi i32 [ %i.du, %bb.p ], [ %i.eb, %bb.r ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !16, !noalias !103 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %.0.copyload.i.i.i28.i = load i16, ptr %i.eh, align 1, !noalias !103
  %i.ei = zext i16 %.0.copyload.i.i.i28.i to i64  ; 2 uses
  %i.ej = xor i64 %i.ei, -1
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_NS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.ei, ptr nonnull %i.ek, i32 noundef %.us-phi, ptr noundef nonnull @.str.36)
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.el = load i32, ptr %i.dq, align 8, !tbaa !40, !noalias !103
  %i.em = icmp sgt i32 %i.eb, %i.el
  br i1 %i.em, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !16, !noalias !103 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %.0.copyload.i.i.i31.i = load i16, ptr %i.ep, align 1, !noalias !103
  %i.eq = zext i16 %.0.copyload.i.i.i31.i to i64  ; 2 uses
  %i.er = xor i64 %i.eq, -1
  %i.es = getelementptr inbounds i8, ptr %i.eo, i64 %i.er
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_NS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.eq, ptr nonnull %i.es, i32 noundef %i.eb, ptr noundef nonnull @.str.37)
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.lr.ph.i.split
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.034.043.i, i64 8 ; 2 uses
  %.not39.i = icmp eq ptr %i.et, %i.bk
  br i1 %.not39.i, label %.thread, label %.lr.ph.i.split

.thread:                                          ; preds = %bb.u, %bb.q
  store i64 1, ptr %0, align 8, !tbaa !8, !alias.scope !106
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.v:                                             ; preds = %bb.t, %.split.us, %bb.o, %bb.m
  %.pr = load i64, ptr %0, align 8, !tbaa !8
  %i.eu = icmp eq i64 %.pr, 1
  br i1 %i.eu, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge.thread

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.v, %.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ev = load i32, ptr %i.d, align 8, !tbaa !90
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next, %i.ew
  br i1 %i.ex, label %bb.c, label %.critedge, !llvm.loop !109

.critedge:                                        ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %.preheader
  store i64 1, ptr %0, align 8, !tbaa !8, !alias.scope !110
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.v, %bb.f, %bb.h, %bb.j, %.critedge79, %bb.d, %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !8      ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !8
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !8
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit, !prof !11

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #22
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_115CollectEditionsERKNS0_10DescriptorENS0_7EditionERN4absl12lts_202505129btree_setIS5_St4lessIS5_ESaIS5_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !90
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.b

._crit_edge39:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph38, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @_ZN6google8protobuf36FieldOptions_FeatureSupport_globals_E, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !40
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE(i32 noundef %i.o, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.p, null
  %spec.select.i.i18 = select i1 %.not.i.i17, ptr @_ZN6google8protobuf36FieldOptions_FeatureSupport_globals_E, ptr %i.p ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i18, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !64
  %i.s = and i32 %i.r, 16
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i18, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !40
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE(i32 noundef %i.u, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_:bb.a
  %i.m = load i64, ptr %i.e, align 8, !tbaa !39
  store i64 %i.m, ptr %8, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.l, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %.not.i.i8 = icmp eq ptr %3, null
  br i1 %.not.i.i8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i9 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ]
  store i64 %.sroa.0.0.i.i9, ptr %10, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.p, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %6, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.s, ptr %i.q)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.u, align 8, !tbaa !40
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.y = load ptr, ptr %9, align 8, !tbaa !36     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !40
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void

bb.h:                                             ; preds = %.noexc, %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.j:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.j
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !40
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ae, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %i.ac, %bb.h ]
  %i.ak = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.d
  br i1 %i.al, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.k
  %i.am = load i64, ptr %i.d, align 8, !tbaa !40
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit16

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit16: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN6google8protobuf21DynamicMessageFactoryEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.9") align 8 %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 3 uses
  invoke void @_ZN6google8protobuf21DynamicMessageFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !65
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_112FillDefaultsENS0_7EditionERNS0_7MessageES4_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 10 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %17 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %18 = alloca %"class.google::protobuf::FieldOptions_EditionDefault", align 8 ; 8 uses
  %19 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %21 = alloca %"class.std::vector.94", align 8   ; 19 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.c = extractvalue { ptr, ptr } %i.b, 0        ; 3 uses
  %i.d = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %.not.not = icmp eq ptr %i.c, %i.e
  br i1 %.not.not, label %.critedge, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str.3, i32 noundef 240, ptr noundef nonnull @.str.47) #25
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #23
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #23
  unreachable

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZN6google8protobuf27FieldOptions_EditionDefaultC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef null)
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  store i32 %1, ptr %i.g, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !64
  %i.j = or i32 %i.i, 2
  store i32 %i.j, ptr %i.h, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !90
  %.not84179 = icmp sgt i32 %i.l, 0
  br i1 %.not84179, label %.lr.ph, label %.critedge96

.lr.ph:                                           ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.au
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.au ] ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !93   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !64
  %i.v = and i32 %i.u, 8
  %.not160 = icmp eq i32 %i.v, 0                  ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %24 = load ptr, ptr %23, align 8                ; 3 uses
  %25 = icmp ne ptr %24, null
  %26 = select i1 %.not160, i1 true, i1 %25
  call void @llvm.assume(i1 %26)
  br i1 %.not160, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %24, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @_ZN6google8protobuf36FieldOptions_FeatureSupport_globals_E, ptr %24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !64   ; 2 uses
  %i.y = and i32 %i.x, 4
  %.not161 = icmp eq i32 %i.y, 0
  br i1 %.not161, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !40
  %i.ab = icmp slt i32 %1, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ac = and i32 %i.x, 16
  %.not162 = icmp eq i32 %i.ac, 0
  br i1 %.not162, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !40
  %.not = icmp slt i32 %1, %i.ae
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  br label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.d
  %.071 = phi ptr [ %2, %bb.i ], [ %3, %bb.h ], [ %3, %bb.g ], [ %3, %bb.d ] ; 3 uses
  %i.ag = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %.071)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.ah = extractvalue { ptr, ptr } %i.ag, 1
  invoke void @_ZNK6google8protobuf10Reflection10ClearFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull %.071, ptr noundef nonnull %i.q)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = and i8 %i.aj, 32
  %.not163 = icmp eq i8 %i.ak, 0
  br i1 %.not163, label %.critedge88, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.3, i32 noundef 262, ptr noundef nonnull @.str.48) #25
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit109 unwind label %bb.q

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit109: ; preds = %bb.o
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ax

bb.q:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #23
  unreachable

.critedge88:                                      ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !92
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %.not76 = icmp eq i32 %i.ar, 10
  br i1 %.not76, label %bb.r, label %bb.v, !prof !11

bb.r:                                             ; preds = %.critedge88
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.3, i32 noundef 263, ptr noundef nonnull @.str.49) #25
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit110 unwind label %bb.u

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit110: ; preds = %bb.s
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #23
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.ax

bb.u:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #23
  unreachable

bb.v:                                             ; preds = %.critedge88
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !93  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !97
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = and i64 %i.ax, 1
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = add i64 %i.ax, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = select i1 %i.az, ptr %i.av, ptr %i.bc   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !99
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE19_M_range_initializeINS1_8internal19RepeatedPtrIteratorIKS2_EEEEvT_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr nonnull %i.bd, ptr nonnull %i.bh)
          to label %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EEC2INS1_8internal19RepeatedPtrIteratorIKS2_EEvEET_SA_RKS3_.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %21, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #24
  br label %.body

_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EEC2INS1_8internal19RepeatedPtrIteratorIKS2_EEvEET_SA_RKS3_.exit: ; preds = %bb.v
  %.val = load ptr, ptr %21, align 8, !tbaa !135  ; 6 uses
  %.val97 = load ptr, ptr %i.n, align 8, !tbaa !135 ; 6 uses
  %.not.i.i.i111 = icmp eq ptr %.val, %.val97
  br i1 %.not.i.i.i111, label %"_ZN4absl12lts_202505126c_sortISt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS5_EERZNS4_12_GLOBAL__N_112FillDefaultsENS4_7EditionERNS4_7MessageESB_E3$_0EEvRT_OT0_.exit", label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EEC2INS1_8internal19RepeatedPtrIteratorIKS2_EEvEET_SA_RKS3_.exit
  %i.bo = ptrtoint ptr %.val97 to i64
  %i.bp = ptrtoint ptr %.val to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = sdiv exact i64 %i.bq, 40
  %i.bs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %i.bt = shl nuw nsw i64 %i.bs, 1
  %i.bu = xor i64 %i.bt, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_T0_T1_"(ptr %.val, ptr %.val97, i64 noundef %i.bu)
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.y
  %i.bv = icmp sgt i64 %i.bq, 640
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.noexc
  %i.bw = getelementptr inbounds nuw i8, ptr %.val, i64 640 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_T0_"(ptr %.val, ptr nonnull %i.bw)
  %.not6.i.i.i.i.i = icmp eq ptr %i.bw, %.val97
  br i1 %.not6.i.i.i.i.i, label %"_ZN4absl12lts_202505126c_sortISt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS5_EERZNS4_12_GLOBAL__N_112FillDefaultsENS4_7EditionERNS4_7MessageESB_E3$_0EEvRT_OT0_.exit", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %i.bw, %bb.z ] ; 2 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.07.i.i.i.i.i)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, %.val97
  br i1 %.not.i.i.i.i.i, label %"_ZN4absl12lts_202505126c_sortISt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS5_EERZNS4_12_GLOBAL__N_112FillDefaultsENS4_7EditionERNS4_7MessageESB_E3$_0EEvRT_OT0_.exit", label %.lr.ph.i.i.i.i.i, !llvm.loop !136

bb.aa:                                            ; preds = %.noexc
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_T0_"(ptr %.val, ptr %.val97)
  br label %"_ZN4absl12lts_202505126c_sortISt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS5_EERZNS4_12_GLOBAL__N_112FillDefaultsENS4_7EditionERNS4_7MessageESB_E3$_0EEvRT_OT0_.exit"

"_ZN4absl12lts_202505126c_sortISt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS5_EERZNS4_12_GLOBAL__N_112FillDefaultsENS4_7EditionERNS4_7MessageESB_E3$_0EEvRT_OT0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %bb.aa, %bb.z, %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EEC2INS1_8internal19RepeatedPtrIteratorIKS2_EEvEET_SA_RKS3_.exit
  %.val98 = load ptr, ptr %21, align 8, !tbaa !135 ; 3 uses
  %.val99 = load ptr, ptr %i.n, align 8, !tbaa !135
  %.val100 = load i32, ptr %i.g, align 8
  %i.by = ptrtoint ptr %.val99 to i64
  %i.bz = ptrtoint ptr %.val98 to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 0
  br i1 %i.cb, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %"_ZN4absl12lts_2025051213c_upper_boundISt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS5_EES5_RZNS4_12_GLOBAL__N_112FillDefaultsENS4_7EditionERNS4_7MessageESB_E3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESF_RKT0_OT1_.exit.thread"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %"_ZN4absl12lts_202505126c_sortISt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS5_EERZNS4_12_GLOBAL__N_112FillDefaultsENS4_7EditionERNS4_7MessageESB_E3$_0EEvRT_OT0_.exit"
  %i.cc = udiv exact i64 %i.ca, 40
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.07.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.cc, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.sroa.02.06.i.i.i = phi ptr [ %.sroa.02.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val98, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.cd = lshr i64 %.07.i.i.i, 1                  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf15FeatureResolver22ValidateFeatureSupportERKNS0_27FieldOptions_FeatureSupportESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.19)
  br label %bb.q

.thread:                                          ; preds = %bb.d, %bb.f
  %i.k = and i32 %i.b, 16
  %.not37 = icmp eq i32 %i.k, 0
  br i1 %.not37, label %bb.n, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !40   ; 3 uses
  %.not = icmp slt i32 %i.m, %i.o
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.20)
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !40   ; 2 uses
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.21)
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %.not34 = icmp eq i32 %i.q, %i.o
  %i.s = and i32 %i.b, 2
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = or i1 %i.t, %.not34
  br i1 %or.cond, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.22)
  br label %bb.q

bb.n:                                             ; preds = %.thread
  %i.u = and i32 %i.b, 2
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.23)
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.l
  store i64 1, ptr %0, align 8, !tbaa !8, !alias.scope !184
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr %2, ptr noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 %1, ptr %5, align 8, !tbaa !34
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.0.0.i.i, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.c = load ptr, ptr %4, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.e, ptr %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !40
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.d:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !40
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15FeatureResolver27ValidateFieldFeatureSupportERKNS0_15FieldDescriptorE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::FieldOptions_FeatureSupport", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @_ZN6google8protobuf36FieldOptions_FeatureSupport_globals_E, ptr %i.d ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.g, align 1
  %i.h = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.i = xor i64 %i.h, -1
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  tail call void @_ZN6google8protobuf15FeatureResolver22ValidateFeatureSupportERKNS0_27FieldOptions_FeatureSupportESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i.i, i64 %i.h, ptr nonnull %i.j)
  %i.k = load i64, ptr %0, align 8, !tbaa !8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge33, label %.preheader

.preheader:                                       ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.n = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187
  %.not3038 = icmp sgt i32 %i.p, 0
  br i1 %.not3038, label %.lr.ph, label %.critedge33

.lr.ph:                                           ; preds = %.preheader
  %i.q = icmp eq ptr %spec.select.i.i, @_ZN6google8protobuf36FieldOptions_FeatureSupport_globals_E
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 44
  br i1 %i.q, label %.thread.us, label %.lr.ph.split

.thread.us:                                       ; preds = %.lr.ph, %.thread.us
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.thread.us ], [ 0, %.lr.ph ]
  %i.y = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1) ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  store i64 1, ptr %0, align 8, !tbaa !8, !alias.scope !195
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.z = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !187
  %i.ac = sext i32 %i.ab to i64
  %.not30.us = icmp slt i64 %indvars.iv.next43, %i.ac
  br i1 %.not30.us, label %.thread.us, label %.critedge33, !llvm.loop !198

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4absl12lts_202505126StatusD2Ev.exit37
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl12lts_202505126StatusD2Ev.exit37 ], [ 0, %.lr.ph ] ; 2 uses
  %i.ad = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !199
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %.0.copyload.i.i.i34 = load i16, ptr %i.ai, align 1
  %i.aj = zext i16 %.0.copyload.i.i.i34 to i64    ; 2 uses
  %i.ak = xor i64 %i.aj, -1
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !177, !noalias !192 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !64, !noalias !192
  %i.aq = and i32 %i.ap, 4
  %.not49.i = icmp eq i32 %i.aq, 0                ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %4 = load ptr, ptr %3, align 8, !noalias !192
  %5 = icmp ne ptr %4, null
  %6 = select i1 %.not49.i, i1 true, i1 %5
  call void @llvm.assume(i1 %6)
  br i1 %.not49.i, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph.split
  store i64 1, ptr %0, align 8, !tbaa !8, !alias.scope !195
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit37

bb.b:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !192
  call void @_ZN6google8protobuf27FieldOptions_FeatureSupportC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i.i), !noalias !192
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !177, !noalias !192
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40, !noalias !192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf36FieldOptions_FeatureSupport_globals_E, ptr %i.at
  invoke void @_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i.i.i)
          to label %_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeFromERKS1_.exit.i unwind label %bb.c, !noalias !192

_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeFromERKS1_.exit.i: ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !171, !noalias !192 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36, !noalias !192
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !39, !noalias !192
  invoke void @_ZN6google8protobuf15FeatureResolver22ValidateFeatureSupportERKNS0_27FieldOptions_FeatureSupportESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 %i.az, ptr %i.ax)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.invoke.i, %_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeFromERKS1_.exit.i, %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf27FieldOptions_FeatureSupportD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !192
  resume { ptr, i32 } %i.ba

bb.d:                                             ; preds = %_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeFromERKS1_.exit.i
  %i.bb = load i64, ptr %0, align 8, !tbaa !8, !alias.scope !192
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr %i.r, align 8, !tbaa !40, !noalias !192
  %i.be = load i32, ptr %i.s, align 8, !tbaa !40, !noalias !192
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %.invoke.i, label %bb.f

.invoke.i:                                        ; preds = %bb.i, %bb.g, %bb.e
  %i.bg = phi ptr [ @.str.73, %bb.i ], [ @.str.72, %bb.g ], [ @.str.70, %bb.e ]
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !171, !noalias !192 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !39
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_S8_S4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull @.str.69, i64 %i.bl, ptr %i.bj, ptr noundef nonnull %i.bg, i64 %i.aj, ptr nonnull %i.al, ptr noundef nonnull @.str.71)
          to label %bb.j unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.bm = load i32, ptr %i.t, align 8, !tbaa !64, !noalias !192 ; 2 uses
  %i.bn = and i32 %i.bm, 16
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = load i32, ptr %i.u, align 8, !tbaa !40, !noalias !192
  %i.bp = load i32, ptr %i.v, align 8, !tbaa !40, !noalias !192
  %i.bq = icmp sgt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.br = and i32 %i.bm, 8
  %.not50.i = icmp eq i32 %i.br, 0
  br i1 %.not50.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load i32, ptr %i.w, align 4, !tbaa !40, !noalias !192
  %i.bt = load i32, ptr %i.x, align 4, !tbaa !40, !noalias !192
  %i.bu = icmp sgt i32 %i.bs, %i.bt
  br i1 %i.bu, label %.invoke.i, label %bb.j

bb.j:                                             ; preds = %bb.d, %.invoke.i, %bb.h, %bb.i
  call void @_ZN6google8protobuf27FieldOptions_FeatureSupportD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !192
  %.pr = load i64, ptr %0, align 8, !tbaa !8
  %i.bv = icmp eq i64 %.pr, 1
  br i1 %i.bv, label %_ZN4absl12lts_202505126StatusD2Ev.exit37, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit37:         ; preds = %bb.j, %.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !187
  %i.bz = sext i32 %i.by to i64
  %.not30 = icmp slt i64 %indvars.iv.next, %i.bz
  br i1 %.not30, label %.lr.ph.split, label %.critedge33, !llvm.loop !198

.critedge33:                                      ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit37, %.thread.us, %.preheader, %_ZN4absl12lts_202505126StatusD2Ev.exit
  store i64 1, ptr %0, align 8, !tbaa !8, !alias.scope !200
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.a, %.critedge33
  ret void
}

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefaultD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.0.0.i.i, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i64 %2, ptr %7, align 8, !tbaa !34
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %.not.i.i7 = icmp eq ptr %4, null
  br i1 %.not.i.i7, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit9, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit9

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit9:      ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, %bb.c
  %.sroa.0.0.i.i8 = phi i64 [ %i.c, %bb.c ], [ 0, %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit ]
  store i64 %.sroa.0.0.i.i8, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %4, ptr %i.d, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
  %i.e = load ptr, ptr %5, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.g, ptr %i.e)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit9
  %i.h = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.e:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit9
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !40
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

end_hunk_2
