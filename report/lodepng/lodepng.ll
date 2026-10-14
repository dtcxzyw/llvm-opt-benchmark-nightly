Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings:bb.a

bb.o:                                             ; preds = %.preheader19
  %i.ml = call noundef i32 %i.mk(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef %i.lc, i64 noundef %i.ls, ptr noundef nonnull %5), !inline_history !15 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %.preheader19
  %i.mm = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef %i.lc, i64 noundef %i.ls, ptr noundef nonnull %5) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.mn = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @free(ptr noundef %i.mn) #31
  %i.mo = load i64, ptr %i.e, align 16, !tbaa !25 ; 2 uses
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.ld, ptr noundef %i.mj, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 1)
  store i64 0, ptr %i.lu, align 8, !tbaa !25
  store ptr null, ptr %i.g, align 8, !tbaa !28
  %i.mp = load ptr, ptr %i.lb, align 8, !tbaa !211 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.mp, null
  br i1 %.not.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mq = call noundef i32 %i.mp(ptr noundef nonnull %i.g, ptr noundef nonnull %i.lu, ptr noundef %i.ld, i64 noundef %i.ls, ptr noundef nonnull %5), !inline_history !15 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.mr = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.lu, ptr noundef %i.ld, i64 noundef %i.ls, ptr noundef nonnull %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ms = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @free(ptr noundef %i.ms) #31
  %i.mt = load i64, ptr %i.lu, align 8, !tbaa !25 ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.mo
  %spec.select = call i64 @llvm.umin.i64(i64 %i.mt, i64 %i.mo) ; 2 uses
  %spec.select205 = zext i1 %i.mu to i32
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.lf, ptr noundef %i.mj, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 2)
  store i64 0, ptr %i.lv, align 16, !tbaa !25
  store ptr null, ptr %i.g, align 8, !tbaa !28
  %i.mv = load ptr, ptr %i.lb, align 8, !tbaa !211 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.mv, null
  br i1 %.not.i.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mw = call noundef i32 %i.mv(ptr noundef nonnull %i.g, ptr noundef nonnull %i.lv, ptr noundef %i.lf, i64 noundef %i.ls, ptr noundef nonnull %5), !inline_history !15 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.mx = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.lv, ptr noundef %i.lf, i64 noundef %i.ls, ptr noundef nonnull %5) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.my = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @free(ptr noundef %i.my) #31
  %i.mz = load i64, ptr %i.lv, align 16, !tbaa !25 ; 2 uses
  %i.na = icmp ult i64 %i.mz, %spec.select
  %spec.select206 = call i64 @llvm.umin.i64(i64 %i.mz, i64 %spec.select) ; 2 uses
  %spec.select207 = select i1 %i.na, i32 2, i32 %spec.select205
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.lh, ptr noundef %i.mj, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 3)
  store i64 0, ptr %i.lw, align 8, !tbaa !25
  store ptr null, ptr %i.g, align 8, !tbaa !28
  %i.nb = load ptr, ptr %i.lb, align 8, !tbaa !211 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.nb, null
  br i1 %.not.i.3, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nc = call noundef i32 %i.nb(ptr noundef nonnull %i.g, ptr noundef nonnull %i.lw, ptr noundef %i.lh, i64 noundef %i.ls, ptr noundef nonnull %5), !inline_history !15 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.nd = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.lw, ptr noundef %i.lh, i64 noundef %i.ls, ptr noundef nonnull %5) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ne = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @free(ptr noundef %i.ne) #31
  %i.nf = load i64, ptr %i.lw, align 8, !tbaa !25 ; 2 uses
  %i.ng = icmp ult i64 %i.nf, %spec.select206
  %spec.select208 = call i64 @llvm.umin.i64(i64 %i.nf, i64 %spec.select206)
  %spec.select209 = select i1 %i.ng, i32 3, i32 %spec.select207
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.lo, ptr noundef %i.mj, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 4)
  store i64 0, ptr %i.lx, align 16, !tbaa !25
  store ptr null, ptr %i.g, align 8, !tbaa !28
  %i.nh = load ptr, ptr %i.lb, align 8, !tbaa !211 ; 2 uses
  %.not.i.4 = icmp eq ptr %i.nh, null
  br i1 %.not.i.4, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ni = call noundef i32 %i.nh(ptr noundef nonnull %i.g, ptr noundef nonnull %i.lx, ptr noundef %i.lo, i64 noundef %i.ls, ptr noundef nonnull %5), !inline_history !15 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.nj = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.lx, ptr noundef %i.lo, i64 noundef %i.ls, ptr noundef nonnull %5) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.nk = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @free(ptr noundef %i.nk) #31
  %i.nl = load i64, ptr %i.lx, align 16, !tbaa !25
  %i.nm = icmp ult i64 %i.nl, %spec.select208
  %spec.select210 = select i1 %i.nm, i32 4, i32 %spec.select209 ; 2 uses
  %i.nn = trunc nuw nsw i32 %spec.select210 to i8
  %i.no = mul i64 %i.u, %indvars.iv101
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 %i.no ; 2 uses
  store i8 %i.nn, ptr %i.np, align 1, !tbaa !35
  br i1 %.not28227, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.ac
  %i.nq = zext nneg i32 %spec.select210 to i64
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.nq
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !28 ; 4 uses
  %i.nt = getelementptr i8, ptr %i.np, i64 1      ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.nu = ptrtoaddr ptr %i.ns to i64
  %i.nv = sub i64 %i.nu, %i.mh
  %diff.check = icmp ugt i64 %i.nv, -32
  %or.cond366 = select i1 %i.me, i1 true, i1 %diff.check
  br i1 %or.cond366, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check218, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 %index ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %wide.load = load <16 x i8>, ptr %i.nw, align 1, !tbaa !35
  %wide.load219 = load <16 x i8>, ptr %i.nx, align 1, !tbaa !35
  %i.ny = getelementptr i8, ptr %i.nt, i64 %index ; 2 uses
  %i.nz = getelementptr i8, ptr %i.ny, i64 16
  store <16 x i8> %wide.load, ptr %i.ny, align 1, !tbaa !35
  store <16 x i8> %wide.load219, ptr %i.nz, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.oa = icmp eq i64 %index.next, %n.vec
  br i1 %i.oa, label %middle.block, label %vector.body, !llvm.loop !1023

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index221 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next223, %vec.epilog.vector.body ] ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ns, i64 %index221
  %wide.load222 = load <4 x i8>, ptr %i.ob, align 1, !tbaa !35
  %i.oc = getelementptr i8, ptr %i.nt, i64 %index221
  store <4 x i8> %wide.load222, ptr %i.oc, align 1, !tbaa !35
  %index.next223 = add nuw i64 %index221, 4       ; 2 uses
  %i.od = icmp eq i64 %index.next223, %n.vec220
  br i1 %i.od, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1024

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n224, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec220, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ns, i64 %indvars.iv
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !35
  %i.og = getelementptr i8, ptr %i.nt, i64 %indvars.iv
  store i8 %i.of, ptr %i.og, align 1, !tbaa !35
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.oh = and i64 %indvars.iv.next, 4294967295
  %.not282 = icmp eq i64 %i.t, %i.oh
  br i1 %.not282, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1025

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ac
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %.not280 = icmp eq i64 %indvars.iv.next102, %i.lt
  br i1 %.not280, label %.loopexit21, label %.preheader19, !llvm.loop !1026

.loopexit21:                                      ; preds = %._crit_edge, %bb.n
  call void @free(ptr noundef %i.lc) #31
  call void @free(ptr noundef %i.ld) #31
  call void @free(ptr noundef %i.lf) #31
  call void @free(ptr noundef %i.lh) #31
  call void @free(ptr noundef %i.lo) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.lr.ph90, %.preheader17, %.thread3, %.thread, %.loopexit16, %.loopexit21, %.loopexit13, %bb.e, %bb.c
  %.0227 = phi i32 [ 31, %bb.c ], [ 88, %bb.e ], [ %spec.select308.4, %.loopexit21 ], [ %spec.select.4, %.loopexit13 ], [ %spec.select306.4, %.loopexit16 ], [ 0, %.thread3 ], [ 31, %.thread ], [ 0, %.preheader17 ], [ 0, %.lr.ph90 ], [ 0, %bb.m ]
  ret i32 %.0227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i64 noundef range(i64 0, 536870912) %4, i8 noundef zeroext %5) unnamed_addr #10 {
bb.a:
  switch i8 %5, label %.loopexit [
    i8 0, label %.preheader
    i8 1, label %.preheader147
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.d
  ]

.preheader147:                                    ; preds = %bb.a
  %.not143189 = icmp eq i64 %4, 0
  br i1 %.not143189, label %.preheader145, label %iter.check554

iter.check554:                                    ; preds = %.preheader147
  %min.iters.check541 = icmp samesign ult i64 %4, 4
  %6 = ptrtoaddr ptr %0 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.a = sub i64 %7, %6
  %diff.check540 = icmp ugt i64 %i.a, -32
  %or.cond = or i1 %min.iters.check541, %diff.check540
  br i1 %or.cond, label %.lr.ph191.preheader, label %vector.main.loop.iter.check542

vector.main.loop.iter.check542:                   ; preds = %iter.check554
  %min.iters.check543 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check543, label %vec.epilog.ph558, label %vector.ph544

vector.ph544:                                     ; preds = %vector.main.loop.iter.check542
  %i.b = and i64 %4, 28
  %n.vec545 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body546

