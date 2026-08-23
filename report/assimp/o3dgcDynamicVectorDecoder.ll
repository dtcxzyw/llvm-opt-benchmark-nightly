Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/o3dgcDynamicVectorDecoder?download=true
inline.NumInlined: 57
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5o3dgc12BinaryStream11ReadFloat32ERmNS_15O3DGCStreamTypeE:bb.a
  %i.m = shl nuw nsw i32 %i.l, 7
  %i.n = add nuw nsw i32 %i.m, %i.g
  %i.o = add i64 %i.b, 3                          ; 2 uses
  store i64 %i.o, ptr %1, align 8
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 14
  %i.u = add nuw nsw i32 %i.n, %i.t
  %i.v = add i64 %i.b, 4                          ; 2 uses
  store i64 %i.v, ptr %1, align 8
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 21
  %i.ab = add nuw nsw i32 %i.u, %i.aa
  %i.ac = add i64 %i.b, 5
  store i64 %i.ac, ptr %1, align 8
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl i32 %i.ag, 28
  %.sroa.0.0.extract.trunc.i = add i32 %i.ab, %i.ah
  br label %_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = load i64, ptr %1, align 8               ; 8 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.am, ptr %1, align 8
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = shl nuw i32 %i.aq, 24
  %i.as = add i64 %i.al, 2                        ; 2 uses
  store i64 %i.as, ptr %1, align 8
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.am
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 16
  %i.ay = or disjoint i32 %i.ax, %i.ar
  %i.az = add i64 %i.al, 3                        ; 2 uses
  store i64 %i.az, ptr %1, align 8
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = or disjoint i32 %i.ay, %i.be
  %i.bg = add i64 %i.al, 4
  store i64 %i.bg, ptr %1, align 8
  %i.bh = load ptr, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bf, %i.bk
  br label %_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit

bb.e:                                             ; preds = %bb.c
  %i.bm = add i64 %i.al, 2                        ; 2 uses
  store i64 %i.bm, ptr %1, align 8
  %i.bn = load ptr, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.am
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 8
  %i.bs = add i64 %i.al, 3                        ; 2 uses
  store i64 %i.bs, ptr %1, align 8
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 16
  %i.by = add i64 %i.al, 4
  store i64 %i.by, ptr %1, align 8
  %i.bz = load ptr, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bs
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw i32 %i.cc, 24
  %i.ce = or disjoint i32 %i.br, %i.bx
  %i.cf = or disjoint i32 %i.ce, %i.cd
  %i.cg = or disjoint i32 %i.cf, %i.aq
  br label %_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit

_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.0.in = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.b ], [ %i.bl, %bb.d ], [ %i.cg, %bb.e ]
  %.0 = bitcast i32 %.0.in to float
  ret float %.0
}

declare void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #6

declare void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20)) unnamed_addr #6

declare void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #6

