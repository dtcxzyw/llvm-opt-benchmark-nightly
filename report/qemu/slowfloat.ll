Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/slowfloat?download=true
inline.NumInlined: 295
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@floatXToF32:bb.a
bb.g:                                             ; preds = %._crit_edge
  %i.ag = load i8, ptr @slowfloat_detectTininess, align 1, !tbaa !27
  %i.ah = icmp eq i8 %i.ag, 0
  %i.ai = icmp slt i64 %.sroa.1146.1.lcssa, -126
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  %i.ak = and i64 %.sroa.34.1.lcssa, -4294967296  ; 8 uses
  %i.al = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %spec.select.v.i = select i1 %i.aj, i8 3, i8 1
  %spec.select.i = or i8 %spec.select.v.i, %i.al
  store i8 %spec.select.i, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  switch i8 %i.ac, label %bb.n [
    i8 0, label %bb.h
    i8 1, label %roundFloatXTo24.exit
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 6, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = icmp samesign ult i64 %.masked.i, 2147483648
  br i1 %i.am, label %roundFloatXTo24.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = icmp eq i64 %i.af, 2147483648
  %i.ao = and i64 %.sroa.34.1.lcssa, 4294967296
  %.not22.i = icmp eq i64 %i.ao, 0
  %or.cond.i = and i1 %.not22.i, %i.an
  br i1 %or.cond.i, label %roundFloatXTo24.exit, label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.ap = trunc nuw i8 %i.n to i1
  br i1 %i.ap, label %bb.n, label %roundFloatXTo24.exit

bb.k:                                             ; preds = %bb.g
  %i.aq = trunc nuw i8 %i.n to i1
  br i1 %i.aq, label %roundFloatXTo24.exit, label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.ar = icmp samesign ult i64 %.masked.i, 2147483648
  br i1 %i.ar, label %roundFloatXTo24.exit, label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.as = or i64 %i.ak, 4294967296
  br label %roundFloatXTo24.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.g
  %i.at = add i64 %i.ak, 4294967296               ; 2 uses
  %i.au = icmp eq i64 %i.at, 72057594037927936    ; 2 uses
  %spec.select80 = select i1 %i.au, i64 36028797018963968, i64 %i.at
  %i.av = zext i1 %i.au to i64
  %spec.select81 = add nsw i64 %.sroa.1146.1.lcssa, %i.av
  br label %roundFloatXTo24.exit

roundFloatXTo24.exit:                             ; preds = %bb.n, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %._crit_edge
  %.sroa.34.5 = phi i64 [ %.sroa.34.1.lcssa, %._crit_edge ], [ %i.as, %bb.m ], [ %spec.select80, %bb.n ], [ %i.ak, %bb.h ], [ %i.ak, %bb.i ], [ %i.ak, %bb.g ], [ %i.ak, %bb.j ], [ %i.ak, %bb.k ], [ %i.ak, %bb.l ]
  %.sroa.1146.3 = phi i64 [ %.sroa.1146.1.lcssa, %._crit_edge ], [ %.sroa.1146.1.lcssa, %bb.m ], [ %spec.select81, %bb.n ], [ %.sroa.1146.1.lcssa, %bb.h ], [ %.sroa.1146.1.lcssa, %bb.i ], [ %.sroa.1146.1.lcssa, %bb.g ], [ %.sroa.1146.1.lcssa, %bb.j ], [ %.sroa.1146.1.lcssa, %bb.k ], [ %.sroa.1146.1.lcssa, %bb.l ] ; 3 uses
  %i.aw = icmp sgt i64 %.sroa.1146.3, 127
  br i1 %i.aw, label %bb.o, label %bb.r

bb.o:                                             ; preds = %roundFloatXTo24.exit
  %i.ax = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ay = or i8 %i.ax, 5
  store i8 %i.ay, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.az = trunc nuw i8 %i.n to i1
  %switch.tableidx = add i8 %i.ac, -1             ; 3 uses
  %i.ba = icmp ult i8 %switch.tableidx, 6         ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.ba, label %switch.lookup, label %bb.ac

bb.q:                                             ; preds = %bb.o
  br i1 %i.ba, label %switch.lookup127, label %bb.ac

bb.r:                                             ; preds = %roundFloatXTo24.exit
  %i.bb = add nsw i64 %.sroa.1146.3, 127
  %i.bc = icmp slt i64 %.sroa.1146.3, -126
  br i1 %i.bc, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bd = icmp slt i64 %.sroa.1146.1.lcssa, -154
  br i1 %i.bd, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.be = icmp slt i64 %.sroa.1146.1.lcssa, -126
  br i1 %i.be, label %.lr.ph99.preheader, label %.loopexit

.lr.ph99.preheader:                               ; preds = %.preheader
  %i.bf = add nsw i64 %.sroa.1146.1.lcssa, 127
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %.lr.ph99
  %.02298 = phi i64 [ %i.bg, %.lr.ph99 ], [ %i.bf, %.lr.ph99.preheader ] ; 2 uses
  %.sroa.22.297 = phi i64 [ %i.bi, %.lr.ph99 ], [ %.sroa.22.1.lcssa, %.lr.ph99.preheader ]
  %.sroa.34.296 = phi i64 [ %i.bj, %.lr.ph99 ], [ %.sroa.34.1.lcssa, %.lr.ph99.preheader ]
  %i.bg = add i64 %.02298, 1
  %i.bh = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.22.297, i64 %.sroa.34.296, i32 noundef 1) #10 ; 2 uses
  %i.bi = extractvalue { i64, i64 } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bh, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %.02298, 0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph99

.loopexit:                                        ; preds = %.lr.ph99, %.preheader, %bb.s
  %.sroa.34.3 = phi i64 [ 0, %bb.s ], [ %.sroa.34.1.lcssa, %.preheader ], [ %i.bj, %.lr.ph99 ] ; 4 uses
  %.sroa.22.3 = phi i64 [ 1, %bb.s ], [ %.sroa.22.1.lcssa, %.preheader ], [ %i.bi, %.lr.ph99 ]
  %i.bk = icmp ne i64 %.sroa.22.3, 0
  %i.bl = zext i1 %i.bk to i64
  %.masked.i26 = and i64 %.sroa.34.3, 4294967295  ; 3 uses
  %i.bm = or i64 %.masked.i26, %i.bl              ; 2 uses
  %.not.i27 = icmp eq i64 %i.bm, 0
  br i1 %.not.i27, label %roundFloatXTo24.exit32, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.bn = load i8, ptr @slowfloat_roundingMode, align 1, !tbaa !27
  %i.bo = and i64 %.sroa.34.3, -4294967296        ; 8 uses
  %i.bp = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %spec.select.i28 = or i8 %i.bp, 3
  store i8 %spec.select.i28, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  switch i8 %i.bn, label %bb.aa [
    i8 0, label %bb.u
    i8 1, label %roundFloatXTo24.exit32
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 4, label %bb.y
    i8 6, label %bb.z
  ]

bb.u:                                             ; preds = %bb.t
  %i.bq = icmp samesign ult i64 %.masked.i26, 2147483648
  br i1 %i.bq, label %roundFloatXTo24.exit32, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = icmp eq i64 %i.bm, 2147483648
  %i.bs = and i64 %.sroa.34.3, 4294967296
  %.not22.i30 = icmp eq i64 %i.bs, 0
  %or.cond.i31 = and i1 %.not22.i30, %i.br
  br i1 %or.cond.i31, label %roundFloatXTo24.exit32, label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.bt = trunc nuw i8 %i.n to i1
  br i1 %i.bt, label %bb.aa, label %roundFloatXTo24.exit32

bb.x:                                             ; preds = %bb.t
  %i.bu = trunc nuw i8 %i.n to i1
  br i1 %i.bu, label %roundFloatXTo24.exit32, label %bb.aa

bb.y:                                             ; preds = %bb.t
  %i.bv = icmp samesign ult i64 %.masked.i26, 2147483648
  br i1 %i.bv, label %roundFloatXTo24.exit32, label %bb.aa

bb.z:                                             ; preds = %bb.t
  %i.bw = or i64 %i.bo, 4294967296
  br label %roundFloatXTo24.exit32

bb.aa:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.t
  %i.bx = add i64 %i.bo, 4294967296               ; 2 uses
  %i.by = icmp eq i64 %i.bx, 72057594037927936
  %spec.select82 = select i1 %i.by, i64 36028797018963968, i64 %i.bx
  br label %roundFloatXTo24.exit32

roundFloatXTo24.exit32:                           ; preds = %bb.aa, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %.loopexit
  %.sroa.34.6 = phi i64 [ %.sroa.34.3, %.loopexit ], [ %i.bw, %bb.z ], [ %spec.select82, %bb.aa ], [ %i.bo, %bb.u ], [ %i.bo, %bb.v ], [ %i.bo, %bb.t ], [ %i.bo, %bb.w ], [ %i.bo, %bb.x ], [ %i.bo, %bb.y ] ; 2 uses
  %i.bz = icmp ugt i64 %.sroa.34.6, 36028797018963967
  %i.ca = zext i1 %i.bz to i64
  br label %bb.ab

bb.ab:                                            ; preds = %roundFloatXTo24.exit32, %bb.r
  %.sroa.34.4 = phi i64 [ %.sroa.34.6, %roundFloatXTo24.exit32 ], [ %.sroa.34.5, %bb.r ]
  %.123 = phi i64 [ %i.ca, %roundFloatXTo24.exit32 ], [ %i.bb, %bb.r ]
  %i.cb = shl nuw nsw i64 %.123, 23
  %i.cc = zext i8 %i.n to i64
  %i.cd = shl nuw nsw i64 %i.cc, 31
  %spec.select = or i64 %i.cb, %i.cd
  %i.ce = lshr i64 %.sroa.34.4, 32
  %i.cf = and i64 %i.ce, 8388607
  %i.cg = or disjoint i64 %spec.select, %i.cf
  br label %bb.ac

switch.lookup:                                    ; preds = %bb.p
  %i.ch = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.floatXToF32, i64 %i.ch
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64
  br label %bb.ac

