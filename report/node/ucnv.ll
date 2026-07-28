inline.NumInlined: 68
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL30ucnv_outputOverflowFromUnicodeP10UConverterPPcPKcPPiP10UErrorCode:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.037 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 91 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1               ; 3 uses
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i8 %i.g to i64     ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 7 uses
  %.03648 = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ag, %bb.h ] ; 4 uses
  %.13847 = phi ptr [ %.037, %.lr.ph.preheader ], [ %.2, %bb.h ] ; 5 uses
  %i.i = icmp eq ptr %.03648, %2
  br i1 %i.i, label %iter.check, label %bb.f

iter.check:                                       ; preds = %.lr.ph
  %i.j = zext nneg i8 %i.g to i64
  %i.k = sub i64 %i.a, %i.c
  %i.l = add nsw i64 %wide.trip.count, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l)
  %i.m = sub i64 %wide.trip.count, %umin          ; 7 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check70 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.m, 24
  %n.vec = and i64 %i.m, -32                      ; 6 uses
  %i.n = add i64 %indvars.iv, %n.vec
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1
  %wide.load71 = load <16 x i8>, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <16 x i8> %wide.load, ptr %i.r, align 1
  store <16 x i8> %wide.load71, ptr %i.s, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.m, -8                     ; 5 uses
  %i.u = add i64 %indvars.iv, %n.vec73
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %index74
  %wide.load75 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 %index74
  store <8 x i8> %wide.load75, ptr %i.x, align 1
  %index.next76 = add nuw i64 %index74, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %i.m, %n.vec73
  br i1 %cmp.n77, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv59.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec73, %vec.epilog.middle.block ]
  %indvars.iv57.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %vec.epilog.scalar.ph ], [ %indvars.iv59.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %vec.epilog.scalar.ph ], [ %indvars.iv57.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv57
  %i.aa = load i8, ptr %i.z, align 1
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv59
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = icmp samesign ult i64 %indvars.iv.next58, %i.j
  br i1 %i.ac, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next60.lcssa = phi i64 [ %n.vec73, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next60, %vec.epilog.scalar.ph ]
  %i.ad = trunc i64 %indvars.iv.next60.lcssa to i8
  store i8 %i.ad, ptr %i.f, align 1
  store ptr %.03648, ptr %1, align 8
  %.not43 = icmp eq ptr %.13847, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  store ptr %.13847, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  store i32 15, ptr %4, align 4
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.03648, i64 1 ; 2 uses
  store i8 %i.af, ptr %.03648, align 1
  %.not42 = icmp eq ptr %.13847, null
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.13847, i64 4
  store i32 -1, ptr %.13847, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi ptr [ %i.ah, %bb.g ], [ null, %bb.f ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.138.lcssa = phi ptr [ %.037, %bb.c ], [ %.2, %bb.h ] ; 2 uses
  %.036.lcssa = phi ptr [ %i.b, %bb.c ], [ %i.ag, %bb.h ]
  store i8 0, ptr %i.f, align 1
  store ptr %.036.lcssa, ptr %1, align 8
  %.not41 = icmp eq ptr %.138.lcssa, null
  br i1 %.not41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store ptr %.138.lcssa, ptr %3, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i, %bb.e
  %.034 = phi i8 [ 1, %bb.e ], [ 0, %bb.i ], [ 0, %._crit_edge ]
  ret i8 %.034
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL24_fromUnicodeWithCallbackP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [19 x i16], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %i.j, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.0152.ph = phi i32 [ 0, %bb.a ], [ -1, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0152 = phi i32 [ 0, %bb.b ], [ %.0152.ph, %.sink.split ] ; 2 uses
  %.0 = phi ptr [ %i.p, %bb.b ], [ %i.s, %.sink.split ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 281 ; 8 uses
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  %.neg = mul nsw i64 %i.w, 4294967294
  %2 = and i64 %.neg, 4294967294
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 4 %i.ab, i64 %2, i1 false)
  store ptr %i.a, ptr %i.d, align 8
  %i.ac = load i8, ptr %i.t, align 1
  %i.ad = sext i8 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ae
  store ptr %i.af, ptr %i.x, align 8
  store i8 0, ptr %i.z, align 2
  store i8 0, ptr %i.t, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1153 = phi i32 [ -1, %bb.d ], [ %.0152, %bb.c ]
  %.0143 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ]
  %.0139 = phi ptr [ %i.y, %bb.d ], [ null, %bb.c ]
  %.0135 = phi i32 [ %.0152, %bb.d ], [ 0, %bb.c ]
  %.0131 = phi i8 [ %i.aa, %bb.d ], [ 0, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 212 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 140 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 142
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.e
  %.2154 = phi i32 [ %.1153, %bb.e ], [ %.2154.be, %.loopexit.backedge ]
  %.1144 = phi ptr [ %.0143, %bb.e ], [ %.1144.be, %.loopexit.backedge ]
  %.1140 = phi ptr [ %.0139, %bb.e ], [ %.3142, %.loopexit.backedge ]
  %.1136 = phi i32 [ %.0135, %bb.e ], [ %.3138, %.loopexit.backedge ]
  %.1132 = phi i8 [ %.0131, %bb.e ], [ %.3134, %.loopexit.backedge ]
  %.0129 = phi ptr [ %i.i, %bb.e ], [ %.3, %.loopexit.backedge ]
  %.0126 = phi ptr [ %i.g, %bb.e ], [ %i.ek, %.loopexit.backedge ]
  %.0125 = phi ptr [ %i.e, %bb.e ], [ %i.ej, %.loopexit.backedge ]
  %i.ao = load i32, ptr %1, align 4
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.loopexit
  call void %.0(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %i.aq = load i32, ptr %1, align 4
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i8, ptr %i.ag, align 2
  %.not166 = icmp eq i8 %i.as, 0
  br i1 %.not166, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = load ptr, ptr %i.ah, align 8
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.ai, align 4
  %i.ax = icmp ne i32 %i.aw, 0
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.f, %bb.g, %bb.h, %bb.i
  %.0149 = phi i1 [ %i.ax, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %.loopexit ]
  br label %bb.k

bb.k:                                             ; preds = %bb.am, %bb.j
  %.3155 = phi i32 [ %.2154, %bb.j ], [ %.6, %bb.am ] ; 6 uses
  %.0150 = phi i32 [ 0, %bb.j ], [ %.1151, %bb.am ]
  %.not175.not = phi i1 [ false, %bb.j ], [ true, %bb.am ]
  %.2145 = phi ptr [ %.1144, %bb.j ], [ %.3146, %bb.am ] ; 3 uses
  %.2141 = phi ptr [ %.1140, %bb.j ], [ %.3142, %bb.am ] ; 2 uses
  %.2137 = phi i32 [ %.1136, %bb.j ], [ %.3138, %bb.am ] ; 2 uses
  %.2133 = phi i8 [ %.1132, %bb.j ], [ %.3134, %bb.am ] ; 2 uses
  %.1130 = phi ptr [ %.0129, %bb.j ], [ %.3, %bb.am ] ; 16 uses
  %.1127 = phi ptr [ %.0126, %bb.j ], [ %i.ek, %bb.am ]
  %.1 = phi ptr [ %.0125, %bb.j ], [ %i.ej, %bb.am ]
  %.not167 = icmp eq ptr %.1130, null
  br i1 %.not167, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr %i.f, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %.1127 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.be = icmp sgt i32 %.3155, -1
  %i.bf = sub nsw i32 %.3155, %.0150
  %.017.i = select i1 %i.be, i32 %i.bf, i32 -1    ; 11 uses
  %i.bg = shl i64 %i.bb, 2
  %.idx.i = and i64 %i.bg, 8589934588             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1130, i64 %.idx.i
  %i.bi = icmp eq i32 %.017.i, 0
  br i1 %i.bi, label %_ZL14_updateOffsetsPiiii.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = ptrtoaddr ptr %.1130 to i64             ; 3 uses
  %i.bk = icmp sgt i32 %.017.i, 0
  %i.bl = add i64 %.idx.i, %i.bj
  %i.bm = add i64 %i.bj, 4
  %i.bn = call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.bm)
  %i.bo = xor i64 %i.bj, -1
  %i.bp = add i64 %i.bn, %i.bo                    ; 3 uses
  br i1 %i.bk, label %.lr.ph24.i.preheader, label %.lr.ph.preheader.i

.lr.ph24.i.preheader:                             ; preds = %bb.n
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 28
  br i1 %min.iters.check, label %.lr.ph24.i.preheader363, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph24.i.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.bs = shl i64 %n.vec, 2
  %i.bt = getelementptr i8, ptr %.1130, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue362, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue362 ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.1130, i64 %i.bu ; 3 uses
  %i.bv = getelementptr i8, ptr %.1130, i64 %i.bu
  %next.gep341 = getelementptr i8, ptr %i.bv, i64 4
  %i.bw = getelementptr i8, ptr %.1130, i64 %i.bu
  %next.gep342 = getelementptr i8, ptr %i.bw, i64 8
  %i.bx = getelementptr i8, ptr %.1130, i64 %i.bu
  %next.gep343 = getelementptr i8, ptr %i.bx, i64 12
  %i.by = getelementptr i8, ptr %.1130, i64 %i.bu
  %next.gep344 = getelementptr i8, ptr %i.by, i64 16
  %i.bz = getelementptr i8, ptr %.1130, i64 %i.bu
  %next.gep345 = getelementptr i8, ptr %i.bz, i64 20
  %i.ca = getelementptr i8, ptr %.1130, i64 %i.bu
  %next.gep346 = getelementptr i8, ptr %i.ca, i64 24
  %i.cb = getelementptr i8, ptr %.1130, i64 %i.bu
  %next.gep347 = getelementptr i8, ptr %i.cb, i64 28
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4 ; 5 uses
  %wide.load348 = load <4 x i32>, ptr %i.cc, align 4 ; 5 uses
  %i.cd = icmp sgt <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.ce = icmp sgt <4 x i32> %wide.load348, splat (i32 -1) ; 4 uses
  %i.cf = extractelement <4 x i1> %i.cd, i64 0
  br i1 %i.cf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cg = extractelement <4 x i32> %wide.load, i64 0
  %i.ch = add nuw nsw i32 %i.cg, %.017.i
  store i32 %i.ch, ptr %next.gep, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ci = extractelement <4 x i1> %i.cd, i64 1
  br i1 %i.ci, label %pred.store.if349, label %pred.store.continue350

pred.store.if349:                                 ; preds = %pred.store.continue
  %i.cj = extractelement <4 x i32> %wide.load, i64 1
  %i.ck = add nuw nsw i32 %i.cj, %.017.i
  store i32 %i.ck, ptr %next.gep341, align 4
  br label %pred.store.continue350

pred.store.continue350:                           ; preds = %pred.store.if349, %pred.store.continue
  %i.cl = extractelement <4 x i1> %i.cd, i64 2
  br i1 %i.cl, label %pred.store.if351, label %pred.store.continue352

pred.store.if351:                                 ; preds = %pred.store.continue350
  %i.cm = extractelement <4 x i32> %wide.load, i64 2
  %i.cn = add nuw nsw i32 %i.cm, %.017.i
  store i32 %i.cn, ptr %next.gep342, align 4
  br label %pred.store.continue352

pred.store.continue352:                           ; preds = %pred.store.if351, %pred.store.continue350
  %i.co = extractelement <4 x i1> %i.cd, i64 3
  br i1 %i.co, label %pred.store.if353, label %pred.store.continue354

pred.store.if353:                                 ; preds = %pred.store.continue352
  %i.cp = extractelement <4 x i32> %wide.load, i64 3
  %i.cq = add nuw nsw i32 %i.cp, %.017.i
  store i32 %i.cq, ptr %next.gep343, align 4
  br label %pred.store.continue354

pred.store.continue354:                           ; preds = %pred.store.if353, %pred.store.continue352
  %i.cr = extractelement <4 x i1> %i.ce, i64 0
  br i1 %i.cr, label %pred.store.if355, label %pred.store.continue356

pred.store.if355:                                 ; preds = %pred.store.continue354
  %i.cs = extractelement <4 x i32> %wide.load348, i64 0
  %i.ct = add nuw nsw i32 %i.cs, %.017.i
  store i32 %i.ct, ptr %next.gep344, align 4
  br label %pred.store.continue356

pred.store.continue356:                           ; preds = %pred.store.if355, %pred.store.continue354
  %i.cu = extractelement <4 x i1> %i.ce, i64 1
  br i1 %i.cu, label %pred.store.if357, label %pred.store.continue358

pred.store.if357:                                 ; preds = %pred.store.continue356
  %i.cv = extractelement <4 x i32> %wide.load348, i64 1
  %i.cw = add nuw nsw i32 %i.cv, %.017.i
  store i32 %i.cw, ptr %next.gep345, align 4
  br label %pred.store.continue358

pred.store.continue358:                           ; preds = %pred.store.if357, %pred.store.continue356
  %i.cx = extractelement <4 x i1> %i.ce, i64 2
  br i1 %i.cx, label %pred.store.if359, label %pred.store.continue360

pred.store.if359:                                 ; preds = %pred.store.continue358
  %i.cy = extractelement <4 x i32> %wide.load348, i64 2
  %i.cz = add nuw nsw i32 %i.cy, %.017.i
  store i32 %i.cz, ptr %next.gep346, align 4
  br label %pred.store.continue360

pred.store.continue360:                           ; preds = %pred.store.if359, %pred.store.continue358
  %i.da = extractelement <4 x i1> %i.ce, i64 3
  br i1 %i.da, label %pred.store.if361, label %pred.store.continue362

pred.store.if361:                                 ; preds = %pred.store.continue360
  %i.db = extractelement <4 x i32> %wide.load348, i64 3
  %i.dc = add nuw nsw i32 %i.db, %.017.i
  store i32 %i.dc, ptr %next.gep347, align 4
  br label %pred.store.continue362

pred.store.continue362:                           ; preds = %pred.store.if361, %pred.store.continue360
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %pred.store.continue362
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZL14_updateOffsetsPiiii.exit, label %.lr.ph24.i.preheader363

.lr.ph24.i.preheader363:                          ; preds = %.lr.ph24.i.preheader, %middle.block
  %.023.i.ph = phi ptr [ %.1130, %.lr.ph24.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph24.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.de = and i64 %i.bp, -4
  %i.df = add i64 %i.de, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.1130, i8 -1, i64 %i.df, i1 false)
  br label %_ZL14_updateOffsetsPiiii.exit

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.preheader363, %bb.p
  %.023.i = phi ptr [ %i.dj, %bb.p ], [ %.023.i.ph, %.lr.ph24.i.preheader363 ] ; 3 uses
  %i.dg = load i32, ptr %.023.i, align 4          ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, -1
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph24.i
  %i.di = add nuw nsw i32 %i.dg, %.017.i
  store i32 %i.di, ptr %.023.i, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph24.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.bh
  br i1 %i.dk, label %.lr.ph24.i, label %_ZL14_updateOffsetsPiiii.exit, !llvm.loop !19

_ZL14_updateOffsetsPiiii.exit:                    ; preds = %bb.p, %middle.block, %bb.m, %.lr.ph.preheader.i
  %i.dl = and i64 %i.bb, 2147483647
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.1130, i64 %i.dl ; 2 uses
  store ptr %i.dm, ptr %i.h, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZL14_updateOffsetsPiiii.exit, %bb.l
  %.2 = phi ptr [ %i.dm, %_ZL14_updateOffsetsPiiii.exit ], [ %.1130, %bb.l ] ; 2 uses
  %i.dn = icmp sgt i32 %.3155, -1
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.do = load ptr, ptr %i.d, align 8
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %.1 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 1
  %i.dt = trunc i64 %i.ds to i32
  %i.du = add nsw i32 %.3155, %i.dt
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.k
  %.5 = phi i32 [ %.3155, %bb.k ], [ %i.du, %bb.r ], [ %.3155, %bb.q ] ; 4 uses
  %.3 = phi ptr [ null, %bb.k ], [ %.2, %bb.r ], [ %.2, %bb.q ] ; 2 uses
  %i.dv = load i8, ptr %i.t, align 1              ; 2 uses
  %i.dw = sext i8 %i.dv to i64
  %i.dx = icmp slt i8 %i.dv, 0
  br i1 %i.dx, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.dy = icmp eq ptr %.2145, null
  br i1 %i.dy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dz = load ptr, ptr %i.d, align 8
  %i.ea = load ptr, ptr %i.ah, align 8
  %i.eb = load i8, ptr %i.ag, align 2
  %.neg168 = mul nsw i64 %i.dw, 4294967294
  %3 = and i64 %.neg168, 4294967294
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 4 %i.aj, i64 %3, i1 false)
  store ptr %i.a, ptr %i.d, align 8
  %i.ec = load i8, ptr %i.t, align 1
  %i.ed = sext i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ee
  store ptr %i.ef, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 2
  %i.eg = load i8, ptr %i.t, align 1
  %i.eh = sext i8 %i.eg to i32
  %i.ei = add nsw i32 %.5, %i.eh
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ei, i32 -1)
  store i8 0, ptr %i.t, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i32 5, ptr %1, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s
  %.6 = phi i32 [ %spec.store.select, %bb.u ], [ %.5, %bb.v ], [ %.5, %bb.s ] ; 3 uses
  %.3146 = phi ptr [ %i.dz, %bb.u ], [ %.2145, %bb.v ], [ %.2145, %bb.s ] ; 6 uses
  %.3142 = phi ptr [ %i.ea, %bb.u ], [ %.2141, %bb.v ], [ %.2141, %bb.s ] ; 4 uses
  %.3138 = phi i32 [ %.5, %bb.u ], [ %.2137, %bb.v ], [ %.2137, %bb.s ] ; 3 uses
  %.3134 = phi i8 [ %i.eb, %bb.u ], [ %.2133, %bb.v ], [ %.2133, %bb.s ] ; 4 uses
  %i.ej = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ek = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.el = load i32, ptr %1, align 4               ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %i.ah, align 8
  %i.eo = icmp ult ptr %i.ej, %i.en
  br i1 %i.eo, label %.loopexit.backedge, label %bb.y, !llvm.loop !20

bb.y:                                             ; preds = %bb.x
  %.not170 = icmp eq ptr %.3146, null
  br i1 %.not170, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %.3146, ptr %i.d, align 8
  store ptr %.3142, ptr %i.ah, align 8
  store i8 %.3134, ptr %i.ag, align 2
  br label %.loopexit.backedge

bb.aa:                                            ; preds = %bb.y
  %i.ep = load i8, ptr %i.ag, align 2
  %.not171 = icmp eq i8 %i.ep, 0
  br i1 %.not171, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load i32, ptr %i.ai, align 4
  %.not172 = icmp eq i32 %i.eq, 0
  br i1 %.not172, label %bb.ac, label %.thread

.thread:                                          ; preds = %bb.ab
  store i32 11, ptr %1, align 4
  br label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  br i1 %.0149, label %.loopexit.backedge, label %bb.ad

.loopexit.backedge:                               ; preds = %bb.x, %bb.ac, %bb.z
  %.2154.be = phi i32 [ %.6, %bb.ac ], [ %.3138, %bb.z ], [ %.6, %bb.x ]
  %.1144.be = phi ptr [ null, %bb.ac ], [ null, %bb.z ], [ %.3146, %bb.x ]
  br label %.loopexit, !llvm.loop !20

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @_ZL6_resetP10UConverter21UConverterResetChoicea(ptr noundef nonnull %i.c, i32 noundef 2, i8 noundef signext 0)
  br label %.critedge

bb.ae:                                            ; preds = %bb.w
  %i.er = add nsw i32 %i.el, -13
  %or.cond3 = icmp ult i32 %i.er, -3
  %or.cond = select i1 %.not175.not, i1 true, i1 %or.cond3
  br i1 %or.cond, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %.not176 = icmp eq ptr %.3146, null
  br i1 %.not176, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = load ptr, ptr %i.ah, align 8
  %i.et = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 1                 ; 2 uses
  %i.ey = trunc i64 %i.ex to i32                  ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fa = call ptr @u_memcpy_78(ptr noundef nonnull %i.aj, ptr noundef %i.et, i32 noundef %i.ey) #14 ; 0 uses
  %i.fb = trunc i64 %i.ex to i8
  %i.fc = sub i8 0, %i.fb
  store i8 %i.fc, ptr %i.t, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr %.3146, ptr %i.d, align 8
  store ptr %.3142, ptr %i.ah, align 8
  store i8 %.3134, ptr %i.ag, align 2
  br label %.critedge

bb.aj:                                            ; preds = %bb.ae, %.thread
  %i.fd = load i32, ptr %i.ai, align 4            ; 5 uses
  %i.fe = icmp ult i32 %i.fd, 65536
  br i1 %i.fe, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ff = trunc nuw i32 %i.fd to i16
  store i16 %i.ff, ptr %i.ak, align 4
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fg = lshr i32 %i.fd, 10
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = add i16 %i.fh, -10304
  store i16 %i.fi, ptr %i.ak, align 4
  %i.fj = trunc i32 %i.fd to i16
  %i.fk = and i16 %i.fj, 1023
  %i.fl = or disjoint i16 %i.fk, -9216
  store i16 %i.fl, ptr %i.al, align 2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1151 = phi i32 [ 1, %bb.ak ], [ 2, %bb.al ]   ; 3 uses
  %i.fm = trunc nuw nsw i32 %.1151 to i8
  store i8 %i.fm, ptr %i.am, align 4
  store i32 0, ptr %i.ai, align 4
  %i.fn = load ptr, ptr %i.c, align 8
  %i.fo = load ptr, ptr %i.an, align 8
  %i.fp = load i32, ptr %1, align 4
  %i.fq = icmp ne i32 %i.fp, 10
  %i.fr = zext i1 %i.fq to i32
  call void %i.fn(ptr noundef %i.fo, ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i32 noundef %.1151, i32 noundef %i.fd, i32 noundef %i.fr, ptr noundef nonnull %1) #14
  br label %bb.k, !llvm.loop !21

.critedge:                                        ; preds = %bb.aa, %bb.af, %bb.ai, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_toUnicode_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, i8 noundef signext %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %struct.UConverterToUnicodeArgs, align 8 ; 11 uses
  store ptr %5, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.b = icmp eq ptr %7, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %7, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.f
  %i.g = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.g
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %7, align 4
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %3, align 8                ; 5 uses
  %i.i = load ptr, ptr %1, align 8                ; 3 uses
  %i.j = ptrtoint ptr %2 to i64
  %i.k = add i64 %i.j, 2147483647
  %i.l = icmp ult ptr %2, inttoptr (i64 -2147483647 to ptr)
  %i.m = inttoptr i64 %i.k to ptr
  %i.n = select i1 %i.l, ptr %i.m, ptr inttoptr (i64 -1 to ptr)
  %i.o = icmp eq ptr %i.n, %2
  %spec.select.idx = sext i1 %i.o to i64
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.idx ; 5 uses
  %i.p = icmp ult ptr %4, %i.h
  %i.q = icmp ult ptr %spec.select, %i.i
  %or.cond59 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond59, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = ptrtoint ptr %4 to i64
  %i.s = ptrtoint ptr %i.h to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ugt i64 %i.t, 2147483647
  %i.v = icmp ugt ptr %4, %i.h
  %or.cond60 = and i1 %i.v, %i.u
  br i1 %or.cond60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = ptrtoint ptr %spec.select to i64
  %i.x = ptrtoint ptr %i.i to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
end_hunk_0
