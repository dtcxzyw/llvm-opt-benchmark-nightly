Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dcb_demosaic?download=true
inline.NumInlined: 49
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6LibRaw7dcb_horEPA3_f:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph27, %._crit_edge
  %indvars.iv = phi i32 [ %i.n, %.lr.ph27 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.02025 = phi i32 [ 2, %.lr.ph27 ], [ %i.bl, %._crit_edge ] ; 3 uses
  %i.q = shl nuw nsw i32 %.02025, 2
  %i.r = and i32 %i.q, 28
  %i.s = lshr i32 %i.j, %i.r
  %i.t = and i32 %i.s, 1                          ; 3 uses
  %i.u = or disjoint i32 %i.t, 2                  ; 3 uses
  %i.v = icmp slt i32 %i.u, %i.k
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.w = add i32 %indvars.iv, %i.t
  %i.x = zext i32 %i.w to i64                     ; 4 uses
  %i.y = sub nsw i32 %i.p, %i.t                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 16
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.z = lshr i32 %i.y, 1
  %narrow = add nuw i32 %i.z, 1
  %i.aa = zext i32 %narrow to i64                 ; 2 uses
  %i.ab = and i64 %i.aa, 7                        ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 8, i64 %i.ab
  %n.vec = sub nsw i64 %i.aa, %i.ad               ; 3 uses
  %i.ae = shl nsw i64 %n.vec, 1
  %i.af = add nsw i64 %i.ae, %i.x
  %i.ag = trunc i64 %n.vec to i32
  %i.ah = shl i32 %i.ag, 1
  %i.ai = add i32 %i.u, %i.ah
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl i64 %index, 4
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %gep, i64 10
  %wide.vec = load <64 x i16>, ptr %i.aj, align 2, !tbaa !82
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ak = zext <8 x i16> %strided.vec to <8 x i32>
  %i.al = getelementptr i8, ptr %gep, i64 -6
  %wide.vec34 = load <64 x i16>, ptr %i.al, align 2, !tbaa !82
  %strided.vec35 = shufflevector <64 x i16> %wide.vec34, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.am = zext <8 x i16> %strided.vec35 to <8 x i32>
  %i.an = add nuw nsw <8 x i32> %i.am, %i.ak
  %i.ao = uitofp nneg <8 x i32> %i.an to <8 x double>
  %i.ap = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.ao, splat (double 5.000000e-01)
  %i.aq = fptosi <8 x double> %i.ap to <8 x i32>
  %i.ar = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aq, <8 x i32> splat (i32 65535))
  %i.as = uitofp nneg <8 x i32> %i.ar to <8 x float>
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %vec.ind
  %wide.gep36 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.as, <8 x ptr> align 4 %wide.gep36, <8 x i1> splat (i1 true)), !tbaa !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %.lr.ph.preheader38, label %vector.body, !llvm.loop !91

.lr.ph.preheader38:                               ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv29.ph = phi i64 [ %i.x, %.lr.ph.preheader ], [ %i.af, %vector.body ]
  %.01923.ph = phi i32 [ %i.u, %.lr.ph.preheader ], [ %i.ai, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %.lr.ph ], [ %indvars.iv29.ph, %.lr.ph.preheader38 ] ; 3 uses
  %.01923 = phi i32 [ %i.bj, %.lr.ph ], [ %.01923.ph, %.lr.ph.preheader38 ]
  %i.au = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv29 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !82
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr i8, ptr %i.au, i64 -6
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !82
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, %i.ax
  %i.bc = uitofp nneg i32 %i.bb to double
  %i.bd = fmul reassoc nnan nsz arcp contract afn double %i.bc, 5.000000e-01
  %i.be = fptosi double %i.bd to i32
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 65535)
  %i.bg = uitofp nneg i32 %i.bf to float
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store float %i.bg, ptr %i.bi, align 4, !tbaa !83
  %i.bj = add nuw nsw i32 %.01923, 2              ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 2
  %i.bk = icmp slt i32 %i.bj, %i.k
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.bl = add nuw nsw i32 %.02025, 1
  %indvars.iv.next = add nuw i32 %indvars.iv, %i.c
  %exitcond.not = icmp eq i32 %.02025, %i.o
  br i1 %exitcond.not, label %._crit_edge28, label %bb.b, !llvm.loop !1

._crit_edge28:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw9dcb_colorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !79   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !80   ; 2 uses
  %i.f = icmp ugt i16 %i.e, 2
  br i1 %i.f, label %.lr.ph218, label %._crit_edge226

.lr.ph218:                                        ; preds = %bb.a
  %i.g = zext i16 %i.c to i32                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.j = add nsw i32 %i.g, -1                     ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8              ; 25 uses
  %i.l = zext i16 %i.c to i64                     ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 4
  %scevgep244 = getelementptr i8, ptr %i.k, i64 6
  %i.m = add nsw i32 %i.g, -3
  %scevgep246 = getelementptr nuw i8, ptr %i.k, i64 2
  %scevgep248 = getelementptr i8, ptr %i.k, i64 4
  %i.n = shl nuw nsw i64 %i.l, 3                  ; 12 uses
  %i.o = getelementptr i8, ptr %i.k, i64 %i.n
  %scevgep250 = getelementptr i8, ptr %i.o, i64 10
  %i.p = add nuw nsw i64 %i.n, 12                 ; 2 uses
  %scevgep252 = getelementptr i8, ptr %i.k, i64 %i.p
  %i.q = getelementptr i8, ptr %i.k, i64 %i.n
  %scevgep254 = getelementptr i8, ptr %i.q, i64 -6
  %i.r = add nsw i64 %i.n, -4                     ; 2 uses
  %scevgep256 = getelementptr i8, ptr %i.k, i64 %i.r
  %i.s = sub nsw i64 10, %i.n
  %scevgep258 = getelementptr i8, ptr %i.k, i64 %i.s
  %i.t = sub nsw i64 12, %i.n                     ; 2 uses
  %scevgep260 = getelementptr i8, ptr %i.k, i64 %i.t
  %i.u = sub nuw nsw i64 -6, %i.n
  %scevgep262 = getelementptr i8, ptr %i.k, i64 %i.u
  %i.v = sub nuw nsw i64 -4, %i.n                 ; 2 uses
  %scevgep264 = getelementptr i8, ptr %i.k, i64 %i.v
  %scevgep266 = getelementptr i8, ptr %i.k, i64 %i.p
  %i.w = getelementptr i8, ptr %i.k, i64 %i.n
  %scevgep268 = getelementptr i8, ptr %i.w, i64 14
  %scevgep270 = getelementptr i8, ptr %i.k, i64 %i.r
  %i.x = getelementptr i8, ptr %i.k, i64 %i.n
  %scevgep272 = getelementptr i8, ptr %i.x, i64 -2
  %scevgep274 = getelementptr i8, ptr %i.k, i64 %i.t
  %i.y = sub nsw i64 14, %i.n
  %scevgep276 = getelementptr i8, ptr %i.k, i64 %i.y
  %scevgep278 = getelementptr i8, ptr %i.k, i64 %i.v
  %i.z = sub nuw nsw i64 -2, %i.n
  %scevgep280 = getelementptr i8, ptr %i.k, i64 %i.z
  %i.aa = add nsw i32 %i.g, -3
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge
  %i.ab = icmp ugt i16 %i.fs, 2
  br i1 %i.ab, label %.lr.ph225, label %._crit_edge226

