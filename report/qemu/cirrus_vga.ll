Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cirrus_vga?download=true
inline.NumInlined: 1324
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 80
begin_hunk_0_@cirrus_colorexpand_transp_notsrc_and_notdst_24:bb.a
  %.not50.us = icmp eq i32 %i.at, 0
  br i1 %.not50.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val54.us = load ptr, ptr %i.o, align 8
  %.val55.us = load i32, ptr %i.p, align 16
  %i.au = and i32 %.val55.us, %.04664.us
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.val54.us, i64 %i.av ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1
  %.demorgan5.i.us = or i8 %i.ax, %i.r
  %i.ay = xor i8 %.demorgan5.i.us, -1
  store i8 %i.ay, ptr %i.aw, align 1
  %i.az = add i32 %.04664.us, 1
  %.val52.us = load ptr, ptr %i.o, align 8
  %.val53.us = load i32, ptr %i.p, align 16
  %i.ba = and i32 %.val53.us, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.val52.us, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %.demorgan5.i61.us = or i8 %i.bd, %i.t
  %i.be = xor i8 %.demorgan5.i61.us, -1
  store i8 %i.be, ptr %i.bc, align 1
  %i.bf = add i32 %.04664.us, 2
  %.val.us = load ptr, ptr %i.o, align 8
  %.val51.us = load i32, ptr %i.p, align 16
  %i.bg = and i32 %.val51.us, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  %.demorgan5.i62.us = or i8 %i.bj, %i.v
  %i.bk = xor i8 %.demorgan5.i62.us, -1
  store i8 %i.bk, ptr %i.bi, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bl = add i32 %.04664.us, 3
  %i.bm = lshr i32 %.1.us, 1
  %i.bn = add i32 %.04565.us, 3                   ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %5
  br i1 %i.bo, label %bb.d, label %._crit_edge.us, !llvm.loop !256

._crit_edge.us:                                   ; preds = %bb.j
  %i.bp = add i32 %.04769.us, %3
  %i.bq = add nuw nsw i32 %.04470.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %6
  br i1 %exitcond.not, label %._crit_edge73, label %.lr.ph72.split.us, !llvm.loop !257

._crit_edge73:                                    ; preds = %._crit_edge.us, %.lr.ph72, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_transp_notsrc_and_notdst_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 2                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 70709
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 2
  %.not = icmp eq i8 %i.h, 0                      ; 2 uses
  %.034 = select i1 %.not, i32 0, i32 255         ; 2 uses
  %.033.in.v = select i1 %.not, i64 70692, i64 70696
  %.033.in = getelementptr inbounds nuw i8, ptr %0, i64 %.033.in.v
  %.033 = load i32, ptr %.033.in, align 4
  %i.i = icmp sgt i32 %6, 0
  br i1 %i.i, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.a
  %i.j = lshr exact i32 128, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78928 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 70720 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  %i.o = icmp slt i32 %i.e, %5
  br i1 %i.o, label %.lr.ph59.split.us, label %._crit_edge60

.lr.ph59.split.us:                                ; preds = %.lr.ph59, %._crit_edge.us
  %.03757.us = phi i32 [ %i.ax, %._crit_edge.us ], [ 0, %.lr.ph59 ]
  %.04056.us = phi i32 [ %i.aw, %._crit_edge.us ], [ %1, %.lr.ph59 ] ; 2 uses
  %.04155.us = phi i32 [ %.2.us, %._crit_edge.us ], [ %2, %.lr.ph59 ] ; 3 uses
  %i.p = add i32 %.04155.us, 1
  %i.q = load i32, ptr %i.k, align 16
  %.not.i.us = icmp eq i32 %i.q, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph59.split.us
  %i.r = and i32 %.04155.us, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph59.split.us
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = load i32, ptr %i.n, align 16
  %i.u = and i32 %i.t, %.04155.us
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.u, %bb.c ], [ %i.r, %bb.b ]
  %.sink.i.us = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %i.v = zext i32 %.sink7.i.us to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.v
  %.0.i.us = load i8, ptr %i.w, align 1
  %i.x = zext i8 %.0.i.us to i32
  %i.y = xor i32 %.034, %i.x
  %i.z = add i32 %.04056.us, %i.e
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.j
  %.054.us = phi i32 [ %i.j, %cirrus_src.exit.us ], [ %i.at, %bb.j ] ; 2 uses
  %.03553.us = phi i32 [ %i.y, %cirrus_src.exit.us ], [ %.136.us, %bb.j ]
  %.03852.us = phi i32 [ %i.e, %cirrus_src.exit.us ], [ %i.au, %bb.j ]
  %.03951.us = phi i32 [ %i.z, %cirrus_src.exit.us ], [ %i.as, %bb.j ] ; 2 uses
  %.14250.us = phi i32 [ %i.p, %cirrus_src.exit.us ], [ %.2.us, %bb.j ] ; 4 uses
  %i.aa = icmp eq i32 %.054.us, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %.14250.us, 1
  %i.ac = load i32, ptr %i.k, align 16
  %.not.i45.us = icmp eq i32 %i.ac, 0
  br i1 %.not.i45.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = and i32 %.14250.us, 8191
  br label %cirrus_src.exit49.us

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.m, align 8
  %i.af = load i32, ptr %i.n, align 16
  %i.ag = and i32 %i.af, %.14250.us
  br label %cirrus_src.exit49.us

cirrus_src.exit49.us:                             ; preds = %bb.g, %bb.f
  %.sink7.i46.us = phi i32 [ %i.ag, %bb.g ], [ %i.ad, %bb.f ]
  %.sink.i47.us = phi ptr [ %i.ae, %bb.g ], [ %i.l, %bb.f ]
  %i.ah = zext i32 %.sink7.i46.us to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i47.us, i64 %i.ah
  %.0.i48.us = load i8, ptr %i.ai, align 1
  %i.aj = zext i8 %.0.i48.us to i32
  %i.ak = xor i32 %.034, %i.aj
  br label %bb.h

bb.h:                                             ; preds = %cirrus_src.exit49.us, %bb.d
  %.2.us = phi i32 [ %i.ab, %cirrus_src.exit49.us ], [ %.14250.us, %bb.d ] ; 2 uses
  %.136.us = phi i32 [ %i.ak, %cirrus_src.exit49.us ], [ %.03553.us, %bb.d ] ; 2 uses
  %.1.us = phi i32 [ 128, %cirrus_src.exit49.us ], [ %.054.us, %bb.d ] ; 2 uses
  %i.al = and i32 %.1.us, %.136.us
  %.not43.us = icmp eq i32 %i.al, 0
  br i1 %.not43.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.us = load ptr, ptr %i.m, align 8
  %.val44.us = load i32, ptr %i.n, align 16
  %i.am = and i32 %.03951.us, -4
  %i.an = and i32 %i.am, %.val44.us
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %.demorgan.i.us = or i32 %i.aq, %.033
  %i.ar = xor i32 %.demorgan.i.us, -1
  store i32 %i.ar, ptr %i.ap, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = add i32 %.03951.us, 4
  %i.at = lshr i32 %.1.us, 1
  %i.au = add nuw nsw i32 %.03852.us, 4           ; 2 uses
  %i.av = icmp slt i32 %i.au, %5
  br i1 %i.av, label %bb.d, label %._crit_edge.us, !llvm.loop !258

._crit_edge.us:                                   ; preds = %bb.j
  %i.aw = add i32 %.04056.us, %3
  %i.ax = add nuw nsw i32 %.03757.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %6
  br i1 %exitcond.not, label %._crit_edge60, label %.lr.ph59.split.us, !llvm.loop !259

._crit_edge60:                                    ; preds = %._crit_edge.us, %.lr.ph59, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_0_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 6 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge49.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit.preheader, label %._crit_edge49.split

