Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86AsmBackend?download=true
inline.NumInlined: 1796
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK12_GLOBAL__N_119DarwinX86AsmBackend37encodeCompactUnwindRegistersWithFrameEv:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.092.i, i64 2 ; 2 uses
  %i.l = add nuw nsw i32 %.083.i, 1
  %i.m = load i16, ptr %i.k, align 2, !tbaa !245  ; 2 uses
  %.not.i = icmp eq i16 %i.m, 0
  br i1 %.not.i, label %.thread32, label %.lr.ph.i, !llvm.loop !3

.split.1:                                         ; preds = %.lr.ph.i
  %i.n = and i32 %.083.i, 7                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.p = load i32, ptr %i.o, align 4, !tbaa !217  ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread32, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.split.1, %bb.c
  %i.r = phi i16 [ %i.w, %bb.c ], [ %.fr, %.split.1 ]
  %.083.i.1 = phi i32 [ %i.v, %bb.c ], [ 1, %.split.1 ] ; 2 uses
  %.092.i.1 = phi ptr [ %i.u, %bb.c ], [ %_ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU64BitRegs._ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU32BitRegs.i, %.split.1 ]
  %i.s = zext i16 %i.r to i32
  %i.t = icmp eq i32 %i.p, %i.s
  br i1 %i.t, label %.split.2, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.u = getelementptr inbounds nuw i8, ptr %.092.i.1, i64 2 ; 2 uses
  %i.v = add nuw nsw i32 %.083.i.1, 1
  %i.w = load i16, ptr %i.u, align 2, !tbaa !245  ; 2 uses
  %.not.i.1 = icmp eq i16 %i.w, 0
  br i1 %.not.i.1, label %.thread32, label %.lr.ph.i.1, !llvm.loop !3

.split.2:                                         ; preds = %.lr.ph.i.1
  %i.x = shl i32 %.083.i.1, 3
  %i.y = and i32 %i.x, 56
  %i.z = or disjoint i32 %i.y, %i.n               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !217 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread32, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.split.2, %bb.d
  %i.ad = phi i16 [ %i.ai, %bb.d ], [ %.fr, %.split.2 ]
  %.083.i.2 = phi i32 [ %i.ah, %bb.d ], [ 1, %.split.2 ] ; 2 uses
  %.092.i.2 = phi ptr [ %i.ag, %bb.d ], [ %_ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU64BitRegs._ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU32BitRegs.i, %.split.2 ]
  %i.ae = zext i16 %i.ad to i32
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %.split.3, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.2
  %i.ag = getelementptr inbounds nuw i8, ptr %.092.i.2, i64 2 ; 2 uses
  %i.ah = add nuw nsw i32 %.083.i.2, 1
  %i.ai = load i16, ptr %i.ag, align 2, !tbaa !245 ; 2 uses
  %.not.i.2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i.2, label %.thread32, label %.lr.ph.i.2, !llvm.loop !3

.split.3:                                         ; preds = %.lr.ph.i.2
  %i.aj = shl i32 %.083.i.2, 6
  %i.ak = and i32 %i.aj, 448
  %i.al = or disjoint i32 %i.ak, %i.z             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.an = load i32, ptr %i.am, align 4, !tbaa !217 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread32, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.split.3, %bb.e
  %i.ap = phi i16 [ %i.au, %bb.e ], [ %.fr, %.split.3 ]
  %.083.i.3 = phi i32 [ %i.at, %bb.e ], [ 1, %.split.3 ] ; 2 uses
  %.092.i.3 = phi ptr [ %i.as, %bb.e ], [ %_ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU64BitRegs._ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU32BitRegs.i, %.split.3 ]
  %i.aq = zext i16 %i.ap to i32
  %i.ar = icmp eq i32 %i.an, %i.aq
  br i1 %i.ar, label %.split.4, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.3
  %i.as = getelementptr inbounds nuw i8, ptr %.092.i.3, i64 2 ; 2 uses
  %i.at = add nuw nsw i32 %.083.i.3, 1
  %i.au = load i16, ptr %i.as, align 2, !tbaa !245 ; 2 uses
  %.not.i.3 = icmp eq i16 %i.au, 0
  br i1 %.not.i.3, label %.thread32, label %.lr.ph.i.3, !llvm.loop !3