switch.lookup127:                                 ; preds = %bb.q
  %i.ci = zext nneg i8 %switch.tableidx to i64
  %switch.gep128 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.floatXToF32.5, i64 %i.ci
  %switch.load129 = load i32, ptr %switch.gep128, align 4
  %switch.ext130 = zext i32 %switch.load129 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %switch.lookup127, %bb.q, %switch.lookup, %bb.p, %bb.a, %bb.ab, %bb.e, %bb.c
  %.1 = phi i64 [ %i.cg, %bb.ab ], [ %i.i, %bb.c ], [ %i.p, %bb.e ], [ 4286578688, %bb.p ], [ 4294967295, %bb.a ], [ %switch.ext, %switch.lookup ], [ %switch.ext130, %switch.lookup127 ], [ 2139095040, %bb.q ]
  %i.cj = trunc nuw i64 %.1 to i32
  ret i32 %i.cj
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_ui32_to_f64(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 0, ptr %i.b, align 1, !tbaa !18
  %.not.i = icmp eq i32 %0, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %0 to i64
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.e = shl nuw nsw i64 %i.d, 24                 ; 2 uses
  %i.f = icmp sgt i32 %0, -1
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.019.i = phi i64 [ %i.g, %.lr.ph.i ], [ 31, %bb.b ]
  %.01518.i = phi i64 [ %i.h, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = add nsw i64 %.019.i, -1                  ; 2 uses
  %i.h = shl nuw nsw i64 %.01518.i, 1             ; 2 uses
  %i.i = icmp ult i64 %.01518.i, 18014398509481984
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.h, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 31, %bb.b ], [ %i.g, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.0.lcssa.i, ptr %i.j, align 8, !tbaa !20
  br label %ui32ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %ui32ToFloatX.exit

ui32ToFloatX.exit:                                ; preds = %._crit_edge.i, %bb.c
  %.1.i = phi i64 [ %.015.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.1.i, ptr %i.l, align 8, !tbaa !21
  store i64 0, ptr %i.k, align 8, !tbaa !22
  %i.m = call fastcc i64 @floatXToF64(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.m
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -1, -4503599627370495) i64 @floatXToF64(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !16, !range !23, !noundef !24
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.h, i64 -4503599627370496, i64 9218868437227405312
  br label %bb.ac

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !19, !range !23, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !25    ; 7 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i8 %i.n to i64
  %i.p = shl nuw i64 %i.o, 63
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %.sroa.1144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1144.0.copyload = load i64, ptr %.sroa.1144.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.34.0.copyload = load i64, ptr %.sroa.34.0..sroa_idx, align 8, !tbaa !26 ; 3 uses
  %i.q = icmp ugt i64 %.sroa.34.0.copyload, 72057594037927935
  br i1 %i.q, label %.lr.ph, label %.preheader82

.preheader82:                                     ; preds = %.lr.ph, %bb.f
  %.sroa.34.0.lcssa = phi i64 [ %.sroa.34.0.copyload, %bb.f ], [ %i.v, %.lr.ph ] ; 3 uses
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.0.copyload, %bb.f ], [ %i.u, %.lr.ph ] ; 2 uses
  %.sroa.1144.0.lcssa = phi i64 [ %.sroa.1144.0.copyload, %bb.f ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.34.0.lcssa, 36028797018963968
  br i1 %i.r, label %.lr.ph91, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.sroa.1144.085 = phi i64 [ %i.s, %.lr.ph ], [ %.sroa.1144.0.copyload, %bb.f ]
  %.sroa.22.084 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.22.0.copyload, %bb.f ]
  %.sroa.34.083 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.34.0.copyload, %bb.f ]
  %i.s = add nsw i64 %.sroa.1144.085, 1           ; 2 uses
  %i.t = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.22.084, i64 %.sroa.34.083, i32 noundef 1) #10 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.t, 1        ; 3 uses
  %i.w = icmp ugt i64 %i.v, 72057594037927935
  br i1 %i.w, label %.lr.ph, label %.preheader82

.lr.ph91:                                         ; preds = %.preheader82, %.lr.ph91
  %.sroa.1144.190 = phi i64 [ %i.x, %.lr.ph91 ], [ %.sroa.1144.0.lcssa, %.preheader82 ]
  %.sroa.22.189 = phi i64 [ %i.z, %.lr.ph91 ], [ %.sroa.22.0.lcssa, %.preheader82 ]
  %.sroa.34.188 = phi i64 [ %i.aa, %.lr.ph91 ], [ %.sroa.34.0.lcssa, %.preheader82 ]
  %i.x = add nsw i64 %.sroa.1144.190, -1          ; 2 uses
  %i.y = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.22.189, i64 %.sroa.34.188, i32 noundef 1) #10 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 36028797018963968
  br i1 %i.ab, label %.lr.ph91, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph91, %.preheader82
  %.sroa.34.1.lcssa = phi i64 [ %.sroa.34.0.lcssa, %.preheader82 ], [ %i.aa, %.lr.ph91 ] ; 6 uses
  %.sroa.22.1.lcssa = phi i64 [ %.sroa.22.0.lcssa, %.preheader82 ], [ %i.z, %.lr.ph91 ] ; 3 uses
  %.sroa.1144.1.lcssa = phi i64 [ %.sroa.1144.0.lcssa, %.preheader82 ], [ %i.x, %.lr.ph91 ] ; 13 uses
  %i.ac = load i8, ptr @slowfloat_roundingMode, align 1, !tbaa !27 ; 2 uses
  %i.ad = and i64 %.sroa.34.1.lcssa, 7            ; 3 uses
  %i.ae = icmp ne i64 %.sroa.22.1.lcssa, 0
  %i.af = zext i1 %i.ae to i64
  %i.ag = or i64 %i.ad, %i.af                     ; 2 uses
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %roundFloatXTo53.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ah = load i8, ptr @slowfloat_detectTininess, align 1, !tbaa !27
  %i.ai = icmp eq i8 %i.ah, 0
  %i.aj = icmp slt i64 %.sroa.1144.1.lcssa, -1022
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  %i.al = and i64 %.sroa.34.1.lcssa, -8           ; 8 uses
  %i.am = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %spec.select81.v = select i1 %i.ak, i8 3, i8 1
  %spec.select81 = or i8 %i.am, %spec.select81.v
  store i8 %spec.select81, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  switch i8 %i.ac, label %bb.n [
    i8 0, label %bb.h
    i8 1, label %roundFloatXTo53.exit
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 6, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.an = icmp samesign ult i64 %i.ad, 4
  br i1 %i.an, label %roundFloatXTo53.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq i64 %i.ag, 4
  %i.ap = and i64 %.sroa.34.1.lcssa, 8
  %.not23.i = icmp eq i64 %i.ap, 0
  %or.cond.i = and i1 %.not23.i, %i.ao
  br i1 %or.cond.i, label %roundFloatXTo53.exit, label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.aq = trunc nuw i8 %i.n to i1
  br i1 %i.aq, label %bb.n, label %roundFloatXTo53.exit

bb.k:                                             ; preds = %bb.g
  %i.ar = trunc nuw i8 %i.n to i1
  br i1 %i.ar, label %roundFloatXTo53.exit, label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.as = icmp samesign ult i64 %i.ad, 4
  br i1 %i.as, label %roundFloatXTo53.exit, label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.at = or i64 %i.al, 8
  br label %roundFloatXTo53.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.g
  %i.au = add i64 %i.al, 8                        ; 2 uses
  %i.av = icmp eq i64 %i.au, 72057594037927936    ; 2 uses
  %spec.select78 = select i1 %i.av, i64 36028797018963968, i64 %i.au
  %i.aw = zext i1 %i.av to i64
  %spec.select79 = add nsw i64 %.sroa.1144.1.lcssa, %i.aw
  br label %roundFloatXTo53.exit

roundFloatXTo53.exit:                             ; preds = %bb.n, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %._crit_edge
  %.sroa.34.5 = phi i64 [ %.sroa.34.1.lcssa, %._crit_edge ], [ %i.at, %bb.m ], [ %spec.select78, %bb.n ], [ %i.al, %bb.h ], [ %i.al, %bb.i ], [ %i.al, %bb.g ], [ %i.al, %bb.j ], [ %i.al, %bb.k ], [ %i.al, %bb.l ]
  %.sroa.1144.3 = phi i64 [ %.sroa.1144.1.lcssa, %._crit_edge ], [ %.sroa.1144.1.lcssa, %bb.m ], [ %spec.select79, %bb.n ], [ %.sroa.1144.1.lcssa, %bb.h ], [ %.sroa.1144.1.lcssa, %bb.i ], [ %.sroa.1144.1.lcssa, %bb.g ], [ %.sroa.1144.1.lcssa, %bb.j ], [ %.sroa.1144.1.lcssa, %bb.k ], [ %.sroa.1144.1.lcssa, %bb.l ] ; 3 uses
  %i.ax = icmp sgt i64 %.sroa.1144.3, 1023
  br i1 %i.ax, label %bb.o, label %bb.r

bb.o:                                             ; preds = %roundFloatXTo53.exit
  %i.ay = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.az = or i8 %i.ay, 5
  store i8 %i.az, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ba = trunc nuw i8 %i.n to i1
  %switch.tableidx = add i8 %i.ac, -1             ; 3 uses
  %i.bb = icmp ult i8 %switch.tableidx, 6         ; 2 uses
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.bb, label %switch.lookup, label %bb.ac

bb.q:                                             ; preds = %bb.o
  br i1 %i.bb, label %switch.lookup126, label %bb.ac

bb.r:                                             ; preds = %roundFloatXTo53.exit
  %i.bc = add nsw i64 %.sroa.1144.3, 1023
  %i.bd = icmp slt i64 %.sroa.1144.3, -1022
  br i1 %i.bd, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.be = icmp slt i64 %.sroa.1144.1.lcssa, -1079
  br i1 %i.be, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.bf = icmp slt i64 %.sroa.1144.1.lcssa, -1022
  br i1 %i.bf, label %.lr.ph98.preheader, label %.loopexit

.lr.ph98.preheader:                               ; preds = %.preheader
  %i.bg = add nsw i64 %.sroa.1144.1.lcssa, 1023
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %.lr.ph98
  %.02297 = phi i64 [ %i.bh, %.lr.ph98 ], [ %i.bg, %.lr.ph98.preheader ] ; 2 uses
  %.sroa.22.296 = phi i64 [ %i.bj, %.lr.ph98 ], [ %.sroa.22.1.lcssa, %.lr.ph98.preheader ]
  %.sroa.34.295 = phi i64 [ %i.bk, %.lr.ph98 ], [ %.sroa.34.1.lcssa, %.lr.ph98.preheader ]
  %i.bh = add i64 %.02297, 1
  %i.bi = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.22.296, i64 %.sroa.34.295, i32 noundef 1) #10 ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { i64, i64 } %i.bi, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %.02297, 0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph98

.loopexit:                                        ; preds = %.lr.ph98, %.preheader, %bb.s
  %.sroa.34.3 = phi i64 [ 0, %bb.s ], [ %.sroa.34.1.lcssa, %.preheader ], [ %i.bk, %.lr.ph98 ] ; 4 uses
  %.sroa.22.3 = phi i64 [ 1, %bb.s ], [ %.sroa.22.1.lcssa, %.preheader ], [ %i.bj, %.lr.ph98 ]
  %i.bl = and i64 %.sroa.34.3, 7                  ; 3 uses
  %i.bm = icmp ne i64 %.sroa.22.3, 0
  %i.bn = zext i1 %i.bm to i64
  %i.bo = or i64 %i.bl, %i.bn                     ; 2 uses
  %.not.i26 = icmp eq i64 %i.bo, 0
  br i1 %.not.i26, label %roundFloatXTo53.exit30, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.bp = load i8, ptr @slowfloat_roundingMode, align 1, !tbaa !27
  %i.bq = and i64 %.sroa.34.3, -8                 ; 8 uses
  %i.br = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.bs = or i8 %i.br, 3
end_hunk_0
begin_hunk_1_@floatXToF128M:bb.a
  %.not.i41 = icmp eq i8 %.pre-phi134, 0
  br i1 %.not.i41, label %roundFloatXTo113.exit47, label %._crit_edge122..thread_crit_edge