.lr.ph225:                                        ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.ae = zext i16 %i.c to i64                    ; 2 uses
  %.pre231 = load i16, ptr %i.b, align 2, !tbaa !79
  %i.af = load ptr, ptr %i.a, align 8             ; 3 uses
  %invariant.gep240 = getelementptr [8 x i8], ptr %i.af, i64 %i.ae
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph218, %._crit_edge
  %i.ag = phi i16 [ %i.e, %.lr.ph218 ], [ %i.fs, %._crit_edge ]
  %.0186216 = phi i32 [ 1, %.lr.ph218 ], [ %i.ft, %._crit_edge ] ; 3 uses
  %i.ah = shl nuw nsw i32 %.0186216, 1
  %i.ai = and i32 %i.ah, 14                       ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = or disjoint i32 %i.aj, 2
  %i.al = lshr i32 %i.i, %i.ak
  %i.am = and i32 %i.al, 1                        ; 4 uses
  %i.an = add nuw nsw i32 %i.am, 1                ; 5 uses
  %i.ao = icmp slt i32 %i.an, %i.j
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ap = and i32 %i.an, 1
  %i.aq = or disjoint i32 %i.ap, %i.ai
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = lshr i32 %i.i, %i.ar                    ; 2 uses
  %i.at = and i32 %i.as, 3
  %i.au = sub nsw i32 2, %i.at
  %i.av = load i16, ptr %i.b, align 2, !tbaa !79
  %i.aw = zext i16 %i.av to i32
  %i.ax = sext i32 %i.au to i64                   ; 10 uses
  %i.ay = mul i32 %.0186216, %i.aw
  %i.az = add i32 %i.ay, 1
  %i.ba = add i32 %i.az, %i.am
  %i.bb = sext i32 %i.ba to i64                   ; 6 uses
  %i.bc = sub nsw i32 %i.aa, %i.am                ; 2 uses
  %i.bd = lshr i32 %i.bc, 1
  %narrow = add nuw i32 %i.bd, 1
  %i.be = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.bc, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bf = shl nuw nsw i64 %i.bb, 3                ; 3 uses
  %i.bg = shl i32 %i.as, 1
  %i.bh = and i32 %i.bg, 6
  %i.bi = zext nneg i32 %i.bh to i64              ; 4 uses
  %i.bj = sub nsw i64 %i.bf, %i.bi
  %scevgep243 = getelementptr i8, ptr %scevgep, i64 %i.bj ; 9 uses
  %i.bk = sub nsw i32 %i.m, %i.am
  %i.bl = lshr i32 %i.bk, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 4                ; 3 uses
  %i.bo = add nuw nsw i64 %i.bn, %i.bf            ; 2 uses
  %i.bp = sub nsw i64 %i.bo, %i.bi
  %scevgep245 = getelementptr i8, ptr %scevgep244, i64 %i.bp ; 9 uses
  %scevgep247 = getelementptr nuw i8, ptr %scevgep246, i64 %i.bf
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 %i.bo
  %1 = shl nsw i64 %i.bb, 3                       ; 7 uses
  %scevgep251 = getelementptr i8, ptr %scevgep250, i64 %1
  %2 = add nsw i64 %i.bn, %1                      ; 4 uses
  %scevgep253 = getelementptr i8, ptr %scevgep252, i64 %2
  %scevgep255 = getelementptr i8, ptr %scevgep254, i64 %1
  %scevgep257 = getelementptr i8, ptr %scevgep256, i64 %2
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %1
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %2
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %1
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %2
  %3 = sub nsw i64 %1, %i.bi                      ; 4 uses
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %3
  %4 = add nsw i64 %i.bn, %1
  %5 = sub nsw i64 %4, %i.bi                      ; 4 uses
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %5
  %scevgep271 = getelementptr i8, ptr %scevgep270, i64 %3
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %5
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %3
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %5
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %3
  %scevgep281 = getelementptr i8, ptr %scevgep280, i64 %5
  %bound0 = icmp ult ptr %scevgep243, %scevgep249
  %bound1 = icmp ult ptr %scevgep247, %scevgep245
  %found.conflict = and i1 %bound0, %bound1
  %bound0282 = icmp ult ptr %scevgep243, %scevgep253
  %bound1283 = icmp ult ptr %scevgep251, %scevgep245
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx = or i1 %found.conflict, %found.conflict284
  %bound0285 = icmp ult ptr %scevgep243, %scevgep257
  %bound1286 = icmp ult ptr %scevgep255, %scevgep245
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx, %found.conflict287
  %bound0289 = icmp ult ptr %scevgep243, %scevgep261
  %bound1290 = icmp ult ptr %scevgep259, %scevgep245
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %conflict.rdx288, %found.conflict291
  %bound0293 = icmp ult ptr %scevgep243, %scevgep265
  %bound1294 = icmp ult ptr %scevgep263, %scevgep245
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx292, %found.conflict295
  %bound0297 = icmp ult ptr %scevgep243, %scevgep269
  %bound1298 = icmp ult ptr %scevgep267, %scevgep245
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %conflict.rdx296, %found.conflict299
  %bound0301 = icmp ult ptr %scevgep243, %scevgep273
  %bound1302 = icmp ult ptr %scevgep271, %scevgep245
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx304 = or i1 %conflict.rdx300, %found.conflict303
  %bound0305 = icmp ult ptr %scevgep243, %scevgep277
  %bound1306 = icmp ult ptr %scevgep275, %scevgep245
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx308 = or i1 %conflict.rdx304, %found.conflict307
  %bound0309 = icmp ult ptr %scevgep243, %scevgep281
  %bound1310 = icmp ult ptr %scevgep279, %scevgep245
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %conflict.rdx308, %found.conflict311
  br i1 %conflict.rdx312, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bq = and i64 %i.be, 7                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 8, i64 %i.bq
  %n.vec = sub nsw i64 %i.be, %i.bs               ; 3 uses
  %i.bt = shl nsw i64 %n.vec, 1
  %i.bu = add nsw i64 %i.bt, %i.bb
  %i.bv = trunc i64 %n.vec to i32
  %i.bw = shl i32 %i.bv, 1
  %i.bx = add i32 %i.an, %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl nuw i64 %index, 1
  %i.bz = add nuw i64 %i.by, %i.bb                ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %wide.vec = load <64 x i16>, ptr %i.cb, align 2, !tbaa !82, !alias.scope !109
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cc = zext <8 x i16> %strided.vec to <8 x i32>
  %i.cd = shl nuw nsw <8 x i32> %i.cc, splat (i32 2)
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bz ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 10
  %wide.vec313 = load <64 x i16>, ptr %i.cg, align 2, !tbaa !82, !alias.scope !110
  %strided.vec314 = shufflevector <64 x i16> %wide.vec313, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ch = zext <8 x i16> %strided.vec314 to <8 x i32>
  %i.ci = getelementptr i8, ptr %i.ce, i64 -8
  %i.cj = getelementptr i8, ptr %i.ce, i64 -6
  %wide.vec315 = load <64 x i16>, ptr %i.cj, align 2, !tbaa !82, !alias.scope !111
  %strided.vec316 = shufflevector <64 x i16> %wide.vec315, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ck = zext <8 x i16> %strided.vec316 to <8 x i32>
  %i.cl = sub nsw i64 %i.bz, %i.l
  %i.cm = getelementptr [8 x i8], ptr %i.k, i64 %i.cl ; 4 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = getelementptr i8, ptr %i.cm, i64 10
  %wide.vec317 = load <64 x i16>, ptr %i.co, align 2, !tbaa !82, !alias.scope !112
  %strided.vec318 = shufflevector <64 x i16> %wide.vec317, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cp = zext <8 x i16> %strided.vec318 to <8 x i32>
  %i.cq = getelementptr i8, ptr %i.cm, i64 -8
  %i.cr = getelementptr i8, ptr %i.cm, i64 -6
  %wide.vec319 = load <64 x i16>, ptr %i.cr, align 2, !tbaa !82, !alias.scope !113
  %strided.vec320 = shufflevector <64 x i16> %wide.vec319, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cs = zext <8 x i16> %strided.vec320 to <8 x i32>
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.ax
  %wide.vec321 = load <64 x i16>, ptr %i.ct, align 2, !tbaa !82, !alias.scope !114
  %strided.vec322 = shufflevector <64 x i16> %wide.vec321, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cu = zext <8 x i16> %strided.vec322 to <8 x i32>
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.ax
  %wide.vec323 = load <64 x i16>, ptr %i.cv, align 2, !tbaa !82, !alias.scope !115
  %strided.vec324 = shufflevector <64 x i16> %wide.vec323, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cw = zext <8 x i16> %strided.vec324 to <8 x i32>
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.ax
  %wide.vec325 = load <64 x i16>, ptr %i.cx, align 2, !tbaa !82, !alias.scope !116
  %strided.vec326 = shufflevector <64 x i16> %wide.vec325, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cy = zext <8 x i16> %strided.vec326 to <8 x i32>
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.ax
  %wide.vec327 = load <64 x i16>, ptr %i.cz, align 2, !tbaa !82, !alias.scope !117
  %strided.vec328 = shufflevector <64 x i16> %wide.vec327, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.da = zext <8 x i16> %strided.vec328 to <8 x i32>
  %i.db = add nuw nsw <8 x i32> %i.ch, %i.ck
  %i.dc = add nuw nsw <8 x i32> %i.db, %i.cp
  %i.dd = add nuw nsw <8 x i32> %i.dc, %i.cs
  %i.de = sub nsw <8 x i32> %i.cd, %i.dd
  %i.df = add nsw <8 x i32> %i.de, %i.cu
  %i.dg = add nsw <8 x i32> %i.df, %i.cw
  %i.dh = add nsw <8 x i32> %i.dg, %i.cy
  %i.di = add nsw <8 x i32> %i.dh, %i.da
  %i.dj = sitofp reassoc nsz arcp contract afn <8 x i32> %i.di to <8 x double>
  %i.dk = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dj, splat (double 2.500000e-01)
  %i.dl = fptosi <8 x double> %i.dk to <8 x i32>
  %i.dm = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dl, <8 x i32> zeroinitializer)
  %i.dn = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dm, <8 x i32> splat (i32 65535))
  %i.do = trunc nuw <8 x i32> %i.dn to <8 x i16>
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.ax
  %i.dq = shufflevector <8 x i16> %i.do, <8 x i16> poison, <57 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7>
  tail call void @llvm.masked.store.v57i16.p0(<57 x i16> %i.dq, ptr align 2 %i.dp, <57 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>), !tbaa !82, !alias.scope !118, !noalias !119
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %scalar.ph.preheader, label %vector.body, !llvm.loop !104

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph ], [ %i.bu, %vector.body ]
  %.0184214.ph = phi i32 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph ], [ %i.bx, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.0184214 = phi i32 [ %i.fq, %scalar.ph ], [ %.0184214.ph, %scalar.ph.preheader ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !82
  %i.dv = zext i16 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 2
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %gep, i64 10
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !82
  %i.ea = zext i16 %i.dz to i32
  %i.eb = getelementptr i8, ptr %gep, i64 -8
  %i.ec = getelementptr i8, ptr %gep, i64 -6
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !82
  %i.ee = zext i16 %i.ed to i32
  %i.ef = sub nsw i64 %indvars.iv, %i.l
  %i.eg = getelementptr [8 x i8], ptr %i.k, i64 %i.ef ; 4 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %i.ei = getelementptr i8, ptr %i.eg, i64 10
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !82
  %i.ek = zext i16 %i.ej to i32
  %i.el = getelementptr i8, ptr %i.eg, i64 -8
  %i.em = getelementptr i8, ptr %i.eg, i64 -6
  %i.en = load i16, ptr %i.em, align 2, !tbaa !82
  %i.eo = zext i16 %i.en to i32
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.ax
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !82
  %i.er = zext i16 %i.eq to i32
  %i.es = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.ax
  %i.et = load i16, ptr %i.es, align 2, !tbaa !82
  %i.eu = zext i16 %i.et to i32
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %i.ax
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !82
  %i.ex = zext i16 %i.ew to i32
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.ax
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !82
  %i.fa = zext i16 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.ea, %i.ee
  %i.fc = add nuw nsw i32 %i.fb, %i.ek
  %i.fd = add nuw nsw i32 %i.fc, %i.eo
  %i.fe = sub nsw i32 %i.dw, %i.fd
  %i.ff = add nsw i32 %i.fe, %i.er
  %i.fg = add nsw i32 %i.ff, %i.eu
  %i.fh = add nsw i32 %i.fg, %i.ex
  %i.fi = add nsw i32 %i.fh, %i.fa
  %i.fj = sitofp reassoc nsz arcp contract afn i32 %i.fi to double
  %i.fk = fmul reassoc nnan nsz arcp contract afn double %i.fj, 2.500000e-01
  %i.fl = fptosi double %i.fk to i32
  %i.fm = tail call i32 @llvm.smax.i32(i32 %i.fl, i32 0)
  %i.fn = tail call i32 @llvm.umin.i32(i32 %i.fm, i32 65535)
  %i.fo = trunc nuw i32 %i.fn to i16
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.ax
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !82
  %i.fq = add nuw nsw i32 %.0184214, 2            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.fr = icmp slt i32 %i.fq, %i.j
  br i1 %i.fr, label %scalar.ph, label %._crit_edge.loopexit, !llvm.loop !105

._crit_edge.loopexit:                             ; preds = %scalar.ph
  %.pre = load i16, ptr %i.d, align 4, !tbaa !80
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.fs = phi i16 [ %.pre, %._crit_edge.loopexit ], [ %i.ag, %bb.b ] ; 4 uses
  %i.ft = add nuw nsw i32 %.0186216, 1            ; 2 uses
  %i.fu = zext i16 %i.fs to i32
  %i.fv = add nsw i32 %i.fu, -1
  %i.fw = icmp slt i32 %i.ft, %i.fv
  br i1 %i.fw, label %bb.b, label %.preheader, !llvm.loop !106

bb.c:                                             ; preds = %.lr.ph225, %._crit_edge223
  %i.fx = phi i16 [ %i.fs, %.lr.ph225 ], [ %i.je, %._crit_edge223 ]
  %i.fy = phi i16 [ %.pre231, %.lr.ph225 ], [ %i.jf, %._crit_edge223 ] ; 2 uses
  %.1187224 = phi i32 [ 1, %.lr.ph225 ], [ %i.jg, %._crit_edge223 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6LibRaw9dcb_colorEv:bb.a
  %i.gf = zext i16 %i.fy to i32                   ; 2 uses
  %i.gg = add nsw i32 %i.gf, -1
  %i.gh = icmp slt i32 %i.ge, %i.gg
  br i1 %i.gh, label %.lr.ph222, label %._crit_edge223

.lr.ph222:                                        ; preds = %bb.c
  %i.gi = or disjoint i32 %i.gd, %i.ga
  %i.gj = shl nuw nsw i32 %i.gi, 1
  %i.gk = lshr i32 %i.ad, %i.gj
  %i.gl = and i32 %i.gk, 3                        ; 2 uses
  %i.gm = sub nsw i32 2, %i.gl
  %i.gn = zext nneg i32 %i.gl to i64              ; 3 uses
  %i.go = sext i32 %i.gm to i64                   ; 3 uses
  %i.gp = mul i32 %.1187224, %i.gf
  %i.gq = add i32 %i.gp, 1
  %i.gr = add i32 %i.gq, %i.gd
  %i.gs = sext i32 %i.gr to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph222, %bb.d
  %indvars.iv228 = phi i64 [ %i.gs, %.lr.ph222 ], [ %indvars.iv.next229, %bb.d ] ; 4 uses
  %.1185219 = phi i32 [ %i.ge, %.lr.ph222 ], [ %i.iz, %bb.d ]
  %i.gt = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv228 ; 7 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 2 uses
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !82
  %i.gw = zext i16 %i.gv to i32
  %i.gx = shl nuw nsw i32 %i.gw, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 10
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !82
  %i.hb = zext i16 %i.ha to i32
  %i.hc = getelementptr i8, ptr %i.gt, i64 -8
  %i.hd = getelementptr i8, ptr %i.gt, i64 -6
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !82
  %i.hf = zext i16 %i.he to i32
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.gn
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !82
  %i.hi = zext i16 %i.hh to i32
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.gn
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !82
  %i.hl = zext i16 %i.hk to i32
  %i.hm = add nuw nsw i32 %i.hb, %i.hf
  %i.hn = sub nsw i32 %i.gx, %i.hm
  %i.ho = add nsw i32 %i.hn, %i.hi
  %i.hp = add nsw i32 %i.ho, %i.hl
  %i.hq = sitofp reassoc nsz arcp contract afn i32 %i.hp to double
  %i.hr = fmul reassoc nnan nsz arcp contract afn double %i.hq, 5.000000e-01
  %i.hs = fptosi double %i.hr to i32
  %i.ht = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 0)
  %i.hu = tail call i32 @llvm.umin.i32(i32 %i.ht, i32 65535)
  %i.hv = trunc nuw i32 %i.hu to i16
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %i.gn
  store i16 %i.hv, ptr %i.hw, align 2, !tbaa !82
  %i.hx = load i16, ptr %i.gu, align 2, !tbaa !82
  %i.hy = zext i16 %i.hx to i32
  %i.hz = shl nuw nsw i32 %i.hy, 1
  %gep241 = getelementptr [8 x i8], ptr %invariant.gep240, i64 %indvars.iv228 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %gep241, i64 2
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !82
  %i.ic = zext i16 %i.ib to i32
  %i.id = sub nsw i64 %indvars.iv228, %i.ae
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !82
  %i.ih = zext i16 %i.ig to i32
  %i.ii = getelementptr inbounds [2 x i8], ptr %gep241, i64 %i.go
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !82
  %i.ik = zext i16 %i.ij to i32
  %i.il = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.go
  %i.im = load i16, ptr %i.il, align 2, !tbaa !82
  %i.in = zext i16 %i.im to i32
  %i.io = add nuw nsw i32 %i.ic, %i.ih
  %i.ip = sub nsw i32 %i.hz, %i.io
  %i.iq = add nsw i32 %i.ip, %i.ik
  %i.ir = add nsw i32 %i.iq, %i.in
  %i.is = sitofp reassoc nsz arcp contract afn i32 %i.ir to double
  %i.it = fmul reassoc nnan nsz arcp contract afn double %i.is, 5.000000e-01
  %i.iu = fptosi double %i.it to i32
  %i.iv = tail call i32 @llvm.smax.i32(i32 %i.iu, i32 0)
  %i.iw = tail call i32 @llvm.umin.i32(i32 %i.iv, i32 65535)
  %i.ix = trunc nuw i32 %i.iw to i16
  %i.iy = getelementptr inbounds [2 x i8], ptr %i.gt, i64 %i.go
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !82
  %i.iz = add nuw nsw i32 %.1185219, 2            ; 2 uses
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 2
  %i.ja = load i16, ptr %i.b, align 2, !tbaa !79  ; 2 uses
  %i.jb = zext i16 %i.ja to i32
  %i.jc = add nsw i32 %i.jb, -1
  %i.jd = icmp slt i32 %i.iz, %i.jc
  br i1 %i.jd, label %bb.d, label %._crit_edge223.loopexit, !llvm.loop !107

._crit_edge223.loopexit:                          ; preds = %bb.d
  %.pre232 = load i16, ptr %i.d, align 4, !tbaa !80
  br label %._crit_edge223

._crit_edge223:                                   ; preds = %._crit_edge223.loopexit, %bb.c
  %i.je = phi i16 [ %.pre232, %._crit_edge223.loopexit ], [ %i.fx, %bb.c ] ; 2 uses
  %i.jf = phi i16 [ %i.ja, %._crit_edge223.loopexit ], [ %i.fy, %bb.c ]
  %i.jg = add nuw nsw i32 %.1187224, 1            ; 2 uses
  %i.jh = zext i16 %i.je to i32
  %i.ji = add nsw i32 %i.jh, -1
  %i.jj = icmp slt i32 %i.jg, %i.ji
  br i1 %i.jj, label %bb.c, label %._crit_edge226, !llvm.loop !108

._crit_edge226:                                   ; preds = %._crit_edge223, %bb.a, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10dcb_color2EPA3_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.c = load i16, ptr %i.b, align 2, !tbaa !79   ; 3 uses
  %i.d = zext i16 %i.c to i32                     ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i16, ptr %i.e, align 4, !tbaa !80   ; 2 uses
  %i.g = zext i16 %i.f to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  %i.i = icmp ugt i16 %i.f, 2
  br i1 %i.i, label %.lr.ph240, label %._crit_edge252

.lr.ph240:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.k = load i32, ptr %i.j, align 8, !tbaa !81   ; 2 uses
  %i.l = add nsw i32 %i.d, -1                     ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = add nuw nsw i32 %i.d, 1
  %i.o = zext i16 %i.c to i64                     ; 7 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep268 = getelementptr i8, ptr %1, i64 12
  %i.p = add nsw i32 %i.d, -3
  %scevgep270 = getelementptr i8, ptr %1, i64 4
  %scevgep272 = getelementptr i8, ptr %1, i64 8
  %scevgep274 = getelementptr i8, ptr %1, i64 16
  %scevgep276 = getelementptr i8, ptr %1, i64 20
  %scevgep278 = getelementptr i8, ptr %1, i64 -8
  %scevgep280 = getelementptr i8, ptr %1, i64 -4
  %i.q = mul nuw nsw i64 %i.o, 12                 ; 4 uses
  %i.r = sub nsw i64 16, %i.q
  %scevgep282 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = sub nsw i64 20, %i.q
  %scevgep284 = getelementptr i8, ptr %1, i64 %i.s
  %i.t = sub nuw nsw i64 -8, %i.q
  %scevgep286 = getelementptr i8, ptr %1, i64 %i.t
  %i.u = sub nuw nsw i64 -4, %i.q
  %scevgep288 = getelementptr i8, ptr %1, i64 %i.u
  %i.v = add nsw i32 %i.d, -3
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.op = add nuw nsw <8 x i64> %broadcast.splat, splat (i64 1)
  %invariant.op408 = add nsw <8 x i64> %broadcast.splat, splat (i64 -1)
  br label %bb.b

.lr.ph251:                                        ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.x = load i32, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.y = add nsw i32 %i.d, -1                     ; 2 uses
  %i.z = add nuw nsw i32 %i.d, 1
  %i.aa = zext i16 %i.c to i64                    ; 4 uses
  %scevgep330 = getelementptr i8, ptr %1, i64 4
  %i.ab = add nsw i32 %i.d, -3
  %scevgep332 = getelementptr i8, ptr %1, i64 8
  %scevgep334 = getelementptr i8, ptr %1, i64 12
  %scevgep336 = getelementptr i8, ptr %1, i64 4
  %scevgep338 = getelementptr i8, ptr %1, i64 8
  %scevgep340 = getelementptr i8, ptr %1, i64 4
  %scevgep342 = getelementptr i8, ptr %1, i64 8
  %i.ac = mul nuw nsw i64 %i.o, 12                ; 2 uses
  %i.ad = sub nsw i64 4, %i.ac
  %scevgep344 = getelementptr i8, ptr %1, i64 %i.ad
  %i.ae = sub nsw i64 8, %i.ac
  %scevgep346 = getelementptr i8, ptr %1, i64 %i.ae
  %i.af = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ag = add nsw i32 %i.d, -3
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph240, %._crit_edge
  %indvars.iv = phi i32 [ %i.n, %.lr.ph240 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0209238 = phi i32 [ 1, %.lr.ph240 ], [ %i.ex, %._crit_edge ] ; 2 uses
  %i.ah = shl nuw nsw i32 %.0209238, 1
  %i.ai = and i32 %i.ah, 14                       ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = or disjoint i32 %i.aj, 2
  %i.al = lshr i32 %i.k, %i.ak
  %i.am = and i32 %i.al, 1                        ; 4 uses
  %i.an = add nuw nsw i32 %i.am, 1                ; 5 uses
  %i.ao = icmp slt i32 %i.an, %i.l
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ap = and i32 %i.an, 1
  %i.aq = or disjoint i32 %i.ap, %i.ai
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = lshr i32 %i.k, %i.ar                    ; 2 uses
  %i.at = and i32 %i.as, 3
  %i.au = sub nsw i32 2, %i.at
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.m, i64 %i.av ; 8 uses
  %i.aw = add i32 %indvars.iv, %i.am
  %i.ax = sext i32 %i.aw to i64                   ; 7 uses
  %i.ay = sub nsw i32 %i.v, %i.am                 ; 2 uses
  %i.az = lshr i32 %i.ay, 1
  %narrow = add nuw i32 %i.az, 1
  %i.ba = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ay, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bb = mul nuw nsw i64 %i.ax, 12               ; 3 uses
  %i.bc = shl i32 %i.as, 2
  %i.bd = and i32 %i.bc, 12
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = sub nsw i64 %i.bb, %i.be
  %scevgep267 = getelementptr i8, ptr %scevgep, i64 %i.bf ; 5 uses
  %i.bg = sub nsw i32 %i.p, %i.am
  %i.bh = lshr i32 %i.bg, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bi, 24               ; 3 uses
  %i.bk = add nuw nsw i64 %i.bj, %i.bb            ; 2 uses
  %i.bl = sub nsw i64 %i.bk, %i.be
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %i.bl ; 5 uses
  %scevgep271 = getelementptr i8, ptr %scevgep270, i64 %i.bb
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.bk
  %i.bm = add nsw i64 %i.o, %i.ax
  %i.bn = mul nsw i64 %i.bm, 12                   ; 3 uses
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.bn
  %i.bo = add nsw i64 %i.bj, %i.bn                ; 2 uses
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.bo
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.bn
  %scevgep281 = getelementptr i8, ptr %scevgep280, i64 %i.bo
  %2 = mul nsw i64 %i.ax, 12                      ; 3 uses
  %scevgep283 = getelementptr i8, ptr %scevgep282, i64 %2
  %3 = add nsw i64 %i.bj, %2                      ; 2 uses
  %scevgep285 = getelementptr i8, ptr %scevgep284, i64 %3
  %scevgep287 = getelementptr i8, ptr %scevgep286, i64 %2
  %scevgep289 = getelementptr i8, ptr %scevgep288, i64 %3
  %bound0 = icmp ult ptr %scevgep267, %scevgep273
  %bound1 = icmp ult ptr %scevgep271, %scevgep269
  %found.conflict = and i1 %bound0, %bound1
  %bound0290 = icmp ult ptr %scevgep267, %scevgep277
  %bound1291 = icmp ult ptr %scevgep275, %scevgep269
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx = or i1 %found.conflict, %found.conflict292
  %bound0293 = icmp ult ptr %scevgep267, %scevgep281
  %bound1294 = icmp ult ptr %scevgep279, %scevgep269
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx, %found.conflict295
  %bound0297 = icmp ult ptr %scevgep267, %scevgep285
  %bound1298 = icmp ult ptr %scevgep283, %scevgep269
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %conflict.rdx296, %found.conflict299
  %bound0301 = icmp ult ptr %scevgep267, %scevgep289
  %bound1302 = icmp ult ptr %scevgep287, %scevgep269
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx304 = or i1 %conflict.rdx300, %found.conflict303
  br i1 %conflict.rdx304, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bp = and i64 %i.ba, 7                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = select i1 %i.bq, i64 8, i64 %i.bp
  %n.vec = sub nsw i64 %i.ba, %i.br               ; 3 uses
  %i.bs = shl nsw i64 %n.vec, 1
  %i.bt = add nsw i64 %i.bs, %i.ax
  %i.bu = trunc i64 %n.vec to i32
  %i.bv = shl i32 %i.bu, 1
  %i.bw = add i32 %i.an, %i.bv
  %broadcast.splatinsert305 = insertelement <8 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat306 = shufflevector <8 x i64> %broadcast.splatinsert305, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat306, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %vec.ind ; 2 uses
  %wide.gep307 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep307, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !139
  %i.bx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float 4.000000e+00)
  %.reass = add nuw nsw <8 x i64> %vec.ind, %invariant.op ; 2 uses
  %i.by = extractelement <8 x i64> %.reass, i64 0
  %wide.gep308 = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %.reass
  %wide.gep309 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep308, i64 4
  %wide.masked.gather310 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep309, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !140
  %.reass409 = add nsw <8 x i64> %vec.ind, %invariant.op408 ; 2 uses
  %i.bz = extractelement <8 x i64> %.reass409, i64 0
  %wide.gep311 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %.reass409
  %wide.gep312 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep311, i64 4
  %wide.masked.gather313 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep312, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !141
  %i.ca = sub nsw <8 x i64> %vec.ind, %broadcast.splat ; 2 uses
  %i.cb = add nuw nsw <8 x i64> %i.ca, splat (i64 1) ; 2 uses
  %i.cc = extractelement <8 x i64> %i.cb, i64 0
  %wide.gep314 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.cb
  %wide.gep315 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep314, i64 4
  %wide.masked.gather316 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep315, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !142
  %i.cd = add nsw <8 x i64> %i.ca, splat (i64 -1) ; 2 uses
  %i.ce = extractelement <8 x i64> %i.cd, i64 0
  %wide.gep317 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.cd
  %wide.gep318 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep317, i64 4
  %wide.masked.gather319 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep318, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !143
  %i.cf = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.by
  %wide.vec = load <64 x i16>, ptr %i.cf, align 2, !tbaa !82
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cg = uitofp <8 x i16> %strided.vec to <8 x float>
  %i.ch = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bz
  %wide.vec320 = load <64 x i16>, ptr %i.ch, align 2, !tbaa !82
  %strided.vec321 = shufflevector <64 x i16> %wide.vec320, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ci = uitofp <8 x i16> %strided.vec321 to <8 x float>
  %i.cj = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cc
  %wide.vec322 = load <64 x i16>, ptr %i.cj, align 2, !tbaa !82
  %strided.vec323 = shufflevector <64 x i16> %wide.vec322, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ck = uitofp <8 x i16> %strided.vec323 to <8 x float>
  %i.cl = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ce
  %wide.vec324 = load <64 x i16>, ptr %i.cl, align 2, !tbaa !82
  %strided.vec325 = shufflevector <64 x i16> %wide.vec324, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cm = uitofp <8 x i16> %strided.vec325 to <8 x float>
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather310, %wide.masked.gather313
  %i.co = fadd reassoc nsz arcp contract afn <8 x float> %i.cn, %wide.masked.gather316
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %wide.masked.gather319
  %i.cq = fsub reassoc nsz arcp contract afn <8 x float> %i.bx, %i.cp
  %i.cr = fadd reassoc nsz arcp contract afn <8 x float> %i.cq, %i.cg
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cr, %i.ci
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cs, %i.ck
  %i.cu = fadd reassoc nsz arcp contract afn <8 x float> %i.ct, %i.cm
  %i.cv = fpext reassoc nsz arcp contract afn <8 x float> %i.cu to <8 x double>
  %i.cw = fmul reassoc nsz arcp contract afn <8 x double> %i.cv, splat (double 2.500000e-01)
  %i.cx = fptosi <8 x double> %i.cw to <8 x i32>
  %i.cy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cx, <8 x i32> zeroinitializer)
  %i.cz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cy, <8 x i32> splat (i32 65535))
  %i.da = uitofp nneg <8 x i32> %i.cz to <8 x float>
  %wide.gep326 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.av
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.da, <8 x ptr> align 4 %wide.gep326, <8 x i1> splat (i1 true)), !tbaa !83, !alias.scope !144, !noalias !145
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %scalar.ph.preheader, label %vector.body, !llvm.loop !127

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv253.ph = phi i64 [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph ], [ %i.bt, %vector.body ]
  %.0207230.ph = phi i32 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph ], [ %i.bw, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %scalar.ph ], [ %indvars.iv253.ph, %scalar.ph.preheader ] ; 4 uses
  %.0207230 = phi i32 [ %i.ev, %scalar.ph ], [ %.0207230.ph, %scalar.ph.preheader ]
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv253 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !83
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, 4.000000e+00
  %i.dg = add nuw nsw i64 %indvars.iv253, %i.o    ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !83
  %i.dl = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dm = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !83
  %i.dp = sub nsw i64 %indvars.iv253, %i.o        ; 2 uses
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %i.dr = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !83
  %i.du = add nsw i64 %i.dp, -1                   ; 2 uses
  %i.dv = getelementptr inbounds [12 x i8], ptr %1, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !83
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dh
  %i.dy = load i16, ptr %gep, align 2, !tbaa !82
  %i.dz = uitofp i16 %i.dy to float
  %gep233 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dl
  %i.ea = load i16, ptr %gep233, align 2, !tbaa !82
  %i.eb = uitofp i16 %i.ea to float
  %gep235 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dq
  %i.ec = load i16, ptr %gep235, align 2, !tbaa !82
  %i.ed = uitofp i16 %i.ec to float
  %gep237 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.du
  %i.ee = load i16, ptr %gep237, align 2, !tbaa !82
  %i.ef = uitofp i16 %i.ee to float
  %i.eg = fadd reassoc nsz arcp contract afn float %i.dk, %i.do
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, %i.dt
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, %i.dx
  %i.ej = fsub reassoc nsz arcp contract afn float %i.df, %i.ei
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.dz
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.eb
  %i.em = fadd reassoc nsz arcp contract afn float %i.el, %i.ed
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.ef
  %i.eo = fpext reassoc nsz arcp contract afn float %i.en to double
  %i.ep = fmul reassoc nsz arcp contract afn double %i.eo, 2.500000e-01
  %i.eq = fptosi double %i.ep to i32
  %i.er = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 0)
  %i.es = tail call i32 @llvm.umin.i32(i32 %i.er, i32 65535)
  %i.et = uitofp nneg i32 %i.es to float
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.av
  store float %i.et, ptr %i.eu, align 4, !tbaa !83
  %i.ev = add nuw nsw i32 %.0207230, 2            ; 2 uses
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 2
  %i.ew = icmp slt i32 %i.ev, %i.l
  br i1 %i.ew, label %scalar.ph, label %._crit_edge, !llvm.loop !128

