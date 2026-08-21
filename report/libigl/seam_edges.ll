Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/seam_edges?download=true
inline.NumInlined: 824
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE18conservativeResizeElll:bb.a
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit5.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !9
  %i.g = load i64, ptr %i.c, align 8, !tbaa !16
  %i.h = mul nsw i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.h, 4611686018427387903
  br i1 %i.i, label %bb.c, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit5.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit5.i
  %i.k = shl nuw i64 %1, 2
  %i.l = tail call ptr @realloc(ptr noundef %i.a, i64 noundef %i.k) #25 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.n, %i.m
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZN5Eigen8internal36conditional_aligned_realloc_new_autoIiLb1EEEPT_S3_mm.exit

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal36conditional_aligned_realloc_new_autoIiLb1EEEPT_S3_mm.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  store ptr %i.l, ptr %0, align 8, !tbaa !17
  store i64 %2, ptr %i.b, align 8, !tbaa !9
  store i64 %3, ptr %i.c, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSB_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !nonnull !41, !align !107 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !88   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSB_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !88   ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSB_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !41, !align !107 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %0, align 8, !nonnull !41, !align !107 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !94   ; 3 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !88   ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !94   ; 3 uses
  %i.t = load i64, ptr %i.n, align 8, !tbaa !88   ; 3 uses
  %i.u = add nsw i64 %i.g, -1                     ; 2 uses
  %i.v = mul i64 %i.r, %i.u
  %i.w = add i64 %i.v, %i.j
  %i.x = shl i64 %i.w, 2
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.x
  %i.y = mul i64 %i.t, %i.u
  %i.z = add i64 %i.y, %i.j
  %i.aa = shl i64 %i.z, 2
  %scevgep64 = getelementptr i8, ptr %i.s, i64 %i.aa
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.q, %scevgep64
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ab = or i64 %i.t, %i.r
  %i.ac = and i64 %i.ab, 2305843009213693952
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %found.conflict, %i.ad
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.au, %._crit_edge.i ] ; 3 uses
  %i.af = mul nsw i64 %.0810.i, %i.r
  %i.ag = getelementptr [4 x i8], ptr %i.q, i64 %i.af ; 6 uses
  %i.ah = mul nsw i64 %.0810.i, %i.t
  %i.ai = getelementptr [4 x i8], ptr %i.s, i64 %i.ah ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ae
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !18, !alias.scope !108
  %wide.load66 = load <4 x i32>, ptr %i.al, align 4, !tbaa !18, !alias.scope !108
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  store <4 x i32> %wide.load, ptr %i.aj, align 4, !tbaa !18, !alias.scope !111, !noalias !108
  store <4 x i32> %wide.load66, ptr %i.am, align 4, !tbaa !18, !alias.scope !111, !noalias !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.ar, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ao = getelementptr [4 x i8], ptr %i.ag, i64 %.09.i.prol
  %i.ap = getelementptr [4 x i8], ptr %i.ai, i64 %.09.i.prol
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !18
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !18
  %i.ar = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !116

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ar, %scalar.ph.prol ]
  %i.as = sub nsw i64 %.09.i.ph, %i.j
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.au = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.au, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSB_.exit, label %.preheader.i, !llvm.loop !118

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bk, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr [4 x i8], ptr %i.ag, i64 %.09.i
  %i.aw = getelementptr [4 x i8], ptr %i.ai, i64 %.09.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !18
  %i.ay = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = getelementptr [4 x i8], ptr %i.ai, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !18
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !18
  %i.bc = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.bc
  %i.be = getelementptr [4 x i8], ptr %i.ai, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !18
  %i.bg = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  %i.bi = getelementptr [4 x i8], ptr %i.ai, i64 %i.bg
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !18
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !18
  %i.bk = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bk, %i.j
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !119

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !88 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !88 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !120, !nonnull !41, !align !107
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !9
  %i.bt = sub i64 0, %i.bs
  %i.bu = and i64 %i.bt, 3
  %i.bv = icmp sgt i64 %i.bo, 0
  br i1 %i.bv, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSB_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit
  %i.bw = lshr exact i64 %i.d, 2
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = and i64 %i.bx, 3
  %i.bz = tail call i64 @llvm.smin.i64(i64 %i.by, i64 %i.bm)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.fy, %._crit_edge ] ; 9 uses
  %.03550 = phi i64 [ %i.bz, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 12 uses
  %i.cb = shl i64 %.03451, 2                      ; 2 uses
  %i.cc = shl i64 %.03451, 2                      ; 2 uses
  %i.cd = sub i64 %i.bm, %.03550                  ; 2 uses
  %i.ce = and i64 %i.cd, -4                       ; 2 uses
  %i.cf = add nsw i64 %i.ce, %.03550              ; 6 uses
  %i.cg = icmp sgt i64 %.03550, 0
  br i1 %i.cg, label %.lr.ph, label %.preheader43

.lr.ph:                                           ; preds = %bb.c
  %i.ch = load ptr, ptr %0, align 8, !tbaa !121, !nonnull !41, !align !107 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !94 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !88 ; 2 uses
  %i.cl = mul nsw i64 %i.ck, %.03451
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl ; 6 uses
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !122, !nonnull !41, !align !107 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !94 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !88 ; 2 uses
  %i.cr = mul nsw i64 %i.cq, %.03451
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %i.cr ; 6 uses
  %min.iters.check83 = icmp ult i64 %.03550, 12
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.memcheck80

vector.memcheck80:                                ; preds = %.lr.ph
  %i.ct = ptrtoaddr ptr %i.co to i64
  %i.cu = ptrtoaddr ptr %i.ci to i64
  %i.cv = mul i64 %i.ck, %i.cb
  %i.cw = add i64 %i.cv, %i.cu
  %i.cx = mul i64 %i.cq, %i.cb
  %i.cy = add i64 %i.cx, %i.ct
  %i.cz = sub i64 %i.cy, %i.cw
  %diff.check81 = icmp ugt i64 %i.cz, -32
  br i1 %diff.check81, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %vector.memcheck80
  %n.vec85 = and i64 %.03550, 9223372036854775800 ; 3 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next90, %vector.body86 ] ; 3 uses
  %i.da = getelementptr [4 x i8], ptr %i.cm, i64 %index87 ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.cs, i64 %index87 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %wide.load88 = load <4 x i32>, ptr %i.db, align 4, !tbaa !18
  %wide.load89 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !18
  %i.dd = getelementptr i8, ptr %i.da, i64 16
  store <4 x i32> %wide.load88, ptr %i.da, align 4, !tbaa !18
  store <4 x i32> %wide.load89, ptr %i.dd, align 4, !tbaa !18
  %index.next90 = add nuw i64 %index87, 8         ; 2 uses
  %i.de = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.de, label %middle.block91, label %vector.body86, !llvm.loop !123