.split.4:                                         ; preds = %.lr.ph.i.3
  %i.av = shl i32 %.083.i.3, 9
  %i.aw = and i32 %i.av, 3584
  %i.ax = or disjoint i32 %i.aw, %i.al            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread32, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.split.4, %bb.f
  %i.bb = phi i16 [ %i.bg, %bb.f ], [ %.fr, %.split.4 ]
  %.083.i.4 = phi i32 [ %i.bf, %bb.f ], [ 1, %.split.4 ] ; 2 uses
  %.092.i.4 = phi ptr [ %i.be, %bb.f ], [ %_ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU64BitRegs._ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU32BitRegs.i, %.split.4 ]
  %i.bc = zext i16 %i.bb to i32
  %i.bd = icmp eq i32 %i.az, %i.bc
  br i1 %i.bd, label %.split.5, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.4
  %i.be = getelementptr inbounds nuw i8, ptr %.092.i.4, i64 2 ; 2 uses
  %i.bf = add nuw nsw i32 %.083.i.4, 1
  %i.bg = load i16, ptr %i.be, align 2, !tbaa !245 ; 2 uses
  %.not.i.4 = icmp eq i16 %i.bg, 0
  br i1 %.not.i.4, label %.thread32, label %.lr.ph.i.4, !llvm.loop !3

.split.5:                                         ; preds = %.lr.ph.i.4
  %i.bh = shl i32 %.083.i.4, 12
  %i.bi = and i32 %i.bh, 28672
  %i.bj = or disjoint i32 %i.bi, %i.ax            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !217 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.thread32, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.split.5, %bb.g
  %i.bn = phi i16 [ %i.bs, %bb.g ], [ %.fr, %.split.5 ]
  %.083.i.5 = phi i32 [ %i.br, %bb.g ], [ 1, %.split.5 ] ; 2 uses
  %.092.i.5 = phi ptr [ %i.bq, %bb.g ], [ %_ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU64BitRegs._ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU32BitRegs.i, %.split.5 ]
  %i.bo = zext i16 %i.bn to i32
  %i.bp = icmp eq i32 %i.bl, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.5
  %i.bq = getelementptr inbounds nuw i8, ptr %.092.i.5, i64 2 ; 2 uses
  %i.br = add nuw nsw i32 %.083.i.5, 1
  %i.bs = load i16, ptr %i.bq, align 2, !tbaa !245 ; 2 uses
  %.not.i.5 = icmp eq i16 %i.bs, 0
  br i1 %.not.i.5, label %.thread32, label %.lr.ph.i.5, !llvm.loop !3

bb.h:                                             ; preds = %.lr.ph.i.5
  %i.bt = shl i32 %.083.i.5, 15
  %i.bu = and i32 %i.bt, 229376
  %i.bv = or disjoint i32 %i.bu, %i.bj
  br label %.thread32