vector.body546:                                   ; preds = %vector.ph544, %vector.body546
  %index547 = phi i64 [ 0, %vector.ph544 ], [ %index.next550, %vector.body546 ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %index547 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load548 = load <16 x i8>, ptr %i.c, align 1, !tbaa !35
  %wide.load549 = load <16 x i8>, ptr %i.d, align 1, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index547 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <16 x i8> %wide.load548, ptr %i.e, align 1, !tbaa !35
  store <16 x i8> %wide.load549, ptr %i.f, align 1, !tbaa !35
  %index.next550 = add nuw i64 %index547, 32      ; 2 uses
  %i.g = icmp eq i64 %index.next550, %n.vec545
  br i1 %i.g, label %middle.block551, label %vector.body546, !llvm.loop !1030

middle.block551:                                  ; preds = %vector.body546
  %cmp.n552 = icmp eq i64 %4, %n.vec545
  br i1 %cmp.n552, label %.preheader145, label %vec.epilog.iter.check556

vec.epilog.iter.check556:                         ; preds = %middle.block551
  %min.epilog.iters.check557 = icmp eq i64 %i.b, 0
  br i1 %min.epilog.iters.check557, label %.lr.ph191.preheader, label %vec.epilog.ph558, !prof !90

vec.epilog.ph558:                                 ; preds = %vector.main.loop.iter.check542, %vec.epilog.iter.check556
  %vec.epilog.resume.val553 = phi i64 [ %n.vec545, %vec.epilog.iter.check556 ], [ 0, %vector.main.loop.iter.check542 ]
  %n.vec559 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body560

vec.epilog.vector.body560:                        ; preds = %vec.epilog.vector.body560, %vec.epilog.ph558
  %index561 = phi i64 [ %vec.epilog.resume.val553, %vec.epilog.ph558 ], [ %index.next563, %vec.epilog.vector.body560 ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index561
  %wide.load562 = load <4 x i8>, ptr %i.h, align 1, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %index561
  store <4 x i8> %wide.load562, ptr %i.i, align 1, !tbaa !35
  %index.next563 = add nuw i64 %index561, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next563, %n.vec559
  br i1 %i.j, label %vec.epilog.middle.block564, label %vec.epilog.vector.body560, !llvm.loop !1031

vec.epilog.middle.block564:                       ; preds = %vec.epilog.vector.body560
  %cmp.n565 = icmp eq i64 %4, %n.vec559
  br i1 %cmp.n565, label %.preheader145, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %iter.check554, %vec.epilog.iter.check556, %vec.epilog.middle.block564
  %.1190.ph = phi i64 [ 0, %iter.check554 ], [ %n.vec545, %vec.epilog.iter.check556 ], [ %n.vec559, %vec.epilog.middle.block564 ] ; 3 uses
  %xtraiter664 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod665.not = icmp eq i64 %xtraiter664, 0
  br i1 %lcmp.mod665.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol

.lr.ph191.prol:                                   ; preds = %.lr.ph191.preheader, %.lr.ph191.prol
  %.1190.prol = phi i64 [ %i.n, %.lr.ph191.prol ], [ %.1190.ph, %.lr.ph191.preheader ] ; 3 uses
  %prol.iter666 = phi i64 [ %prol.iter666.next, %.lr.ph191.prol ], [ 0, %.lr.ph191.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.1190.prol
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.1190.prol
  store i8 %i.l, ptr %i.m, align 1, !tbaa !35
  %i.n = add nuw nsw i64 %.1190.prol, 1           ; 2 uses
  %prol.iter666.next = add i64 %prol.iter666, 1   ; 2 uses
  %prol.iter666.cmp.not = icmp eq i64 %prol.iter666.next, %xtraiter664
  br i1 %prol.iter666.cmp.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol, !llvm.loop !1032

.lr.ph191.prol.loopexit:                          ; preds = %.lr.ph191.prol, %.lr.ph191.preheader
  %.1190.unr = phi i64 [ %.1190.ph, %.lr.ph191.preheader ], [ %i.n, %.lr.ph191.prol ]
  %i.o = sub nsw i64 %.1190.ph, %4
  %i.p = icmp ugt i64 %i.o, -4
  br i1 %i.p, label %.preheader145, label %.lr.ph191

.preheader:                                       ; preds = %bb.a
  %.not144194 = icmp eq i64 %3, 0
  br i1 %.not144194, label %.loopexit, label %iter.check616

iter.check616:                                    ; preds = %.preheader
  %min.iters.check603 = icmp ult i64 %3, 4
  %8 = ptrtoaddr ptr %0 to i64
  %9 = ptrtoaddr ptr %1 to i64
  %i.q = sub i64 %9, %8
  %diff.check602 = icmp ugt i64 %i.q, -32
  %or.cond629 = or i1 %min.iters.check603, %diff.check602
  br i1 %or.cond629, label %.lr.ph196.preheader, label %vector.main.loop.iter.check604

vector.main.loop.iter.check604:                   ; preds = %iter.check616
  %min.iters.check605 = icmp ult i64 %3, 32
  br i1 %min.iters.check605, label %vec.epilog.ph620, label %vector.ph606

vector.ph606:                                     ; preds = %vector.main.loop.iter.check604
  %i.r = and i64 %3, 28
  %n.vec607 = and i64 %3, -32                     ; 4 uses
  br label %vector.body608

vector.body608:                                   ; preds = %vector.ph606, %vector.body608
  %index609 = phi i64 [ 0, %vector.ph606 ], [ %index.next612, %vector.body608 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index609 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load610 = load <16 x i8>, ptr %i.s, align 1, !tbaa !35
  %wide.load611 = load <16 x i8>, ptr %i.t, align 1, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %index609 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <16 x i8> %wide.load610, ptr %i.u, align 1, !tbaa !35
  store <16 x i8> %wide.load611, ptr %i.v, align 1, !tbaa !35
  %index.next612 = add nuw i64 %index609, 32      ; 2 uses
  %i.w = icmp eq i64 %index.next612, %n.vec607
  br i1 %i.w, label %middle.block613, label %vector.body608, !llvm.loop !1033

middle.block613:                                  ; preds = %vector.body608
  %cmp.n614 = icmp eq i64 %3, %n.vec607
  br i1 %cmp.n614, label %.loopexit, label %vec.epilog.iter.check618

vec.epilog.iter.check618:                         ; preds = %middle.block613
  %min.epilog.iters.check619 = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check619, label %.lr.ph196.preheader, label %vec.epilog.ph620, !prof !90

vec.epilog.ph620:                                 ; preds = %vector.main.loop.iter.check604, %vec.epilog.iter.check618
  %vec.epilog.resume.val615 = phi i64 [ %n.vec607, %vec.epilog.iter.check618 ], [ 0, %vector.main.loop.iter.check604 ]
  %n.vec621 = and i64 %3, -4                      ; 3 uses
  br label %vec.epilog.vector.body622

vec.epilog.vector.body622:                        ; preds = %vec.epilog.vector.body622, %vec.epilog.ph620
  %index623 = phi i64 [ %vec.epilog.resume.val615, %vec.epilog.ph620 ], [ %index.next625.a, %vec.epilog.vector.body622 ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index623
  %wide.load624.a = load <4 x i8>, ptr %i.x, align 1, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index623
  store <4 x i8> %wide.load624.a, ptr %i.y, align 1, !tbaa !35
  %index.next625.a = add nuw i64 %index623, 4     ; 2 uses
  %i.z = icmp eq i64 %index.next625.a, %n.vec621
  br i1 %i.z, label %vec.epilog.middle.block626, label %vec.epilog.vector.body622, !llvm.loop !1034

vec.epilog.middle.block626:                       ; preds = %vec.epilog.vector.body622
  %cmp.n627.a = icmp eq i64 %3, %n.vec621
  br i1 %cmp.n627.a, label %.loopexit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %iter.check616, %vec.epilog.iter.check618, %vec.epilog.middle.block626
  %.0195.ph = phi i64 [ 0, %iter.check616 ], [ %n.vec607, %vec.epilog.iter.check618 ], [ %n.vec621, %vec.epilog.middle.block626 ] ; 3 uses
  %xtraiter670 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod671.not = icmp eq i64 %xtraiter670, 0
  br i1 %lcmp.mod671.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %.0195.prol = phi i64 [ %i.ad, %.lr.ph196.prol ], [ %.0195.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter672 = phi i64 [ %prol.iter672.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.0195.prol
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.0195.prol
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !35
  %i.ad = add nuw i64 %.0195.prol, 1              ; 2 uses
  %prol.iter672.next = add i64 %prol.iter672, 1   ; 2 uses
  %prol.iter672.cmp.not = icmp eq i64 %prol.iter672.next, %xtraiter670
  br i1 %prol.iter672.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !1035

.lr.ph196.prol.loopexit:                          ; preds = %.lr.ph196.prol, %.lr.ph196.preheader
  %.0195.unr = phi i64 [ %.0195.ph, %.lr.ph196.preheader ], [ %i.ad, %.lr.ph196.prol ]
  %i.ae = sub i64 %.0195.ph, %3
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196
  %.0195 = phi i64 [ %i.av, %.lr.ph196 ], [ %.0195.unr, %.lr.ph196.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.0195
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.0195
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !35
  %i.aj = add nuw i64 %.0195, 1                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  store i8 %i.al, ptr %i.am, align 1, !tbaa !35
  %i.an = add nuw i64 %.0195, 2                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !35
  %i.ar = add nuw i64 %.0195, 3                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  store i8 %i.at, ptr %i.au, align 1, !tbaa !35
  %i.av = add nuw i64 %.0195, 4                   ; 2 uses
  %.not144.3 = icmp eq i64 %i.av, %3
  br i1 %.not144.3, label %.loopexit, label %.lr.ph196, !llvm.loop !1036

.preheader145:                                    ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191, %middle.block551, %vec.epilog.middle.block564, %.preheader147
  %i.aw = icmp ult i64 %4, %3
  br i1 %i.aw, label %iter.check587, label %.loopexit

iter.check587:                                    ; preds = %.preheader145
  %i.ax = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check571 = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check571, label %.lr.ph193.preheader, label %vector.memcheck567

vector.memcheck567:                               ; preds = %iter.check587
  %10 = ptrtoaddr ptr %0 to i64                   ; 2 uses
  %11 = ptrtoaddr ptr %1 to i64                   ; 2 uses
  %i.ay = add i64 %4, %10
  %i.az = sub i64 %11, %i.ay
  %diff.check568 = icmp ugt i64 %i.az, -32
  %i.ba = sub i64 %11, %10
  %diff.check569 = icmp ugt i64 %i.ba, -32
  %conflict.rdx570 = or i1 %diff.check568, %diff.check569
  br i1 %conflict.rdx570, label %.lr.ph193.preheader, label %vector.main.loop.iter.check572

vector.main.loop.iter.check572:                   ; preds = %vector.memcheck567
  %min.iters.check573 = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check573, label %vec.epilog.ph591, label %vector.ph574

vector.ph574:                                     ; preds = %vector.main.loop.iter.check572
  %i.bb = and i64 %i.ax, 24
  %n.vec575 = and i64 %i.ax, -32                  ; 4 uses
  %i.bc = add i64 %4, %n.vec575
  br label %vector.body576

vector.body576:                                   ; preds = %vector.ph574, %vector.body576
  %index577 = phi i64 [ 0, %vector.ph574 ], [ %index.next582, %vector.body576 ] ; 3 uses
  %i.bd = add nuw i64 %4, %index577               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load578 = load <16 x i8>, ptr %i.be, align 1, !tbaa !35
  %wide.load579 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %index577 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load580 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !35
  %wide.load581 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !35
  %i.bi = sub <16 x i8> %wide.load578, %wide.load580
  %i.bj = sub <16 x i8> %wide.load579, %wide.load581
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <16 x i8> %i.bi, ptr %i.bk, align 1, !tbaa !35
  store <16 x i8> %i.bj, ptr %i.bl, align 1, !tbaa !35
  %index.next582 = add nuw i64 %index577, 32      ; 2 uses
  %i.bm = icmp eq i64 %index.next582, %n.vec575
  br i1 %i.bm, label %middle.block583, label %vector.body576, !llvm.loop !1037

middle.block583:                                  ; preds = %vector.body576
  %cmp.n584 = icmp eq i64 %i.ax, %n.vec575
  br i1 %cmp.n584, label %.loopexit, label %vec.epilog.iter.check589

vec.epilog.iter.check589:                         ; preds = %middle.block583
  %min.epilog.iters.check590 = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check590, label %.lr.ph193.preheader, label %vec.epilog.ph591, !prof !1076

vec.epilog.ph591:                                 ; preds = %vector.main.loop.iter.check572, %vec.epilog.iter.check589
  %vec.epilog.resume.val585 = phi i64 [ %n.vec575, %vec.epilog.iter.check589 ], [ 0, %vector.main.loop.iter.check572 ]
  %n.vec592 = and i64 %i.ax, -8                   ; 3 uses
  %i.bn = add i64 %4, %n.vec592
  br label %vec.epilog.vector.body593

vec.epilog.vector.body593:                        ; preds = %vec.epilog.vector.body593, %vec.epilog.ph591
  %index594 = phi i64 [ %vec.epilog.resume.val585, %vec.epilog.ph591 ], [ %index.next597, %vec.epilog.vector.body593 ] ; 3 uses
  %i.bo = add nuw i64 %4, %index594               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  %wide.load595 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %index594
  %wide.load596 = load <8 x i8>, ptr %i.bq, align 1, !tbaa !35
  %i.br = sub <8 x i8> %wide.load595, %wide.load596
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  store <8 x i8> %i.br, ptr %i.bs, align 1, !tbaa !35
  %index.next597 = add nuw i64 %index594, 8       ; 2 uses
  %i.bt = icmp eq i64 %index.next597, %n.vec592
  br i1 %i.bt, label %vec.epilog.middle.block598, label %vec.epilog.vector.body593, !llvm.loop !1038

vec.epilog.middle.block598:                       ; preds = %vec.epilog.vector.body593
  %cmp.n599 = icmp eq i64 %i.ax, %n.vec592
  br i1 %cmp.n599, label %.loopexit, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %iter.check587, %vector.memcheck567, %vec.epilog.iter.check589, %vec.epilog.middle.block598
  %.2192.ph = phi i64 [ %4, %iter.check587 ], [ %4, %vector.memcheck567 ], [ %i.bc, %vec.epilog.iter.check589 ], [ %i.bn, %vec.epilog.middle.block598 ] ; 7 uses
  %i.bu = sub i64 %3, %.2192.ph
  %.neg676 = add i64 %.2192.ph, 1
  %xtraiter667 = and i64 %i.bu, 1
  %lcmp.mod668.not = icmp eq i64 %xtraiter667, 0
  br i1 %lcmp.mod668.not, label %.lr.ph193.prol.loopexit, label %.lr.ph193.prol

.lr.ph193.prol:                                   ; preds = %.lr.ph193.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %.2192.ph
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !35
  %i.bx = sub nuw i64 %.2192.ph, %4
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !35
  %i.ca = sub i8 %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %.2192.ph
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !35
  %i.cc = add nuw i64 %.2192.ph, 1
  br label %.lr.ph193.prol.loopexit

.lr.ph193.prol.loopexit:                          ; preds = %.lr.ph193.prol, %.lr.ph193.preheader
  %.2192.unr = phi i64 [ %.2192.ph, %.lr.ph193.preheader ], [ %i.cc, %.lr.ph193.prol ]
  %i.cd = icmp eq i64 %3, %.neg676
  br i1 %i.cd, label %.loopexit, label %.lr.ph193

.lr.ph191:                                        ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191
  %.1190 = phi i64 [ %i.ct, %.lr.ph191 ], [ %.1190.unr, %.lr.ph191.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %.1190
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !35
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %.1190
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !35
  %i.ch = add nuw nsw i64 %.1190, 1               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !35
  %i.cl = add nuw nsw i64 %.1190, 2               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !35
  %i.cp = add nuw nsw i64 %.1190, 3               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !35
  %i.ct = add nuw nsw i64 %.1190, 4               ; 2 uses
  %.not143.3 = icmp eq i64 %i.ct, %4
  br i1 %.not143.3, label %.preheader145, label %.lr.ph191, !llvm.loop !1039

.lr.ph193:                                        ; preds = %.lr.ph193.prol.loopexit, %.lr.ph193
  %.2192 = phi i64 [ %i.dj, %.lr.ph193 ], [ %.2192.unr, %.lr.ph193.prol.loopexit ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %.2192
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !35
  %i.cw = sub nuw i64 %.2192, %4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !35
  %i.cz = sub i8 %i.cv, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %.2192
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !35
  %i.db = add nuw i64 %.2192, 1                   ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !35
  %i.de = sub nuw i64 %i.db, %4
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !35
  %i.dh = sub i8 %i.dd, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.db
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !35
  %i.dj = add nuw i64 %.2192, 2                   ; 2 uses
  %exitcond208.not.1 = icmp eq i64 %i.dj, %3
  br i1 %exitcond208.not.1, label %.loopexit, label %.lr.ph193, !llvm.loop !1040

bb.b:                                             ; preds = %bb.a
  %.not140 = icmp eq ptr %2, null
  %.not141186 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %.not140, label %.preheader148, label %.preheader150

.preheader150:                                    ; preds = %bb.b
  br i1 %.not141186, label %.loopexit, label %iter.check497

iter.check497:                                    ; preds = %.preheader150
  %min.iters.check482 = icmp ult i64 %3, 4
  br i1 %min.iters.check482, label %.lr.ph185.preheader, label %vector.memcheck478

vector.memcheck478:                               ; preds = %iter.check497
  %12 = ptrtoaddr ptr %0 to i64                   ; 2 uses
  %13 = ptrtoaddr ptr %1 to i64
  %i.dk = sub i64 %13, %12
  %diff.check479 = icmp ugt i64 %i.dk, -32
  %14 = ptrtoaddr ptr %2 to i64
  %i.dl = sub i64 %14, %12
  %diff.check480 = icmp ugt i64 %i.dl, -32
  %conflict.rdx481 = or i1 %diff.check479, %diff.check480
  br i1 %conflict.rdx481, label %.lr.ph185.preheader, label %vector.main.loop.iter.check483

vector.main.loop.iter.check483:                   ; preds = %vector.memcheck478
  %min.iters.check484 = icmp ult i64 %3, 32
  br i1 %min.iters.check484, label %vec.epilog.ph501, label %vector.ph485

vector.ph485:                                     ; preds = %vector.main.loop.iter.check483
  %i.dm = and i64 %3, 28
  %n.vec486 = and i64 %3, -32                     ; 4 uses
  br label %vector.body487

vector.body487:                                   ; preds = %vector.ph485, %vector.body487
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next493, %vector.body487 ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %index488 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load489.a = load <16 x i8>, ptr %i.dn, align 1, !tbaa !35
  %wide.load490 = load <16 x i8>, ptr %i.do, align 1, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %index488 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load491 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !35
  %wide.load492 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !35
  %i.dr = sub <16 x i8> %wide.load489.a, %wide.load491
  %i.ds = sub <16 x i8> %wide.load490, %wide.load492
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %index488 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <16 x i8> %i.dr, ptr %i.dt, align 1, !tbaa !35
  store <16 x i8> %i.ds, ptr %i.du, align 1, !tbaa !35
  %index.next493 = add nuw i64 %index488, 32      ; 2 uses
  %i.dv = icmp eq i64 %index.next493, %n.vec486
  br i1 %i.dv, label %middle.block494, label %vector.body487, !llvm.loop !1041

middle.block494:                                  ; preds = %vector.body487
  %cmp.n495 = icmp eq i64 %3, %n.vec486
  br i1 %cmp.n495, label %.loopexit, label %vec.epilog.iter.check499

vec.epilog.iter.check499:                         ; preds = %middle.block494
  %min.epilog.iters.check500 = icmp eq i64 %i.dm, 0
  br i1 %min.epilog.iters.check500, label %.lr.ph185.preheader, label %vec.epilog.ph501, !prof !90

vec.epilog.ph501:                                 ; preds = %vector.main.loop.iter.check483, %vec.epilog.iter.check499
  %vec.epilog.resume.val496 = phi i64 [ %n.vec486, %vec.epilog.iter.check499 ], [ 0, %vector.main.loop.iter.check483 ]
  %n.vec502 = and i64 %3, -4                      ; 3 uses
  br label %vec.epilog.vector.body503

vec.epilog.vector.body503:                        ; preds = %vec.epilog.vector.body503, %vec.epilog.ph501
  %index504 = phi i64 [ %vec.epilog.resume.val496, %vec.epilog.ph501 ], [ %index.next507, %vec.epilog.vector.body503 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %index504
  %wide.load505 = load <4 x i8>, ptr %i.dw, align 1, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %index504
  %wide.load506 = load <4 x i8>, ptr %i.dx, align 1, !tbaa !35
  %i.dy = sub <4 x i8> %wide.load505, %wide.load506
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %index504
  store <4 x i8> %i.dy, ptr %i.dz, align 1, !tbaa !35
  %index.next507 = add nuw i64 %index504, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next507, %n.vec502
  br i1 %i.ea, label %vec.epilog.middle.block508, label %vec.epilog.vector.body503, !llvm.loop !1042

vec.epilog.middle.block508:                       ; preds = %vec.epilog.vector.body503
  %cmp.n509 = icmp eq i64 %3, %n.vec502
  br i1 %cmp.n509, label %.loopexit, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %iter.check497, %vector.memcheck478, %vec.epilog.iter.check499, %vec.epilog.middle.block508
  %.3184.ph = phi i64 [ 0, %iter.check497 ], [ 0, %vector.memcheck478 ], [ %n.vec486, %vec.epilog.iter.check499 ], [ %n.vec502, %vec.epilog.middle.block508 ] ; 3 uses
  %xtraiter658 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol

.lr.ph185.prol:                                   ; preds = %.lr.ph185.preheader, %.lr.ph185.prol
  %.3184.prol = phi i64 [ %i.eh, %.lr.ph185.prol ], [ %.3184.ph, %.lr.ph185.preheader ] ; 4 uses
  %prol.iter660 = phi i64 [ %prol.iter660.next, %.lr.ph185.prol ], [ 0, %.lr.ph185.preheader ]
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %.3184.prol
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %.3184.prol
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !35
  %i.ef = sub i8 %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %.3184.prol
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !35
  %i.eh = add nuw i64 %.3184.prol, 1              ; 2 uses
  %prol.iter660.next = add i64 %prol.iter660, 1   ; 2 uses
  %prol.iter660.cmp.not = icmp eq i64 %prol.iter660.next, %xtraiter658
  br i1 %prol.iter660.cmp.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol, !llvm.loop !1043

.lr.ph185.prol.loopexit:                          ; preds = %.lr.ph185.prol, %.lr.ph185.preheader
  %.3184.unr = phi i64 [ %.3184.ph, %.lr.ph185.preheader ], [ %i.eh, %.lr.ph185.prol ]
  %i.ei = sub i64 %.3184.ph, %3
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %.loopexit, label %.lr.ph185

.preheader148:                                    ; preds = %bb.b
  br i1 %.not141186, label %.loopexit, label %iter.check526

iter.check526:                                    ; preds = %.preheader148
  %min.iters.check513 = icmp ult i64 %3, 4
  %15 = ptrtoaddr ptr %0 to i64
  %16 = ptrtoaddr ptr %1 to i64
  %i.ek = sub i64 %16, %15
  %diff.check512 = icmp ugt i64 %i.ek, -32
  %or.cond630 = or i1 %min.iters.check513, %diff.check512
  br i1 %or.cond630, label %.lr.ph188.preheader, label %vector.main.loop.iter.check514

vector.main.loop.iter.check514:                   ; preds = %iter.check526
  %min.iters.check515 = icmp ult i64 %3, 32
  br i1 %min.iters.check515, label %vec.epilog.ph530, label %vector.ph516

vector.ph516:                                     ; preds = %vector.main.loop.iter.check514
  %i.el = and i64 %3, 28
  %n.vec517 = and i64 %3, -32                     ; 4 uses
  br label %vector.body518

vector.body518:                                   ; preds = %vector.ph516, %vector.body518
  %index519 = phi i64 [ 0, %vector.ph516 ], [ %index.next522, %vector.body518 ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %index519 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load520 = load <16 x i8>, ptr %i.em, align 1, !tbaa !35
  %wide.load521 = load <16 x i8>, ptr %i.en, align 1, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %index519 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <16 x i8> %wide.load520, ptr %i.eo, align 1, !tbaa !35
  store <16 x i8> %wide.load521, ptr %i.ep, align 1, !tbaa !35
  %index.next522 = add nuw i64 %index519, 32      ; 2 uses
  %i.eq = icmp eq i64 %index.next522, %n.vec517
  br i1 %i.eq, label %middle.block523, label %vector.body518, !llvm.loop !1044

middle.block523:                                  ; preds = %vector.body518
  %cmp.n524 = icmp eq i64 %3, %n.vec517
  br i1 %cmp.n524, label %.loopexit, label %vec.epilog.iter.check528

vec.epilog.iter.check528:                         ; preds = %middle.block523
  %min.epilog.iters.check529 = icmp eq i64 %i.el, 0
  br i1 %min.epilog.iters.check529, label %.lr.ph188.preheader, label %vec.epilog.ph530, !prof !90

vec.epilog.ph530:                                 ; preds = %vector.main.loop.iter.check514, %vec.epilog.iter.check528
  %vec.epilog.resume.val525 = phi i64 [ %n.vec517, %vec.epilog.iter.check528 ], [ 0, %vector.main.loop.iter.check514 ]
  %n.vec531 = and i64 %3, -4                      ; 3 uses
  br label %vec.epilog.vector.body532

vec.epilog.vector.body532:                        ; preds = %vec.epilog.vector.body532, %vec.epilog.ph530
  %index533 = phi i64 [ %vec.epilog.resume.val525, %vec.epilog.ph530 ], [ %index.next535, %vec.epilog.vector.body532 ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 %index533
  %wide.load534 = load <4 x i8>, ptr %i.er, align 1, !tbaa !35
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %index533
  store <4 x i8> %wide.load534, ptr %i.es, align 1, !tbaa !35
  %index.next535 = add nuw i64 %index533, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next535, %n.vec531
  br i1 %i.et, label %vec.epilog.middle.block536, label %vec.epilog.vector.body532, !llvm.loop !1045

vec.epilog.middle.block536:                       ; preds = %vec.epilog.vector.body532
  %cmp.n537 = icmp eq i64 %3, %n.vec531
  br i1 %cmp.n537, label %.loopexit, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %iter.check526, %vec.epilog.iter.check528, %vec.epilog.middle.block536
  %.4187.ph = phi i64 [ 0, %iter.check526 ], [ %n.vec517, %vec.epilog.iter.check528 ], [ %n.vec531, %vec.epilog.middle.block536 ] ; 3 uses
  %xtraiter661 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod662.not = icmp eq i64 %xtraiter661, 0
  br i1 %lcmp.mod662.not, label %.lr.ph188.prol.loopexit, label %.lr.ph188.prol

.lr.ph188.prol:                                   ; preds = %.lr.ph188.preheader, %.lr.ph188.prol
  %.4187.prol = phi i64 [ %i.ex, %.lr.ph188.prol ], [ %.4187.ph, %.lr.ph188.preheader ] ; 3 uses
  %prol.iter663 = phi i64 [ %prol.iter663.next, %.lr.ph188.prol ], [ 0, %.lr.ph188.preheader ]
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %.4187.prol
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !35
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %.4187.prol
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !35
  %i.ex = add nuw i64 %.4187.prol, 1              ; 2 uses
  %prol.iter663.next = add i64 %prol.iter663, 1   ; 2 uses
  %prol.iter663.cmp.not = icmp eq i64 %prol.iter663.next, %xtraiter661
  br i1 %prol.iter663.cmp.not, label %.lr.ph188.prol.loopexit, label %.lr.ph188.prol, !llvm.loop !1046

.lr.ph188.prol.loopexit:                          ; preds = %.lr.ph188.prol, %.lr.ph188.preheader
  %.4187.unr = phi i64 [ %.4187.ph, %.lr.ph188.preheader ], [ %i.ex, %.lr.ph188.prol ]
  %i.ey = sub i64 %.4187.ph, %3
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %.loopexit, label %.lr.ph188

.lr.ph185:                                        ; preds = %.lr.ph185.prol.loopexit, %.lr.ph185
  %.3184 = phi i64 [ %i.gb, %.lr.ph185 ], [ %.3184.unr, %.lr.ph185.prol.loopexit ] ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 %.3184
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !35
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %.3184
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !35
  %i.fe = sub i8 %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %.3184
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !35
  %i.fg = add nuw i64 %.3184, 1                   ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !35
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !35
  %i.fl = sub i8 %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 %i.fg
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !35
  %i.fn = add nuw i64 %.3184, 2                   ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !35
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 %i.fn
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !35
  %i.fs = sub i8 %i.fp, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 %i.fn
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !35
  %i.fu = add nuw i64 %.3184, 3                   ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !35
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 %i.fu
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !35
  %i.fz = sub i8 %i.fw, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 %i.fu
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !35
  %i.gb = add nuw i64 %.3184, 4                   ; 2 uses
  %.not142.3 = icmp eq i64 %i.gb, %3
  br i1 %.not142.3, label %.loopexit, label %.lr.ph185, !llvm.loop !1047

.lr.ph188:                                        ; preds = %.lr.ph188.prol.loopexit, %.lr.ph188
  %.4187 = phi i64 [ %i.gr, %.lr.ph188 ], [ %.4187.unr, %.lr.ph188.prol.loopexit ] ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 %.4187
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !35
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %.4187
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !35
  %i.gf = add nuw i64 %.4187, 1                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !35
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 %i.gf
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !35
  %i.gj = add nuw i64 %.4187, 2                   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !35
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 %i.gj
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !35
  %i.gn = add nuw i64 %.4187, 3                   ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !35
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %i.gn
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !35
  %i.gr = add nuw i64 %.4187, 4                   ; 2 uses
  %.not141.3 = icmp eq i64 %i.gr, %3
  br i1 %.not141.3, label %.loopexit, label %.lr.ph188, !llvm.loop !1048

bb.c:                                             ; preds = %bb.a
  %.not137 = icmp eq ptr %2, null
  %.not138178 = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not137, label %.preheader154, label %.preheader157

.preheader157:                                    ; preds = %bb.c
  br i1 %.not138178, label %.preheader155, label %iter.check366

iter.check366:                                    ; preds = %.preheader157
  %min.iters.check351 = icmp samesign ult i64 %4, 4
  br i1 %min.iters.check351, label %.lr.ph175.preheader, label %vector.memcheck347

vector.memcheck347:                               ; preds = %iter.check366
  %17 = ptrtoaddr ptr %0 to i64                   ; 2 uses
  %18 = ptrtoaddr ptr %1 to i64
  %i.gs = sub i64 %18, %17
  %diff.check348 = icmp ugt i64 %i.gs, -32
  %19 = ptrtoaddr ptr %2 to i64
  %i.gt = sub i64 %19, %17
  %diff.check349 = icmp ugt i64 %i.gt, -32
  %conflict.rdx350 = or i1 %diff.check348, %diff.check349
  br i1 %conflict.rdx350, label %.lr.ph175.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck347
  %min.iters.check353 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check353, label %vec.epilog.ph370, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.gu = and i64 %4, 28
  %n.vec355 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph354, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 %index357 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %wide.load358 = load <16 x i8>, ptr %i.gv, align 1, !tbaa !35
  %wide.load359 = load <16 x i8>, ptr %i.gw, align 1, !tbaa !35
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 %index357 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %wide.load360 = load <16 x i8>, ptr %i.gx, align 1, !tbaa !35
  %wide.load361 = load <16 x i8>, ptr %i.gy, align 1, !tbaa !35
  %i.gz = lshr <16 x i8> %wide.load360, splat (i8 1)
  %i.ha = lshr <16 x i8> %wide.load361, splat (i8 1)
  %i.hb = sub <16 x i8> %wide.load358, %i.gz
  %i.hc = sub <16 x i8> %wide.load359, %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 %index357 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store <16 x i8> %i.hb, ptr %i.hd, align 1, !tbaa !35
  store <16 x i8> %i.hc, ptr %i.he, align 1, !tbaa !35
  %index.next362 = add nuw i64 %index357, 32      ; 2 uses
  %i.hf = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.hf, label %middle.block363, label %vector.body356, !llvm.loop !1049

middle.block363:                                  ; preds = %vector.body356
  %cmp.n364 = icmp eq i64 %4, %n.vec355
  br i1 %cmp.n364, label %.preheader155, label %vec.epilog.iter.check368

vec.epilog.iter.check368:                         ; preds = %middle.block363
  %min.epilog.iters.check369 = icmp eq i64 %i.gu, 0
  br i1 %min.epilog.iters.check369, label %.lr.ph175.preheader, label %vec.epilog.ph370, !prof !90

vec.epilog.ph370:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check368
  %vec.epilog.resume.val365 = phi i64 [ %n.vec355, %vec.epilog.iter.check368 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec371 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body372

vec.epilog.vector.body372:                        ; preds = %vec.epilog.vector.body372, %vec.epilog.ph370
  %index373 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph370 ], [ %index.next376, %vec.epilog.vector.body372 ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 %index373
  %wide.load374 = load <4 x i8>, ptr %i.hg, align 1, !tbaa !35
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 %index373
  %wide.load375 = load <4 x i8>, ptr %i.hh, align 1, !tbaa !35
  %i.hi = lshr <4 x i8> %wide.load375, splat (i8 1)
  %i.hj = sub <4 x i8> %wide.load374, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 %index373
  store <4 x i8> %i.hj, ptr %i.hk, align 1, !tbaa !35
  %index.next376 = add nuw i64 %index373, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.hl, label %vec.epilog.middle.block377, label %vec.epilog.vector.body372, !llvm.loop !1050

vec.epilog.middle.block377:                       ; preds = %vec.epilog.vector.body372
  %cmp.n378 = icmp eq i64 %4, %n.vec371
  br i1 %cmp.n378, label %.preheader155, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %iter.check366, %vector.memcheck347, %vec.epilog.iter.check368, %vec.epilog.middle.block377
  %.5174.ph = phi i64 [ 0, %iter.check366 ], [ 0, %vector.memcheck347 ], [ %n.vec355, %vec.epilog.iter.check368 ], [ %n.vec371, %vec.epilog.middle.block377 ] ; 6 uses
  %.neg673 = or disjoint i64 %.5174.ph, 1
  %xtraiter646 = and i64 %4, 1
  %lcmp.mod647.not = icmp eq i64 %xtraiter646, 0
  br i1 %lcmp.mod647.not, label %.lr.ph175.prol.loopexit, label %.lr.ph175.prol

.lr.ph175.prol:                                   ; preds = %.lr.ph175.preheader
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 %.5174.ph
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !35
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 %.5174.ph
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !35
  %i.hq = lshr i8 %i.hp, 1
  %i.hr = sub i8 %i.hn, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %.5174.ph
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !35
  %i.ht = or disjoint i64 %.5174.ph, 1
  br label %.lr.ph175.prol.loopexit

.lr.ph175.prol.loopexit:                          ; preds = %.lr.ph175.prol, %.lr.ph175.preheader
  %.5174.unr = phi i64 [ %.5174.ph, %.lr.ph175.preheader ], [ %i.ht, %.lr.ph175.prol ]
  %i.hu = icmp eq i64 %4, %.neg673
  br i1 %i.hu, label %.preheader155, label %.lr.ph175

.preheader154:                                    ; preds = %bb.c
  br i1 %.not138178, label %.preheader152, label %iter.check431

iter.check431:                                    ; preds = %.preheader154
  %min.iters.check418 = icmp samesign ult i64 %4, 4
  %20 = ptrtoaddr ptr %0 to i64
  %21 = ptrtoaddr ptr %1 to i64
  %i.hv = sub i64 %21, %20
  %diff.check417 = icmp ugt i64 %i.hv, -32
  %or.cond631 = or i1 %min.iters.check418, %diff.check417
  br i1 %or.cond631, label %.lr.ph180.preheader, label %vector.main.loop.iter.check419

vector.main.loop.iter.check419:                   ; preds = %iter.check431
  %min.iters.check420 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check420, label %vec.epilog.ph435, label %vector.ph421

vector.ph421:                                     ; preds = %vector.main.loop.iter.check419
  %i.hw = and i64 %4, 28
  %n.vec422 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body423

vector.body423:                                   ; preds = %vector.ph421, %vector.body423
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next427, %vector.body423 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 %index424 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load425 = load <16 x i8>, ptr %i.hx, align 1, !tbaa !35
  %wide.load426 = load <16 x i8>, ptr %i.hy, align 1, !tbaa !35
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 %index424 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <16 x i8> %wide.load425, ptr %i.hz, align 1, !tbaa !35
  store <16 x i8> %wide.load426, ptr %i.ia, align 1, !tbaa !35
  %index.next427 = add nuw i64 %index424, 32      ; 2 uses
  %i.ib = icmp eq i64 %index.next427, %n.vec422
  br i1 %i.ib, label %middle.block428, label %vector.body423, !llvm.loop !1051

middle.block428:                                  ; preds = %vector.body423
  %cmp.n429 = icmp eq i64 %4, %n.vec422
  br i1 %cmp.n429, label %.preheader152, label %vec.epilog.iter.check433

vec.epilog.iter.check433:                         ; preds = %middle.block428
  %min.epilog.iters.check434 = icmp eq i64 %i.hw, 0
  br i1 %min.epilog.iters.check434, label %.lr.ph180.preheader, label %vec.epilog.ph435, !prof !90

vec.epilog.ph435:                                 ; preds = %vector.main.loop.iter.check419, %vec.epilog.iter.check433
  %vec.epilog.resume.val430 = phi i64 [ %n.vec422, %vec.epilog.iter.check433 ], [ 0, %vector.main.loop.iter.check419 ]
  %n.vec436 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body437

vec.epilog.vector.body437:                        ; preds = %vec.epilog.vector.body437, %vec.epilog.ph435
  %index438 = phi i64 [ %vec.epilog.resume.val430, %vec.epilog.ph435 ], [ %index.next440, %vec.epilog.vector.body437 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %index438
  %wide.load439 = load <4 x i8>, ptr %i.ic, align 1, !tbaa !35
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 %index438
  store <4 x i8> %wide.load439, ptr %i.id, align 1, !tbaa !35
  %index.next440 = add nuw i64 %index438, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next440, %n.vec436
  br i1 %i.ie, label %vec.epilog.middle.block441, label %vec.epilog.vector.body437, !llvm.loop !1052

vec.epilog.middle.block441:                       ; preds = %vec.epilog.vector.body437
  %cmp.n442 = icmp eq i64 %4, %n.vec436
  br i1 %cmp.n442, label %.preheader152, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %iter.check431, %vec.epilog.iter.check433, %vec.epilog.middle.block441
  %.7179.ph = phi i64 [ 0, %iter.check431 ], [ %n.vec422, %vec.epilog.iter.check433 ], [ %n.vec436, %vec.epilog.middle.block441 ] ; 3 uses
  %xtraiter652 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod653.not = icmp eq i64 %xtraiter652, 0
  br i1 %lcmp.mod653.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol

.lr.ph180.prol:                                   ; preds = %.lr.ph180.preheader, %.lr.ph180.prol
  %.7179.prol = phi i64 [ %i.ii, %.lr.ph180.prol ], [ %.7179.ph, %.lr.ph180.preheader ] ; 3 uses
  %prol.iter654 = phi i64 [ %prol.iter654.next, %.lr.ph180.prol ], [ 0, %.lr.ph180.preheader ]
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 %.7179.prol
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !35
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 %.7179.prol
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !35
  %i.ii = add nuw nsw i64 %.7179.prol, 1          ; 2 uses
  %prol.iter654.next = add i64 %prol.iter654, 1   ; 2 uses
  %prol.iter654.cmp.not = icmp eq i64 %prol.iter654.next, %xtraiter652
  br i1 %prol.iter654.cmp.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol, !llvm.loop !1053

.lr.ph180.prol.loopexit:                          ; preds = %.lr.ph180.prol, %.lr.ph180.preheader
  %.7179.unr = phi i64 [ %.7179.ph, %.lr.ph180.preheader ], [ %i.ii, %.lr.ph180.prol ]
  %i.ij = sub nsw i64 %.7179.ph, %4
  %i.ik = icmp ugt i64 %i.ij, -4
  br i1 %i.ik, label %.preheader152, label %.lr.ph180

.preheader155:                                    ; preds = %.lr.ph175.prol.loopexit, %.lr.ph175, %middle.block363, %vec.epilog.middle.block377, %.preheader157
  %i.il = icmp ult i64 %4, %3
  br i1 %i.il, label %iter.check401, label %.loopexit

iter.check401:                                    ; preds = %.preheader155
  %i.im = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check386 = icmp ult i64 %i.im, 4
  br i1 %min.iters.check386, label %.lr.ph177.preheader, label %vector.memcheck380

vector.memcheck380:                               ; preds = %iter.check401
  %22 = ptrtoaddr ptr %0 to i64                   ; 3 uses
  %23 = ptrtoaddr ptr %1 to i64                   ; 2 uses
  %i.in = add i64 %4, %22
  %i.io = sub i64 %23, %i.in
  %diff.check381 = icmp ugt i64 %i.io, -16
  %i.ip = sub i64 %23, %22
  %diff.check382 = icmp ugt i64 %i.ip, -16
  %conflict.rdx383 = or i1 %diff.check381, %diff.check382
  %24 = ptrtoaddr ptr %2 to i64
  %i.iq = sub i64 %24, %22
  %diff.check384 = icmp ugt i64 %i.iq, -16
  %conflict.rdx385 = or i1 %conflict.rdx383, %diff.check384
  br i1 %conflict.rdx385, label %.lr.ph177.preheader, label %vector.main.loop.iter.check387

vector.main.loop.iter.check387:                   ; preds = %vector.memcheck380
  %min.iters.check388 = icmp ult i64 %i.im, 16
  br i1 %min.iters.check388, label %vec.epilog.ph405, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.ir = and i64 %i.im, 12
  %n.vec390 = and i64 %i.im, -16                  ; 4 uses
  %i.is = add i64 %4, %n.vec390
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph389, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next396, %vector.body391 ] ; 3 uses
  %i.it = add nuw i64 %4, %index392               ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 %i.it
  %wide.load393 = load <16 x i8>, ptr %i.iu, align 1, !tbaa !35
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 %index392
  %wide.load394 = load <16 x i8>, ptr %i.iv, align 1, !tbaa !35
  %i.iw = zext <16 x i8> %wide.load394 to <16 x i16>
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 %i.it
  %wide.load395 = load <16 x i8>, ptr %i.ix, align 1, !tbaa !35
  %i.iy = zext <16 x i8> %wide.load395 to <16 x i16>
  %i.iz = add nuw nsw <16 x i16> %i.iy, %i.iw
  %i.ja = lshr <16 x i16> %i.iz, splat (i16 1)
  %i.jb = trunc nuw <16 x i16> %i.ja to <16 x i8>
  %i.jc = sub <16 x i8> %wide.load393, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 %i.it
  store <16 x i8> %i.jc, ptr %i.jd, align 1, !tbaa !35
  %index.next396 = add nuw i64 %index392, 16      ; 2 uses
  %i.je = icmp eq i64 %index.next396, %n.vec390
  br i1 %i.je, label %middle.block397, label %vector.body391, !llvm.loop !1054

middle.block397:                                  ; preds = %vector.body391
  %cmp.n398 = icmp eq i64 %i.im, %n.vec390
  br i1 %cmp.n398, label %.loopexit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block397
  %min.epilog.iters.check404 = icmp eq i64 %i.ir, 0
  br i1 %min.epilog.iters.check404, label %.lr.ph177.preheader, label %vec.epilog.ph405, !prof !83

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check403
  %vec.epilog.resume.val399 = phi i64 [ %n.vec390, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec406 = and i64 %i.im, -4                   ; 3 uses
  %i.jf = add i64 %4, %n.vec406
  br label %vec.epilog.vector.body407

vec.epilog.vector.body407:                        ; preds = %vec.epilog.vector.body407, %vec.epilog.ph405
  %index408 = phi i64 [ %vec.epilog.resume.val399, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body407 ] ; 3 uses
  %i.jg = add nuw i64 %4, %index408               ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 %i.jg
  %wide.load409 = load <4 x i8>, ptr %i.jh, align 1, !tbaa !35
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %index408
  %wide.load410 = load <4 x i8>, ptr %i.ji, align 1, !tbaa !35
  %i.jj = zext <4 x i8> %wide.load410 to <4 x i16>
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 %i.jg
  %wide.load411 = load <4 x i8>, ptr %i.jk, align 1, !tbaa !35
  %i.jl = zext <4 x i8> %wide.load411 to <4 x i16>
  %i.jm = add nuw nsw <4 x i16> %i.jl, %i.jj
  %i.jn = lshr <4 x i16> %i.jm, splat (i16 1)
  %i.jo = trunc nuw <4 x i16> %i.jn to <4 x i8>
  %i.jp = sub <4 x i8> %wide.load409, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 %i.jg
  store <4 x i8> %i.jp, ptr %i.jq, align 1, !tbaa !35
  %index.next412 = add nuw i64 %index408, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.jr, label %vec.epilog.middle.block413, label %vec.epilog.vector.body407, !llvm.loop !1055

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body407
  %cmp.n414 = icmp eq i64 %i.im, %n.vec406
  br i1 %cmp.n414, label %.loopexit, label %.lr.ph177.preheader

.lr.ph177.preheader:                              ; preds = %iter.check401, %vector.memcheck380, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.6176.ph = phi i64 [ %4, %iter.check401 ], [ %4, %vector.memcheck380 ], [ %i.is, %vec.epilog.iter.check403 ], [ %i.jf, %vec.epilog.middle.block413 ] ; 8 uses
  %i.js = sub i64 %3, %.6176.ph
  %.neg674 = add i64 %.6176.ph, 1
  %xtraiter649 = and i64 %i.js, 1
  %lcmp.mod650.not = icmp eq i64 %xtraiter649, 0
  br i1 %lcmp.mod650.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol

.lr.ph177.prol:                                   ; preds = %.lr.ph177.preheader
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 %.6176.ph
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !35
  %i.jv = sub nuw i64 %.6176.ph, %4
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !35
  %i.jy = zext i8 %i.jx to i16
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 %.6176.ph
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !35
  %i.kb = zext i8 %i.ka to i16
  %i.kc = add nuw nsw i16 %i.kb, %i.jy
  %i.kd = lshr i16 %i.kc, 1
  %i.ke = trunc nuw i16 %i.kd to i8
  %i.kf = sub i8 %i.ju, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 %.6176.ph
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !35
  %i.kh = add nuw i64 %.6176.ph, 1
  br label %.lr.ph177.prol.loopexit

.lr.ph177.prol.loopexit:                          ; preds = %.lr.ph177.prol, %.lr.ph177.preheader
  %.6176.unr = phi i64 [ %.6176.ph, %.lr.ph177.preheader ], [ %i.kh, %.lr.ph177.prol ]
  %i.ki = icmp eq i64 %3, %.neg674
  br i1 %i.ki, label %.loopexit, label %.lr.ph177

.lr.ph175:                                        ; preds = %.lr.ph175.prol.loopexit, %.lr.ph175
  %.5174 = phi i64 [ %i.ky, %.lr.ph175 ], [ %.5174.unr, %.lr.ph175.prol.loopexit ] ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 %.5174
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !35
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 %.5174
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !35
  %i.kn = lshr i8 %i.km, 1
  %i.ko = sub i8 %i.kk, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 %.5174
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !35
  %i.kq = add nuw nsw i64 %.5174, 1               ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !35
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 %i.kq
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !35
  %i.kv = lshr i8 %i.ku, 1
  %i.kw = sub i8 %i.ks, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 %i.kq
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !35
  %i.ky = add nuw nsw i64 %.5174, 2               ; 2 uses
  %.not139.1 = icmp eq i64 %i.ky, %4
  br i1 %.not139.1, label %.preheader155, label %.lr.ph175, !llvm.loop !1056

.lr.ph177:                                        ; preds = %.lr.ph177.prol.loopexit, %.lr.ph177
  %.6176 = phi i64 [ %i.mc, %.lr.ph177 ], [ %.6176.unr, %.lr.ph177.prol.loopexit ] ; 6 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 %.6176
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !35
  %i.lb = sub nuw i64 %.6176, %4
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !35
  %i.le = zext i8 %i.ld to i16
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 %.6176
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !35
  %i.lh = zext i8 %i.lg to i16
  %i.li = add nuw nsw i16 %i.lh, %i.le
  %i.lj = lshr i16 %i.li, 1
  %i.lk = trunc nuw i16 %i.lj to i8
  %i.ll = sub i8 %i.la, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 %.6176
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !35
  %i.ln = add nuw i64 %.6176, 1                   ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !35
  %i.lq = sub nuw i64 %i.ln, %4
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !35
  %i.lt = zext i8 %i.ls to i16
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ln
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !35
  %i.lw = zext i8 %i.lv to i16
  %i.lx = add nuw nsw i16 %i.lw, %i.lt
  %i.ly = lshr i16 %i.lx, 1
  %i.lz = trunc nuw i16 %i.ly to i8
  %i.ma = sub i8 %i.lp, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ln
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !35
  %i.mc = add nuw i64 %.6176, 2                   ; 2 uses
  %exitcond206.not.1 = icmp eq i64 %i.mc, %3
  br i1 %exitcond206.not.1, label %.loopexit, label %.lr.ph177, !llvm.loop !1057

.preheader152:                                    ; preds = %.lr.ph180.prol.loopexit, %.lr.ph180, %middle.block428, %vec.epilog.middle.block441, %.preheader154
  %i.md = icmp ult i64 %4, %3
  br i1 %i.md, label %iter.check464, label %.loopexit

iter.check464:                                    ; preds = %.preheader152
  %i.me = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check448 = icmp ult i64 %i.me, 8
  br i1 %min.iters.check448, label %.lr.ph182.preheader, label %vector.memcheck444

vector.memcheck444:                               ; preds = %iter.check464
  %25 = ptrtoaddr ptr %0 to i64                   ; 2 uses
  %26 = ptrtoaddr ptr %1 to i64                   ; 2 uses
  %i.mf = add i64 %4, %25
  %i.mg = sub i64 %26, %i.mf
  %diff.check445 = icmp ugt i64 %i.mg, -32
  %i.mh = sub i64 %26, %25
  %diff.check446 = icmp ugt i64 %i.mh, -32
  %conflict.rdx447 = or i1 %diff.check445, %diff.check446
  br i1 %conflict.rdx447, label %.lr.ph182.preheader, label %vector.main.loop.iter.check449

vector.main.loop.iter.check449:                   ; preds = %vector.memcheck444
  %min.iters.check450 = icmp ult i64 %i.me, 32
  br i1 %min.iters.check450, label %vec.epilog.ph468, label %vector.ph451

vector.ph451:                                     ; preds = %vector.main.loop.iter.check449
  %i.mi = and i64 %i.me, 24
  %n.vec452 = and i64 %i.me, -32                  ; 4 uses
  %i.mj = add i64 %4, %n.vec452
  br label %vector.body453

vector.body453:                                   ; preds = %vector.ph451, %vector.body453
  %index454 = phi i64 [ 0, %vector.ph451 ], [ %index.next459, %vector.body453 ] ; 3 uses
  %i.mk = add nuw i64 %4, %index454               ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %wide.load455 = load <16 x i8>, ptr %i.ml, align 1, !tbaa !35
  %wide.load456 = load <16 x i8>, ptr %i.mm, align 1, !tbaa !35
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 %index454 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %wide.load457 = load <16 x i8>, ptr %i.mn, align 1, !tbaa !35
  %wide.load458 = load <16 x i8>, ptr %i.mo, align 1, !tbaa !35
  %i.mp = lshr <16 x i8> %wide.load457, splat (i8 1)
  %i.mq = lshr <16 x i8> %wide.load458, splat (i8 1)
  %i.mr = sub <16 x i8> %wide.load455, %i.mp
  %i.ms = sub <16 x i8> %wide.load456, %i.mq
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 %i.mk ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store <16 x i8> %i.mr, ptr %i.mt, align 1, !tbaa !35
  store <16 x i8> %i.ms, ptr %i.mu, align 1, !tbaa !35
  %index.next459 = add nuw i64 %index454, 32      ; 2 uses
  %i.mv = icmp eq i64 %index.next459, %n.vec452
  br i1 %i.mv, label %middle.block460, label %vector.body453, !llvm.loop !1058

middle.block460:                                  ; preds = %vector.body453
  %cmp.n461 = icmp eq i64 %i.me, %n.vec452
  br i1 %cmp.n461, label %.loopexit, label %vec.epilog.iter.check466

vec.epilog.iter.check466:                         ; preds = %middle.block460
  %min.epilog.iters.check467 = icmp eq i64 %i.mi, 0
  br i1 %min.epilog.iters.check467, label %.lr.ph182.preheader, label %vec.epilog.ph468, !prof !1076

vec.epilog.ph468:                                 ; preds = %vector.main.loop.iter.check449, %vec.epilog.iter.check466
  %vec.epilog.resume.val462 = phi i64 [ %n.vec452, %vec.epilog.iter.check466 ], [ 0, %vector.main.loop.iter.check449 ]
  %n.vec469 = and i64 %i.me, -8                   ; 3 uses
  %i.mw = add i64 %4, %n.vec469
  br label %vec.epilog.vector.body470

vec.epilog.vector.body470:                        ; preds = %vec.epilog.vector.body470, %vec.epilog.ph468
  %index471 = phi i64 [ %vec.epilog.resume.val462, %vec.epilog.ph468 ], [ %index.next474, %vec.epilog.vector.body470 ] ; 3 uses
  %i.mx = add nuw i64 %4, %index471               ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 %i.mx
  %wide.load472 = load <8 x i8>, ptr %i.my, align 1, !tbaa !35
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 %index471
  %wide.load473 = load <8 x i8>, ptr %i.mz, align 1, !tbaa !35
  %i.na = lshr <8 x i8> %wide.load473, splat (i8 1)
  %i.nb = sub <8 x i8> %wide.load472, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 %i.mx
  store <8 x i8> %i.nb, ptr %i.nc, align 1, !tbaa !35
  %index.next474 = add nuw i64 %index471, 8       ; 2 uses
  %i.nd = icmp eq i64 %index.next474, %n.vec469
  br i1 %i.nd, label %vec.epilog.middle.block475, label %vec.epilog.vector.body470, !llvm.loop !1059

vec.epilog.middle.block475:                       ; preds = %vec.epilog.vector.body470
  %cmp.n476 = icmp eq i64 %i.me, %n.vec469
  br i1 %cmp.n476, label %.loopexit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %iter.check464, %vector.memcheck444, %vec.epilog.iter.check466, %vec.epilog.middle.block475
  %.8181.ph = phi i64 [ %4, %iter.check464 ], [ %4, %vector.memcheck444 ], [ %i.mj, %vec.epilog.iter.check466 ], [ %i.mw, %vec.epilog.middle.block475 ] ; 7 uses
  %i.ne = sub i64 %3, %.8181.ph
  %.neg675 = add i64 %.8181.ph, 1
  %xtraiter655 = and i64 %i.ne, 1
  %lcmp.mod656.not = icmp eq i64 %xtraiter655, 0
  br i1 %lcmp.mod656.not, label %.lr.ph182.prol.loopexit, label %.lr.ph182.prol

.lr.ph182.prol:                                   ; preds = %.lr.ph182.preheader
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 %.8181.ph
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !35
  %i.nh = sub nuw i64 %.8181.ph, %4
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !35
  %i.nk = lshr i8 %i.nj, 1
  %i.nl = sub i8 %i.ng, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 %.8181.ph
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !35
  %i.nn = add nuw i64 %.8181.ph, 1
  br label %.lr.ph182.prol.loopexit

.lr.ph182.prol.loopexit:                          ; preds = %.lr.ph182.prol, %.lr.ph182.preheader
  %.8181.unr = phi i64 [ %.8181.ph, %.lr.ph182.preheader ], [ %i.nn, %.lr.ph182.prol ]
  %i.no = icmp eq i64 %3, %.neg675
  br i1 %i.no, label %.loopexit, label %.lr.ph182

.lr.ph180:                                        ; preds = %.lr.ph180.prol.loopexit, %.lr.ph180
  %.7179 = phi i64 [ %i.oe, %.lr.ph180 ], [ %.7179.unr, %.lr.ph180.prol.loopexit ] ; 6 uses
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 %.7179
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !35
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 %.7179
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !35
  %i.ns = add nuw nsw i64 %.7179, 1               ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !35
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 %i.ns
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !35
  %i.nw = add nuw nsw i64 %.7179, 2               ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !35
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 %i.nw
  store i8 %i.ny, ptr %i.nz, align 1, !tbaa !35
  %i.oa = add nuw nsw i64 %.7179, 3               ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !35
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 %i.oa
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !35
  %i.oe = add nuw nsw i64 %.7179, 4               ; 2 uses
  %.not138.3 = icmp eq i64 %i.oe, %4
  br i1 %.not138.3, label %.preheader152, label %.lr.ph180, !llvm.loop !1060

.lr.ph182:                                        ; preds = %.lr.ph182.prol.loopexit, %.lr.ph182
  %.8181 = phi i64 [ %i.ow, %.lr.ph182 ], [ %.8181.unr, %.lr.ph182.prol.loopexit ] ; 5 uses
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 %.8181
  %i.og = load i8, ptr %i.of, align 1, !tbaa !35
  %i.oh = sub nuw i64 %.8181, %4
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !35
  %i.ok = lshr i8 %i.oj, 1
  %i.ol = sub i8 %i.og, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 %.8181
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !35
  %i.on = add nuw i64 %.8181, 1                   ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !35
  %i.oq = sub nuw i64 %i.on, %4
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !35
  %i.ot = lshr i8 %i.os, 1
  %i.ou = sub i8 %i.op, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 %i.on
  store i8 %i.ou, ptr %i.ov, align 1, !tbaa !35
  %i.ow = add nuw i64 %.8181, 2                   ; 2 uses
  %exitcond207.not.1 = icmp eq i64 %i.ow, %3
  br i1 %exitcond207.not.1, label %.loopexit, label %.lr.ph182, !llvm.loop !1061

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %.not135168 = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not, label %.preheader160, label %.preheader163

.preheader163:                                    ; preds = %bb.d
  br i1 %.not135168, label %.preheader161, label %iter.check

iter.check:                                       ; preds = %.preheader163
  %min.iters.check = icmp samesign ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %27 = ptrtoaddr ptr %0 to i64                   ; 2 uses
  %28 = ptrtoaddr ptr %1 to i64
  %i.ox = sub i64 %28, %27
  %diff.check = icmp ugt i64 %i.ox, -32
  %29 = ptrtoaddr ptr %2 to i64
  %i.oy = sub i64 %29, %27
  %diff.check234 = icmp ugt i64 %i.oy, -32
  %conflict.rdx = or i1 %diff.check, %diff.check234
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check235 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check235, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.oz = and i64 %4, 28
  %n.vec = and i64 %4, 536870880                  ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %wide.load = load <16 x i8>, ptr %i.pa, align 1, !tbaa !35
  %wide.load236 = load <16 x i8>, ptr %i.pb, align 1, !tbaa !35
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %wide.load237 = load <16 x i8>, ptr %i.pc, align 1, !tbaa !35
  %wide.load238 = load <16 x i8>, ptr %i.pd, align 1, !tbaa !35
  %i.pe = sub <16 x i8> %wide.load, %wide.load237
  %i.pf = sub <16 x i8> %wide.load236, %wide.load238
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store <16 x i8> %i.pe, ptr %i.pg, align 1, !tbaa !35
  store <16 x i8> %i.pf, ptr %i.ph, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pi = icmp eq i64 %index.next, %n.vec
  br i1 %i.pi, label %middle.block, label %vector.body, !llvm.loop !1062

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.preheader161, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.oz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec239 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 %index240
  %wide.load241 = load <4 x i8>, ptr %i.pj, align 1, !tbaa !35
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 %index240
  %wide.load242 = load <4 x i8>, ptr %i.pk, align 1, !tbaa !35
  %i.pl = sub <4 x i8> %wide.load241, %wide.load242
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 %index240
  store <4 x i8> %i.pl, ptr %i.pm, align 1, !tbaa !35
  %index.next243 = add nuw i64 %index240, 4       ; 2 uses
  %i.pn = icmp eq i64 %index.next243, %n.vec239
  br i1 %i.pn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1063

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %4, %n.vec239
  br i1 %cmp.n244, label %.preheader161, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.9165.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec239, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.9165.prol = phi i64 [ %i.pu, %.lr.ph.prol ], [ %.9165.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 %.9165.prol
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !35
  %i.pq = getelementptr inbounds nuw i8, ptr %2, i64 %.9165.prol
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !35
  %i.ps = sub i8 %i.pp, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 %.9165.prol
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !35
  %i.pu = add nuw nsw i64 %.9165.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1064

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.9165.unr = phi i64 [ %.9165.ph, %.lr.ph.preheader ], [ %i.pu, %.lr.ph.prol ]
  %i.pv = sub nsw i64 %.9165.ph, %4
  %i.pw = icmp ugt i64 %i.pv, -4
  br i1 %i.pw, label %.preheader161, label %.lr.ph

.preheader160:                                    ; preds = %bb.d
  br i1 %.not135168, label %.preheader158, label %iter.check300

iter.check300:                                    ; preds = %.preheader160
  %min.iters.check287 = icmp samesign ult i64 %4, 4
  %30 = ptrtoaddr ptr %0 to i64
  %31 = ptrtoaddr ptr %1 to i64
  %i.px = sub i64 %31, %30
  %diff.check286 = icmp ugt i64 %i.px, -32
  %or.cond632 = or i1 %min.iters.check287, %diff.check286
  br i1 %or.cond632, label %.lr.ph170.preheader, label %vector.main.loop.iter.check288

vector.main.loop.iter.check288:                   ; preds = %iter.check300
  %min.iters.check289 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check289, label %vec.epilog.ph304, label %vector.ph290

vector.ph290:                                     ; preds = %vector.main.loop.iter.check288
  %i.py = and i64 %4, 28
  %n.vec291 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.ph290, %vector.body292
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next296, %vector.body292 ] ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 %index293 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %wide.load294 = load <16 x i8>, ptr %i.pz, align 1, !tbaa !35
  %wide.load295 = load <16 x i8>, ptr %i.qa, align 1, !tbaa !35
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 %index293 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  store <16 x i8> %wide.load294, ptr %i.qb, align 1, !tbaa !35
  store <16 x i8> %wide.load295, ptr %i.qc, align 1, !tbaa !35
  %index.next296 = add nuw i64 %index293, 32      ; 2 uses
  %i.qd = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.qd, label %middle.block297, label %vector.body292, !llvm.loop !1065

middle.block297:                                  ; preds = %vector.body292
  %cmp.n298 = icmp eq i64 %4, %n.vec291
  br i1 %cmp.n298, label %.preheader158, label %vec.epilog.iter.check302

vec.epilog.iter.check302:                         ; preds = %middle.block297
  %min.epilog.iters.check303 = icmp eq i64 %i.py, 0
  br i1 %min.epilog.iters.check303, label %.lr.ph170.preheader, label %vec.epilog.ph304, !prof !90

vec.epilog.ph304:                                 ; preds = %vector.main.loop.iter.check288, %vec.epilog.iter.check302
  %vec.epilog.resume.val299 = phi i64 [ %n.vec291, %vec.epilog.iter.check302 ], [ 0, %vector.main.loop.iter.check288 ]
  %n.vec305 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body306

vec.epilog.vector.body306:                        ; preds = %vec.epilog.vector.body306, %vec.epilog.ph304
  %index307 = phi i64 [ %vec.epilog.resume.val299, %vec.epilog.ph304 ], [ %index.next309, %vec.epilog.vector.body306 ] ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 %index307
  %wide.load308 = load <4 x i8>, ptr %i.qe, align 1, !tbaa !35
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 %index307
  store <4 x i8> %wide.load308, ptr %i.qf, align 1, !tbaa !35
  %index.next309 = add nuw i64 %index307, 4       ; 2 uses
  %i.qg = icmp eq i64 %index.next309, %n.vec305
  br i1 %i.qg, label %vec.epilog.middle.block310, label %vec.epilog.vector.body306, !llvm.loop !1066

vec.epilog.middle.block310:                       ; preds = %vec.epilog.vector.body306
  %cmp.n311 = icmp eq i64 %4, %n.vec305
  br i1 %cmp.n311, label %.preheader158, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %iter.check300, %vec.epilog.iter.check302, %vec.epilog.middle.block310
  %.11169.ph = phi i64 [ 0, %iter.check300 ], [ %n.vec291, %vec.epilog.iter.check302 ], [ %n.vec305, %vec.epilog.middle.block310 ] ; 3 uses
  %xtraiter640 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod641.not = icmp eq i64 %xtraiter640, 0
  br i1 %lcmp.mod641.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol

.lr.ph170.prol:                                   ; preds = %.lr.ph170.preheader, %.lr.ph170.prol
  %.11169.prol = phi i64 [ %i.qk, %.lr.ph170.prol ], [ %.11169.ph, %.lr.ph170.preheader ] ; 3 uses
  %prol.iter642 = phi i64 [ %prol.iter642.next, %.lr.ph170.prol ], [ 0, %.lr.ph170.preheader ]
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 %.11169.prol
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !35
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 %.11169.prol
  store i8 %i.qi, ptr %i.qj, align 1, !tbaa !35
  %i.qk = add nuw nsw i64 %.11169.prol, 1         ; 2 uses
  %prol.iter642.next = add i64 %prol.iter642, 1   ; 2 uses
  %prol.iter642.cmp.not = icmp eq i64 %prol.iter642.next, %xtraiter640
  br i1 %prol.iter642.cmp.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol, !llvm.loop !1067

.lr.ph170.prol.loopexit:                          ; preds = %.lr.ph170.prol, %.lr.ph170.preheader
  %.11169.unr = phi i64 [ %.11169.ph, %.lr.ph170.preheader ], [ %i.qk, %.lr.ph170.prol ]
  %i.ql = sub nsw i64 %.11169.ph, %4
  %i.qm = icmp ugt i64 %i.ql, -4
  br i1 %i.qm, label %.preheader158, label %.lr.ph170

.preheader161:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader163
  %i.qn = icmp ult i64 %4, %3
  br i1 %i.qn, label %iter.check269, label %.loopexit

iter.check269:                                    ; preds = %.preheader161
  %i.qo = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check253 = icmp ult i64 %i.qo, 4
  br i1 %min.iters.check253, label %.lr.ph167.preheader, label %vector.memcheck245

vector.memcheck245:                               ; preds = %iter.check269
  %32 = ptrtoaddr ptr %0 to i64                   ; 3 uses
  %33 = ptrtoaddr ptr %1 to i64                   ; 2 uses
  %i.qp = add i64 %4, %32                         ; 2 uses
  %i.qq = sub i64 %33, %i.qp
  %diff.check246 = icmp ugt i64 %i.qq, -16
  %i.qr = sub i64 %33, %32
  %diff.check247 = icmp ugt i64 %i.qr, -16
  %conflict.rdx248 = or i1 %diff.check246, %diff.check247
  %34 = ptrtoaddr ptr %2 to i64                   ; 2 uses
  %i.qs = sub i64 %34, %i.qp
  %diff.check249 = icmp ugt i64 %i.qs, -16
  %conflict.rdx250 = or i1 %conflict.rdx248, %diff.check249
  %i.qt = sub i64 %34, %32
  %diff.check251 = icmp ugt i64 %i.qt, -16
  %conflict.rdx252 = or i1 %conflict.rdx250, %diff.check251
  br i1 %conflict.rdx252, label %.lr.ph167.preheader, label %vector.main.loop.iter.check254

vector.main.loop.iter.check254:                   ; preds = %vector.memcheck245
  %min.iters.check255 = icmp ult i64 %i.qo, 16
  br i1 %min.iters.check255, label %vec.epilog.ph273, label %vector.ph256

vector.ph256:                                     ; preds = %vector.main.loop.iter.check254
  %i.qu = and i64 %i.qo, 12
  %n.vec257 = and i64 %i.qo, -16                  ; 4 uses
  %i.qv = add i64 %4, %n.vec257
  br label %vector.body258

vector.body258:                                   ; preds = %vector.ph256, %vector.body258
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body258 ] ; 4 uses
  %i.qw = add nuw i64 %4, %index259               ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 %i.qw
  %wide.load260 = load <16 x i8>, ptr %i.qx, align 1, !tbaa !35
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 %index259
  %wide.load261 = load <16 x i8>, ptr %i.qy, align 1, !tbaa !35 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 %i.qw
  %wide.load262 = load <16 x i8>, ptr %i.qz, align 1, !tbaa !35 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 %index259
  %wide.load263 = load <16 x i8>, ptr %i.ra, align 1, !tbaa !35 ; 2 uses
  %i.rb = zext <16 x i8> %wide.load262 to <16 x i32> ; 2 uses
  %i.rc = zext <16 x i8> %wide.load263 to <16 x i32> ; 3 uses
  %i.rd = sub nsw <16 x i32> %i.rb, %i.rc
  %i.re = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rd, i1 true) ; 2 uses
  %i.rf = zext <16 x i8> %wide.load261 to <16 x i32> ; 2 uses
  %i.rg = sub nsw <16 x i32> %i.rf, %i.rc
  %i.rh = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rg, i1 true) ; 2 uses
  %i.ri = add nuw nsw <16 x i32> %i.rb, %i.rf
  %i.rj = shl nuw nsw <16 x i32> %i.rc, splat (i32 1)
  %i.rk = sub nsw <16 x i32> %i.ri, %i.rj
  %i.rl = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rk, i1 true)
  %i.rm = icmp samesign ult <16 x i32> %i.rh, %i.re
  %i.rn = select <16 x i1> %i.rm, <16 x i8> %wide.load262, <16 x i8> %wide.load261
  %i.ro = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.rh, <16 x i32> %i.re)
  %i.rp = icmp samesign ult <16 x i32> %i.rl, %i.ro
  %i.rq = select <16 x i1> %i.rp, <16 x i8> %wide.load263, <16 x i8> %i.rn
  %i.rr = sub <16 x i8> %wide.load260, %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 %i.qw
  store <16 x i8> %i.rr, ptr %i.rs, align 1, !tbaa !35
  %index.next264 = add nuw i64 %index259, 16      ; 2 uses
  %i.rt = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.rt, label %middle.block265, label %vector.body258, !llvm.loop !1068

middle.block265:                                  ; preds = %vector.body258
  %cmp.n266 = icmp eq i64 %i.qo, %n.vec257
  br i1 %cmp.n266, label %.loopexit, label %vec.epilog.iter.check271

vec.epilog.iter.check271:                         ; preds = %middle.block265
  %min.epilog.iters.check272 = icmp eq i64 %i.qu, 0
  br i1 %min.epilog.iters.check272, label %.lr.ph167.preheader, label %vec.epilog.ph273, !prof !83

vec.epilog.ph273:                                 ; preds = %vector.main.loop.iter.check254, %vec.epilog.iter.check271
  %vec.epilog.resume.val267 = phi i64 [ %n.vec257, %vec.epilog.iter.check271 ], [ 0, %vector.main.loop.iter.check254 ]
  %n.vec274 = and i64 %i.qo, -4                   ; 3 uses
  %i.ru = add i64 %4, %n.vec274
  br label %vec.epilog.vector.body275

vec.epilog.vector.body275:                        ; preds = %vec.epilog.vector.body275, %vec.epilog.ph273
  %index276 = phi i64 [ %vec.epilog.resume.val267, %vec.epilog.ph273 ], [ %index.next281, %vec.epilog.vector.body275 ] ; 4 uses
  %i.rv = add nuw i64 %4, %index276               ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 %i.rv
  %wide.load277 = load <4 x i8>, ptr %i.rw, align 1, !tbaa !35
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 %index276
  %wide.load278 = load <4 x i8>, ptr %i.rx, align 1, !tbaa !35 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 %i.rv
  %wide.load279 = load <4 x i8>, ptr %i.ry, align 1, !tbaa !35 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 %index276
  %wide.load280 = load <4 x i8>, ptr %i.rz, align 1, !tbaa !35 ; 2 uses
  %i.sa = zext <4 x i8> %wide.load279 to <4 x i32> ; 2 uses
  %i.sb = zext <4 x i8> %wide.load280 to <4 x i32> ; 3 uses
  %i.sc = sub nsw <4 x i32> %i.sa, %i.sb
  %i.sd = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sc, i1 true) ; 2 uses
  %i.se = zext <4 x i8> %wide.load278 to <4 x i32> ; 2 uses
  %i.sf = sub nsw <4 x i32> %i.se, %i.sb
  %i.sg = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sf, i1 true) ; 2 uses
  %i.sh = add nuw nsw <4 x i32> %i.sa, %i.se
  %i.si = shl nuw nsw <4 x i32> %i.sb, splat (i32 1)
  %i.sj = sub nsw <4 x i32> %i.sh, %i.si
  %i.sk = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sj, i1 true)
  %i.sl = icmp samesign ult <4 x i32> %i.sg, %i.sd
  %i.sm = select <4 x i1> %i.sl, <4 x i8> %wide.load279, <4 x i8> %wide.load278
  %i.sn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.sg, <4 x i32> %i.sd)
  %i.so = icmp samesign ult <4 x i32> %i.sk, %i.sn
  %i.sp = select <4 x i1> %i.so, <4 x i8> %wide.load280, <4 x i8> %i.sm
  %i.sq = sub <4 x i8> %wide.load277, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 %i.rv
  store <4 x i8> %i.sq, ptr %i.sr, align 1, !tbaa !35
  %index.next281 = add nuw i64 %index276, 4       ; 2 uses
  %i.ss = icmp eq i64 %index.next281, %n.vec274
  br i1 %i.ss, label %vec.epilog.middle.block282, label %vec.epilog.vector.body275, !llvm.loop !1069

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body275
  %cmp.n283 = icmp eq i64 %i.qo, %n.vec274
  br i1 %cmp.n283, label %.loopexit, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %iter.check269, %vector.memcheck245, %vec.epilog.iter.check271, %vec.epilog.middle.block282
  %.10166.ph = phi i64 [ %4, %iter.check269 ], [ %4, %vector.memcheck245 ], [ %i.qv, %vec.epilog.iter.check271 ], [ %i.ru, %vec.epilog.middle.block282 ]
  br label %.lr.ph167

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.9165 = phi i64 [ %i.tu, %.lr.ph ], [ %.9165.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 %.9165
  %i.su = load i8, ptr %i.st, align 1, !tbaa !35
  %i.sv = getelementptr inbounds nuw i8, ptr %2, i64 %.9165
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !35
  %i.sx = sub i8 %i.su, %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 %.9165
  store i8 %i.sx, ptr %i.sy, align 1, !tbaa !35
  %i.sz = add nuw nsw i64 %.9165, 1               ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !35
  %i.tc = getelementptr inbounds nuw i8, ptr %2, i64 %i.sz
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !35
  %i.te = sub i8 %i.tb, %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 %i.sz
  store i8 %i.te, ptr %i.tf, align 1, !tbaa !35
  %i.tg = add nuw nsw i64 %.9165, 2               ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 %i.tg
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !35
  %i.tj = getelementptr inbounds nuw i8, ptr %2, i64 %i.tg
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !35
  %i.tl = sub i8 %i.ti, %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 %i.tg
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !35
  %i.tn = add nuw nsw i64 %.9165, 3               ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !35
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 %i.tn
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !35
  %i.ts = sub i8 %i.tp, %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 %i.tn
  store i8 %i.ts, ptr %i.tt, align 1, !tbaa !35
  %i.tu = add nuw nsw i64 %.9165, 4               ; 2 uses
  %.not136.3 = icmp eq i64 %i.tu, %4
  br i1 %.not136.3, label %.preheader161, label %.lr.ph, !llvm.loop !1070

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.10166 = phi i64 [ %i.uu, %.lr.ph167 ], [ %.10166.ph, %.lr.ph167.preheader ] ; 5 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 %.10166
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !35
  %i.tx = sub nuw i64 %.10166, %4                 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !35  ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %2, i64 %.10166
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !35  ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 %i.tx
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !35  ; 2 uses
  %i.ue = zext i8 %i.ub to i32                    ; 2 uses
  %i.uf = zext i8 %i.ud to i32                    ; 3 uses
  %i.ug = sub nsw i32 %i.ue, %i.uf
  %i.uh = tail call i32 @llvm.abs.i32(i32 %i.ug, i1 true) ; 2 uses
  %i.ui = zext i8 %i.tz to i32                    ; 2 uses
  %i.uj = sub nsw i32 %i.ui, %i.uf
  %i.uk = tail call i32 @llvm.abs.i32(i32 %i.uj, i1 true) ; 2 uses
  %i.ul = add nuw nsw i32 %i.ue, %i.ui
  %i.um = shl nuw nsw i32 %i.uf, 1
  %i.un = sub nsw i32 %i.ul, %i.um
  %i.uo = tail call i32 @llvm.abs.i32(i32 %i.un, i1 true)
  %i.up = icmp samesign ult i32 %i.uk, %i.uh
  %.032.i = select i1 %i.up, i8 %i.ub, i8 %i.tz
  %.0.in.i = tail call i32 @llvm.umin.i32(i32 %i.uk, i32 %i.uh)
  %i.uq = icmp samesign ult i32 %i.uo, %.0.in.i
  %i.ur = select i1 %i.uq, i8 %i.ud, i8 %.032.i
  %i.us = sub i8 %i.tw, %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 %.10166
  store i8 %i.us, ptr %i.ut, align 1, !tbaa !35
  %i.uu = add nuw i64 %.10166, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.uu, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph167, !llvm.loop !1071

.preheader158:                                    ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170, %middle.block297, %vec.epilog.middle.block310, %.preheader160
  %i.uv = icmp ult i64 %4, %3
  br i1 %i.uv, label %iter.check333, label %.loopexit

iter.check333:                                    ; preds = %.preheader158
  %i.uw = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check317 = icmp ult i64 %i.uw, 8
  br i1 %min.iters.check317, label %.lr.ph172.preheader, label %vector.memcheck313

vector.memcheck313:                               ; preds = %iter.check333
  %35 = ptrtoaddr ptr %0 to i64                   ; 2 uses
  %36 = ptrtoaddr ptr %1 to i64                   ; 2 uses
  %i.ux = add i64 %4, %35
  %i.uy = sub i64 %36, %i.ux
  %diff.check314 = icmp ugt i64 %i.uy, -32
  %i.uz = sub i64 %36, %35
  %diff.check315 = icmp ugt i64 %i.uz, -32
  %conflict.rdx316 = or i1 %diff.check314, %diff.check315
  br i1 %conflict.rdx316, label %.lr.ph172.preheader, label %vector.main.loop.iter.check318

vector.main.loop.iter.check318:                   ; preds = %vector.memcheck313
  %min.iters.check319 = icmp ult i64 %i.uw, 32
  br i1 %min.iters.check319, label %vec.epilog.ph337, label %vector.ph320

vector.ph320:                                     ; preds = %vector.main.loop.iter.check318
  %i.va = and i64 %i.uw, 24
  %n.vec321 = and i64 %i.uw, -32                  ; 4 uses
  %i.vb = add i64 %4, %n.vec321
  br label %vector.body322

vector.body322:                                   ; preds = %vector.ph320, %vector.body322
  %index323 = phi i64 [ 0, %vector.ph320 ], [ %index.next328, %vector.body322 ] ; 3 uses
  %i.vc = add nuw i64 %4, %index323               ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 %i.vc ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %wide.load324 = load <16 x i8>, ptr %i.vd, align 1, !tbaa !35
  %wide.load325 = load <16 x i8>, ptr %i.ve, align 1, !tbaa !35
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 %index323 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %wide.load326 = load <16 x i8>, ptr %i.vf, align 1, !tbaa !35
  %wide.load327 = load <16 x i8>, ptr %i.vg, align 1, !tbaa !35
  %i.vh = sub <16 x i8> %wide.load324, %wide.load326
  %i.vi = sub <16 x i8> %wide.load325, %wide.load327
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 %i.vc ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  store <16 x i8> %i.vh, ptr %i.vj, align 1, !tbaa !35
  store <16 x i8> %i.vi, ptr %i.vk, align 1, !tbaa !35
  %index.next328 = add nuw i64 %index323, 32      ; 2 uses
  %i.vl = icmp eq i64 %index.next328, %n.vec321
  br i1 %i.vl, label %middle.block329, label %vector.body322, !llvm.loop !1072

middle.block329:                                  ; preds = %vector.body322
  %cmp.n330 = icmp eq i64 %i.uw, %n.vec321
  br i1 %cmp.n330, label %.loopexit, label %vec.epilog.iter.check335

vec.epilog.iter.check335:                         ; preds = %middle.block329
  %min.epilog.iters.check336 = icmp eq i64 %i.va, 0
  br i1 %min.epilog.iters.check336, label %.lr.ph172.preheader, label %vec.epilog.ph337, !prof !1076

vec.epilog.ph337:                                 ; preds = %vector.main.loop.iter.check318, %vec.epilog.iter.check335
  %vec.epilog.resume.val331 = phi i64 [ %n.vec321, %vec.epilog.iter.check335 ], [ 0, %vector.main.loop.iter.check318 ]
  %n.vec338 = and i64 %i.uw, -8                   ; 3 uses
  %i.vm = add i64 %4, %n.vec338
  br label %vec.epilog.vector.body339

vec.epilog.vector.body339:                        ; preds = %vec.epilog.vector.body339, %vec.epilog.ph337
  %index340 = phi i64 [ %vec.epilog.resume.val331, %vec.epilog.ph337 ], [ %index.next343, %vec.epilog.vector.body339 ] ; 3 uses
  %i.vn = add nuw i64 %4, %index340               ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 %i.vn
  %wide.load341 = load <8 x i8>, ptr %i.vo, align 1, !tbaa !35
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 %index340
  %wide.load342 = load <8 x i8>, ptr %i.vp, align 1, !tbaa !35
  %i.vq = sub <8 x i8> %wide.load341, %wide.load342
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 %i.vn
  store <8 x i8> %i.vq, ptr %i.vr, align 1, !tbaa !35
  %index.next343 = add nuw i64 %index340, 8       ; 2 uses
  %i.vs = icmp eq i64 %index.next343, %n.vec338
  br i1 %i.vs, label %vec.epilog.middle.block344, label %vec.epilog.vector.body339, !llvm.loop !1073

vec.epilog.middle.block344:                       ; preds = %vec.epilog.vector.body339
  %cmp.n345 = icmp eq i64 %i.uw, %n.vec338
  br i1 %cmp.n345, label %.loopexit, label %.lr.ph172.preheader

.lr.ph172.preheader:                              ; preds = %iter.check333, %vector.memcheck313, %vec.epilog.iter.check335, %vec.epilog.middle.block344
  %.12171.ph = phi i64 [ %4, %iter.check333 ], [ %4, %vector.memcheck313 ], [ %i.vb, %vec.epilog.iter.check335 ], [ %i.vm, %vec.epilog.middle.block344 ] ; 7 uses
  %i.vt = sub i64 %3, %.12171.ph
  %.neg = add i64 %.12171.ph, 1
  %xtraiter643 = and i64 %i.vt, 1
  %lcmp.mod644.not = icmp eq i64 %xtraiter643, 0
  br i1 %lcmp.mod644.not, label %.lr.ph172.prol.loopexit, label %.lr.ph172.prol

.lr.ph172.prol:                                   ; preds = %.lr.ph172.preheader
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 %.12171.ph
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !35
  %i.vw = sub nuw i64 %.12171.ph, %4
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 %i.vw
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !35
  %i.vz = sub i8 %i.vv, %i.vy
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 %.12171.ph
  store i8 %i.vz, ptr %i.wa, align 1, !tbaa !35
  %i.wb = add nuw i64 %.12171.ph, 1
  br label %.lr.ph172.prol.loopexit

.lr.ph172.prol.loopexit:                          ; preds = %.lr.ph172.prol, %.lr.ph172.preheader
  %.12171.unr = phi i64 [ %.12171.ph, %.lr.ph172.preheader ], [ %i.wb, %.lr.ph172.prol ]
  %i.wc = icmp eq i64 %3, %.neg
  br i1 %i.wc, label %.loopexit, label %.lr.ph172

.lr.ph170:                                        ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170
  %.11169 = phi i64 [ %i.ws, %.lr.ph170 ], [ %.11169.unr, %.lr.ph170.prol.loopexit ] ; 6 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 %.11169
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !35
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 %.11169
  store i8 %i.we, ptr %i.wf, align 1, !tbaa !35
  %i.wg = add nuw nsw i64 %.11169, 1              ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 %i.wg
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !35
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 %i.wg
  store i8 %i.wi, ptr %i.wj, align 1, !tbaa !35
  %i.wk = add nuw nsw i64 %.11169, 2              ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 %i.wk
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !35
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 %i.wk
  store i8 %i.wm, ptr %i.wn, align 1, !tbaa !35
  %i.wo = add nuw nsw i64 %.11169, 3              ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 %i.wo
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !35
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 %i.wo
  store i8 %i.wq, ptr %i.wr, align 1, !tbaa !35
  %i.ws = add nuw nsw i64 %.11169, 4              ; 2 uses
  %.not135.3 = icmp eq i64 %i.ws, %4
  br i1 %.not135.3, label %.preheader158, label %.lr.ph170, !llvm.loop !1074

.lr.ph172:                                        ; preds = %.lr.ph172.prol.loopexit, %.lr.ph172
  %.12171 = phi i64 [ %i.xi, %.lr.ph172 ], [ %.12171.unr, %.lr.ph172.prol.loopexit ] ; 5 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 %.12171
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !35
  %i.wv = sub nuw i64 %.12171, %4
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !35
  %i.wy = sub i8 %i.wu, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 %.12171
  store i8 %i.wy, ptr %i.wz, align 1, !tbaa !35
  %i.xa = add nuw i64 %.12171, 1                  ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 %i.xa
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !35
  %i.xd = sub nuw i64 %i.xa, %4
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 %i.xd
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !35
  %i.xg = sub i8 %i.xc, %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 %i.xa
  store i8 %i.xg, ptr %i.xh, align 1, !tbaa !35
  %i.xi = add nuw i64 %.12171, 2                  ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %i.xi, %3
  br i1 %exitcond205.not.1, label %.loopexit, label %.lr.ph172, !llvm.loop !1075

.loopexit:                                        ; preds = %.lr.ph167, %.lr.ph172.prol.loopexit, %.lr.ph172, %.lr.ph177.prol.loopexit, %.lr.ph177, %.lr.ph182.prol.loopexit, %.lr.ph182, %.lr.ph185.prol.loopexit, %.lr.ph185, %.lr.ph188.prol.loopexit, %.lr.ph188, %.lr.ph193.prol.loopexit, %.lr.ph193, %.lr.ph196.prol.loopexit, %.lr.ph196, %middle.block265, %vec.epilog.middle.block282, %middle.block329, %vec.epilog.middle.block344, %middle.block397, %vec.epilog.middle.block413, %middle.block460, %vec.epilog.middle.block475, %middle.block494, %vec.epilog.middle.block508, %middle.block523, %vec.epilog.middle.block536, %middle.block583, %vec.epilog.middle.block598, %middle.block613, %vec.epilog.middle.block626, %.preheader161, %.preheader158, %.preheader155, %.preheader152, %.preheader150, %.preheader148, %.preheader145, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !217    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !216
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #34
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
end_hunk_0