._crit_edge:                                      ; preds = %scalar.ph, %bb.b
  %i.ex = add nuw nsw i32 %.0209238, 1            ; 2 uses
  %indvars.iv.next = add nuw i32 %indvars.iv, %i.d
  %exitcond.not = icmp eq i32 %i.ex, %i.h
  br i1 %exitcond.not, label %.lr.ph251, label %bb.b, !llvm.loop !129

bb.c:                                             ; preds = %.lr.ph251, %._crit_edge245
  %indvars.iv256 = phi i32 [ %i.z, %.lr.ph251 ], [ %indvars.iv.next257, %._crit_edge245 ] ; 2 uses
  %.1210250 = phi i32 [ 1, %.lr.ph251 ], [ %i.jt, %._crit_edge245 ] ; 2 uses
  %i.ey = shl nuw nsw i32 %.1210250, 1
  %i.ez = and i32 %i.ey, 14                       ; 2 uses
  %i.fa = shl nuw nsw i32 %i.ez, 1
  %i.fb = lshr i32 %i.x, %i.fa
  %i.fc = and i32 %i.fb, 1                        ; 5 uses
  %i.fd = add nuw nsw i32 %i.fc, 1                ; 4 uses
  %i.fe = icmp slt i32 %i.fd, %i.y
  br i1 %i.fe, label %.lr.ph244, label %._crit_edge245

.lr.ph244:                                        ; preds = %bb.c
  %i.ff = or disjoint i32 %i.fc, %i.ez
  %i.fg = shl nuw nsw i32 %i.ff, 1
  %i.fh = lshr i32 %i.x, %i.fg
  %i.fi = and i32 %i.fh, 3                        ; 2 uses
  %i.fj = sub nsw i32 2, %i.fi
  %i.fk = zext nneg i32 %i.fi to i64              ; 7 uses
  %i.fl = sext i32 %i.fj to i64                   ; 3 uses
  %invariant.gep246 = getelementptr [2 x i8], ptr %i.af, i64 %i.fl ; 4 uses
  %i.fm = add i32 %indvars.iv256, %i.fc
  %i.fn = sext i32 %i.fm to i64                   ; 8 uses
  %i.fo = sub nsw i32 %i.ag, %i.fc                ; 2 uses
  %i.fp = lshr i32 %i.fo, 1
  %narrow407 = add nuw i32 %i.fp, 1
  %i.fq = zext i32 %narrow407 to i64              ; 2 uses
  %min.iters.check376 = icmp ult i32 %i.fo, 16
  br i1 %min.iters.check376, label %scalar.ph375.preheader, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph244
  %i.fr = mul nuw nsw i64 %i.fn, 12               ; 5 uses
  %i.fs = shl nuw nsw i64 %i.fk, 2                ; 4 uses
  %i.ft = getelementptr i8, ptr %1, i64 %i.fr
  %scevgep329 = getelementptr i8, ptr %i.ft, i64 %i.fs ; 4 uses
  %i.fu = sub nsw i32 %i.ab, %i.fc
  %i.fv = lshr i32 %i.fu, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = mul nuw nsw i64 %i.fw, 24               ; 4 uses
  %i.fy = add nuw nsw i64 %i.fx, %i.fr            ; 2 uses
  %i.fz = getelementptr i8, ptr %scevgep330, i64 %i.fy
  %scevgep331 = getelementptr i8, ptr %i.fz, i64 %i.fs ; 4 uses
  %i.ga = sub nsw i64 %i.fr, %i.fs
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.ga ; 4 uses
  %i.gb = sub nsw i64 %i.fy, %i.fs
  %scevgep335 = getelementptr i8, ptr %scevgep334, i64 %i.gb ; 4 uses
  %scevgep337 = getelementptr i8, ptr %scevgep336, i64 %i.fr ; 2 uses
  %4 = getelementptr i8, ptr %scevgep338, i64 %i.fx
  %scevgep339 = getelementptr i8, ptr %4, i64 %i.fr ; 2 uses
  %i.gc = add nsw i64 %i.o, %i.fn
  %i.gd = mul nuw nsw i64 %i.gc, 12               ; 2 uses
  %scevgep341 = getelementptr i8, ptr %scevgep340, i64 %i.gd ; 2 uses
  %scevgep341.a = getelementptr i8, ptr %scevgep342, i64 %i.fx
  %i.ge = getelementptr i8, ptr %scevgep341.a, i64 %i.gd ; 2 uses
  %5 = mul nsw i64 %i.fn, 12                      ; 2 uses
  %scevgep343 = getelementptr i8, ptr %scevgep344, i64 %5 ; 2 uses
  %scevgep345 = getelementptr i8, ptr %scevgep346, i64 %i.fx
  %scevgep347 = getelementptr i8, ptr %scevgep345, i64 %5 ; 2 uses
  %bound0348 = icmp ult ptr %scevgep329, %scevgep335
  %bound1349 = icmp ult ptr %scevgep333, %scevgep331
  %found.conflict350 = and i1 %bound0348, %bound1349
  %bound0351 = icmp ult ptr %scevgep329, %scevgep339
  %bound1352 = icmp ult ptr %scevgep337, %scevgep331
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx354 = or i1 %found.conflict350, %found.conflict353
  %bound0355 = icmp ult ptr %scevgep329, %i.ge
  %bound1356 = icmp ult ptr %scevgep341, %scevgep331
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx358 = or i1 %conflict.rdx354, %found.conflict357
  %bound0359 = icmp ult ptr %scevgep329, %scevgep347
  %bound1360 = icmp ult ptr %scevgep343, %scevgep331
  %found.conflict361 = and i1 %bound0359, %bound1360
  %conflict.rdx362 = or i1 %conflict.rdx358, %found.conflict361
  %bound0363 = icmp ult ptr %scevgep333, %scevgep339
  %bound1364 = icmp ult ptr %scevgep337, %scevgep335
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx366 = or i1 %conflict.rdx362, %found.conflict365
  %bound0367 = icmp ult ptr %scevgep333, %i.ge
  %bound1368 = icmp ult ptr %scevgep341, %scevgep335
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx366, %found.conflict369
  %bound0371 = icmp ult ptr %scevgep333, %scevgep347
  %bound1372 = icmp ult ptr %scevgep343, %scevgep335
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %conflict.rdx370, %found.conflict373
  br i1 %conflict.rdx374, label %scalar.ph375.preheader, label %vector.ph377

vector.ph377:                                     ; preds = %vector.memcheck328
  %i.gf = and i64 %i.fq, 3                        ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  %i.gh = select i1 %i.gg, i64 4, i64 %i.gf
  %n.vec378 = sub nsw i64 %i.fq, %i.gh            ; 3 uses
  %i.gi = shl nsw i64 %n.vec378, 1
  %i.gj = add nsw i64 %i.gi, %i.fn
  %i.gk = trunc i64 %n.vec378 to i32
  %i.gl = shl i32 %i.gk, 1
  %i.gm = add i32 %i.fd, %i.gl
  %broadcast.splatinsert379 = insertelement <4 x i64> poison, i64 %i.fn, i64 0
  %broadcast.splat380 = shufflevector <4 x i64> %broadcast.splatinsert379, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction381 = add nuw nsw <4 x i64> %broadcast.splat380, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph377
  %index383 = phi i64 [ 0, %vector.ph377 ], [ %index.next402, %vector.body382 ] ; 2 uses
  %vec.ind384 = phi <4 x i64> [ %induction381, %vector.ph377 ], [ %vec.ind.next403, %vector.body382 ] ; 2 uses
  %i.gn = shl nuw i64 %index383, 1
  %i.go = add nuw i64 %i.gn, %i.fn                ; 3 uses
  %i.gp = getelementptr [8 x i8], ptr %i.af, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.gq, i64 %i.fk
  %wide.vec385 = load <32 x i16>, ptr %i.gr, align 2, !tbaa !82
  %strided.vec386 = shufflevector <32 x i16> %wide.vec385, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.gs = zext <4 x i16> %strided.vec386 to <4 x i32>
  %i.gt = getelementptr i8, ptr %i.gp, i64 -8
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %i.fk
  %wide.vec387 = load <32 x i16>, ptr %i.gu, align 2, !tbaa !82
  %strided.vec388 = shufflevector <32 x i16> %wide.vec387, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.gv = zext <4 x i16> %strided.vec388 to <4 x i32>
  %i.gw = add nuw nsw <4 x i32> %i.gv, %i.gs
  %i.gx = uitofp nneg <4 x i32> %i.gw to <4 x double>
  %i.gy = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.gx, splat (double 5.000000e-01)
  %i.gz = fptosi <4 x double> %i.gy to <4 x i32>
  %i.ha = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gz, <4 x i32> splat (i32 65535))
  %i.hb = uitofp nneg <4 x i32> %i.ha to <4 x float>
  %wide.gep389 = getelementptr inbounds nuw [12 x i8], ptr %1, <4 x i64> %vec.ind384 ; 3 uses
  %i.hc = extractelement <4 x ptr> %wide.gep389, i64 0
  %wide.gep390 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep389, i64 %i.fk
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.hb, <4 x ptr> align 4 %wide.gep390, <4 x i1> splat (i1 true)), !tbaa !83, !alias.scope !146, !noalias !147
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %wide.vec391 = load <24 x float>, ptr %i.hd, align 4, !tbaa !83, !alias.scope !148
  %strided.vec392 = shufflevector <24 x float> %wide.vec391, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %i.he = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec392, splat (float 2.000000e+00)
  %i.hf = add nuw nsw i64 %i.go, %i.aa            ; 2 uses
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %wide.vec393 = load <24 x float>, ptr %i.hh, align 4, !tbaa !83, !alias.scope !149
  %strided.vec394 = shufflevector <24 x float> %wide.vec393, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %i.hi = sub nsw i64 %i.go, %i.aa                ; 2 uses
  %i.hj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %wide.vec395 = load <24 x float>, ptr %i.hk, align 4, !tbaa !83, !alias.scope !150
  %strided.vec396 = shufflevector <24 x float> %wide.vec395, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %i.hl = getelementptr [8 x i8], ptr %invariant.gep246, i64 %i.hf
  %wide.vec397 = load <32 x i16>, ptr %i.hl, align 2, !tbaa !82
  %strided.vec398 = shufflevector <32 x i16> %wide.vec397, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.hm = uitofp <4 x i16> %strided.vec398 to <4 x float>
  %i.hn = getelementptr [8 x i8], ptr %invariant.gep246, i64 %i.hi
  %wide.vec399 = load <32 x i16>, ptr %i.hn, align 2, !tbaa !82
  %strided.vec400 = shufflevector <32 x i16> %wide.vec399, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.ho = uitofp <4 x i16> %strided.vec400 to <4 x float>
  %i.hp = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec394, %strided.vec396
  %i.hq = fsub reassoc nsz arcp contract afn <4 x float> %i.he, %i.hp
  %i.hr = fadd reassoc nsz arcp contract afn <4 x float> %i.hq, %i.hm
  %i.hs = fadd reassoc nsz arcp contract afn <4 x float> %i.hr, %i.ho
  %i.ht = fpext reassoc nsz arcp contract afn <4 x float> %i.hs to <4 x double>
  %i.hu = fmul reassoc nsz arcp contract afn <4 x double> %i.ht, splat (double 5.000000e-01)
  %i.hv = fptosi <4 x double> %i.hu to <4 x i32>
  %i.hw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hv, <4 x i32> zeroinitializer)
  %i.hx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hw, <4 x i32> splat (i32 65535))
  %i.hy = uitofp nneg <4 x i32> %i.hx to <4 x float>
  %wide.gep401 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep389, i64 %i.fl
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.hy, <4 x ptr> align 4 %wide.gep401, <4 x i1> splat (i1 true)), !tbaa !83, !alias.scope !151, !noalias !152
  %index.next402 = add nuw i64 %index383, 4       ; 2 uses
  %vec.ind.next403 = add nuw nsw <4 x i64> %vec.ind384, splat (i64 8)
  %i.hz = icmp eq i64 %index.next402, %n.vec378
  br i1 %i.hz, label %scalar.ph375.preheader, label %vector.body382, !llvm.loop !136

scalar.ph375.preheader:                           ; preds = %vector.body382, %vector.memcheck328, %.lr.ph244
  %indvars.iv258.ph = phi i64 [ %i.fn, %vector.memcheck328 ], [ %i.fn, %.lr.ph244 ], [ %i.gj, %vector.body382 ]
  %.1208241.ph = phi i32 [ %i.fd, %vector.memcheck328 ], [ %i.fd, %.lr.ph244 ], [ %i.gm, %vector.body382 ]
  br label %scalar.ph375