._crit_edge122..thread_crit_edge:                 ; preds = %._crit_edge122
  %.pre = load i8, ptr @slowfloat_roundingMode, align 1, !tbaa !27
  %i.bp = icmp samesign ult i8 %.pre-phi134, 64
  br label %.thread

.thread:                                          ; preds = %._crit_edge122..thread_crit_edge, %bb.w
  %i.bq = phi i8 [ %.pre, %._crit_edge122..thread_crit_edge ], [ %i.ae, %bb.w ]
  %i.br = phi i1 [ %i.bp, %._crit_edge122..thread_crit_edge ], [ true, %bb.w ] ; 2 uses
  %.sroa.22.3100 = phi i64 [ %.sroa.22.2.lcssa, %._crit_edge122..thread_crit_edge ], [ 1, %bb.w ] ; 2 uses
  %.sroa.36.399 = phi i64 [ %.sroa.36.2.lcssa, %._crit_edge122..thread_crit_edge ], [ 0, %bb.w ] ; 7 uses
  %i.bs = and i64 %.sroa.22.3100, -128            ; 7 uses
  %i.bt = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.bu = or i8 %i.bt, 3
  store i8 %i.bu, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  switch i8 %i.bq, label %bb.ac [
    i8 0, label %bb.x
    i8 1, label %roundFloatXTo113.exit47
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
    i8 6, label %bb.ab
  ]

bb.x:                                             ; preds = %.thread
  %i.bv = and i64 %.sroa.22.3100, 255
  %or.cond.i45 = icmp eq i64 %i.bv, 64
  %or.cond28.i46 = or i1 %i.br, %or.cond.i45
  br i1 %or.cond28.i46, label %roundFloatXTo113.exit47, label %bb.ac

bb.y:                                             ; preds = %.thread
  %i.bw = trunc nuw i8 %i.o to i1
  br i1 %i.bw, label %bb.ac, label %roundFloatXTo113.exit47

bb.z:                                             ; preds = %.thread
  %i.bx = trunc nuw i8 %i.o to i1
  br i1 %i.bx, label %roundFloatXTo113.exit47, label %bb.ac

bb.aa:                                            ; preds = %.thread
  br i1 %i.br, label %roundFloatXTo113.exit47, label %bb.ac

bb.ab:                                            ; preds = %.thread
  %i.by = or i64 %i.bs, 128
  br label %roundFloatXTo113.exit47

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %.thread
  %i.bz = add i64 %i.bs, 128                      ; 2 uses
  %.not27.i43 = icmp eq i64 %i.bz, 0
  %i.ca = zext i1 %.not27.i43 to i64
  %i.cb = add i64 %.sroa.36.399, %i.ca            ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 72057594037927936
  %spec.select103 = select i1 %i.cc, i64 36028797018963968, i64 %i.cb
  br label %roundFloatXTo113.exit47

roundFloatXTo113.exit47:                          ; preds = %bb.ac, %.thread, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %._crit_edge122
  %.sroa.36.8 = phi i64 [ %.sroa.36.2.lcssa, %._crit_edge122 ], [ %.sroa.36.399, %bb.ab ], [ %.sroa.36.399, %bb.x ], [ %.sroa.36.399, %.thread ], [ %.sroa.36.399, %bb.y ], [ %.sroa.36.399, %bb.z ], [ %.sroa.36.399, %bb.aa ], [ %spec.select103, %bb.ac ] ; 2 uses
  %.sroa.22.6 = phi i64 [ %.sroa.22.2.lcssa, %._crit_edge122 ], [ %i.by, %bb.ab ], [ %i.bs, %bb.x ], [ %i.bs, %.thread ], [ %i.bs, %bb.y ], [ %i.bs, %bb.z ], [ %i.bs, %bb.aa ], [ %i.bz, %bb.ac ]
  %i.cd = icmp ugt i64 %.sroa.36.8, 36028797018963967
  %i.ce = zext i1 %i.cd to i64
  br label %bb.ad

bb.ad:                                            ; preds = %roundFloatXTo113.exit47, %bb.v
  %.sroa.36.4 = phi i64 [ %.sroa.36.8, %roundFloatXTo113.exit47 ], [ %.sroa.36.6, %bb.v ]
  %.sroa.22.4 = phi i64 [ %.sroa.22.6, %roundFloatXTo113.exit47 ], [ %.sroa.22.5, %bb.v ]
  %.1 = phi i64 [ %i.ce, %roundFloatXTo113.exit47 ], [ %i.bg, %bb.v ]
  %i.cf = shl nuw nsw i64 %.1, 48
  %i.cg = zext i8 %i.o to i64
  %i.ch = shl i64 %i.cg, 63
  %spec.select = or disjoint i64 %i.cf, %i.ch
  %i.ci = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.22.4, i64 %.sroa.36.4, i32 noundef 7) #10 ; 2 uses
  %i.cj = extractvalue { i64, i64 } %i.ci, 0
  %i.ck = extractvalue { i64, i64 } %i.ci, 1
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = or disjoint i64 %i.cl, %spec.select
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !33
  store i64 %i.cj, ptr %1, align 8, !tbaa !34
  br label %bb.ae

bb.ae:                                            ; preds = %bb.r, %bb.q, %bb.p, %bb.u, %bb.t, %bb.s, %bb.ad, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i16 @slow_ui64_to_f16(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 0, ptr %i.b, align 1, !tbaa !18
  %.not.i = icmp eq i64 %0, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = tail call { i64, i64 } @shortShiftLeft128(i64 %0, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.018.i = extractvalue { i64, i64 } %i.d, 1 ; 3 uses
  %.sroa.04.019.i = extractvalue { i64, i64 } %i.d, 0 ; 2 uses
  %i.e = icmp ult i64 %.sroa.8.018.i, 36028797018963968
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.022.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.019.i, %bb.b ]
  %.sroa.8.021.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.018.i, %bb.b ]
  %.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 63, %bb.b ]
  %i.f = add nsw i64 %.020.i, -1                  ; 2 uses
  %i.g = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.022.i, i64 %.sroa.8.021.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.g, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.g, 0 ; 2 uses
  %i.h = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.f, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.018.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.019.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.0.lcssa.i, ptr %i.i, align 8, !tbaa !20
  br label %ui64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %ui64ToFloatX.exit

ui64ToFloatX.exit:                                ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.04.1.i, ptr %i.j, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  %i.k = call fastcc i16 @floatXToF16(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i16 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slow_ui64_to_f32(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 0, ptr %i.b, align 1, !tbaa !18
  %.not.i = icmp eq i64 %0, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = tail call { i64, i64 } @shortShiftLeft128(i64 %0, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.018.i = extractvalue { i64, i64 } %i.d, 1 ; 3 uses
  %.sroa.04.019.i = extractvalue { i64, i64 } %i.d, 0 ; 2 uses
  %i.e = icmp ult i64 %.sroa.8.018.i, 36028797018963968
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.022.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.019.i, %bb.b ]
  %.sroa.8.021.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.018.i, %bb.b ]
  %.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 63, %bb.b ]
  %i.f = add nsw i64 %.020.i, -1                  ; 2 uses
  %i.g = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.022.i, i64 %.sroa.8.021.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.g, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.g, 0 ; 2 uses
  %i.h = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.f, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.018.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.019.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.0.lcssa.i, ptr %i.i, align 8, !tbaa !20
  br label %ui64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %ui64ToFloatX.exit

ui64ToFloatX.exit:                                ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.04.1.i, ptr %i.j, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  %i.k = call fastcc i32 @floatXToF32(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_ui64_to_f64(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 0, ptr %i.b, align 1, !tbaa !18
  %.not.i = icmp eq i64 %0, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = tail call { i64, i64 } @shortShiftLeft128(i64 %0, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.018.i = extractvalue { i64, i64 } %i.d, 1 ; 3 uses
  %.sroa.04.019.i = extractvalue { i64, i64 } %i.d, 0 ; 2 uses
  %i.e = icmp ult i64 %.sroa.8.018.i, 36028797018963968
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.022.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.019.i, %bb.b ]
  %.sroa.8.021.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.018.i, %bb.b ]
  %.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 63, %bb.b ]
  %i.f = add nsw i64 %.020.i, -1                  ; 2 uses
  %i.g = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.022.i, i64 %.sroa.8.021.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.g, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.g, 0 ; 2 uses
  %i.h = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.f, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.018.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.019.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.0.lcssa.i, ptr %i.i, align 8, !tbaa !20
  br label %ui64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %ui64ToFloatX.exit

ui64ToFloatX.exit:                                ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.04.1.i, ptr %i.j, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  %i.k = call fastcc i64 @floatXToF64(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_ui64_to_extF80M(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 0, ptr %i.b, align 1, !tbaa !18
  %.not.i = icmp eq i64 %0, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = tail call { i64, i64 } @shortShiftLeft128(i64 %0, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.018.i = extractvalue { i64, i64 } %i.d, 1 ; 3 uses
  %.sroa.04.019.i = extractvalue { i64, i64 } %i.d, 0 ; 2 uses
  %i.e = icmp ult i64 %.sroa.8.018.i, 36028797018963968
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.022.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.019.i, %bb.b ]
  %.sroa.8.021.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.018.i, %bb.b ]
  %.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 63, %bb.b ]
  %i.f = add nsw i64 %.020.i, -1                  ; 2 uses
  %i.g = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.022.i, i64 %.sroa.8.021.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.g, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.g, 0 ; 2 uses
  %i.h = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.f, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.018.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.019.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.lcssa.i, ptr %i.i, align 8, !tbaa !20
  br label %ui64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %ui64ToFloatX.exit

ui64ToFloatX.exit:                                ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.04.1.i, ptr %i.j, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  call fastcc void @floatXToExtF80M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_ui64_to_f128M(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 0, ptr %i.b, align 1, !tbaa !18
  %.not.i = icmp eq i64 %0, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = tail call { i64, i64 } @shortShiftLeft128(i64 %0, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.018.i = extractvalue { i64, i64 } %i.d, 1 ; 3 uses
  %.sroa.04.019.i = extractvalue { i64, i64 } %i.d, 0 ; 2 uses
  %i.e = icmp ult i64 %.sroa.8.018.i, 36028797018963968
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.022.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.019.i, %bb.b ]
  %.sroa.8.021.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.018.i, %bb.b ]
  %.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 63, %bb.b ]
  %i.f = add nsw i64 %.020.i, -1                  ; 2 uses
  %i.g = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.022.i, i64 %.sroa.8.021.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.g, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.g, 0 ; 2 uses
  %i.h = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.f, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.018.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.019.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.lcssa.i, ptr %i.i, align 8, !tbaa !20
  br label %ui64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %ui64ToFloatX.exit

