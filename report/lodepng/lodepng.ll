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
  %i.a = ptrtoaddr ptr %2 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 18 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 24 uses
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
  %i.d = sub i64 %i.b, %i.c
  %diff.check540 = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check541, %diff.check540
  br i1 %or.cond, label %.lr.ph191.preheader, label %vector.main.loop.iter.check542

vector.main.loop.iter.check542:                   ; preds = %iter.check554
  %min.iters.check543 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check543, label %vec.epilog.ph558, label %vector.ph544

vector.ph544:                                     ; preds = %vector.main.loop.iter.check542
  %i.e = and i64 %4, 28
  %n.vec545 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body546

vector.body546:                                   ; preds = %vector.ph544, %vector.body546
  %index547 = phi i64 [ 0, %vector.ph544 ], [ %index.next550, %vector.body546 ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index547 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load548 = load <16 x i8>, ptr %i.f, align 1, !tbaa !35
  %wide.load549 = load <16 x i8>, ptr %i.g, align 1, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index547 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> %wide.load548, ptr %i.h, align 1, !tbaa !35
  store <16 x i8> %wide.load549, ptr %i.i, align 1, !tbaa !35
  %index.next550 = add nuw i64 %index547, 32      ; 2 uses
  %i.j = icmp eq i64 %index.next550, %n.vec545
  br i1 %i.j, label %middle.block551, label %vector.body546, !llvm.loop !1030

middle.block551:                                  ; preds = %vector.body546
  %cmp.n552 = icmp eq i64 %4, %n.vec545
  br i1 %cmp.n552, label %.preheader145, label %vec.epilog.iter.check556

vec.epilog.iter.check556:                         ; preds = %middle.block551
  %min.epilog.iters.check557 = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check557, label %.lr.ph191.preheader, label %vec.epilog.ph558, !prof !90

vec.epilog.ph558:                                 ; preds = %vector.main.loop.iter.check542, %vec.epilog.iter.check556
  %vec.epilog.resume.val553 = phi i64 [ %n.vec545, %vec.epilog.iter.check556 ], [ 0, %vector.main.loop.iter.check542 ]
  %n.vec559 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body560

vec.epilog.vector.body560:                        ; preds = %vec.epilog.vector.body560, %vec.epilog.ph558
  %index561 = phi i64 [ %vec.epilog.resume.val553, %vec.epilog.ph558 ], [ %index.next563, %vec.epilog.vector.body560 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index561
  %wide.load562 = load <4 x i8>, ptr %i.k, align 1, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index561
  store <4 x i8> %wide.load562, ptr %i.l, align 1, !tbaa !35
  %index.next563 = add nuw i64 %index561, 4       ; 2 uses
  %i.m = icmp eq i64 %index.next563, %n.vec559
  br i1 %i.m, label %vec.epilog.middle.block564, label %vec.epilog.vector.body560, !llvm.loop !1031

vec.epilog.middle.block564:                       ; preds = %vec.epilog.vector.body560
  %cmp.n565 = icmp eq i64 %4, %n.vec559
  br i1 %cmp.n565, label %.preheader145, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %iter.check554, %vec.epilog.iter.check556, %vec.epilog.middle.block564
  %.1190.ph = phi i64 [ 0, %iter.check554 ], [ %n.vec545, %vec.epilog.iter.check556 ], [ %n.vec559, %vec.epilog.middle.block564 ] ; 3 uses
  %xtraiter664 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod665.not = icmp eq i64 %xtraiter664, 0
  br i1 %lcmp.mod665.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol

.lr.ph191.prol:                                   ; preds = %.lr.ph191.preheader, %.lr.ph191.prol
  %.1190.prol = phi i64 [ %i.q, %.lr.ph191.prol ], [ %.1190.ph, %.lr.ph191.preheader ] ; 3 uses
  %prol.iter666 = phi i64 [ %prol.iter666.next, %.lr.ph191.prol ], [ 0, %.lr.ph191.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.1190.prol
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.1190.prol
  store i8 %i.o, ptr %i.p, align 1, !tbaa !35
  %i.q = add nuw nsw i64 %.1190.prol, 1           ; 2 uses
  %prol.iter666.next = add i64 %prol.iter666, 1   ; 2 uses
  %prol.iter666.cmp.not = icmp eq i64 %prol.iter666.next, %xtraiter664
  br i1 %prol.iter666.cmp.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol, !llvm.loop !1032

.lr.ph191.prol.loopexit:                          ; preds = %.lr.ph191.prol, %.lr.ph191.preheader
  %.1190.unr = phi i64 [ %.1190.ph, %.lr.ph191.preheader ], [ %i.q, %.lr.ph191.prol ]
  %i.r = sub nsw i64 %.1190.ph, %4
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.preheader145, label %.lr.ph191

.preheader:                                       ; preds = %bb.a
  %.not144194 = icmp eq i64 %3, 0
  br i1 %.not144194, label %.loopexit, label %iter.check616

iter.check616:                                    ; preds = %.preheader
  %min.iters.check603 = icmp ult i64 %3, 4
  %i.t = sub i64 %i.b, %i.c
  %diff.check602 = icmp ugt i64 %i.t, -32
  %or.cond629 = or i1 %min.iters.check603, %diff.check602
  br i1 %or.cond629, label %.lr.ph196.preheader, label %vector.main.loop.iter.check604

vector.main.loop.iter.check604:                   ; preds = %iter.check616
  %min.iters.check605 = icmp ult i64 %3, 32
  br i1 %min.iters.check605, label %vec.epilog.ph620, label %vector.ph606

vector.ph606:                                     ; preds = %vector.main.loop.iter.check604
  %i.u = and i64 %3, 28
  %n.vec607 = and i64 %3, -32                     ; 4 uses
  br label %vector.body608

vector.body608:                                   ; preds = %vector.ph606, %vector.body608
  %index609 = phi i64 [ 0, %vector.ph606 ], [ %index.next612, %vector.body608 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index609 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load610 = load <16 x i8>, ptr %i.v, align 1, !tbaa !35
  %wide.load611 = load <16 x i8>, ptr %i.w, align 1, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index609 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load610, ptr %i.x, align 1, !tbaa !35
  store <16 x i8> %wide.load611, ptr %i.y, align 1, !tbaa !35
  %index.next612 = add nuw i64 %index609, 32      ; 2 uses
  %i.z = icmp eq i64 %index.next612, %n.vec607
  br i1 %i.z, label %middle.block613, label %vector.body608, !llvm.loop !1033

middle.block613:                                  ; preds = %vector.body608
  %cmp.n614 = icmp eq i64 %3, %n.vec607
  br i1 %cmp.n614, label %.loopexit, label %vec.epilog.iter.check618

vec.epilog.iter.check618:                         ; preds = %middle.block613
  %min.epilog.iters.check619 = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check619, label %.lr.ph196.preheader, label %vec.epilog.ph620, !prof !90

vec.epilog.ph620:                                 ; preds = %vector.main.loop.iter.check604, %vec.epilog.iter.check618
  %vec.epilog.resume.val615 = phi i64 [ %n.vec607, %vec.epilog.iter.check618 ], [ 0, %vector.main.loop.iter.check604 ]
  %n.vec621 = and i64 %3, -4                      ; 3 uses
  br label %vec.epilog.vector.body622

vec.epilog.vector.body622:                        ; preds = %vec.epilog.vector.body622, %vec.epilog.ph620
  %index623 = phi i64 [ %vec.epilog.resume.val615, %vec.epilog.ph620 ], [ %index.next625.a, %vec.epilog.vector.body622 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %index623
  %wide.load624.a = load <4 x i8>, ptr %i.aa, align 1, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index623
  store <4 x i8> %wide.load624.a, ptr %i.ab, align 1, !tbaa !35
  %index.next625.a = add nuw i64 %index623, 4     ; 2 uses
  %i.ac = icmp eq i64 %index.next625.a, %n.vec621
  br i1 %i.ac, label %vec.epilog.middle.block626, label %vec.epilog.vector.body622, !llvm.loop !1034

vec.epilog.middle.block626:                       ; preds = %vec.epilog.vector.body622
  %cmp.n627.a = icmp eq i64 %3, %n.vec621
  br i1 %cmp.n627.a, label %.loopexit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %iter.check616, %vec.epilog.iter.check618, %vec.epilog.middle.block626
  %.0195.ph = phi i64 [ 0, %iter.check616 ], [ %n.vec607, %vec.epilog.iter.check618 ], [ %n.vec621, %vec.epilog.middle.block626 ] ; 3 uses
  %xtraiter670 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod671.not = icmp eq i64 %xtraiter670, 0
  br i1 %lcmp.mod671.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %.0195.prol = phi i64 [ %i.ag, %.lr.ph196.prol ], [ %.0195.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter672 = phi i64 [ %prol.iter672.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.0195.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.0195.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !35
  %i.ag = add nuw i64 %.0195.prol, 1              ; 2 uses
  %prol.iter672.next = add i64 %prol.iter672, 1   ; 2 uses
  %prol.iter672.cmp.not = icmp eq i64 %prol.iter672.next, %xtraiter670
  br i1 %prol.iter672.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !1035

.lr.ph196.prol.loopexit:                          ; preds = %.lr.ph196.prol, %.lr.ph196.preheader
  %.0195.unr = phi i64 [ %.0195.ph, %.lr.ph196.preheader ], [ %i.ag, %.lr.ph196.prol ]
  %i.ah = sub i64 %.0195.ph, %3
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196
  %.0195 = phi i64 [ %i.ay, %.lr.ph196 ], [ %.0195.unr, %.lr.ph196.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.0195
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.0195
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !35
  %i.am = add nuw i64 %.0195, 1                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !35
  %i.aq = add nuw i64 %.0195, 2                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !35
  %i.au = add nuw i64 %.0195, 3                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !35
  %i.ay = add nuw i64 %.0195, 4                   ; 2 uses
  %.not144.3 = icmp eq i64 %i.ay, %3
  br i1 %.not144.3, label %.loopexit, label %.lr.ph196, !llvm.loop !1036

.preheader145:                                    ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191, %middle.block551, %vec.epilog.middle.block564, %.preheader147
  %i.az = icmp ult i64 %4, %3
  br i1 %i.az, label %iter.check587, label %.loopexit

iter.check587:                                    ; preds = %.preheader145
  %i.ba = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check571 = icmp ult i64 %i.ba, 8
  br i1 %min.iters.check571, label %.lr.ph193.preheader, label %vector.memcheck567

vector.memcheck567:                               ; preds = %iter.check587
  %i.bb = add i64 %4, %i.c
  %i.bc = sub i64 %i.b, %i.bb
  %diff.check568 = icmp ugt i64 %i.bc, -32
  %i.bd = sub i64 %i.b, %i.c
  %diff.check569 = icmp ugt i64 %i.bd, -32
  %conflict.rdx570 = or i1 %diff.check568, %diff.check569
  br i1 %conflict.rdx570, label %.lr.ph193.preheader, label %vector.main.loop.iter.check572

vector.main.loop.iter.check572:                   ; preds = %vector.memcheck567
  %min.iters.check573 = icmp ult i64 %i.ba, 32
  br i1 %min.iters.check573, label %vec.epilog.ph591, label %vector.ph574

vector.ph574:                                     ; preds = %vector.main.loop.iter.check572
  %i.be = and i64 %i.ba, 24
  %n.vec575 = and i64 %i.ba, -32                  ; 4 uses
  %i.bf = add i64 %4, %n.vec575
  br label %vector.body576

vector.body576:                                   ; preds = %vector.ph574, %vector.body576
  %index577 = phi i64 [ 0, %vector.ph574 ], [ %index.next582, %vector.body576 ] ; 3 uses
  %i.bg = add nuw i64 %4, %index577               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load578 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !35
  %wide.load579 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %index577 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load580 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !35
  %wide.load581 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !35
  %i.bl = sub <16 x i8> %wide.load578, %wide.load580
  %i.bm = sub <16 x i8> %wide.load579, %wide.load581
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <16 x i8> %i.bl, ptr %i.bn, align 1, !tbaa !35
  store <16 x i8> %i.bm, ptr %i.bo, align 1, !tbaa !35
  %index.next582 = add nuw i64 %index577, 32      ; 2 uses
  %i.bp = icmp eq i64 %index.next582, %n.vec575
  br i1 %i.bp, label %middle.block583, label %vector.body576, !llvm.loop !1037

middle.block583:                                  ; preds = %vector.body576
  %cmp.n584 = icmp eq i64 %i.ba, %n.vec575
  br i1 %cmp.n584, label %.loopexit, label %vec.epilog.iter.check589

vec.epilog.iter.check589:                         ; preds = %middle.block583
  %min.epilog.iters.check590 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check590, label %.lr.ph193.preheader, label %vec.epilog.ph591, !prof !1076

vec.epilog.ph591:                                 ; preds = %vector.main.loop.iter.check572, %vec.epilog.iter.check589
  %vec.epilog.resume.val585 = phi i64 [ %n.vec575, %vec.epilog.iter.check589 ], [ 0, %vector.main.loop.iter.check572 ]
  %n.vec592 = and i64 %i.ba, -8                   ; 3 uses
  %i.bq = add i64 %4, %n.vec592
  br label %vec.epilog.vector.body593

vec.epilog.vector.body593:                        ; preds = %vec.epilog.vector.body593, %vec.epilog.ph591
  %index594 = phi i64 [ %vec.epilog.resume.val585, %vec.epilog.ph591 ], [ %index.next597, %vec.epilog.vector.body593 ] ; 3 uses
  %i.br = add nuw i64 %4, %index594               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %wide.load595 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %index594
  %wide.load596 = load <8 x i8>, ptr %i.bt, align 1, !tbaa !35
  %i.bu = sub <8 x i8> %wide.load595, %wide.load596
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  store <8 x i8> %i.bu, ptr %i.bv, align 1, !tbaa !35
  %index.next597 = add nuw i64 %index594, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next597, %n.vec592
  br i1 %i.bw, label %vec.epilog.middle.block598, label %vec.epilog.vector.body593, !llvm.loop !1038

vec.epilog.middle.block598:                       ; preds = %vec.epilog.vector.body593
  %cmp.n599 = icmp eq i64 %i.ba, %n.vec592
  br i1 %cmp.n599, label %.loopexit, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %iter.check587, %vector.memcheck567, %vec.epilog.iter.check589, %vec.epilog.middle.block598
  %.2192.ph = phi i64 [ %4, %iter.check587 ], [ %4, %vector.memcheck567 ], [ %i.bf, %vec.epilog.iter.check589 ], [ %i.bq, %vec.epilog.middle.block598 ] ; 7 uses
  %i.bx = sub i64 %3, %.2192.ph
  %.neg676 = add i64 %.2192.ph, 1
  %xtraiter667 = and i64 %i.bx, 1
  %lcmp.mod668.not = icmp eq i64 %xtraiter667, 0
  br i1 %lcmp.mod668.not, label %.lr.ph193.prol.loopexit, label %.lr.ph193.prol

.lr.ph193.prol:                                   ; preds = %.lr.ph193.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %.2192.ph
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !35
  %i.ca = sub nuw i64 %.2192.ph, %4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !35
  %i.cd = sub i8 %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.2192.ph
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !35
  %i.cf = add nuw i64 %.2192.ph, 1
  br label %.lr.ph193.prol.loopexit

.lr.ph193.prol.loopexit:                          ; preds = %.lr.ph193.prol, %.lr.ph193.preheader
  %.2192.unr = phi i64 [ %.2192.ph, %.lr.ph193.preheader ], [ %i.cf, %.lr.ph193.prol ]
  %i.cg = icmp eq i64 %3, %.neg676
  br i1 %i.cg, label %.loopexit, label %.lr.ph193

.lr.ph191:                                        ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191
  %.1190 = phi i64 [ %i.cw, %.lr.ph191 ], [ %.1190.unr, %.lr.ph191.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %.1190
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %.1190
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !35
  %i.ck = add nuw nsw i64 %.1190, 1               ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !35
  %i.co = add nuw nsw i64 %.1190, 2               ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !35
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !35
  %i.cs = add nuw nsw i64 %.1190, 3               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !35
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !35
  %i.cw = add nuw nsw i64 %.1190, 4               ; 2 uses
  %.not143.3 = icmp eq i64 %i.cw, %4
  br i1 %.not143.3, label %.preheader145, label %.lr.ph191, !llvm.loop !1039

.lr.ph193:                                        ; preds = %.lr.ph193.prol.loopexit, %.lr.ph193
  %.2192 = phi i64 [ %i.dm, %.lr.ph193 ], [ %.2192.unr, %.lr.ph193.prol.loopexit ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %.2192
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !35
  %i.cz = sub nuw i64 %.2192, %4
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !35
  %i.dc = sub i8 %i.cy, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.2192
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !35
  %i.de = add nuw i64 %.2192, 1                   ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !35
  %i.dh = sub nuw i64 %i.de, %4
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !35
  %i.dk = sub i8 %i.dg, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %i.de
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !35
  %i.dm = add nuw i64 %.2192, 2                   ; 2 uses
  %exitcond208.not.1 = icmp eq i64 %i.dm, %3
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
  %i.dn = sub i64 %i.b, %i.c
  %diff.check479 = icmp ugt i64 %i.dn, -32
  %i.do = sub i64 %i.a, %i.c
  %diff.check480 = icmp ugt i64 %i.do, -32
  %conflict.rdx481 = or i1 %diff.check479, %diff.check480
  br i1 %conflict.rdx481, label %.lr.ph185.preheader, label %vector.main.loop.iter.check483

vector.main.loop.iter.check483:                   ; preds = %vector.memcheck478
  %min.iters.check484 = icmp ult i64 %3, 32
  br i1 %min.iters.check484, label %vec.epilog.ph501, label %vector.ph485

vector.ph485:                                     ; preds = %vector.main.loop.iter.check483
  %i.dp = and i64 %3, 28
  %n.vec486 = and i64 %3, -32                     ; 4 uses
  br label %vector.body487

vector.body487:                                   ; preds = %vector.ph485, %vector.body487
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next493, %vector.body487 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %index488 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load489.a = load <16 x i8>, ptr %i.dq, align 1, !tbaa !35
  %wide.load490 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !35
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %index488 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load491 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !35
  %wide.load492 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !35
  %i.du = sub <16 x i8> %wide.load489.a, %wide.load491
  %i.dv = sub <16 x i8> %wide.load490, %wide.load492
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %index488 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <16 x i8> %i.du, ptr %i.dw, align 1, !tbaa !35
  store <16 x i8> %i.dv, ptr %i.dx, align 1, !tbaa !35
  %index.next493 = add nuw i64 %index488, 32      ; 2 uses
  %i.dy = icmp eq i64 %index.next493, %n.vec486
  br i1 %i.dy, label %middle.block494, label %vector.body487, !llvm.loop !1041

middle.block494:                                  ; preds = %vector.body487
  %cmp.n495 = icmp eq i64 %3, %n.vec486
  br i1 %cmp.n495, label %.loopexit, label %vec.epilog.iter.check499

vec.epilog.iter.check499:                         ; preds = %middle.block494
  %min.epilog.iters.check500 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check500, label %.lr.ph185.preheader, label %vec.epilog.ph501, !prof !90

vec.epilog.ph501:                                 ; preds = %vector.main.loop.iter.check483, %vec.epilog.iter.check499
  %vec.epilog.resume.val496 = phi i64 [ %n.vec486, %vec.epilog.iter.check499 ], [ 0, %vector.main.loop.iter.check483 ]
  %n.vec502 = and i64 %3, -4                      ; 3 uses
  br label %vec.epilog.vector.body503

vec.epilog.vector.body503:                        ; preds = %vec.epilog.vector.body503, %vec.epilog.ph501
  %index504 = phi i64 [ %vec.epilog.resume.val496, %vec.epilog.ph501 ], [ %index.next507, %vec.epilog.vector.body503 ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %index504
  %wide.load505 = load <4 x i8>, ptr %i.dz, align 1, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %index504
  %wide.load506 = load <4 x i8>, ptr %i.ea, align 1, !tbaa !35
  %i.eb = sub <4 x i8> %wide.load505, %wide.load506
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %index504
  store <4 x i8> %i.eb, ptr %i.ec, align 1, !tbaa !35
  %index.next507 = add nuw i64 %index504, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next507, %n.vec502
  br i1 %i.ed, label %vec.epilog.middle.block508, label %vec.epilog.vector.body503, !llvm.loop !1042

vec.epilog.middle.block508:                       ; preds = %vec.epilog.vector.body503
  %cmp.n509 = icmp eq i64 %3, %n.vec502
  br i1 %cmp.n509, label %.loopexit, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %iter.check497, %vector.memcheck478, %vec.epilog.iter.check499, %vec.epilog.middle.block508
  %.3184.ph = phi i64 [ 0, %iter.check497 ], [ 0, %vector.memcheck478 ], [ %n.vec486, %vec.epilog.iter.check499 ], [ %n.vec502, %vec.epilog.middle.block508 ] ; 3 uses
  %xtraiter658 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol

.lr.ph185.prol:                                   ; preds = %.lr.ph185.preheader, %.lr.ph185.prol
  %.3184.prol = phi i64 [ %i.ek, %.lr.ph185.prol ], [ %.3184.ph, %.lr.ph185.preheader ] ; 4 uses
  %prol.iter660 = phi i64 [ %prol.iter660.next, %.lr.ph185.prol ], [ 0, %.lr.ph185.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %.3184.prol
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !35
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %.3184.prol
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !35
  %i.ei = sub i8 %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %.3184.prol
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !35
  %i.ek = add nuw i64 %.3184.prol, 1              ; 2 uses
  %prol.iter660.next = add i64 %prol.iter660, 1   ; 2 uses
  %prol.iter660.cmp.not = icmp eq i64 %prol.iter660.next, %xtraiter658
  br i1 %prol.iter660.cmp.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol, !llvm.loop !1043

.lr.ph185.prol.loopexit:                          ; preds = %.lr.ph185.prol, %.lr.ph185.preheader
  %.3184.unr = phi i64 [ %.3184.ph, %.lr.ph185.preheader ], [ %i.ek, %.lr.ph185.prol ]
  %i.el = sub i64 %.3184.ph, %3
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %.loopexit, label %.lr.ph185

.preheader148:                                    ; preds = %bb.b
  br i1 %.not141186, label %.loopexit, label %iter.check526

iter.check526:                                    ; preds = %.preheader148
  %min.iters.check513 = icmp ult i64 %3, 4
  %i.en = sub i64 %i.b, %i.c
  %diff.check512 = icmp ugt i64 %i.en, -32
  %or.cond630 = or i1 %min.iters.check513, %diff.check512
  br i1 %or.cond630, label %.lr.ph188.preheader, label %vector.main.loop.iter.check514

vector.main.loop.iter.check514:                   ; preds = %iter.check526
  %min.iters.check515 = icmp ult i64 %3, 32
  br i1 %min.iters.check515, label %vec.epilog.ph530, label %vector.ph516

vector.ph516:                                     ; preds = %vector.main.loop.iter.check514
  %i.eo = and i64 %3, 28
  %n.vec517 = and i64 %3, -32                     ; 4 uses
  br label %vector.body518

vector.body518:                                   ; preds = %vector.ph516, %vector.body518
  %index519 = phi i64 [ 0, %vector.ph516 ], [ %index.next522, %vector.body518 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %index519 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load520 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !35
  %wide.load521 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !35
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %index519 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <16 x i8> %wide.load520, ptr %i.er, align 1, !tbaa !35
  store <16 x i8> %wide.load521, ptr %i.es, align 1, !tbaa !35
  %index.next522 = add nuw i64 %index519, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next522, %n.vec517
  br i1 %i.et, label %middle.block523, label %vector.body518, !llvm.loop !1044

middle.block523:                                  ; preds = %vector.body518
  %cmp.n524 = icmp eq i64 %3, %n.vec517
  br i1 %cmp.n524, label %.loopexit, label %vec.epilog.iter.check528

vec.epilog.iter.check528:                         ; preds = %middle.block523
  %min.epilog.iters.check529 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check529, label %.lr.ph188.preheader, label %vec.epilog.ph530, !prof !90

vec.epilog.ph530:                                 ; preds = %vector.main.loop.iter.check514, %vec.epilog.iter.check528
  %vec.epilog.resume.val525 = phi i64 [ %n.vec517, %vec.epilog.iter.check528 ], [ 0, %vector.main.loop.iter.check514 ]
  %n.vec531 = and i64 %3, -4                      ; 3 uses
  br label %vec.epilog.vector.body532

vec.epilog.vector.body532:                        ; preds = %vec.epilog.vector.body532, %vec.epilog.ph530
  %index533 = phi i64 [ %vec.epilog.resume.val525, %vec.epilog.ph530 ], [ %index.next535, %vec.epilog.vector.body532 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %index533
  %wide.load534 = load <4 x i8>, ptr %i.eu, align 1, !tbaa !35
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %index533
  store <4 x i8> %wide.load534, ptr %i.ev, align 1, !tbaa !35
  %index.next535 = add nuw i64 %index533, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next535, %n.vec531
  br i1 %i.ew, label %vec.epilog.middle.block536, label %vec.epilog.vector.body532, !llvm.loop !1045

vec.epilog.middle.block536:                       ; preds = %vec.epilog.vector.body532
  %cmp.n537 = icmp eq i64 %3, %n.vec531
  br i1 %cmp.n537, label %.loopexit, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %iter.check526, %vec.epilog.iter.check528, %vec.epilog.middle.block536
  %.4187.ph = phi i64 [ 0, %iter.check526 ], [ %n.vec517, %vec.epilog.iter.check528 ], [ %n.vec531, %vec.epilog.middle.block536 ] ; 3 uses
  %xtraiter661 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod662.not = icmp eq i64 %xtraiter661, 0
  br i1 %lcmp.mod662.not, label %.lr.ph188.prol.loopexit, label %.lr.ph188.prol

.lr.ph188.prol:                                   ; preds = %.lr.ph188.preheader, %.lr.ph188.prol
  %.4187.prol = phi i64 [ %i.fa, %.lr.ph188.prol ], [ %.4187.ph, %.lr.ph188.preheader ] ; 3 uses
  %prol.iter663 = phi i64 [ %prol.iter663.next, %.lr.ph188.prol ], [ 0, %.lr.ph188.preheader ]
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %.4187.prol
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %.4187.prol
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !35
  %i.fa = add nuw i64 %.4187.prol, 1              ; 2 uses
  %prol.iter663.next = add i64 %prol.iter663, 1   ; 2 uses
  %prol.iter663.cmp.not = icmp eq i64 %prol.iter663.next, %xtraiter661
  br i1 %prol.iter663.cmp.not, label %.lr.ph188.prol.loopexit, label %.lr.ph188.prol, !llvm.loop !1046

.lr.ph188.prol.loopexit:                          ; preds = %.lr.ph188.prol, %.lr.ph188.preheader
  %.4187.unr = phi i64 [ %.4187.ph, %.lr.ph188.preheader ], [ %i.fa, %.lr.ph188.prol ]
  %i.fb = sub i64 %.4187.ph, %3
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %.loopexit, label %.lr.ph188

.lr.ph185:                                        ; preds = %.lr.ph185.prol.loopexit, %.lr.ph185
  %.3184 = phi i64 [ %i.ge, %.lr.ph185 ], [ %.3184.unr, %.lr.ph185.prol.loopexit ] ; 7 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %.3184
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !35
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 %.3184
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !35
  %i.fh = sub i8 %i.fe, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %.3184
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !35
  %i.fj = add nuw i64 %.3184, 1                   ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !35
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 %i.fj
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !35
  %i.fo = sub i8 %i.fl, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 %i.fj
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !35
  %i.fq = add nuw i64 %.3184, 2                   ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fq
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !35
  %i.fv = sub i8 %i.fs, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 %i.fq
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !35
  %i.fx = add nuw i64 %.3184, 3                   ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !35
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 %i.fx
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !35
  %i.gc = sub i8 %i.fz, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 %i.fx
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !35
  %i.ge = add nuw i64 %.3184, 4                   ; 2 uses
  %.not142.3 = icmp eq i64 %i.ge, %3
  br i1 %.not142.3, label %.loopexit, label %.lr.ph185, !llvm.loop !1047

.lr.ph188:                                        ; preds = %.lr.ph188.prol.loopexit, %.lr.ph188
  %.4187 = phi i64 [ %i.gu, %.lr.ph188 ], [ %.4187.unr, %.lr.ph188.prol.loopexit ] ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %.4187
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !35
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 %.4187
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !35
  %i.gi = add nuw i64 %.4187, 1                   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !35
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 %i.gi
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !35
  %i.gm = add nuw i64 %.4187, 2                   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !35
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 %i.gm
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !35
  %i.gq = add nuw i64 %.4187, 3                   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !35
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 %i.gq
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !35
  %i.gu = add nuw i64 %.4187, 4                   ; 2 uses
  %.not141.3 = icmp eq i64 %i.gu, %3
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
  %i.gv = sub i64 %i.b, %i.c
  %diff.check348 = icmp ugt i64 %i.gv, -32
  %i.gw = sub i64 %i.a, %i.c
  %diff.check349 = icmp ugt i64 %i.gw, -32
  %conflict.rdx350 = or i1 %diff.check348, %diff.check349
  br i1 %conflict.rdx350, label %.lr.ph175.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck347
  %min.iters.check353 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check353, label %vec.epilog.ph370, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.gx = and i64 %4, 28
  %n.vec355 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph354, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %index357 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load358 = load <16 x i8>, ptr %i.gy, align 1, !tbaa !35
  %wide.load359 = load <16 x i8>, ptr %i.gz, align 1, !tbaa !35
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 %index357 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load360 = load <16 x i8>, ptr %i.ha, align 1, !tbaa !35
  %wide.load361 = load <16 x i8>, ptr %i.hb, align 1, !tbaa !35
  %i.hc = lshr <16 x i8> %wide.load360, splat (i8 1)
  %i.hd = lshr <16 x i8> %wide.load361, splat (i8 1)
  %i.he = sub <16 x i8> %wide.load358, %i.hc
  %i.hf = sub <16 x i8> %wide.load359, %i.hd
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 %index357 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <16 x i8> %i.he, ptr %i.hg, align 1, !tbaa !35
  store <16 x i8> %i.hf, ptr %i.hh, align 1, !tbaa !35
  %index.next362 = add nuw i64 %index357, 32      ; 2 uses
  %i.hi = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.hi, label %middle.block363, label %vector.body356, !llvm.loop !1049

middle.block363:                                  ; preds = %vector.body356
  %cmp.n364 = icmp eq i64 %4, %n.vec355
  br i1 %cmp.n364, label %.preheader155, label %vec.epilog.iter.check368

vec.epilog.iter.check368:                         ; preds = %middle.block363
  %min.epilog.iters.check369 = icmp eq i64 %i.gx, 0
  br i1 %min.epilog.iters.check369, label %.lr.ph175.preheader, label %vec.epilog.ph370, !prof !90

vec.epilog.ph370:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check368
  %vec.epilog.resume.val365 = phi i64 [ %n.vec355, %vec.epilog.iter.check368 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec371 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body372

vec.epilog.vector.body372:                        ; preds = %vec.epilog.vector.body372, %vec.epilog.ph370
  %index373 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph370 ], [ %index.next376, %vec.epilog.vector.body372 ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 %index373
  %wide.load374 = load <4 x i8>, ptr %i.hj, align 1, !tbaa !35
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 %index373
  %wide.load375 = load <4 x i8>, ptr %i.hk, align 1, !tbaa !35
  %i.hl = lshr <4 x i8> %wide.load375, splat (i8 1)
  %i.hm = sub <4 x i8> %wide.load374, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 %index373
  store <4 x i8> %i.hm, ptr %i.hn, align 1, !tbaa !35
  %index.next376 = add nuw i64 %index373, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.ho, label %vec.epilog.middle.block377, label %vec.epilog.vector.body372, !llvm.loop !1050

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
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 %.5174.ph
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !35
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %.5174.ph
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !35
  %i.ht = lshr i8 %i.hs, 1
  %i.hu = sub i8 %i.hq, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 %.5174.ph
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !35
  %i.hw = or disjoint i64 %.5174.ph, 1
  br label %.lr.ph175.prol.loopexit

.lr.ph175.prol.loopexit:                          ; preds = %.lr.ph175.prol, %.lr.ph175.preheader
  %.5174.unr = phi i64 [ %.5174.ph, %.lr.ph175.preheader ], [ %i.hw, %.lr.ph175.prol ]
  %i.hx = icmp eq i64 %4, %.neg673
  br i1 %i.hx, label %.preheader155, label %.lr.ph175

.preheader154:                                    ; preds = %bb.c
  br i1 %.not138178, label %.preheader152, label %iter.check431

iter.check431:                                    ; preds = %.preheader154
  %min.iters.check418 = icmp samesign ult i64 %4, 4
  %i.hy = sub i64 %i.b, %i.c
  %diff.check417 = icmp ugt i64 %i.hy, -32
  %or.cond631 = or i1 %min.iters.check418, %diff.check417
  br i1 %or.cond631, label %.lr.ph180.preheader, label %vector.main.loop.iter.check419

vector.main.loop.iter.check419:                   ; preds = %iter.check431
  %min.iters.check420 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check420, label %vec.epilog.ph435, label %vector.ph421

vector.ph421:                                     ; preds = %vector.main.loop.iter.check419
  %i.hz = and i64 %4, 28
  %n.vec422 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body423

vector.body423:                                   ; preds = %vector.ph421, %vector.body423
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next427, %vector.body423 ] ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %index424 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %wide.load425 = load <16 x i8>, ptr %i.ia, align 1, !tbaa !35
  %wide.load426 = load <16 x i8>, ptr %i.ib, align 1, !tbaa !35
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 %index424 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <16 x i8> %wide.load425, ptr %i.ic, align 1, !tbaa !35
  store <16 x i8> %wide.load426, ptr %i.id, align 1, !tbaa !35
  %index.next427 = add nuw i64 %index424, 32      ; 2 uses
  %i.ie = icmp eq i64 %index.next427, %n.vec422
  br i1 %i.ie, label %middle.block428, label %vector.body423, !llvm.loop !1051

middle.block428:                                  ; preds = %vector.body423
  %cmp.n429 = icmp eq i64 %4, %n.vec422
  br i1 %cmp.n429, label %.preheader152, label %vec.epilog.iter.check433

vec.epilog.iter.check433:                         ; preds = %middle.block428
  %min.epilog.iters.check434 = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check434, label %.lr.ph180.preheader, label %vec.epilog.ph435, !prof !90

vec.epilog.ph435:                                 ; preds = %vector.main.loop.iter.check419, %vec.epilog.iter.check433
  %vec.epilog.resume.val430 = phi i64 [ %n.vec422, %vec.epilog.iter.check433 ], [ 0, %vector.main.loop.iter.check419 ]
  %n.vec436 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body437

vec.epilog.vector.body437:                        ; preds = %vec.epilog.vector.body437, %vec.epilog.ph435
  %index438 = phi i64 [ %vec.epilog.resume.val430, %vec.epilog.ph435 ], [ %index.next440, %vec.epilog.vector.body437 ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 %index438
  %wide.load439 = load <4 x i8>, ptr %i.if, align 1, !tbaa !35
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 %index438
  store <4 x i8> %wide.load439, ptr %i.ig, align 1, !tbaa !35
  %index.next440 = add nuw i64 %index438, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next440, %n.vec436
  br i1 %i.ih, label %vec.epilog.middle.block441, label %vec.epilog.vector.body437, !llvm.loop !1052

vec.epilog.middle.block441:                       ; preds = %vec.epilog.vector.body437
  %cmp.n442 = icmp eq i64 %4, %n.vec436
  br i1 %cmp.n442, label %.preheader152, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %iter.check431, %vec.epilog.iter.check433, %vec.epilog.middle.block441
  %.7179.ph = phi i64 [ 0, %iter.check431 ], [ %n.vec422, %vec.epilog.iter.check433 ], [ %n.vec436, %vec.epilog.middle.block441 ] ; 3 uses
  %xtraiter652 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod653.not = icmp eq i64 %xtraiter652, 0
  br i1 %lcmp.mod653.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol

.lr.ph180.prol:                                   ; preds = %.lr.ph180.preheader, %.lr.ph180.prol
  %.7179.prol = phi i64 [ %i.il, %.lr.ph180.prol ], [ %.7179.ph, %.lr.ph180.preheader ] ; 3 uses
  %prol.iter654 = phi i64 [ %prol.iter654.next, %.lr.ph180.prol ], [ 0, %.lr.ph180.preheader ]
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 %.7179.prol
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !35
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 %.7179.prol
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !35
  %i.il = add nuw nsw i64 %.7179.prol, 1          ; 2 uses
  %prol.iter654.next = add i64 %prol.iter654, 1   ; 2 uses
  %prol.iter654.cmp.not = icmp eq i64 %prol.iter654.next, %xtraiter652
  br i1 %prol.iter654.cmp.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol, !llvm.loop !1053

.lr.ph180.prol.loopexit:                          ; preds = %.lr.ph180.prol, %.lr.ph180.preheader
  %.7179.unr = phi i64 [ %.7179.ph, %.lr.ph180.preheader ], [ %i.il, %.lr.ph180.prol ]
  %i.im = sub nsw i64 %.7179.ph, %4
  %i.in = icmp ugt i64 %i.im, -4
  br i1 %i.in, label %.preheader152, label %.lr.ph180

.preheader155:                                    ; preds = %.lr.ph175.prol.loopexit, %.lr.ph175, %middle.block363, %vec.epilog.middle.block377, %.preheader157
  %i.io = icmp ult i64 %4, %3
  br i1 %i.io, label %iter.check401, label %.loopexit

iter.check401:                                    ; preds = %.preheader155
  %i.ip = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check386 = icmp ult i64 %i.ip, 4
  br i1 %min.iters.check386, label %.lr.ph177.preheader, label %vector.memcheck380

vector.memcheck380:                               ; preds = %iter.check401
  %i.iq = add i64 %4, %i.c
  %i.ir = sub i64 %i.b, %i.iq
  %diff.check381 = icmp ugt i64 %i.ir, -16
  %i.is = sub i64 %i.b, %i.c
  %diff.check382 = icmp ugt i64 %i.is, -16
  %conflict.rdx383 = or i1 %diff.check381, %diff.check382
  %i.it = sub i64 %i.a, %i.c
  %diff.check384 = icmp ugt i64 %i.it, -16
  %conflict.rdx385 = or i1 %conflict.rdx383, %diff.check384
  br i1 %conflict.rdx385, label %.lr.ph177.preheader, label %vector.main.loop.iter.check387

vector.main.loop.iter.check387:                   ; preds = %vector.memcheck380
  %min.iters.check388 = icmp ult i64 %i.ip, 16
  br i1 %min.iters.check388, label %vec.epilog.ph405, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.iu = and i64 %i.ip, 12
  %n.vec390 = and i64 %i.ip, -16                  ; 4 uses
  %i.iv = add i64 %4, %n.vec390
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph389, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next396, %vector.body391 ] ; 3 uses
  %i.iw = add nuw i64 %4, %index392               ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 %i.iw
  %wide.load393 = load <16 x i8>, ptr %i.ix, align 1, !tbaa !35
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 %index392
  %wide.load394 = load <16 x i8>, ptr %i.iy, align 1, !tbaa !35
  %i.iz = zext <16 x i8> %wide.load394 to <16 x i16>
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 %i.iw
  %wide.load395 = load <16 x i8>, ptr %i.ja, align 1, !tbaa !35
  %i.jb = zext <16 x i8> %wide.load395 to <16 x i16>
  %i.jc = add nuw nsw <16 x i16> %i.jb, %i.iz
  %i.jd = lshr <16 x i16> %i.jc, splat (i16 1)
  %i.je = trunc nuw <16 x i16> %i.jd to <16 x i8>
  %i.jf = sub <16 x i8> %wide.load393, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 %i.iw
  store <16 x i8> %i.jf, ptr %i.jg, align 1, !tbaa !35
  %index.next396 = add nuw i64 %index392, 16      ; 2 uses
  %i.jh = icmp eq i64 %index.next396, %n.vec390
  br i1 %i.jh, label %middle.block397, label %vector.body391, !llvm.loop !1054

middle.block397:                                  ; preds = %vector.body391
  %cmp.n398 = icmp eq i64 %i.ip, %n.vec390
  br i1 %cmp.n398, label %.loopexit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block397
  %min.epilog.iters.check404 = icmp eq i64 %i.iu, 0
  br i1 %min.epilog.iters.check404, label %.lr.ph177.preheader, label %vec.epilog.ph405, !prof !83

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check403
  %vec.epilog.resume.val399 = phi i64 [ %n.vec390, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec406 = and i64 %i.ip, -4                   ; 3 uses
  %i.ji = add i64 %4, %n.vec406
  br label %vec.epilog.vector.body407

vec.epilog.vector.body407:                        ; preds = %vec.epilog.vector.body407, %vec.epilog.ph405
  %index408 = phi i64 [ %vec.epilog.resume.val399, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body407 ] ; 3 uses
  %i.jj = add nuw i64 %4, %index408               ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 %i.jj
  %wide.load409 = load <4 x i8>, ptr %i.jk, align 1, !tbaa !35
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 %index408
  %wide.load410 = load <4 x i8>, ptr %i.jl, align 1, !tbaa !35
  %i.jm = zext <4 x i8> %wide.load410 to <4 x i16>
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 %i.jj
  %wide.load411 = load <4 x i8>, ptr %i.jn, align 1, !tbaa !35
  %i.jo = zext <4 x i8> %wide.load411 to <4 x i16>
  %i.jp = add nuw nsw <4 x i16> %i.jo, %i.jm
  %i.jq = lshr <4 x i16> %i.jp, splat (i16 1)
  %i.jr = trunc nuw <4 x i16> %i.jq to <4 x i8>
  %i.js = sub <4 x i8> %wide.load409, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 %i.jj
  store <4 x i8> %i.js, ptr %i.jt, align 1, !tbaa !35
  %index.next412 = add nuw i64 %index408, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.ju, label %vec.epilog.middle.block413, label %vec.epilog.vector.body407, !llvm.loop !1055

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body407
  %cmp.n414 = icmp eq i64 %i.ip, %n.vec406
  br i1 %cmp.n414, label %.loopexit, label %.lr.ph177.preheader

.lr.ph177.preheader:                              ; preds = %iter.check401, %vector.memcheck380, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.6176.ph = phi i64 [ %4, %iter.check401 ], [ %4, %vector.memcheck380 ], [ %i.iv, %vec.epilog.iter.check403 ], [ %i.ji, %vec.epilog.middle.block413 ] ; 8 uses
  %i.jv = sub i64 %3, %.6176.ph
  %.neg674 = add i64 %.6176.ph, 1
  %xtraiter649 = and i64 %i.jv, 1
  %lcmp.mod650.not = icmp eq i64 %xtraiter649, 0
  br i1 %lcmp.mod650.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol

.lr.ph177.prol:                                   ; preds = %.lr.ph177.preheader
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 %.6176.ph
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !35
  %i.jy = sub nuw i64 %.6176.ph, %4
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !35
  %i.kb = zext i8 %i.ka to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 %.6176.ph
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !35
  %i.ke = zext i8 %i.kd to i16
  %i.kf = add nuw nsw i16 %i.ke, %i.kb
  %i.kg = lshr i16 %i.kf, 1
  %i.kh = trunc nuw i16 %i.kg to i8
  %i.ki = sub i8 %i.jx, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 %.6176.ph
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !35
  %i.kk = add nuw i64 %.6176.ph, 1
  br label %.lr.ph177.prol.loopexit

.lr.ph177.prol.loopexit:                          ; preds = %.lr.ph177.prol, %.lr.ph177.preheader
  %.6176.unr = phi i64 [ %.6176.ph, %.lr.ph177.preheader ], [ %i.kk, %.lr.ph177.prol ]
  %i.kl = icmp eq i64 %3, %.neg674
  br i1 %i.kl, label %.loopexit, label %.lr.ph177

.lr.ph175:                                        ; preds = %.lr.ph175.prol.loopexit, %.lr.ph175
  %.5174 = phi i64 [ %i.lb, %.lr.ph175 ], [ %.5174.unr, %.lr.ph175.prol.loopexit ] ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 %.5174
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !35
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 %.5174
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !35
  %i.kq = lshr i8 %i.kp, 1
  %i.kr = sub i8 %i.kn, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 %.5174
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !35
  %i.kt = add nuw nsw i64 %.5174, 1               ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !35
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 %i.kt
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !35
  %i.ky = lshr i8 %i.kx, 1
  %i.kz = sub i8 %i.kv, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 %i.kt
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !35
  %i.lb = add nuw nsw i64 %.5174, 2               ; 2 uses
  %.not139.1 = icmp eq i64 %i.lb, %4
  br i1 %.not139.1, label %.preheader155, label %.lr.ph175, !llvm.loop !1056

.lr.ph177:                                        ; preds = %.lr.ph177.prol.loopexit, %.lr.ph177
  %.6176 = phi i64 [ %i.mf, %.lr.ph177 ], [ %.6176.unr, %.lr.ph177.prol.loopexit ] ; 6 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 %.6176
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !35
  %i.le = sub nuw i64 %.6176, %4
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !35
  %i.lh = zext i8 %i.lg to i16
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 %.6176
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !35
  %i.lk = zext i8 %i.lj to i16
  %i.ll = add nuw nsw i16 %i.lk, %i.lh
  %i.lm = lshr i16 %i.ll, 1
  %i.ln = trunc nuw i16 %i.lm to i8
  %i.lo = sub i8 %i.ld, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 %.6176
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !35
  %i.lq = add nuw i64 %.6176, 1                   ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !35
  %i.lt = sub nuw i64 %i.lq, %4
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !35
  %i.lw = zext i8 %i.lv to i16
  %i.lx = getelementptr inbounds nuw i8, ptr %2, i64 %i.lq
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !35
  %i.lz = zext i8 %i.ly to i16
  %i.ma = add nuw nsw i16 %i.lz, %i.lw
  %i.mb = lshr i16 %i.ma, 1
  %i.mc = trunc nuw i16 %i.mb to i8
  %i.md = sub i8 %i.ls, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 %i.lq
  store i8 %i.md, ptr %i.me, align 1, !tbaa !35
  %i.mf = add nuw i64 %.6176, 2                   ; 2 uses
  %exitcond206.not.1 = icmp eq i64 %i.mf, %3
  br i1 %exitcond206.not.1, label %.loopexit, label %.lr.ph177, !llvm.loop !1057

.preheader152:                                    ; preds = %.lr.ph180.prol.loopexit, %.lr.ph180, %middle.block428, %vec.epilog.middle.block441, %.preheader154
  %i.mg = icmp ult i64 %4, %3
  br i1 %i.mg, label %iter.check464, label %.loopexit

iter.check464:                                    ; preds = %.preheader152
  %i.mh = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check448 = icmp ult i64 %i.mh, 8
  br i1 %min.iters.check448, label %.lr.ph182.preheader, label %vector.memcheck444

vector.memcheck444:                               ; preds = %iter.check464
  %i.mi = add i64 %4, %i.c
  %i.mj = sub i64 %i.b, %i.mi
  %diff.check445 = icmp ugt i64 %i.mj, -32
  %i.mk = sub i64 %i.b, %i.c
  %diff.check446 = icmp ugt i64 %i.mk, -32
  %conflict.rdx447 = or i1 %diff.check445, %diff.check446
  br i1 %conflict.rdx447, label %.lr.ph182.preheader, label %vector.main.loop.iter.check449

vector.main.loop.iter.check449:                   ; preds = %vector.memcheck444
  %min.iters.check450 = icmp ult i64 %i.mh, 32
  br i1 %min.iters.check450, label %vec.epilog.ph468, label %vector.ph451

vector.ph451:                                     ; preds = %vector.main.loop.iter.check449
  %i.ml = and i64 %i.mh, 24
  %n.vec452 = and i64 %i.mh, -32                  ; 4 uses
  %i.mm = add i64 %4, %n.vec452
  br label %vector.body453

vector.body453:                                   ; preds = %vector.ph451, %vector.body453
  %index454 = phi i64 [ 0, %vector.ph451 ], [ %index.next459, %vector.body453 ] ; 3 uses
  %i.mn = add nuw i64 %4, %index454               ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 %i.mn ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %wide.load455 = load <16 x i8>, ptr %i.mo, align 1, !tbaa !35
  %wide.load456 = load <16 x i8>, ptr %i.mp, align 1, !tbaa !35
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 %index454 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %wide.load457 = load <16 x i8>, ptr %i.mq, align 1, !tbaa !35
  %wide.load458 = load <16 x i8>, ptr %i.mr, align 1, !tbaa !35
  %i.ms = lshr <16 x i8> %wide.load457, splat (i8 1)
  %i.mt = lshr <16 x i8> %wide.load458, splat (i8 1)
  %i.mu = sub <16 x i8> %wide.load455, %i.ms
  %i.mv = sub <16 x i8> %wide.load456, %i.mt
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 %i.mn ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store <16 x i8> %i.mu, ptr %i.mw, align 1, !tbaa !35
  store <16 x i8> %i.mv, ptr %i.mx, align 1, !tbaa !35
  %index.next459 = add nuw i64 %index454, 32      ; 2 uses
  %i.my = icmp eq i64 %index.next459, %n.vec452
  br i1 %i.my, label %middle.block460, label %vector.body453, !llvm.loop !1058

middle.block460:                                  ; preds = %vector.body453
  %cmp.n461 = icmp eq i64 %i.mh, %n.vec452
  br i1 %cmp.n461, label %.loopexit, label %vec.epilog.iter.check466

vec.epilog.iter.check466:                         ; preds = %middle.block460
  %min.epilog.iters.check467 = icmp eq i64 %i.ml, 0
  br i1 %min.epilog.iters.check467, label %.lr.ph182.preheader, label %vec.epilog.ph468, !prof !1076

vec.epilog.ph468:                                 ; preds = %vector.main.loop.iter.check449, %vec.epilog.iter.check466
  %vec.epilog.resume.val462 = phi i64 [ %n.vec452, %vec.epilog.iter.check466 ], [ 0, %vector.main.loop.iter.check449 ]
  %n.vec469 = and i64 %i.mh, -8                   ; 3 uses
  %i.mz = add i64 %4, %n.vec469
  br label %vec.epilog.vector.body470

vec.epilog.vector.body470:                        ; preds = %vec.epilog.vector.body470, %vec.epilog.ph468
  %index471 = phi i64 [ %vec.epilog.resume.val462, %vec.epilog.ph468 ], [ %index.next474, %vec.epilog.vector.body470 ] ; 3 uses
  %i.na = add nuw i64 %4, %index471               ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 %i.na
  %wide.load472 = load <8 x i8>, ptr %i.nb, align 1, !tbaa !35
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 %index471
  %wide.load473 = load <8 x i8>, ptr %i.nc, align 1, !tbaa !35
  %i.nd = lshr <8 x i8> %wide.load473, splat (i8 1)
  %i.ne = sub <8 x i8> %wide.load472, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 %i.na
  store <8 x i8> %i.ne, ptr %i.nf, align 1, !tbaa !35
  %index.next474 = add nuw i64 %index471, 8       ; 2 uses
  %i.ng = icmp eq i64 %index.next474, %n.vec469
  br i1 %i.ng, label %vec.epilog.middle.block475, label %vec.epilog.vector.body470, !llvm.loop !1059

vec.epilog.middle.block475:                       ; preds = %vec.epilog.vector.body470
  %cmp.n476 = icmp eq i64 %i.mh, %n.vec469
  br i1 %cmp.n476, label %.loopexit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %iter.check464, %vector.memcheck444, %vec.epilog.iter.check466, %vec.epilog.middle.block475
  %.8181.ph = phi i64 [ %4, %iter.check464 ], [ %4, %vector.memcheck444 ], [ %i.mm, %vec.epilog.iter.check466 ], [ %i.mz, %vec.epilog.middle.block475 ] ; 7 uses
  %i.nh = sub i64 %3, %.8181.ph
  %.neg675 = add i64 %.8181.ph, 1
  %xtraiter655 = and i64 %i.nh, 1
  %lcmp.mod656.not = icmp eq i64 %xtraiter655, 0
  br i1 %lcmp.mod656.not, label %.lr.ph182.prol.loopexit, label %.lr.ph182.prol

.lr.ph182.prol:                                   ; preds = %.lr.ph182.preheader
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 %.8181.ph
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !35
  %i.nk = sub nuw i64 %.8181.ph, %4
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !35
  %i.nn = lshr i8 %i.nm, 1
  %i.no = sub i8 %i.nj, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 %.8181.ph
  store i8 %i.no, ptr %i.np, align 1, !tbaa !35
  %i.nq = add nuw i64 %.8181.ph, 1
  br label %.lr.ph182.prol.loopexit

.lr.ph182.prol.loopexit:                          ; preds = %.lr.ph182.prol, %.lr.ph182.preheader
  %.8181.unr = phi i64 [ %.8181.ph, %.lr.ph182.preheader ], [ %i.nq, %.lr.ph182.prol ]
  %i.nr = icmp eq i64 %3, %.neg675
  br i1 %i.nr, label %.loopexit, label %.lr.ph182

.lr.ph180:                                        ; preds = %.lr.ph180.prol.loopexit, %.lr.ph180
  %.7179 = phi i64 [ %i.oh, %.lr.ph180 ], [ %.7179.unr, %.lr.ph180.prol.loopexit ] ; 6 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 %.7179
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !35
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 %.7179
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !35
  %i.nv = add nuw nsw i64 %.7179, 1               ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !35
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 %i.nv
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !35
  %i.nz = add nuw nsw i64 %.7179, 2               ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !35
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 %i.nz
  store i8 %i.ob, ptr %i.oc, align 1, !tbaa !35
  %i.od = add nuw nsw i64 %.7179, 3               ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !35
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 %i.od
  store i8 %i.of, ptr %i.og, align 1, !tbaa !35
  %i.oh = add nuw nsw i64 %.7179, 4               ; 2 uses
  %.not138.3 = icmp eq i64 %i.oh, %4
  br i1 %.not138.3, label %.preheader152, label %.lr.ph180, !llvm.loop !1060

.lr.ph182:                                        ; preds = %.lr.ph182.prol.loopexit, %.lr.ph182
  %.8181 = phi i64 [ %i.oz, %.lr.ph182 ], [ %.8181.unr, %.lr.ph182.prol.loopexit ] ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 %.8181
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !35
  %i.ok = sub nuw i64 %.8181, %4
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !35
  %i.on = lshr i8 %i.om, 1
  %i.oo = sub i8 %i.oj, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 %.8181
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !35
  %i.oq = add nuw i64 %.8181, 1                   ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !35
  %i.ot = sub nuw i64 %i.oq, %4
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !35
  %i.ow = lshr i8 %i.ov, 1
  %i.ox = sub i8 %i.os, %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 %i.oq
  store i8 %i.ox, ptr %i.oy, align 1, !tbaa !35
  %i.oz = add nuw i64 %.8181, 2                   ; 2 uses
  %exitcond207.not.1 = icmp eq i64 %i.oz, %3
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
  %i.pa = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.pa, -32
  %i.pb = sub i64 %i.a, %i.c
  %diff.check234 = icmp ugt i64 %i.pb, -32
  %conflict.rdx = or i1 %diff.check, %diff.check234
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check235 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check235, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pc = and i64 %4, 28
  %n.vec = and i64 %4, 536870880                  ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %wide.load = load <16 x i8>, ptr %i.pd, align 1, !tbaa !35
  %wide.load236 = load <16 x i8>, ptr %i.pe, align 1, !tbaa !35
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %wide.load237 = load <16 x i8>, ptr %i.pf, align 1, !tbaa !35
  %wide.load238 = load <16 x i8>, ptr %i.pg, align 1, !tbaa !35
  %i.ph = sub <16 x i8> %wide.load, %wide.load237
  %i.pi = sub <16 x i8> %wide.load236, %wide.load238
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  store <16 x i8> %i.ph, ptr %i.pj, align 1, !tbaa !35
  store <16 x i8> %i.pi, ptr %i.pk, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pl = icmp eq i64 %index.next, %n.vec
  br i1 %i.pl, label %middle.block, label %vector.body, !llvm.loop !1062

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.preheader161, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec239 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 %index240
  %wide.load241 = load <4 x i8>, ptr %i.pm, align 1, !tbaa !35
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 %index240
  %wide.load242 = load <4 x i8>, ptr %i.pn, align 1, !tbaa !35
  %i.po = sub <4 x i8> %wide.load241, %wide.load242
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 %index240
  store <4 x i8> %i.po, ptr %i.pp, align 1, !tbaa !35
  %index.next243 = add nuw i64 %index240, 4       ; 2 uses
  %i.pq = icmp eq i64 %index.next243, %n.vec239
  br i1 %i.pq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1063

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %4, %n.vec239
  br i1 %cmp.n244, label %.preheader161, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.9165.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec239, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.9165.prol = phi i64 [ %i.px, %.lr.ph.prol ], [ %.9165.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 %.9165.prol
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !35
  %i.pt = getelementptr inbounds nuw i8, ptr %2, i64 %.9165.prol
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !35
  %i.pv = sub i8 %i.ps, %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 %.9165.prol
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !35
  %i.px = add nuw nsw i64 %.9165.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1064

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.9165.unr = phi i64 [ %.9165.ph, %.lr.ph.preheader ], [ %i.px, %.lr.ph.prol ]
  %i.py = sub nsw i64 %.9165.ph, %4
  %i.pz = icmp ugt i64 %i.py, -4
  br i1 %i.pz, label %.preheader161, label %.lr.ph

.preheader160:                                    ; preds = %bb.d
  br i1 %.not135168, label %.preheader158, label %iter.check300

iter.check300:                                    ; preds = %.preheader160
  %min.iters.check287 = icmp samesign ult i64 %4, 4
  %i.qa = sub i64 %i.b, %i.c
  %diff.check286 = icmp ugt i64 %i.qa, -32
  %or.cond632 = or i1 %min.iters.check287, %diff.check286
  br i1 %or.cond632, label %.lr.ph170.preheader, label %vector.main.loop.iter.check288

vector.main.loop.iter.check288:                   ; preds = %iter.check300
  %min.iters.check289 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check289, label %vec.epilog.ph304, label %vector.ph290

vector.ph290:                                     ; preds = %vector.main.loop.iter.check288
  %i.qb = and i64 %4, 28
  %n.vec291 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.ph290, %vector.body292
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next296, %vector.body292 ] ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 %index293 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %wide.load294 = load <16 x i8>, ptr %i.qc, align 1, !tbaa !35
  %wide.load295 = load <16 x i8>, ptr %i.qd, align 1, !tbaa !35
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 %index293 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  store <16 x i8> %wide.load294, ptr %i.qe, align 1, !tbaa !35
  store <16 x i8> %wide.load295, ptr %i.qf, align 1, !tbaa !35
  %index.next296 = add nuw i64 %index293, 32      ; 2 uses
  %i.qg = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.qg, label %middle.block297, label %vector.body292, !llvm.loop !1065

middle.block297:                                  ; preds = %vector.body292
  %cmp.n298 = icmp eq i64 %4, %n.vec291
  br i1 %cmp.n298, label %.preheader158, label %vec.epilog.iter.check302

vec.epilog.iter.check302:                         ; preds = %middle.block297
  %min.epilog.iters.check303 = icmp eq i64 %i.qb, 0
  br i1 %min.epilog.iters.check303, label %.lr.ph170.preheader, label %vec.epilog.ph304, !prof !90

vec.epilog.ph304:                                 ; preds = %vector.main.loop.iter.check288, %vec.epilog.iter.check302
  %vec.epilog.resume.val299 = phi i64 [ %n.vec291, %vec.epilog.iter.check302 ], [ 0, %vector.main.loop.iter.check288 ]
  %n.vec305 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body306

vec.epilog.vector.body306:                        ; preds = %vec.epilog.vector.body306, %vec.epilog.ph304
  %index307 = phi i64 [ %vec.epilog.resume.val299, %vec.epilog.ph304 ], [ %index.next309, %vec.epilog.vector.body306 ] ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 %index307
  %wide.load308 = load <4 x i8>, ptr %i.qh, align 1, !tbaa !35
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 %index307
  store <4 x i8> %wide.load308, ptr %i.qi, align 1, !tbaa !35
  %index.next309 = add nuw i64 %index307, 4       ; 2 uses
  %i.qj = icmp eq i64 %index.next309, %n.vec305
  br i1 %i.qj, label %vec.epilog.middle.block310, label %vec.epilog.vector.body306, !llvm.loop !1066

vec.epilog.middle.block310:                       ; preds = %vec.epilog.vector.body306
  %cmp.n311 = icmp eq i64 %4, %n.vec305
  br i1 %cmp.n311, label %.preheader158, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %iter.check300, %vec.epilog.iter.check302, %vec.epilog.middle.block310
  %.11169.ph = phi i64 [ 0, %iter.check300 ], [ %n.vec291, %vec.epilog.iter.check302 ], [ %n.vec305, %vec.epilog.middle.block310 ] ; 3 uses
  %xtraiter640 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod641.not = icmp eq i64 %xtraiter640, 0
  br i1 %lcmp.mod641.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol

.lr.ph170.prol:                                   ; preds = %.lr.ph170.preheader, %.lr.ph170.prol
  %.11169.prol = phi i64 [ %i.qn, %.lr.ph170.prol ], [ %.11169.ph, %.lr.ph170.preheader ] ; 3 uses
  %prol.iter642 = phi i64 [ %prol.iter642.next, %.lr.ph170.prol ], [ 0, %.lr.ph170.preheader ]
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 %.11169.prol
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !35
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 %.11169.prol
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !35
  %i.qn = add nuw nsw i64 %.11169.prol, 1         ; 2 uses
  %prol.iter642.next = add i64 %prol.iter642, 1   ; 2 uses
  %prol.iter642.cmp.not = icmp eq i64 %prol.iter642.next, %xtraiter640
  br i1 %prol.iter642.cmp.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol, !llvm.loop !1067

.lr.ph170.prol.loopexit:                          ; preds = %.lr.ph170.prol, %.lr.ph170.preheader
  %.11169.unr = phi i64 [ %.11169.ph, %.lr.ph170.preheader ], [ %i.qn, %.lr.ph170.prol ]
  %i.qo = sub nsw i64 %.11169.ph, %4
  %i.qp = icmp ugt i64 %i.qo, -4
  br i1 %i.qp, label %.preheader158, label %.lr.ph170

.preheader161:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader163
  %i.qq = icmp ult i64 %4, %3
  br i1 %i.qq, label %iter.check269, label %.loopexit

iter.check269:                                    ; preds = %.preheader161
  %i.qr = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check253 = icmp ult i64 %i.qr, 4
  br i1 %min.iters.check253, label %.lr.ph167.preheader, label %vector.memcheck245

vector.memcheck245:                               ; preds = %iter.check269
  %i.qs = add i64 %4, %i.c
  %i.qt = sub i64 %i.b, %i.qs
  %diff.check246 = icmp ugt i64 %i.qt, -16
  %i.qu = sub i64 %i.b, %i.c
  %diff.check247 = icmp ugt i64 %i.qu, -16
  %conflict.rdx248 = or i1 %diff.check246, %diff.check247
  %6 = add i64 %4, %i.c
  %i.qv = sub i64 %i.a, %6
  %diff.check249 = icmp ugt i64 %i.qv, -16
  %conflict.rdx250 = or i1 %conflict.rdx248, %diff.check249
  %i.qw = sub i64 %i.a, %i.c
  %diff.check251 = icmp ugt i64 %i.qw, -16
  %conflict.rdx252 = or i1 %conflict.rdx250, %diff.check251
  br i1 %conflict.rdx252, label %.lr.ph167.preheader, label %vector.main.loop.iter.check254

vector.main.loop.iter.check254:                   ; preds = %vector.memcheck245
  %min.iters.check255 = icmp ult i64 %i.qr, 16
  br i1 %min.iters.check255, label %vec.epilog.ph273, label %vector.ph256

vector.ph256:                                     ; preds = %vector.main.loop.iter.check254
  %i.qx = and i64 %i.qr, 12
  %n.vec257 = and i64 %i.qr, -16                  ; 4 uses
  %i.qy = add i64 %4, %n.vec257
  br label %vector.body258

vector.body258:                                   ; preds = %vector.ph256, %vector.body258
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body258 ] ; 4 uses
  %i.qz = add nuw i64 %4, %index259               ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 %i.qz
  %wide.load260 = load <16 x i8>, ptr %i.ra, align 1, !tbaa !35
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 %index259
  %wide.load261 = load <16 x i8>, ptr %i.rb, align 1, !tbaa !35 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 %i.qz
  %wide.load262 = load <16 x i8>, ptr %i.rc, align 1, !tbaa !35 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 %index259
  %wide.load263 = load <16 x i8>, ptr %i.rd, align 1, !tbaa !35 ; 2 uses
  %i.re = zext <16 x i8> %wide.load262 to <16 x i32> ; 2 uses
  %i.rf = zext <16 x i8> %wide.load263 to <16 x i32> ; 3 uses
  %i.rg = sub nsw <16 x i32> %i.re, %i.rf
  %i.rh = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rg, i1 true) ; 2 uses
  %i.ri = zext <16 x i8> %wide.load261 to <16 x i32> ; 2 uses
  %i.rj = sub nsw <16 x i32> %i.ri, %i.rf
  %i.rk = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rj, i1 true) ; 2 uses
  %i.rl = add nuw nsw <16 x i32> %i.re, %i.ri
  %i.rm = shl nuw nsw <16 x i32> %i.rf, splat (i32 1)
  %i.rn = sub nsw <16 x i32> %i.rl, %i.rm
  %i.ro = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rn, i1 true)
  %i.rp = icmp samesign ult <16 x i32> %i.rk, %i.rh
  %i.rq = select <16 x i1> %i.rp, <16 x i8> %wide.load262, <16 x i8> %wide.load261
  %i.rr = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.rk, <16 x i32> %i.rh)
  %i.rs = icmp samesign ult <16 x i32> %i.ro, %i.rr
  %i.rt = select <16 x i1> %i.rs, <16 x i8> %wide.load263, <16 x i8> %i.rq
  %i.ru = sub <16 x i8> %wide.load260, %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 %i.qz
  store <16 x i8> %i.ru, ptr %i.rv, align 1, !tbaa !35
  %index.next264 = add nuw i64 %index259, 16      ; 2 uses
  %i.rw = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.rw, label %middle.block265, label %vector.body258, !llvm.loop !1068

middle.block265:                                  ; preds = %vector.body258
  %cmp.n266 = icmp eq i64 %i.qr, %n.vec257
  br i1 %cmp.n266, label %.loopexit, label %vec.epilog.iter.check271

vec.epilog.iter.check271:                         ; preds = %middle.block265
  %min.epilog.iters.check272 = icmp eq i64 %i.qx, 0
  br i1 %min.epilog.iters.check272, label %.lr.ph167.preheader, label %vec.epilog.ph273, !prof !83

vec.epilog.ph273:                                 ; preds = %vector.main.loop.iter.check254, %vec.epilog.iter.check271
  %vec.epilog.resume.val267 = phi i64 [ %n.vec257, %vec.epilog.iter.check271 ], [ 0, %vector.main.loop.iter.check254 ]
  %n.vec274 = and i64 %i.qr, -4                   ; 3 uses
  %i.rx = add i64 %4, %n.vec274
  br label %vec.epilog.vector.body275

vec.epilog.vector.body275:                        ; preds = %vec.epilog.vector.body275, %vec.epilog.ph273
  %index276 = phi i64 [ %vec.epilog.resume.val267, %vec.epilog.ph273 ], [ %index.next281, %vec.epilog.vector.body275 ] ; 4 uses
  %i.ry = add nuw i64 %4, %index276               ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ry
  %wide.load277 = load <4 x i8>, ptr %i.rz, align 1, !tbaa !35
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 %index276
  %wide.load278 = load <4 x i8>, ptr %i.sa, align 1, !tbaa !35 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ry
  %wide.load279 = load <4 x i8>, ptr %i.sb, align 1, !tbaa !35 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 %index276
  %wide.load280 = load <4 x i8>, ptr %i.sc, align 1, !tbaa !35 ; 2 uses
  %i.sd = zext <4 x i8> %wide.load279 to <4 x i32> ; 2 uses
  %i.se = zext <4 x i8> %wide.load280 to <4 x i32> ; 3 uses
  %i.sf = sub nsw <4 x i32> %i.sd, %i.se
  %i.sg = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sf, i1 true) ; 2 uses
  %i.sh = zext <4 x i8> %wide.load278 to <4 x i32> ; 2 uses
  %i.si = sub nsw <4 x i32> %i.sh, %i.se
  %i.sj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.si, i1 true) ; 2 uses
  %i.sk = add nuw nsw <4 x i32> %i.sd, %i.sh
  %i.sl = shl nuw nsw <4 x i32> %i.se, splat (i32 1)
  %i.sm = sub nsw <4 x i32> %i.sk, %i.sl
  %i.sn = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sm, i1 true)
  %i.so = icmp samesign ult <4 x i32> %i.sj, %i.sg
  %i.sp = select <4 x i1> %i.so, <4 x i8> %wide.load279, <4 x i8> %wide.load278
  %i.sq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.sj, <4 x i32> %i.sg)
  %i.sr = icmp samesign ult <4 x i32> %i.sn, %i.sq
  %i.ss = select <4 x i1> %i.sr, <4 x i8> %wide.load280, <4 x i8> %i.sp
  %i.st = sub <4 x i8> %wide.load277, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 %i.ry
  store <4 x i8> %i.st, ptr %i.su, align 1, !tbaa !35
  %index.next281 = add nuw i64 %index276, 4       ; 2 uses
  %i.sv = icmp eq i64 %index.next281, %n.vec274
  br i1 %i.sv, label %vec.epilog.middle.block282, label %vec.epilog.vector.body275, !llvm.loop !1069

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body275
  %cmp.n283 = icmp eq i64 %i.qr, %n.vec274
  br i1 %cmp.n283, label %.loopexit, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %iter.check269, %vector.memcheck245, %vec.epilog.iter.check271, %vec.epilog.middle.block282
  %.10166.ph = phi i64 [ %4, %iter.check269 ], [ %4, %vector.memcheck245 ], [ %i.qy, %vec.epilog.iter.check271 ], [ %i.rx, %vec.epilog.middle.block282 ]
  br label %.lr.ph167

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.9165 = phi i64 [ %i.tx, %.lr.ph ], [ %.9165.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 %.9165
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !35
  %i.sy = getelementptr inbounds nuw i8, ptr %2, i64 %.9165
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !35
  %i.ta = sub i8 %i.sx, %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 %.9165
  store i8 %i.ta, ptr %i.tb, align 1, !tbaa !35
  %i.tc = add nuw nsw i64 %.9165, 1               ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !tbaa !35
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 %i.tc
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !35
  %i.th = sub i8 %i.te, %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 %i.tc
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !35
  %i.tj = add nuw nsw i64 %.9165, 2               ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !35
  %i.tm = getelementptr inbounds nuw i8, ptr %2, i64 %i.tj
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !35
  %i.to = sub i8 %i.tl, %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 %i.tj
  store i8 %i.to, ptr %i.tp, align 1, !tbaa !35
  %i.tq = add nuw nsw i64 %.9165, 3               ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 %i.tq
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !35
  %i.tt = getelementptr inbounds nuw i8, ptr %2, i64 %i.tq
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !35
  %i.tv = sub i8 %i.ts, %i.tu
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 %i.tq
  store i8 %i.tv, ptr %i.tw, align 1, !tbaa !35
  %i.tx = add nuw nsw i64 %.9165, 4               ; 2 uses
  %.not136.3 = icmp eq i64 %i.tx, %4
  br i1 %.not136.3, label %.preheader161, label %.lr.ph, !llvm.loop !1070

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.10166 = phi i64 [ %i.ux, %.lr.ph167 ], [ %.10166.ph, %.lr.ph167.preheader ] ; 5 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 %.10166
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !35
  %i.ua = sub nuw i64 %.10166, %4                 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !35  ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %2, i64 %.10166
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !35  ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ua
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !35  ; 2 uses
  %i.uh = zext i8 %i.ue to i32                    ; 2 uses
  %i.ui = zext i8 %i.ug to i32                    ; 3 uses
  %i.uj = sub nsw i32 %i.uh, %i.ui
  %i.uk = tail call i32 @llvm.abs.i32(i32 %i.uj, i1 true) ; 2 uses
  %i.ul = zext i8 %i.uc to i32                    ; 2 uses
  %i.um = sub nsw i32 %i.ul, %i.ui
  %i.un = tail call i32 @llvm.abs.i32(i32 %i.um, i1 true) ; 2 uses
  %i.uo = add nuw nsw i32 %i.uh, %i.ul
  %i.up = shl nuw nsw i32 %i.ui, 1
  %i.uq = sub nsw i32 %i.uo, %i.up
  %i.ur = tail call i32 @llvm.abs.i32(i32 %i.uq, i1 true)
  %i.us = icmp samesign ult i32 %i.un, %i.uk
  %.032.i = select i1 %i.us, i8 %i.ue, i8 %i.uc
  %.0.in.i = tail call i32 @llvm.umin.i32(i32 %i.un, i32 %i.uk)
  %i.ut = icmp samesign ult i32 %i.ur, %.0.in.i
  %i.uu = select i1 %i.ut, i8 %i.ug, i8 %.032.i
  %i.uv = sub i8 %i.tz, %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 %.10166
  store i8 %i.uv, ptr %i.uw, align 1, !tbaa !35
  %i.ux = add nuw i64 %.10166, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ux, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph167, !llvm.loop !1071

.preheader158:                                    ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170, %middle.block297, %vec.epilog.middle.block310, %.preheader160
  %i.uy = icmp ult i64 %4, %3
  br i1 %i.uy, label %iter.check333, label %.loopexit

iter.check333:                                    ; preds = %.preheader158
  %i.uz = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check317 = icmp ult i64 %i.uz, 8
  br i1 %min.iters.check317, label %.lr.ph172.preheader, label %vector.memcheck313

vector.memcheck313:                               ; preds = %iter.check333
  %i.va = add i64 %4, %i.c
  %i.vb = sub i64 %i.b, %i.va
  %diff.check314 = icmp ugt i64 %i.vb, -32
  %i.vc = sub i64 %i.b, %i.c
  %diff.check315 = icmp ugt i64 %i.vc, -32
  %conflict.rdx316 = or i1 %diff.check314, %diff.check315
  br i1 %conflict.rdx316, label %.lr.ph172.preheader, label %vector.main.loop.iter.check318

vector.main.loop.iter.check318:                   ; preds = %vector.memcheck313
  %min.iters.check319 = icmp ult i64 %i.uz, 32
  br i1 %min.iters.check319, label %vec.epilog.ph337, label %vector.ph320

vector.ph320:                                     ; preds = %vector.main.loop.iter.check318
  %i.vd = and i64 %i.uz, 24
  %n.vec321 = and i64 %i.uz, -32                  ; 4 uses
  %i.ve = add i64 %4, %n.vec321
  br label %vector.body322

vector.body322:                                   ; preds = %vector.ph320, %vector.body322
  %index323 = phi i64 [ 0, %vector.ph320 ], [ %index.next328, %vector.body322 ] ; 3 uses
  %i.vf = add nuw i64 %4, %index323               ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %wide.load324 = load <16 x i8>, ptr %i.vg, align 1, !tbaa !35
  %wide.load325 = load <16 x i8>, ptr %i.vh, align 1, !tbaa !35
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 %index323 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %wide.load326 = load <16 x i8>, ptr %i.vi, align 1, !tbaa !35
  %wide.load327 = load <16 x i8>, ptr %i.vj, align 1, !tbaa !35
  %i.vk = sub <16 x i8> %wide.load324, %wide.load326
  %i.vl = sub <16 x i8> %wide.load325, %wide.load327
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 %i.vf ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  store <16 x i8> %i.vk, ptr %i.vm, align 1, !tbaa !35
  store <16 x i8> %i.vl, ptr %i.vn, align 1, !tbaa !35
  %index.next328 = add nuw i64 %index323, 32      ; 2 uses
  %i.vo = icmp eq i64 %index.next328, %n.vec321
  br i1 %i.vo, label %middle.block329, label %vector.body322, !llvm.loop !1072

middle.block329:                                  ; preds = %vector.body322
  %cmp.n330 = icmp eq i64 %i.uz, %n.vec321
  br i1 %cmp.n330, label %.loopexit, label %vec.epilog.iter.check335

vec.epilog.iter.check335:                         ; preds = %middle.block329
  %min.epilog.iters.check336 = icmp eq i64 %i.vd, 0
  br i1 %min.epilog.iters.check336, label %.lr.ph172.preheader, label %vec.epilog.ph337, !prof !1076

vec.epilog.ph337:                                 ; preds = %vector.main.loop.iter.check318, %vec.epilog.iter.check335
  %vec.epilog.resume.val331 = phi i64 [ %n.vec321, %vec.epilog.iter.check335 ], [ 0, %vector.main.loop.iter.check318 ]
  %n.vec338 = and i64 %i.uz, -8                   ; 3 uses
  %i.vp = add i64 %4, %n.vec338
  br label %vec.epilog.vector.body339

vec.epilog.vector.body339:                        ; preds = %vec.epilog.vector.body339, %vec.epilog.ph337
  %index340 = phi i64 [ %vec.epilog.resume.val331, %vec.epilog.ph337 ], [ %index.next343, %vec.epilog.vector.body339 ] ; 3 uses
  %i.vq = add nuw i64 %4, %index340               ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 %i.vq
  %wide.load341 = load <8 x i8>, ptr %i.vr, align 1, !tbaa !35
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 %index340
  %wide.load342 = load <8 x i8>, ptr %i.vs, align 1, !tbaa !35
  %i.vt = sub <8 x i8> %wide.load341, %wide.load342
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 %i.vq
  store <8 x i8> %i.vt, ptr %i.vu, align 1, !tbaa !35
  %index.next343 = add nuw i64 %index340, 8       ; 2 uses
  %i.vv = icmp eq i64 %index.next343, %n.vec338
  br i1 %i.vv, label %vec.epilog.middle.block344, label %vec.epilog.vector.body339, !llvm.loop !1073

vec.epilog.middle.block344:                       ; preds = %vec.epilog.vector.body339
  %cmp.n345 = icmp eq i64 %i.uz, %n.vec338
  br i1 %cmp.n345, label %.loopexit, label %.lr.ph172.preheader

.lr.ph172.preheader:                              ; preds = %iter.check333, %vector.memcheck313, %vec.epilog.iter.check335, %vec.epilog.middle.block344
  %.12171.ph = phi i64 [ %4, %iter.check333 ], [ %4, %vector.memcheck313 ], [ %i.ve, %vec.epilog.iter.check335 ], [ %i.vp, %vec.epilog.middle.block344 ] ; 7 uses
  %i.vw = sub i64 %3, %.12171.ph
  %.neg = add i64 %.12171.ph, 1
  %xtraiter643 = and i64 %i.vw, 1
  %lcmp.mod644.not = icmp eq i64 %xtraiter643, 0
  br i1 %lcmp.mod644.not, label %.lr.ph172.prol.loopexit, label %.lr.ph172.prol

.lr.ph172.prol:                                   ; preds = %.lr.ph172.preheader
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 %.12171.ph
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !35
  %i.vz = sub nuw i64 %.12171.ph, %4
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !35
  %i.wc = sub i8 %i.vy, %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 %.12171.ph
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !35
  %i.we = add nuw i64 %.12171.ph, 1
  br label %.lr.ph172.prol.loopexit

.lr.ph172.prol.loopexit:                          ; preds = %.lr.ph172.prol, %.lr.ph172.preheader
  %.12171.unr = phi i64 [ %.12171.ph, %.lr.ph172.preheader ], [ %i.we, %.lr.ph172.prol ]
  %i.wf = icmp eq i64 %3, %.neg
  br i1 %i.wf, label %.loopexit, label %.lr.ph172

.lr.ph170:                                        ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170
  %.11169 = phi i64 [ %i.wv, %.lr.ph170 ], [ %.11169.unr, %.lr.ph170.prol.loopexit ] ; 6 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 %.11169
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !35
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 %.11169
  store i8 %i.wh, ptr %i.wi, align 1, !tbaa !35
  %i.wj = add nuw nsw i64 %.11169, 1              ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 %i.wj
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !35
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 %i.wj
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !35
  %i.wn = add nuw nsw i64 %.11169, 2              ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !35
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 %i.wn
  store i8 %i.wp, ptr %i.wq, align 1, !tbaa !35
  %i.wr = add nuw nsw i64 %.11169, 3              ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !35
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 %i.wr
  store i8 %i.wt, ptr %i.wu, align 1, !tbaa !35
  %i.wv = add nuw nsw i64 %.11169, 4              ; 2 uses
  %.not135.3 = icmp eq i64 %i.wv, %4
  br i1 %.not135.3, label %.preheader158, label %.lr.ph170, !llvm.loop !1074

.lr.ph172:                                        ; preds = %.lr.ph172.prol.loopexit, %.lr.ph172
  %.12171 = phi i64 [ %i.xl, %.lr.ph172 ], [ %.12171.unr, %.lr.ph172.prol.loopexit ] ; 5 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 %.12171
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !35
  %i.wy = sub nuw i64 %.12171, %4
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 %i.wy
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !35
  %i.xb = sub i8 %i.wx, %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 %.12171
  store i8 %i.xb, ptr %i.xc, align 1, !tbaa !35
  %i.xd = add nuw i64 %.12171, 1                  ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 %i.xd
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !35
  %i.xg = sub nuw i64 %i.xd, %4
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !35
  %i.xj = sub i8 %i.xf, %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 %i.xd
  store i8 %i.xj, ptr %i.xk, align 1, !tbaa !35
  %i.xl = add nuw i64 %.12171, 2                  ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %i.xl, %3
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