scalar.ph375:                                     ; preds = %scalar.ph375.preheader, %scalar.ph375
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %scalar.ph375 ], [ %indvars.iv258.ph, %scalar.ph375.preheader ] ; 5 uses
  %.1208241 = phi i32 [ %i.jr, %scalar.ph375 ], [ %.1208241.ph, %scalar.ph375.preheader ]
  %i.ia = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv258 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.fk
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !82
  %i.ie = zext i16 %i.id to i32
  %i.if = getelementptr i8, ptr %i.ia, i64 -8
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.fk
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !82
  %i.ii = zext i16 %i.ih to i32
  %i.ij = add nuw nsw i32 %i.ii, %i.ie
  %i.ik = uitofp nneg i32 %i.ij to double
  %i.il = fmul reassoc nnan nsz arcp contract afn double %i.ik, 5.000000e-01
  %i.im = fptosi double %i.il to i32
  %i.in = tail call i32 @llvm.umin.i32(i32 %i.im, i32 65535)
  %i.io = uitofp nneg i32 %i.in to float
  %i.ip = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv258 ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.fk
  store float %i.io, ptr %i.iq, align 4, !tbaa !83
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !83
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, 2.000000e+00
  %i.iu = add nuw nsw i64 %indvars.iv258, %i.aa   ; 2 uses
  %i.iv = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !83
  %i.iy = sub nsw i64 %indvars.iv258, %i.aa       ; 2 uses
  %i.iz = getelementptr inbounds [12 x i8], ptr %1, i64 %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !83
  %gep247 = getelementptr [8 x i8], ptr %invariant.gep246, i64 %i.iu
  %i.jc = load i16, ptr %gep247, align 2, !tbaa !82
  %i.jd = uitofp i16 %i.jc to float
  %gep249 = getelementptr [8 x i8], ptr %invariant.gep246, i64 %i.iy
  %i.je = load i16, ptr %gep249, align 2, !tbaa !82
  %i.jf = uitofp i16 %i.je to float
  %i.jg = fadd reassoc nsz arcp contract afn float %i.ix, %i.jb
  %i.jh = fsub reassoc nsz arcp contract afn float %i.it, %i.jg
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jh, %i.jd
  %i.jj = fadd reassoc nsz arcp contract afn float %i.ji, %i.jf
  %i.jk = fpext reassoc nsz arcp contract afn float %i.jj to double
  %i.jl = fmul reassoc nsz arcp contract afn double %i.jk, 5.000000e-01
  %i.jm = fptosi double %i.jl to i32
  %i.jn = tail call i32 @llvm.smax.i32(i32 %i.jm, i32 0)
  %i.jo = tail call i32 @llvm.umin.i32(i32 %i.jn, i32 65535)
  %i.jp = uitofp nneg i32 %i.jo to float
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.fl
  store float %i.jp, ptr %i.jq, align 4, !tbaa !83
  %i.jr = add nuw nsw i32 %.1208241, 2            ; 2 uses
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 2
  %i.js = icmp slt i32 %i.jr, %i.y
  br i1 %i.js, label %scalar.ph375, label %._crit_edge245, !llvm.loop !137

._crit_edge245:                                   ; preds = %scalar.ph375, %bb.c
  %i.jt = add nuw nsw i32 %.1210250, 1            ; 2 uses
  %indvars.iv.next257 = add nuw i32 %indvars.iv256, %i.d
  %exitcond261.not = icmp eq i32 %i.jt, %i.h
  br i1 %exitcond261.not, label %._crit_edge252, label %bb.c, !llvm.loop !138

._crit_edge252:                                   ; preds = %._crit_edge245, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10dcb_color3EPA3_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.c = load i16, ptr %i.b, align 2, !tbaa !79   ; 3 uses
  %i.d = zext i16 %i.c to i32                     ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i16, ptr %i.e, align 4, !tbaa !80   ; 2 uses
  %i.g = zext i16 %i.f to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  %i.i = icmp ugt i16 %i.f, 2
  br i1 %i.i, label %.lr.ph233, label %._crit_edge249

.lr.ph233:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.k = load i32, ptr %i.j, align 8, !tbaa !81   ; 2 uses
  %i.l = add nsw i32 %i.d, -1                     ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = add nuw nsw i32 %i.d, 1
  %i.o = zext i16 %i.c to i64                     ; 5 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep267 = getelementptr i8, ptr %1, i64 12
  %i.p = add nsw i32 %i.d, -3
  %scevgep269 = getelementptr i8, ptr %1, i64 4
  %scevgep271 = getelementptr i8, ptr %1, i64 8
  %scevgep273 = getelementptr i8, ptr %1, i64 16
  %scevgep275 = getelementptr i8, ptr %1, i64 20
  %scevgep277 = getelementptr i8, ptr %1, i64 -8
  %scevgep279 = getelementptr i8, ptr %1, i64 -4
  %i.q = mul nuw nsw i64 %i.o, 12                 ; 4 uses
  %i.r = sub nsw i64 16, %i.q
  %scevgep281 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = sub nsw i64 20, %i.q
  %scevgep283 = getelementptr i8, ptr %1, i64 %i.s
  %i.t = sub nuw nsw i64 -8, %i.q
  %scevgep285 = getelementptr i8, ptr %1, i64 %i.t
  %i.u = sub nuw nsw i64 -4, %i.q
  %scevgep287 = getelementptr i8, ptr %1, i64 %i.u
  %i.v = add nsw i32 %i.d, -3
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.op = add nuw nsw <8 x i64> %broadcast.splat, splat (i64 1)
  %invariant.op409 = add nsw <8 x i64> %broadcast.splat, splat (i64 -1)
  br label %bb.b

.lr.ph248:                                        ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.x = load i32, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.y = add nsw i32 %i.d, -1                     ; 2 uses
  %i.z = add nuw nsw i32 %i.d, 1
  %i.aa = zext i16 %i.c to i64                    ; 3 uses
  %scevgep329 = getelementptr i8, ptr %1, i64 4
  %i.ab = add nsw i32 %i.d, -3
  %scevgep331 = getelementptr i8, ptr %1, i64 8
  %scevgep333 = getelementptr i8, ptr %1, i64 12
  %scevgep335 = getelementptr i8, ptr %1, i64 4
  %scevgep337 = getelementptr i8, ptr %1, i64 8
  %scevgep339 = getelementptr i8, ptr %1, i64 16
  %scevgep341 = getelementptr i8, ptr %1, i64 20
  %scevgep343 = getelementptr i8, ptr %1, i64 -8
  %scevgep345 = getelementptr i8, ptr %1, i64 -4
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ad = add nsw i32 %i.d, -3
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph233, %._crit_edge
  %indvars.iv = phi i32 [ %i.n, %.lr.ph233 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0201231 = phi i32 [ 1, %.lr.ph233 ], [ %i.eu, %._crit_edge ] ; 2 uses
  %i.ae = shl nuw nsw i32 %.0201231, 1
  %i.af = and i32 %i.ae, 14                       ; 2 uses
  %i.ag = shl nuw nsw i32 %i.af, 1
  %i.ah = or disjoint i32 %i.ag, 2
  %i.ai = lshr i32 %i.k, %i.ah
  %i.aj = and i32 %i.ai, 1                        ; 4 uses
  %i.ak = add nuw nsw i32 %i.aj, 1                ; 5 uses
  %i.al = icmp slt i32 %i.ak, %i.l
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.am = and i32 %i.ak, 1
  %i.an = or disjoint i32 %i.am, %i.af
  %i.ao = shl nuw nsw i32 %i.an, 1
  %i.ap = lshr i32 %i.k, %i.ao                    ; 2 uses
  %i.aq = and i32 %i.ap, 3
  %i.ar = sub nsw i32 2, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.m, i64 %i.as ; 8 uses
  %i.at = add i32 %indvars.iv, %i.aj
  %i.au = sext i32 %i.at to i64                   ; 7 uses
  %i.av = sub nsw i32 %i.v, %i.aj                 ; 2 uses
  %i.aw = lshr i32 %i.av, 1
  %narrow = add nuw i32 %i.aw, 1
  %i.ax = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.av, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ay = mul nuw nsw i64 %i.au, 12               ; 3 uses
  %i.az = shl i32 %i.ap, 2
  %i.ba = and i32 %i.az, 12
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = sub nsw i64 %i.ay, %i.bb
  %scevgep266 = getelementptr i8, ptr %scevgep, i64 %i.bc ; 5 uses
  %i.bd = sub nsw i32 %i.p, %i.aj
  %i.be = lshr i32 %i.bd, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bf, 24               ; 3 uses
  %i.bh = add nuw nsw i64 %i.bg, %i.ay            ; 2 uses
  %i.bi = sub nsw i64 %i.bh, %i.bb
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.bi ; 5 uses
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.ay
  %scevgep272 = getelementptr i8, ptr %scevgep271, i64 %i.bh
  %i.bj = add nsw i64 %i.o, %i.au
  %i.bk = mul nsw i64 %i.bj, 12                   ; 3 uses
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.bk
  %i.bl = add nsw i64 %i.bg, %i.bk                ; 2 uses
  %scevgep276 = getelementptr i8, ptr %scevgep275, i64 %i.bl
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.bk
  %scevgep280 = getelementptr i8, ptr %scevgep279, i64 %i.bl
  %2 = mul nsw i64 %i.au, 12                      ; 3 uses
  %scevgep282 = getelementptr i8, ptr %scevgep281, i64 %2
  %3 = add nsw i64 %i.bg, %2                      ; 2 uses
  %scevgep284 = getelementptr i8, ptr %scevgep283, i64 %3
  %scevgep286 = getelementptr i8, ptr %scevgep285, i64 %2
  %scevgep288 = getelementptr i8, ptr %scevgep287, i64 %3
  %bound0 = icmp ult ptr %scevgep266, %scevgep272
  %bound1 = icmp ult ptr %scevgep270, %scevgep268
  %found.conflict = and i1 %bound0, %bound1
  %bound0289 = icmp ult ptr %scevgep266, %scevgep276
  %bound1290 = icmp ult ptr %scevgep274, %scevgep268
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx = or i1 %found.conflict, %found.conflict291
  %bound0292 = icmp ult ptr %scevgep266, %scevgep280
  %bound1293 = icmp ult ptr %scevgep278, %scevgep268
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx, %found.conflict294
  %bound0296 = icmp ult ptr %scevgep266, %scevgep284
  %bound1297 = icmp ult ptr %scevgep282, %scevgep268
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  %bound0300 = icmp ult ptr %scevgep266, %scevgep288
  %bound1301 = icmp ult ptr %scevgep286, %scevgep268
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  br i1 %conflict.rdx303, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bm = and i64 %i.ax, 7                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = select i1 %i.bn, i64 8, i64 %i.bm
  %n.vec = sub nsw i64 %i.ax, %i.bo               ; 3 uses
  %i.bp = shl nsw i64 %n.vec, 1
  %i.bq = add nsw i64 %i.bp, %i.au
  %i.br = trunc i64 %n.vec to i32
  %i.bs = shl i32 %i.br, 1
  %i.bt = add i32 %i.ak, %i.bs
  %broadcast.splatinsert304 = insertelement <8 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat305 = shufflevector <8 x i64> %broadcast.splatinsert304, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat305, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %vec.ind ; 2 uses
  %wide.gep306 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep306, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !172
  %i.bu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float 4.000000e+00)
  %.reass = add nuw nsw <8 x i64> %vec.ind, %invariant.op ; 2 uses
  %i.bv = extractelement <8 x i64> %.reass, i64 0
  %wide.gep307 = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %.reass
  %wide.gep308 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep307, i64 4
  %wide.masked.gather309 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep308, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !173
  %.reass410 = add nsw <8 x i64> %vec.ind, %invariant.op409 ; 2 uses
  %i.bw = extractelement <8 x i64> %.reass410, i64 0
  %wide.gep310 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %.reass410
  %wide.gep311 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep310, i64 4
  %wide.masked.gather312 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep311, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !174
  %i.bx = sub nsw <8 x i64> %vec.ind, %broadcast.splat ; 2 uses
  %i.by = add nuw nsw <8 x i64> %i.bx, splat (i64 1) ; 2 uses
  %i.bz = extractelement <8 x i64> %i.by, i64 0
  %wide.gep313 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.by
  %wide.gep314 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep313, i64 4
  %wide.masked.gather315 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep314, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !175
  %i.ca = add nsw <8 x i64> %i.bx, splat (i64 -1) ; 2 uses
  %i.cb = extractelement <8 x i64> %i.ca, i64 0
  %wide.gep316 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.ca
  %wide.gep317 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep316, i64 4
  %wide.masked.gather318 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep317, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !176
  %i.cc = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bv
  %wide.vec = load <64 x i16>, ptr %i.cc, align 2, !tbaa !82
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cd = uitofp <8 x i16> %strided.vec to <8 x float>
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bw
  %wide.vec319 = load <64 x i16>, ptr %i.ce, align 2, !tbaa !82
  %strided.vec320 = shufflevector <64 x i16> %wide.vec319, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cf = uitofp <8 x i16> %strided.vec320 to <8 x float>
  %i.cg = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bz
  %wide.vec321 = load <64 x i16>, ptr %i.cg, align 2, !tbaa !82
  %strided.vec322 = shufflevector <64 x i16> %wide.vec321, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ch = uitofp <8 x i16> %strided.vec322 to <8 x float>
  %i.ci = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cb
  %wide.vec323 = load <64 x i16>, ptr %i.ci, align 2, !tbaa !82
  %strided.vec324 = shufflevector <64 x i16> %wide.vec323, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cj = uitofp <8 x i16> %strided.vec324 to <8 x float>
  %i.ck = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather309, %wide.masked.gather312
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %i.ck, %wide.masked.gather315
  %i.cm = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %wide.masked.gather318
  %i.cn = fsub reassoc nsz arcp contract afn <8 x float> %i.bu, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn <8 x float> %i.cn, %i.cd
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %i.cf
  %i.cq = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %i.ch
  %i.cr = fadd reassoc nsz arcp contract afn <8 x float> %i.cq, %i.cj
  %i.cs = fpext reassoc nsz arcp contract afn <8 x float> %i.cr to <8 x double>
  %i.ct = fmul reassoc nsz arcp contract afn <8 x double> %i.cs, splat (double 2.500000e-01)
  %i.cu = fptosi <8 x double> %i.ct to <8 x i32>
  %i.cv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cu, <8 x i32> zeroinitializer)
  %i.cw = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cv, <8 x i32> splat (i32 65535))
  %i.cx = uitofp nneg <8 x i32> %i.cw to <8 x float>
  %wide.gep325 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.as
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cx, <8 x ptr> align 4 %wide.gep325, <8 x i1> splat (i1 true)), !tbaa !83, !alias.scope !177, !noalias !178
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !160

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv250.ph = phi i64 [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph ], [ %i.bq, %vector.body ]
  %.0199223.ph = phi i32 [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph ], [ %i.bt, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %scalar.ph ], [ %indvars.iv250.ph, %scalar.ph.preheader ] ; 4 uses
  %.0199223 = phi i32 [ %i.es, %scalar.ph ], [ %.0199223.ph, %scalar.ph.preheader ]
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv250 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !83
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, 4.000000e+00
  %i.dd = add nuw nsw i64 %indvars.iv250, %i.o    ; 2 uses
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !83
  %i.di = add nsw i64 %i.dd, -1                   ; 2 uses
  %i.dj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !83
  %i.dm = sub nsw i64 %indvars.iv250, %i.o        ; 2 uses
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %i.do = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !83
  %i.dr = add nsw i64 %i.dm, -1                   ; 2 uses
  %i.ds = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !83
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.de
  %i.dv = load i16, ptr %gep, align 2, !tbaa !82
  %i.dw = uitofp i16 %i.dv to float
  %gep226 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.di
  %i.dx = load i16, ptr %gep226, align 2, !tbaa !82
  %i.dy = uitofp i16 %i.dx to float
  %gep228 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dn
  %i.dz = load i16, ptr %gep228, align 2, !tbaa !82
  %i.ea = uitofp i16 %i.dz to float
  %gep230 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dr
  %i.eb = load i16, ptr %gep230, align 2, !tbaa !82
  %i.ec = uitofp i16 %i.eb to float
  %i.ed = fadd reassoc nsz arcp contract afn float %i.dh, %i.dl
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, %i.dq
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.du
  %i.eg = fsub reassoc nsz arcp contract afn float %i.dc, %i.ef
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, %i.dw
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, %i.dy
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.ea
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.ec
  %i.el = fpext reassoc nsz arcp contract afn float %i.ek to double
  %i.em = fmul reassoc nsz arcp contract afn double %i.el, 2.500000e-01
  %i.en = fptosi double %i.em to i32
  %i.eo = tail call i32 @llvm.smax.i32(i32 %i.en, i32 0)
  %i.ep = tail call i32 @llvm.umin.i32(i32 %i.eo, i32 65535)
  %i.eq = uitofp nneg i32 %i.ep to float
  %i.er = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.as
  store float %i.eq, ptr %i.er, align 4, !tbaa !83
  %i.es = add nuw nsw i32 %.0199223, 2            ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 2
  %i.et = icmp slt i32 %i.es, %i.l
  br i1 %i.et, label %scalar.ph, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %scalar.ph, %bb.b
  %i.eu = add nuw nsw i32 %.0201231, 1            ; 2 uses
  %indvars.iv.next = add nuw i32 %indvars.iv, %i.d
  %exitcond.not = icmp eq i32 %i.eu, %i.h
  br i1 %exitcond.not, label %.lr.ph248, label %bb.b, !llvm.loop !162