declare void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef) unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc10ITransformEPlm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge40

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i64 %1, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02133 = phi i64 [ %i.g, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.02232 = phi i64 [ %i.i, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %.02331 = phi i64 [ %i.e, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.c = lshr i64 %.02331, 1
  %i.d = and i64 %.02331, 1
  %i.e = add nuw i64 %i.c, %i.d                   ; 3 uses
  %i.f = and i64 %i.e, 1
  %i.g = add i64 %.02133, 1
  %i.h = shl nuw i64 %i.f, %.02133
  %i.i = add i64 %i.h, %.02232                    ; 2 uses
  %i.j = icmp ugt i64 %i.e, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph
  %i.k = add i64 %.02133, -1                      ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge40:                                    ; preds = %_ZN5o3dgc8IPredictEPll.exit, %bb.a, %._crit_edge
  ret i32 0

bb.b:                                             ; preds = %.lr.ph39, %_ZN5o3dgc8IPredictEPll.exit
  %.037 = phi i64 [ %i.k, %.lr.ph39 ], [ %i.cj, %_ZN5o3dgc8IPredictEPll.exit ] ; 3 uses
  %.136 = phi i64 [ 1, %.lr.ph39 ], [ %i.q, %_ZN5o3dgc8IPredictEPll.exit ]
  %i.n = shl i64 %.136, 1
  %i.o = lshr i64 %i.i, %.037                     ; 3 uses
  %i.p = and i64 %i.o, 1
  %i.q = sub i64 %i.n, %i.p                       ; 6 uses
  %i.r = ashr i64 %i.q, 1                         ; 3 uses
  %i.s = and i64 %i.q, 1
  %i.t = add nsw i64 %i.r, %i.s                   ; 6 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %.preheader.i.preheader, label %_ZN5o3dgc5MergeEPll.exit

.preheader.i.preheader:                           ; preds = %bb.b
  %i.v = or i64 %i.o, -2
  %i.w = sub i64 %i.r, %i.o
  %i.x = and i64 %i.w, 1
  %lcmp.mod.not.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not.not, label %.preheader.i.prol, label %.preheader.i.prol.loopexit

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %.01519.i.prol = add nsw i64 %i.t, -1           ; 2 uses
  br label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.prol, %.preheader.i.prol
  %.016.i.prol = phi i64 [ %i.ab, %.lr.ph.i.prol ], [ %.01519.i.prol, %.preheader.i.prol ] ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.i.prol ; 2 uses
  %i.z = load <2 x i64>, ptr %i.y, align 8
  %i.aa = shufflevector <2 x i64> %i.z, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.aa, ptr %i.y, align 8
  %i.ab = add nsw i64 %.016.i.prol, 2             ; 2 uses
  %i.ac = icmp slt i64 %i.ab, %i.t
  br i1 %i.ac, label %.lr.ph.i.prol, label %._crit_edge.i.prol, !llvm.loop !6

._crit_edge.i.prol:                               ; preds = %.lr.ph.i.prol
  %i.ad = add nuw nsw i64 %i.t, 1
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %._crit_edge.i.prol, %.preheader.i.preheader
  %.01519.in.i.unr = phi i64 [ %i.t, %.preheader.i.preheader ], [ %.01519.i.prol, %._crit_edge.i.prol ]
  %.01418.i.unr = phi i64 [ %i.t, %.preheader.i.preheader ], [ %i.ad, %._crit_edge.i.prol ]
  %i.ae = sub nsw i64 0, %i.v
  %i.af = icmp eq i64 %i.r, %i.ae
  br i1 %i.af, label %_ZN5o3dgc5MergeEPll.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %._crit_edge.i.1
  %.01519.in.i = phi i64 [ %.01519.i.1, %._crit_edge.i.1 ], [ %.01519.in.i.unr, %.preheader.i.prol.loopexit ] ; 4 uses
  %.01418.i = phi i64 [ %i.ak, %._crit_edge.i.1 ], [ %.01418.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01519.i = add nsw i64 %.01519.in.i, -1        ; 2 uses
  %.not.i = icmp sgt i64 %.01519.in.i, %.01418.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %2 = add nuw nsw i64 %.01418.i, 1
  %.01519.i.1 = add nsw i64 %.01519.in.i, -2      ; 2 uses
  %.not.i.1 = icmp sgt i64 %.01519.i, %2
  br i1 %.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge.i, %.lr.ph.i.1
  %.016.i.1 = phi i64 [ %i.aj, %.lr.ph.i.1 ], [ %.01519.i.1, %._crit_edge.i ] ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.i.1 ; 2 uses
  %i.ah = load <2 x i64>, ptr %i.ag, align 8
  %i.ai = shufflevector <2 x i64> %i.ah, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ai, ptr %i.ag, align 8
  %i.aj = add nsw i64 %.016.i.1, 2                ; 2 uses
  %.not = icmp sgt i64 %i.aj, %.01418.i
  br i1 %.not, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !6

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %._crit_edge.i
  %i.ak = add nuw nsw i64 %.01418.i, 2
  %i.al = icmp sgt i64 %.01519.in.i, 3
  br i1 %i.al, label %.preheader.i, label %_ZN5o3dgc5MergeEPll.exit, !llvm.loop !7

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.016.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.01519.i, %.preheader.i ] ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.an = load <2 x i64>, ptr %i.am, align 8
  %i.ao = shufflevector <2 x i64> %i.an, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ao, ptr %i.am, align 8
  %i.ap = add nsw i64 %.016.i, 2                  ; 2 uses
  %i.aq = icmp slt i64 %i.ap, %.01418.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

_ZN5o3dgc5MergeEPll.exit:                         ; preds = %.preheader.i.prol.loopexit, %._crit_edge.i.1, %bb.b
  %i.ar = add nsw i64 %i.q, -1                    ; 6 uses
  %i.as = load i64, ptr %i.m, align 8
  %i.at = ashr i64 %i.as, 1
  %i.au = load i64, ptr %0, align 8
  %i.av = sub nsw i64 %i.au, %i.at
  store i64 %i.av, ptr %0, align 8
  %i.aw = icmp sgt i64 %i.q, 3
  br i1 %i.aw, label %.lr.ph.i25, label %._crit_edge.i24

.lr.ph.i25:                                       ; preds = %_ZN5o3dgc5MergeEPll.exit, %.lr.ph.i25
  %.018.i = phi i64 [ %i.bh, %.lr.ph.i25 ], [ 2, %_ZN5o3dgc5MergeEPll.exit ] ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %0, i64 %.018.i ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.az, 2
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = ashr i64 %i.bd, 2
  %i.bf = load i64, ptr %i.ax, align 8
  %i.bg = sub nsw i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.ax, align 8
  %i.bh = add nuw nsw i64 %.018.i, 2              ; 3 uses
  %i.bi = icmp slt i64 %i.bh, %i.ar
  br i1 %i.bi, label %.lr.ph.i25, label %._crit_edge.i24, !llvm.loop !3

._crit_edge.i24:                                  ; preds = %.lr.ph.i25, %_ZN5o3dgc5MergeEPll.exit
  %.0.lcssa.i = phi i64 [ 2, %_ZN5o3dgc5MergeEPll.exit ], [ %i.bh, %.lr.ph.i25 ]
  %i.bj = icmp eq i64 %.0.lcssa.i, %i.ar
  br i1 %i.bj, label %bb.c, label %_ZN5o3dgc7IUpdateEPll.exit

bb.c:                                             ; preds = %._crit_edge.i24
  %i.bk = getelementptr [8 x i8], ptr %0, i64 %i.ar ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = ashr i64 %i.bm, 1
  %i.bo = load i64, ptr %i.bk, align 8
  %i.bp = sub nsw i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %i.bk, align 8
  br label %_ZN5o3dgc7IUpdateEPll.exit

_ZN5o3dgc7IUpdateEPll.exit:                       ; preds = %._crit_edge.i24, %bb.c
  %i.bq = icmp sgt i64 %i.q, 2
  br i1 %i.bq, label %.lr.ph.i28, label %._crit_edge.i26

.lr.ph.i28:                                       ; preds = %_ZN5o3dgc7IUpdateEPll.exit, %.lr.ph.i28
  %.016.i29 = phi i64 [ %i.cb, %.lr.ph.i28 ], [ 1, %_ZN5o3dgc7IUpdateEPll.exit ] ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %0, i64 %.016.i29 ; 4 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = add i64 %i.bt, 1
  %i.bx = add i64 %i.bw, %i.bv
  %i.by = ashr i64 %i.bx, 1
  %i.bz = load i64, ptr %i.br, align 8
  %i.ca = add nsw i64 %i.by, %i.bz
  store i64 %i.ca, ptr %i.br, align 8
  %i.cb = add nuw nsw i64 %.016.i29, 2            ; 3 uses
  %i.cc = icmp slt i64 %i.cb, %i.ar
  br i1 %i.cc, label %.lr.ph.i28, label %._crit_edge.i26, !llvm.loop !5

._crit_edge.i26:                                  ; preds = %.lr.ph.i28, %_ZN5o3dgc7IUpdateEPll.exit
  %.0.lcssa.i27 = phi i64 [ 1, %_ZN5o3dgc7IUpdateEPll.exit ], [ %i.cb, %.lr.ph.i28 ]
  %i.cd = icmp eq i64 %.0.lcssa.i27, %i.ar
  br i1 %i.cd, label %bb.d, label %_ZN5o3dgc8IPredictEPll.exit

bb.d:                                             ; preds = %._crit_edge.i26
  %i.ce = getelementptr [8 x i8], ptr %0, i64 %i.ar ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = load i64, ptr %i.ce, align 8
  %i.ci = add nsw i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.ce, align 8
  br label %_ZN5o3dgc8IPredictEPll.exit

_ZN5o3dgc8IPredictEPll.exit:                      ; preds = %._crit_edge.i26, %bb.d
  %i.cj = add nsw i64 %.037, -1
  %i.ck = icmp sgt i64 %.037, 0
  br i1 %i.ck, label %bb.b, label %._crit_edge40, !llvm.loop !20
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc20DynamicVectorDecoder9IQuantizeEPfmmmPKfS3_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = mul i64 %3, %2                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.a, ptr %i.b, align 8
  %i.h = icmp ugt i64 %i.a, 2305843009213693951
  %i.i = shl nuw i64 %i.a, 3
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #15
  store ptr %i.k, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge37.split, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.e
  %i.l = trunc i64 %7 to i32
  %notmask = shl nsw i32 -1, %i.l
  %i.m = xor i32 %notmask, -1
  %i.n = uitofp nneg i32 %i.m to float
  %.not38 = icmp eq i64 %2, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br i1 %.not38, label %._crit_edge37.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph36
  %xtraiter = and i64 %2, 1
  %i.p = icmp eq i64 %2, 1
  %unroll_iter = and i64 %2, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod44 = trunc i64 %2 to i1
  br label %.lr.ph

._crit_edge37.split:                              ; preds = %._crit_edge, %.lr.ph36, %bb.e
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.02734 = phi i64 [ %i.ag, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.02734
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02734 ; 4 uses
  %i.t = load float, ptr %i.s, align 4
  %i.u = fsub float %i.r, %i.t                    ; 2 uses
  %i.v = fcmp ogt float %i.u, 0.000000e+00
  %i.w = fdiv float %i.u, %i.n
  %.028 = select i1 %i.v, float %i.w, float 1.000000e+00 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %.02734 ; 3 uses
  %i.x = mul i64 %.02734, %2                      ; 3 uses
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.033.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ay, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.033.epil.init
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = sitofp i64 %i.ab to float
  %i.ad = load float, ptr %i.s, align 4
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ac, float %.028, float %i.ad)
  %i.af = mul i64 %.033.epil.init, %4
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.af
  store float %i.ae, ptr %gep.epil, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.ag = add nuw i64 %.02734, 1                  ; 2 uses
  %exitcond39.not = icmp eq i64 %i.ag, %3
  br i1 %exitcond39.not, label %._crit_edge37.split, label %.lr.ph, !llvm.loop !16

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.033 = phi i64 [ %i.ay, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ah = load ptr, ptr %i.o, align 8
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.033
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.x
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = sitofp i64 %i.ak to float
  %i.am = load float, ptr %i.s, align 4
  %i.an = tail call float @llvm.fmuladd.f32(float %i.al, float %.028, float %i.am)
  %i.ao = mul i64 %.033, %4
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ao
  store float %i.an, ptr %gep, align 4
  %i.ap = or disjoint i64 %.033, 1                ; 2 uses
end_hunk_0