cirrus_src.exit.preheader:                        ; preds = %cirrus_src.exit.lr.ph
  %i.i = sub i32 %5, %i.d
  %.neg = add nuw nsw i32 %i.d, 1
  %xtraiter = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.j = add nuw nsw i32 %i.d, 1
  %i.k = icmp eq i32 %5, %.neg
  br label %cirrus_src.exit

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.preheader, %._crit_edge
  %.02948 = phi i32 [ %i.aa, %._crit_edge ], [ 0, %cirrus_src.exit.preheader ]
  %.03247 = phi i32 [ %i.z, %._crit_edge ], [ %1, %cirrus_src.exit.preheader ] ; 2 uses
  %i.l = add i32 %.03247, %i.d                    ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %cirrus_src.exit
  %.val.prol = load ptr, ptr %i.g, align 8
  %.val35.prol = load i32, ptr %i.h, align 16
  %i.m = and i32 %.val35.prol, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val.prol, i64 %i.n
  store i8 0, ptr %i.o, align 1
  %i.p = add i32 %i.l, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %cirrus_src.exit
  %.03044.unr = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.j, %.prol.loopexit.unr-lcssa ]
  %.03143.unr = phi i32 [ %i.l, %cirrus_src.exit ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  br i1 %i.k, label %._crit_edge, label %cirrus_src.exit.new

cirrus_src.exit.new:                              ; preds = %.prol.loopexit, %cirrus_src.exit.new
  %.03044 = phi i32 [ %i.y, %cirrus_src.exit.new ], [ %.03044.unr, %.prol.loopexit ]
  %.03143 = phi i32 [ %i.x, %cirrus_src.exit.new ], [ %.03143.unr, %.prol.loopexit ] ; 3 uses
  %.val = load ptr, ptr %i.g, align 8
  %.val35 = load i32, ptr %i.h, align 16
  %i.q = and i32 %.val35, %.03143
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  store i8 0, ptr %i.s, align 1
  %i.t = add i32 %.03143, 1
  %.val.1 = load ptr, ptr %i.g, align 8
  %.val35.1 = load i32, ptr %i.h, align 16
  %i.u = and i32 %.val35.1, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.val.1, i64 %i.v
  store i8 0, ptr %i.w, align 1
  %i.x = add i32 %.03143, 2
  %i.y = add nuw nsw i32 %.03044, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.y, %5
  br i1 %exitcond.not.1, label %._crit_edge, label %cirrus_src.exit.new, !llvm.loop !260

._crit_edge:                                      ; preds = %cirrus_src.exit.new, %.prol.loopexit
  %i.z = add i32 %.03247, %3
  %i.aa = add nuw nsw i32 %.02948, 1              ; 2 uses
  %exitcond50.not = icmp eq i32 %i.aa, %6
  br i1 %exitcond50.not, label %._crit_edge49.split, label %cirrus_src.exit, !llvm.loop !261

._crit_edge49.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_0_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 1
  %i.d = and i8 %i.c, 14
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge49.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge49.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02948 = phi i32 [ %i.s, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03247 = phi i32 [ %i.r, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03247, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03044 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.p, %bb.b ]
  %.03143 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.o, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val35 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03143, -2
  %i.l = and i32 %i.k, %.val35
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  store i16 0, ptr %i.n, align 2
  %i.o = add i32 %.03143, 2
  %i.p = add nuw nsw i32 %.03044, 2               ; 2 uses
  %i.q = icmp slt i32 %i.p, %5
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !262

._crit_edge:                                      ; preds = %bb.b
  %i.r = add i32 %.03247, %3
  %i.s = add nuw nsw i32 %.02948, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %6
  br i1 %exitcond.not, label %._crit_edge49.split, label %cirrus_src.exit, !llvm.loop !263

._crit_edge49.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_0_24(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %narrow = mul nuw nsw i8 %i.c, 3
  %i.d = zext nneg i8 %narrow to i32              ; 3 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge59.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit, label %._crit_edge59.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.03558 = phi i32 [ %i.y, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03857 = phi i32 [ %i.x, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.i = add i32 %.03857, %i.d
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03654 = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.v, %bb.b ]
  %.03753 = phi i32 [ %i.i, %cirrus_src.exit ], [ %i.u, %bb.b ] ; 4 uses
  %.val44 = load ptr, ptr %i.g, align 8
  %.val45 = load i32, ptr %i.h, align 16
  %i.j = and i32 %.val45, %.03753
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val44, i64 %i.k
  store i8 0, ptr %i.l, align 1
  %i.m = add i32 %.03753, 1
  %.val42 = load ptr, ptr %i.g, align 8
  %.val43 = load i32, ptr %i.h, align 16
  %i.n = and i32 %.val43, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.o
  store i8 0, ptr %i.p, align 1
  %i.q = add i32 %.03753, 2
  %.val = load ptr, ptr %i.g, align 8
  %.val41 = load i32, ptr %i.h, align 16
  %i.r = and i32 %.val41, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  store i8 0, ptr %i.t, align 1
  %i.u = add i32 %.03753, 3
  %i.v = add i32 %.03654, 3                       ; 2 uses
  %i.w = icmp slt i32 %i.v, %5
  br i1 %i.w, label %bb.b, label %._crit_edge, !llvm.loop !264

._crit_edge:                                      ; preds = %bb.b
  %i.x = add i32 %.03857, %3
  %i.y = add nuw nsw i32 %.03558, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %6
  br i1 %exitcond.not, label %._crit_edge59.split, label %cirrus_src.exit, !llvm.loop !265

._crit_edge59.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_0_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge49.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge49.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02948 = phi i32 [ %i.s, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03247 = phi i32 [ %i.r, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03247, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03044 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.p, %bb.b ]
  %.03143 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.o, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val35 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03143, -4
  %i.l = and i32 %i.k, %.val35
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
end_hunk_0
begin_hunk_1_@cirrus_colorexpand_src_and_notdst_24:bb.a
  %i.ah = zext i32 %.sink7.i47.us to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i48.us, i64 %i.ah
  %.0.i49.us = load i8, ptr %i.ai, align 1
  %i.aj = zext i8 %.0.i49.us to i32
  br label %bb.h

bb.h:                                             ; preds = %cirrus_src.exit50.us, %bb.d
  %.2.us = phi i32 [ %i.ab, %cirrus_src.exit50.us ], [ %.14052.us, %bb.d ] ; 2 uses
  %.134.us = phi i32 [ %i.aj, %cirrus_src.exit50.us ], [ %.03355.us, %bb.d ] ; 2 uses
  %.1.us = phi i32 [ 128, %cirrus_src.exit50.us ], [ %.056.us, %bb.d ] ; 2 uses
  %i.ak = and i32 %.1.us, %.134.us
  %.not.us = icmp eq i32 %i.ak, 0
  %.sroa.speculated.us = select i1 %.not.us, i32 %i.g, i32 %i.i ; 3 uses
  %i.al = trunc i32 %.sroa.speculated.us to i8
  %.val44.us = load ptr, ptr %i.n, align 8
  %.val45.us = load i32, ptr %i.o, align 16
  %i.am = and i32 %.val45.us, %.03753.us
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.val44.us, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = xor i8 %i.ap, -1
  %i.ar = and i8 %i.al, %i.aq
  store i8 %i.ar, ptr %i.ao, align 1
  %i.as = add i32 %.03753.us, 1
  %i.at = lshr i32 %.sroa.speculated.us, 8
  %i.au = trunc i32 %i.at to i8
  %.val42.us = load ptr, ptr %i.n, align 8
  %.val43.us = load i32, ptr %i.o, align 16
  %i.av = and i32 %.val43.us, %i.as
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.val42.us, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = xor i8 %i.ay, -1
  %i.ba = and i8 %i.az, %i.au
  store i8 %i.ba, ptr %i.ax, align 1
  %i.bb = add i32 %.03753.us, 2
  %i.bc = lshr i32 %.sroa.speculated.us, 16
  %i.bd = trunc i32 %i.bc to i8
  %.val.us = load ptr, ptr %i.n, align 8
  %.val41.us = load i32, ptr %i.o, align 16
  %i.be = and i32 %.val41.us, %i.bb
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = xor i8 %i.bh, -1
  %i.bj = and i8 %i.bi, %i.bd
  store i8 %i.bj, ptr %i.bg, align 1
  %i.bk = add i32 %.03753.us, 3
  %i.bl = lshr i32 %.1.us, 1
  %i.bm = add i32 %.03654.us, 3                   ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %5
  br i1 %i.bn, label %bb.d, label %._crit_edge.us, !llvm.loop !280

._crit_edge.us:                                   ; preds = %bb.h
  %i.bo = add i32 %.03858.us, %3
  %i.bp = add nuw nsw i32 %.03559.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %6
  br i1 %exitcond.not, label %._crit_edge62, label %.lr.ph61.split.us, !llvm.loop !281

._crit_edge62:                                    ; preds = %._crit_edge.us, %.lr.ph61, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_src_and_notdst_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 2                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 70696
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 70692
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp sgt i32 %6, 0
  br i1 %i.j, label %.lr.ph51, label %._crit_edge52

.lr.ph51:                                         ; preds = %bb.a
  %i.k = lshr exact i32 128, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 78928 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 70720 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  %i.p = icmp slt i32 %i.e, %5
  br i1 %i.p, label %.lr.ph51.split.us, label %._crit_edge52

.lr.ph51.split.us:                                ; preds = %.lr.ph51, %._crit_edge.us
  %.02949.us = phi i32 [ %i.ax, %._crit_edge.us ], [ 0, %.lr.ph51 ]
  %.03248.us = phi i32 [ %i.aw, %._crit_edge.us ], [ %1, %.lr.ph51 ] ; 2 uses
  %.03347.us = phi i32 [ %.2.us, %._crit_edge.us ], [ %2, %.lr.ph51 ] ; 3 uses
  %i.q = add i32 %.03347.us, 1
  %i.r = load i32, ptr %i.l, align 16
  %.not.i.us = icmp eq i32 %i.r, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph51.split.us
  %i.s = and i32 %.03347.us, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph51.split.us
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = load i32, ptr %i.o, align 16
  %i.v = and i32 %i.u, %.03347.us
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.v, %bb.c ], [ %i.s, %bb.b ]
  %.sink.i.us = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %i.w = zext i32 %.sink7.i.us to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.w
  %.0.i.us = load i8, ptr %i.x, align 1
  %i.y = zext i8 %.0.i.us to i32
  %i.z = add i32 %.03248.us, %i.e
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.h
  %.046.us = phi i32 [ %i.k, %cirrus_src.exit.us ], [ %i.at, %bb.h ] ; 2 uses
  %.02745.us = phi i32 [ %i.y, %cirrus_src.exit.us ], [ %.128.us, %bb.h ]
  %.03044.us = phi i32 [ %i.e, %cirrus_src.exit.us ], [ %i.au, %bb.h ]
  %.03143.us = phi i32 [ %i.z, %cirrus_src.exit.us ], [ %i.as, %bb.h ] ; 2 uses
  %.13442.us = phi i32 [ %i.q, %cirrus_src.exit.us ], [ %.2.us, %bb.h ] ; 4 uses
  %i.aa = icmp eq i32 %.046.us, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %.13442.us, 1
  %i.ac = load i32, ptr %i.l, align 16
  %.not.i36.us = icmp eq i32 %i.ac, 0
  br i1 %.not.i36.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = and i32 %.13442.us, 8191
  br label %cirrus_src.exit40.us

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.n, align 8
  %i.af = load i32, ptr %i.o, align 16
  %i.ag = and i32 %i.af, %.13442.us
  br label %cirrus_src.exit40.us

cirrus_src.exit40.us:                             ; preds = %bb.g, %bb.f
  %.sink7.i37.us = phi i32 [ %i.ag, %bb.g ], [ %i.ad, %bb.f ]
  %.sink.i38.us = phi ptr [ %i.ae, %bb.g ], [ %i.m, %bb.f ]
  %i.ah = zext i32 %.sink7.i37.us to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i38.us, i64 %i.ah
  %.0.i39.us = load i8, ptr %i.ai, align 1
  %i.aj = zext i8 %.0.i39.us to i32
  br label %bb.h

bb.h:                                             ; preds = %cirrus_src.exit40.us, %bb.d
  %.2.us = phi i32 [ %i.ab, %cirrus_src.exit40.us ], [ %.13442.us, %bb.d ] ; 2 uses
  %.128.us = phi i32 [ %i.aj, %cirrus_src.exit40.us ], [ %.02745.us, %bb.d ] ; 2 uses
  %.1.us = phi i32 [ 128, %cirrus_src.exit40.us ], [ %.046.us, %bb.d ] ; 2 uses
  %i.ak = and i32 %.1.us, %.128.us
  %.not.us = icmp eq i32 %i.ak, 0
  %.sroa.speculated.us = select i1 %.not.us, i32 %i.g, i32 %i.i
  %.val.us = load ptr, ptr %i.n, align 8
  %.val35.us = load i32, ptr %i.o, align 16
  %i.al = and i32 %.03143.us, -4
  %i.am = and i32 %i.al, %.val35.us
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %.sroa.speculated.us, %i.aq
  store i32 %i.ar, ptr %i.ao, align 4
  %i.as = add i32 %.03143.us, 4
  %i.at = lshr i32 %.1.us, 1
  %i.au = add nuw nsw i32 %.03044.us, 4           ; 2 uses
  %i.av = icmp slt i32 %i.au, %5
  br i1 %i.av, label %bb.d, label %._crit_edge.us, !llvm.loop !282

._crit_edge.us:                                   ; preds = %bb.h
  %i.aw = add i32 %.03248.us, %3
  %i.ax = add nuw nsw i32 %.02949.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %6
  br i1 %exitcond.not, label %._crit_edge52, label %.lr.ph51.split.us, !llvm.loop !283

._crit_edge52:                                    ; preds = %._crit_edge.us, %.lr.ph51, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_notdst_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 6 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge49.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit.preheader, label %._crit_edge49.split

cirrus_src.exit.preheader:                        ; preds = %cirrus_src.exit.lr.ph
  %i.i = sub i32 %5, %i.d
  %.neg = add nuw nsw i32 %i.d, 1
  %xtraiter = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.j = add nuw nsw i32 %i.d, 1
  %i.k = icmp eq i32 %5, %.neg
  br label %cirrus_src.exit

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.preheader, %._crit_edge
  %.02948 = phi i32 [ %i.ag, %._crit_edge ], [ 0, %cirrus_src.exit.preheader ]
  %.03247 = phi i32 [ %i.af, %._crit_edge ], [ %1, %cirrus_src.exit.preheader ] ; 2 uses
  %i.l = add i32 %.03247, %i.d                    ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %cirrus_src.exit
  %.val.prol = load ptr, ptr %i.g, align 8
  %.val35.prol = load i32, ptr %i.h, align 16
  %i.m = and i32 %.val35.prol, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val.prol, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = xor i8 %i.p, -1
  store i8 %i.q, ptr %i.o, align 1
  %i.r = add i32 %i.l, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %cirrus_src.exit
  %.03044.unr = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.j, %.prol.loopexit.unr-lcssa ]
  %.03143.unr = phi i32 [ %i.l, %cirrus_src.exit ], [ %i.r, %.prol.loopexit.unr-lcssa ]
  br i1 %i.k, label %._crit_edge, label %cirrus_src.exit.new

cirrus_src.exit.new:                              ; preds = %.prol.loopexit, %cirrus_src.exit.new
  %.03044 = phi i32 [ %i.ae, %cirrus_src.exit.new ], [ %.03044.unr, %.prol.loopexit ]
  %.03143 = phi i32 [ %i.ad, %cirrus_src.exit.new ], [ %.03143.unr, %.prol.loopexit ] ; 3 uses
  %.val = load ptr, ptr %i.g, align 8
  %.val35 = load i32, ptr %i.h, align 16
  %i.s = and i32 %.val35, %.03143
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = xor i8 %i.v, -1
  store i8 %i.w, ptr %i.u, align 1
  %i.x = add i32 %.03143, 1
  %.val.1 = load ptr, ptr %i.g, align 8
  %.val35.1 = load i32, ptr %i.h, align 16
  %i.y = and i32 %.val35.1, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.1, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = xor i8 %i.ab, -1
  store i8 %i.ac, ptr %i.aa, align 1
  %i.ad = add i32 %.03143, 2
  %i.ae = add nuw nsw i32 %.03044, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ae, %5
  br i1 %exitcond.not.1, label %._crit_edge, label %cirrus_src.exit.new, !llvm.loop !284

._crit_edge:                                      ; preds = %cirrus_src.exit.new, %.prol.loopexit
  %i.af = add i32 %.03247, %3
  %i.ag = add nuw nsw i32 %.02948, 1              ; 2 uses
  %exitcond50.not = icmp eq i32 %i.ag, %6
  br i1 %exitcond50.not, label %._crit_edge49.split, label %cirrus_src.exit, !llvm.loop !285

._crit_edge49.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_notdst_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 1
  %i.d = and i8 %i.c, 14
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge49.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge49.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02948 = phi i32 [ %i.u, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03247 = phi i32 [ %i.t, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03247, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03044 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.r, %bb.b ]
  %.03143 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.q, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val35 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03143, -2
  %i.l = and i32 %i.k, %.val35
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = xor i16 %i.o, -1
  store i16 %i.p, ptr %i.n, align 2
  %i.q = add i32 %.03143, 2
  %i.r = add nuw nsw i32 %.03044, 2               ; 2 uses
  %i.s = icmp slt i32 %i.r, %5
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !286

._crit_edge:                                      ; preds = %bb.b
  %i.t = add i32 %.03247, %3
  %i.u = add nuw nsw i32 %.02948, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %6
  br i1 %exitcond.not, label %._crit_edge49.split, label %cirrus_src.exit, !llvm.loop !287

._crit_edge49.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_notdst_24(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %narrow = mul nuw nsw i8 %i.c, 3
  %i.d = zext nneg i8 %narrow to i32              ; 3 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge59.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit, label %._crit_edge59.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.03558 = phi i32 [ %i.ae, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03857 = phi i32 [ %i.ad, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.i = add i32 %.03857, %i.d
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03654 = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.ab, %bb.b ]
  %.03753 = phi i32 [ %i.i, %cirrus_src.exit ], [ %i.aa, %bb.b ] ; 4 uses
  %.val44 = load ptr, ptr %i.g, align 8
  %.val45 = load i32, ptr %i.h, align 16
  %i.j = and i32 %.val45, %.03753
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val44, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = xor i8 %i.m, -1
  store i8 %i.n, ptr %i.l, align 1
  %i.o = add i32 %.03753, 1
  %.val42 = load ptr, ptr %i.g, align 8
  %.val43 = load i32, ptr %i.h, align 16
  %i.p = and i32 %.val43, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = xor i8 %i.s, -1
  store i8 %i.t, ptr %i.r, align 1
  %i.u = add i32 %.03753, 2
  %.val = load ptr, ptr %i.g, align 8
  %.val41 = load i32, ptr %i.h, align 16
  %i.v = and i32 %.val41, %i.u
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = xor i8 %i.y, -1
  store i8 %i.z, ptr %i.x, align 1
  %i.aa = add i32 %.03753, 3
  %i.ab = add i32 %.03654, 3                      ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %5
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !288

._crit_edge:                                      ; preds = %bb.b
  %i.ad = add i32 %.03857, %3
  %i.ae = add nuw nsw i32 %.03558, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %6
  br i1 %exitcond.not, label %._crit_edge59.split, label %cirrus_src.exit, !llvm.loop !289

._crit_edge59.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_notdst_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge49.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge49.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
end_hunk_1
begin_hunk_2_@cirrus_colorexpand_src_24:bb.a
  %i.ad = and i32 %.14052.us, 8191
  br label %cirrus_src.exit50.us

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.n, align 8
  %i.af = load i32, ptr %i.o, align 16
  %i.ag = and i32 %i.af, %.14052.us
  br label %cirrus_src.exit50.us

cirrus_src.exit50.us:                             ; preds = %bb.g, %bb.f
  %.sink7.i47.us = phi i32 [ %i.ag, %bb.g ], [ %i.ad, %bb.f ]
  %.sink.i48.us = phi ptr [ %i.ae, %bb.g ], [ %i.m, %bb.f ]
  %i.ah = zext i32 %.sink7.i47.us to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i48.us, i64 %i.ah
  %.0.i49.us = load i8, ptr %i.ai, align 1
  %i.aj = zext i8 %.0.i49.us to i32
  br label %bb.h

bb.h:                                             ; preds = %cirrus_src.exit50.us, %bb.d
  %.2.us = phi i32 [ %i.ab, %cirrus_src.exit50.us ], [ %.14052.us, %bb.d ] ; 2 uses
  %.134.us = phi i32 [ %i.aj, %cirrus_src.exit50.us ], [ %.03355.us, %bb.d ] ; 2 uses
  %.1.us = phi i32 [ 128, %cirrus_src.exit50.us ], [ %.056.us, %bb.d ] ; 2 uses
  %i.ak = and i32 %.1.us, %.134.us
  %.not.us = icmp eq i32 %i.ak, 0
  %.sroa.speculated.us = select i1 %.not.us, i32 %i.g, i32 %i.i ; 3 uses
  %i.al = trunc i32 %.sroa.speculated.us to i8
  %.val44.us = load ptr, ptr %i.n, align 8
  %.val45.us = load i32, ptr %i.o, align 16
  %i.am = and i32 %.val45.us, %.03753.us
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.val44.us, i64 %i.an
  store i8 %i.al, ptr %i.ao, align 1
  %i.ap = add i32 %.03753.us, 1
  %i.aq = lshr i32 %.sroa.speculated.us, 8
  %i.ar = trunc i32 %i.aq to i8
  %.val42.us = load ptr, ptr %i.n, align 8
  %.val43.us = load i32, ptr %i.o, align 16
  %i.as = and i32 %.val43.us, %i.ap
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.val42.us, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1
  %i.av = add i32 %.03753.us, 2
  %i.aw = lshr i32 %.sroa.speculated.us, 16
  %i.ax = trunc i32 %i.aw to i8
  %.val.us = load ptr, ptr %i.n, align 8
  %.val41.us = load i32, ptr %i.o, align 16
  %i.ay = and i32 %.val41.us, %i.av
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.az
  store i8 %i.ax, ptr %i.ba, align 1
  %i.bb = add i32 %.03753.us, 3
  %i.bc = lshr i32 %.1.us, 1
  %i.bd = add i32 %.03654.us, 3                   ; 2 uses
  %i.be = icmp slt i32 %i.bd, %5
  br i1 %i.be, label %bb.d, label %._crit_edge.us, !llvm.loop !296

._crit_edge.us:                                   ; preds = %bb.h
  %i.bf = add i32 %.03858.us, %3
  %i.bg = add nuw nsw i32 %.03559.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %6
  br i1 %exitcond.not, label %._crit_edge62, label %.lr.ph61.split.us, !llvm.loop !297

._crit_edge62:                                    ; preds = %._crit_edge.us, %.lr.ph61, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_src_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 2                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 70696
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 70692
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp sgt i32 %6, 0
  br i1 %i.j, label %.lr.ph51, label %._crit_edge52

.lr.ph51:                                         ; preds = %bb.a
  %i.k = lshr exact i32 128, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 78928 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 70720 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  %i.p = icmp slt i32 %i.e, %5
  br i1 %i.p, label %.lr.ph51.split.us, label %._crit_edge52

.lr.ph51.split.us:                                ; preds = %.lr.ph51, %._crit_edge.us
  %.02949.us = phi i32 [ %i.au, %._crit_edge.us ], [ 0, %.lr.ph51 ]
  %.03248.us = phi i32 [ %i.at, %._crit_edge.us ], [ %1, %.lr.ph51 ] ; 2 uses
  %.03347.us = phi i32 [ %.2.us, %._crit_edge.us ], [ %2, %.lr.ph51 ] ; 3 uses
  %i.q = add i32 %.03347.us, 1
  %i.r = load i32, ptr %i.l, align 16
  %.not.i.us = icmp eq i32 %i.r, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph51.split.us
  %i.s = and i32 %.03347.us, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph51.split.us
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = load i32, ptr %i.o, align 16
  %i.v = and i32 %i.u, %.03347.us
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.v, %bb.c ], [ %i.s, %bb.b ]
  %.sink.i.us = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %i.w = zext i32 %.sink7.i.us to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.w
  %.0.i.us = load i8, ptr %i.x, align 1
  %i.y = zext i8 %.0.i.us to i32
  %i.z = add i32 %.03248.us, %i.e
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.h
  %.046.us = phi i32 [ %i.k, %cirrus_src.exit.us ], [ %i.aq, %bb.h ] ; 2 uses
  %.02745.us = phi i32 [ %i.y, %cirrus_src.exit.us ], [ %.128.us, %bb.h ]
  %.03044.us = phi i32 [ %i.e, %cirrus_src.exit.us ], [ %i.ar, %bb.h ]
  %.03143.us = phi i32 [ %i.z, %cirrus_src.exit.us ], [ %i.ap, %bb.h ] ; 2 uses
  %.13442.us = phi i32 [ %i.q, %cirrus_src.exit.us ], [ %.2.us, %bb.h ] ; 4 uses
  %i.aa = icmp eq i32 %.046.us, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %.13442.us, 1
  %i.ac = load i32, ptr %i.l, align 16
  %.not.i36.us = icmp eq i32 %i.ac, 0
  br i1 %.not.i36.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = and i32 %.13442.us, 8191
  br label %cirrus_src.exit40.us

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.n, align 8
  %i.af = load i32, ptr %i.o, align 16
  %i.ag = and i32 %i.af, %.13442.us
  br label %cirrus_src.exit40.us

cirrus_src.exit40.us:                             ; preds = %bb.g, %bb.f
  %.sink7.i37.us = phi i32 [ %i.ag, %bb.g ], [ %i.ad, %bb.f ]
  %.sink.i38.us = phi ptr [ %i.ae, %bb.g ], [ %i.m, %bb.f ]
  %i.ah = zext i32 %.sink7.i37.us to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i38.us, i64 %i.ah
  %.0.i39.us = load i8, ptr %i.ai, align 1
  %i.aj = zext i8 %.0.i39.us to i32
  br label %bb.h

bb.h:                                             ; preds = %cirrus_src.exit40.us, %bb.d
  %.2.us = phi i32 [ %i.ab, %cirrus_src.exit40.us ], [ %.13442.us, %bb.d ] ; 2 uses
  %.128.us = phi i32 [ %i.aj, %cirrus_src.exit40.us ], [ %.02745.us, %bb.d ] ; 2 uses
  %.1.us = phi i32 [ 128, %cirrus_src.exit40.us ], [ %.046.us, %bb.d ] ; 2 uses
  %i.ak = and i32 %.1.us, %.128.us
  %.not.us = icmp eq i32 %i.ak, 0
  %.sroa.speculated.us = select i1 %.not.us, i32 %i.g, i32 %i.i
  %.val.us = load ptr, ptr %i.n, align 8
  %.val35.us = load i32, ptr %i.o, align 16
  %i.al = and i32 %.03143.us, -4
  %i.am = and i32 %i.al, %.val35.us
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.an
  store i32 %.sroa.speculated.us, ptr %i.ao, align 4
  %i.ap = add i32 %.03143.us, 4
  %i.aq = lshr i32 %.1.us, 1
  %i.ar = add nuw nsw i32 %.03044.us, 4           ; 2 uses
  %i.as = icmp slt i32 %i.ar, %5
  br i1 %i.as, label %bb.d, label %._crit_edge.us, !llvm.loop !298

._crit_edge.us:                                   ; preds = %bb.h
  %i.at = add i32 %.03248.us, %3
  %i.au = add nuw nsw i32 %.02949.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %6
  br i1 %exitcond.not, label %._crit_edge52, label %.lr.ph51.split.us, !llvm.loop !299

._crit_edge52:                                    ; preds = %._crit_edge.us, %.lr.ph51, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_1_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 6 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge49.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit.preheader, label %._crit_edge49.split

cirrus_src.exit.preheader:                        ; preds = %cirrus_src.exit.lr.ph
  %i.i = sub i32 %5, %i.d
  %.neg = add nuw nsw i32 %i.d, 1
  %xtraiter = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.j = add nuw nsw i32 %i.d, 1
  %i.k = icmp eq i32 %5, %.neg
  br label %cirrus_src.exit

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.preheader, %._crit_edge
  %.02948 = phi i32 [ %i.aa, %._crit_edge ], [ 0, %cirrus_src.exit.preheader ]
  %.03247 = phi i32 [ %i.z, %._crit_edge ], [ %1, %cirrus_src.exit.preheader ] ; 2 uses
  %i.l = add i32 %.03247, %i.d                    ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %cirrus_src.exit
  %.val.prol = load ptr, ptr %i.g, align 8
  %.val35.prol = load i32, ptr %i.h, align 16
  %i.m = and i32 %.val35.prol, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val.prol, i64 %i.n
  store i8 -1, ptr %i.o, align 1
  %i.p = add i32 %i.l, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %cirrus_src.exit
  %.03044.unr = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.j, %.prol.loopexit.unr-lcssa ]
  %.03143.unr = phi i32 [ %i.l, %cirrus_src.exit ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  br i1 %i.k, label %._crit_edge, label %cirrus_src.exit.new

cirrus_src.exit.new:                              ; preds = %.prol.loopexit, %cirrus_src.exit.new
  %.03044 = phi i32 [ %i.y, %cirrus_src.exit.new ], [ %.03044.unr, %.prol.loopexit ]
  %.03143 = phi i32 [ %i.x, %cirrus_src.exit.new ], [ %.03143.unr, %.prol.loopexit ] ; 3 uses
  %.val = load ptr, ptr %i.g, align 8
  %.val35 = load i32, ptr %i.h, align 16
  %i.q = and i32 %.val35, %.03143
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  store i8 -1, ptr %i.s, align 1
  %i.t = add i32 %.03143, 1
  %.val.1 = load ptr, ptr %i.g, align 8
  %.val35.1 = load i32, ptr %i.h, align 16
  %i.u = and i32 %.val35.1, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.val.1, i64 %i.v
  store i8 -1, ptr %i.w, align 1
  %i.x = add i32 %.03143, 2
  %i.y = add nuw nsw i32 %.03044, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.y, %5
  br i1 %exitcond.not.1, label %._crit_edge, label %cirrus_src.exit.new, !llvm.loop !300

._crit_edge:                                      ; preds = %cirrus_src.exit.new, %.prol.loopexit
  %i.z = add i32 %.03247, %3
  %i.aa = add nuw nsw i32 %.02948, 1              ; 2 uses
  %exitcond50.not = icmp eq i32 %i.aa, %6
  br i1 %exitcond50.not, label %._crit_edge49.split, label %cirrus_src.exit, !llvm.loop !301

._crit_edge49.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_1_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 1
  %i.d = and i8 %i.c, 14
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge49.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge49.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02948 = phi i32 [ %i.s, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03247 = phi i32 [ %i.r, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03247, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03044 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.p, %bb.b ]
  %.03143 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.o, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val35 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03143, -2
  %i.l = and i32 %i.k, %.val35
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  store i16 -1, ptr %i.n, align 2
  %i.o = add i32 %.03143, 2
  %i.p = add nuw nsw i32 %.03044, 2               ; 2 uses
  %i.q = icmp slt i32 %i.p, %5
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !302

._crit_edge:                                      ; preds = %bb.b
  %i.r = add i32 %.03247, %3
  %i.s = add nuw nsw i32 %.02948, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %6
  br i1 %exitcond.not, label %._crit_edge49.split, label %cirrus_src.exit, !llvm.loop !303

._crit_edge49.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_1_24(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %narrow = mul nuw nsw i8 %i.c, 3
  %i.d = zext nneg i8 %narrow to i32              ; 3 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge59.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit, label %._crit_edge59.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.03558 = phi i32 [ %i.y, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03857 = phi i32 [ %i.x, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.i = add i32 %.03857, %i.d
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03654 = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.v, %bb.b ]
  %.03753 = phi i32 [ %i.i, %cirrus_src.exit ], [ %i.u, %bb.b ] ; 4 uses
  %.val44 = load ptr, ptr %i.g, align 8
  %.val45 = load i32, ptr %i.h, align 16
  %i.j = and i32 %.val45, %.03753
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val44, i64 %i.k
  store i8 -1, ptr %i.l, align 1
  %i.m = add i32 %.03753, 1
  %.val42 = load ptr, ptr %i.g, align 8
  %.val43 = load i32, ptr %i.h, align 16
  %i.n = and i32 %.val43, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.o
  store i8 -1, ptr %i.p, align 1
  %i.q = add i32 %.03753, 2
  %.val = load ptr, ptr %i.g, align 8
  %.val41 = load i32, ptr %i.h, align 16
  %i.r = and i32 %.val41, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  store i8 -1, ptr %i.t, align 1
  %i.u = add i32 %.03753, 3
  %i.v = add i32 %.03654, 3                       ; 2 uses
  %i.w = icmp slt i32 %i.v, %5
  br i1 %i.w, label %bb.b, label %._crit_edge, !llvm.loop !304

._crit_edge:                                      ; preds = %bb.b
  %i.x = add i32 %.03857, %3
  %i.y = add nuw nsw i32 %.03558, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %6
  br i1 %exitcond.not, label %._crit_edge59.split, label %cirrus_src.exit, !llvm.loop !305

._crit_edge59.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_1_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge49.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge49.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02948 = phi i32 [ %i.s, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03247 = phi i32 [ %i.r, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03247, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03044 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.p, %bb.b ]
  %.03143 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.o, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val35 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03143, -4
  %i.l = and i32 %i.k, %.val35
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
end_hunk_2
begin_hunk_3_@cirrus_colorexpand_pattern_transp_notsrc_and_notdst_24:bb.a

bb.c:                                             ; preds = %.lr.ph58.split.us
  %i.ab = load ptr, ptr %i.m, align 8
  %i.ac = load i32, ptr %i.n, align 16
  %i.ad = and i32 %i.ac, %i.y
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.ad, %bb.c ], [ %i.aa, %bb.b ]
  %.sink.i.us = phi ptr [ %i.ab, %bb.c ], [ %i.l, %bb.b ]
  %i.ae = zext i32 %.sink7.i.us to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.ae
  %.0.i.us = load i8, ptr %i.af, align 1
  %i.ag = zext i8 %.0.i.us to i32
  %i.ah = xor i32 %.035, %i.ag
  %i.ai = add i32 %.04154.us, %i.d
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.f
  %.03752.us = phi i32 [ %i.p, %cirrus_src.exit.us ], [ %i.be, %bb.f ] ; 2 uses
  %.03951.us = phi i32 [ %i.d, %cirrus_src.exit.us ], [ %i.bf, %bb.f ]
  %.04050.us = phi i32 [ %i.ai, %cirrus_src.exit.us ], [ %i.bc, %bb.f ] ; 4 uses
  %i.aj = shl nuw nsw i32 1, %.03752.us
  %i.ak = and i32 %i.aj, %i.ah
  %.not42.us = icmp eq i32 %i.ak, 0
  br i1 %.not42.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val46.us = load ptr, ptr %i.m, align 8
  %.val47.us = load i32, ptr %i.n, align 16
  %i.al = and i32 %.val47.us, %.04050.us
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.val46.us, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %.demorgan5.i.us = or i8 %i.ao, %i.r
  %i.ap = xor i8 %.demorgan5.i.us, -1
  store i8 %i.ap, ptr %i.an, align 1
  %i.aq = add i32 %.04050.us, 1
  %.val44.us = load ptr, ptr %i.m, align 8
  %.val45.us = load i32, ptr %i.n, align 16
  %i.ar = and i32 %.val45.us, %i.aq
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.val44.us, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  %.demorgan5.i48.us = or i8 %i.au, %i.t
  %i.av = xor i8 %.demorgan5.i48.us, -1
  store i8 %i.av, ptr %i.at, align 1
  %i.aw = add i32 %.04050.us, 2
  %.val.us = load ptr, ptr %i.m, align 8
  %.val43.us = load i32, ptr %i.n, align 16
  %i.ax = and i32 %.val43.us, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  %.demorgan5.i49.us = or i8 %i.ba, %i.v
  %i.bb = xor i8 %.demorgan5.i49.us, -1
  store i8 %i.bb, ptr %i.az, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bc = add i32 %.04050.us, 3
  %i.bd = add nuw nsw i32 %.03752.us, 7
  %i.be = and i32 %i.bd, 7
  %i.bf = add i32 %.03951.us, 3                   ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %5
  br i1 %i.bg, label %bb.d, label %._crit_edge.us, !llvm.loop !496

._crit_edge.us:                                   ; preds = %bb.f
  %i.bh = add nuw nsw i32 %.03656.us, 1
  %i.bi = add i32 %.04154.us, %3
  %i.bj = add nuw nsw i32 %.03855.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bj, %6
  br i1 %exitcond.not, label %._crit_edge59, label %.lr.ph58.split.us, !llvm.loop !497

._crit_edge59:                                    ; preds = %._crit_edge.us, %.lr.ph58, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_transp_notsrc_and_notdst_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 2                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 70709
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 2
  %.not = icmp eq i8 %i.h, 0                      ; 2 uses
  %.029 = select i1 %.not, i32 0, i32 255
  %.0.in.v = select i1 %.not, i64 70692, i64 70696
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v
  %.0 = load i32, ptr %.0.in, align 4
  %i.i = icmp sgt i32 %6, 0
  br i1 %i.i, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.l = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 70592      ; 2 uses
  %i.n = xor i32 %i.d, 7
  %i.o = icmp slt i32 %i.e, %5
  br i1 %i.o, label %.lr.ph46.split.us.preheader, label %._crit_edge47

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.q = load i32, ptr %i.p, align 16
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46.split.us.preheader, %._crit_edge.us
  %.03044.us.in = phi i32 [ %i.ap, %._crit_edge.us ], [ %i.q, %.lr.ph46.split.us.preheader ]
  %.03243.us = phi i32 [ %i.ar, %._crit_edge.us ], [ 0, %.lr.ph46.split.us.preheader ]
  %.03542.us = phi i32 [ %i.aq, %._crit_edge.us ], [ %1, %.lr.ph46.split.us.preheader ] ; 2 uses
  %.03044.us = and i32 %.03044.us.in, 7           ; 2 uses
  %i.r = add i32 %.03044.us, %2                   ; 2 uses
  %i.s = load i32, ptr %i.j, align 16
  %.not.i.us = icmp eq i32 %i.s, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph46.split.us
  %i.t = and i32 %i.r, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph46.split.us
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = load i32, ptr %i.m, align 16
  %i.w = and i32 %i.v, %i.r
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.w, %bb.c ], [ %i.t, %bb.b ]
  %.sink.i.us = phi ptr [ %i.u, %bb.c ], [ %i.k, %bb.b ]
  %i.x = zext i32 %.sink7.i.us to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.x
  %.0.i.us = load i8, ptr %i.y, align 1
  %i.z = zext i8 %.0.i.us to i32
  %i.aa = xor i32 %.029, %i.z
  %i.ab = add i32 %.03542.us, %i.e
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.f
  %.03140.us = phi i32 [ %i.n, %cirrus_src.exit.us ], [ %i.am, %bb.f ] ; 2 uses
  %.03339.us = phi i32 [ %i.e, %cirrus_src.exit.us ], [ %i.an, %bb.f ]
  %.03438.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.ak, %bb.f ] ; 2 uses
  %i.ac = shl nuw nsw i32 1, %.03140.us
  %i.ad = and i32 %i.ac, %i.aa
  %.not36.us = icmp eq i32 %i.ad, 0
  br i1 %.not36.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.us = load ptr, ptr %i.l, align 8
  %.val37.us = load i32, ptr %i.m, align 16
  %i.ae = and i32 %.03438.us, -4
  %i.af = and i32 %i.ae, %.val37.us
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %.demorgan.i.us = or i32 %i.ai, %.0
  %i.aj = xor i32 %.demorgan.i.us, -1
  store i32 %i.aj, ptr %i.ah, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = add i32 %.03438.us, 4
  %i.al = add nuw nsw i32 %.03140.us, 7
  %i.am = and i32 %i.al, 7
  %i.an = add nuw nsw i32 %.03339.us, 4           ; 2 uses
  %i.ao = icmp slt i32 %i.an, %5
  br i1 %i.ao, label %bb.d, label %._crit_edge.us, !llvm.loop !498

._crit_edge.us:                                   ; preds = %bb.f
  %i.ap = add nuw nsw i32 %.03044.us, 1
  %i.aq = add i32 %.03542.us, %3
  %i.ar = add nuw nsw i32 %.03243.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %6
  br i1 %exitcond.not, label %._crit_edge47, label %.lr.ph46.split.us, !llvm.loop !499

._crit_edge47:                                    ; preds = %._crit_edge.us, %.lr.ph46, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_0_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 6 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge40.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit.preheader, label %._crit_edge40.split

cirrus_src.exit.preheader:                        ; preds = %cirrus_src.exit.lr.ph
  %i.i = sub i32 %5, %i.d
  %.neg = add nuw nsw i32 %i.d, 1
  %xtraiter = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.j = add nuw nsw i32 %i.d, 1
  %i.k = icmp eq i32 %5, %.neg
  br label %cirrus_src.exit

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.preheader, %._crit_edge
  %.02838 = phi i32 [ %i.aa, %._crit_edge ], [ 0, %cirrus_src.exit.preheader ]
  %.03137 = phi i32 [ %i.z, %._crit_edge ], [ %1, %cirrus_src.exit.preheader ] ; 2 uses
  %i.l = add i32 %.03137, %i.d                    ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %cirrus_src.exit
  %.val.prol = load ptr, ptr %i.g, align 8
  %.val32.prol = load i32, ptr %i.h, align 16
  %i.m = and i32 %.val32.prol, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val.prol, i64 %i.n
  store i8 0, ptr %i.o, align 1
  %i.p = add i32 %i.l, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %cirrus_src.exit
  %.02934.unr = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.j, %.prol.loopexit.unr-lcssa ]
  %.03033.unr = phi i32 [ %i.l, %cirrus_src.exit ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  br i1 %i.k, label %._crit_edge, label %cirrus_src.exit.new

cirrus_src.exit.new:                              ; preds = %.prol.loopexit, %cirrus_src.exit.new
  %.02934 = phi i32 [ %i.y, %cirrus_src.exit.new ], [ %.02934.unr, %.prol.loopexit ]
  %.03033 = phi i32 [ %i.x, %cirrus_src.exit.new ], [ %.03033.unr, %.prol.loopexit ] ; 3 uses
  %.val = load ptr, ptr %i.g, align 8
  %.val32 = load i32, ptr %i.h, align 16
  %i.q = and i32 %.val32, %.03033
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  store i8 0, ptr %i.s, align 1
  %i.t = add i32 %.03033, 1
  %.val.1 = load ptr, ptr %i.g, align 8
  %.val32.1 = load i32, ptr %i.h, align 16
  %i.u = and i32 %.val32.1, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.val.1, i64 %i.v
  store i8 0, ptr %i.w, align 1
  %i.x = add i32 %.03033, 2
  %i.y = add nuw nsw i32 %.02934, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.y, %5
  br i1 %exitcond.not.1, label %._crit_edge, label %cirrus_src.exit.new, !llvm.loop !500

._crit_edge:                                      ; preds = %cirrus_src.exit.new, %.prol.loopexit
  %i.z = add i32 %.03137, %3
  %i.aa = add nuw nsw i32 %.02838, 1              ; 2 uses
  %exitcond41.not = icmp eq i32 %i.aa, %6
  br i1 %exitcond41.not, label %._crit_edge40.split, label %cirrus_src.exit, !llvm.loop !501

._crit_edge40.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_0_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 1
  %i.d = and i8 %i.c, 14
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge40.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge40.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02838 = phi i32 [ %i.s, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03137 = phi i32 [ %i.r, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03137, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.02934 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.p, %bb.b ]
  %.03033 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.o, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val32 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03033, -2
  %i.l = and i32 %i.k, %.val32
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  store i16 0, ptr %i.n, align 2
  %i.o = add i32 %.03033, 2
  %i.p = add nuw nsw i32 %.02934, 2               ; 2 uses
  %i.q = icmp slt i32 %i.p, %5
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !502

._crit_edge:                                      ; preds = %bb.b
  %i.r = add i32 %.03137, %3
  %i.s = add nuw nsw i32 %.02838, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %6
  br i1 %exitcond.not, label %._crit_edge40.split, label %cirrus_src.exit, !llvm.loop !503

._crit_edge40.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_0_24(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %narrow = mul nuw nsw i8 %i.c, 3
  %i.d = zext nneg i8 %narrow to i32              ; 3 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge50.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit, label %._crit_edge50.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.03448 = phi i32 [ %i.y, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03747 = phi i32 [ %i.x, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.i = add i32 %.03747, %i.d
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03544 = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.v, %bb.b ]
  %.03643 = phi i32 [ %i.i, %cirrus_src.exit ], [ %i.u, %bb.b ] ; 4 uses
  %.val41 = load ptr, ptr %i.g, align 8
  %.val42 = load i32, ptr %i.h, align 16
  %i.j = and i32 %.val42, %.03643
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val41, i64 %i.k
  store i8 0, ptr %i.l, align 1
  %i.m = add i32 %.03643, 1
  %.val39 = load ptr, ptr %i.g, align 8
  %.val40 = load i32, ptr %i.h, align 16
  %i.n = and i32 %.val40, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.val39, i64 %i.o
  store i8 0, ptr %i.p, align 1
  %i.q = add i32 %.03643, 2
  %.val = load ptr, ptr %i.g, align 8
  %.val38 = load i32, ptr %i.h, align 16
  %i.r = and i32 %.val38, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  store i8 0, ptr %i.t, align 1
  %i.u = add i32 %.03643, 3
  %i.v = add i32 %.03544, 3                       ; 2 uses
  %i.w = icmp slt i32 %i.v, %5
  br i1 %i.w, label %bb.b, label %._crit_edge, !llvm.loop !504

._crit_edge:                                      ; preds = %bb.b
  %i.x = add i32 %.03747, %3
  %i.y = add nuw nsw i32 %.03448, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %6
  br i1 %exitcond.not, label %._crit_edge50.split, label %cirrus_src.exit, !llvm.loop !505

._crit_edge50.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_0_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge40.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge40.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02838 = phi i32 [ %i.s, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03137 = phi i32 [ %i.r, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03137, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.02934 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.p, %bb.b ]
  %.03033 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.o, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val32 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03033, -4
  %i.l = and i32 %i.k, %.val32
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
end_hunk_3
begin_hunk_4_@cirrus_colorexpand_pattern_src_and_notdst_24:bb.a
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph51.split.us
  %i.u = and i32 %i.s, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph51.split.us
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = load i32, ptr %i.n, align 16
  %i.x = and i32 %i.w, %i.s
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i.us = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ]
  %i.y = zext i32 %.sink7.i.us to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.y
  %.0.i.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.i.us to i32
  %i.ab = add i32 %.03747.us, %i.f
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.d
  %.03345.us = phi i32 [ %i.o, %cirrus_src.exit.us ], [ %i.bi, %bb.d ] ; 2 uses
  %.03544.us = phi i32 [ %i.f, %cirrus_src.exit.us ], [ %i.bj, %bb.d ]
  %.03643.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.bg, %bb.d ] ; 4 uses
  %i.ac = lshr i32 %i.aa, %.03345.us
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = trunc i32 %i.ag to i8
  %.val41.us = load ptr, ptr %i.m, align 8
  %.val42.us = load i32, ptr %i.n, align 16
  %i.ai = and i32 %.val42.us, %.03643.us
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val41.us, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = xor i8 %i.al, -1
  %i.an = and i8 %i.am, %i.ah
  store i8 %i.an, ptr %i.ak, align 1
  %i.ao = add i32 %.03643.us, 1
  %i.ap = lshr i32 %i.ag, 8
  %i.aq = trunc i32 %i.ap to i8
  %.val39.us = load ptr, ptr %i.m, align 8
  %.val40.us = load i32, ptr %i.n, align 16
  %i.ar = and i32 %.val40.us, %i.ao
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.val39.us, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  %i.av = xor i8 %i.au, -1
  %i.aw = and i8 %i.av, %i.aq
  store i8 %i.aw, ptr %i.at, align 1
  %i.ax = add i32 %.03643.us, 2
  %i.ay = lshr i32 %i.ag, 16
  %i.az = trunc i32 %i.ay to i8
  %.val.us = load ptr, ptr %i.m, align 8
  %.val38.us = load i32, ptr %i.n, align 16
  %i.ba = and i32 %.val38.us, %i.ax
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = xor i8 %i.bd, -1
  %i.bf = and i8 %i.be, %i.az
  store i8 %i.bf, ptr %i.bc, align 1
  %i.bg = add i32 %.03643.us, 3
  %i.bh = add nuw nsw i32 %.03345.us, 7
  %i.bi = and i32 %i.bh, 7
  %i.bj = add i32 %.03544.us, 3                   ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %5
  br i1 %i.bk, label %bb.d, label %._crit_edge.us, !llvm.loop !520

._crit_edge.us:                                   ; preds = %bb.d
  %i.bl = add nuw nsw i32 %.049.us, 1
  %i.bm = add i32 %.03747.us, %3
  %i.bn = add nuw nsw i32 %.03448.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %6
  br i1 %exitcond.not, label %._crit_edge52, label %.lr.ph51.split.us, !llvm.loop !521

._crit_edge52:                                    ; preds = %._crit_edge.us, %.lr.ph51, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_src_and_notdst_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 7
  %i.e = zext nneg i8 %i.d to i32                 ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 2                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 70692
  %i.h = load <2 x i32>, ptr %i.g, align 4
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.i, ptr %i.a, align 8
  %i.j = icmp sgt i32 %6, 0
  br i1 %i.j, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 70592      ; 2 uses
  %i.o = xor i32 %i.e, 7
  %i.p = icmp slt i32 %i.f, %5
  br i1 %i.p, label %.lr.ph41.split.us.preheader, label %._crit_edge42

.lr.ph41.split.us.preheader:                      ; preds = %.lr.ph41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.r = load i32, ptr %i.q, align 16
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %._crit_edge.us
  %.039.us.in = phi i32 [ %i.at, %._crit_edge.us ], [ %i.r, %.lr.ph41.split.us.preheader ]
  %.02838.us = phi i32 [ %i.av, %._crit_edge.us ], [ 0, %.lr.ph41.split.us.preheader ]
  %.03137.us = phi i32 [ %i.au, %._crit_edge.us ], [ %1, %.lr.ph41.split.us.preheader ] ; 2 uses
  %.039.us = and i32 %.039.us.in, 7               ; 2 uses
  %i.s = add i32 %.039.us, %2                     ; 2 uses
  %i.t = load i32, ptr %i.k, align 16
  %.not.i.us = icmp eq i32 %i.t, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph41.split.us
  %i.u = and i32 %i.s, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph41.split.us
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = load i32, ptr %i.n, align 16
  %i.x = and i32 %i.w, %i.s
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i.us = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ]
  %i.y = zext i32 %.sink7.i.us to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.y
  %.0.i.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.i.us to i32
  %i.ab = add i32 %.03137.us, %i.f
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.d
  %.02735.us = phi i32 [ %i.o, %cirrus_src.exit.us ], [ %i.aq, %bb.d ] ; 2 uses
  %.02934.us = phi i32 [ %i.f, %cirrus_src.exit.us ], [ %i.ar, %bb.d ]
  %.03033.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.ao, %bb.d ] ; 2 uses
  %i.ac = lshr i32 %i.aa, %.02735.us
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %.val.us = load ptr, ptr %i.m, align 8
  %.val32.us = load i32, ptr %i.n, align 16
  %i.ah = and i32 %.03033.us, -4
  %i.ai = and i32 %i.ah, %.val32.us
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = xor i32 %i.al, -1
  %i.an = and i32 %i.ag, %i.am
  store i32 %i.an, ptr %i.ak, align 4
  %i.ao = add i32 %.03033.us, 4
  %i.ap = add nuw nsw i32 %.02735.us, 7
  %i.aq = and i32 %i.ap, 7
  %i.ar = add nuw nsw i32 %.02934.us, 4           ; 2 uses
  %i.as = icmp slt i32 %i.ar, %5
  br i1 %i.as, label %bb.d, label %._crit_edge.us, !llvm.loop !522

._crit_edge.us:                                   ; preds = %bb.d
  %i.at = add nuw nsw i32 %.039.us, 1
  %i.au = add i32 %.03137.us, %3
  %i.av = add nuw nsw i32 %.02838.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %6
  br i1 %exitcond.not, label %._crit_edge42, label %.lr.ph41.split.us, !llvm.loop !523

._crit_edge42:                                    ; preds = %._crit_edge.us, %.lr.ph41, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_notdst_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 6 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge40.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit.preheader, label %._crit_edge40.split

cirrus_src.exit.preheader:                        ; preds = %cirrus_src.exit.lr.ph
  %i.i = sub i32 %5, %i.d
  %.neg = add nuw nsw i32 %i.d, 1
  %xtraiter = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.j = add nuw nsw i32 %i.d, 1
  %i.k = icmp eq i32 %5, %.neg
  br label %cirrus_src.exit

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.preheader, %._crit_edge
  %.02838 = phi i32 [ %i.ag, %._crit_edge ], [ 0, %cirrus_src.exit.preheader ]
  %.03137 = phi i32 [ %i.af, %._crit_edge ], [ %1, %cirrus_src.exit.preheader ] ; 2 uses
  %i.l = add i32 %.03137, %i.d                    ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %cirrus_src.exit
  %.val.prol = load ptr, ptr %i.g, align 8
  %.val32.prol = load i32, ptr %i.h, align 16
  %i.m = and i32 %.val32.prol, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val.prol, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = xor i8 %i.p, -1
  store i8 %i.q, ptr %i.o, align 1
  %i.r = add i32 %i.l, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %cirrus_src.exit
  %.02934.unr = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.j, %.prol.loopexit.unr-lcssa ]
  %.03033.unr = phi i32 [ %i.l, %cirrus_src.exit ], [ %i.r, %.prol.loopexit.unr-lcssa ]
  br i1 %i.k, label %._crit_edge, label %cirrus_src.exit.new

cirrus_src.exit.new:                              ; preds = %.prol.loopexit, %cirrus_src.exit.new
  %.02934 = phi i32 [ %i.ae, %cirrus_src.exit.new ], [ %.02934.unr, %.prol.loopexit ]
  %.03033 = phi i32 [ %i.ad, %cirrus_src.exit.new ], [ %.03033.unr, %.prol.loopexit ] ; 3 uses
  %.val = load ptr, ptr %i.g, align 8
  %.val32 = load i32, ptr %i.h, align 16
  %i.s = and i32 %.val32, %.03033
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = xor i8 %i.v, -1
  store i8 %i.w, ptr %i.u, align 1
  %i.x = add i32 %.03033, 1
  %.val.1 = load ptr, ptr %i.g, align 8
  %.val32.1 = load i32, ptr %i.h, align 16
  %i.y = and i32 %.val32.1, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.1, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = xor i8 %i.ab, -1
  store i8 %i.ac, ptr %i.aa, align 1
  %i.ad = add i32 %.03033, 2
  %i.ae = add nuw nsw i32 %.02934, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ae, %5
  br i1 %exitcond.not.1, label %._crit_edge, label %cirrus_src.exit.new, !llvm.loop !524

._crit_edge:                                      ; preds = %cirrus_src.exit.new, %.prol.loopexit
  %i.af = add i32 %.03137, %3
  %i.ag = add nuw nsw i32 %.02838, 1              ; 2 uses
  %exitcond41.not = icmp eq i32 %i.ag, %6
  br i1 %exitcond41.not, label %._crit_edge40.split, label %cirrus_src.exit, !llvm.loop !525

._crit_edge40.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_notdst_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 1
  %i.d = and i8 %i.c, 14
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge40.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge40.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02838 = phi i32 [ %i.u, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03137 = phi i32 [ %i.t, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03137, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.02934 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.r, %bb.b ]
  %.03033 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.q, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val32 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03033, -2
  %i.l = and i32 %i.k, %.val32
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = xor i16 %i.o, -1
  store i16 %i.p, ptr %i.n, align 2
  %i.q = add i32 %.03033, 2
  %i.r = add nuw nsw i32 %.02934, 2               ; 2 uses
  %i.s = icmp slt i32 %i.r, %5
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !526

._crit_edge:                                      ; preds = %bb.b
  %i.t = add i32 %.03137, %3
  %i.u = add nuw nsw i32 %.02838, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %6
  br i1 %exitcond.not, label %._crit_edge40.split, label %cirrus_src.exit, !llvm.loop !527

._crit_edge40.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_notdst_24(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %narrow = mul nuw nsw i8 %i.c, 3
  %i.d = zext nneg i8 %narrow to i32              ; 3 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge50.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit, label %._crit_edge50.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.03448 = phi i32 [ %i.ae, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03747 = phi i32 [ %i.ad, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.i = add i32 %.03747, %i.d
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03544 = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.ab, %bb.b ]
  %.03643 = phi i32 [ %i.i, %cirrus_src.exit ], [ %i.aa, %bb.b ] ; 4 uses
  %.val41 = load ptr, ptr %i.g, align 8
  %.val42 = load i32, ptr %i.h, align 16
  %i.j = and i32 %.val42, %.03643
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val41, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = xor i8 %i.m, -1
  store i8 %i.n, ptr %i.l, align 1
  %i.o = add i32 %.03643, 1
  %.val39 = load ptr, ptr %i.g, align 8
  %.val40 = load i32, ptr %i.h, align 16
  %i.p = and i32 %.val40, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.val39, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = xor i8 %i.s, -1
  store i8 %i.t, ptr %i.r, align 1
  %i.u = add i32 %.03643, 2
  %.val = load ptr, ptr %i.g, align 8
  %.val38 = load i32, ptr %i.h, align 16
  %i.v = and i32 %.val38, %i.u
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = xor i8 %i.y, -1
  store i8 %i.z, ptr %i.x, align 1
  %i.aa = add i32 %.03643, 3
  %i.ab = add i32 %.03544, 3                      ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %5
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !528

._crit_edge:                                      ; preds = %bb.b
  %i.ad = add i32 %.03747, %3
  %i.ae = add nuw nsw i32 %.03448, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %6
  br i1 %exitcond.not, label %._crit_edge50.split, label %cirrus_src.exit, !llvm.loop !529

._crit_edge50.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_notdst_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge40.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge40.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02838 = phi i32 [ %i.u, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03137 = phi i32 [ %i.t, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03137, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.02934 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.r, %bb.b ]
  %.03033 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.q, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val32 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03033, -4
  %i.l = and i32 %i.k, %.val32
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = xor i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 4
  %i.q = add i32 %.03033, 4
  %i.r = add nuw nsw i32 %.02934, 4               ; 2 uses
  %i.s = icmp slt i32 %i.r, %5
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !530

._crit_edge:                                      ; preds = %bb.b
  %i.t = add i32 %.03137, %3
  %i.u = add nuw nsw i32 %.02838, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %6
  br i1 %exitcond.not, label %._crit_edge40.split, label %cirrus_src.exit, !llvm.loop !531

._crit_edge40.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_src_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 7
  %i.e = zext nneg i8 %i.d to i32                 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 70692
  %i.g = load <2 x i32>, ptr %i.f, align 4
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.h, ptr %i.a, align 8
  %i.i = icmp sgt i32 %6, 0
  br i1 %i.i, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.l = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 70592      ; 4 uses
  %i.n = xor i32 %i.e, 7                          ; 2 uses
  %i.o = icmp sgt i32 %5, %i.e
  br i1 %i.o, label %.lr.ph41.split.us.preheader, label %._crit_edge42

.lr.ph41.split.us.preheader:                      ; preds = %.lr.ph41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.q = load i32, ptr %i.p, align 16
  %i.r = sub i32 %5, %i.e
  %.neg = add nuw nsw i32 %i.e, 1
  %xtraiter = and i32 %i.r, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.s = sub nsw i32 6, %i.e
  %i.t = and i32 %i.s, 7
  %i.u = add nuw nsw i32 %i.e, 1
  %i.v = icmp eq i32 %5, %.neg
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %._crit_edge.us
  %.039.us.in = phi i32 [ %i.bp, %._crit_edge.us ], [ %i.q, %.lr.ph41.split.us.preheader ]
  %.02838.us = phi i32 [ %i.br, %._crit_edge.us ], [ 0, %.lr.ph41.split.us.preheader ]
  %.03137.us = phi i32 [ %i.bq, %._crit_edge.us ], [ %1, %.lr.ph41.split.us.preheader ] ; 2 uses
  %.039.us = and i32 %.039.us.in, 7               ; 2 uses
  %i.w = add i32 %.039.us, %2                     ; 2 uses
  %i.x = load i32, ptr %i.j, align 16
  %.not.i.us = icmp eq i32 %i.x, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph41.split.us
  %i.y = and i32 %i.w, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph41.split.us
  %i.z = load ptr, ptr %i.l, align 8
  %i.aa = load i32, ptr %i.m, align 16
  %i.ab = and i32 %i.aa, %i.w
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.ab, %bb.c ], [ %i.y, %bb.b ]
  %.sink.i.us = phi ptr [ %i.z, %bb.c ], [ %i.k, %bb.b ]
  %i.ac = zext i32 %.sink7.i.us to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.ac
  %.0.i.us = load i8, ptr %i.ad, align 1
  %i.ae = zext i8 %.0.i.us to i32                 ; 3 uses
  %i.af = add i32 %.03137.us, %i.e                ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %cirrus_src.exit.us
  %i.ag = lshr i32 %i.ae, %i.n
  %i.ah = and i32 %i.ag, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = trunc i32 %i.ak to i8
  %.val.us.prol = load ptr, ptr %i.l, align 8
  %.val32.us.prol = load i32, ptr %i.m, align 16
  %i.am = and i32 %.val32.us.prol, %i.af
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.us.prol, i64 %i.an
  store i8 %i.al, ptr %i.ao, align 1
  %i.ap = add i32 %i.af, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %cirrus_src.exit.us
  %.02735.us.unr = phi i32 [ %i.n, %cirrus_src.exit.us ], [ %i.t, %.prol.loopexit.unr-lcssa ]
  %.02934.us.unr = phi i32 [ %i.e, %cirrus_src.exit.us ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %.03033.us.unr = phi i32 [ %i.af, %cirrus_src.exit.us ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  br i1 %i.v, label %._crit_edge.us, label %cirrus_src.exit.us.new

cirrus_src.exit.us.new:                           ; preds = %.prol.loopexit, %cirrus_src.exit.us.new
  %.02735.us = phi i32 [ %i.bn, %cirrus_src.exit.us.new ], [ %.02735.us.unr, %.prol.loopexit ] ; 3 uses
  %.02934.us = phi i32 [ %i.bo, %cirrus_src.exit.us.new ], [ %.02934.us.unr, %.prol.loopexit ]
  %.03033.us = phi i32 [ %i.bl, %cirrus_src.exit.us.new ], [ %.03033.us.unr, %.prol.loopexit ] ; 3 uses
  %i.aq = lshr i32 %i.ae, %.02735.us
  %i.ar = and i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = trunc i32 %i.au to i8
  %.val.us = load ptr, ptr %i.l, align 8
  %.val32.us = load i32, ptr %i.m, align 16
  %i.aw = and i32 %.val32.us, %.03033.us
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1
  %i.az = add i32 %.03033.us, 1
  %i.ba = add nuw nsw i32 %.02735.us, 7
  %i.bb = and i32 %i.ba, 7
  %i.bc = lshr i32 %i.ae, %i.bb
  %i.bd = and i32 %i.bc, 1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = trunc i32 %i.bg to i8
  %.val.us.1 = load ptr, ptr %i.l, align 8
  %.val32.us.1 = load i32, ptr %i.m, align 16
  %i.bi = and i32 %.val32.us.1, %i.az
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.us.1, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1
  %i.bl = add i32 %.03033.us, 2
  %i.bm = add nsw i32 %.02735.us, 6
  %i.bn = and i32 %i.bm, 7
  %i.bo = add nuw nsw i32 %.02934.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bo, %5
  br i1 %exitcond.not.1, label %._crit_edge.us, label %cirrus_src.exit.us.new, !llvm.loop !532

._crit_edge.us:                                   ; preds = %cirrus_src.exit.us.new, %.prol.loopexit
  %i.bp = add nuw nsw i32 %.039.us, 1
  %i.bq = add i32 %.03137.us, %3
  %i.br = add nuw nsw i32 %.02838.us, 1           ; 2 uses
  %exitcond50.not = icmp eq i32 %i.br, %6
  br i1 %exitcond50.not, label %._crit_edge42, label %.lr.ph41.split.us, !llvm.loop !533

._crit_edge42:                                    ; preds = %._crit_edge.us, %.lr.ph41, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_src_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 7
  %i.e = zext nneg i8 %i.d to i32                 ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 1                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 70692
  %i.h = load <2 x i32>, ptr %i.g, align 4
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.i, ptr %i.a, align 8
  %i.j = icmp sgt i32 %6, 0
  br i1 %i.j, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 70592      ; 2 uses
  %i.o = xor i32 %i.e, 7
  %i.p = icmp slt i32 %i.f, %5
  br i1 %i.p, label %.lr.ph41.split.us.preheader, label %._crit_edge42

.lr.ph41.split.us.preheader:                      ; preds = %.lr.ph41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.r = load i32, ptr %i.q, align 16
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %._crit_edge.us
  %.039.us.in = phi i32 [ %i.ar, %._crit_edge.us ], [ %i.r, %.lr.ph41.split.us.preheader ]
  %.02838.us = phi i32 [ %i.at, %._crit_edge.us ], [ 0, %.lr.ph41.split.us.preheader ]
  %.03137.us = phi i32 [ %i.as, %._crit_edge.us ], [ %1, %.lr.ph41.split.us.preheader ] ; 2 uses
  %.039.us = and i32 %.039.us.in, 7               ; 2 uses
  %i.s = add i32 %.039.us, %2                     ; 2 uses
  %i.t = load i32, ptr %i.k, align 16
  %.not.i.us = icmp eq i32 %i.t, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph41.split.us
  %i.u = and i32 %i.s, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph41.split.us
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = load i32, ptr %i.n, align 16
  %i.x = and i32 %i.w, %i.s
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i.us = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ]
  %i.y = zext i32 %.sink7.i.us to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.y
  %.0.i.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.i.us to i32
  %i.ab = add i32 %.03137.us, %i.f
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.d
  %.02735.us = phi i32 [ %i.o, %cirrus_src.exit.us ], [ %i.ao, %bb.d ] ; 2 uses
  %.02934.us = phi i32 [ %i.f, %cirrus_src.exit.us ], [ %i.ap, %bb.d ]
  %.03033.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.am, %bb.d ] ; 2 uses
  %i.ac = lshr i32 %i.aa, %.02735.us
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = trunc i32 %i.ag to i16
  %.val.us = load ptr, ptr %i.m, align 8
  %.val32.us = load i32, ptr %i.n, align 16
  %i.ai = and i32 %.03033.us, -2
  %i.aj = and i32 %i.ai, %.val32.us
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.ak
  store i16 %i.ah, ptr %i.al, align 2
  %i.am = add i32 %.03033.us, 2
  %i.an = add nuw nsw i32 %.02735.us, 7
  %i.ao = and i32 %i.an, 7
  %i.ap = add nuw nsw i32 %.02934.us, 2           ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %5
  br i1 %i.aq, label %bb.d, label %._crit_edge.us, !llvm.loop !534

._crit_edge.us:                                   ; preds = %bb.d
  %i.ar = add nuw nsw i32 %.039.us, 1
  %i.as = add i32 %.03137.us, %3
  %i.at = add nuw nsw i32 %.02838.us, 1           ; 2 uses
end_hunk_4
begin_hunk_5_@cirrus_colorexpand_pattern_src_24:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.r = load i32, ptr %i.q, align 16
  br label %.lr.ph51.split.us

.lr.ph51.split.us:                                ; preds = %.lr.ph51.split.us.preheader, %._crit_edge.us
  %.049.us.in = phi i32 [ %i.bc, %._crit_edge.us ], [ %i.r, %.lr.ph51.split.us.preheader ]
  %.03448.us = phi i32 [ %i.be, %._crit_edge.us ], [ 0, %.lr.ph51.split.us.preheader ]
  %.03747.us = phi i32 [ %i.bd, %._crit_edge.us ], [ %1, %.lr.ph51.split.us.preheader ] ; 2 uses
  %.049.us = and i32 %.049.us.in, 7               ; 2 uses
  %i.s = add i32 %.049.us, %2                     ; 2 uses
  %i.t = load i32, ptr %i.k, align 16
  %.not.i.us = icmp eq i32 %i.t, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph51.split.us
  %i.u = and i32 %i.s, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph51.split.us
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = load i32, ptr %i.n, align 16
  %i.x = and i32 %i.w, %i.s
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i.us = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ]
  %i.y = zext i32 %.sink7.i.us to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.y
  %.0.i.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.i.us to i32
  %i.ab = add i32 %.03747.us, %i.f
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.d
  %.03345.us = phi i32 [ %i.o, %cirrus_src.exit.us ], [ %i.az, %bb.d ] ; 2 uses
  %.03544.us = phi i32 [ %i.f, %cirrus_src.exit.us ], [ %i.ba, %bb.d ]
  %.03643.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.ax, %bb.d ] ; 4 uses
  %i.ac = lshr i32 %i.aa, %.03345.us
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = trunc i32 %i.ag to i8
  %.val41.us = load ptr, ptr %i.m, align 8
  %.val42.us = load i32, ptr %i.n, align 16
  %i.ai = and i32 %.val42.us, %.03643.us
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val41.us, i64 %i.aj
  store i8 %i.ah, ptr %i.ak, align 1
  %i.al = add i32 %.03643.us, 1
  %i.am = lshr i32 %i.ag, 8
  %i.an = trunc i32 %i.am to i8
  %.val39.us = load ptr, ptr %i.m, align 8
  %.val40.us = load i32, ptr %i.n, align 16
  %i.ao = and i32 %.val40.us, %i.al
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.val39.us, i64 %i.ap
  store i8 %i.an, ptr %i.aq, align 1
  %i.ar = add i32 %.03643.us, 2
  %i.as = lshr i32 %i.ag, 16
  %i.at = trunc i32 %i.as to i8
  %.val.us = load ptr, ptr %i.m, align 8
  %.val38.us = load i32, ptr %i.n, align 16
  %i.au = and i32 %.val38.us, %i.ar
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.av
  store i8 %i.at, ptr %i.aw, align 1
  %i.ax = add i32 %.03643.us, 3
  %i.ay = add nuw nsw i32 %.03345.us, 7
  %i.az = and i32 %i.ay, 7
  %i.ba = add i32 %.03544.us, 3                   ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %5
  br i1 %i.bb, label %bb.d, label %._crit_edge.us, !llvm.loop !536

._crit_edge.us:                                   ; preds = %bb.d
  %i.bc = add nuw nsw i32 %.049.us, 1
  %i.bd = add i32 %.03747.us, %3
  %i.be = add nuw nsw i32 %.03448.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %6
  br i1 %exitcond.not, label %._crit_edge52, label %.lr.ph51.split.us, !llvm.loop !537

._crit_edge52:                                    ; preds = %._crit_edge.us, %.lr.ph51, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_src_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 7
  %i.e = zext nneg i8 %i.d to i32                 ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 2                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 70692
  %i.h = load <2 x i32>, ptr %i.g, align 4
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.i, ptr %i.a, align 8
  %i.j = icmp sgt i32 %6, 0
  br i1 %i.j, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 70592      ; 2 uses
  %i.o = xor i32 %i.e, 7
  %i.p = icmp slt i32 %i.f, %5
  br i1 %i.p, label %.lr.ph41.split.us.preheader, label %._crit_edge42

.lr.ph41.split.us.preheader:                      ; preds = %.lr.ph41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.r = load i32, ptr %i.q, align 16
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %._crit_edge.us
  %.039.us.in = phi i32 [ %i.aq, %._crit_edge.us ], [ %i.r, %.lr.ph41.split.us.preheader ]
  %.02838.us = phi i32 [ %i.as, %._crit_edge.us ], [ 0, %.lr.ph41.split.us.preheader ]
  %.03137.us = phi i32 [ %i.ar, %._crit_edge.us ], [ %1, %.lr.ph41.split.us.preheader ] ; 2 uses
  %.039.us = and i32 %.039.us.in, 7               ; 2 uses
  %i.s = add i32 %.039.us, %2                     ; 2 uses
  %i.t = load i32, ptr %i.k, align 16
  %.not.i.us = icmp eq i32 %i.t, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph41.split.us
  %i.u = and i32 %i.s, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph41.split.us
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = load i32, ptr %i.n, align 16
  %i.x = and i32 %i.w, %i.s
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i.us = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ]
  %i.y = zext i32 %.sink7.i.us to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.y
  %.0.i.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.i.us to i32
  %i.ab = add i32 %.03137.us, %i.f
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.d
  %.02735.us = phi i32 [ %i.o, %cirrus_src.exit.us ], [ %i.an, %bb.d ] ; 2 uses
  %.02934.us = phi i32 [ %i.f, %cirrus_src.exit.us ], [ %i.ao, %bb.d ]
  %.03033.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.al, %bb.d ] ; 2 uses
  %i.ac = lshr i32 %i.aa, %.02735.us
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %.val.us = load ptr, ptr %i.m, align 8
  %.val32.us = load i32, ptr %i.n, align 16
  %i.ah = and i32 %.03033.us, -4
  %i.ai = and i32 %i.ah, %.val32.us
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.aj
  store i32 %i.ag, ptr %i.ak, align 4
  %i.al = add i32 %.03033.us, 4
  %i.am = add nuw nsw i32 %.02735.us, 7
  %i.an = and i32 %i.am, 7
  %i.ao = add nuw nsw i32 %.02934.us, 4           ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %5
  br i1 %i.ap, label %bb.d, label %._crit_edge.us, !llvm.loop !538

._crit_edge.us:                                   ; preds = %bb.d
  %i.aq = add nuw nsw i32 %.039.us, 1
  %i.ar = add i32 %.03137.us, %3
  %i.as = add nuw nsw i32 %.02838.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %6
  br i1 %exitcond.not, label %._crit_edge42, label %.lr.ph41.split.us, !llvm.loop !539

._crit_edge42:                                    ; preds = %._crit_edge.us, %.lr.ph41, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_1_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 6 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge40.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit.preheader, label %._crit_edge40.split

cirrus_src.exit.preheader:                        ; preds = %cirrus_src.exit.lr.ph
  %i.i = sub i32 %5, %i.d
  %.neg = add nuw nsw i32 %i.d, 1
  %xtraiter = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.j = add nuw nsw i32 %i.d, 1
  %i.k = icmp eq i32 %5, %.neg
  br label %cirrus_src.exit

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.preheader, %._crit_edge
  %.02838 = phi i32 [ %i.aa, %._crit_edge ], [ 0, %cirrus_src.exit.preheader ]
  %.03137 = phi i32 [ %i.z, %._crit_edge ], [ %1, %cirrus_src.exit.preheader ] ; 2 uses
  %i.l = add i32 %.03137, %i.d                    ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %cirrus_src.exit
  %.val.prol = load ptr, ptr %i.g, align 8
  %.val32.prol = load i32, ptr %i.h, align 16
  %i.m = and i32 %.val32.prol, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val.prol, i64 %i.n
  store i8 -1, ptr %i.o, align 1
  %i.p = add i32 %i.l, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %cirrus_src.exit
  %.02934.unr = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.j, %.prol.loopexit.unr-lcssa ]
  %.03033.unr = phi i32 [ %i.l, %cirrus_src.exit ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  br i1 %i.k, label %._crit_edge, label %cirrus_src.exit.new

cirrus_src.exit.new:                              ; preds = %.prol.loopexit, %cirrus_src.exit.new
  %.02934 = phi i32 [ %i.y, %cirrus_src.exit.new ], [ %.02934.unr, %.prol.loopexit ]
  %.03033 = phi i32 [ %i.x, %cirrus_src.exit.new ], [ %.03033.unr, %.prol.loopexit ] ; 3 uses
  %.val = load ptr, ptr %i.g, align 8
  %.val32 = load i32, ptr %i.h, align 16
  %i.q = and i32 %.val32, %.03033
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  store i8 -1, ptr %i.s, align 1
  %i.t = add i32 %.03033, 1
  %.val.1 = load ptr, ptr %i.g, align 8
  %.val32.1 = load i32, ptr %i.h, align 16
  %i.u = and i32 %.val32.1, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.val.1, i64 %i.v
  store i8 -1, ptr %i.w, align 1
  %i.x = add i32 %.03033, 2
  %i.y = add nuw nsw i32 %.02934, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.y, %5
  br i1 %exitcond.not.1, label %._crit_edge, label %cirrus_src.exit.new, !llvm.loop !540

._crit_edge:                                      ; preds = %cirrus_src.exit.new, %.prol.loopexit
  %i.z = add i32 %.03137, %3
  %i.aa = add nuw nsw i32 %.02838, 1              ; 2 uses
  %exitcond41.not = icmp eq i32 %i.aa, %6
  br i1 %exitcond41.not, label %._crit_edge40.split, label %cirrus_src.exit, !llvm.loop !541

._crit_edge40.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_1_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 1
  %i.d = and i8 %i.c, 14
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge40.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge40.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02838 = phi i32 [ %i.s, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03137 = phi i32 [ %i.r, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03137, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.02934 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.p, %bb.b ]
  %.03033 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.o, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val32 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03033, -2
  %i.l = and i32 %i.k, %.val32
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  store i16 -1, ptr %i.n, align 2
  %i.o = add i32 %.03033, 2
  %i.p = add nuw nsw i32 %.02934, 2               ; 2 uses
  %i.q = icmp slt i32 %i.p, %5
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !542

._crit_edge:                                      ; preds = %bb.b
  %i.r = add i32 %.03137, %3
  %i.s = add nuw nsw i32 %.02838, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %6
  br i1 %exitcond.not, label %._crit_edge40.split, label %cirrus_src.exit, !llvm.loop !543

._crit_edge40.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_1_24(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %narrow = mul nuw nsw i8 %i.c, 3
  %i.d = zext nneg i8 %narrow to i32              ; 3 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %cirrus_src.exit.lr.ph, label %._crit_edge50.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit, label %._crit_edge50.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.03448 = phi i32 [ %i.y, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03747 = phi i32 [ %i.x, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.i = add i32 %.03747, %i.d
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.03544 = phi i32 [ %i.d, %cirrus_src.exit ], [ %i.v, %bb.b ]
  %.03643 = phi i32 [ %i.i, %cirrus_src.exit ], [ %i.u, %bb.b ] ; 4 uses
  %.val41 = load ptr, ptr %i.g, align 8
  %.val42 = load i32, ptr %i.h, align 16
  %i.j = and i32 %.val42, %.03643
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val41, i64 %i.k
  store i8 -1, ptr %i.l, align 1
  %i.m = add i32 %.03643, 1
  %.val39 = load ptr, ptr %i.g, align 8
  %.val40 = load i32, ptr %i.h, align 16
  %i.n = and i32 %.val40, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.val39, i64 %i.o
  store i8 -1, ptr %i.p, align 1
  %i.q = add i32 %.03643, 2
  %.val = load ptr, ptr %i.g, align 8
  %.val38 = load i32, ptr %i.h, align 16
  %i.r = and i32 %.val38, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  store i8 -1, ptr %i.t, align 1
  %i.u = add i32 %.03643, 3
  %i.v = add i32 %.03544, 3                       ; 2 uses
  %i.w = icmp slt i32 %i.v, %5
  br i1 %i.w, label %bb.b, label %._crit_edge, !llvm.loop !544

._crit_edge:                                      ; preds = %bb.b
  %i.x = add i32 %.03747, %3
  %i.y = add nuw nsw i32 %.03448, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %6
  br i1 %exitcond.not, label %._crit_edge50.split, label %cirrus_src.exit, !llvm.loop !545

._crit_edge50.split:                              ; preds = %._crit_edge, %cirrus_src.exit.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_1_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %cirrus_src.exit.lr.ph, label %._crit_edge40.split

cirrus_src.exit.lr.ph:                            ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src.exit, label %._crit_edge40.split

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.lr.ph, %._crit_edge
  %.02838 = phi i32 [ %i.s, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph ]
  %.03137 = phi i32 [ %i.r, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph ] ; 2 uses
  %i.j = add i32 %.03137, %i.e
  br label %bb.b

bb.b:                                             ; preds = %cirrus_src.exit, %bb.b
  %.02934 = phi i32 [ %i.e, %cirrus_src.exit ], [ %i.p, %bb.b ]
  %.03033 = phi i32 [ %i.j, %cirrus_src.exit ], [ %i.o, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val32 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.03033, -4
  %i.l = and i32 %i.k, %.val32
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
end_hunk_5
begin_hunk_6_@cirrus_colorexpand_pattern_src_or_notdst_24:bb.a

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i.us = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ]
  %i.y = zext i32 %.sink7.i.us to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.y
  %.0.i.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.i.us to i32
  %i.ab = add i32 %.03747.us, %i.f
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.d
  %.03345.us = phi i32 [ %i.o, %cirrus_src.exit.us ], [ %i.bi, %bb.d ] ; 2 uses
  %.03544.us = phi i32 [ %i.f, %cirrus_src.exit.us ], [ %i.bj, %bb.d ]
  %.03643.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.bg, %bb.d ] ; 4 uses
  %i.ac = lshr i32 %i.aa, %.03345.us
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = trunc i32 %i.ag to i8
  %.val41.us = load ptr, ptr %i.m, align 8
  %.val42.us = load i32, ptr %i.n, align 16
  %i.ai = and i32 %.val42.us, %.03643.us
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val41.us, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = xor i8 %i.al, -1
  %i.an = or i8 %i.am, %i.ah
  store i8 %i.an, ptr %i.ak, align 1
  %i.ao = add i32 %.03643.us, 1
  %i.ap = lshr i32 %i.ag, 8
  %i.aq = trunc i32 %i.ap to i8
  %.val39.us = load ptr, ptr %i.m, align 8
  %.val40.us = load i32, ptr %i.n, align 16
  %i.ar = and i32 %.val40.us, %i.ao
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.val39.us, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  %i.av = xor i8 %i.au, -1
  %i.aw = or i8 %i.av, %i.aq
  store i8 %i.aw, ptr %i.at, align 1
  %i.ax = add i32 %.03643.us, 2
  %i.ay = lshr i32 %i.ag, 16
  %i.az = trunc i32 %i.ay to i8
  %.val.us = load ptr, ptr %i.m, align 8
  %.val38.us = load i32, ptr %i.n, align 16
  %i.ba = and i32 %.val38.us, %i.ax
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = xor i8 %i.bd, -1
  %i.bf = or i8 %i.be, %i.az
  store i8 %i.bf, ptr %i.bc, align 1
  %i.bg = add i32 %.03643.us, 3
  %i.bh = add nuw nsw i32 %.03345.us, 7
  %i.bi = and i32 %i.bh, 7
  %i.bj = add i32 %.03544.us, 3                   ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %5
  br i1 %i.bk, label %bb.d, label %._crit_edge.us, !llvm.loop !592

._crit_edge.us:                                   ; preds = %bb.d
  %i.bl = add nuw nsw i32 %.049.us, 1
  %i.bm = add i32 %.03747.us, %3
  %i.bn = add nuw nsw i32 %.03448.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %6
  br i1 %exitcond.not, label %._crit_edge52, label %.lr.ph51.split.us, !llvm.loop !593

._crit_edge52:                                    ; preds = %._crit_edge.us, %.lr.ph51, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_src_or_notdst_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 7
  %i.e = zext nneg i8 %i.d to i32                 ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 2                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 70692
  %i.h = load <2 x i32>, ptr %i.g, align 4
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.i, ptr %i.a, align 8
  %i.j = icmp sgt i32 %6, 0
  br i1 %i.j, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 70592      ; 2 uses
  %i.o = xor i32 %i.e, 7
  %i.p = icmp slt i32 %i.f, %5
  br i1 %i.p, label %.lr.ph41.split.us.preheader, label %._crit_edge42

.lr.ph41.split.us.preheader:                      ; preds = %.lr.ph41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.r = load i32, ptr %i.q, align 16
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %._crit_edge.us
  %.039.us.in = phi i32 [ %i.at, %._crit_edge.us ], [ %i.r, %.lr.ph41.split.us.preheader ]
  %.02838.us = phi i32 [ %i.av, %._crit_edge.us ], [ 0, %.lr.ph41.split.us.preheader ]
  %.03137.us = phi i32 [ %i.au, %._crit_edge.us ], [ %1, %.lr.ph41.split.us.preheader ] ; 2 uses
  %.039.us = and i32 %.039.us.in, 7               ; 2 uses
  %i.s = add i32 %.039.us, %2                     ; 2 uses
  %i.t = load i32, ptr %i.k, align 16
  %.not.i.us = icmp eq i32 %i.t, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph41.split.us
  %i.u = and i32 %i.s, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph41.split.us
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = load i32, ptr %i.n, align 16
  %i.x = and i32 %i.w, %i.s
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i.us = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ]
  %i.y = zext i32 %.sink7.i.us to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.y
  %.0.i.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.i.us to i32
  %i.ab = add i32 %.03137.us, %i.f
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.d
  %.02735.us = phi i32 [ %i.o, %cirrus_src.exit.us ], [ %i.aq, %bb.d ] ; 2 uses
  %.02934.us = phi i32 [ %i.f, %cirrus_src.exit.us ], [ %i.ar, %bb.d ]
  %.03033.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.ao, %bb.d ] ; 2 uses
  %i.ac = lshr i32 %i.aa, %.02735.us
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %.val.us = load ptr, ptr %i.m, align 8
  %.val32.us = load i32, ptr %i.n, align 16
  %i.ah = and i32 %.03033.us, -4
  %i.ai = and i32 %i.ah, %.val32.us
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = xor i32 %i.al, -1
  %i.an = or i32 %i.ag, %i.am
  store i32 %i.an, ptr %i.ak, align 4
  %i.ao = add i32 %.03033.us, 4
  %i.ap = add nuw nsw i32 %.02735.us, 7
  %i.aq = and i32 %i.ap, 7
  %i.ar = add nuw nsw i32 %.02934.us, 4           ; 2 uses
  %i.as = icmp slt i32 %i.ar, %5
  br i1 %i.as, label %bb.d, label %._crit_edge.us, !llvm.loop !594

._crit_edge.us:                                   ; preds = %bb.d
  %i.at = add nuw nsw i32 %.039.us, 1
  %i.au = add i32 %.03137.us, %3
  %i.av = add nuw nsw i32 %.02838.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %6
  br i1 %exitcond.not, label %._crit_edge42, label %.lr.ph41.split.us, !llvm.loop !595

._crit_edge42:                                    ; preds = %._crit_edge.us, %.lr.ph41, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_notsrc_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 7
  %i.e = zext nneg i8 %i.d to i32                 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 70692
  %i.g = load <2 x i32>, ptr %i.f, align 4
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.h, ptr %i.a, align 8
  %i.i = icmp sgt i32 %6, 0
  br i1 %i.i, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.l = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 70592      ; 4 uses
  %i.n = xor i32 %i.e, 7                          ; 2 uses
  %i.o = icmp sgt i32 %5, %i.e
  br i1 %i.o, label %.lr.ph41.split.us.preheader, label %._crit_edge42

.lr.ph41.split.us.preheader:                      ; preds = %.lr.ph41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.q = load i32, ptr %i.p, align 16
  %i.r = sub i32 %5, %i.e
  %.neg = add nuw nsw i32 %i.e, 1
  %xtraiter = and i32 %i.r, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.s = sub nsw i32 6, %i.e
  %i.t = and i32 %i.s, 7
  %i.u = add nuw nsw i32 %i.e, 1
  %i.v = icmp eq i32 %5, %.neg
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %._crit_edge.us
  %.039.us.in = phi i32 [ %i.bs, %._crit_edge.us ], [ %i.q, %.lr.ph41.split.us.preheader ]
  %.02838.us = phi i32 [ %i.bu, %._crit_edge.us ], [ 0, %.lr.ph41.split.us.preheader ]
  %.03137.us = phi i32 [ %i.bt, %._crit_edge.us ], [ %1, %.lr.ph41.split.us.preheader ] ; 2 uses
  %.039.us = and i32 %.039.us.in, 7               ; 2 uses
  %i.w = add i32 %.039.us, %2                     ; 2 uses
  %i.x = load i32, ptr %i.j, align 16
  %.not.i.us = icmp eq i32 %i.x, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph41.split.us
  %i.y = and i32 %i.w, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph41.split.us
  %i.z = load ptr, ptr %i.l, align 8
  %i.aa = load i32, ptr %i.m, align 16
  %i.ab = and i32 %i.aa, %i.w
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.ab, %bb.c ], [ %i.y, %bb.b ]
  %.sink.i.us = phi ptr [ %i.z, %bb.c ], [ %i.k, %bb.b ]
  %i.ac = zext i32 %.sink7.i.us to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.ac
  %.0.i.us = load i8, ptr %i.ad, align 1
  %i.ae = zext i8 %.0.i.us to i32                 ; 3 uses
  %i.af = add i32 %.03137.us, %i.e                ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %cirrus_src.exit.us
  %i.ag = lshr i32 %i.ae, %i.n
  %i.ah = and i32 %i.ag, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = trunc i32 %i.ak to i8
  %.val.us.prol = load ptr, ptr %i.l, align 8
  %.val32.us.prol = load i32, ptr %i.m, align 16
  %i.am = and i32 %.val32.us.prol, %i.af
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.us.prol, i64 %i.an
  %i.ap = xor i8 %i.al, -1
  store i8 %i.ap, ptr %i.ao, align 1
  %i.aq = add i32 %i.af, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %cirrus_src.exit.us
  %.02735.us.unr = phi i32 [ %i.n, %cirrus_src.exit.us ], [ %i.t, %.prol.loopexit.unr-lcssa ]
  %.02934.us.unr = phi i32 [ %i.e, %cirrus_src.exit.us ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %.03033.us.unr = phi i32 [ %i.af, %cirrus_src.exit.us ], [ %i.aq, %.prol.loopexit.unr-lcssa ]
  br i1 %i.v, label %._crit_edge.us, label %cirrus_src.exit.us.new

cirrus_src.exit.us.new:                           ; preds = %.prol.loopexit, %cirrus_src.exit.us.new
  %.02735.us = phi i32 [ %i.bq, %cirrus_src.exit.us.new ], [ %.02735.us.unr, %.prol.loopexit ] ; 3 uses
  %.02934.us = phi i32 [ %i.br, %cirrus_src.exit.us.new ], [ %.02934.us.unr, %.prol.loopexit ]
  %.03033.us = phi i32 [ %i.bo, %cirrus_src.exit.us.new ], [ %.03033.us.unr, %.prol.loopexit ] ; 3 uses
  %i.ar = lshr i32 %i.ae, %.02735.us
  %i.as = and i32 %i.ar, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = trunc i32 %i.av to i8
  %.val.us = load ptr, ptr %i.l, align 8
  %.val32.us = load i32, ptr %i.m, align 16
  %i.ax = and i32 %.val32.us, %.03033.us
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.ay
  %i.ba = xor i8 %i.aw, -1
  store i8 %i.ba, ptr %i.az, align 1
  %i.bb = add i32 %.03033.us, 1
  %i.bc = add nuw nsw i32 %.02735.us, 7
  %i.bd = and i32 %i.bc, 7
  %i.be = lshr i32 %i.ae, %i.bd
  %i.bf = and i32 %i.be, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = trunc i32 %i.bi to i8
  %.val.us.1 = load ptr, ptr %i.l, align 8
  %.val32.us.1 = load i32, ptr %i.m, align 16
  %i.bk = and i32 %.val32.us.1, %i.bb
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.us.1, i64 %i.bl
  %i.bn = xor i8 %i.bj, -1
  store i8 %i.bn, ptr %i.bm, align 1
  %i.bo = add i32 %.03033.us, 2
  %i.bp = add nsw i32 %.02735.us, 6
  %i.bq = and i32 %i.bp, 7
  %i.br = add nuw nsw i32 %.02934.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.br, %5
  br i1 %exitcond.not.1, label %._crit_edge.us, label %cirrus_src.exit.us.new, !llvm.loop !596

._crit_edge.us:                                   ; preds = %cirrus_src.exit.us.new, %.prol.loopexit
  %i.bs = add nuw nsw i32 %.039.us, 1
  %i.bt = add i32 %.03137.us, %3
  %i.bu = add nuw nsw i32 %.02838.us, 1           ; 2 uses
  %exitcond50.not = icmp eq i32 %i.bu, %6
  br i1 %exitcond50.not, label %._crit_edge42, label %.lr.ph41.split.us, !llvm.loop !597

._crit_edge42:                                    ; preds = %._crit_edge.us, %.lr.ph41, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_notsrc_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 7
  %i.e = zext nneg i8 %i.d to i32                 ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 1                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 70692
  %i.h = load <2 x i32>, ptr %i.g, align 4
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.i, ptr %i.a, align 8
  %i.j = icmp sgt i32 %6, 0
  br i1 %i.j, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 70592      ; 2 uses
  %i.o = xor i32 %i.e, 7
  %i.p = icmp slt i32 %i.f, %5
  br i1 %i.p, label %.lr.ph41.split.us.preheader, label %._crit_edge42

.lr.ph41.split.us.preheader:                      ; preds = %.lr.ph41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.r = load i32, ptr %i.q, align 16
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %._crit_edge.us
  %.039.us.in = phi i32 [ %i.as, %._crit_edge.us ], [ %i.r, %.lr.ph41.split.us.preheader ]
  %.02838.us = phi i32 [ %i.au, %._crit_edge.us ], [ 0, %.lr.ph41.split.us.preheader ]
  %.03137.us = phi i32 [ %i.at, %._crit_edge.us ], [ %1, %.lr.ph41.split.us.preheader ] ; 2 uses
  %.039.us = and i32 %.039.us.in, 7               ; 2 uses
  %i.s = add i32 %.039.us, %2                     ; 2 uses
  %i.t = load i32, ptr %i.k, align 16
  %.not.i.us = icmp eq i32 %i.t, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph41.split.us
  %i.u = and i32 %i.s, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph41.split.us
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = load i32, ptr %i.n, align 16
  %i.x = and i32 %i.w, %i.s
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i.us = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ]
  %i.y = zext i32 %.sink7.i.us to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.y
  %.0.i.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.i.us to i32
  %i.ab = add i32 %.03137.us, %i.f
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.d
  %.02735.us = phi i32 [ %i.o, %cirrus_src.exit.us ], [ %i.ap, %bb.d ] ; 2 uses
  %.02934.us = phi i32 [ %i.f, %cirrus_src.exit.us ], [ %i.aq, %bb.d ]
  %.03033.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.an, %bb.d ] ; 2 uses
  %i.ac = lshr i32 %i.aa, %.02735.us
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = trunc i32 %i.ag to i16
  %.val.us = load ptr, ptr %i.m, align 8
  %.val32.us = load i32, ptr %i.n, align 16
  %i.ai = and i32 %.03033.us, -2
  %i.aj = and i32 %i.ai, %.val32.us
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.ak
  %i.am = xor i16 %i.ah, -1
  store i16 %i.am, ptr %i.al, align 2
  %i.an = add i32 %.03033.us, 2
  %i.ao = add nuw nsw i32 %.02735.us, 7
  %i.ap = and i32 %i.ao, 7
  %i.aq = add nuw nsw i32 %.02934.us, 2           ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %5
  br i1 %i.ar, label %bb.d, label %._crit_edge.us, !llvm.loop !598

end_hunk_6
begin_hunk_7_@cirrus_colorexpand_pattern_notsrc_and_notdst_24:bb.a
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph53.split.us
  %i.u = and i32 %i.s, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph53.split.us
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = load i32, ptr %i.n, align 16
  %i.x = and i32 %i.w, %i.s
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i.us = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ]
  %i.y = zext i32 %.sink7.i.us to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.y
  %.0.i.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.i.us to i32
  %i.ab = add i32 %.03749.us, %i.f
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.d
  %.03347.us = phi i32 [ %i.o, %cirrus_src.exit.us ], [ %i.bf, %bb.d ] ; 2 uses
  %.03546.us = phi i32 [ %i.f, %cirrus_src.exit.us ], [ %i.bg, %bb.d ]
  %.03645.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.bd, %bb.d ] ; 4 uses
  %i.ac = lshr i32 %i.aa, %.03347.us
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = trunc i32 %i.ag to i8
  %.val41.us = load ptr, ptr %i.m, align 8
  %.val42.us = load i32, ptr %i.n, align 16
  %i.ai = and i32 %.val42.us, %.03645.us
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val41.us, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1
  %.demorgan5.i.us = or i8 %i.al, %i.ah
  %i.am = xor i8 %.demorgan5.i.us, -1
  store i8 %i.am, ptr %i.ak, align 1
  %i.an = add i32 %.03645.us, 1
  %i.ao = lshr i32 %i.ag, 8
  %i.ap = trunc i32 %i.ao to i8
  %.val39.us = load ptr, ptr %i.m, align 8
  %.val40.us = load i32, ptr %i.n, align 16
  %i.aq = and i32 %.val40.us, %i.an
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.val39.us, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1
  %.demorgan5.i43.us = or i8 %i.at, %i.ap
  %i.au = xor i8 %.demorgan5.i43.us, -1
  store i8 %i.au, ptr %i.as, align 1
  %i.av = add i32 %.03645.us, 2
  %i.aw = lshr i32 %i.ag, 16
  %i.ax = trunc i32 %i.aw to i8
  %.val.us = load ptr, ptr %i.m, align 8
  %.val38.us = load i32, ptr %i.n, align 16
  %i.ay = and i32 %.val38.us, %i.av
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1
  %.demorgan5.i44.us = or i8 %i.bb, %i.ax
  %i.bc = xor i8 %.demorgan5.i44.us, -1
  store i8 %i.bc, ptr %i.ba, align 1
  %i.bd = add i32 %.03645.us, 3
  %i.be = add nuw nsw i32 %.03347.us, 7
  %i.bf = and i32 %i.be, 7
  %i.bg = add i32 %.03546.us, 3                   ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %5
  br i1 %i.bh, label %bb.d, label %._crit_edge.us, !llvm.loop !616

._crit_edge.us:                                   ; preds = %bb.d
  %i.bi = add nuw nsw i32 %.051.us, 1
  %i.bj = add i32 %.03749.us, %3
  %i.bk = add nuw nsw i32 %.03450.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bk, %6
  br i1 %exitcond.not, label %._crit_edge54, label %.lr.ph53.split.us, !llvm.loop !617

._crit_edge54:                                    ; preds = %._crit_edge.us, %.lr.ph53, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_colorexpand_pattern_notsrc_and_notdst_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 7
  %i.e = zext nneg i8 %i.d to i32                 ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 2                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 70692
  %i.h = load <2 x i32>, ptr %i.g, align 4
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.i, ptr %i.a, align 8
  %i.j = icmp sgt i32 %6, 0
  br i1 %i.j, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 70592      ; 2 uses
  %i.o = xor i32 %i.e, 7
  %i.p = icmp slt i32 %i.f, %5
  br i1 %i.p, label %.lr.ph41.split.us.preheader, label %._crit_edge42

.lr.ph41.split.us.preheader:                      ; preds = %.lr.ph41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.r = load i32, ptr %i.q, align 16
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %._crit_edge.us
  %.039.us.in = phi i32 [ %i.as, %._crit_edge.us ], [ %i.r, %.lr.ph41.split.us.preheader ]
  %.02838.us = phi i32 [ %i.au, %._crit_edge.us ], [ 0, %.lr.ph41.split.us.preheader ]
  %.03137.us = phi i32 [ %i.at, %._crit_edge.us ], [ %1, %.lr.ph41.split.us.preheader ] ; 2 uses
  %.039.us = and i32 %.039.us.in, 7               ; 2 uses
  %i.s = add i32 %.039.us, %2                     ; 2 uses
  %i.t = load i32, ptr %i.k, align 16
  %.not.i.us = icmp eq i32 %i.t, 0
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph41.split.us
  %i.u = and i32 %i.s, 8191
  br label %cirrus_src.exit.us

bb.c:                                             ; preds = %.lr.ph41.split.us
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = load i32, ptr %i.n, align 16
  %i.x = and i32 %i.w, %i.s
  br label %cirrus_src.exit.us

cirrus_src.exit.us:                               ; preds = %bb.c, %bb.b
  %.sink7.i.us = phi i32 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i.us = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ]
  %i.y = zext i32 %.sink7.i.us to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.us, i64 %i.y
  %.0.i.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.i.us to i32
  %i.ab = add i32 %.03137.us, %i.f
  br label %bb.d