bb.c:                                             ; preds = %.lr.ph248, %._crit_edge238
  %indvars.iv253 = phi i32 [ %i.z, %.lr.ph248 ], [ %indvars.iv.next254, %._crit_edge238 ] ; 2 uses
  %.1202247 = phi i32 [ 1, %.lr.ph248 ], [ %i.jd, %._crit_edge238 ] ; 2 uses
  %i.ev = shl nuw nsw i32 %.1202247, 1
  %i.ew = and i32 %i.ev, 14                       ; 2 uses
  %i.ex = shl nuw nsw i32 %i.ew, 1
  %i.ey = lshr i32 %i.x, %i.ex
  %i.ez = and i32 %i.ey, 1                        ; 5 uses
  %i.fa = add nuw nsw i32 %i.ez, 1                ; 4 uses
  %i.fb = icmp slt i32 %i.fa, %i.y
  br i1 %i.fb, label %.lr.ph237, label %._crit_edge238

.lr.ph237:                                        ; preds = %bb.c
  %i.fc = or disjoint i32 %i.ez, %i.ew
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %i.fe = lshr i32 %i.x, %i.fd
  %i.ff = and i32 %i.fe, 3                        ; 2 uses
  %i.fg = sub nsw i32 2, %i.ff
  %i.fh = zext nneg i32 %i.ff to i64              ; 4 uses
  %invariant.gep239 = getelementptr [2 x i8], ptr %i.ac, i64 %i.fh ; 4 uses
  %i.fi = sext i32 %i.fg to i64                   ; 3 uses
  %invariant.gep243 = getelementptr [2 x i8], ptr %i.ac, i64 %i.fi ; 3 uses
  %i.fj = add i32 %indvars.iv253, %i.ez
  %i.fk = sext i32 %i.fj to i64                   ; 7 uses
  %invariant.gep264 = getelementptr [8 x i8], ptr %invariant.gep243, i64 %i.aa ; 2 uses
  %i.fl = sub nsw i32 %i.ad, %i.ez                ; 2 uses
  %i.fm = lshr i32 %i.fl, 1
  %narrow408 = add nuw i32 %i.fm, 1
  %i.fn = zext i32 %narrow408 to i64              ; 2 uses
  %min.iters.check375 = icmp ult i32 %i.fl, 16
  br i1 %min.iters.check375, label %scalar.ph374.preheader, label %vector.memcheck327

vector.memcheck327:                               ; preds = %.lr.ph237
  %i.fo = mul nuw nsw i64 %i.fk, 12               ; 5 uses
  %i.fp = shl nuw nsw i64 %i.fh, 2                ; 4 uses
  %i.fq = getelementptr i8, ptr %1, i64 %i.fo
  %scevgep328 = getelementptr i8, ptr %i.fq, i64 %i.fp ; 4 uses
  %i.fr = sub nsw i32 %i.ab, %i.ez
  %i.fs = lshr i32 %i.fr, 1
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = mul nuw nsw i64 %i.ft, 24               ; 3 uses
  %i.fv = add nuw nsw i64 %i.fu, %i.fo            ; 2 uses
  %i.fw = getelementptr i8, ptr %scevgep329, i64 %i.fv
  %scevgep330 = getelementptr i8, ptr %i.fw, i64 %i.fp ; 4 uses
  %i.fx = sub nsw i64 %i.fo, %i.fp
  %scevgep332 = getelementptr i8, ptr %scevgep331, i64 %i.fx ; 4 uses
  %i.fy = sub nsw i64 %i.fv, %i.fp
  %scevgep334 = getelementptr i8, ptr %scevgep333, i64 %i.fy ; 4 uses
  %scevgep336 = getelementptr i8, ptr %scevgep335, i64 %i.fo ; 2 uses
  %4 = getelementptr i8, ptr %scevgep337, i64 %i.fu
  %scevgep338 = getelementptr i8, ptr %4, i64 %i.fo ; 2 uses
  %5 = mul nsw i64 %i.fk, 12                      ; 3 uses
  %scevgep340 = getelementptr i8, ptr %scevgep339, i64 %5 ; 2 uses
  %6 = add nsw i64 %i.fu, %5                      ; 2 uses
  %scevgep342 = getelementptr i8, ptr %scevgep341, i64 %6 ; 2 uses
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %5 ; 2 uses
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %6 ; 2 uses
  %bound0347 = icmp ult ptr %scevgep328, %scevgep334
  %bound1348 = icmp ult ptr %scevgep332, %scevgep330
  %found.conflict349 = and i1 %bound0347, %bound1348
  %bound0350 = icmp ult ptr %scevgep328, %scevgep338
  %bound1351 = icmp ult ptr %scevgep336, %scevgep330
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %found.conflict349, %found.conflict352
  %bound0354 = icmp ult ptr %scevgep328, %scevgep342
  %bound1355 = icmp ult ptr %scevgep340, %scevgep330
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx353, %found.conflict356
  %bound0358 = icmp ult ptr %scevgep328, %scevgep346
  %bound1359 = icmp ult ptr %scevgep344, %scevgep330
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %conflict.rdx357, %found.conflict360
  %bound0362 = icmp ult ptr %scevgep332, %scevgep338
  %bound1363 = icmp ult ptr %scevgep336, %scevgep334
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %conflict.rdx361, %found.conflict364
  %bound0366 = icmp ult ptr %scevgep332, %scevgep342
  %bound1367 = icmp ult ptr %scevgep340, %scevgep334
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  %bound0370 = icmp ult ptr %scevgep332, %scevgep346
  %bound1371 = icmp ult ptr %scevgep344, %scevgep334
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx369, %found.conflict372
  br i1 %conflict.rdx373, label %scalar.ph374.preheader, label %vector.ph376

vector.ph376:                                     ; preds = %vector.memcheck327
  %i.fz = and i64 %i.fn, 7                        ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  %i.gb = select i1 %i.ga, i64 8, i64 %i.fz
  %n.vec377 = sub nsw i64 %i.fn, %i.gb            ; 3 uses
  %i.gc = shl nsw i64 %n.vec377, 1
  %i.gd = add nsw i64 %i.gc, %i.fk
  %i.ge = trunc i64 %n.vec377 to i32
  %i.gf = shl i32 %i.ge, 1
  %i.gg = add i32 %i.fa, %i.gf
  %broadcast.splatinsert378 = insertelement <8 x i64> poison, i64 %i.fk, i64 0
  %broadcast.splat379 = shufflevector <8 x i64> %broadcast.splatinsert378, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction380 = add nuw nsw <8 x i64> %broadcast.splat379, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph376
  %index382 = phi i64 [ 0, %vector.ph376 ], [ %index.next403, %vector.body381 ] ; 2 uses
  %vec.ind383 = phi <8 x i64> [ %induction380, %vector.ph376 ], [ %vec.ind.next404, %vector.body381 ] ; 4 uses
  %i.gh = shl nuw i64 %index382, 1
  %i.gi = add nuw i64 %i.gh, %i.fk                ; 2 uses
  %wide.gep384 = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %vec.ind383 ; 3 uses
  %wide.gep385 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep384, i64 4
  %wide.masked.gather386 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep385, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !179
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather386, splat (float 2.000000e+00)
  %i.gk = add nuw nsw <8 x i64> %vec.ind383, splat (i64 1) ; 2 uses
  %i.gl = extractelement <8 x i64> %i.gk, i64 0
  %wide.gep387 = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %i.gk
  %wide.gep388 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep387, i64 4
  %wide.masked.gather389 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep388, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !180
  %i.gm = add nsw <8 x i64> %vec.ind383, splat (i64 -1) ; 2 uses
  %i.gn = extractelement <8 x i64> %i.gm, i64 0
  %wide.gep390 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.gm
  %wide.gep391 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep390, i64 4
  %wide.masked.gather392 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep391, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !83, !alias.scope !181
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep239, i64 %i.gl
  %wide.vec393 = load <64 x i16>, ptr %i.go, align 2, !tbaa !82
  %strided.vec394 = shufflevector <64 x i16> %wide.vec393, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.gp = uitofp <8 x i16> %strided.vec394 to <8 x float>
  %i.gq = getelementptr [8 x i8], ptr %invariant.gep239, i64 %i.gn
  %wide.vec395 = load <64 x i16>, ptr %i.gq, align 2, !tbaa !82
  %strided.vec396 = shufflevector <64 x i16> %wide.vec395, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.gr = uitofp <8 x i16> %strided.vec396 to <8 x float>
  %i.gs = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather389, %wide.masked.gather392
  %i.gt = fsub reassoc nsz arcp contract afn <8 x float> %i.gj, %i.gs
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %i.gt, %i.gp
  %i.gv = fadd reassoc nsz arcp contract afn <8 x float> %i.gu, %i.gr
  %i.gw = fpext reassoc nsz arcp contract afn <8 x float> %i.gv to <8 x double>
  %i.gx = fmul reassoc nsz arcp contract afn <8 x double> %i.gw, splat (double 5.000000e-01)
  %i.gy = fptosi <8 x double> %i.gx to <8 x i32>
  %i.gz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gy, <8 x i32> zeroinitializer)
  %i.ha = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gz, <8 x i32> splat (i32 65535))
  %i.hb = uitofp nneg <8 x i32> %i.ha to <8 x float>
  %wide.gep397 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep384, i64 %i.fh
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.hb, <8 x ptr> align 4 %wide.gep397, <8 x i1> splat (i1 true)), !tbaa !83, !alias.scope !182, !noalias !183
  %i.hc = getelementptr [8 x i8], ptr %invariant.gep264, i64 %i.gi
  %wide.vec398 = load <64 x i16>, ptr %i.hc, align 2, !tbaa !82
  %strided.vec399 = shufflevector <64 x i16> %wide.vec398, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.hd = zext <8 x i16> %strided.vec399 to <8 x i32>
  %i.he = sub nsw i64 %i.gi, %i.aa
  %i.hf = getelementptr [8 x i8], ptr %invariant.gep243, i64 %i.he
  %wide.vec400 = load <64 x i16>, ptr %i.hf, align 2, !tbaa !82
  %strided.vec401 = shufflevector <64 x i16> %wide.vec400, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.hg = zext <8 x i16> %strided.vec401 to <8 x i32>
  %i.hh = add nuw nsw <8 x i32> %i.hg, %i.hd
  %i.hi = uitofp nneg <8 x i32> %i.hh to <8 x double>
  %i.hj = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.hi, splat (double 5.000000e-01)
  %i.hk = fptosi <8 x double> %i.hj to <8 x i32>
  %i.hl = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hk, <8 x i32> splat (i32 65535))
  %i.hm = uitofp nneg <8 x i32> %i.hl to <8 x float>
  %wide.gep402 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep384, i64 %i.fi
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.hm, <8 x ptr> align 4 %wide.gep402, <8 x i1> splat (i1 true)), !tbaa !83, !alias.scope !184, !noalias !185
  %index.next403 = add nuw i64 %index382, 8       ; 2 uses
  %vec.ind.next404 = add nuw nsw <8 x i64> %vec.ind383, splat (i64 16)
  %i.hn = icmp eq i64 %index.next403, %n.vec377
  br i1 %i.hn, label %scalar.ph374.preheader, label %vector.body381, !llvm.loop !169

scalar.ph374.preheader:                           ; preds = %vector.body381, %vector.memcheck327, %.lr.ph237
  %indvars.iv255.ph = phi i64 [ %i.fk, %vector.memcheck327 ], [ %i.fk, %.lr.ph237 ], [ %i.gd, %vector.body381 ]
  %.1200234.ph = phi i32 [ %i.fa, %vector.memcheck327 ], [ %i.fa, %.lr.ph237 ], [ %i.gg, %vector.body381 ]
  br label %scalar.ph374

scalar.ph374:                                     ; preds = %scalar.ph374.preheader, %scalar.ph374
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %scalar.ph374 ], [ %indvars.iv255.ph, %scalar.ph374.preheader ] ; 6 uses
  %.1200234 = phi i32 [ %i.jb, %scalar.ph374 ], [ %.1200234.ph, %scalar.ph374.preheader ]
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv255 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !83
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, 2.000000e+00
  %i.hs = add nuw nsw i64 %indvars.iv255, 1       ; 2 uses
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !83
  %i.hw = add nsw i64 %indvars.iv255, -1          ; 2 uses
  %i.hx = getelementptr inbounds [12 x i8], ptr %1, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !83
  %gep240 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep239, i64 %i.hs
  %i.ia = load i16, ptr %gep240, align 2, !tbaa !82
  %i.ib = uitofp i16 %i.ia to float
  %gep242 = getelementptr [8 x i8], ptr %invariant.gep239, i64 %i.hw
  %i.ic = load i16, ptr %gep242, align 2, !tbaa !82
  %i.id = uitofp i16 %i.ic to float
  %i.ie = fadd reassoc nsz arcp contract afn float %i.hv, %i.hz
  %i.if = fsub reassoc nsz arcp contract afn float %i.hr, %i.ie
  %i.ig = fadd reassoc nsz arcp contract afn float %i.if, %i.ib
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ig, %i.id
  %i.ii = fpext reassoc nsz arcp contract afn float %i.ih to double
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.fh
  %gep265 = getelementptr [8 x i8], ptr %invariant.gep264, i64 %indvars.iv255
  %i.ik = load i16, ptr %gep265, align 2, !tbaa !82
  %i.il = zext i16 %i.ik to i32
  %i.im = sub nsw i64 %indvars.iv255, %i.aa
  %gep246 = getelementptr [8 x i8], ptr %invariant.gep243, i64 %i.im
  %i.in = load i16, ptr %gep246, align 2, !tbaa !82
  %i.io = zext i16 %i.in to i32
  %i.ip = add nuw nsw i32 %i.io, %i.il
  %i.iq = uitofp nneg i32 %i.ip to double
  %i.ir = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.iq, i64 1
  %i.it = fmul reassoc nsz arcp contract afn <2 x double> %i.is, splat (double 5.000000e-01)
  %i.iu = fptosi <2 x double> %i.it to <2 x i32>
  %i.iv = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.iu, <2 x i32> <i32 0, i32 -2147483648>)
  %i.iw = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.iv, <2 x i32> splat (i32 65535))
  %i.ix = uitofp nneg <2 x i32> %i.iw to <2 x float> ; 2 uses
  %i.iy = extractelement <2 x float> %i.ix, i64 0
  store float %i.iy, ptr %i.ij, align 4, !tbaa !83
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.fi
  %i.ja = extractelement <2 x float> %i.ix, i64 1
  store float %i.ja, ptr %i.iz, align 4, !tbaa !83
  %i.jb = add nuw nsw i32 %.1200234, 2            ; 2 uses
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 2
  %i.jc = icmp slt i32 %i.jb, %i.y
  br i1 %i.jc, label %scalar.ph374, label %._crit_edge238, !llvm.loop !170

._crit_edge238:                                   ; preds = %scalar.ph374, %bb.c
  %i.jd = add nuw nsw i32 %.1202247, 1            ; 2 uses
  %indvars.iv.next254 = add nuw i32 %indvars.iv253, %i.d
  %exitcond258.not = icmp eq i32 %i.jd, %i.h
  br i1 %exitcond258.not, label %._crit_edge249, label %bb.c, !llvm.loop !171

._crit_edge249:                                   ; preds = %._crit_edge238, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10dcb_decideEPA3_fS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !80   ; 2 uses
  %i.d = icmp ugt i16 %i.c, 4
  br i1 %i.d, label %.lr.ph1125, label %._crit_edge1126