middle.block91:                                   ; preds = %vector.body86
  %cmp.n92 = icmp eq i64 %.03550, %n.vec85
  br i1 %cmp.n92, label %.preheader43, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %vector.memcheck80, %.lr.ph, %middle.block91
  %.03345.ph = phi i64 [ 0, %vector.memcheck80 ], [ 0, %.lr.ph ], [ %n.vec85, %middle.block91 ] ; 3 uses
  %xtraiter96 = and i64 %.03550, 3                ; 2 uses
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader, %scalar.ph82.prol
  %.03345.prol = phi i64 [ %i.di, %scalar.ph82.prol ], [ %.03345.ph, %scalar.ph82.preheader ] ; 3 uses
  %prol.iter98 = phi i64 [ %prol.iter98.next, %scalar.ph82.prol ], [ 0, %scalar.ph82.preheader ]
  %i.df = getelementptr [4 x i8], ptr %i.cm, i64 %.03345.prol
  %i.dg = getelementptr [4 x i8], ptr %i.cs, i64 %.03345.prol
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !18
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !18
  %i.di = add nuw nsw i64 %.03345.prol, 1         ; 2 uses
  %prol.iter98.next = add i64 %prol.iter98, 1     ; 2 uses
  %prol.iter98.cmp.not = icmp eq i64 %prol.iter98.next, %xtraiter96
  br i1 %prol.iter98.cmp.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol, !llvm.loop !124

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %.03345.unr = phi i64 [ %.03345.ph, %scalar.ph82.preheader ], [ %i.di, %scalar.ph82.prol ]
  %i.dj = sub nsw i64 %.03345.ph, %.03550
  %i.dk = icmp ugt i64 %i.dj, -4
  br i1 %i.dk, label %.preheader43, label %scalar.ph82