bb.d:                                             ; preds = %cirrus_src.exit.us, %bb.d
  %.02735.us = phi i32 [ %i.o, %cirrus_src.exit.us ], [ %i.ap, %bb.d ] ; 2 uses
  %.02934.us = phi i32 [ %i.f, %cirrus_src.exit.us ], [ %i.aq, %bb.d ]
  %.03033.us = phi i32 [ %i.ab, %cirrus_src.exit.us ], [ %i.an, %bb.d ] ; 2 uses
  %i.ac = lshr i32 %i.aa, %.02735.us
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %.val.us = load ptr, ptr %i.m, align 8
  %.val32.us = load i32, ptr %i.n, align 16
  %i.ah = and i32 %.03033.us, -4
  %i.ai = and i32 %i.ah, %.val32.us
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %.demorgan.i.us = or i32 %i.al, %i.ag
  %i.am = xor i32 %.demorgan.i.us, -1
  store i32 %i.am, ptr %i.ak, align 4
  %i.an = add i32 %.03033.us, 4
  %i.ao = add nuw nsw i32 %.02735.us, 7
  %i.ap = and i32 %i.ao, 7
  %i.aq = add nuw nsw i32 %.02934.us, 4           ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %5
  br i1 %i.ar, label %bb.d, label %._crit_edge.us, !llvm.loop !618