.lr.ph1125:                                       ; preds = %bb.a
  %i.e = load i16, ptr %i.a, align 2, !tbaa !79   ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 4 uses
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = load i32, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %i.k = add nsw i32 %i.f, -2                     ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 22 uses
  %i.m = zext i16 %i.e to i64                     ; 9 uses
  %i.n = zext nneg i32 %i.g to i64                ; 3 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 2
  %scevgep1136 = getelementptr i8, ptr %i.l, i64 4
  %i.o = add nsw i32 %i.f, -5
  %i.p = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %scevgep1138 = getelementptr i8, ptr %i.l, i64 %i.p
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep1140 = getelementptr i8, ptr %i.q, i64 2
end_hunk_1
begin_hunk_2_@_ZN6LibRaw14dcb_color_fullEv:bb.a
  %i.hz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hy)
  %i.ia = fpext reassoc nsz arcp contract afn <8 x float> %i.hz to <8 x double>
  %i.ib = fadd reassoc nsz arcp contract afn <8 x double> %i.hv, %i.ia
  %i.ic = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ib to <8 x float>
  %i.id = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ic ; 2 uses
  %i.ie = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4057, %strided.vec4055
  %i.if = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ie)
  %i.ig = fpext reassoc nsz arcp contract afn <8 x float> %i.if to <8 x double>
  %i.ih = fadd reassoc nsz arcp contract afn <8 x double> %i.ig, splat (double 1.000000e+00)
  %i.ii = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4057, %strided.vec4069
  %i.ij = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ii)
  %i.ik = fpext reassoc nsz arcp contract afn <8 x float> %i.ij to <8 x double>
  %i.il = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4055, %strided.vec4067
  %i.im = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.il)
  %i.in = fpext reassoc nsz arcp contract afn <8 x float> %i.im to <8 x double>
  %i.io = fadd reassoc nsz arcp contract afn <8 x double> %i.ih, %i.in
  %i.ip = fadd reassoc nsz arcp contract afn <8 x double> %i.io, %i.ik
  %i.iq = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ip to <8 x float>
  %i.ir = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.iq ; 2 uses
  %i.is = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4055, splat (float 1.325000e+00)
  %i.it = getelementptr i8, ptr %i.ge, i64 -8
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.et
  %wide.vec4070 = load <32 x float>, ptr %i.iu, align 4, !tbaa !83, !alias.scope !271
  %strided.vec4071 = shufflevector <32 x float> %wide.vec4070, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.iv = getelementptr i8, ptr %i.ft, i64 -24
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.et
  %wide.vec4072 = load <32 x float>, ptr %i.iw, align 4, !tbaa !83, !alias.scope !272
  %strided.vec4073 = shufflevector <32 x float> %wide.vec4072, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ix = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4059, splat (float -1.750000e-01)
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4073, %strided.vec4071
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, splat (float -7.500000e-02)
  %i.ja = fadd reassoc nsz arcp contract afn <8 x float> %i.ix, %i.is
  %i.jb = fadd reassoc nsz arcp contract afn <8 x float> %i.ja, %i.iz
  %i.jc = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4061, splat (float 1.325000e+00)
  %i.jd = getelementptr i8, ptr %i.ge, i64 8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.et
  %wide.vec4074 = load <32 x float>, ptr %i.je, align 4, !tbaa !83, !alias.scope !273
  %strided.vec4075 = shufflevector <32 x float> %wide.vec4074, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jf = getelementptr i8, ptr %i.ft, i64 24
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.et
  %wide.vec4076 = load <32 x float>, ptr %i.jg, align 4, !tbaa !83, !alias.scope !274
  %strided.vec4077 = shufflevector <32 x float> %wide.vec4076, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4065, splat (float -1.750000e-01)
  %i.ji = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4077, %strided.vec4075
  %i.jj = fmul reassoc nsz arcp contract afn <8 x float> %i.ji, splat (float -7.500000e-02)
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %i.jh, %i.jc
  %i.jl = fadd reassoc nsz arcp contract afn <8 x float> %i.jk, %i.jj
  %i.jm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4063, splat (float 1.325000e+00)
  %i.jn = getelementptr i8, ptr %i.hp, i64 -8
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.et
  %wide.vec4078 = load <32 x float>, ptr %i.jo, align 4, !tbaa !83, !alias.scope !275
  %strided.vec4079 = shufflevector <32 x float> %wide.vec4078, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jp = getelementptr i8, ptr %i.fw, i64 -24
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.et
  %wide.vec4080 = load <32 x float>, ptr %i.jq, align 4, !tbaa !83, !alias.scope !276
  %strided.vec4081 = shufflevector <32 x float> %wide.vec4080, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4069, splat (float -1.750000e-01)
  %i.js = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4081, %strided.vec4079
  %i.jt = fmul reassoc nsz arcp contract afn <8 x float> %i.js, splat (float -7.500000e-02)
  %i.ju = fadd reassoc nsz arcp contract afn <8 x float> %i.jr, %i.jm
  %i.jv = fadd reassoc nsz arcp contract afn <8 x float> %i.ju, %i.jt
  %i.jw = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4057, splat (float 1.325000e+00)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.et
  %wide.vec4082 = load <32 x float>, ptr %i.jy, align 4, !tbaa !83, !alias.scope !277
  %strided.vec4083 = shufflevector <32 x float> %wide.vec4082, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jz = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.et
  %wide.vec4084 = load <32 x float>, ptr %i.ka, align 4, !tbaa !83, !alias.scope !278
  %strided.vec4085 = shufflevector <32 x float> %wide.vec4084, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.kb = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4067, splat (float -1.750000e-01)
  %i.kc = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4085, %strided.vec4083
  %i.kd = fmul reassoc nsz arcp contract afn <8 x float> %i.kc, splat (float -7.500000e-02)
  %i.ke = fadd reassoc nsz arcp contract afn <8 x float> %i.kb, %i.jw
  %i.kf = fadd reassoc nsz arcp contract afn <8 x float> %i.ke, %i.kd
  %i.kg = fmul reassoc nsz arcp contract afn <8 x float> %i.jb, %i.gq
  %i.kh = fmul reassoc nsz arcp contract afn <8 x float> %i.jl, %i.hk
  %i.ki = fadd reassoc nsz arcp contract afn <8 x float> %i.kh, %i.kg
  %i.kj = fmul reassoc nsz arcp contract afn <8 x float> %i.jv, %i.id
  %i.kk = fadd reassoc nsz arcp contract afn <8 x float> %i.ki, %i.kj
  %i.kl = fmul reassoc nsz arcp contract afn <8 x float> %i.kf, %i.ir
  %i.km = fadd reassoc nsz arcp contract afn <8 x float> %i.kk, %i.kl
  %i.kn = fadd reassoc nsz arcp contract afn <8 x float> %i.hk, %i.gq
  %i.ko = fadd reassoc nsz arcp contract afn <8 x float> %i.kn, %i.id
  %i.kp = fadd reassoc nsz arcp contract afn <8 x float> %i.ko, %i.ir
  %i.kq = fdiv reassoc nsz arcp contract afn <8 x float> %i.km, %i.kp
  %wide.gep4086 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep3693, <8 x i64> %vec.ind4053
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kq, <8 x ptr> align 4 %wide.gep4086, <8 x i1> splat (i1 true)), !tbaa !83, !alias.scope !279, !noalias !280
  %index.next4087 = add nuw i64 %index4052, 8     ; 2 uses
  %vec.ind.next4088 = add nuw nsw <8 x i64> %vec.ind4053, splat (i64 16)
  %i.kr = icmp eq i64 %index.next4087, %n.vec4047
  br i1 %i.kr, label %scalar.ph4044.preheader, label %vector.body4051, !llvm.loop !236

scalar.ph4044.preheader:                          ; preds = %vector.body4051, %vector.memcheck, %.lr.ph3691
  %indvars.iv3719.ph = phi i64 [ %i.ev, %vector.memcheck ], [ %i.ev, %.lr.ph3691 ], [ %i.fm, %vector.body4051 ]
  %.130973688.ph = phi i32 [ %i.em, %vector.memcheck ], [ %i.em, %.lr.ph3691 ], [ %i.fp, %vector.body4051 ]
  br label %scalar.ph4044

scalar.ph4044:                                    ; preds = %scalar.ph4044.preheader, %scalar.ph4044
  %indvars.iv3719 = phi i64 [ %indvars.iv.next3720, %scalar.ph4044 ], [ %indvars.iv3719.ph, %scalar.ph4044.preheader ] ; 6 uses
  %.130973688 = phi i32 [ %i.mu, %scalar.ph4044 ], [ %.130973688.ph, %scalar.ph4044.preheader ]
  %i.ks = sub nsw i64 %indvars.iv3719, %i.ag
  %i.kt = getelementptr [8 x i8], ptr %i.k, i64 %i.ks
  %gep3872 = getelementptr [8 x i8], ptr %invariant.gep3871, i64 %indvars.iv3719
  %i.ku = sub nsw i64 %indvars.iv3719, %i.af
  %i.kv = getelementptr [8 x i8], ptr %i.k, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kv, i64 -24
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.et
  %gep3874 = getelementptr [8 x i8], ptr %invariant.gep3873, i64 %indvars.iv3719
  %i.ky = getelementptr i8, ptr %gep3874, i64 -24
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.et
  %i.la = getelementptr i8, ptr %i.kt, i64 -24
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.et
  %i.lc = getelementptr i8, ptr %gep3872, i64 -24
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.et
  %i.le = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr align 4 %i.lb, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !83 ; 2 uses
  %i.lf = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr align 4 %i.ld, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !83 ; 3 uses
  %i.lg = shufflevector <13 x float> %i.le, <13 x float> %i.lf, <4 x i32> <i32 8, i32 4, i32 17, i32 21> ; 4 uses
  %i.lh = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.li = fsub reassoc nsz arcp contract afn <4 x float> %i.lg, %i.lh
  %i.lj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.li)
  %i.lk = fpext <4 x float> %i.lj to <4 x double>
  %i.ll = fadd reassoc nsz arcp contract afn <4 x double> %i.lk, splat (double 1.000000e+00)
  %i.lm = shufflevector <4 x double> %i.ll, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ln = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr align 4 %i.kx, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !83 ; 6 uses
  %i.lo = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr align 4 %i.kz, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !83 ; 4 uses
  %i.lp = shufflevector <4 x float> %i.lg, <4 x float> poison, <13 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.lq = shufflevector <13 x float> %i.ln, <13 x float> %i.lo, <13 x i32> <i32 12, i32 13, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lr = shufflevector <13 x float> %i.lp, <13 x float> %i.ln, <4 x i32> <i32 0, i32 3, i32 2, i32 13>
  %i.ls = shufflevector <13 x float> %i.lq, <13 x float> %i.lf, <4 x i32> <i32 2, i32 1, i32 0, i32 21>
  %i.lt = fsub reassoc nsz arcp contract afn <4 x float> %i.lr, %i.ls
  %i.lu = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lt)
  %i.lv = fpext <4 x float> %i.lu to <4 x double>
  %i.lw = shufflevector <13 x float> %i.lo, <13 x float> %i.lp, <13 x i32> <i32 12, i32 14, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lx = shufflevector <13 x float> %i.lw, <13 x float> %i.ln, <4 x i32> <i32 0, i32 1, i32 2, i32 13> ; 2 uses
  %i.ly = shufflevector <4 x float> %i.lg, <4 x float> %i.lx, <13 x i32> <i32 2, i32 4, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lz = shufflevector <13 x float> %i.ly, <13 x float> %i.ln, <4 x i32> <i32 0, i32 1, i32 25, i32 3>
  %i.ma = fsub reassoc nsz arcp contract afn <4 x float> %i.lx, %i.lz
  %i.mb = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ma)
  %i.mc = fpext <4 x float> %i.mb to <4 x double>
  %i.md = fadd reassoc nsz arcp contract afn <4 x double> %i.lm, %i.mc
  %i.me = fadd reassoc nsz arcp contract afn <4 x double> %i.md, %i.lv
  %i.mf = fptrunc <4 x double> %i.me to <4 x float>
  %i.mg = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.mf ; 2 uses
  %i.mh = fmul reassoc nsz arcp contract afn <4 x float> %i.lh, splat (float 1.325000e+00)
  %i.mi = shufflevector <13 x float> %i.lo, <13 x float> %i.ln, <4 x i32> <i32 0, i32 12, i32 25, i32 13>
  %i.mj = fmul reassoc nsz arcp contract afn <4 x float> %i.mi, splat (float -1.750000e-01)
  %i.mk = shufflevector <13 x float> %i.lf, <13 x float> %i.le, <4 x i32> <i32 0, i32 12, i32 25, i32 13>
  %i.ml = shufflevector <13 x float> %i.lo, <13 x float> %i.ln, <4 x i32> <i32 4, i32 8, i32 21, i32 17>
  %i.mm = fadd reassoc nsz arcp contract afn <4 x float> %i.mk, %i.ml
  %i.mn = fmul reassoc nsz arcp contract afn <4 x float> %i.mm, splat (float -7.500000e-02)
  %i.mo = fadd reassoc nsz arcp contract afn <4 x float> %i.mj, %i.mh
  %i.mp = fadd reassoc nsz arcp contract afn <4 x float> %i.mo, %i.mn
  %i.mq = fmul reassoc nsz arcp contract afn <4 x float> %i.mp, %i.mg
  %i.mr = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.mq)
  %i.ms = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.mg)
  %i.mt = fdiv reassoc nsz arcp contract afn float %i.mr, %i.ms
  %gep3694 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep3693, i64 %indvars.iv3719
  store float %i.mt, ptr %gep3694, align 4, !tbaa !83
  %i.mu = add nuw nsw i32 %.130973688, 2          ; 2 uses
  %indvars.iv.next3720 = add nuw nsw i64 %indvars.iv3719, 2
  %i.mv = icmp slt i32 %i.mu, %i.ac
  br i1 %i.mv, label %scalar.ph4044, label %._crit_edge3692, !llvm.loop !237

._crit_edge3692:                                  ; preds = %scalar.ph4044, %bb.c
  %i.mw = add nuw nsw i32 %.131013695, 1          ; 2 uses
  %indvars.iv.next3718 = add nuw i32 %indvars.iv3717, %i.ab
  %exitcond3722.not = icmp eq i32 %i.mw, %i.w
  br i1 %exitcond3722.not, label %.lr.ph3705, label %bb.c, !llvm.loop !238

.preheader:                                       ; preds = %._crit_edge3703, %.preheader3681
  %.pr = load i16, ptr %i.f, align 4, !tbaa !80   ; 2 uses
  %i.mx = icmp ugt i16 %.pr, 12
  br i1 %i.mx, label %.lr.ph3712.preheader, label %._crit_edge3713

.lr.ph3712.preheader:                             ; preds = %.preheader
  %i.my = zext i16 %i.c to i64                    ; 6 uses
  %.pre = load i16, ptr %i.b, align 2, !tbaa !79
  br label %.lr.ph3712

bb.d:                                             ; preds = %.lr.ph3705, %._crit_edge3703
  %indvars.iv3723 = phi i32 [ %i.dt, %.lr.ph3705 ], [ %indvars.iv.next3724, %._crit_edge3703 ] ; 2 uses
  %.231023704 = phi i32 [ 3, %.lr.ph3705 ], [ %i.acm, %._crit_edge3703 ] ; 2 uses
  %i.mz = shl nuw nsw i32 %.231023704, 1
  %i.na = and i32 %i.mz, 14                       ; 2 uses
  %i.nb = shl nuw nsw i32 %i.na, 1
  %i.nc = lshr i32 %i.do, %i.nb
  %i.nd = and i32 %i.nc, 1                        ; 5 uses
  %i.ne = add nuw nsw i32 %i.nd, 3                ; 4 uses
  %i.nf = icmp slt i32 %i.ne, %i.dr
  br i1 %i.nf, label %.preheader3679.preheader, label %._crit_edge3703

.preheader3679.preheader:                         ; preds = %bb.d
  %i.ng = or disjoint i32 %i.nd, %i.na
  %i.nh = shl nuw nsw i32 %i.ng, 1
  %i.ni = shl nuw i32 2, %i.nh
  %i.nj = and i32 %i.ni, %i.do
  %.cmp3500 = icmp ne i32 %i.nj, 0                ; 4 uses
  %i.nk = zext i1 %.cmp3500 to i64                ; 18 uses
  %i.nl = add i32 %indvars.iv3723, %i.nd
  %i.nm = sext i32 %i.nl to i64                   ; 7 uses
  %not..cmp3500 = xor i1 %.cmp3500, true
  %i.nn = zext i1 %not..cmp3500 to i64            ; 18 uses
  %i.no = sub nsw i32 %i.ef, %i.nd                ; 2 uses
  %i.np = lshr i32 %i.no, 1
  %narrow4345 = add nuw i32 %i.np, 1
  %i.nq = zext i32 %narrow4345 to i64             ; 2 uses
  %min.iters.check4295 = icmp ult i32 %i.no, 16
  br i1 %min.iters.check4295, label %.preheader3679.preheader4346, label %vector.memcheck4092