ui64ToFloatX.exit:                                ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.04.1.i, ptr %i.j, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  call fastcc void @floatXToF128M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i16 @slow_i32_to_f16(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = sext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %.lobit.i = lshr i64 %i.a, 63
  %i.c = trunc nuw nsw i64 %.lobit.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.c, ptr %i.d, align 1, !tbaa !18
  %i.e = tail call i64 @llvm.abs.i64(i64 range(i64 -2147483648, 2147483648) %i.a, i1 true) ; 3 uses
  %.not.i = icmp eq i32 %0, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 2, !tbaa !19
  %i.g = shl nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.h = icmp samesign ult i64 %i.e, 2147483648
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.021.i = phi i64 [ %i.i, %.lr.ph.i ], [ 31, %bb.b ]
  %.01920.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = add nsw i64 %.021.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.01920.i, 1             ; 2 uses
  %i.k = icmp ult i64 %.01920.i, 18014398509481984
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.019.lcssa.i = phi i64 [ %i.g, %bb.b ], [ %i.j, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 31, %bb.b ], [ %i.i, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.0.lcssa.i, ptr %i.l, align 8, !tbaa !20
  br label %i32ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.f, align 2, !tbaa !19
  br label %i32ToFloatX.exit

i32ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.1.i = phi i64 [ %.019.lcssa.i, %._crit_edge.i ], [ %i.e, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.1.i, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.m, align 8, !tbaa !22
  %i.o = call fastcc i16 @floatXToF16(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i16 %i.o
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slow_i32_to_f32(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = sext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %.lobit.i = lshr i64 %i.a, 63
  %i.c = trunc nuw nsw i64 %.lobit.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.c, ptr %i.d, align 1, !tbaa !18
  %i.e = tail call i64 @llvm.abs.i64(i64 range(i64 -2147483648, 2147483648) %i.a, i1 true) ; 3 uses
  %.not.i = icmp eq i32 %0, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 2, !tbaa !19
  %i.g = shl nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.h = icmp samesign ult i64 %i.e, 2147483648
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.021.i = phi i64 [ %i.i, %.lr.ph.i ], [ 31, %bb.b ]
  %.01920.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = add nsw i64 %.021.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.01920.i, 1             ; 2 uses
  %i.k = icmp ult i64 %.01920.i, 18014398509481984
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.019.lcssa.i = phi i64 [ %i.g, %bb.b ], [ %i.j, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 31, %bb.b ], [ %i.i, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.0.lcssa.i, ptr %i.l, align 8, !tbaa !20
  br label %i32ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.f, align 2, !tbaa !19
  br label %i32ToFloatX.exit

i32ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.1.i = phi i64 [ %.019.lcssa.i, %._crit_edge.i ], [ %i.e, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.1.i, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.m, align 8, !tbaa !22
  %i.o = call fastcc i32 @floatXToF32(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_i32_to_f64(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = sext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %.lobit.i = lshr i64 %i.a, 63
  %i.c = trunc nuw nsw i64 %.lobit.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.c, ptr %i.d, align 1, !tbaa !18
  %i.e = tail call i64 @llvm.abs.i64(i64 range(i64 -2147483648, 2147483648) %i.a, i1 true) ; 3 uses
  %.not.i = icmp eq i32 %0, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 2, !tbaa !19
  %i.g = shl nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.h = icmp samesign ult i64 %i.e, 2147483648
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.021.i = phi i64 [ %i.i, %.lr.ph.i ], [ 31, %bb.b ]
  %.01920.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = add nsw i64 %.021.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.01920.i, 1             ; 2 uses
  %i.k = icmp ult i64 %.01920.i, 18014398509481984
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.019.lcssa.i = phi i64 [ %i.g, %bb.b ], [ %i.j, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 31, %bb.b ], [ %i.i, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.0.lcssa.i, ptr %i.l, align 8, !tbaa !20
  br label %i32ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.f, align 2, !tbaa !19
  br label %i32ToFloatX.exit

i32ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.1.i = phi i64 [ %.019.lcssa.i, %._crit_edge.i ], [ %i.e, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.1.i, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.m, align 8, !tbaa !22
  %i.o = call fastcc i64 @floatXToF64(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.o
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_i32_to_extF80M(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = sext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %.lobit.i = lshr i64 %i.a, 63
  %i.c = trunc nuw nsw i64 %.lobit.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.c, ptr %i.d, align 1, !tbaa !18
  %i.e = tail call i64 @llvm.abs.i64(i64 range(i64 -2147483648, 2147483648) %i.a, i1 true) ; 3 uses
  %.not.i = icmp eq i32 %0, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 2, !tbaa !19
  %i.g = shl nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.h = icmp samesign ult i64 %i.e, 2147483648
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.021.i = phi i64 [ %i.i, %.lr.ph.i ], [ 31, %bb.b ]
  %.01920.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = add nsw i64 %.021.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.01920.i, 1             ; 2 uses
  %i.k = icmp ult i64 %.01920.i, 18014398509481984
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.019.lcssa.i = phi i64 [ %i.g, %bb.b ], [ %i.j, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 31, %bb.b ], [ %i.i, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.lcssa.i, ptr %i.l, align 8, !tbaa !20
  br label %i32ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.f, align 2, !tbaa !19
  br label %i32ToFloatX.exit

i32ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.1.i = phi i64 [ %.019.lcssa.i, %._crit_edge.i ], [ %i.e, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.m, align 8, !tbaa !22
  call fastcc void @floatXToExtF80M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_i32_to_f128M(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = sext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %.lobit.i = lshr i64 %i.a, 63
  %i.c = trunc nuw nsw i64 %.lobit.i to i8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.c, ptr %i.d, align 1, !tbaa !18
  %i.e = tail call i64 @llvm.abs.i64(i64 range(i64 -2147483648, 2147483648) %i.a, i1 true) ; 3 uses
  %.not.i = icmp eq i32 %0, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 2, !tbaa !19
  %i.g = shl nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.h = icmp samesign ult i64 %i.e, 2147483648
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.021.i = phi i64 [ %i.i, %.lr.ph.i ], [ 31, %bb.b ]
  %.01920.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = add nsw i64 %.021.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.01920.i, 1             ; 2 uses
  %i.k = icmp ult i64 %.01920.i, 18014398509481984
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.019.lcssa.i = phi i64 [ %i.g, %bb.b ], [ %i.j, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 31, %bb.b ], [ %i.i, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.lcssa.i, ptr %i.l, align 8, !tbaa !20
  br label %i32ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.f, align 2, !tbaa !19
  br label %i32ToFloatX.exit

i32ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.1.i = phi i64 [ %.019.lcssa.i, %._crit_edge.i ], [ %i.e, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.m, align 8, !tbaa !22
  call fastcc void @floatXToF128M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i16 @slow_i64_to_f16(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %.lobit.i = lshr i64 %0, 63
  %i.b = trunc nuw nsw i64 %.lobit.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.b, ptr %i.c, align 1, !tbaa !18
  %i.d = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %.not.i = icmp eq i64 %0, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 2, !tbaa !19
  %i.f = tail call { i64, i64 } @shortShiftLeft128(i64 %i.d, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.021.i = extractvalue { i64, i64 } %i.f, 1 ; 3 uses
  %.sroa.04.022.i = extractvalue { i64, i64 } %i.f, 0 ; 2 uses
  %i.g = icmp ult i64 %.sroa.8.021.i, 36028797018963968
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.025.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.022.i, %bb.b ]
  %.sroa.8.024.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.021.i, %bb.b ]
  %.023.i = phi i64 [ %i.h, %.lr.ph.i ], [ 63, %bb.b ]
  %i.h = add nsw i64 %.023.i, -1                  ; 2 uses
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.025.i, i64 %.sroa.8.024.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.i, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.i, 0 ; 2 uses
  %i.j = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.h, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.021.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.022.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.0.lcssa.i, ptr %i.k, align 8, !tbaa !20
  br label %i64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 2, !tbaa !19
  br label %i64ToFloatX.exit

i64ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ %i.d, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.04.1.i, ptr %i.l, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  %i.m = call fastcc i16 @floatXToF16(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i16 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slow_i64_to_f32(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %.lobit.i = lshr i64 %0, 63
  %i.b = trunc nuw nsw i64 %.lobit.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.b, ptr %i.c, align 1, !tbaa !18
  %i.d = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %.not.i = icmp eq i64 %0, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 2, !tbaa !19
  %i.f = tail call { i64, i64 } @shortShiftLeft128(i64 %i.d, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.021.i = extractvalue { i64, i64 } %i.f, 1 ; 3 uses
  %.sroa.04.022.i = extractvalue { i64, i64 } %i.f, 0 ; 2 uses
  %i.g = icmp ult i64 %.sroa.8.021.i, 36028797018963968
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.025.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.022.i, %bb.b ]
  %.sroa.8.024.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.021.i, %bb.b ]
  %.023.i = phi i64 [ %i.h, %.lr.ph.i ], [ 63, %bb.b ]
  %i.h = add nsw i64 %.023.i, -1                  ; 2 uses
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.025.i, i64 %.sroa.8.024.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.i, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.i, 0 ; 2 uses
  %i.j = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.h, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.021.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.022.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.0.lcssa.i, ptr %i.k, align 8, !tbaa !20
  br label %i64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 2, !tbaa !19
  br label %i64ToFloatX.exit

i64ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ %i.d, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.04.1.i, ptr %i.l, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  %i.m = call fastcc i32 @floatXToF32(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_i64_to_f64(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %.lobit.i = lshr i64 %0, 63
  %i.b = trunc nuw nsw i64 %.lobit.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.b, ptr %i.c, align 1, !tbaa !18
  %i.d = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %.not.i = icmp eq i64 %0, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 2, !tbaa !19
  %i.f = tail call { i64, i64 } @shortShiftLeft128(i64 %i.d, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.021.i = extractvalue { i64, i64 } %i.f, 1 ; 3 uses
  %.sroa.04.022.i = extractvalue { i64, i64 } %i.f, 0 ; 2 uses
  %i.g = icmp ult i64 %.sroa.8.021.i, 36028797018963968
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.025.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.022.i, %bb.b ]
  %.sroa.8.024.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.021.i, %bb.b ]
  %.023.i = phi i64 [ %i.h, %.lr.ph.i ], [ 63, %bb.b ]
  %i.h = add nsw i64 %.023.i, -1                  ; 2 uses
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.025.i, i64 %.sroa.8.024.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.i, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.i, 0 ; 2 uses
  %i.j = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.h, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.021.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.022.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.0.lcssa.i, ptr %i.k, align 8, !tbaa !20
  br label %i64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 2, !tbaa !19
  br label %i64ToFloatX.exit

i64ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ %i.d, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.04.1.i, ptr %i.l, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  %i.m = call fastcc i64 @floatXToF64(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_i64_to_extF80M(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %.lobit.i = lshr i64 %0, 63
  %i.b = trunc nuw nsw i64 %.lobit.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.b, ptr %i.c, align 1, !tbaa !18
  %i.d = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %.not.i = icmp eq i64 %0, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 2, !tbaa !19
  %i.f = tail call { i64, i64 } @shortShiftLeft128(i64 %i.d, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.021.i = extractvalue { i64, i64 } %i.f, 1 ; 3 uses
  %.sroa.04.022.i = extractvalue { i64, i64 } %i.f, 0 ; 2 uses
  %i.g = icmp ult i64 %.sroa.8.021.i, 36028797018963968
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.025.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.022.i, %bb.b ]
  %.sroa.8.024.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.021.i, %bb.b ]
  %.023.i = phi i64 [ %i.h, %.lr.ph.i ], [ 63, %bb.b ]
  %i.h = add nsw i64 %.023.i, -1                  ; 2 uses
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.025.i, i64 %.sroa.8.024.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.i, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.i, 0 ; 2 uses
  %i.j = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.h, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.021.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.022.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.lcssa.i, ptr %i.k, align 8, !tbaa !20
  br label %i64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 2, !tbaa !19
  br label %i64ToFloatX.exit

i64ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ %i.d, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.04.1.i, ptr %i.l, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  call fastcc void @floatXToExtF80M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_i64_to_f128M(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %.lobit.i = lshr i64 %0, 63
  %i.b = trunc nuw nsw i64 %.lobit.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.b, ptr %i.c, align 1, !tbaa !18
  %i.d = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %.not.i = icmp eq i64 %0, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 2, !tbaa !19
  %i.f = tail call { i64, i64 } @shortShiftLeft128(i64 %i.d, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.021.i = extractvalue { i64, i64 } %i.f, 1 ; 3 uses
  %.sroa.04.022.i = extractvalue { i64, i64 } %i.f, 0 ; 2 uses
  %i.g = icmp ult i64 %.sroa.8.021.i, 36028797018963968
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.025.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.022.i, %bb.b ]
  %.sroa.8.024.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.021.i, %bb.b ]
  %.023.i = phi i64 [ %i.h, %.lr.ph.i ], [ 63, %bb.b ]
  %i.h = add nsw i64 %.023.i, -1                  ; 2 uses
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.025.i, i64 %.sroa.8.024.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.i, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.i, 0 ; 2 uses
  %i.j = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.h, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.021.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.022.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.lcssa.i, ptr %i.k, align 8, !tbaa !20
  br label %i64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 2, !tbaa !19
  br label %i64ToFloatX.exit

i64ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ %i.d, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.04.1.i, ptr %i.l, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  call fastcc void @floatXToF128M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @slow_f16_to_ui32(i16 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
end_hunk_1
begin_hunk_2_@slow_f16_to_i32_r_minMag:bb.a
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  %i.v = call fastcc i64 @floatXToI32(ptr noundef %2, i8 noundef zeroext 1, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local i64 @slow_f16_to_i64_r_minMag(i16 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  %i.v = call fastcc i64 @floatXToI64(ptr noundef %2, i8 noundef zeroext 1, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slow_f16_to_f32(i16 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  %i.v = call fastcc i32 @floatXToF32(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f16_to_f64(i16 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  %i.v = call fastcc i64 @floatXToF64(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f16_to_extF80M(i16 %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  call fastcc void @floatXToExtF80M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f16_to_f128M(i16 %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
end_hunk_2
begin_hunk_3_@slow_f32_to_i32_r_minMag:bb.a
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f32ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i64 [ %i.i, %.preheader.i ], [ -126, %bb.e ]
  %.0.i = phi i64 [ %i.j, %.preheader.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.k = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.k, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.l, align 8, !tbaa !20
  br label %f32ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.m = and i64 %i.f, 255
  %i.n = add nsw i64 %i.m, -127
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = or disjoint i64 %i.h, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.p, %bb.h ], [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.r, align 8, !tbaa !21
  store i64 0, ptr %i.q, align 8, !tbaa !22
  %i.s = call fastcc i64 @floatXToI32(ptr noundef %2, i8 noundef zeroext 1, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.s
}

; Function Attrs: nounwind uwtable
define dso_local i64 @slow_f32_to_i64_r_minMag(i32 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = zext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i32 %0, 31
  %i.e = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %i.a, 23                        ; 2 uses
  %i.g = shl nuw i64 %i.a, 32
  %i.h = and i64 %i.g, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.f to i8
  switch i8 %trunc.i, label %bb.h [
    i8 -1, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f32ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i64 [ %i.i, %.preheader.i ], [ -126, %bb.e ]
  %.0.i = phi i64 [ %i.j, %.preheader.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.k = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.k, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.l, align 8, !tbaa !20
  br label %f32ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.m = and i64 %i.f, 255
  %i.n = add nsw i64 %i.m, -127
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = or disjoint i64 %i.h, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.p, %bb.h ], [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.r, align 8, !tbaa !21
  store i64 0, ptr %i.q, align 8, !tbaa !22
  %i.s = call fastcc i64 @floatXToI64(ptr noundef %2, i8 noundef zeroext 1, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.s
}

; Function Attrs: nounwind uwtable
define dso_local i16 @slow_f32_to_f16(i32 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = zext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i32 %0, 31
  %i.e = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %i.a, 23                        ; 2 uses
  %i.g = shl nuw i64 %i.a, 32
  %i.h = and i64 %i.g, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.f to i8
  switch i8 %trunc.i, label %bb.h [
    i8 -1, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f32ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i64 [ %i.i, %.preheader.i ], [ -126, %bb.e ]
  %.0.i = phi i64 [ %i.j, %.preheader.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.k = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.k, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.l, align 8, !tbaa !20
  br label %f32ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.m = and i64 %i.f, 255
  %i.n = add nsw i64 %i.m, -127
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = or disjoint i64 %i.h, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.p, %bb.h ], [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.1.i, ptr %i.r, align 8, !tbaa !21
  store i64 0, ptr %i.q, align 8, !tbaa !22
  %i.s = call fastcc i16 @floatXToF16(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i16 %i.s
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f32_to_f64(i32 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = zext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i32 %0, 31
  %i.e = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %i.a, 23                        ; 2 uses
  %i.g = shl nuw i64 %i.a, 32
  %i.h = and i64 %i.g, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.f to i8
  switch i8 %trunc.i, label %bb.h [
    i8 -1, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f32ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i64 [ %i.i, %.preheader.i ], [ -126, %bb.e ]
  %.0.i = phi i64 [ %i.j, %.preheader.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.k = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.k, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.l, align 8, !tbaa !20
  br label %f32ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.m = and i64 %i.f, 255
  %i.n = add nsw i64 %i.m, -127
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = or disjoint i64 %i.h, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.p, %bb.h ], [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.1.i, ptr %i.r, align 8, !tbaa !21
  store i64 0, ptr %i.q, align 8, !tbaa !22
  %i.s = call fastcc i64 @floatXToF64(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.s
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f32_to_extF80M(i32 %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = zext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i32 %0, 31
  %i.e = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %i.a, 23                        ; 2 uses
  %i.g = shl nuw i64 %i.a, 32
  %i.h = and i64 %i.g, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.f to i8
  switch i8 %trunc.i, label %bb.h [
    i8 -1, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f32ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i64 [ %i.i, %.preheader.i ], [ -126, %bb.e ]
  %.0.i = phi i64 [ %i.j, %.preheader.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.k = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.k, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.l, align 8, !tbaa !20
  br label %f32ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.m = and i64 %i.f, 255
  %i.n = add nsw i64 %i.m, -127
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = or disjoint i64 %i.h, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.p, %bb.h ], [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.r, align 8, !tbaa !21
  store i64 0, ptr %i.q, align 8, !tbaa !22
  call fastcc void @floatXToExtF80M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f32_to_f128M(i32 %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = zext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i32 %0, 31
  %i.e = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %i.a, 23                        ; 2 uses
  %i.g = shl nuw i64 %i.a, 32
  %i.h = and i64 %i.g, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.f to i8
  switch i8 %trunc.i, label %bb.h [
    i8 -1, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f32ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i64 [ %i.i, %.preheader.i ], [ -126, %bb.e ]
  %.0.i = phi i64 [ %i.j, %.preheader.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.k = icmp ult i64 %.0.i, 18014398509481984
end_hunk_3
begin_hunk_4_@slow_f64_to_f32:bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  %i.r = call fastcc i32 @floatXToF32(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f64_to_extF80M(i64 %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  call fastcc void @floatXToExtF80M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f64_to_f128M(i64 %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  call fastcc void @floatXToF128M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f64_roundToInt(i64 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  call fastcc void @floatXRoundToInt(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  %i.r = call fastcc i64 @floatXToF64(ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f64_add(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 13 uses
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.r, align 1, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.s, align 2, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i3 = lshr i64 %1, 63
  %i.u = trunc nuw nsw i64 %.lobit.i3 to i8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !18
  %i.v = lshr i64 %1, 52
  %i.w = and i64 %i.v, 2047                       ; 2 uses
  %i.x = and i64 %1, 4503599627370495             ; 5 uses
  switch i64 %i.w, label %bb.o [
    i64 2047, label %bb.i
    i64 0, label %bb.l
  ]

bb.i:                                             ; preds = %f64ToFloatX.exit
  %.not31.i9 = icmp eq i64 %i.x, 0
  br i1 %.not31.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f64ToFloatX.exit10

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.r, align 1, !tbaa !17
  br label %f64ToFloatX.exit10

bb.l:                                             ; preds = %f64ToFloatX.exit
  %.not30.i4 = icmp eq i64 %i.x, 0
  br i1 %.not30.i4, label %bb.m, label %.preheader.i5

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.s, align 2, !tbaa !19
  br label %f64ToFloatX.exit10

.preheader.i5:                                    ; preds = %bb.l, %.preheader.i5
  %.025.i6 = phi i64 [ %i.y, %.preheader.i5 ], [ -1022, %bb.l ]
  %.0.i7 = phi i64 [ %i.z, %.preheader.i5 ], [ %i.x, %bb.l ] ; 2 uses
  %i.y = add nsw i64 %.025.i6, -1                 ; 2 uses
  %i.z = shl nuw nsw i64 %.0.i7, 1                ; 2 uses
  %i.aa = icmp samesign ult i64 %.0.i7, 2251799813685248
  br i1 %i.aa, label %.preheader.i5, label %bb.n

bb.n:                                             ; preds = %.preheader.i5
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !20
  br label %f64ToFloatX.exit10

bb.o:                                             ; preds = %f64ToFloatX.exit
  %i.ac = add nsw i64 %i.w, -1023
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !20
  %i.ae = or disjoint i64 %i.x, 4503599627370496
  br label %f64ToFloatX.exit10

f64ToFloatX.exit10:                               ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %.1.i8 = phi i64 [ %i.x, %bb.j ], [ 0, %bb.k ], [ %i.ae, %bb.o ], [ %i.z, %bb.n ], [ 0, %bb.m ]
  %i.af = shl i64 %.1.i8, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !21
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  call fastcc void @floatXAdd(ptr noundef %2, ptr noundef %3)
  %i.ai = call fastcc i64 @floatXToF64(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.ai
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f64_sub(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 13 uses
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.r, align 1, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.s, align 2, !tbaa !19
  %i.t = lshr i64 %1, 52
  %i.u = and i64 %i.t, 2047                       ; 2 uses
  %i.v = and i64 %1, 4503599627370495             ; 5 uses
  switch i64 %i.u, label %bb.o [
    i64 2047, label %bb.i
    i64 0, label %bb.l
  ]

bb.i:                                             ; preds = %f64ToFloatX.exit
  %.not31.i9 = icmp eq i64 %i.v, 0
  br i1 %.not31.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f64ToFloatX.exit10

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.r, align 1, !tbaa !17
  br label %f64ToFloatX.exit10

bb.l:                                             ; preds = %f64ToFloatX.exit
  %.not30.i4 = icmp eq i64 %i.v, 0
  br i1 %.not30.i4, label %bb.m, label %.preheader.i5

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.s, align 2, !tbaa !19
  br label %f64ToFloatX.exit10

.preheader.i5:                                    ; preds = %bb.l, %.preheader.i5
  %.025.i6 = phi i64 [ %i.w, %.preheader.i5 ], [ -1022, %bb.l ]
  %.0.i7 = phi i64 [ %i.x, %.preheader.i5 ], [ %i.v, %bb.l ] ; 2 uses
  %i.w = add nsw i64 %.025.i6, -1                 ; 2 uses
  %i.x = shl nuw nsw i64 %.0.i7, 1                ; 2 uses
  %i.y = icmp samesign ult i64 %.0.i7, 2251799813685248
  br i1 %i.y, label %.preheader.i5, label %bb.n

bb.n:                                             ; preds = %.preheader.i5
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.w, ptr %i.z, align 8, !tbaa !20
  br label %f64ToFloatX.exit10

bb.o:                                             ; preds = %f64ToFloatX.exit
  %i.aa = add nsw i64 %i.u, -1023
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !20
  %i.ac = or disjoint i64 %i.v, 4503599627370496
  br label %f64ToFloatX.exit10

f64ToFloatX.exit10:                               ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %.1.i8 = phi i64 [ %i.v, %bb.j ], [ 0, %bb.k ], [ %i.ac, %bb.o ], [ %i.x, %bb.n ], [ 0, %bb.m ]
  %.lobit.i3 = lshr i64 %1, 63
  %i.ad = trunc nuw nsw i64 %.lobit.i3 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.af = shl i64 %.1.i8, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !21
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  %i.ai = xor i8 %i.ad, 1
  store i8 %i.ai, ptr %i.ae, align 1, !tbaa !18
  call fastcc void @floatXAdd(ptr noundef %2, ptr noundef %3)
  %i.aj = call fastcc i64 @floatXToF64(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.aj
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f64_mul(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 13 uses
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.r, align 1, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.s, align 2, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i3 = lshr i64 %1, 63
  %i.u = trunc nuw nsw i64 %.lobit.i3 to i8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !18
  %i.v = lshr i64 %1, 52
  %i.w = and i64 %i.v, 2047                       ; 2 uses
  %i.x = and i64 %1, 4503599627370495             ; 5 uses
  switch i64 %i.w, label %bb.o [
    i64 2047, label %bb.i
    i64 0, label %bb.l
  ]

bb.i:                                             ; preds = %f64ToFloatX.exit
  %.not31.i9 = icmp eq i64 %i.x, 0
  br i1 %.not31.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f64ToFloatX.exit10

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.r, align 1, !tbaa !17
  br label %f64ToFloatX.exit10

bb.l:                                             ; preds = %f64ToFloatX.exit
  %.not30.i4 = icmp eq i64 %i.x, 0
  br i1 %.not30.i4, label %bb.m, label %.preheader.i5

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.s, align 2, !tbaa !19
  br label %f64ToFloatX.exit10

.preheader.i5:                                    ; preds = %bb.l, %.preheader.i5
  %.025.i6 = phi i64 [ %i.y, %.preheader.i5 ], [ -1022, %bb.l ]
  %.0.i7 = phi i64 [ %i.z, %.preheader.i5 ], [ %i.x, %bb.l ] ; 2 uses
  %i.y = add nsw i64 %.025.i6, -1                 ; 2 uses
  %i.z = shl nuw nsw i64 %.0.i7, 1                ; 2 uses
  %i.aa = icmp samesign ult i64 %.0.i7, 2251799813685248
  br i1 %i.aa, label %.preheader.i5, label %bb.n

bb.n:                                             ; preds = %.preheader.i5
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !20
  br label %f64ToFloatX.exit10

bb.o:                                             ; preds = %f64ToFloatX.exit
  %i.ac = add nsw i64 %i.w, -1023
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !20
  %i.ae = or disjoint i64 %i.x, 4503599627370496
  br label %f64ToFloatX.exit10

f64ToFloatX.exit10:                               ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %.1.i8 = phi i64 [ %i.x, %bb.j ], [ 0, %bb.k ], [ %i.ae, %bb.o ], [ %i.z, %bb.n ], [ 0, %bb.m ]
  %i.af = shl i64 %.1.i8, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !21
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  call fastcc void @floatXMul(ptr noundef %2, ptr noundef %3)
  %i.ai = call fastcc i64 @floatXToF64(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.ai
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f64_mulAdd(i64 %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 14 uses
  %4 = alloca %struct.floatX, align 8             ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  store i8 0, ptr %4, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  store i8 0, ptr %i.r, align 1, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 4 uses
  store i8 0, ptr %i.s, align 2, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %.lobit.i4 = lshr i64 %1, 63
  %i.u = trunc nuw nsw i64 %.lobit.i4 to i8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !18
  %i.v = lshr i64 %1, 52
  %i.w = and i64 %i.v, 2047                       ; 2 uses
  %i.x = and i64 %1, 4503599627370495             ; 5 uses
  switch i64 %i.w, label %bb.o [
    i64 2047, label %bb.i
    i64 0, label %bb.l
  ]

bb.i:                                             ; preds = %f64ToFloatX.exit
  %.not31.i10 = icmp eq i64 %i.x, 0
  br i1 %.not31.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %4, align 8, !tbaa !16
  br label %f64ToFloatX.exit11

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.r, align 1, !tbaa !17
  br label %f64ToFloatX.exit11

bb.l:                                             ; preds = %f64ToFloatX.exit
  %.not30.i5 = icmp eq i64 %i.x, 0
  br i1 %.not30.i5, label %bb.m, label %.preheader.i6

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.s, align 2, !tbaa !19
  br label %f64ToFloatX.exit11

.preheader.i6:                                    ; preds = %bb.l, %.preheader.i6
  %.025.i7 = phi i64 [ %i.y, %.preheader.i6 ], [ -1022, %bb.l ]
  %.0.i8 = phi i64 [ %i.z, %.preheader.i6 ], [ %i.x, %bb.l ] ; 2 uses
  %i.y = add nsw i64 %.025.i7, -1                 ; 2 uses
  %i.z = shl nuw nsw i64 %.0.i8, 1                ; 2 uses
  %i.aa = icmp samesign ult i64 %.0.i8, 2251799813685248
  br i1 %i.aa, label %.preheader.i6, label %bb.n

bb.n:                                             ; preds = %.preheader.i6
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !20
  br label %f64ToFloatX.exit11

bb.o:                                             ; preds = %f64ToFloatX.exit
  %i.ac = add nsw i64 %i.w, -1023
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !20
  %i.ae = or disjoint i64 %i.x, 4503599627370496
  br label %f64ToFloatX.exit11

f64ToFloatX.exit11:                               ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %.1.i9 = phi i64 [ %i.x, %bb.j ], [ 0, %bb.k ], [ %i.ae, %bb.o ], [ %i.z, %bb.n ], [ 0, %bb.m ]
  %i.af = shl i64 %.1.i9, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !21
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  call fastcc void @floatXMul(ptr noundef %3, ptr noundef %4)
  store i8 0, ptr %4, align 8, !tbaa !16
  store i8 0, ptr %i.r, align 1, !tbaa !17
  store i8 0, ptr %i.s, align 2, !tbaa !19
  %.lobit.i12 = lshr i64 %2, 63
  %i.ai = trunc nuw nsw i64 %.lobit.i12 to i8
  store i8 %i.ai, ptr %i.t, align 1, !tbaa !18
  %i.aj = lshr i64 %2, 52
  %i.ak = and i64 %i.aj, 2047                     ; 2 uses
  %i.al = and i64 %2, 4503599627370495            ; 5 uses
  switch i64 %i.ak, label %bb.v [
    i64 2047, label %bb.p
    i64 0, label %bb.s
  ]

bb.p:                                             ; preds = %f64ToFloatX.exit11
  %.not31.i18 = icmp eq i64 %i.al, 0
  br i1 %.not31.i18, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %4, align 8, !tbaa !16
  br label %f64ToFloatX.exit19

bb.r:                                             ; preds = %bb.p
  store i8 1, ptr %i.r, align 1, !tbaa !17
  br label %f64ToFloatX.exit19

bb.s:                                             ; preds = %f64ToFloatX.exit11
  %.not30.i13 = icmp eq i64 %i.al, 0
  br i1 %.not30.i13, label %bb.t, label %.preheader.i14

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.s, align 2, !tbaa !19
  br label %f64ToFloatX.exit19

.preheader.i14:                                   ; preds = %bb.s, %.preheader.i14
  %.025.i15 = phi i64 [ %i.am, %.preheader.i14 ], [ -1022, %bb.s ]
  %.0.i16 = phi i64 [ %i.an, %.preheader.i14 ], [ %i.al, %bb.s ] ; 2 uses
  %i.am = add nsw i64 %.025.i15, -1               ; 2 uses
  %i.an = shl nuw nsw i64 %.0.i16, 1              ; 2 uses
  %i.ao = icmp samesign ult i64 %.0.i16, 2251799813685248
  br i1 %i.ao, label %.preheader.i14, label %bb.u

bb.u:                                             ; preds = %.preheader.i14
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.am, ptr %i.ap, align 8, !tbaa !20
  br label %f64ToFloatX.exit19

bb.v:                                             ; preds = %f64ToFloatX.exit11
  %i.aq = add nsw i64 %i.ak, -1023
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !20
  %i.as = or disjoint i64 %i.al, 4503599627370496
  br label %f64ToFloatX.exit19

f64ToFloatX.exit19:                               ; preds = %bb.q, %bb.r, %bb.t, %bb.u, %bb.v
  %.1.i17 = phi i64 [ %i.al, %bb.q ], [ 0, %bb.r ], [ %i.as, %bb.v ], [ %i.an, %bb.u ], [ 0, %bb.t ]
  %i.at = shl i64 %.1.i17, 3
  store i64 %i.at, ptr %i.ah, align 8, !tbaa !21
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  call fastcc void @floatXAdd(ptr noundef %3, ptr noundef %4)
  %i.au = call fastcc i64 @floatXToF64(ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.au
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f64_div(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 13 uses
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.r, align 1, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.s, align 2, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i3 = lshr i64 %1, 63
  %i.u = trunc nuw nsw i64 %.lobit.i3 to i8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !18
  %i.v = lshr i64 %1, 52
  %i.w = and i64 %i.v, 2047                       ; 2 uses
  %i.x = and i64 %1, 4503599627370495             ; 5 uses
  switch i64 %i.w, label %bb.o [
    i64 2047, label %bb.i
    i64 0, label %bb.l
  ]

bb.i:                                             ; preds = %f64ToFloatX.exit
  %.not31.i9 = icmp eq i64 %i.x, 0
  br i1 %.not31.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f64ToFloatX.exit10

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.r, align 1, !tbaa !17
  br label %f64ToFloatX.exit10

bb.l:                                             ; preds = %f64ToFloatX.exit
  %.not30.i4 = icmp eq i64 %i.x, 0
  br i1 %.not30.i4, label %bb.m, label %.preheader.i5

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.s, align 2, !tbaa !19
  br label %f64ToFloatX.exit10

.preheader.i5:                                    ; preds = %bb.l, %.preheader.i5
  %.025.i6 = phi i64 [ %i.y, %.preheader.i5 ], [ -1022, %bb.l ]
  %.0.i7 = phi i64 [ %i.z, %.preheader.i5 ], [ %i.x, %bb.l ] ; 2 uses
  %i.y = add nsw i64 %.025.i6, -1                 ; 2 uses
  %i.z = shl nuw nsw i64 %.0.i7, 1                ; 2 uses
  %i.aa = icmp samesign ult i64 %.0.i7, 2251799813685248
  br i1 %i.aa, label %.preheader.i5, label %bb.n

bb.n:                                             ; preds = %.preheader.i5
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !20
  br label %f64ToFloatX.exit10

bb.o:                                             ; preds = %f64ToFloatX.exit
  %i.ac = add nsw i64 %i.w, -1023
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !20
  %i.ae = or disjoint i64 %i.x, 4503599627370496
  br label %f64ToFloatX.exit10

f64ToFloatX.exit10:                               ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %.1.i8 = phi i64 [ %i.x, %bb.j ], [ 0, %bb.k ], [ %i.ae, %bb.o ], [ %i.z, %bb.n ], [ 0, %bb.m ]
  %i.af = shl i64 %.1.i8, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !21
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  call fastcc void @floatXDiv(ptr noundef %2, ptr noundef %3)
  %i.ai = call fastcc i64 @floatXToF64(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.ai
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f64_rem(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 13 uses
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.r, align 1, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.s, align 2, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i3 = lshr i64 %1, 63
  %i.u = trunc nuw nsw i64 %.lobit.i3 to i8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !18
  %i.v = lshr i64 %1, 52
  %i.w = and i64 %i.v, 2047                       ; 2 uses
  %i.x = and i64 %1, 4503599627370495             ; 5 uses
  switch i64 %i.w, label %bb.o [
    i64 2047, label %bb.i
    i64 0, label %bb.l
  ]

bb.i:                                             ; preds = %f64ToFloatX.exit
  %.not31.i9 = icmp eq i64 %i.x, 0
  br i1 %.not31.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f64ToFloatX.exit10

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.r, align 1, !tbaa !17
  br label %f64ToFloatX.exit10

bb.l:                                             ; preds = %f64ToFloatX.exit
  %.not30.i4 = icmp eq i64 %i.x, 0
  br i1 %.not30.i4, label %bb.m, label %.preheader.i5

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.s, align 2, !tbaa !19
  br label %f64ToFloatX.exit10

.preheader.i5:                                    ; preds = %bb.l, %.preheader.i5
  %.025.i6 = phi i64 [ %i.y, %.preheader.i5 ], [ -1022, %bb.l ]
  %.0.i7 = phi i64 [ %i.z, %.preheader.i5 ], [ %i.x, %bb.l ] ; 2 uses
  %i.y = add nsw i64 %.025.i6, -1                 ; 2 uses
  %i.z = shl nuw nsw i64 %.0.i7, 1                ; 2 uses
  %i.aa = icmp samesign ult i64 %.0.i7, 2251799813685248
  br i1 %i.aa, label %.preheader.i5, label %bb.n

bb.n:                                             ; preds = %.preheader.i5
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !20
  br label %f64ToFloatX.exit10

bb.o:                                             ; preds = %f64ToFloatX.exit
  %i.ac = add nsw i64 %i.w, -1023
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !20
  %i.ae = or disjoint i64 %i.x, 4503599627370496
  br label %f64ToFloatX.exit10

f64ToFloatX.exit10:                               ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %.1.i8 = phi i64 [ %i.x, %bb.j ], [ 0, %bb.k ], [ %i.ae, %bb.o ], [ %i.z, %bb.n ], [ 0, %bb.m ]
  %i.af = shl i64 %.1.i8, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !21
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  call fastcc void @floatXRem(ptr noundef %2, ptr noundef %3)
  %i.ai = call fastcc i64 @floatXToF64(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.ai
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f64_sqrt(i64 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  call fastcc void @floatXSqrt(ptr noundef %1)
  %i.r = call fastcc i64 @floatXToF64(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.r
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i1 @slow_f64_eq(i64 %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %0, 52
  %i.b = and i64 %i.a, 2047                       ; 2 uses
  %i.c = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.b, label %bb.e [
    i64 2047, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.c, 0
  br i1 %.not31.i, label %bb.c, label %f64ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.c, 0
  br i1 %.not30.i, label %f64ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.025.i = phi i64 [ %i.d, %.preheader.i ], [ -1022, %bb.d ]
  %.0.i = phi i64 [ %i.e, %.preheader.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.d = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.e = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.f = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.f, label %.preheader.i, label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.b, -1023
  %i.h = or disjoint i64 %i.c, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1317.0 = phi i64 [ %i.g, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.d, %.preheader.i ]
  %.sroa.814.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.513.0 = phi i8 [ 0, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %.sroa.012.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ] ; 2 uses
  %.1.i = phi i64 [ %i.h, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.c, %bb.b ], [ %i.e, %.preheader.i ]
  %i.i = lshr i64 %1, 52
  %i.j = and i64 %i.i, 2047                       ; 2 uses
  %i.k = and i64 %1, 4503599627370495             ; 4 uses
  switch i64 %i.j, label %bb.h [
    i64 2047, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f64ToFloatX.exit
  %.not31.i8 = icmp eq i64 %i.k, 0
  br i1 %.not31.i8, label %f64ToFloatX.exit9, label %floatXEq.exit

bb.g:                                             ; preds = %f64ToFloatX.exit
  %.not30.i3 = icmp eq i64 %i.k, 0
  br i1 %.not30.i3, label %f64ToFloatX.exit9, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.g, %.preheader.i4
  %.025.i5 = phi i64 [ %i.l, %.preheader.i4 ], [ -1022, %bb.g ]
  %.0.i6 = phi i64 [ %i.m, %.preheader.i4 ], [ %i.k, %bb.g ] ; 2 uses
  %i.l = add nsw i64 %.025.i5, -1                 ; 2 uses
  %i.m = shl nuw nsw i64 %.0.i6, 1                ; 2 uses
  %i.n = icmp samesign ult i64 %.0.i6, 2251799813685248
  br i1 %i.n, label %.preheader.i4, label %f64ToFloatX.exit9

bb.h:                                             ; preds = %f64ToFloatX.exit
  %i.o = add nsw i64 %i.j, -1023
  %i.p = or disjoint i64 %i.k, 4503599627370496
  br label %f64ToFloatX.exit9

f64ToFloatX.exit9:                                ; preds = %.preheader.i4, %bb.f, %bb.g, %bb.h
  %.sroa.1311.0 = phi i64 [ %i.o, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.l, %.preheader.i4 ]
  %.sroa.8.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ %.sroa.814.0, %bb.g ], [ false, %.preheader.i4 ]
  %.sroa.5.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %.preheader.i4 ] ; 2 uses
  %.1.i7 = phi i64 [ %i.p, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.m, %.preheader.i4 ]
  %brmerge = or i1 %.sroa.012.0, %.sroa.8.0
  %not..sroa.012.0 = xor i1 %.sroa.012.0, true
  br i1 %brmerge, label %floatXEq.exit, label %bb.i

bb.i:                                             ; preds = %f64ToFloatX.exit9
  %.not.i.unshifted = xor i64 %1, %0
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.j, label %floatXEq.exit

bb.j:                                             ; preds = %bb.i
  %i.q = or i8 %.sroa.5.0, %.sroa.513.0
  %brmerge.not.i = icmp eq i8 %i.q, 0
  %i.r = and i8 %.sroa.5.0, %.sroa.513.0
  %.mux.i = icmp ne i8 %i.r, 0
  br i1 %brmerge.not.i, label %bb.k, label %floatXEq.exit

bb.k:                                             ; preds = %bb.j
  %i.s = icmp eq i64 %.sroa.1317.0, %.sroa.1311.0
  %.unshifted = xor i64 %.1.i7, %.1.i
  %.mask = and i64 %.unshifted, 2305843009213693951
  %i.t = icmp eq i64 %.mask, 0
  %spec.select = select i1 %i.s, i1 %i.t, i1 false
  br label %floatXEq.exit

floatXEq.exit:                                    ; preds = %bb.f, %f64ToFloatX.exit9, %bb.k, %bb.i, %bb.j
  %.0.i10 = phi i1 [ %.mux.i, %bb.j ], [ %not..sroa.012.0, %f64ToFloatX.exit9 ], [ %spec.select, %bb.k ], [ false, %bb.i ], [ false, %bb.f ]
  ret i1 %.0.i10
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slow_f64_le(i64 %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %0, 52
  %i.b = and i64 %i.a, 2047                       ; 2 uses
  %i.c = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.b, label %bb.e [
    i64 2047, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.c, 0
  br i1 %.not31.i, label %bb.c, label %f64ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.c, 0
  br i1 %.not30.i, label %f64ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
end_hunk_4
begin_hunk_5_@slow_extF80M_to_i64_r_minMag:bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.f, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.i = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val, -1
  br i1 %.not29.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %.not30.i = icmp eq i64 %.val, 0
  br i1 %.not30.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.1.i = phi i64 [ %i.j, %.preheader.i ], [ %i.i, %bb.f ]
  %.sroa.01.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val, %bb.f ]
  %i.j = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.k = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.g, %bb.e
  %.2.i = phi i64 [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.j, %.preheader.i ]
  %.sroa.01.1.i = phi i64 [ %.val, %bb.e ], [ 0, %bb.g ], [ %i.k, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.2.i, ptr %i.m, align 8, !tbaa !20
  br label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %bb.c, %bb.d, %.loopexit.i
  %.sroa.01.2.i = phi i64 [ %.val, %bb.c ], [ %.val, %bb.d ], [ %.sroa.01.1.i, %.loopexit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.r = call fastcc i64 @floatXToI64(ptr noundef %2, i8 noundef zeroext 1, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local i16 @slow_extF80M_to_f16(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %.val = load i64, ptr %0, align 8, !tbaa !32    ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i16, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i16 %.val1, 15
  %i.e = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = and i16 %.val1, 32767                    ; 2 uses
  %i.g = icmp eq i16 %i.f, 32767
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.val, 9223372036854775807
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %extF80MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.f, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.i = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val, -1
  br i1 %.not29.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %.not30.i = icmp eq i64 %.val, 0
  br i1 %.not30.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.1.i = phi i64 [ %i.j, %.preheader.i ], [ %i.i, %bb.f ]
  %.sroa.01.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val, %bb.f ]
  %i.j = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.k = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.g, %bb.e
  %.2.i = phi i64 [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.j, %.preheader.i ]
  %.sroa.01.1.i = phi i64 [ %.val, %bb.e ], [ 0, %bb.g ], [ %i.k, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.2.i, ptr %i.m, align 8, !tbaa !20
  br label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %bb.c, %bb.d, %.loopexit.i
  %.sroa.01.2.i = phi i64 [ %.val, %bb.c ], [ %.val, %bb.d ], [ %.sroa.01.1.i, %.loopexit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.r = call fastcc i16 @floatXToF16(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i16 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slow_extF80M_to_f32(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %.val = load i64, ptr %0, align 8, !tbaa !32    ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i16, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i16 %.val1, 15
  %i.e = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = and i16 %.val1, 32767                    ; 2 uses
  %i.g = icmp eq i16 %i.f, 32767
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.val, 9223372036854775807
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %extF80MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.f, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.i = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val, -1
  br i1 %.not29.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %.not30.i = icmp eq i64 %.val, 0
  br i1 %.not30.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.1.i = phi i64 [ %i.j, %.preheader.i ], [ %i.i, %bb.f ]
  %.sroa.01.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val, %bb.f ]
  %i.j = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.k = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.g, %bb.e
  %.2.i = phi i64 [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.j, %.preheader.i ]
  %.sroa.01.1.i = phi i64 [ %.val, %bb.e ], [ 0, %bb.g ], [ %i.k, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.2.i, ptr %i.m, align 8, !tbaa !20
  br label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %bb.c, %bb.d, %.loopexit.i
  %.sroa.01.2.i = phi i64 [ %.val, %bb.c ], [ %.val, %bb.d ], [ %.sroa.01.1.i, %.loopexit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.r = call fastcc i32 @floatXToF32(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_extF80M_to_f64(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %.val = load i64, ptr %0, align 8, !tbaa !32    ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i16, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i16 %.val1, 15
  %i.e = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = and i16 %.val1, 32767                    ; 2 uses
  %i.g = icmp eq i16 %i.f, 32767
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.val, 9223372036854775807
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %extF80MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.f, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.i = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val, -1
  br i1 %.not29.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %.not30.i = icmp eq i64 %.val, 0
  br i1 %.not30.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.1.i = phi i64 [ %i.j, %.preheader.i ], [ %i.i, %bb.f ]
  %.sroa.01.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val, %bb.f ]
  %i.j = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.k = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.g, %bb.e
  %.2.i = phi i64 [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.j, %.preheader.i ]
  %.sroa.01.1.i = phi i64 [ %.val, %bb.e ], [ 0, %bb.g ], [ %i.k, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.2.i, ptr %i.m, align 8, !tbaa !20
  br label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %bb.c, %bb.d, %.loopexit.i
  %.sroa.01.2.i = phi i64 [ %.val, %bb.c ], [ %.val, %bb.d ], [ %.sroa.01.1.i, %.loopexit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.r = call fastcc i64 @floatXToF64(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_extF80M_to_f128M(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %.val = load i64, ptr %0, align 8, !tbaa !32    ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val2 = load i16, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i16 %.val2, 15
  %i.e = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = and i16 %.val2, 32767                    ; 2 uses
  %i.g = icmp eq i16 %i.f, 32767
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.val, 9223372036854775807
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %extF80MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.f, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.i = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val, -1
  br i1 %.not29.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %.not30.i = icmp eq i64 %.val, 0
  br i1 %.not30.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.1.i = phi i64 [ %i.j, %.preheader.i ], [ %i.i, %bb.f ]
  %.sroa.01.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val, %bb.f ]
  %i.j = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.k = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.g, %bb.e
  %.2.i = phi i64 [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.j, %.preheader.i ]
  %.sroa.01.1.i = phi i64 [ %.val, %bb.e ], [ 0, %bb.g ], [ %i.k, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.2.i, ptr %i.m, align 8, !tbaa !20
  br label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %bb.c, %bb.d, %.loopexit.i
  %.sroa.01.2.i = phi i64 [ %.val, %bb.c ], [ %.val, %bb.d ], [ %.sroa.01.1.i, %.loopexit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  call fastcc void @floatXToF128M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_extF80M_roundToInt(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.val = load i64, ptr %0, align 8, !tbaa !32    ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val3 = load i16, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  store i8 0, ptr %4, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 3
  %.lobit.i = lshr i16 %.val3, 15
  %i.e = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = and i16 %.val3, 32767                    ; 2 uses
  %i.g = icmp eq i16 %i.f, 32767
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.val, 9223372036854775807
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %4, align 8, !tbaa !16
  br label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %extF80MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.f, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.i = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val, -1
  br i1 %.not29.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %.not30.i = icmp eq i64 %.val, 0
  br i1 %.not30.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
end_hunk_5
begin_hunk_6_@slow_f128M_to_i64_r_minMag:bb.a
  store i64 %i.m, ptr %i.r, align 8, !tbaa !20
  br label %f128MToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.s = add nsw i64 %i.g, -16383
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = or disjoint i64 %i.h, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.sroa.08.1.i = phi i64 [ %.val, %bb.c ], [ 0, %bb.d ], [ %.val, %bb.h ], [ %i.o, %bb.g ], [ 0, %bb.f ]
  %.sroa.8.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.z = call fastcc i64 @floatXToI64(ptr noundef %2, i8 noundef zeroext 1, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.z
}

; Function Attrs: nounwind uwtable
define dso_local i16 @slow_f128M_to_f16(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %.val = load i64, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i64 %.val1, 63
  %i.e = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %.val1, 48
  %i.g = and i64 %i.f, 32767                      ; 2 uses
  %i.h = and i64 %.val1, 281474976710655          ; 5 uses
  switch i64 %i.g, label %bb.h [
    i64 32767, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp ne i64 %.val, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ne i64 %i.h, 0
  %i.l = icmp ne i64 %.val, 0
  %or.cond5.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond5.i, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.o, %.preheader.i ], [ %.val, %bb.e ]
  %.sroa.8.0.i = phi i64 [ %i.p, %.preheader.i ], [ %i.h, %bb.e ]
  %.0.i = phi i64 [ %i.m, %.preheader.i ], [ -16382, %bb.e ]
  %i.m = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.n = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 3 uses
  %i.q = icmp ult i64 %i.p, 281474976710656
  br i1 %i.q, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.r, align 8, !tbaa !20
  br label %f128MToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.s = add nsw i64 %i.g, -16383
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = or disjoint i64 %i.h, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.sroa.08.1.i = phi i64 [ %.val, %bb.c ], [ 0, %bb.d ], [ %.val, %bb.h ], [ %i.o, %bb.g ], [ 0, %bb.f ]
  %.sroa.8.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.z = call fastcc i16 @floatXToF16(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i16 %i.z
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slow_f128M_to_f32(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %.val = load i64, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i64 %.val1, 63
  %i.e = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %.val1, 48
  %i.g = and i64 %i.f, 32767                      ; 2 uses
  %i.h = and i64 %.val1, 281474976710655          ; 5 uses
  switch i64 %i.g, label %bb.h [
    i64 32767, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp ne i64 %.val, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ne i64 %i.h, 0
  %i.l = icmp ne i64 %.val, 0
  %or.cond5.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond5.i, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.o, %.preheader.i ], [ %.val, %bb.e ]
  %.sroa.8.0.i = phi i64 [ %i.p, %.preheader.i ], [ %i.h, %bb.e ]
  %.0.i = phi i64 [ %i.m, %.preheader.i ], [ -16382, %bb.e ]
  %i.m = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.n = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 3 uses
  %i.q = icmp ult i64 %i.p, 281474976710656
  br i1 %i.q, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.r, align 8, !tbaa !20
  br label %f128MToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.s = add nsw i64 %i.g, -16383
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = or disjoint i64 %i.h, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.sroa.08.1.i = phi i64 [ %.val, %bb.c ], [ 0, %bb.d ], [ %.val, %bb.h ], [ %i.o, %bb.g ], [ 0, %bb.f ]
  %.sroa.8.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.z = call fastcc i32 @floatXToF32(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %i.z
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -4503599627370495) i64 @slow_f128M_to_f64(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %.val = load i64, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.lobit.i = lshr i64 %.val1, 63
  %i.e = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %.val1, 48
  %i.g = and i64 %i.f, 32767                      ; 2 uses
  %i.h = and i64 %.val1, 281474976710655          ; 5 uses
  switch i64 %i.g, label %bb.h [
    i64 32767, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp ne i64 %.val, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 8, !tbaa !16
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ne i64 %i.h, 0
  %i.l = icmp ne i64 %.val, 0
  %or.cond5.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond5.i, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.o, %.preheader.i ], [ %.val, %bb.e ]
  %.sroa.8.0.i = phi i64 [ %i.p, %.preheader.i ], [ %i.h, %bb.e ]
  %.0.i = phi i64 [ %i.m, %.preheader.i ], [ -16382, %bb.e ]
  %i.m = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.n = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 3 uses
  %i.q = icmp ult i64 %i.p, 281474976710656
  br i1 %i.q, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.r, align 8, !tbaa !20
  br label %f128MToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.s = add nsw i64 %i.g, -16383
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = or disjoint i64 %i.h, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.sroa.08.1.i = phi i64 [ %.val, %bb.c ], [ 0, %bb.d ], [ %.val, %bb.h ], [ %i.o, %bb.g ], [ 0, %bb.f ]
  %.sroa.8.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.z = call fastcc i64 @floatXToF64(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.z
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f128M_to_extF80M(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %.val = load i64, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i64 %.val2, 63
  %i.e = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %.val2, 48
  %i.g = and i64 %i.f, 32767                      ; 2 uses
  %i.h = and i64 %.val2, 281474976710655          ; 5 uses
  switch i64 %i.g, label %bb.h [
    i64 32767, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp ne i64 %.val, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ne i64 %i.h, 0
  %i.l = icmp ne i64 %.val, 0
  %or.cond5.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond5.i, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.o, %.preheader.i ], [ %.val, %bb.e ]
  %.sroa.8.0.i = phi i64 [ %i.p, %.preheader.i ], [ %i.h, %bb.e ]
  %.0.i = phi i64 [ %i.m, %.preheader.i ], [ -16382, %bb.e ]
  %i.m = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.n = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 3 uses
  %i.q = icmp ult i64 %i.p, 281474976710656
  br i1 %i.q, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.m, ptr %i.r, align 8, !tbaa !20
  br label %f128MToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.s = add nsw i64 %i.g, -16383
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = or disjoint i64 %i.h, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.sroa.08.1.i = phi i64 [ %.val, %bb.c ], [ 0, %bb.d ], [ %.val, %bb.h ], [ %i.o, %bb.g ], [ 0, %bb.f ]
  %.sroa.8.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  call fastcc void @floatXToExtF80M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f128M_roundToInt(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.floatX, align 8             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.val = load i64, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  store i8 0, ptr %4, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 3
  %.lobit.i = lshr i64 %.val3, 63
  %i.e = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %.val3, 48
  %i.g = and i64 %i.f, 32767                      ; 2 uses
  %i.h = and i64 %.val3, 281474976710655          ; 5 uses
  switch i64 %i.g, label %bb.h [
    i64 32767, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp ne i64 %.val, 0
end_hunk_6