.preheader43:                                     ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block91, %bb.c
  %i.dl = icmp sgt i64 %i.cd, 3
  br i1 %i.dl, label %.lr.ph47, label %.preheader

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.03345 = phi i64 [ %i.eb, %scalar.ph82 ], [ %.03345.unr, %scalar.ph82.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr [4 x i8], ptr %i.cm, i64 %.03345
  %i.dn = getelementptr [4 x i8], ptr %i.cs, i64 %.03345
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !18
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !18
  %i.dp = add nuw nsw i64 %.03345, 1              ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.cm, i64 %i.dp
  %i.dr = getelementptr [4 x i8], ptr %i.cs, i64 %i.dp
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !18
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !18
  %i.dt = add nuw nsw i64 %.03345, 2              ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %i.cm, i64 %i.dt
  %i.dv = getelementptr [4 x i8], ptr %i.cs, i64 %i.dt
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !18
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !18
  %i.dx = add nuw nsw i64 %.03345, 3              ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %i.cm, i64 %i.dx
  %i.dz = getelementptr [4 x i8], ptr %i.cs, i64 %i.dx
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !18
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !18
  %i.eb = add nuw nsw i64 %.03345, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eb, %.03550
  br i1 %exitcond.not.3, label %.preheader43, label %scalar.ph82, !llvm.loop !125

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.ec = icmp slt i64 %i.cf, %i.bm
  br i1 %i.ec, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.ed = load ptr, ptr %0, align 8, !tbaa !121, !nonnull !41, !align !107 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !94 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !88 ; 2 uses
  %i.eh = mul nsw i64 %i.eg, %.03451
  %i.ei = getelementptr [4 x i8], ptr %i.ee, i64 %i.eh ; 2 uses
  %i.ej = load ptr, ptr %i.ca, align 8, !tbaa !122, !nonnull !41, !align !107 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !94 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !88 ; 2 uses
  %i.en = mul nsw i64 %i.em, %.03451
  %i.eo = getelementptr [4 x i8], ptr %i.ek, i64 %i.en ; 2 uses
  %i.ep = add i64 %.03550, %i.ce
  %i.eq = sub i64 %i.bm, %i.ep                    ; 3 uses
  %min.iters.check69 = icmp ult i64 %i.eq, 12
  br i1 %min.iters.check69, label %scalar.ph68.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %.lr.ph49
  %i.er = ptrtoaddr ptr %i.ek to i64
  %i.es = ptrtoaddr ptr %i.ee to i64
  %i.et = mul i64 %i.eg, %i.cc
  %i.eu = add i64 %i.et, %i.es
  %i.ev = mul i64 %i.em, %i.cc
  %i.ew = add i64 %i.ev, %i.er
  %i.ex = sub i64 %i.ew, %i.eu
  %diff.check = icmp ugt i64 %i.ex, -32
  br i1 %diff.check, label %scalar.ph68.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck67
  %n.vec71 = and i64 %i.eq, -8                    ; 3 uses
  %i.ey = add i64 %i.cf, %n.vec71
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next76, %vector.body72 ] ; 2 uses
  %i.ez = add i64 %i.cf, %index73                 ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.ei, i64 %i.ez ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.eo, i64 %i.ez ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  %wide.load74 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !18
  %wide.load75 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !18
  %i.fd = getelementptr i8, ptr %i.fa, i64 16
  store <4 x i32> %wide.load74, ptr %i.fa, align 4, !tbaa !18
  store <4 x i32> %wide.load75, ptr %i.fd, align 4, !tbaa !18
  %index.next76 = add nuw i64 %index73, 8         ; 2 uses
  %i.fe = icmp eq i64 %index.next76, %n.vec71
  br i1 %i.fe, label %middle.block77, label %vector.body72, !llvm.loop !126