vector.memcheck4092:                              ; preds = %.preheader3679.preheader
  %i.nr = shl nuw nsw i64 %i.nm, 3                ; 3 uses
  %i.ns = select i1 %.cmp3500, i64 4, i64 0       ; 4 uses
  %i.nt = or disjoint i64 %i.nr, %i.ns            ; 5 uses
  %scevgep4093 = getelementptr i8, ptr %i.k, i64 %i.nt ; 17 uses
  %i.nu = sub nsw i32 %i.dw, %i.nd
  %i.nv = lshr i32 %i.nu, 1
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = shl nuw nsw i64 %i.nw, 4                ; 3 uses
  %i.ny = add nuw nsw i64 %i.nx, %i.nr            ; 2 uses
  %i.nz = or disjoint i64 %i.ny, %i.ns            ; 5 uses
  %scevgep4095 = getelementptr i8, ptr %scevgep4094, i64 %i.nz ; 17 uses
  %i.oa = select i1 %.cmp3500, i64 0, i64 4       ; 4 uses
  %i.ob = or disjoint i64 %i.nr, %i.oa            ; 5 uses
  %scevgep4096 = getelementptr i8, ptr %i.k, i64 %i.ob ; 17 uses
  %i.oc = or disjoint i64 %i.ny, %i.oa            ; 5 uses
  %scevgep4098 = getelementptr i8, ptr %scevgep4097, i64 %i.oc ; 17 uses
  %1 = shl nsw i64 %i.nm, 3                       ; 4 uses
  %2 = or disjoint i64 %1, %i.ns                  ; 4 uses
  %scevgep4100 = getelementptr i8, ptr %scevgep4099, i64 %2 ; 2 uses
  %3 = add nsw i64 %i.nx, %1
  %4 = or disjoint i64 %3, %i.ns                  ; 4 uses
  %scevgep4102 = getelementptr i8, ptr %scevgep4101, i64 %4 ; 2 uses
  %scevgep4104 = getelementptr i8, ptr %scevgep4103, i64 %2 ; 2 uses
  %scevgep4106 = getelementptr i8, ptr %scevgep4105, i64 %4 ; 2 uses
  %scevgep4108 = getelementptr i8, ptr %scevgep4107, i64 %2 ; 2 uses
  %scevgep4110 = getelementptr i8, ptr %scevgep4109, i64 %4 ; 2 uses
  %scevgep4112 = getelementptr i8, ptr %scevgep4111, i64 %i.nt ; 2 uses
  %scevgep4114 = getelementptr i8, ptr %scevgep4113, i64 %i.nz ; 2 uses
  %scevgep4116 = getelementptr i8, ptr %scevgep4115, i64 %i.nt ; 2 uses
  %scevgep4118 = getelementptr i8, ptr %scevgep4117, i64 %i.nz ; 2 uses
  %scevgep4120 = getelementptr i8, ptr %scevgep4119, i64 %i.nt ; 2 uses
  %scevgep4122 = getelementptr i8, ptr %scevgep4121, i64 %i.nz ; 2 uses
  %scevgep4124 = getelementptr i8, ptr %scevgep4123, i64 %i.nt ; 2 uses
  %scevgep4126 = getelementptr i8, ptr %scevgep4125, i64 %i.nz ; 2 uses
  %scevgep4128 = getelementptr i8, ptr %scevgep4127, i64 %2 ; 2 uses
  %scevgep4130 = getelementptr i8, ptr %scevgep4129, i64 %4 ; 2 uses
  %5 = or disjoint i64 %1, %i.oa                  ; 4 uses
  %scevgep4132 = getelementptr i8, ptr %scevgep4131, i64 %5 ; 2 uses
  %6 = add nsw i64 %i.nx, %1
  %7 = or disjoint i64 %6, %i.oa                  ; 4 uses
  %scevgep4134 = getelementptr i8, ptr %scevgep4133, i64 %7 ; 2 uses
  %scevgep4136 = getelementptr i8, ptr %scevgep4135, i64 %5 ; 2 uses
  %scevgep4138 = getelementptr i8, ptr %scevgep4137, i64 %7 ; 2 uses
  %scevgep4140 = getelementptr i8, ptr %scevgep4139, i64 %5 ; 2 uses
  %scevgep4142 = getelementptr i8, ptr %scevgep4141, i64 %7 ; 2 uses
  %scevgep4144 = getelementptr i8, ptr %scevgep4143, i64 %i.ob ; 2 uses
  %scevgep4146 = getelementptr i8, ptr %scevgep4145, i64 %i.oc ; 2 uses
  %scevgep4148 = getelementptr i8, ptr %scevgep4147, i64 %i.ob ; 2 uses
  %scevgep4150 = getelementptr i8, ptr %scevgep4149, i64 %i.oc ; 2 uses
  %scevgep4152 = getelementptr i8, ptr %scevgep4151, i64 %i.ob ; 2 uses
  %scevgep4154 = getelementptr i8, ptr %scevgep4153, i64 %i.oc ; 2 uses
  %scevgep4156 = getelementptr i8, ptr %scevgep4155, i64 %i.ob ; 2 uses
  %scevgep4158 = getelementptr i8, ptr %scevgep4157, i64 %i.oc ; 2 uses
  %scevgep4160 = getelementptr i8, ptr %scevgep4159, i64 %5 ; 2 uses
  %scevgep4162 = getelementptr i8, ptr %scevgep4161, i64 %7 ; 2 uses
  %bound04163 = icmp ult ptr %scevgep4093, %scevgep4098
  %bound14164 = icmp ult ptr %scevgep4096, %scevgep4095
  %found.conflict4165 = and i1 %bound04163, %bound14164
  %bound04166 = icmp ult ptr %scevgep4093, %scevgep4102
  %bound14167 = icmp ult ptr %scevgep4100, %scevgep4095
  %found.conflict4168 = and i1 %bound04166, %bound14167
  %conflict.rdx4169 = or i1 %found.conflict4165, %found.conflict4168
  %bound04170 = icmp ult ptr %scevgep4093, %scevgep4106
  %bound14171 = icmp ult ptr %scevgep4104, %scevgep4095
  %found.conflict4172 = and i1 %bound04170, %bound14171
  %conflict.rdx4173 = or i1 %conflict.rdx4169, %found.conflict4172
  %bound04174 = icmp ult ptr %scevgep4093, %scevgep4110
  %bound14175 = icmp ult ptr %scevgep4108, %scevgep4095
  %found.conflict4176 = and i1 %bound04174, %bound14175
  %conflict.rdx4177 = or i1 %conflict.rdx4173, %found.conflict4176
  %bound04178 = icmp ult ptr %scevgep4093, %scevgep4114
  %bound14179 = icmp ult ptr %scevgep4112, %scevgep4095
  %found.conflict4180 = and i1 %bound04178, %bound14179
  %conflict.rdx4181 = or i1 %conflict.rdx4177, %found.conflict4180
  %bound04182 = icmp ult ptr %scevgep4093, %scevgep4118
  %bound14183 = icmp ult ptr %scevgep4116, %scevgep4095
  %found.conflict4184 = and i1 %bound04182, %bound14183
  %conflict.rdx4185 = or i1 %conflict.rdx4181, %found.conflict4184
  %bound04186 = icmp ult ptr %scevgep4093, %scevgep4122
  %bound14187 = icmp ult ptr %scevgep4120, %scevgep4095
  %found.conflict4188 = and i1 %bound04186, %bound14187
  %conflict.rdx4189 = or i1 %conflict.rdx4185, %found.conflict4188
  %bound04190 = icmp ult ptr %scevgep4093, %scevgep4126
  %bound14191 = icmp ult ptr %scevgep4124, %scevgep4095
  %found.conflict4192 = and i1 %bound04190, %bound14191
  %conflict.rdx4193 = or i1 %conflict.rdx4189, %found.conflict4192
  %bound04194 = icmp ult ptr %scevgep4093, %scevgep4130
  %bound14195 = icmp ult ptr %scevgep4128, %scevgep4095
  %found.conflict4196 = and i1 %bound04194, %bound14195
  %conflict.rdx4197 = or i1 %conflict.rdx4193, %found.conflict4196
  %bound04198 = icmp ult ptr %scevgep4093, %scevgep4134
  %bound14199 = icmp ult ptr %scevgep4132, %scevgep4095
  %found.conflict4200 = and i1 %bound04198, %bound14199
  %conflict.rdx4201 = or i1 %conflict.rdx4197, %found.conflict4200
  %bound04202 = icmp ult ptr %scevgep4093, %scevgep4138
  %bound14203 = icmp ult ptr %scevgep4136, %scevgep4095
  %found.conflict4204 = and i1 %bound04202, %bound14203
  %conflict.rdx4205 = or i1 %conflict.rdx4201, %found.conflict4204
  %bound04206 = icmp ult ptr %scevgep4093, %scevgep4142
  %bound14207 = icmp ult ptr %scevgep4140, %scevgep4095
  %found.conflict4208 = and i1 %bound04206, %bound14207
  %conflict.rdx4209 = or i1 %conflict.rdx4205, %found.conflict4208
  %bound04210 = icmp ult ptr %scevgep4093, %scevgep4146
  %bound14211 = icmp ult ptr %scevgep4144, %scevgep4095
  %found.conflict4212 = and i1 %bound04210, %bound14211
  %conflict.rdx4213 = or i1 %conflict.rdx4209, %found.conflict4212
  %bound04214 = icmp ult ptr %scevgep4093, %scevgep4150
  %bound14215 = icmp ult ptr %scevgep4148, %scevgep4095
  %found.conflict4216 = and i1 %bound04214, %bound14215
  %conflict.rdx4217 = or i1 %conflict.rdx4213, %found.conflict4216
  %bound04218 = icmp ult ptr %scevgep4093, %scevgep4154
  %bound14219 = icmp ult ptr %scevgep4152, %scevgep4095
  %found.conflict4220 = and i1 %bound04218, %bound14219
  %conflict.rdx4221 = or i1 %conflict.rdx4217, %found.conflict4220
  %bound04222 = icmp ult ptr %scevgep4093, %scevgep4158
  %bound14223 = icmp ult ptr %scevgep4156, %scevgep4095
  %found.conflict4224 = and i1 %bound04222, %bound14223
  %conflict.rdx4225 = or i1 %conflict.rdx4221, %found.conflict4224
  %bound04226 = icmp ult ptr %scevgep4093, %scevgep4162
  %bound14227 = icmp ult ptr %scevgep4160, %scevgep4095
  %found.conflict4228 = and i1 %bound04226, %bound14227
  %conflict.rdx4229 = or i1 %conflict.rdx4225, %found.conflict4228
  %bound04230 = icmp ult ptr %scevgep4096, %scevgep4102
  %bound14231 = icmp ult ptr %scevgep4100, %scevgep4098
  %found.conflict4232 = and i1 %bound04230, %bound14231
  %conflict.rdx4233 = or i1 %conflict.rdx4229, %found.conflict4232
  %bound04234 = icmp ult ptr %scevgep4096, %scevgep4106
  %bound14235 = icmp ult ptr %scevgep4104, %scevgep4098
  %found.conflict4236 = and i1 %bound04234, %bound14235
  %conflict.rdx4237 = or i1 %conflict.rdx4233, %found.conflict4236
  %bound04238 = icmp ult ptr %scevgep4096, %scevgep4110
  %bound14239 = icmp ult ptr %scevgep4108, %scevgep4098
  %found.conflict4240 = and i1 %bound04238, %bound14239
  %conflict.rdx4241 = or i1 %conflict.rdx4237, %found.conflict4240
  %bound04242 = icmp ult ptr %scevgep4096, %scevgep4114
  %bound14243 = icmp ult ptr %scevgep4112, %scevgep4098
  %found.conflict4244 = and i1 %bound04242, %bound14243
  %conflict.rdx4245 = or i1 %conflict.rdx4241, %found.conflict4244
  %bound04246 = icmp ult ptr %scevgep4096, %scevgep4118
  %bound14247 = icmp ult ptr %scevgep4116, %scevgep4098
  %found.conflict4248 = and i1 %bound04246, %bound14247
  %conflict.rdx4249 = or i1 %conflict.rdx4245, %found.conflict4248
  %bound04250 = icmp ult ptr %scevgep4096, %scevgep4122
  %bound14251 = icmp ult ptr %scevgep4120, %scevgep4098
  %found.conflict4252 = and i1 %bound04250, %bound14251
  %conflict.rdx4253 = or i1 %conflict.rdx4249, %found.conflict4252
  %bound04254 = icmp ult ptr %scevgep4096, %scevgep4126
  %bound14255 = icmp ult ptr %scevgep4124, %scevgep4098
  %found.conflict4256 = and i1 %bound04254, %bound14255
  %conflict.rdx4257 = or i1 %conflict.rdx4253, %found.conflict4256
  %bound04258 = icmp ult ptr %scevgep4096, %scevgep4130
  %bound14259 = icmp ult ptr %scevgep4128, %scevgep4098
  %found.conflict4260 = and i1 %bound04258, %bound14259
  %conflict.rdx4261 = or i1 %conflict.rdx4257, %found.conflict4260
  %bound04262 = icmp ult ptr %scevgep4096, %scevgep4134
  %bound14263 = icmp ult ptr %scevgep4132, %scevgep4098
  %found.conflict4264 = and i1 %bound04262, %bound14263
  %conflict.rdx4265 = or i1 %conflict.rdx4261, %found.conflict4264
  %bound04266 = icmp ult ptr %scevgep4096, %scevgep4138
  %bound14267 = icmp ult ptr %scevgep4136, %scevgep4098
  %found.conflict4268 = and i1 %bound04266, %bound14267
  %conflict.rdx4269 = or i1 %conflict.rdx4265, %found.conflict4268
  %bound04270 = icmp ult ptr %scevgep4096, %scevgep4142
  %bound14271 = icmp ult ptr %scevgep4140, %scevgep4098
  %found.conflict4272 = and i1 %bound04270, %bound14271
  %conflict.rdx4273 = or i1 %conflict.rdx4269, %found.conflict4272
  %bound04274 = icmp ult ptr %scevgep4096, %scevgep4146
  %bound14275 = icmp ult ptr %scevgep4144, %scevgep4098
  %found.conflict4276 = and i1 %bound04274, %bound14275
  %conflict.rdx4277 = or i1 %conflict.rdx4273, %found.conflict4276
  %bound04278 = icmp ult ptr %scevgep4096, %scevgep4150
  %bound14279 = icmp ult ptr %scevgep4148, %scevgep4098
  %found.conflict4280 = and i1 %bound04278, %bound14279
  %conflict.rdx4281 = or i1 %conflict.rdx4277, %found.conflict4280
  %bound04282 = icmp ult ptr %scevgep4096, %scevgep4154
  %bound14283 = icmp ult ptr %scevgep4152, %scevgep4098
  %found.conflict4284 = and i1 %bound04282, %bound14283
  %conflict.rdx4285 = or i1 %conflict.rdx4281, %found.conflict4284
  %bound04286 = icmp ult ptr %scevgep4096, %scevgep4158
  %bound14287 = icmp ult ptr %scevgep4156, %scevgep4098
  %found.conflict4288 = and i1 %bound04286, %bound14287
  %conflict.rdx4289 = or i1 %conflict.rdx4285, %found.conflict4288
  %bound04290 = icmp ult ptr %scevgep4096, %scevgep4162
  %bound14291 = icmp ult ptr %scevgep4160, %scevgep4098
  %found.conflict4292 = and i1 %bound04290, %bound14291
  %conflict.rdx4293 = or i1 %conflict.rdx4289, %found.conflict4292
  br i1 %conflict.rdx4293, label %.preheader3679.preheader4346, label %vector.ph4296

vector.ph4296:                                    ; preds = %vector.memcheck4092
  %i.od = and i64 %i.nq, 7                        ; 2 uses
  %i.oe = icmp eq i64 %i.od, 0
  %i.of = select i1 %i.oe, i64 8, i64 %i.od
  %n.vec4297 = sub nsw i64 %i.nq, %i.of           ; 3 uses
  %i.og = shl nsw i64 %n.vec4297, 1
  %i.oh = add nsw i64 %i.og, %i.nm
  %i.oi = trunc i64 %n.vec4297 to i32
  %i.oj = shl i32 %i.oi, 1
  %i.ok = add i32 %i.ne, %i.oj
  %broadcast.splatinsert4298 = insertelement <8 x i64> poison, i64 %i.nm, i64 0
  %broadcast.splat4299 = shufflevector <8 x i64> %broadcast.splatinsert4298, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4300 = add nuw nsw <8 x i64> %broadcast.splat4299, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body4301

vector.body4301:                                  ; preds = %vector.body4301, %vector.ph4296
  %index4302 = phi i64 [ 0, %vector.ph4296 ], [ %index.next4339, %vector.body4301 ] ; 2 uses
  %vec.ind4303 = phi <8 x i64> [ %induction4300, %vector.ph4296 ], [ %vec.ind.next4340, %vector.body4301 ] ; 2 uses
  %i.ol = shl nuw i64 %index4302, 1
  %i.om = add nuw i64 %i.ol, %i.nm                ; 4 uses
  %i.on = sub nsw i64 %i.om, %i.dv
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.on ; 2 uses
  %i.op = getelementptr [8 x i8], ptr %invariant.gep3875, i64 %i.om ; 2 uses
  %i.oq = sub nsw i64 %i.om, %i.du
  %i.or = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.oq ; 2 uses
  %wide.gep4304 = getelementptr inbounds nuw [8 x i8], ptr %i.k, <8 x i64> %vec.ind4303 ; 3 uses
  %i.os = extractelement <8 x ptr> %wide.gep4304, i64 0 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  %i.ou = getelementptr i8, ptr %i.os, i64 -8     ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 24 ; 2 uses
  %i.ow = getelementptr i8, ptr %i.os, i64 -24    ; 2 uses
  %i.ox = getelementptr [8 x i8], ptr %invariant.gep3877, i64 %i.om ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.nk
  %wide.vec4305 = load <32 x float>, ptr %i.oy, align 4, !tbaa !83, !alias.scope !281
  %strided.vec4306 = shufflevector <32 x float> %wide.vec4305, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.nk
  %wide.vec4307 = load <32 x float>, ptr %i.oz, align 4, !tbaa !83, !alias.scope !282
  %strided.vec4308 = shufflevector <32 x float> %wide.vec4307, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.pa = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4306, %strided.vec4308
  %i.pb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pa)
  %i.pc = fadd reassoc nsz arcp contract afn <8 x float> %i.pb, splat (float 1.000000e+00)
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.nk
  %wide.vec4309 = load <32 x float>, ptr %i.pd, align 4, !tbaa !83, !alias.scope !283
  %strided.vec4310 = shufflevector <32 x float> %wide.vec4309, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %i.pe = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4306, %strided.vec4310
  %i.pf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pe)
  %i.pg = fadd reassoc nsz arcp contract afn <8 x float> %i.pc, %i.pf
  %i.ph = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4308, %strided.vec4310
  %i.pi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ph)
  %i.pj = fadd reassoc nsz arcp contract afn <8 x float> %i.pg, %i.pi
  %i.pk = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.pj ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.nk
  %wide.vec4311 = load <32 x float>, ptr %i.pl, align 4, !tbaa !83, !alias.scope !284
  %strided.vec4312 = shufflevector <32 x float> %wide.vec4311, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.nk
  %wide.vec4313 = load <32 x float>, ptr %i.pm, align 4, !tbaa !83, !alias.scope !285
  %strided.vec4314 = shufflevector <32 x float> %wide.vec4313, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.pn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4312, %strided.vec4314
  %i.po = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pn)
  %i.pp = fadd reassoc nsz arcp contract afn <8 x float> %i.po, splat (float 1.000000e+00)
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %i.nk
  %wide.vec4315 = load <32 x float>, ptr %i.pq, align 4, !tbaa !83, !alias.scope !286
  %strided.vec4316 = shufflevector <32 x float> %wide.vec4315, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %i.pr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4312, %strided.vec4316
  %i.ps = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pr)
  %i.pt = fadd reassoc nsz arcp contract afn <8 x float> %i.pp, %i.ps
  %i.pu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4314, %strided.vec4316