._crit_edge.us:                                   ; preds = %bb.d
  %i.as = add nuw nsw i32 %.039.us, 1
  %i.at = add i32 %.03137.us, %3
  %i.au = add nuw nsw i32 %.02838.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %6
  br i1 %exitcond.not, label %._crit_edge42, label %.lr.ph41.split.us, !llvm.loop !619

._crit_edge42:                                    ; preds = %._crit_edge.us, %.lr.ph41, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_0_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 6 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge39.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit.lr.ph.preheader, label %._crit_edge39.split

cirrus_src.exit.lr.ph.preheader:                  ; preds = %.lr.ph
  %i.i = sub i32 %5, %i.d
  %.neg = add nuw nsw i32 %i.d, 1
  %xtraiter = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.j = add nuw nsw i32 %i.d, 1
  %i.k = icmp eq i32 %5, %.neg
  br label %cirrus_src.exit.lr.ph

cirrus_src.exit.lr.ph:                            ; preds = %cirrus_src.exit.lr.ph.preheader, %._crit_edge
  %.02636 = phi i32 [ %i.aa, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph.preheader ]
  %.02935 = phi i32 [ %i.z, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph.preheader ] ; 2 uses
  %i.l = add i32 %.02935, %i.d                    ; 3 uses
  br i1 %lcmp.mod.not, label %cirrus_src.exit.prol.loopexit, label %cirrus_src.exit.prol

