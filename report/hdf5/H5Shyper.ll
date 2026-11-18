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
  %bound0 = icmp ult ptr %1, %i.q
  %bound1 = icmp ult ptr %2, %i.p
  %found.conflict = and i1 %bound0, %bound1
  %i.r = getelementptr i8, ptr %0, i64 1096       ; 2 uses
  %3 = shl nuw nsw i64 %wide.trip.count35, 5
  %i.s = getelementptr i8, ptr %0, i64 %3
  %i.t = getelementptr i8, ptr %i.s, i64 1072     ; 2 uses
  %bound0.a = icmp ult ptr %1, %i.t
  %bound1.a = icmp ult ptr %i.r, %i.p
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %4 = getelementptr i8, ptr %0, i64 %i.o
  %5 = getelementptr i8, ptr %4, i64 552          ; 2 uses
  %bound062 = icmp ult ptr %1, %5
  %bound163 = icmp ult ptr %i.g, %i.p
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx, %found.conflict64
  %bound066 = icmp ult ptr %2, %i.t
  %bound167 = icmp ult ptr %i.r, %i.q
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx69 = or i1 %conflict.rdx65, %found.conflict68
  %bound070 = icmp ult ptr %2, %5
  %bound171 = icmp ult ptr %i.g, %i.q
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx69, %found.conflict72
  br i1 %conflict.rdx73, label %.lr.ph28.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.u = add nsw i64 %wide.trip.count35, -1
  %n.vec = and i64 %i.u, -2                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %wide.load = load <2 x i64>, ptr %i.v, align 8, !tbaa !24, !alias.scope !231 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  store <2 x i64> %wide.load, ptr %i.w, align 8, !tbaa !18, !alias.scope !232, !noalias !233
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1096
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1128
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !24, !alias.scope !234
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !24, !alias.scope !234
  %i.ad = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.ae = insertelement <2 x i64> %i.ad, i64 %i.ac, i64 1
  %i.af = add <2 x i64> %wide.load, splat (i64 -1)
  %i.ag = add <2 x i64> %i.af, %i.ae
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x i64> %i.ag, ptr %i.ah, align 8, !tbaa !18, !alias.scope !235, !noalias !236
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %.lr.ph28.preheader74, label %vector.body, !llvm.loop !228

.lr.ph28.preheader74:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph28.preheader
  %indvars.iv32.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph28.preheader ], [ %n.vec, %vector.body ] ; 7 uses
  %xtraiter77 = and i64 %wide.trip.count35, 1
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.lr.ph28.prol.loopexit, label %.lr.ph28.prol

.lr.ph28.prol:                                    ; preds = %.lr.ph28.preheader74
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv32.ph
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32.ph
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv32.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1096
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ap = add i64 %i.ak, -1
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32.ph
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !18
  %indvars.iv.next33.prol = or disjoint i64 %indvars.iv32.ph, 1
  br label %.lr.ph28.prol.loopexit

