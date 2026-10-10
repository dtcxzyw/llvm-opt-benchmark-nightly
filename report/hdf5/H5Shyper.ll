Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Shyper?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 70
begin_hunk_0_@H5Sget_regular_hyperslab:bb.a
  %indvars.iv103.epil = phi i64 [ %indvars.iv103.epil.init, %.epil.preheader132 ], [ %indvars.iv.next104.epil, %bb.z ] ; 3 uses
  %epil.iter134 = phi i64 [ 0, %.epil.preheader132 ], [ %epil.iter134.next, %bb.z ]
  %i.gf = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %i.gf, i64 %indvars.iv103.epil
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !52
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv103.epil
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !18
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter134.next = add i64 %epil.iter134, 1   ; 2 uses
  %epil.iter134.cmp.not = icmp eq i64 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %.loopexit, label %bb.z, !llvm.loop !220

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
  br i1 %i.y, label %.lr.ph80, label %.critedge, !llvm.loop !221

.lr.ph80:                                         ; preds = %.preheader.preheader, %.preheader
  %indvars.iv6279 = phi i64 [ %indvars.iv.next63, %.preheader ], [ %i.s, %.preheader.preheader ]
  %indvars.iv.next63 = add nsw i64 %indvars.iv6279, -1 ; 3 uses
  %i.z = and i64 %indvars.iv.next63, 4294967295
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !24, !range !14, !noundef !15
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = trunc i64 %indvars.iv.next63 to i32     ; 2 uses
  br i1 %i.ac, label %.preheader, label %.critedge.split.loop.exit73, !llvm.loop !221

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
  br i1 %i.aw, label %.lr.ph, label %.loopexit, !llvm.loop !222

.critedge2.loopexit:                              ; preds = %.lr.ph
  %i.ax = trunc nsw i64 %indvars.iv to i32
  %i.ay = trunc nuw nsw i64 %indvars.iv57 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.3 = phi i32 [ %i.ao, %.critedge ], [ %i.ay, %.critedge2.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.ap, %.critedge ], [ %i.ax, %.critedge2.loopexit ]
  %i.az = icmp sgt i32 %.3, -1
  br i1 %i.az, label %bb.e, label %.loopexit, !llvm.loop !223

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
  %wide.trip.count35 = zext i32 %i.l to i64       ; 7 uses
  %min.iters.check = icmp ult i32 %i.l, 31
  br i1 %min.iters.check, label %.lr.ph28.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph28.preheader
  %i.o = shl nuw nsw i64 %wide.trip.count35, 3    ; 3 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 3 uses
  %i.q = getelementptr i8, ptr %2, i64 %i.o       ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 1096       ; 2 uses
  %i.s = shl nuw nsw i64 %wide.trip.count35, 5
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 1072     ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.o
  %i.w = getelementptr i8, ptr %i.v, i64 552      ; 2 uses
  %bound0 = icmp ult ptr %1, %i.q
  %bound1 = icmp ult ptr %2, %i.p
  %found.conflict = and i1 %bound0, %bound1
  %bound059 = icmp ult ptr %1, %i.u
  %bound160 = icmp ult ptr %i.r, %i.p
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx = or i1 %found.conflict, %found.conflict61
  %bound062 = icmp ult ptr %1, %i.w
  %bound163 = icmp ult ptr %i.g, %i.p
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx, %found.conflict64
  %bound066 = icmp ult ptr %2, %i.u
  %bound167 = icmp ult ptr %i.r, %i.q
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx69 = or i1 %conflict.rdx65, %found.conflict68
  %bound070 = icmp ult ptr %2, %i.w
  %bound171 = icmp ult ptr %i.g, %i.q
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx69, %found.conflict72
  br i1 %conflict.rdx73, label %.lr.ph28.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %wide.trip.count35, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count35  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %wide.load = load <2 x i64>, ptr %i.x, align 8, !tbaa !24, !alias.scope !232 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  store <2 x i64> %wide.load, ptr %i.y, align 8, !tbaa !18, !alias.scope !233, !noalias !234
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1096
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1128
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !24, !alias.scope !235
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !24, !alias.scope !235
  %i.af = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %i.ag = insertelement <2 x i64> %i.af, i64 %i.ae, i64 1
  %i.ah = add <2 x i64> %wide.load, splat (i64 -1)
  %i.ai = add <2 x i64> %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x i64> %i.ai, ptr %i.aj, align 8, !tbaa !18, !alias.scope !236, !noalias !237
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %.lr.ph28.preheader74, label %vector.body, !llvm.loop !229

.lr.ph28.preheader74:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph28.preheader
  %indvars.iv32.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph28.preheader ], [ %n.vec, %vector.body ] ; 8 uses
  %3 = sub nsw i64 %wide.trip.count35, %indvars.iv32.ph
  %xtraiter77 = and i64 %3, 1
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.lr.ph28.prol.loopexit, label %.lr.ph28.prol

.lr.ph28.prol:                                    ; preds = %.lr.ph28.preheader74
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv32.ph
  %i.am = load i64, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32.ph
  store i64 %i.am, ptr %i.an, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv32.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1096
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = add i64 %i.am, -1
  %i.as = add i64 %i.ar, %i.aq
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32.ph
  store i64 %i.as, ptr %i.at, align 8, !tbaa !18
  %indvars.iv.next33.prol = add nuw nsw i64 %indvars.iv32.ph, 1
  br label %.lr.ph28.prol.loopexit

.lr.ph28.prol.loopexit:                           ; preds = %.lr.ph28.prol, %.lr.ph28.preheader74
  %indvars.iv32.unr = phi i64 [ %indvars.iv32.ph, %.lr.ph28.preheader74 ], [ %indvars.iv.next33.prol, %.lr.ph28.prol ]
  %i.au = add nsw i64 %wide.trip.count35, -1
  %i.av = icmp eq i64 %indvars.iv32.ph, %i.au
  br i1 %i.av, label %.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %indvars.iv32 = phi i64 [ %indvars.iv.next33.1, %.lr.ph28 ], [ %indvars.iv32.unr, %.lr.ph28.prol.loopexit ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1096
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !24
  %i.bc = add i64 %i.ax, -1
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !18
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next33
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !24 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next33
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1096
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24
  %i.bl = add i64 %i.bg, -1
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next33
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !18
  %indvars.iv.next33.1 = add nuw nsw i64 %indvars.iv32, 2 ; 2 uses
  %exitcond36.not.1 = icmp eq i64 %indvars.iv.next33.1, %wide.trip.count35
  br i1 %exitcond36.not.1, label %.loopexit, label %.lr.ph28, !llvm.loop !230

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !61
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !18
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !65
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !18
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit75.unr-lcssa, label %bb.c, !llvm.loop !231

.loopexit.loopexit75.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit75.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit75.unr-lcssa ] ; 3 uses
  %lcmp.mod76 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil.init ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !61
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !18
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !65
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !18
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
  %i.y = mul i64 %i.x, %i.v
  %i.z = add i64 %i.y, %i.u
  %.not28 = icmp eq i64 %i.t, %i.z
  br i1 %.not28, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.lr.ph35
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %.loopexit, label %.lr.ph35, !llvm.loop !238

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !239

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !64
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.d, %bb.e, %.preheader, %bb.c, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %.lr.ph ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5S__hyper_iter_next(ptr nofree noundef captures(none) %0, i64 noundef %1) #9 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 10 uses
  %i.b = alloca [32 x i64], align 16              ; 8 uses
  %i.c = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %.loopexit143, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.k = load i8, ptr %i.j, align 4, !tbaa !24, !range !14, !noundef !15
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
end_hunk_0