cirrus_src.exit.prol:                             ; preds = %cirrus_src.exit.lr.ph
  %.val.prol = load ptr, ptr %i.g, align 8
  %.val30.prol = load i32, ptr %i.h, align 16
  %i.m = and i32 %.val30.prol, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val.prol, i64 %i.n
  store i8 0, ptr %i.o, align 1
  %i.p = add i32 %i.l, 1
  br label %cirrus_src.exit.prol.loopexit

cirrus_src.exit.prol.loopexit:                    ; preds = %cirrus_src.exit.prol, %cirrus_src.exit.lr.ph
  %.02732.unr = phi i32 [ %i.d, %cirrus_src.exit.lr.ph ], [ %i.j, %cirrus_src.exit.prol ]
  %.02831.unr = phi i32 [ %i.l, %cirrus_src.exit.lr.ph ], [ %i.p, %cirrus_src.exit.prol ]
  br i1 %i.k, label %._crit_edge, label %cirrus_src.exit

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.prol.loopexit, %cirrus_src.exit
  %.02732 = phi i32 [ %i.y, %cirrus_src.exit ], [ %.02732.unr, %cirrus_src.exit.prol.loopexit ]
  %.02831 = phi i32 [ %i.x, %cirrus_src.exit ], [ %.02831.unr, %cirrus_src.exit.prol.loopexit ] ; 3 uses
  %.val = load ptr, ptr %i.g, align 8
  %.val30 = load i32, ptr %i.h, align 16
  %i.q = and i32 %.val30, %.02831
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  store i8 0, ptr %i.s, align 1
  %i.t = add i32 %.02831, 1
  %.val.1 = load ptr, ptr %i.g, align 8
  %.val30.1 = load i32, ptr %i.h, align 16
  %i.u = and i32 %.val30.1, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.val.1, i64 %i.v
  store i8 0, ptr %i.w, align 1
  %i.x = add i32 %.02831, 2
  %i.y = add nuw nsw i32 %.02732, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.y, %5
  br i1 %exitcond.not.1, label %._crit_edge, label %cirrus_src.exit, !llvm.loop !620

