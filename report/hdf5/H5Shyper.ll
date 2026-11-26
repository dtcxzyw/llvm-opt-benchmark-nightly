Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Shyper?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 71
begin_hunk_0_@H5Sget_regular_hyperslab:bb.a
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter134.next = add i64 %epil.iter134, 1   ; 2 uses
  %epil.iter134.cmp.not = icmp eq i64 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %.loopexit, label %bb.z, !llvm.loop !219

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.z, %.preheader, %.loopexit76
  %i.gk = call i32 @H5CX_pop(i1 noundef zeroext true) #14 ; 0 uses
  br label %bb.aa

.thread66:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread72
  %i.gl = call i32 @H5E_dump_api_stack() #14      ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %.thread66
  %.0446169 = phi i32 [ -1, %.thread66 ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0446169
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5S__hyper_iter_coords(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.i = load i8, ptr %i.h, align 4, !tbaa !24, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.l = load i32, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %.not = icmp ne i32 %i.l, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !70 ; 4 uses
  %i.m = icmp ult i32 %i.l, %.pre
  %or.cond = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %.pre, 0
  br i1 %i.n, label %.lr.ph56, label %.loopexit

.lr.ph56:                                         ; preds = %bb.d
  %i.o = add nsw i32 %.pre, -1
  %i.p = add nsw i32 %i.l, -1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph56, %.critedge2
  %.055 = phi i32 [ %i.p, %.lr.ph56 ], [ %.2, %.critedge2 ] ; 3 uses
  %.04154 = phi i32 [ %i.o, %.lr.ph56 ], [ %.3, %.critedge2 ] ; 3 uses
  %i.s = zext nneg i32 %.04154 to i64             ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24, !range !14, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.preheader.preheader, label %.lr.ph.preheader

.preheader.preheader:                             ; preds = %bb.e
  %i.w = icmp sgt i32 %.04154, 0
  br i1 %i.w, label %.lr.ph80, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.x = sext i32 %.055 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph80
  %i.y = icmp sgt i32 %i.ad, 0
  br i1 %i.y, label %.lr.ph80, label %.critedge, !llvm.loop !220

.lr.ph80:                                         ; preds = %.preheader.preheader, %.preheader
  %indvars.iv6279 = phi i64 [ %indvars.iv.next63, %.preheader ], [ %i.s, %.preheader.preheader ]
  %indvars.iv.next63 = add nsw i64 %indvars.iv6279, -1 ; 3 uses
  %i.z = and i64 %indvars.iv.next63, 4294967295
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !24, !range !14, !noundef !15
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = trunc i64 %indvars.iv.next63 to i32     ; 2 uses
  br i1 %i.ac, label %.preheader, label %.critedge.split.loop.exit73, !llvm.loop !220

.critedge.split.loop.exit73:                      ; preds = %.lr.ph80
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %.preheader.preheader, %.critedge.split.loop.exit73
  %.lcssa = phi i32 [ %i.ae, %.critedge.split.loop.exit73 ], [ 0, %.preheader.preheader ], [ 0, %.preheader ] ; 3 uses
  %i.af = sext i32 %.055 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !24
  %i.ai = add nuw i32 %.04154, 1
  %i.aj = sub i32 %i.ai, %.lcssa
  %i.ak = zext nneg i32 %.lcssa to i64            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.an = tail call i32 @H5VM_array_calc(i64 noundef %i.ah, i32 noundef %i.aj, ptr noundef nonnull %i.al, ptr noundef %i.am) #14 ; 0 uses
  %i.ao = add nsw i32 %.lcssa, -1
  %i.ap = add nsw i32 %.055, -1
  br label %.critedge2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv57 = phi i64 [ %i.s, %.lr.ph.preheader ], [ %indvars.iv.next58, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv57
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24, !range !14, !noundef !15
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.critedge2.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.au = load i64, ptr %i.at, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv57
  store i64 %i.au, ptr %i.av, align 8, !tbaa !18
  %indvars.iv.next58 = add nsw i64 %indvars.iv57, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aw = icmp sgt i64 %indvars.iv57, 0
  br i1 %i.aw, label %.lr.ph, label %.loopexit, !llvm.loop !221

.critedge2.loopexit:                              ; preds = %.lr.ph
  %i.ax = trunc nsw i64 %indvars.iv to i32
  %i.ay = trunc nuw nsw i64 %indvars.iv57 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.3 = phi i32 [ %i.ao, %.critedge ], [ %i.ay, %.critedge2.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.ap, %.critedge ], [ %i.ax, %.critedge2.loopexit ]
  %i.az = icmp sgt i32 %.3, -1
  br i1 %i.az, label %bb.e, label %.loopexit, !llvm.loop !222

bb.g:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !70
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.c, %bb.g
  %.sink = phi i32 [ %i.bb, %bb.g ], [ %.pre, %bb.c ]
  %i.bc = zext i32 %.sink to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr nonnull align 8 %i.g, i64 %i.bd, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge2, %bb.f, %.loopexit.sink.split, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5S__hyper_iter_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #9 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 552        ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.i = load i8, ptr %i.h, align 4, !tbaa !24, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !70   ; 6 uses
  %.not29 = icmp eq i32 %i.l, 0                   ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.b
  br i1 %.not29, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2904 ; 3 uses
  %wide.trip.count = zext i32 %i.l to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %i.l, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  br i1 %.not29, label %.loopexit, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %.preheader
  %wide.trip.count35 = zext i32 %i.l to i64       ; 6 uses
  %min.iters.check = icmp ult i32 %i.l, 31
  br i1 %min.iters.check, label %.lr.ph28.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph28.preheader
  %i.o = shl nuw nsw i64 %wide.trip.count35, 3    ; 3 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 3 uses
  %i.q = getelementptr i8, ptr %2, i64 %i.o       ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 1096       ; 2 uses
  %3 = shl nuw nsw i64 %wide.trip.count35, 5
  %i.s = getelementptr i8, ptr %0, i64 %3
  %4 = getelementptr i8, ptr %i.s, i64 1072       ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.o
  %i.u = getelementptr i8, ptr %i.t, i64 552      ; 2 uses
  %bound0 = icmp ult ptr %1, %i.q
  %bound1 = icmp ult ptr %2, %i.p
  %found.conflict = and i1 %bound0, %bound1
  %bound059 = icmp ult ptr %1, %4
  %bound160 = icmp ult ptr %i.r, %i.p
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx = or i1 %found.conflict, %found.conflict61
  %bound062 = icmp ult ptr %1, %i.u
  %bound163 = icmp ult ptr %i.g, %i.p
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx, %found.conflict64
  %bound066 = icmp ult ptr %2, %4
  %bound167 = icmp ult ptr %i.r, %i.q
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx69 = or i1 %conflict.rdx65, %found.conflict68
  %bound070 = icmp ult ptr %2, %i.u
  %bound171 = icmp ult ptr %i.g, %i.q
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx69, %found.conflict72
  br i1 %conflict.rdx73, label %.lr.ph28.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.v = add nsw i64 %wide.trip.count35, -1
  %n.vec = and i64 %i.v, -2                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !tbaa !24, !alias.scope !231 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  store <2 x i64> %wide.load, ptr %i.x, align 8, !tbaa !18, !alias.scope !232, !noalias !233
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1096
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1128
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !24, !alias.scope !234
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !24, !alias.scope !234
  %i.ae = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %i.af = insertelement <2 x i64> %i.ae, i64 %i.ad, i64 1
  %i.ag = add <2 x i64> %wide.load, splat (i64 -1)
  %i.ah = add <2 x i64> %i.ag, %i.af
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x i64> %i.ah, ptr %i.ai, align 8, !tbaa !18, !alias.scope !235, !noalias !236
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %.lr.ph28.preheader74, label %vector.body, !llvm.loop !228

.lr.ph28.preheader74:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph28.preheader
  %indvars.iv32.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph28.preheader ], [ %n.vec, %vector.body ] ; 7 uses
  %xtraiter77 = and i64 %wide.trip.count35, 1
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.lr.ph28.prol.loopexit, label %.lr.ph28.prol

.lr.ph28.prol:                                    ; preds = %.lr.ph28.preheader74
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv32.ph
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32.ph
  store i64 %i.al, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv32.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1096
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !24
  %i.aq = add i64 %i.al, -1
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32.ph
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !18
  %indvars.iv.next33.prol = or disjoint i64 %indvars.iv32.ph, 1
  br label %.lr.ph28.prol.loopexit

.lr.ph28.prol.loopexit:                           ; preds = %.lr.ph28.prol, %.lr.ph28.preheader74
  %indvars.iv32.unr = phi i64 [ %indvars.iv32.ph, %.lr.ph28.preheader74 ], [ %indvars.iv.next33.prol, %.lr.ph28.prol ]
  %i.at = add nsw i64 %wide.trip.count35, -1
  %i.au = icmp eq i64 %indvars.iv32.ph, %i.at
  br i1 %i.au, label %.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %indvars.iv32 = phi i64 [ %indvars.iv.next33.1, %.lr.ph28 ], [ %indvars.iv32.unr, %.lr.ph28.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !24 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1096
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bb = add i64 %i.aw, -1
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !18
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next33
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !24 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next33
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1096
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !24
  %i.bk = add i64 %i.bf, -1
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next33
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !18
  %indvars.iv.next33.1 = add nuw nsw i64 %indvars.iv32, 2 ; 2 uses
  %exitcond36.not.1 = icmp eq i64 %indvars.iv.next33.1, %wide.trip.count35
  br i1 %exitcond36.not.1, label %.loopexit, label %.lr.ph28, !llvm.loop !229

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !61
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !18
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !65
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !61
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !18
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !65
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit75.unr-lcssa, label %bb.c, !llvm.loop !230

.loopexit.loopexit75.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit75.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit75.unr-lcssa ] ; 3 uses
  %lcmp.mod76 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil.init ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !61
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !18
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit75.unr-lcssa, %.lr.ph28.prol.loopexit, %.lr.ph28, %.preheader24, %.preheader, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @H5S__hyper_iter_nelmts(ptr nofree noundef readonly captures(none) %0) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @H5S__hyper_iter_has_next_block(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.i = load i8, ptr %i.h, align 4, !tbaa !24, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !70   ; 3 uses
  %.not40 = icmp eq i32 %i.l, 0                   ; 2 uses
  br i1 %i.j, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2904
  br i1 %.not40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.l to i64
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1072
  br i1 %.not40, label %.loopexit, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %bb.c
  %wide.trip.count47 = zext i32 %i.l to i64
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %bb.e
  %indvars.iv44 = phi i64 [ 0, %.lr.ph35.preheader ], [ %indvars.iv.next45, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv44 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42   ; 2 uses
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph35
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv44
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = load i64, ptr %i.o, align 8, !tbaa !50
  %i.v = add i64 %i.q, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !51
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.umax.v2i64
!33 = !{!32, !9, i64 56}
!34 = !{!22, !9, i64 2568}
!35 = !{!22, !17, i64 2576}
!36 = !{!32, !17, i64 352}
!37 = !{!32, !9, i64 40}
!38 = !{!29, !29, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!32, !29, i64 64}
!41 = !{!"H5S_hyper_dim_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!42 = !{!41, !17, i64 16}
!43 = !{!"branch_weights", i32 2002, i32 2000}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!"p1 omnipotent char", !20, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!32, !20, i64 80}
!48 = !{!"", !9, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136, !20, i64 144, !20, i64 152, !20, i64 160}
!49 = !{!48, !9, i64 0}
!50 = !{!41, !17, i64 0}
!51 = !{!41, !17, i64 8}
!52 = !{!41, !17, i64 24}
!53 = !{!"p1 _ZTS5H5S_t", !20, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!32, !12, i64 88}
!58 = !{!"p1 _ZTS16H5S_hyper_span_t", !20, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"H5S_hyper_span_t", !17, i64 0, !17, i64 8, !21, i64 16, !58, i64 24}
!61 = !{!60, !17, i64 0}
!62 = !{!60, !21, i64 16}
!63 = !{!"llvm.loop.peeled.count", i32 1}
!64 = !{!60, !58, i64 24}
!65 = !{!60, !17, i64 8}
!66 = !{!21, !21, i64 0}
!67 = !{ptr @H5S__hyper_free_span}
!68 = !{!"p1 _ZTS20H5S_sel_iter_class_t", !20, i64 0}
!69 = !{!"H5S_sel_iter_t", !68, i64 0, !9, i64 8, !8, i64 16, !8, i64 272, !17, i64 528, !17, i64 536, !9, i64 544, !8, i64 552}
!70 = !{!69, !9, i64 8}
!71 = !{!69, !17, i64 536}
!72 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!73 = !{!"branch_weights", i32 1073205, i32 2146410443}
!74 = !{!"branch_weights", i32 0, i32 -2147483648}
!75 = !{!"branch_weights", i32 -2147483648, i32 0}
!76 = !{!"H5S_hyper_op_info_t", !17, i64 0, !8, i64 8}
!77 = !{!76, !17, i64 0}
!78 = !{!"", !8, i64 0, !8, i64 256, !8, i64 512, !9, i64 768, !9, i64 772, !9, i64 776, !9, i64 780, !17, i64 784, !17, i64 792, !17, i64 800, !12, i64 808}
!79 = !{!78, !9, i64 772}
!80 = !{!78, !9, i64 776}
!81 = !{!78, !17, i64 800}
!82 = !{!78, !12, i64 808}
!83 = !{!78, !9, i64 768}
!84 = !{!78, !17, i64 784}
!85 = !{!78, !17, i64 792}
!86 = !{!69, !17, i64 528}
!87 = !{!20, !20, i64 0}
!88 = distinct !{!88, !39}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !39}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !39}
!94 = distinct !{!94, !39}
!95 = distinct !{!95, !39}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !39}
!98 = distinct !{!98, !39}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !39}
!101 = distinct !{!101, !39}
!102 = distinct !{!102, !39}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !39}
!105 = distinct !{!105, !39}
!106 = distinct !{!106, !39}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !39}
!109 = distinct !{!109, !39}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !39, !55, !56}
!112 = distinct !{!112, !39}
!113 = distinct !{!113, !39}
!114 = distinct !{!114, !44}
!115 = distinct !{!115, !39}
!116 = distinct !{!116, !39, !63}
!117 = distinct !{!117, !39}
!118 = distinct !{!118, !39}
!119 = distinct !{!119, !39}
!120 = distinct !{!120, !39}
!121 = distinct !{!121, !39}
!122 = distinct !{!122, !39}
!123 = distinct !{!123, !39}
!124 = distinct !{!124, !39}
!125 = distinct !{!125, !39}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !39}
!128 = distinct !{!128, !44}
!129 = distinct !{!129, !39}
!130 = distinct !{!130, !39}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !39}
!133 = distinct !{!133, !44}
!134 = distinct !{!134, !39}
!135 = distinct !{!135, !44}
!136 = distinct !{!136, !39}
!137 = distinct !{!137, !39}
!138 = distinct !{!138, !39}
!139 = distinct !{!139, !39}
!140 = distinct !{!140, !39}
!141 = distinct !{!141, !39}
!142 = distinct !{!142, !39}
!143 = distinct !{!143, !39}
!144 = distinct !{!144, !39}
!145 = distinct !{!145, !44}
!146 = distinct !{!146, !39}
!147 = distinct !{!147, !44}
!148 = distinct !{!148, !39}
!149 = distinct !{!149, !44}
!150 = distinct !{!150, !39}
!151 = distinct !{!151, !39, !56, !55}
!152 = distinct !{!152, !39, !55, !56}
!153 = !{!69, !9, i64 544}
!154 = !{!69, !68, i64 0}
!155 = distinct !{!155, !44}
!156 = distinct !{!156, !39}
!157 = distinct !{!157, !39}
!158 = distinct !{!158, !39}
!159 = distinct !{!159, !39}
!160 = distinct !{!160, !39}
!161 = distinct !{!161, !39}
!162 = distinct !{!162, !39}
!163 = !{ptr @H5S__hyper_coord_to_span}
!164 = distinct !{!164, !39}
!165 = distinct !{!165, i1 false, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !39, !56, !55}
!169 = distinct !{!169, !39, !56}
!170 = !{!166}
!171 = !{!167}
!172 = !{!"branch_weights", i32 430355294, i32 1717128354}
!173 = distinct !{!173, !39}
!174 = distinct !{!174, !39}
!175 = distinct !{!175, !39}
!176 = distinct !{!176, !39}
!177 = distinct !{!177, !39}
!178 = distinct !{!178, !44}
!179 = distinct !{!179, !39}
!180 = distinct !{!180, !39}
!181 = distinct !{!181, !39}
!182 = distinct !{!182, !39}
!183 = distinct !{!183, !39}
!184 = distinct !{!184, !39}
!185 = distinct !{!185, !39}
!186 = distinct !{!186, !39}
!187 = distinct !{!187, !39}
!188 = distinct !{!188, !39, !56, !55}
!189 = distinct !{!189, !39, !55, !56}
!190 = distinct !{!190, !39}
!191 = distinct !{!191, !39}
!192 = distinct !{!192, !39}
!193 = distinct !{!193, !39}
!194 = distinct !{!194, !39}
!195 = distinct !{!195, !39}
!196 = distinct !{!196, !39}
!197 = !{!"branch_weights", i32 1191241, i32 2146292407}
!198 = distinct !{!198, !39}
!199 = distinct !{!199, !39}
!200 = distinct !{!200, !39}
!201 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!202 = distinct !{!202, !39}
!203 = distinct !{!203, !39}
!204 = distinct !{!204, !39}
!205 = distinct !{!205, !39}
!206 = distinct !{!206, !39}
!207 = distinct !{!207, !39, !210}
!208 = distinct !{!208, !39}
!209 = distinct !{!209, !39}
!210 = !{!"llvm.loop.unswitch.partial.disable"}
!211 = distinct !{!211, !39}
!212 = distinct !{!212, !39}
!213 = distinct !{!213, !44}
!214 = distinct !{!214, !39}
!215 = distinct !{!215, !44}
!216 = distinct !{!216, !39}
!217 = distinct !{!217, !44}
!218 = distinct !{!218, !39}
!219 = distinct !{!219, !44}
!220 = distinct !{!220, !39}
!221 = distinct !{!221, !39}
!222 = distinct !{!222, !39}
!223 = distinct !{!223, i1 false, !"LVerDomain"}
!224 = distinct !{!224, !223}
!225 = distinct !{!225, !223}
!226 = distinct !{!226, !223}
!227 = distinct !{!227, !223}
!228 = distinct !{!228, !39, !56, !55}
!229 = distinct !{!229, !39, !56}
!230 = distinct !{!230, !39}
!231 = !{!224}
!232 = !{!225}
!233 = !{!227, !226, !224}
!234 = !{!226}
!235 = !{!227}
!236 = !{!226, !224}
!237 = distinct !{!237, !39}
!238 = distinct !{!238, !39}
!239 = distinct !{!239, !39, !63}
!240 = distinct !{!240, !39}
!241 = distinct !{!241, !39}
!242 = distinct !{!242, !39}
!243 = distinct !{!243, !39, !63}
!244 = distinct !{!244, !39}
!245 = distinct !{!245, !39}
!246 = distinct !{!246, !39}
!247 = distinct !{!247, !39, !63}
!248 = distinct !{!248, !39}
!249 = distinct !{!249, !39, !63}
!250 = distinct !{!250, !39}
!251 = distinct !{!251, !39, !56, !55}
!252 = distinct !{!252, !39, !55, !56}
!253 = distinct !{!253, !39}
!254 = distinct !{!254, !39, !56, !55}
!255 = distinct !{!255, !39, !55, !56}
!256 = distinct !{!256, !39, !56, !55}
!257 = distinct !{!257, !39, !55, !56}
!258 = distinct !{!258, !39, !56, !55}
!259 = distinct !{!259, !39, !55, !56}
!260 = distinct !{!260, !39}
!261 = distinct !{!261, !39, !56, !55}
!262 = distinct !{!262, !44}
!263 = distinct !{!263, !39, !56}
!264 = distinct !{!264, !39, !56, !55}
!265 = distinct !{!265, !39, !55, !56}
!266 = distinct !{!266, !39, !56, !55}
!267 = distinct !{!267, !44}
!268 = distinct !{!268, !39}
!269 = distinct !{!269, !39}
!270 = distinct !{!270, !39}
!271 = distinct !{!271, !39, !56}
!272 = distinct !{!272, !39, !56, !55}
!273 = distinct !{!273, !44}
!274 = distinct !{!274, !39, !56}
!275 = distinct !{!275, !39, !56, !55}
!276 = distinct !{!276, !39, !55, !56}
!277 = distinct !{!277, !39}
!278 = distinct !{!278, !39, !56, !55}
!279 = distinct !{!279, !39, !55, !56}
!280 = distinct !{!280, !39}
!281 = distinct !{!281, !39}
!282 = distinct !{!282, !39, !56, !55}
!283 = distinct !{!283, !39, !56}
!284 = distinct !{!284, !39}
!285 = distinct !{!285, !39}
!286 = distinct !{!286, !39}
!287 = distinct !{!287, !39}
!288 = distinct !{!288, !39, !56, !55}
!289 = distinct !{!289, !39, !56}
!290 = distinct !{!290, !39, !56, !55}
!291 = distinct !{!291, !44}
!292 = distinct !{!292, !39, !56}
!293 = distinct !{!293, !39, !56, !55}
!294 = distinct !{!294, !39, !55, !56}
!295 = distinct !{!295, !39}
!296 = distinct !{!296, !39, !56, !55}
!297 = distinct !{!297, !39}
!298 = distinct !{!298, !39, !55, !56}
!299 = distinct !{!299, !39}
!300 = distinct !{!300, !39, !56, !55}
!301 = distinct !{!301, !39}
!302 = distinct !{!302, !39, !55, !56}
!303 = distinct !{!303, !39}
!304 = distinct !{!304, !39}
!305 = distinct !{!305, !39}
!306 = distinct !{!306, !39, !56, !55}
!307 = distinct !{!307, !39}
!308 = distinct !{!308, !39}
!309 = distinct !{!309, !39, !55, !56}
!310 = !{!"branch_weights", !"expected", i32 2146410444, i32 1073204}
!311 = distinct !{!311, !39}
!312 = distinct !{!312, !44}
!313 = distinct !{!313, !39}
!314 = distinct !{!314, !44}
!315 = distinct !{!315, !39}
!316 = distinct !{!316, !39}
!317 = distinct !{!317, !39}
!318 = distinct !{!318, !44}
!319 = distinct !{!319, !39}
!320 = distinct !{!320, !44}
!321 = distinct !{!321, !39}
!322 = distinct !{!322, !39}
!323 = distinct !{!323, !39}
!324 = distinct !{!324, !39}
!325 = distinct !{!325, i1 false, !"LVerDomain"}
!326 = distinct !{!326, !325}
!327 = distinct !{!327, !325}
!328 = distinct !{!328, !325}
!329 = distinct !{!329, !39, !56, !55}
!330 = distinct !{!330, !39, !56}
!331 = distinct !{!331, !39}
!332 = !{!326}
!333 = !{!327}
!334 = !{!328, !326}
!335 = !{!328}
!336 = distinct !{!336, i1 false, !"LVerDomain"}
!337 = distinct !{!337, !336}
!338 = distinct !{!338, !336}
!339 = distinct !{!339, !336}
!340 = distinct !{!340, !39, !56, !55}
!341 = distinct !{!341, !39, !56}
!342 = distinct !{!342, !39}
!343 = !{!337}
!344 = !{!339, !338}
!345 = !{!338}
!346 = !{!339}
!347 = distinct !{!347, !39}
!348 = distinct !{!348, !39}
!349 = distinct !{!349, !39, !63}
!350 = distinct !{!350, !39, !63}
!351 = distinct !{!351, !39}
!352 = distinct !{!352, !39}
!353 = distinct !{!353, !63}
!354 = distinct !{!354, !39}
!355 = distinct !{!355, !63}
!356 = distinct !{!356, !39}
!357 = distinct !{!357, !39}
!358 = distinct !{!358, !39}
!359 = distinct !{!359, !39}
!360 = distinct !{!360, !39}
!361 = distinct !{!361, !39}
!362 = distinct !{!362, !39}
!363 = distinct !{!363, !39}
!364 = !{!78, !9, i64 780}
!365 = distinct !{!365, !39}
!366 = distinct !{!366, !39}
end_hunk_1