.lr.ph28.prol.loopexit:                           ; preds = %.lr.ph28.prol, %.lr.ph28.preheader74
  %indvars.iv32.unr = phi i64 [ %indvars.iv32.ph, %.lr.ph28.preheader74 ], [ %indvars.iv.next33.prol, %.lr.ph28.prol ]
  %i.as = add nsw i64 %wide.trip.count35, -1
  %i.at = icmp eq i64 %indvars.iv32.ph, %i.as
  br i1 %i.at, label %.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %indvars.iv32 = phi i64 [ %indvars.iv.next33.1, %.lr.ph28 ], [ %indvars.iv32.unr, %.lr.ph28.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1096
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !24
  %i.ba = add i64 %i.av, -1
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !18
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next33
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !24 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next33
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1096
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !24
  %i.bj = add i64 %i.be, -1
  %i.bk = add i64 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next33
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !18
  %indvars.iv.next33.1 = add nuw nsw i64 %indvars.iv32, 2 ; 2 uses
  %exitcond36.not.1 = icmp eq i64 %indvars.iv.next33.1, %wide.trip.count35
  br i1 %exitcond36.not.1, label %.loopexit, label %.lr.ph28, !llvm.loop !229

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !18
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !61
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !18
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !65
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !18
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
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil.init ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !61
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !18
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !18
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
end_hunk_0
begin_hunk_1_@H5S__hyper_new_span:bb.a
bb.d:                                             ; preds = %bb.b
  store i64 %0, ptr %i.g, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %1, ptr %i.l, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %2, ptr %i.m, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %3, ptr %i.n, align 8, !tbaa !64
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %2, align 8, !tbaa !26
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %2, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.c ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5S__hyper_free_span(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc i32 @H5S__hyper_free_span_info(ptr noundef nonnull %i.h)
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.l = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !18
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_free_span, i32 noundef 3172, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.13) #14 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5S_hyper_span_t_reg_free_list, ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @H5FL_arr_free(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @H5S__hyper_intersect_block_helper(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77
  %.not = icmp eq i64 %i.h, %4
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not51 = icmp eq i32 %1, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !323

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %i.v = icmp ult i64 %i.r, %i.u
  br i1 %i.v, label %.loopexit, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.03545 = load ptr, ptr %i.w, align 8, !tbaa !59 ; 2 uses
  %.not4246 = icmp eq ptr %.03545, null
  br i1 %.not4246, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %._crit_edge
  %i.x = add i32 %1, -1
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre54 = load i64, ptr %2, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph49, %bb.j
  %i.aa = phi i64 [ %.pre54, %.lr.ph49 ], [ %i.ak, %bb.j ] ; 2 uses
  %.03547 = phi ptr [ %.03545, %.lr.ph49 ], [ %.035, %bb.j ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03547, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.ad = icmp ult i64 %i.ac, %i.aa
  br i1 %i.ad, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %.03547, align 8, !tbaa !61
  %i.af = load i64, ptr %3, align 8, !tbaa !18
  %.not59.not = icmp ule i64 %i.ae, %i.af         ; 4 uses
  br i1 %.not59.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.03547, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call fastcc zeroext i1 @H5S__hyper_intersect_block_helper(ptr noundef nonnull %i.ah, i32 noundef %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef %4)
  %.pre = load i64, ptr %2, align 8, !tbaa !18
  br i1 %i.aj, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ak = phi i64 [ %.pre, %bb.i ], [ %i.aa, %bb.f ]
  %.1.in = getelementptr inbounds nuw i8, ptr %.03547, i64 24
  %.035 = load ptr, ptr %.1.in, align 8, !tbaa !59 ; 2 uses
  %.not42 = icmp eq ptr %.035, null
  br i1 %.not42, label %._crit_edge50, label %bb.f, !llvm.loop !324

._crit_edge50:                                    ; preds = %bb.j, %._crit_edge
  store i64 %4, ptr %i.g, align 8, !tbaa !77
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.i, %bb.h, %bb.g, %bb.a, %bb.b, %._crit_edge50
  %.137 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %._crit_edge50 ], [ %.not59.not, %bb.i ], [ %.not59.not, %bb.g ], [ %.not59.not, %bb.h ], [ false, %bb.d ], [ false, %bb.e ]
  ret i1 %.137
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @H5S__hyper_adjust_u_helper(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77
  %.not = icmp eq i64 %i.h, %3
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not42 = icmp eq i32 %1, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 7 uses
  %wide.trip.count = zext i32 %1 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %1, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = shl nuw nsw i64 %wide.trip.count, 3      ; 3 uses
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = getelementptr i8, ptr %i.l, i64 %i.m     ; 2 uses
  %bound0 = icmp ult ptr %i.j, %i.o
  %bound0.a = icmp ult ptr %i.l, %i.n
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %2, i64 %i.m         ; 2 uses
  %bound010 = icmp ult ptr %i.j, %4
  %bound111 = icmp ult ptr %2, %i.n
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  %bound013 = icmp ult ptr %i.l, %4
  %bound114 = icmp ult ptr %2, %i.o
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx16 = or i1 %conflict.rdx, %found.conflict15
  br i1 %conflict.rdx16, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.p, align 8, !tbaa !18, !alias.scope !332
  %wide.load17 = load <2 x i64>, ptr %i.q, align 8, !tbaa !18, !alias.scope !332
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %wide.load18 = load <2 x i64>, ptr %i.r, align 8, !tbaa !18, !alias.scope !333, !noalias !334
  %wide.load19 = load <2 x i64>, ptr %i.s, align 8, !tbaa !18, !alias.scope !333, !noalias !334
  %i.t = sub <2 x i64> %wide.load18, %wide.load
  %i.u = sub <2 x i64> %wide.load19, %wide.load17
  store <2 x i64> %i.t, ptr %i.r, align 8, !tbaa !18, !alias.scope !333, !noalias !334
  store <2 x i64> %i.u, ptr %i.s, align 8, !tbaa !18, !alias.scope !333, !noalias !334
  %wide.load20 = load <2 x i64>, ptr %i.p, align 8, !tbaa !18, !alias.scope !332
  %wide.load21 = load <2 x i64>, ptr %i.q, align 8, !tbaa !18, !alias.scope !332
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load22 = load <2 x i64>, ptr %i.v, align 8, !tbaa !18, !alias.scope !335, !noalias !332
  %wide.load23 = load <2 x i64>, ptr %i.w, align 8, !tbaa !18, !alias.scope !335, !noalias !332
  %i.x = sub <2 x i64> %wide.load22, %wide.load20
  %i.y = sub <2 x i64> %wide.load23, %wide.load21
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !18, !alias.scope !335, !noalias !332
  store <2 x i64> %i.y, ptr %i.w, align 8, !tbaa !18, !alias.scope !335, !noalias !332
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.ph ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.ae = sub i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !18
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.ph ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !18
  %i.ai = sub i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aj = add nsw i64 %wide.trip.count, -1
  %i.ak = icmp eq i64 %indvars.iv.ph, %i.aj
  br i1 %i.ak, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18
  %i.ap = sub i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !18
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.at = sub i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.ay = sub i64 %i.ax, %i.av
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !18
  %i.az = load i64, ptr %i.au, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !18
  %i.bc = sub i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !330

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.02936 = load ptr, ptr %i.bd, align 8, !tbaa !59 ; 2 uses
  %.not3337 = icmp eq ptr %.02936, null
  br i1 %.not3337, label %._crit_edge41, label %.lr.ph40

.lr.ph40:                                         ; preds = %._crit_edge
  %i.be = add i32 %1, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph40, %bb.e
  %.02938 = phi ptr [ %.02936, %.lr.ph40 ], [ %.029, %bb.e ] ; 5 uses
  %i.bg = load i64, ptr %2, align 8, !tbaa !18
  %i.bh = load i64, ptr %.02938, align 8, !tbaa !61
  %i.bi = sub i64 %i.bh, %i.bg
  store i64 %i.bi, ptr %.02938, align 8, !tbaa !61
  %i.bj = load i64, ptr %2, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.02938, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !65
  %i.bm = sub i64 %i.bl, %i.bj
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %.02938, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62 ; 2 uses
  %.not34 = icmp eq ptr %i.bo, null
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @H5S__hyper_adjust_u_helper(ptr noundef nonnull %i.bo, i32 noundef %i.be, ptr noundef nonnull %i.bf, i64 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %.02938, i64 24
  %.029 = load ptr, ptr %i.bp, align 8, !tbaa !59 ; 2 uses
  %.not33 = icmp eq ptr %.029, null
  br i1 %.not33, label %._crit_edge41, label %bb.c, !llvm.loop !331

._crit_edge41:                                    ; preds = %bb.e, %._crit_edge
  store i64 %3, ptr %i.g, align 8, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %._crit_edge41, %bb.a
  ret void
}

declare i64 @H5VM_array_offset(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @H5S__hyper_adjust_s_helper(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77
  %.not = icmp eq i64 %i.h, %3
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not48 = icmp eq i32 %1, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 7 uses
  %wide.trip.count = zext i32 %1 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %1, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = shl nuw nsw i64 %wide.trip.count, 3      ; 3 uses
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = getelementptr i8, ptr %i.l, i64 %i.m     ; 2 uses
  %bound0 = icmp ult ptr %i.j, %i.o
  %bound0.a = icmp ult ptr %i.l, %i.n
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %2, i64 %i.m         ; 2 uses
  %bound010 = icmp ult ptr %i.j, %4
  %bound111 = icmp ult ptr %2, %i.n
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  %bound013 = icmp ult ptr %i.l, %4
  %bound114 = icmp ult ptr %2, %i.o
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx16 = or i1 %conflict.rdx, %found.conflict15
  br i1 %conflict.rdx16, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.p, align 8, !tbaa !18, !alias.scope !343, !noalias !344
  %wide.load17 = load <2 x i64>, ptr %i.q, align 8, !tbaa !18, !alias.scope !343, !noalias !344
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %wide.load18 = load <2 x i64>, ptr %i.r, align 8, !tbaa !18, !alias.scope !345
  %wide.load19 = load <2 x i64>, ptr %i.s, align 8, !tbaa !18, !alias.scope !345
  %i.t = sub nsw <2 x i64> %wide.load, %wide.load18
  %i.u = sub nsw <2 x i64> %wide.load17, %wide.load19
  store <2 x i64> %i.t, ptr %i.p, align 8, !tbaa !18, !alias.scope !343, !noalias !344
  store <2 x i64> %i.u, ptr %i.q, align 8, !tbaa !18, !alias.scope !343, !noalias !344
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load20 = load <2 x i64>, ptr %i.v, align 8, !tbaa !18, !alias.scope !346, !noalias !345
  %wide.load21 = load <2 x i64>, ptr %i.w, align 8, !tbaa !18, !alias.scope !346, !noalias !345
  %wide.load22 = load <2 x i64>, ptr %i.r, align 8, !tbaa !18, !alias.scope !345
  %wide.load23 = load <2 x i64>, ptr %i.s, align 8, !tbaa !18, !alias.scope !345
  %i.x = sub nsw <2 x i64> %wide.load20, %wide.load22
  %i.y = sub nsw <2 x i64> %wide.load21, %wide.load23
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !18, !alias.scope !346, !noalias !345
  store <2 x i64> %i.y, ptr %i.w, align 8, !tbaa !18, !alias.scope !346, !noalias !345
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.ph ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.ae = sub nsw i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.aa, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.ph ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.ai = sub nsw i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aj = add nsw i64 %wide.trip.count, -1
  %i.ak = icmp eq i64 %indvars.iv.ph, %i.aj
  br i1 %i.ak, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18
  %i.ap = sub nsw i64 %i.am, %i.ao
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.as = load i64, ptr %i.an, align 8, !tbaa !18
  %i.at = sub nsw i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.ay = sub nsw i64 %i.av, %i.ax
  store i64 %i.ay, ptr %i.au, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !18
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.bc = sub nsw i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !341

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.03542 = load ptr, ptr %i.bd, align 8, !tbaa !59 ; 2 uses
  %.not3943 = icmp eq ptr %.03542, null
  br i1 %.not3943, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %._crit_edge
  %i.be = add i32 %1, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph46, %bb.e
  %.03544 = phi ptr [ %.03542, %.lr.ph46 ], [ %.035, %bb.e ] ; 5 uses
  %i.bg = load i64, ptr %.03544, align 8, !tbaa !61
  %i.bh = load i64, ptr %2, align 8, !tbaa !18
  %i.bi = sub nsw i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %.03544, align 8, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %.03544, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !65
  %i.bl = load i64, ptr %2, align 8, !tbaa !18
  %i.bm = sub nsw i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %.03544, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62 ; 2 uses
  %.not40 = icmp eq ptr %i.bo, null
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @H5S__hyper_adjust_s_helper(ptr noundef nonnull %i.bo, i32 noundef %i.be, ptr noundef nonnull %i.bf, i64 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %.03544, i64 24
  %.035 = load ptr, ptr %i.bp, align 8, !tbaa !59 ; 2 uses
  %.not39 = icmp eq ptr %.035, null
  br i1 %.not39, label %._crit_edge47, label %bb.c, !llvm.loop !342

._crit_edge47:                                    ; preds = %bb.e, %._crit_edge
  store i64 %3, ptr %i.g, align 8, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %._crit_edge47, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5S__fill_in_new_space(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 8, !tbaa !66
  %i.d = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %bb.bv, !prof !16

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %4, align 1, !tbaa !13
  store i8 0, ptr %5, align 1, !tbaa !13
  %i.j = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  %i.k = icmp eq ptr %i.j, null                   ; 6 uses
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @H5S_copy(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #14 ; 4 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !54
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.o = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !18
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__fill_in_new_space, i32 noundef 9337, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.34) #14 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2584
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !26
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2584
  store ptr null, ptr %i.y, align 8, !tbaa !23
  br label %bb.f

end_hunk_1