.thread32:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %.split.preheader, %.split.1, %.split.2, %.split.3, %.split.4, %.split.5, %bb.h, %.split.us
  %i.bw = phi i32 [ -1, %bb.c ], [ %spec.select, %.split.us ], [ %i.al, %.split.3 ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ], [ %i.bv, %bb.h ], [ 0, %.split.preheader ], [ %i.n, %.split.1 ], [ %i.bj, %.split.5 ], [ %i.z, %.split.2 ], [ %i.ax, %.split.4 ], [ -1, %bb.b ]
  ret i32 %i.bw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZNK12_GLOBAL__N_119DarwinX86AsmBackend40encodeCompactUnwindRegistersWithoutFrameEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, i32 noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 23 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val = load i8, ptr %i.c, align 8, !tbaa !194, !range !22, !noundef !23
  %i.d = trunc nuw i8 %.val to i1
  %_ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU64BitRegs._ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU32BitRegs.i = select i1 %i.d, ptr @_ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU64BitRegs, ptr @_ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU32BitRegs ; 2 uses
  %i.e = load i16, ptr %_ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU64BitRegs._ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU32BitRegs.i, align 2, !tbaa !245 ; 2 uses
  %.not1.i = icmp eq i16 %i.e, 0
  br i1 %.not1.i, label %.critedge, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader.preheader ], [ %indvars.iv.next, %_ZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEj.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !217
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %i.h = phi i16 [ %i.m, %bb.b ], [ %i.e, %.lr.ph.i.preheader ]
  %.083.i = phi i32 [ %i.l, %bb.b ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.092.i = phi ptr [ %i.k, %bb.b ], [ %_ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU64BitRegs._ZZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEjE11CU32BitRegs.i, %.lr.ph.i.preheader ]
  %i.i = zext i16 %i.h to i32
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %_ZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.092.i, i64 2 ; 2 uses
  %i.l = add nuw nsw i32 %.083.i, 1
  %i.m = load i16, ptr %i.k, align 2, !tbaa !245  ; 2 uses
  %.not.i = icmp eq i16 %i.m, 0
  br i1 %.not.i, label %.critedge, label %.lr.ph.i, !llvm.loop !3

_ZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEj.exit: ; preds = %.lr.ph.i
  store i32 %.083.i, ptr %i.f, align 4, !tbaa !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !418

._crit_edge:                                      ; preds = %_ZNK12_GLOBAL__N_119DarwinX86AsmBackend22getCompactUnwindRegNumEj.exit, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.p = load <4 x i32>, ptr %i.o, align 8, !tbaa !217
  %i.q = load <2 x i32>, ptr %i.n, align 8, !tbaa !217
  %i.r = shufflevector <2 x i32> %i.q, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.r, ptr %.0.i.i, align 8, !tbaa !217
  %i.s = shufflevector <4 x i32> %i.p, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.s, ptr %i.n, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.t = sub i32 6, %1                            ; 2 uses
  %i.u = icmp ult i32 %i.t, 6
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge51

.preheader.preheader:                             ; preds = %._crit_edge
  %i.v = zext nneg i32 %i.t to i64                ; 8 uses
  %i.w = sub i32 7, %1
  %i.x = zext i32 %i.w to i64
  %i.y = sub nsw i64 %i.v, %i.x
  %2 = sub i32 7, %1
  %i.z = zext i32 %2 to i64
  %3 = add nuw nsw i64 %i.v, 1
  %i.aa = sub nsw i64 %3, %i.z
  %i.ab = add i32 %1, -8
  %invariant.gep = getelementptr [4 x i8], ptr %i.n, i64 %i.v
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge49
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge49 ] ; 3 uses
  %indvars.iv58 = phi i64 [ %i.v, %.preheader.preheader ], [ %indvars.iv.next59, %._crit_edge49 ] ; 5 uses
  %i.ac = add i64 %i.y, %indvar                   ; 2 uses
  %i.ad = icmp samesign ugt i64 %indvars.iv58, %i.v
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv58
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !217 ; 3 uses
  br i1 %i.ad, label %.lr.ph48.preheader, label %._crit_edge49

.lr.ph48.preheader:                               ; preds = %.preheader
  %4 = add i64 %indvar, %i.aa                     ; 3 uses
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph48.preheader72, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph48.preheader
  %i.ag = trunc i64 %i.ac to i32
  %i.ah = icmp ult i32 %i.ab, %i.ag
  %i.ai = icmp ugt i64 %i.ac, 4294967295
  %i.aj = or i1 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph48.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %4, -8                         ; 3 uses
  %i.ak = or disjoint i64 %n.vec, %i.v
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi70 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !217
  %wide.load71 = load <4 x i32>, ptr %i.al, align 4, !tbaa !217
  %i.am = icmp ult <4 x i32> %wide.load, %broadcast.splat
  %i.an = icmp ult <4 x i32> %wide.load71, %broadcast.splat
  %i.ao = zext <4 x i1> %i.am to <4 x i32>
  %i.ap = zext <4 x i1> %i.an to <4 x i32>
  %i.aq = add <4 x i32> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <4 x i32> %vec.phi70, %i.ap         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !419

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge49.loopexit, label %.lr.ph48.preheader72

.lr.ph48.preheader72:                             ; preds = %vector.scevcheck, %.lr.ph48.preheader, %middle.block
  %indvars.iv54.ph = phi i64 [ %i.v, %vector.scevcheck ], [ %i.v, %.lr.ph48.preheader ], [ %i.ak, %middle.block ]
  %.03246.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph48.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph48

._crit_edge51:                                    ; preds = %._crit_edge49, %._crit_edge
  switch i32 %1, label %bb.i [
    i32 6, label %bb.c
    i32 5, label %bb.d
    i32 4, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.g
    i32 1, label %bb.h
  ]

._crit_edge49.loopexit:                           ; preds = %.lr.ph48, %middle.block
  %spec.select.lcssa = phi i32 [ %i.at, %middle.block ], [ %spec.select, %.lr.ph48 ]
  %i.au = xor i32 %spec.select.lcssa, -1
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %.preheader, %._crit_edge49.loopexit
  %.032.lcssa = phi i32 [ %i.au, %._crit_edge49.loopexit ], [ -1, %.preheader ]
  %i.av = add i32 %i.af, %.032.lcssa
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv58
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !217
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.ax = and i64 %indvars.iv.next59, 4294967295
  %exitcond62.not = icmp eq i64 %i.ax, 6
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond62.not, label %._crit_edge51, label %.preheader, !llvm.loop !420

.lr.ph48:                                         ; preds = %.lr.ph48.preheader72, %.lr.ph48
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.lr.ph48 ], [ %indvars.iv54.ph, %.lr.ph48.preheader72 ] ; 2 uses
  %.03246 = phi i32 [ %spec.select, %.lr.ph48 ], [ %.03246.ph, %.lr.ph48.preheader72 ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv54
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !217
  %i.ba = icmp ult i32 %i.az, %i.af
  %i.bb = zext i1 %i.ba to i32
  %spec.select = add i32 %.03246, %i.bb           ; 2 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.bc = and i64 %indvars.iv.next55, 4294967295
  %exitcond57.not = icmp eq i64 %i.bc, %indvars.iv58
  br i1 %exitcond57.not, label %._crit_edge49.loopexit, label %.lr.ph48, !llvm.loop !421

bb.c:                                             ; preds = %._crit_edge51
  %i.bd = load i32, ptr %i.a, align 16, !tbaa !217
  %i.be = mul i32 %i.bd, 120
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !217
  %i.bh = mul i32 %i.bg, 24
  %i.bi = add i32 %i.bh, %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !217
  %i.bl = mul i32 %i.bk, 6
  %i.bm = add i32 %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !217
  %i.bp = shl i32 %i.bo, 1
  %i.bq = add i32 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bs = load i32, ptr %i.br, align 16, !tbaa !217
  %i.bt = add i32 %i.bq, %i.bs
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge51
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !217
  %i.bw = mul i32 %i.bv, 120
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !217
  %i.bz = mul i32 %i.by, 24
  %i.ca = add i32 %i.bz, %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !217
  %i.cd = mul i32 %i.cc, 6
  %i.ce = add i32 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !217
  %i.ch = shl i32 %i.cg, 1
  %i.ci = add i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !217
  %i.cl = add i32 %i.ci, %i.ck
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge51
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !217
  %i.co = mul i32 %i.cn, 60
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !217
  %i.cr = mul i32 %i.cq, 12
  %i.cs = add i32 %i.cr, %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cu = load i32, ptr %i.ct, align 16, !tbaa !217
  %i.cv = mul i32 %i.cu, 3
  %i.cw = add i32 %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !217
  %i.cz = add i32 %i.cw, %i.cy
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge51
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !217
  %i.dc = mul i32 %i.db, 20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.de = load i32, ptr %i.dd, align 16, !tbaa !217
  %i.df = shl i32 %i.de, 2
  %i.dg = add i32 %i.df, %i.dc
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !217
  %i.dj = add i32 %i.dg, %i.di
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge51
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dl = load i32, ptr %i.dk, align 16, !tbaa !217
  %i.dm = mul i32 %i.dl, 5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !217
  %i.dp = add i32 %i.dm, %i.do
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge51
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !217
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %._crit_edge51
  %.0 = phi i32 [ 0, %._crit_edge51 ], [ %i.bt, %bb.c ], [ %i.cl, %bb.d ], [ %i.cz, %bb.e ], [ %i.dj, %bb.f ], [ %i.dp, %bb.g ], [ %i.dr, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.i
  %.3 = phi i32 [ %.0, %bb.i ], [ -1, %.lr.ph ], [ -1, %bb.b ]
  ret i32 %.3
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120WindowsX86AsmBackendD0Ev(ptr noundef nonnull align 8 dereferenceable(209) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN12_GLOBAL__N_113X86AsmBackendE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm6MCInstD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #24, !inline_history !216
  br label %_ZN4llvm6MCInstD2Ev.exit.i

_ZN4llvm6MCInstD2Ev.exit.i:                       ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_113X86AsmBackendD2Ev.exit, label %_ZNKSt14default_deleteIKN4llvm11MCInstrInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIKN4llvm11MCInstrInfoEEclEPS2_.exit.i.i: ; preds = %_ZN4llvm6MCInstD2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #26, !inline_history !216
  br label %_ZN12_GLOBAL__N_113X86AsmBackendD2Ev.exit

_ZN12_GLOBAL__N_113X86AsmBackendD2Ev.exit:        ; preds = %_ZN4llvm6MCInstD2Ev.exit.i, %_ZNKSt14default_deleteIKN4llvm11MCInstrInfoEEclEPS2_.exit.i.i
  tail call void @_ZN4llvm12MCAsmBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(209) %0) #24, !inline_history !216
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120WindowsX86AsmBackend24createObjectTargetWriterEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.290") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load i8, ptr %i.a, align 8, !tbaa !185, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  tail call void @_ZN4llvm28createX86WinCOFFObjectWriterEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.290") align 8 %0, i1 noundef zeroext %i.c) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal i32 @_ZNK12_GLOBAL__N_120WindowsX86AsmBackend12getFixupKindEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr %1, i64 %2) unnamed_addr #3 align 2 {
bb.a:
  switch i64 %2, label %_ZN4llvm12StringSwitchISt8optionalItES2_E4CaseENS_13StringLiteralES2_.exit26.thread60 [
    i64 5, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i13
    i64 6, label %_ZN4llvm12StringSwitchISt8optionalItES2_E4CaseENS_13StringLiteralES2_.exit26
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = xor i32 %i.a, 863136100
  %i.c = getelementptr i8, ptr %1, i64 4
end_hunk_0