end_hunk_2
begin_hunk_3_@llvm.fabs.f32

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw7dcb_mapEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !80   ; 2 uses
  %i.d = icmp ugt i16 %i.c, 2
  br i1 %i.d, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.a
  %i.e = load i16, ptr %i.a, align 2, !tbaa !79   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = zext i16 %i.e to i64                     ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph59, %._crit_edge
  %i.i = phi i16 [ %i.c, %.lr.ph59 ], [ %i.bg, %._crit_edge ]
  %i.j = phi i16 [ %i.e, %.lr.ph59 ], [ %i.bh, %._crit_edge ] ; 3 uses
  %.05357 = phi i32 [ 1, %.lr.ph59 ], [ %i.bi, %._crit_edge ] ; 2 uses
  %i.k = icmp ugt i16 %i.j, 2
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = zext i16 %i.j to i32
  %i.m = mul i32 %.05357, %i.l
  %i.n = add nuw i32 %i.m, 1
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 2
  %.pre = load i16, ptr %.phi.trans.insert62, align 2, !tbaa !82
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.p = phi i16 [ %.pre, %.lr.ph.preheader ], [ %i.x, %bb.e ]
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.05255 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.bb, %bb.e ]
  %i.q = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.r = uitofp i16 %i.p to double
  %i.s = getelementptr i8, ptr %i.q, i64 -6
  %i.t = load i16, ptr %i.s, align 2, !tbaa !82   ; 3 uses
  %i.u = zext i16 %i.t to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !82   ; 4 uses
  %i.y = zext i16 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, %i.u               ; 3 uses
  %i.aa = sub nsw i64 %indvars.iv, %i.h
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !82 ; 3 uses
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = add nuw nsw i32 %i.z, %i.ae
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !82 ; 3 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = add nuw nsw i32 %i.af, %i.ai
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = fmul reassoc nnan nsz arcp contract afn double %i.ak, 2.500000e-01
  %i.am = fcmp reassoc nsz arcp contract afn olt double %i.al, %i.r
  %i.an = add nuw nsw i32 %i.ai, %i.ae            ; 2 uses
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %. = tail call i16 @llvm.umin.i16(i16 %i.t, i16 %i.x)
  %i.ao = zext i16 %. to i32
  %i.ap = add nuw nsw i32 %i.z, %i.ao
  %i.aq = tail call i16 @llvm.umin.i16(i16 %i.ad, i16 %i.ah)
  %i.ar = zext i16 %i.aq to i32
  %i.as = add nuw nsw i32 %i.an, %i.ar
  %i.at = icmp samesign ult i32 %i.ap, %i.as
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %.54 = tail call i16 @llvm.umax.i16(i16 %i.t, i16 %i.x)
  %i.au = zext i16 %.54 to i32
  %i.av = add nuw nsw i32 %i.z, %i.au
  %i.aw = tail call i16 @llvm.umax.i16(i16 %i.ad, i16 %i.ah)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.an, %i.ax
  %i.az = icmp samesign ugt i32 %i.av, %i.ay
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink.in = phi i1 [ %i.at, %bb.c ], [ %i.az, %bb.d ]
  %.sink = zext i1 %.sink.in to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i16 %.sink, ptr %i.ba, align 2, !tbaa !82
  %i.bb = add nuw nsw i32 %.05255, 1              ; 2 uses
  %i.bc = load i16, ptr %i.a, align 2, !tbaa !79  ; 2 uses
  %i.bd = zext i16 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -1
  %i.bf = icmp slt i32 %i.bb, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !3

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre63 = load i16, ptr %i.b, align 4, !tbaa !80
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.bg = phi i16 [ %.pre63, %._crit_edge.loopexit ], [ %i.i, %bb.b ] ; 2 uses
  %i.bh = phi i16 [ %i.bc, %._crit_edge.loopexit ], [ %i.j, %bb.b ]
  %i.bi = add nuw nsw i32 %.05357, 1              ; 2 uses
  %i.bj = zext i16 %i.bg to i32
  %i.bk = add nsw i32 %i.bj, -1
  %i.bl = icmp slt i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.b, label %._crit_edge60, !llvm.loop !4

._crit_edge60:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw14dcb_correctionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !80   ; 2 uses
  %i.d = icmp ugt i16 %i.c, 4
  br i1 %i.d, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a
  %i.e = load i16, ptr %i.a, align 2, !tbaa !79   ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 4 uses
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = load i32, ptr %i.i, align 8, !tbaa !81
  %i.k = add nsw i32 %i.f, -2                     ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 36 uses
  %i.m = zext nneg i32 %i.g to i64                ; 3 uses
  %i.n = zext i16 %i.e to i64                     ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.n ; 2 uses
  %invariant.gep46 = getelementptr [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 2
  %scevgep49 = getelementptr i8, ptr %i.l, i64 4
  %i.o = add nsw i32 %i.f, -5
  %i.p = shl nuw nsw i64 %i.n, 3                  ; 8 uses
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep51 = getelementptr i8, ptr %i.q, i64 6
  %i.r = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep53 = getelementptr i8, ptr %i.r, i64 8
  %i.s = sub nsw i64 6, %i.p
  %scevgep55 = getelementptr i8, ptr %i.l, i64 %i.s
  %i.t = sub nsw i64 8, %i.p
  %scevgep57 = getelementptr i8, ptr %i.l, i64 %i.t
  %scevgep59 = getelementptr nuw i8, ptr %i.l, i64 14
  %scevgep61 = getelementptr i8, ptr %i.l, i64 16
  %scevgep63 = getelementptr i8, ptr %i.l, i64 -2
  %i.u = shl nuw nsw i64 %i.n, 4                  ; 4 uses
  %i.v = getelementptr i8, ptr %i.l, i64 %i.u
  %scevgep66 = getelementptr i8, ptr %i.v, i64 6
  %i.w = getelementptr i8, ptr %i.l, i64 %i.u
  %scevgep68 = getelementptr i8, ptr %i.w, i64 8
  %i.x = sub nsw i64 6, %i.u
  %scevgep70 = getelementptr i8, ptr %i.l, i64 %i.x
  %i.y = sub nsw i64 8, %i.u
  %scevgep72 = getelementptr i8, ptr %i.l, i64 %i.y
  %scevgep74 = getelementptr i8, ptr %i.l, i64 22
  %scevgep76 = getelementptr i8, ptr %i.l, i64 24
  %scevgep78 = getelementptr i8, ptr %i.l, i64 -10
  %scevgep80 = getelementptr i8, ptr %i.l, i64 -8
  %scevgep82 = getelementptr i8, ptr %i.l, i64 -6
  %scevgep84 = getelementptr i8, ptr %i.l, i64 -4
  %scevgep86 = getelementptr i8, ptr %i.l, i64 10
  %scevgep88 = getelementptr i8, ptr %i.l, i64 12
  %i.z = sub nsw i64 2, %i.p
  %scevgep90 = getelementptr i8, ptr %i.l, i64 %i.z
  %i.aa = sub nsw i64 4, %i.p
  %scevgep92 = getelementptr i8, ptr %i.l, i64 %i.aa
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep94 = getelementptr i8, ptr %i.ab, i64 2
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep96 = getelementptr i8, ptr %i.ac, i64 4
  %i.ad = add nsw i32 %i.f, -5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph38, %._crit_edge
  %i.ae = phi i16 [ %i.c, %.lr.ph38 ], [ %i.fx, %._crit_edge ]
  %.03336 = phi i32 [ 2, %.lr.ph38 ], [ %i.fy, %._crit_edge ] ; 3 uses
  %i.af = shl nuw nsw i32 %.03336, 2
  %i.ag = and i32 %i.af, 28
  %i.ah = lshr i32 %i.j, %i.ag
  %i.ai = and i32 %i.ah, 1                        ; 4 uses
  %i.aj = or disjoint i32 %i.ai, 2                ; 4 uses
  %i.ak = icmp slt i32 %i.aj, %i.k
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.al = load i16, ptr %i.a, align 2, !tbaa !79
  %i.am = zext i16 %i.al to i32
  %i.an = mul i32 %.03336, %i.am
  %i.ao = add i32 %i.an, 2
  %i.ap = add i32 %i.ao, %i.ai
  %i.aq = sext i32 %i.ap to i64                   ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aq
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 6
  %.pre = load i16, ptr %.phi.trans.insert41, align 2, !tbaa !82 ; 3 uses
  %i.ar = sub nsw i32 %i.ad, %i.ai                ; 2 uses
  %i.as = lshr i32 %i.ar, 1
  %narrow = add nuw i32 %i.as, 1
  %i.at = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 16
  br i1 %min.iters.check, label %.lr.ph.preheader158, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.au = shl nuw nsw i64 %i.aq, 3                ; 7 uses
  %scevgep48 = getelementptr i8, ptr %scevgep, i64 %i.au ; 12 uses
  %i.av = sub nsw i32 %i.o, %i.ai
  %i.aw = lshr i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 4                ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, %i.au            ; 6 uses
  %scevgep50 = getelementptr i8, ptr %scevgep49, i64 %i.az ; 12 uses
  %1 = shl nuw nsw i64 %i.aq, 3                   ; 8 uses
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %1
  %2 = add nuw nsw i64 %i.ay, %1                  ; 7 uses
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %2
  %scevgep56 = getelementptr i8, ptr %scevgep55, i64 %1
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %2
  %scevgep60 = getelementptr nuw i8, ptr %scevgep59, i64 %i.au
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.az
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.au
  %scevgep65 = getelementptr i8, ptr %i.l, i64 %i.az
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %1
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %2
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %1
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %2
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %1
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %2
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.au
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.az
  %scevgep83 = getelementptr i8, ptr %scevgep82, i64 %i.au
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 %i.az
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.au
  %scevgep89 = getelementptr i8, ptr %scevgep88, i64 %i.az
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %1
  %scevgep93 = getelementptr i8, ptr %scevgep92, i64 %2
  %scevgep95 = getelementptr i8, ptr %scevgep94, i64 %1
  %scevgep97 = getelementptr i8, ptr %scevgep96, i64 %2
  %bound0 = icmp ult ptr %scevgep48, %scevgep54
  %bound1 = icmp ult ptr %scevgep52, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  %bound098 = icmp ult ptr %scevgep48, %scevgep58
  %bound199 = icmp ult ptr %scevgep56, %scevgep50
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx = or i1 %found.conflict, %found.conflict100
  %bound0101 = icmp ult ptr %scevgep48, %scevgep62
  %bound1102 = icmp ult ptr %scevgep60, %scevgep50
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx104 = or i1 %conflict.rdx, %found.conflict103
  %bound0105 = icmp ult ptr %scevgep48, %scevgep65
  %bound1106 = icmp ult ptr %scevgep64, %scevgep50
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %conflict.rdx104, %found.conflict107
  %bound0109 = icmp ult ptr %scevgep48, %scevgep69
  %bound1110 = icmp ult ptr %scevgep67, %scevgep50
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx108, %found.conflict111
  %bound0113 = icmp ult ptr %scevgep48, %scevgep73
  %bound1114 = icmp ult ptr %scevgep71, %scevgep50
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  %bound0117 = icmp ult ptr %scevgep48, %scevgep77
  %bound1118 = icmp ult ptr %scevgep75, %scevgep50
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  %bound0121 = icmp ult ptr %scevgep48, %scevgep81
  %bound1122 = icmp ult ptr %scevgep79, %scevgep50
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  %bound0125 = icmp ult ptr %scevgep48, %scevgep85
  %bound1126 = icmp ult ptr %scevgep83, %scevgep50
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx124, %found.conflict127
  %bound0129 = icmp ult ptr %scevgep48, %scevgep89
  %bound1130 = icmp ult ptr %scevgep87, %scevgep50
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  %bound0133 = icmp ult ptr %scevgep48, %scevgep93
  %bound1134 = icmp ult ptr %scevgep91, %scevgep50
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %conflict.rdx132, %found.conflict135
  %bound0137 = icmp ult ptr %scevgep48, %scevgep97
  %bound1138 = icmp ult ptr %scevgep95, %scevgep50
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx136, %found.conflict139
  br i1 %conflict.rdx140, label %.lr.ph.preheader158, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ba = and i64 %i.at, 7                        ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = select i1 %i.bb, i64 8, i64 %i.ba
  %n.vec = sub nsw i64 %i.at, %i.bc               ; 3 uses
  %i.bd = shl nsw i64 %n.vec, 1
  %i.be = add nsw i64 %i.bd, %i.aq
  %i.bf = trunc i64 %n.vec to i32
  %i.bg = shl i32 %i.bf, 1
  %i.bh = add i32 %i.aj, %i.bg
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %strided.vec148, %vector.body ]
  %i.bi = shl nuw i64 %index, 1
  %i.bj = add nuw i64 %i.bi, %i.aq                ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bj ; 3 uses
  %i.bl = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %wide.vec = load <64 x i16>, ptr %i.bm, align 2, !tbaa !82 ; 2 uses
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec141 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.bn = zext <8 x i16> %strided.vec141 to <8 x i32>
  %i.bo = sub nsw i64 %i.bj, %i.n
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %wide.vec142 = load <64 x i16>, ptr %i.bq, align 2, !tbaa !82 ; 2 uses
  %strided.vec143 = shufflevector <64 x i16> %wide.vec142, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec144 = shufflevector <64 x i16> %wide.vec142, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.br = zext <8 x i16> %strided.vec144 to <8 x i32>
  %i.bs = add nuw nsw <8 x i32> %i.br, %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  %wide.vec145 = load <64 x i16>, ptr %i.bt, align 2, !tbaa !82 ; 4 uses
  %strided.vec146 = shufflevector <64 x i16> %wide.vec145, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec147 = shufflevector <64 x i16> %wide.vec145, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec148 = shufflevector <64 x i16> %wide.vec145, <64 x i16> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62> ; 3 uses
  %i.bu = zext <8 x i16> %strided.vec147 to <8 x i32>
  %i.bv = add nuw nsw <8 x i32> %i.bs, %i.bu
  %i.bw = getelementptr i8, ptr %i.bk, i64 -10
  %wide.vec149 = load <64 x i16>, ptr %i.bw, align 2, !tbaa !82 ; 3 uses
  %strided.vec150 = shufflevector <64 x i16> %wide.vec149, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec151 = shufflevector <64 x i16> %wide.vec149, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec152 = shufflevector <64 x i16> %wide.vec149, <64 x i16> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %i.bx = zext <8 x i16> %strided.vec152 to <8 x i32>
  %i.by = add nuw nsw <8 x i32> %i.bv, %i.bx
  %i.bz = shl nuw nsw <8 x i32> %i.by, splat (i32 1)
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep46, i64 %i.bj
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %wide.vec153 = load <64 x i16>, ptr %i.cb, align 2, !tbaa !82, !alias.scope !318
  %strided.vec154 = shufflevector <64 x i16> %wide.vec153, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cc = zext <8 x i16> %strided.vec154 to <8 x i32>
  %i.cd = sub nsw i64 %i.bj, %i.m
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  %wide.vec155 = load <64 x i16>, ptr %i.cf, align 2, !tbaa !82, !alias.scope !319
  %strided.vec156 = shufflevector <64 x i16> %wide.vec155, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cg = zext <8 x i16> %strided.vec156 to <8 x i32>
  %i.ch = shufflevector <8 x i16> %vector.recur, <8 x i16> %strided.vec148, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ci = zext <8 x i16> %i.ch to <8 x i32>
  %i.cj = shl nuw nsw <8 x i32> %i.ci, splat (i32 2)
  %i.ck = zext <8 x i16> %strided.vec148 to <8 x i32>
  %i.cl = zext <8 x i16> %strided.vec150 to <8 x i32>
  %i.cm = add nuw nsw <8 x i32> %i.cj, %i.cc
  %i.cn = add nuw nsw <8 x i32> %i.cm, %i.bz
  %i.co = add nuw nsw <8 x i32> %i.cn, %i.cg
  %i.cp = add nuw nsw <8 x i32> %i.co, %i.ck
  %i.cq = add nuw nsw <8 x i32> %i.cp, %i.cl      ; 2 uses
  %i.cr = sub nsw <8 x i32> splat (i32 16), %i.cq
  %i.cs = zext <8 x i16> %strided.vec151 to <8 x i32>
  %i.ct = zext <8 x i16> %strided.vec146 to <8 x i32>
  %i.cu = add nuw nsw <8 x i32> %i.ct, %i.cs
  %i.cv = mul nsw <8 x i32> %i.cr, %i.cu
  %i.cw = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cv to <8 x double>
  %i.cx = zext <8 x i16> %strided.vec143 to <8 x i32>
  %i.cy = zext <8 x i16> %strided.vec to <8 x i32>
  %i.cz = add nuw nsw <8 x i32> %i.cy, %i.cx
  %i.da = mul nuw nsw <8 x i32> %i.cz, %i.cq
  %i.db = uitofp nneg <8 x i32> %i.da to <8 x double>
  %i.dc = fadd reassoc nnan nsz arcp contract afn <8 x double> %i.db, %i.cw
  %i.dd = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dc, splat (double 3.125000e-02)
  %i.de = fptoui <8 x double> %i.dd to <8 x i16>
  %i.df = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.dg = shufflevector <8 x i16> %i.de, <8 x i16> poison, <57 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7>
  tail call void @llvm.masked.store.v57i16.p0(<57 x i16> %i.dg, ptr align 2 %i.df, <57 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>), !tbaa !82, !alias.scope !320, !noalias !321
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <64 x i16> %wide.vec145, i64 62
  br label %.lr.ph.preheader158

.lr.ph.preheader158:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i16 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.preheader ], [ %i.be, %middle.block ]
  %.03234.ph = phi i32 [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader158, %.lr.ph
  %i.di = phi i16 [ %i.eo, %.lr.ph ], [ %.ph, %.lr.ph.preheader158 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader158 ] ; 6 uses
  %.03234 = phi i32 [ %i.fv, %.lr.ph ], [ %.03234.ph, %.lr.ph.preheader158 ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 6 uses
  %i.dk = zext i16 %i.di to i32
  %i.dl = shl nuw nsw i32 %i.dk, 2
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %gep, i64 6
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !82
  %i.do = zext i16 %i.dn to i32
  %i.dp = sub nsw i64 %indvars.iv, %i.n
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 6
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !82
  %i.dt = zext i16 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dt, %i.do
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 14
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !82
  %i.dx = zext i16 %i.dw to i32
  %i.dy = add nuw nsw i32 %i.du, %i.dx
  %i.dz = getelementptr i8, ptr %i.dj, i64 -2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !82
  %i.eb = zext i16 %i.ea to i32
  %i.ec = add nuw nsw i32 %i.dy, %i.eb
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %gep47 = getelementptr [8 x i8], ptr %invariant.gep46, i64 %indvars.iv
  %i.ee = getelementptr inbounds nuw i8, ptr %gep47, i64 6
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !82
  %i.eg = zext i16 %i.ef to i32
  %i.eh = sub nsw i64 %indvars.iv, %i.m
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !82
  %i.el = zext i16 %i.ek to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !82 ; 2 uses
  %i.ep = zext i16 %i.eo to i32
  %i.eq = getelementptr i8, ptr %i.dj, i64 -10
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !82
  %i.es = zext i16 %i.er to i32
  %i.et = add nuw nsw i32 %i.dl, %i.eg
  %i.eu = add nuw nsw i32 %i.et, %i.ed
  %i.ev = add nuw nsw i32 %i.eu, %i.el
  %i.ew = add nuw nsw i32 %i.ev, %i.ep
  %i.ex = add nuw nsw i32 %i.ew, %i.es            ; 2 uses
  %i.ey = sub nsw i32 16, %i.ex
  %i.ez = getelementptr i8, ptr %i.dj, i64 -6
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !82
end_hunk_3