._crit_edge:                                      ; preds = %cirrus_src.exit, %cirrus_src.exit.prol.loopexit
  %i.z = add i32 %.02935, %3
  %i.aa = add nuw nsw i32 %.02636, 1              ; 2 uses
  %exitcond40.not = icmp eq i32 %i.aa, %6
  br i1 %exitcond40.not, label %._crit_edge39.split, label %cirrus_src.exit.lr.ph, !llvm.loop !621

._crit_edge39.split:                              ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_0_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 1
  %i.d = and i8 %i.c, 14
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge39.split

.lr.ph:                                           ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src16.exit.lr.ph, label %._crit_edge39.split

cirrus_src16.exit.lr.ph:                          ; preds = %.lr.ph, %._crit_edge
  %.02636 = phi i32 [ %i.s, %._crit_edge ], [ 0, %.lr.ph ]
  %.02935 = phi i32 [ %i.r, %._crit_edge ], [ %1, %.lr.ph ] ; 2 uses
  %i.j = add i32 %.02935, %i.e
  br label %cirrus_src16.exit

cirrus_src16.exit:                                ; preds = %cirrus_src16.exit.lr.ph, %cirrus_src16.exit
  %.02732 = phi i32 [ %i.e, %cirrus_src16.exit.lr.ph ], [ %i.p, %cirrus_src16.exit ]
  %.02831 = phi i32 [ %i.j, %cirrus_src16.exit.lr.ph ], [ %i.o, %cirrus_src16.exit ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val30 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.02831, -2
  %i.l = and i32 %i.k, %.val30
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  store i16 0, ptr %i.n, align 2
  %i.o = add i32 %.02831, 2
  %i.p = add nuw nsw i32 %.02732, 2               ; 2 uses
  %i.q = icmp slt i32 %i.p, %5
  br i1 %i.q, label %cirrus_src16.exit, label %._crit_edge, !llvm.loop !622

._crit_edge:                                      ; preds = %cirrus_src16.exit
  %i.r = add i32 %.02935, %3
  %i.s = add nuw nsw i32 %.02636, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %6
  br i1 %exitcond.not, label %._crit_edge39.split, label %cirrus_src16.exit.lr.ph, !llvm.loop !623

._crit_edge39.split:                              ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_0_24(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 31
  %i.d = zext nneg i8 %i.c to i32                 ; 3 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit55.lr.ph, label %._crit_edge68.split

cirrus_src.exit55.lr.ph:                          ; preds = %.lr.ph, %._crit_edge
  %.065 = phi i32 [ %i.x, %._crit_edge ], [ %1, %.lr.ph ] ; 2 uses
  %.03864 = phi i32 [ %i.y, %._crit_edge ], [ 0, %.lr.ph ]
  %i.i = add i32 %.065, %i.d
  br label %cirrus_src.exit55

cirrus_src.exit55:                                ; preds = %cirrus_src.exit55.lr.ph, %cirrus_src.exit55
  %.03961 = phi i32 [ %i.d, %cirrus_src.exit55.lr.ph ], [ %i.v, %cirrus_src.exit55 ]
  %.04060 = phi i32 [ %i.i, %cirrus_src.exit55.lr.ph ], [ %i.u, %cirrus_src.exit55 ] ; 4 uses
  %.val44 = load ptr, ptr %i.g, align 8
  %.val45 = load i32, ptr %i.h, align 16
  %i.j = and i32 %.val45, %.04060
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val44, i64 %i.k
  store i8 0, ptr %i.l, align 1
  %i.m = add i32 %.04060, 1
  %.val42 = load ptr, ptr %i.g, align 8
  %.val43 = load i32, ptr %i.h, align 16
  %i.n = and i32 %.val43, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.o
  store i8 0, ptr %i.p, align 1
  %i.q = add i32 %.04060, 2
  %.val = load ptr, ptr %i.g, align 8
  %.val41 = load i32, ptr %i.h, align 16
  %i.r = and i32 %.val41, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  store i8 0, ptr %i.t, align 1
  %i.u = add i32 %.04060, 3
  %i.v = add i32 %.03961, 3                       ; 2 uses
  %i.w = icmp slt i32 %i.v, %5
  br i1 %i.w, label %cirrus_src.exit55, label %._crit_edge, !llvm.loop !624

._crit_edge:                                      ; preds = %cirrus_src.exit55
  %i.x = add i32 %.065, %3
  %i.y = add nuw nsw i32 %.03864, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %6
  br i1 %exitcond.not, label %._crit_edge68.split, label %cirrus_src.exit55.lr.ph, !llvm.loop !625

._crit_edge68.split:                              ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_0_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge39.split

.lr.ph:                                           ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src32.exit.lr.ph, label %._crit_edge39.split

cirrus_src32.exit.lr.ph:                          ; preds = %.lr.ph, %._crit_edge
  %.02636 = phi i32 [ %i.s, %._crit_edge ], [ 0, %.lr.ph ]
  %.02935 = phi i32 [ %i.r, %._crit_edge ], [ %1, %.lr.ph ] ; 2 uses
  %i.j = add i32 %.02935, %i.e
  br label %cirrus_src32.exit

cirrus_src32.exit:                                ; preds = %cirrus_src32.exit.lr.ph, %cirrus_src32.exit
  %.02732 = phi i32 [ %i.e, %cirrus_src32.exit.lr.ph ], [ %i.p, %cirrus_src32.exit ]
  %.02831 = phi i32 [ %i.j, %cirrus_src32.exit.lr.ph ], [ %i.o, %cirrus_src32.exit ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val30 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.02831, -4
  %i.l = and i32 %i.k, %.val30
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  store i32 0, ptr %i.n, align 4
end_hunk_7
begin_hunk_8_@cirrus_patternfill_src_and_notdst_24:bb.a
  %.03970 = phi i32 [ %i.d, %.lr.ph ], [ %i.bl, %cirrus_src.exit55 ]
  %.04069 = phi i32 [ %i.m, %.lr.ph ], [ %i.bk, %cirrus_src.exit55 ] ; 4 uses
  %i.p = mul nuw nsw i32 %.03671, 3
  %i.q = add i32 %i.o, %i.p                       ; 6 uses
  %i.r = load i32, ptr %i.g, align 16
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = and i32 %i.q, 8191
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.v = add i32 %i.q, 1
  %i.w = and i32 %i.v, 8191
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %i.z = add i32 %i.q, 2
  %i.aa = and i32 %i.z, 8191
  %.val44.pre = load ptr, ptr %i.i, align 8
  %.val45.pre = load i32, ptr %i.j, align 16
  br label %cirrus_src.exit55

bb.d:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.ac = load i32, ptr %i.j, align 16            ; 4 uses
  %i.ad = and i32 %i.ac, %i.q
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = add i32 %i.q, 1
  %i.ah = and i32 %i.ac, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ai
  %i.ak = add i32 %i.q, 2
  %i.al = and i32 %i.ac, %i.ak
  br label %cirrus_src.exit55

cirrus_src.exit55:                                ; preds = %bb.c, %bb.d
  %.val45 = phi i32 [ %i.ac, %bb.d ], [ %.val45.pre, %bb.c ]
  %.val44 = phi ptr [ %i.ab, %bb.d ], [ %.val44.pre, %bb.c ]
  %.0.i4967.in = phi ptr [ %i.aj, %bb.d ], [ %i.y, %bb.c ]
  %.0.i5965.in = phi ptr [ %i.af, %bb.d ], [ %i.u, %bb.c ]
  %.sink7.i52 = phi i32 [ %i.al, %bb.d ], [ %i.aa, %bb.c ]
  %.sink.i53 = phi ptr [ %i.ab, %bb.d ], [ %i.h, %bb.c ]
  %.0.i5965 = load i8, ptr %.0.i5965.in, align 1
  %.0.i4967 = load i8, ptr %.0.i4967.in, align 1
  %i.am = zext i32 %.sink7.i52 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.sink.i53, i64 %i.am
  %.0.i54 = load i8, ptr %i.an, align 1
  %i.ao = add nuw nsw i32 %.03671, 1
  %i.ap = and i32 %i.ao, 7
  %i.aq = and i32 %.val45, %.04069
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.val44, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1
  %i.au = xor i8 %i.at, -1
  %i.av = and i8 %.0.i5965, %i.au
  store i8 %i.av, ptr %i.as, align 1
  %i.aw = add i32 %.04069, 1
  %.val42 = load ptr, ptr %i.i, align 8
  %.val43 = load i32, ptr %i.j, align 16
  %i.ax = and i32 %.val43, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = xor i8 %i.ba, -1
  %i.bc = and i8 %.0.i4967, %i.bb
  store i8 %i.bc, ptr %i.az, align 1
  %i.bd = add i32 %.04069, 2
  %.val = load ptr, ptr %i.i, align 8
  %.val41 = load i32, ptr %i.j, align 16
  %i.be = and i32 %.val41, %i.bd
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = xor i8 %i.bh, -1
  %i.bj = and i8 %.0.i54, %i.bi
  store i8 %i.bj, ptr %i.bg, align 1
  %i.bk = add i32 %.04069, 3
  %i.bl = add i32 %.03970, 3                      ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %5
  br i1 %i.bm, label %bb.b, label %._crit_edge, !llvm.loop !640

._crit_edge:                                      ; preds = %cirrus_src.exit55
  %i.bn = add nuw nsw i32 %.03775, 1
  %i.bo = add i32 %.074, %3
  %i.bp = add nuw nsw i32 %.03873, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %6
  br i1 %exitcond.not, label %._crit_edge78.split, label %.lr.ph, !llvm.loop !641

._crit_edge78.split:                              ; preds = %._crit_edge, %.lr.ph77, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_src_and_notdst_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 4 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 70592      ; 2 uses
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge40.split

.lr.ph.preheader:                                 ; preds = %.lr.ph39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.m = load i32, ptr %i.l, align 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.02537.in = phi i32 [ %i.am, %._crit_edge ], [ %i.m, %.lr.ph.preheader ]
  %.02636 = phi i32 [ %i.ao, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %.02935 = phi i32 [ %i.an, %._crit_edge ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.02537 = and i32 %.02537.in, 7                 ; 2 uses
  %i.n = add i32 %.02935, %i.e
  %i.o = shl nuw nsw i32 %.02537, 5
  %i.p = add i32 %i.o, %2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %cirrus_src32.exit
  %.033 = phi i32 [ %i.e, %.lr.ph ], [ %i.ab, %cirrus_src32.exit ] ; 2 uses
  %.02732 = phi i32 [ %i.e, %.lr.ph ], [ %i.ak, %cirrus_src32.exit ]
  %.02831 = phi i32 [ %i.n, %.lr.ph ], [ %i.aj, %cirrus_src32.exit ] ; 2 uses
  %i.q = add i32 %i.p, %.033                      ; 2 uses
  %i.r = load i32, ptr %i.h, align 16
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = and i32 %i.q, 8188
  %.val.pre = load ptr, ptr %i.j, align 8
  %.val30.pre = load i32, ptr %i.k, align 16
  br label %cirrus_src32.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.u = load i32, ptr %i.k, align 16             ; 2 uses
  %i.v = and i32 %i.q, -4
  %i.w = and i32 %i.v, %i.u
  br label %cirrus_src32.exit

cirrus_src32.exit:                                ; preds = %bb.c, %bb.d
  %.val30 = phi i32 [ %i.u, %bb.d ], [ %.val30.pre, %bb.c ]
  %.val = phi ptr [ %i.t, %bb.d ], [ %.val.pre, %bb.c ]
  %.sink7.i = phi i32 [ %i.w, %bb.d ], [ %i.s, %bb.c ]
  %.sink.i = phi ptr [ %i.t, %bb.d ], [ %i.i, %bb.c ]
  %i.x = zext i32 %.sink7.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add nuw nsw i32 %.033, 4
  %i.ab = and i32 %i.aa, 31
  %i.ac = and i32 %.02831, -4
  %i.ad = and i32 %i.ac, %.val30
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = xor i32 %i.ag, -1
  %i.ai = and i32 %i.z, %i.ah
  store i32 %i.ai, ptr %i.af, align 4
  %i.aj = add i32 %.02831, 4
  %i.ak = add nuw nsw i32 %.02732, 4              ; 2 uses
  %i.al = icmp slt i32 %i.ak, %5
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !642

._crit_edge:                                      ; preds = %cirrus_src32.exit
  %i.am = add nuw nsw i32 %.02537, 1
  %i.an = add i32 %.02935, %3
  %i.ao = add nuw nsw i32 %.02636, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %6
  br i1 %exitcond.not, label %._crit_edge40.split, label %.lr.ph, !llvm.loop !643

._crit_edge40.split:                              ; preds = %._crit_edge, %.lr.ph39, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_notdst_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 6 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge39.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit.lr.ph.preheader, label %._crit_edge39.split

cirrus_src.exit.lr.ph.preheader:                  ; preds = %.lr.ph
  %i.i = sub i32 %5, %i.d
  %.neg = add nuw nsw i32 %i.d, 1
  %xtraiter = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.j = add nuw nsw i32 %i.d, 1
  %i.k = icmp eq i32 %5, %.neg
  br label %cirrus_src.exit.lr.ph

cirrus_src.exit.lr.ph:                            ; preds = %cirrus_src.exit.lr.ph.preheader, %._crit_edge
  %.02636 = phi i32 [ %i.ag, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph.preheader ]
  %.02935 = phi i32 [ %i.af, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph.preheader ] ; 2 uses
  %i.l = add i32 %.02935, %i.d                    ; 3 uses
  br i1 %lcmp.mod.not, label %cirrus_src.exit.prol.loopexit, label %cirrus_src.exit.prol

cirrus_src.exit.prol:                             ; preds = %cirrus_src.exit.lr.ph
  %.val.prol = load ptr, ptr %i.g, align 8
  %.val30.prol = load i32, ptr %i.h, align 16
  %i.m = and i32 %.val30.prol, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val.prol, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = xor i8 %i.p, -1
  store i8 %i.q, ptr %i.o, align 1
  %i.r = add i32 %i.l, 1
  br label %cirrus_src.exit.prol.loopexit

cirrus_src.exit.prol.loopexit:                    ; preds = %cirrus_src.exit.prol, %cirrus_src.exit.lr.ph
  %.02732.unr = phi i32 [ %i.d, %cirrus_src.exit.lr.ph ], [ %i.j, %cirrus_src.exit.prol ]
  %.02831.unr = phi i32 [ %i.l, %cirrus_src.exit.lr.ph ], [ %i.r, %cirrus_src.exit.prol ]
  br i1 %i.k, label %._crit_edge, label %cirrus_src.exit

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.prol.loopexit, %cirrus_src.exit
  %.02732 = phi i32 [ %i.ae, %cirrus_src.exit ], [ %.02732.unr, %cirrus_src.exit.prol.loopexit ]
  %.02831 = phi i32 [ %i.ad, %cirrus_src.exit ], [ %.02831.unr, %cirrus_src.exit.prol.loopexit ] ; 3 uses
  %.val = load ptr, ptr %i.g, align 8
  %.val30 = load i32, ptr %i.h, align 16
  %i.s = and i32 %.val30, %.02831
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = xor i8 %i.v, -1
  store i8 %i.w, ptr %i.u, align 1
  %i.x = add i32 %.02831, 1
  %.val.1 = load ptr, ptr %i.g, align 8
  %.val30.1 = load i32, ptr %i.h, align 16
  %i.y = and i32 %.val30.1, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.1, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = xor i8 %i.ab, -1
  store i8 %i.ac, ptr %i.aa, align 1
  %i.ad = add i32 %.02831, 2
  %i.ae = add nuw nsw i32 %.02732, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ae, %5
  br i1 %exitcond.not.1, label %._crit_edge, label %cirrus_src.exit, !llvm.loop !644

._crit_edge:                                      ; preds = %cirrus_src.exit, %cirrus_src.exit.prol.loopexit
  %i.af = add i32 %.02935, %3
  %i.ag = add nuw nsw i32 %.02636, 1              ; 2 uses
  %exitcond40.not = icmp eq i32 %i.ag, %6
  br i1 %exitcond40.not, label %._crit_edge39.split, label %cirrus_src.exit.lr.ph, !llvm.loop !645

._crit_edge39.split:                              ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_notdst_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 1
  %i.d = and i8 %i.c, 14
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge39.split

.lr.ph:                                           ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src16.exit.lr.ph, label %._crit_edge39.split

cirrus_src16.exit.lr.ph:                          ; preds = %.lr.ph, %._crit_edge
  %.02636 = phi i32 [ %i.u, %._crit_edge ], [ 0, %.lr.ph ]
  %.02935 = phi i32 [ %i.t, %._crit_edge ], [ %1, %.lr.ph ] ; 2 uses
  %i.j = add i32 %.02935, %i.e
  br label %cirrus_src16.exit

cirrus_src16.exit:                                ; preds = %cirrus_src16.exit.lr.ph, %cirrus_src16.exit
  %.02732 = phi i32 [ %i.e, %cirrus_src16.exit.lr.ph ], [ %i.r, %cirrus_src16.exit ]
  %.02831 = phi i32 [ %i.j, %cirrus_src16.exit.lr.ph ], [ %i.q, %cirrus_src16.exit ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val30 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.02831, -2
  %i.l = and i32 %i.k, %.val30
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = xor i16 %i.o, -1
  store i16 %i.p, ptr %i.n, align 2
  %i.q = add i32 %.02831, 2
  %i.r = add nuw nsw i32 %.02732, 2               ; 2 uses
  %i.s = icmp slt i32 %i.r, %5
  br i1 %i.s, label %cirrus_src16.exit, label %._crit_edge, !llvm.loop !646

._crit_edge:                                      ; preds = %cirrus_src16.exit
  %i.t = add i32 %.02935, %3
  %i.u = add nuw nsw i32 %.02636, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %6
  br i1 %exitcond.not, label %._crit_edge39.split, label %cirrus_src16.exit.lr.ph, !llvm.loop !647

._crit_edge39.split:                              ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_notdst_24(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 31
  %i.d = zext nneg i8 %i.c to i32                 ; 3 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit55.lr.ph, label %._crit_edge68.split

cirrus_src.exit55.lr.ph:                          ; preds = %.lr.ph, %._crit_edge
  %.065 = phi i32 [ %i.ad, %._crit_edge ], [ %1, %.lr.ph ] ; 2 uses
  %.03864 = phi i32 [ %i.ae, %._crit_edge ], [ 0, %.lr.ph ]
  %i.i = add i32 %.065, %i.d
  br label %cirrus_src.exit55

cirrus_src.exit55:                                ; preds = %cirrus_src.exit55.lr.ph, %cirrus_src.exit55
  %.03961 = phi i32 [ %i.d, %cirrus_src.exit55.lr.ph ], [ %i.ab, %cirrus_src.exit55 ]
  %.04060 = phi i32 [ %i.i, %cirrus_src.exit55.lr.ph ], [ %i.aa, %cirrus_src.exit55 ] ; 4 uses
  %.val44 = load ptr, ptr %i.g, align 8
  %.val45 = load i32, ptr %i.h, align 16
  %i.j = and i32 %.val45, %.04060
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val44, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = xor i8 %i.m, -1
  store i8 %i.n, ptr %i.l, align 1
  %i.o = add i32 %.04060, 1
  %.val42 = load ptr, ptr %i.g, align 8
  %.val43 = load i32, ptr %i.h, align 16
  %i.p = and i32 %.val43, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = xor i8 %i.s, -1
  store i8 %i.t, ptr %i.r, align 1
  %i.u = add i32 %.04060, 2
  %.val = load ptr, ptr %i.g, align 8
  %.val41 = load i32, ptr %i.h, align 16
  %i.v = and i32 %.val41, %i.u
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = xor i8 %i.y, -1
  store i8 %i.z, ptr %i.x, align 1
  %i.aa = add i32 %.04060, 3
  %i.ab = add i32 %.03961, 3                      ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %5
  br i1 %i.ac, label %cirrus_src.exit55, label %._crit_edge, !llvm.loop !648

._crit_edge:                                      ; preds = %cirrus_src.exit55
  %i.ad = add i32 %.065, %3
  %i.ae = add nuw nsw i32 %.03864, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %6
  br i1 %exitcond.not, label %._crit_edge68.split, label %cirrus_src.exit55.lr.ph, !llvm.loop !649

._crit_edge68.split:                              ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_notdst_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge39.split

.lr.ph:                                           ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src32.exit.lr.ph, label %._crit_edge39.split

cirrus_src32.exit.lr.ph:                          ; preds = %.lr.ph, %._crit_edge
  %.02636 = phi i32 [ %i.u, %._crit_edge ], [ 0, %.lr.ph ]
end_hunk_8
begin_hunk_9_@cirrus_patternfill_src_24:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.03775.in = phi i32 [ %i.be, %._crit_edge ], [ %i.l, %.lr.ph.preheader ]
  %.074 = phi i32 [ %i.bf, %._crit_edge ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.03873 = phi i32 [ %i.bg, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %.03775 = and i32 %.03775.in, 7                 ; 2 uses
  %i.m = add i32 %.074, %i.d
  %i.n = shl nuw nsw i32 %.03775, 5
  %i.o = add i32 %i.n, %2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %cirrus_src.exit55
  %.03671 = phi i32 [ %i.d, %.lr.ph ], [ %i.ap, %cirrus_src.exit55 ] ; 2 uses
  %.03970 = phi i32 [ %i.d, %.lr.ph ], [ %i.bc, %cirrus_src.exit55 ]
  %.04069 = phi i32 [ %i.m, %.lr.ph ], [ %i.bb, %cirrus_src.exit55 ] ; 4 uses
  %i.p = mul nuw nsw i32 %.03671, 3
  %i.q = add i32 %i.o, %i.p                       ; 6 uses
  %i.r = load i32, ptr %i.g, align 16
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = and i32 %i.q, 8191
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.v = add i32 %i.q, 1
  %i.w = and i32 %i.v, 8191
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %i.z = add i32 %i.q, 2
  %i.aa = and i32 %i.z, 8191
  %.val44.pre = load ptr, ptr %i.i, align 8
  %.val45.pre = load i32, ptr %i.j, align 16
  br label %cirrus_src.exit55

bb.d:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.ac = load i32, ptr %i.j, align 16            ; 4 uses
  %i.ad = and i32 %i.ac, %i.q
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = add i32 %i.q, 1
  %i.ah = and i32 %i.ac, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ai
  %i.ak = add i32 %i.q, 2
  %i.al = and i32 %i.ac, %i.ak
  br label %cirrus_src.exit55

cirrus_src.exit55:                                ; preds = %bb.c, %bb.d
  %.val45 = phi i32 [ %i.ac, %bb.d ], [ %.val45.pre, %bb.c ]
  %.val44 = phi ptr [ %i.ab, %bb.d ], [ %.val44.pre, %bb.c ]
  %.0.i4967.in = phi ptr [ %i.aj, %bb.d ], [ %i.y, %bb.c ]
  %.0.i5965.in = phi ptr [ %i.af, %bb.d ], [ %i.u, %bb.c ]
  %.sink7.i52 = phi i32 [ %i.al, %bb.d ], [ %i.aa, %bb.c ]
  %.sink.i53 = phi ptr [ %i.ab, %bb.d ], [ %i.h, %bb.c ]
  %.0.i5965 = load i8, ptr %.0.i5965.in, align 1
  %.0.i4967 = load i8, ptr %.0.i4967.in, align 1
  %i.am = zext i32 %.sink7.i52 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.sink.i53, i64 %i.am
  %.0.i54 = load i8, ptr %i.an, align 1
  %i.ao = add nuw nsw i32 %.03671, 1
  %i.ap = and i32 %i.ao, 7
  %i.aq = and i32 %.val45, %.04069
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.val44, i64 %i.ar
  store i8 %.0.i5965, ptr %i.as, align 1
  %i.at = add i32 %.04069, 1
  %.val42 = load ptr, ptr %i.i, align 8
  %.val43 = load i32, ptr %i.j, align 16
  %i.au = and i32 %.val43, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.av
  store i8 %.0.i4967, ptr %i.aw, align 1
  %i.ax = add i32 %.04069, 2
  %.val = load ptr, ptr %i.i, align 8
  %.val41 = load i32, ptr %i.j, align 16
  %i.ay = and i32 %.val41, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 %i.az
  store i8 %.0.i54, ptr %i.ba, align 1
  %i.bb = add i32 %.04069, 3
  %i.bc = add i32 %.03970, 3                      ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %5
  br i1 %i.bd, label %bb.b, label %._crit_edge, !llvm.loop !656

._crit_edge:                                      ; preds = %cirrus_src.exit55
  %i.be = add nuw nsw i32 %.03775, 1
  %i.bf = add i32 %.074, %3
  %i.bg = add nuw nsw i32 %.03873, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %6
  br i1 %exitcond.not, label %._crit_edge78.split, label %.lr.ph, !llvm.loop !657

._crit_edge78.split:                              ; preds = %._crit_edge, %.lr.ph77, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_src_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 4 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 78928
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 70720
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 70592      ; 2 uses
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge40.split

.lr.ph.preheader:                                 ; preds = %.lr.ph39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 70704
  %i.m = load i32, ptr %i.l, align 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.02537.in = phi i32 [ %i.aj, %._crit_edge ], [ %i.m, %.lr.ph.preheader ]
  %.02636 = phi i32 [ %i.al, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %.02935 = phi i32 [ %i.ak, %._crit_edge ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.02537 = and i32 %.02537.in, 7                 ; 2 uses
  %i.n = add i32 %.02935, %i.e
  %i.o = shl nuw nsw i32 %.02537, 5
  %i.p = add i32 %i.o, %2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %cirrus_src32.exit
  %.033 = phi i32 [ %i.e, %.lr.ph ], [ %i.ab, %cirrus_src32.exit ] ; 2 uses
  %.02732 = phi i32 [ %i.e, %.lr.ph ], [ %i.ah, %cirrus_src32.exit ]
  %.02831 = phi i32 [ %i.n, %.lr.ph ], [ %i.ag, %cirrus_src32.exit ] ; 2 uses
  %i.q = add i32 %i.p, %.033                      ; 2 uses
  %i.r = load i32, ptr %i.h, align 16
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = and i32 %i.q, 8188
  %.val.pre = load ptr, ptr %i.j, align 8
  %.val30.pre = load i32, ptr %i.k, align 16
  br label %cirrus_src32.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.u = load i32, ptr %i.k, align 16             ; 2 uses
  %i.v = and i32 %i.q, -4
  %i.w = and i32 %i.v, %i.u
  br label %cirrus_src32.exit

cirrus_src32.exit:                                ; preds = %bb.c, %bb.d
  %.val30 = phi i32 [ %i.u, %bb.d ], [ %.val30.pre, %bb.c ]
  %.val = phi ptr [ %i.t, %bb.d ], [ %.val.pre, %bb.c ]
  %.sink7.i = phi i32 [ %i.w, %bb.d ], [ %i.s, %bb.c ]
  %.sink.i = phi ptr [ %i.t, %bb.d ], [ %i.i, %bb.c ]
  %i.x = zext i32 %.sink7.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add nuw nsw i32 %.033, 4
  %i.ab = and i32 %i.aa, 31
  %i.ac = and i32 %.02831, -4
  %i.ad = and i32 %i.ac, %.val30
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ae
  store i32 %i.z, ptr %i.af, align 4
  %i.ag = add i32 %.02831, 4
  %i.ah = add nuw nsw i32 %.02732, 4              ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %5
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !658

._crit_edge:                                      ; preds = %cirrus_src32.exit
  %i.aj = add nuw nsw i32 %.02537, 1
  %i.ak = add i32 %.02935, %3
  %i.al = add nuw nsw i32 %.02636, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %6
  br i1 %exitcond.not, label %._crit_edge40.split, label %.lr.ph, !llvm.loop !659

._crit_edge40.split:                              ; preds = %._crit_edge, %.lr.ph39, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_1_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i32                 ; 6 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge39.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit.lr.ph.preheader, label %._crit_edge39.split

cirrus_src.exit.lr.ph.preheader:                  ; preds = %.lr.ph
  %i.i = sub i32 %5, %i.d
  %.neg = add nuw nsw i32 %i.d, 1
  %xtraiter = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.j = add nuw nsw i32 %i.d, 1
  %i.k = icmp eq i32 %5, %.neg
  br label %cirrus_src.exit.lr.ph

cirrus_src.exit.lr.ph:                            ; preds = %cirrus_src.exit.lr.ph.preheader, %._crit_edge
  %.02636 = phi i32 [ %i.aa, %._crit_edge ], [ 0, %cirrus_src.exit.lr.ph.preheader ]
  %.02935 = phi i32 [ %i.z, %._crit_edge ], [ %1, %cirrus_src.exit.lr.ph.preheader ] ; 2 uses
  %i.l = add i32 %.02935, %i.d                    ; 3 uses
  br i1 %lcmp.mod.not, label %cirrus_src.exit.prol.loopexit, label %cirrus_src.exit.prol

cirrus_src.exit.prol:                             ; preds = %cirrus_src.exit.lr.ph
  %.val.prol = load ptr, ptr %i.g, align 8
  %.val30.prol = load i32, ptr %i.h, align 16
  %i.m = and i32 %.val30.prol, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val.prol, i64 %i.n
  store i8 -1, ptr %i.o, align 1
  %i.p = add i32 %i.l, 1
  br label %cirrus_src.exit.prol.loopexit

cirrus_src.exit.prol.loopexit:                    ; preds = %cirrus_src.exit.prol, %cirrus_src.exit.lr.ph
  %.02732.unr = phi i32 [ %i.d, %cirrus_src.exit.lr.ph ], [ %i.j, %cirrus_src.exit.prol ]
  %.02831.unr = phi i32 [ %i.l, %cirrus_src.exit.lr.ph ], [ %i.p, %cirrus_src.exit.prol ]
  br i1 %i.k, label %._crit_edge, label %cirrus_src.exit

cirrus_src.exit:                                  ; preds = %cirrus_src.exit.prol.loopexit, %cirrus_src.exit
  %.02732 = phi i32 [ %i.y, %cirrus_src.exit ], [ %.02732.unr, %cirrus_src.exit.prol.loopexit ]
  %.02831 = phi i32 [ %i.x, %cirrus_src.exit ], [ %.02831.unr, %cirrus_src.exit.prol.loopexit ] ; 3 uses
  %.val = load ptr, ptr %i.g, align 8
  %.val30 = load i32, ptr %i.h, align 16
  %i.q = and i32 %.val30, %.02831
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  store i8 -1, ptr %i.s, align 1
  %i.t = add i32 %.02831, 1
  %.val.1 = load ptr, ptr %i.g, align 8
  %.val30.1 = load i32, ptr %i.h, align 16
  %i.u = and i32 %.val30.1, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.val.1, i64 %i.v
  store i8 -1, ptr %i.w, align 1
  %i.x = add i32 %.02831, 2
  %i.y = add nuw nsw i32 %.02732, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.y, %5
  br i1 %exitcond.not.1, label %._crit_edge, label %cirrus_src.exit, !llvm.loop !660

._crit_edge:                                      ; preds = %cirrus_src.exit, %cirrus_src.exit.prol.loopexit
  %i.z = add i32 %.02935, %3
  %i.aa = add nuw nsw i32 %.02636, 1              ; 2 uses
  %exitcond40.not = icmp eq i32 %i.aa, %6
  br i1 %exitcond40.not, label %._crit_edge39.split, label %cirrus_src.exit.lr.ph, !llvm.loop !661

._crit_edge39.split:                              ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_1_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 1
  %i.d = and i8 %i.c, 14
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge39.split

.lr.ph:                                           ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src16.exit.lr.ph, label %._crit_edge39.split

cirrus_src16.exit.lr.ph:                          ; preds = %.lr.ph, %._crit_edge
  %.02636 = phi i32 [ %i.s, %._crit_edge ], [ 0, %.lr.ph ]
  %.02935 = phi i32 [ %i.r, %._crit_edge ], [ %1, %.lr.ph ] ; 2 uses
  %i.j = add i32 %.02935, %i.e
  br label %cirrus_src16.exit

cirrus_src16.exit:                                ; preds = %cirrus_src16.exit.lr.ph, %cirrus_src16.exit
  %.02732 = phi i32 [ %i.e, %cirrus_src16.exit.lr.ph ], [ %i.p, %cirrus_src16.exit ]
  %.02831 = phi i32 [ %i.j, %cirrus_src16.exit.lr.ph ], [ %i.o, %cirrus_src16.exit ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val30 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.02831, -2
  %i.l = and i32 %i.k, %.val30
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  store i16 -1, ptr %i.n, align 2
  %i.o = add i32 %.02831, 2
  %i.p = add nuw nsw i32 %.02732, 2               ; 2 uses
  %i.q = icmp slt i32 %i.p, %5
  br i1 %i.q, label %cirrus_src16.exit, label %._crit_edge, !llvm.loop !662

._crit_edge:                                      ; preds = %cirrus_src16.exit
  %i.r = add i32 %.02935, %3
  %i.s = add nuw nsw i32 %.02636, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %6
  br i1 %exitcond.not, label %._crit_edge39.split, label %cirrus_src16.exit.lr.ph, !llvm.loop !663

._crit_edge39.split:                              ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_1_24(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 31
  %i.d = zext nneg i8 %i.c to i32                 ; 3 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = icmp sgt i32 %5, %i.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 70592      ; 3 uses
  br i1 %i.f, label %cirrus_src.exit55.lr.ph, label %._crit_edge68.split

cirrus_src.exit55.lr.ph:                          ; preds = %.lr.ph, %._crit_edge
  %.065 = phi i32 [ %i.x, %._crit_edge ], [ %1, %.lr.ph ] ; 2 uses
  %.03864 = phi i32 [ %i.y, %._crit_edge ], [ 0, %.lr.ph ]
  %i.i = add i32 %.065, %i.d
  br label %cirrus_src.exit55

cirrus_src.exit55:                                ; preds = %cirrus_src.exit55.lr.ph, %cirrus_src.exit55
  %.03961 = phi i32 [ %i.d, %cirrus_src.exit55.lr.ph ], [ %i.v, %cirrus_src.exit55 ]
  %.04060 = phi i32 [ %i.i, %cirrus_src.exit55.lr.ph ], [ %i.u, %cirrus_src.exit55 ] ; 4 uses
  %.val44 = load ptr, ptr %i.g, align 8
  %.val45 = load i32, ptr %i.h, align 16
  %i.j = and i32 %.val45, %.04060
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val44, i64 %i.k
  store i8 -1, ptr %i.l, align 1
  %i.m = add i32 %.04060, 1
  %.val42 = load ptr, ptr %i.g, align 8
  %.val43 = load i32, ptr %i.h, align 16
  %i.n = and i32 %.val43, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.o
  store i8 -1, ptr %i.p, align 1
  %i.q = add i32 %.04060, 2
  %.val = load ptr, ptr %i.g, align 8
  %.val41 = load i32, ptr %i.h, align 16
  %i.r = and i32 %.val41, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  store i8 -1, ptr %i.t, align 1
  %i.u = add i32 %.04060, 3
  %i.v = add i32 %.03961, 3                       ; 2 uses
  %i.w = icmp slt i32 %i.v, %5
  br i1 %i.w, label %cirrus_src.exit55, label %._crit_edge, !llvm.loop !664

._crit_edge:                                      ; preds = %cirrus_src.exit55
  %i.x = add i32 %.065, %3
  %i.y = add nuw nsw i32 %.03864, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %6
  br i1 %exitcond.not, label %._crit_edge68.split, label %cirrus_src.exit55.lr.ph, !llvm.loop !665

._crit_edge68.split:                              ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cirrus_patternfill_1_32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1153
  %i.b = load i8, ptr %i.a, align 1
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = zext nneg i8 %i.d to i32                 ; 3 uses
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge39.split

.lr.ph:                                           ; preds = %bb.a
  %i.g = icmp sgt i32 %5, %i.e
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %0, i64 70592
  br i1 %i.g, label %cirrus_src32.exit.lr.ph, label %._crit_edge39.split

cirrus_src32.exit.lr.ph:                          ; preds = %.lr.ph, %._crit_edge
  %.02636 = phi i32 [ %i.s, %._crit_edge ], [ 0, %.lr.ph ]
  %.02935 = phi i32 [ %i.r, %._crit_edge ], [ %1, %.lr.ph ] ; 2 uses
  %i.j = add i32 %.02935, %i.e
  br label %cirrus_src32.exit

cirrus_src32.exit:                                ; preds = %cirrus_src32.exit.lr.ph, %cirrus_src32.exit
  %.02732 = phi i32 [ %i.e, %cirrus_src32.exit.lr.ph ], [ %i.p, %cirrus_src32.exit ]
  %.02831 = phi i32 [ %i.j, %cirrus_src32.exit.lr.ph ], [ %i.o, %cirrus_src32.exit ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8
  %.val30 = load i32, ptr %i.i, align 16
  %i.k = and i32 %.02831, -4
  %i.l = and i32 %i.k, %.val30
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  store i32 -1, ptr %i.n, align 4
end_hunk_9