middle.block77:                                   ; preds = %vector.body72
  %cmp.n78 = icmp eq i64 %i.eq, %n.vec71
  br i1 %cmp.n78, label %._crit_edge, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %vector.memcheck67, %.lr.ph49, %middle.block77
  %.048.ph = phi i64 [ %i.cf, %vector.memcheck67 ], [ %i.cf, %.lr.ph49 ], [ %i.ey, %middle.block77 ]
  br label %scalar.ph68

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fu, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !121, !nonnull !41, !align !107 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !94
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !88
  %i.fj = mul nsw i64 %i.fi, %.03451
  %i.fk = getelementptr [4 x i8], ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %.03246
  %i.fm = load ptr, ptr %i.ca, align 8, !tbaa !122, !nonnull !41, !align !107 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !94
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %.03246
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !88
  %i.fr = mul nsw i64 %i.fq, %.03451
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !127
  store <2 x i64> %i.ft, ptr %i.fl, align 16, !tbaa !127
  %i.fu = add nsw i64 %.03246, 4                  ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.cf
  br i1 %i.fv, label %.lr.ph47, label %.preheader, !llvm.loop !128

._crit_edge:                                      ; preds = %scalar.ph68, %middle.block77, %.preheader
  %i.fw = add nsw i64 %.03550, %i.bu
  %i.fx = srem i64 %i.fw, 4
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bm, i64 %i.fx)
  %i.fy = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond55.not = icmp eq i64 %i.fy, %i.bo
  br i1 %exitcond55.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSB_.exit, label %bb.c, !llvm.loop !129

scalar.ph68:                                      ; preds = %scalar.ph68.preheader, %scalar.ph68
  %.048 = phi i64 [ %i.gc, %scalar.ph68 ], [ %.048.ph, %scalar.ph68.preheader ] ; 3 uses
  %i.fz = getelementptr [4 x i8], ptr %i.ei, i64 %.048
  %i.ga = getelementptr [4 x i8], ptr %i.eo, i64 %.048
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !18
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !18
  %i.gc = add nsw i64 %.048, 1                    ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.bm
  br i1 %i.gd, label %scalar.ph68, label %._crit_edge, !llvm.loop !130

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSB_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !13, i64 8}
!10 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !11, i64 0, !13, i64 8, !13, i64 16}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!10, !13, i64 16}
!17 = !{!10, !11, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !13, i64 8}
!20 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !21, i64 0, !13, i64 8, !13, i64 16}
!21 = !{!"p1 double", !12, i64 0}
!22 = !{!23, !6, i64 0}
!23 = !{!"_ZTSZN3igl10seam_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_S4_S4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EERNSM_IT4_EERNSM_IT5_EEEUlRKSt4pairIiiEE_", !6, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!26, !30, i64 8}
!26 = !{!"_ZTSSt10_HashtableISt4pairIiiES0_IKS1_S1_ESaIS3_ENSt8__detail10_Select1stESt8equal_toIS1_ERKZN3igl10seam_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESD_NSC_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SE_SE_EEvRKNSB_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EERKNSF_IT2_EERNSB_15PlainObjectBaseIT3_EERNSW_IT4_EERNSW_IT5_EEEUlRS2_E_NS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb0ELb1EEEE", !27, i64 0, !30, i64 8, !13, i64 16, !32, i64 24, !13, i64 32, !34, i64 40, !33, i64 56}
!27 = !{!"_ZTSNSt8__detail15_Hashtable_baseISt4pairIiiES1_IKS2_S2_ENS_10_Select1stESt8equal_toIS2_ERKZN3igl10seam_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESC_NSB_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SD_SD_EEvRKNSA_10MatrixBaseIT_EERKNSE_IT0_EERKNSE_IT1_EERKNSE_IT2_EERNSA_15PlainObjectBaseIT3_EERNSV_IT4_EERNSV_IT5_EEEUlRS3_E_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEEE", !28, i64 0}
!28 = !{!"_ZTSNSt8__detail15_Hash_code_baseISt4pairIiiES1_IKS2_S2_ENS_10_Select1stERKZN3igl10seam_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_NS9_IiLin1ELin1ELi0ELin1ELin1EEESB_SB_SB_SB_EEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERKNSC_IT1_EERKNSC_IT2_EERNS8_15PlainObjectBaseIT3_EERNST_IT4_EERNST_IT5_EEEUlRS3_E_NS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEE", !29, i64 0}
!29 = !{!"_ZTSNSt8__detail21_Hashtable_ebo_helperILi1ERKZN3igl10seam_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_NS4_IiLin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_EEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERNS3_15PlainObjectBaseIT3_EERNSO_IT4_EERNSO_IT5_EEEUlRKSt4pairIiiEE_Lb0EEE", !12, i64 0}
!30 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !31, i64 0}
!31 = !{!"any p2 pointer", !12, i64 0}
!32 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !33, i64 0}
!33 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!34 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !35, i64 0, !13, i64 8}
!35 = !{!"float", !7, i64 0}
!36 = !{!26, !13, i64 16}
!37 = !{!34, !35, i64 0}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!26, !33, i64 56}
!40 = !{!29, !12, i64 0}
!41 = !{}
!42 = !{i64 4}
!43 = !{!33, !33, i64 0}
!44 = !{!45, !30, i64 8}
!45 = !{!"_ZTSSt10_HashtableISt4pairIiiES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ERKZN3igl10seam_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESB_NSA_IiLin1ELin1ELi0ELin1ELin1EEESC_SC_SC_SC_EEvRKNS9_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EERKNSD_IT2_EERNS9_15PlainObjectBaseIT3_EERNSU_IT4_EERNSU_IT5_EEEUlRKS1_E_NS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE", !46, i64 0, !30, i64 8, !13, i64 16, !32, i64 24, !13, i64 32, !34, i64 40, !33, i64 56}
!46 = !{!"_ZTSNSt8__detail15_Hashtable_baseISt4pairIiiES2_NS_9_IdentityESt8equal_toIS2_ERKZN3igl10seam_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_NS9_IiLin1ELin1ELi0ELin1ELin1EEESB_SB_SB_SB_EEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERKNSC_IT1_EERKNSC_IT2_EERNS8_15PlainObjectBaseIT3_EERNST_IT4_EERNST_IT5_EEEUlRKS2_E_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEEE", !47, i64 0}
!47 = !{!"_ZTSNSt8__detail15_Hash_code_baseISt4pairIiiES2_NS_9_IdentityERKZN3igl10seam_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELin1ELi0ELin1ELin1EEES9_S9_S9_S9_EEvRKNS6_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERNS6_15PlainObjectBaseIT3_EERNSR_IT4_EERNSR_IT5_EEEUlRKS2_E_NS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEE", !29, i64 0}
!48 = !{!45, !13, i64 16}
!49 = !{!45, !33, i64 56}
!50 = !{!32, !33, i64 0}
!51 = !{!52, !13, i64 0}
!52 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !13, i64 0}
!53 = !{!54, !6, i64 0}
!54 = !{!"_ZTSSt4pairIiiE", !6, i64 0, !6, i64 4}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!54, !6, i64 4}
!58 = distinct !{!58, !56}
!59 = !{!26, !33, i64 24}
!60 = !{!45, !33, i64 24}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIiiELb1EEEEEE", !12, i64 0}
!63 = !{!26, !13, i64 32}
!64 = distinct !{!64, !56}
!65 = !{!20, !21, i64 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!68 = distinct !{!68, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!69 = !{!70, !70, i64 0}
end_hunk_0
