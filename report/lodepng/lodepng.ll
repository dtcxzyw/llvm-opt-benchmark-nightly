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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 18 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 23 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 6 uses
  switch i8 %5, label %.loopexit [
    i8 0, label %.preheader
    i8 1, label %.preheader147
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.d
  ]

.preheader147:                                    ; preds = %bb.a
  %.not143189 = icmp eq i64 %4, 0
  br i1 %.not143189, label %.preheader145, label %iter.check588

iter.check588:                                    ; preds = %.preheader147
  %min.iters.check574 = icmp samesign ult i64 %4, 4
  %i.d = sub i64 %i.a, %i.b
  %diff.check576 = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check574, %diff.check576
  br i1 %or.cond, label %.lr.ph191.preheader, label %vector.main.loop.iter.check577

vector.main.loop.iter.check577:                   ; preds = %iter.check588
  %min.iters.check578 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check578, label %vec.epilog.ph592, label %vector.ph579

vector.ph579:                                     ; preds = %vector.main.loop.iter.check577
  %i.e = and i64 %4, 28
  %n.vec580 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body581

vector.body581:                                   ; preds = %vector.ph579, %vector.body581
  %index582 = phi i64 [ 0, %vector.ph579 ], [ %index.next585, %vector.body581 ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index582 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load583 = load <16 x i8>, ptr %i.f, align 1, !tbaa !35
  %wide.load584 = load <16 x i8>, ptr %i.g, align 1, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index582 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> %wide.load583, ptr %i.h, align 1, !tbaa !35
  store <16 x i8> %wide.load584, ptr %i.i, align 1, !tbaa !35
  %index.next585 = add nuw i64 %index582, 32      ; 2 uses
  %i.j = icmp eq i64 %index.next585, %n.vec580
  br i1 %i.j, label %middle.block586, label %vector.body581, !llvm.loop !1030

middle.block586:                                  ; preds = %vector.body581
  %cmp.n587 = icmp eq i64 %4, %n.vec580
  br i1 %cmp.n587, label %.preheader145, label %vec.epilog.iter.check589

vec.epilog.iter.check589:                         ; preds = %middle.block586
  %min.epilog.iters.check591 = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check591, label %.lr.ph191.preheader, label %vec.epilog.ph592, !prof !90

vec.epilog.ph592:                                 ; preds = %vector.main.loop.iter.check577, %vec.epilog.iter.check589
  %vec.epilog.resume.val593 = phi i64 [ %n.vec580, %vec.epilog.iter.check589 ], [ 0, %vector.main.loop.iter.check577 ]
  %n.vec594 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body595

vec.epilog.vector.body595:                        ; preds = %vec.epilog.vector.body595, %vec.epilog.ph592
  %index596 = phi i64 [ %vec.epilog.resume.val593, %vec.epilog.ph592 ], [ %index.next598, %vec.epilog.vector.body595 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index596
  %wide.load597 = load <4 x i8>, ptr %i.k, align 1, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index596
  store <4 x i8> %wide.load597, ptr %i.l, align 1, !tbaa !35
  %index.next598 = add nuw i64 %index596, 4       ; 2 uses
  %i.m = icmp eq i64 %index.next598, %n.vec594
  br i1 %i.m, label %vec.epilog.middle.block599, label %vec.epilog.vector.body595, !llvm.loop !1031

vec.epilog.middle.block599:                       ; preds = %vec.epilog.vector.body595
  %cmp.n600 = icmp eq i64 %4, %n.vec594
  br i1 %cmp.n600, label %.preheader145, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %iter.check588, %vec.epilog.iter.check589, %vec.epilog.middle.block599
  %.1190.ph = phi i64 [ 0, %iter.check588 ], [ %n.vec580, %vec.epilog.iter.check589 ], [ %n.vec594, %vec.epilog.middle.block599 ] ; 3 uses
  %xtraiter704 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod705.not = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod705.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol

.lr.ph191.prol:                                   ; preds = %.lr.ph191.preheader, %.lr.ph191.prol
  %.1190.prol = phi i64 [ %i.q, %.lr.ph191.prol ], [ %.1190.ph, %.lr.ph191.preheader ] ; 3 uses
  %prol.iter706 = phi i64 [ %prol.iter706.next, %.lr.ph191.prol ], [ 0, %.lr.ph191.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.1190.prol
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.1190.prol
  store i8 %i.o, ptr %i.p, align 1, !tbaa !35
  %i.q = add nuw nsw i64 %.1190.prol, 1           ; 2 uses
  %prol.iter706.next = add i64 %prol.iter706, 1   ; 2 uses
  %prol.iter706.cmp.not = icmp eq i64 %prol.iter706.next, %xtraiter704
  br i1 %prol.iter706.cmp.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol, !llvm.loop !1032

.lr.ph191.prol.loopexit:                          ; preds = %.lr.ph191.prol, %.lr.ph191.preheader
  %.1190.unr = phi i64 [ %.1190.ph, %.lr.ph191.preheader ], [ %i.q, %.lr.ph191.prol ]
  %i.r = sub nsw i64 %.1190.ph, %4
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.preheader145, label %.lr.ph191

.preheader:                                       ; preds = %bb.a
  %.not144194 = icmp eq i64 %3, 0
  br i1 %.not144194, label %.loopexit, label %iter.check655

iter.check655:                                    ; preds = %.preheader
  %min.iters.check641 = icmp ult i64 %3, 4
  %i.t = sub i64 %i.a, %i.b
  %diff.check643 = icmp ugt i64 %i.t, -32
  %or.cond669 = or i1 %min.iters.check641, %diff.check643
  br i1 %or.cond669, label %.lr.ph196.preheader, label %vector.main.loop.iter.check644

vector.main.loop.iter.check644:                   ; preds = %iter.check655
  %min.iters.check645 = icmp ult i64 %3, 32
  br i1 %min.iters.check645, label %vec.epilog.ph659, label %vector.ph646

vector.ph646:                                     ; preds = %vector.main.loop.iter.check644
  %i.u = and i64 %3, 28
  %n.vec647 = and i64 %3, -32                     ; 4 uses
  br label %vector.body648

vector.body648:                                   ; preds = %vector.ph646, %vector.body648
  %index649 = phi i64 [ 0, %vector.ph646 ], [ %index.next652, %vector.body648 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index649 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load650 = load <16 x i8>, ptr %i.v, align 1, !tbaa !35
  %wide.load651 = load <16 x i8>, ptr %i.w, align 1, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index649 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load650, ptr %i.x, align 1, !tbaa !35
  store <16 x i8> %wide.load651, ptr %i.y, align 1, !tbaa !35
  %index.next652 = add nuw i64 %index649, 32      ; 2 uses
  %i.z = icmp eq i64 %index.next652, %n.vec647
  br i1 %i.z, label %middle.block653, label %vector.body648, !llvm.loop !1033

middle.block653:                                  ; preds = %vector.body648
  %cmp.n654 = icmp eq i64 %3, %n.vec647
  br i1 %cmp.n654, label %.loopexit, label %vec.epilog.iter.check656

vec.epilog.iter.check656:                         ; preds = %middle.block653
  %min.epilog.iters.check658 = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check658, label %.lr.ph196.preheader, label %vec.epilog.ph659, !prof !90

vec.epilog.ph659:                                 ; preds = %vector.main.loop.iter.check644, %vec.epilog.iter.check656
  %vec.epilog.resume.val660 = phi i64 [ %n.vec647, %vec.epilog.iter.check656 ], [ 0, %vector.main.loop.iter.check644 ]
  %n.vec661 = and i64 %3, -4                      ; 3 uses
  br label %vec.epilog.vector.body662

vec.epilog.vector.body662:                        ; preds = %vec.epilog.vector.body662, %vec.epilog.ph659
  %index663 = phi i64 [ %vec.epilog.resume.val660, %vec.epilog.ph659 ], [ %index.next665, %vec.epilog.vector.body662 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %index663
  %wide.load664 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index663
  store <4 x i8> %wide.load664, ptr %i.ab, align 1, !tbaa !35
  %index.next665 = add nuw i64 %index663, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next665, %n.vec661
  br i1 %i.ac, label %vec.epilog.middle.block666, label %vec.epilog.vector.body662, !llvm.loop !1034

vec.epilog.middle.block666:                       ; preds = %vec.epilog.vector.body662
  %cmp.n667 = icmp eq i64 %3, %n.vec661
  br i1 %cmp.n667, label %.loopexit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %iter.check655, %vec.epilog.iter.check656, %vec.epilog.middle.block666
  %.0195.ph = phi i64 [ 0, %iter.check655 ], [ %n.vec647, %vec.epilog.iter.check656 ], [ %n.vec661, %vec.epilog.middle.block666 ] ; 3 uses
  %xtraiter710 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod711.not = icmp eq i64 %xtraiter710, 0
  br i1 %lcmp.mod711.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %.0195.prol = phi i64 [ %i.ag, %.lr.ph196.prol ], [ %.0195.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter712 = phi i64 [ %prol.iter712.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.0195.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.0195.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !35
  %i.ag = add nuw i64 %.0195.prol, 1              ; 2 uses
  %prol.iter712.next = add i64 %prol.iter712, 1   ; 2 uses
  %prol.iter712.cmp.not = icmp eq i64 %prol.iter712.next, %xtraiter710
  br i1 %prol.iter712.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !1035

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

.preheader145:                                    ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191, %middle.block586, %vec.epilog.middle.block599, %.preheader147
  %i.az = icmp ult i64 %4, %3
  br i1 %i.az, label %iter.check624, label %.loopexit

iter.check624:                                    ; preds = %.preheader145
  %i.ba = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check606 = icmp ult i64 %i.ba, 8
  br i1 %min.iters.check606, label %.lr.ph193.preheader, label %vector.memcheck607

vector.memcheck607:                               ; preds = %iter.check624
  %i.bb = add i64 %4, %i.b
  %i.bc = sub i64 %i.a, %i.bb
  %diff.check608 = icmp ugt i64 %i.bc, -32
  %i.bd = sub i64 %i.a, %i.b
  %diff.check609 = icmp ugt i64 %i.bd, -32
  %conflict.rdx610 = or i1 %diff.check608, %diff.check609
  br i1 %conflict.rdx610, label %.lr.ph193.preheader, label %vector.main.loop.iter.check611

vector.main.loop.iter.check611:                   ; preds = %vector.memcheck607
  %min.iters.check612 = icmp ult i64 %i.ba, 32
  br i1 %min.iters.check612, label %vec.epilog.ph628, label %vector.ph613

vector.ph613:                                     ; preds = %vector.main.loop.iter.check611
  %i.be = and i64 %i.ba, 24
  %n.vec614 = and i64 %i.ba, -32                  ; 4 uses
  %i.bf = add i64 %4, %n.vec614
  br label %vector.body615

vector.body615:                                   ; preds = %vector.ph613, %vector.body615
  %index616 = phi i64 [ 0, %vector.ph613 ], [ %index.next621, %vector.body615 ] ; 3 uses
  %i.bg = add nuw i64 %4, %index616               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load617 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !35
  %wide.load618 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %index616 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load619 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !35
  %wide.load620 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !35
  %i.bl = sub <16 x i8> %wide.load617, %wide.load619
  %i.bm = sub <16 x i8> %wide.load618, %wide.load620
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <16 x i8> %i.bl, ptr %i.bn, align 1, !tbaa !35
  store <16 x i8> %i.bm, ptr %i.bo, align 1, !tbaa !35
  %index.next621 = add nuw i64 %index616, 32      ; 2 uses
  %i.bp = icmp eq i64 %index.next621, %n.vec614
  br i1 %i.bp, label %middle.block622, label %vector.body615, !llvm.loop !1037

middle.block622:                                  ; preds = %vector.body615
  %cmp.n623 = icmp eq i64 %i.ba, %n.vec614
  br i1 %cmp.n623, label %.loopexit, label %vec.epilog.iter.check625

vec.epilog.iter.check625:                         ; preds = %middle.block622
  %min.epilog.iters.check627 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check627, label %.lr.ph193.preheader, label %vec.epilog.ph628, !prof !1076

vec.epilog.ph628:                                 ; preds = %vector.main.loop.iter.check611, %vec.epilog.iter.check625
  %vec.epilog.resume.val629 = phi i64 [ %n.vec614, %vec.epilog.iter.check625 ], [ 0, %vector.main.loop.iter.check611 ]
  %n.vec630 = and i64 %i.ba, -8                   ; 3 uses
  %i.bq = add i64 %4, %n.vec630
  br label %vec.epilog.vector.body631

vec.epilog.vector.body631:                        ; preds = %vec.epilog.vector.body631, %vec.epilog.ph628
  %index632 = phi i64 [ %vec.epilog.resume.val629, %vec.epilog.ph628 ], [ %index.next635, %vec.epilog.vector.body631 ] ; 3 uses
  %i.br = add nuw i64 %4, %index632               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %wide.load633 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %index632
  %wide.load634 = load <8 x i8>, ptr %i.bt, align 1, !tbaa !35
  %i.bu = sub <8 x i8> %wide.load633, %wide.load634
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  store <8 x i8> %i.bu, ptr %i.bv, align 1, !tbaa !35
  %index.next635 = add nuw i64 %index632, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next635, %n.vec630
  br i1 %i.bw, label %vec.epilog.middle.block636, label %vec.epilog.vector.body631, !llvm.loop !1038

vec.epilog.middle.block636:                       ; preds = %vec.epilog.vector.body631
  %cmp.n637 = icmp eq i64 %i.ba, %n.vec630
  br i1 %cmp.n637, label %.loopexit, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %iter.check624, %vector.memcheck607, %vec.epilog.iter.check625, %vec.epilog.middle.block636
  %.2192.ph = phi i64 [ %4, %iter.check624 ], [ %4, %vector.memcheck607 ], [ %i.bf, %vec.epilog.iter.check625 ], [ %i.bq, %vec.epilog.middle.block636 ] ; 7 uses
  %i.bx = sub i64 %3, %.2192.ph
  %.neg716 = add i64 %.2192.ph, 1
  %xtraiter707 = and i64 %i.bx, 1
  %lcmp.mod708.not = icmp eq i64 %xtraiter707, 0
  br i1 %lcmp.mod708.not, label %.lr.ph193.prol.loopexit, label %.lr.ph193.prol

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
  %i.cg = icmp eq i64 %3, %.neg716
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
  br i1 %.not141186, label %.loopexit, label %iter.check527

iter.check527:                                    ; preds = %.preheader150
  %min.iters.check509 = icmp ult i64 %3, 4
  br i1 %min.iters.check509, label %.lr.ph185.preheader, label %vector.memcheck510

vector.memcheck510:                               ; preds = %iter.check527
  %i.dn = sub i64 %i.a, %i.b
  %diff.check511 = icmp ugt i64 %i.dn, -32
  %i.do = sub i64 %i.c, %i.b
  %diff.check512 = icmp ugt i64 %i.do, -32
  %conflict.rdx513 = or i1 %diff.check511, %diff.check512
  br i1 %conflict.rdx513, label %.lr.ph185.preheader, label %vector.main.loop.iter.check514

vector.main.loop.iter.check514:                   ; preds = %vector.memcheck510
  %min.iters.check515 = icmp ult i64 %3, 32
  br i1 %min.iters.check515, label %vec.epilog.ph531, label %vector.ph516

vector.ph516:                                     ; preds = %vector.main.loop.iter.check514
  %i.dp = and i64 %3, 28
  %n.vec517 = and i64 %3, -32                     ; 4 uses
  br label %vector.body518

vector.body518:                                   ; preds = %vector.ph516, %vector.body518
  %index519 = phi i64 [ 0, %vector.ph516 ], [ %index.next524, %vector.body518 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %index519 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load520 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !35
  %wide.load521 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !35
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %index519 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load522 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !35
  %wide.load523 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !35
  %i.du = sub <16 x i8> %wide.load520, %wide.load522
  %i.dv = sub <16 x i8> %wide.load521, %wide.load523
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %index519 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <16 x i8> %i.du, ptr %i.dw, align 1, !tbaa !35
  store <16 x i8> %i.dv, ptr %i.dx, align 1, !tbaa !35
  %index.next524 = add nuw i64 %index519, 32      ; 2 uses
  %i.dy = icmp eq i64 %index.next524, %n.vec517
  br i1 %i.dy, label %middle.block525, label %vector.body518, !llvm.loop !1041

middle.block525:                                  ; preds = %vector.body518
  %cmp.n526 = icmp eq i64 %3, %n.vec517
  br i1 %cmp.n526, label %.loopexit, label %vec.epilog.iter.check528

vec.epilog.iter.check528:                         ; preds = %middle.block525
  %min.epilog.iters.check530 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check530, label %.lr.ph185.preheader, label %vec.epilog.ph531, !prof !90

vec.epilog.ph531:                                 ; preds = %vector.main.loop.iter.check514, %vec.epilog.iter.check528
  %vec.epilog.resume.val532 = phi i64 [ %n.vec517, %vec.epilog.iter.check528 ], [ 0, %vector.main.loop.iter.check514 ]
  %n.vec533 = and i64 %3, -4                      ; 3 uses
  br label %vec.epilog.vector.body534

vec.epilog.vector.body534:                        ; preds = %vec.epilog.vector.body534, %vec.epilog.ph531
  %index535 = phi i64 [ %vec.epilog.resume.val532, %vec.epilog.ph531 ], [ %index.next538, %vec.epilog.vector.body534 ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %index535
  %wide.load536 = load <4 x i8>, ptr %i.dz, align 1, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %index535
  %wide.load537 = load <4 x i8>, ptr %i.ea, align 1, !tbaa !35
  %i.eb = sub <4 x i8> %wide.load536, %wide.load537
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %index535
  store <4 x i8> %i.eb, ptr %i.ec, align 1, !tbaa !35
  %index.next538 = add nuw i64 %index535, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next538, %n.vec533
  br i1 %i.ed, label %vec.epilog.middle.block539, label %vec.epilog.vector.body534, !llvm.loop !1042

vec.epilog.middle.block539:                       ; preds = %vec.epilog.vector.body534
  %cmp.n540 = icmp eq i64 %3, %n.vec533
  br i1 %cmp.n540, label %.loopexit, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %iter.check527, %vector.memcheck510, %vec.epilog.iter.check528, %vec.epilog.middle.block539
  %.3184.ph = phi i64 [ 0, %iter.check527 ], [ 0, %vector.memcheck510 ], [ %n.vec517, %vec.epilog.iter.check528 ], [ %n.vec533, %vec.epilog.middle.block539 ] ; 3 uses
  %xtraiter698 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod699.not = icmp eq i64 %xtraiter698, 0
  br i1 %lcmp.mod699.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol

.lr.ph185.prol:                                   ; preds = %.lr.ph185.preheader, %.lr.ph185.prol
  %.3184.prol = phi i64 [ %i.ek, %.lr.ph185.prol ], [ %.3184.ph, %.lr.ph185.preheader ] ; 4 uses
  %prol.iter700 = phi i64 [ %prol.iter700.next, %.lr.ph185.prol ], [ 0, %.lr.ph185.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %.3184.prol
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !35
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %.3184.prol
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !35
  %i.ei = sub i8 %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %.3184.prol
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !35
  %i.ek = add nuw i64 %.3184.prol, 1              ; 2 uses
  %prol.iter700.next = add i64 %prol.iter700, 1   ; 2 uses
  %prol.iter700.cmp.not = icmp eq i64 %prol.iter700.next, %xtraiter698
  br i1 %prol.iter700.cmp.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol, !llvm.loop !1043

.lr.ph185.prol.loopexit:                          ; preds = %.lr.ph185.prol, %.lr.ph185.preheader
  %.3184.unr = phi i64 [ %.3184.ph, %.lr.ph185.preheader ], [ %i.ek, %.lr.ph185.prol ]
  %i.el = sub i64 %.3184.ph, %3
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %.loopexit, label %.lr.ph185

.preheader148:                                    ; preds = %bb.b
  br i1 %.not141186, label %.loopexit, label %iter.check558

iter.check558:                                    ; preds = %.preheader148
  %min.iters.check544 = icmp ult i64 %3, 4
  %i.en = sub i64 %i.a, %i.b
  %diff.check546 = icmp ugt i64 %i.en, -32
  %or.cond670 = or i1 %min.iters.check544, %diff.check546
  br i1 %or.cond670, label %.lr.ph188.preheader, label %vector.main.loop.iter.check547

vector.main.loop.iter.check547:                   ; preds = %iter.check558
  %min.iters.check548 = icmp ult i64 %3, 32
  br i1 %min.iters.check548, label %vec.epilog.ph562, label %vector.ph549

vector.ph549:                                     ; preds = %vector.main.loop.iter.check547
  %i.eo = and i64 %3, 28
  %n.vec550 = and i64 %3, -32                     ; 4 uses
  br label %vector.body551

vector.body551:                                   ; preds = %vector.ph549, %vector.body551
  %index552 = phi i64 [ 0, %vector.ph549 ], [ %index.next555, %vector.body551 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %index552 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load553 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !35
  %wide.load554 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !35
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %index552 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <16 x i8> %wide.load553, ptr %i.er, align 1, !tbaa !35
  store <16 x i8> %wide.load554, ptr %i.es, align 1, !tbaa !35
  %index.next555 = add nuw i64 %index552, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next555, %n.vec550
  br i1 %i.et, label %middle.block556, label %vector.body551, !llvm.loop !1044

middle.block556:                                  ; preds = %vector.body551
  %cmp.n557 = icmp eq i64 %3, %n.vec550
  br i1 %cmp.n557, label %.loopexit, label %vec.epilog.iter.check559

vec.epilog.iter.check559:                         ; preds = %middle.block556
  %min.epilog.iters.check561 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check561, label %.lr.ph188.preheader, label %vec.epilog.ph562, !prof !90

vec.epilog.ph562:                                 ; preds = %vector.main.loop.iter.check547, %vec.epilog.iter.check559
  %vec.epilog.resume.val563 = phi i64 [ %n.vec550, %vec.epilog.iter.check559 ], [ 0, %vector.main.loop.iter.check547 ]
  %n.vec564 = and i64 %3, -4                      ; 3 uses
  br label %vec.epilog.vector.body565

vec.epilog.vector.body565:                        ; preds = %vec.epilog.vector.body565, %vec.epilog.ph562
  %index566 = phi i64 [ %vec.epilog.resume.val563, %vec.epilog.ph562 ], [ %index.next568, %vec.epilog.vector.body565 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %index566
  %wide.load567 = load <4 x i8>, ptr %i.eu, align 1, !tbaa !35
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %index566
  store <4 x i8> %wide.load567, ptr %i.ev, align 1, !tbaa !35
  %index.next568 = add nuw i64 %index566, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next568, %n.vec564
  br i1 %i.ew, label %vec.epilog.middle.block569, label %vec.epilog.vector.body565, !llvm.loop !1045

vec.epilog.middle.block569:                       ; preds = %vec.epilog.vector.body565
  %cmp.n570 = icmp eq i64 %3, %n.vec564
  br i1 %cmp.n570, label %.loopexit, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %iter.check558, %vec.epilog.iter.check559, %vec.epilog.middle.block569
  %.4187.ph = phi i64 [ 0, %iter.check558 ], [ %n.vec550, %vec.epilog.iter.check559 ], [ %n.vec564, %vec.epilog.middle.block569 ] ; 3 uses
  %xtraiter701 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod702.not = icmp eq i64 %xtraiter701, 0
  br i1 %lcmp.mod702.not, label %.lr.ph188.prol.loopexit, label %.lr.ph188.prol

.lr.ph188.prol:                                   ; preds = %.lr.ph188.preheader, %.lr.ph188.prol
  %.4187.prol = phi i64 [ %i.fa, %.lr.ph188.prol ], [ %.4187.ph, %.lr.ph188.preheader ] ; 3 uses
  %prol.iter703 = phi i64 [ %prol.iter703.next, %.lr.ph188.prol ], [ 0, %.lr.ph188.preheader ]
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %.4187.prol
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %.4187.prol
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !35
  %i.fa = add nuw i64 %.4187.prol, 1              ; 2 uses
  %prol.iter703.next = add i64 %prol.iter703, 1   ; 2 uses
  %prol.iter703.cmp.not = icmp eq i64 %prol.iter703.next, %xtraiter701
  br i1 %prol.iter703.cmp.not, label %.lr.ph188.prol.loopexit, label %.lr.ph188.prol, !llvm.loop !1046

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
  br i1 %.not138178, label %.preheader155, label %iter.check382

iter.check382:                                    ; preds = %.preheader157
  %min.iters.check364 = icmp samesign ult i64 %4, 4
  br i1 %min.iters.check364, label %.lr.ph175.preheader, label %vector.memcheck365

vector.memcheck365:                               ; preds = %iter.check382
  %i.gv = sub i64 %i.a, %i.b
  %diff.check366 = icmp ugt i64 %i.gv, -32
  %i.gw = sub i64 %i.c, %i.b
  %diff.check367 = icmp ugt i64 %i.gw, -32
  %conflict.rdx368 = or i1 %diff.check366, %diff.check367
  br i1 %conflict.rdx368, label %.lr.ph175.preheader, label %vector.main.loop.iter.check369

vector.main.loop.iter.check369:                   ; preds = %vector.memcheck365
  %min.iters.check370 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check370, label %vec.epilog.ph386, label %vector.ph371

vector.ph371:                                     ; preds = %vector.main.loop.iter.check369
  %i.gx = and i64 %4, 28
  %n.vec372 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body373

vector.body373:                                   ; preds = %vector.ph371, %vector.body373
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body373 ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %index374 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load375 = load <16 x i8>, ptr %i.gy, align 1, !tbaa !35
  %wide.load376 = load <16 x i8>, ptr %i.gz, align 1, !tbaa !35
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 %index374 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load377 = load <16 x i8>, ptr %i.ha, align 1, !tbaa !35
  %wide.load378 = load <16 x i8>, ptr %i.hb, align 1, !tbaa !35
  %i.hc = lshr <16 x i8> %wide.load377, splat (i8 1)
  %i.hd = lshr <16 x i8> %wide.load378, splat (i8 1)
  %i.he = sub <16 x i8> %wide.load375, %i.hc
  %i.hf = sub <16 x i8> %wide.load376, %i.hd
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 %index374 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <16 x i8> %i.he, ptr %i.hg, align 1, !tbaa !35
  store <16 x i8> %i.hf, ptr %i.hh, align 1, !tbaa !35
  %index.next379 = add nuw i64 %index374, 32      ; 2 uses
  %i.hi = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.hi, label %middle.block380, label %vector.body373, !llvm.loop !1049

middle.block380:                                  ; preds = %vector.body373
  %cmp.n381 = icmp eq i64 %4, %n.vec372
  br i1 %cmp.n381, label %.preheader155, label %vec.epilog.iter.check383

vec.epilog.iter.check383:                         ; preds = %middle.block380
  %min.epilog.iters.check385 = icmp eq i64 %i.gx, 0
  br i1 %min.epilog.iters.check385, label %.lr.ph175.preheader, label %vec.epilog.ph386, !prof !90

vec.epilog.ph386:                                 ; preds = %vector.main.loop.iter.check369, %vec.epilog.iter.check383
  %vec.epilog.resume.val387 = phi i64 [ %n.vec372, %vec.epilog.iter.check383 ], [ 0, %vector.main.loop.iter.check369 ]
  %n.vec388 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body389

vec.epilog.vector.body389:                        ; preds = %vec.epilog.vector.body389, %vec.epilog.ph386
  %index390 = phi i64 [ %vec.epilog.resume.val387, %vec.epilog.ph386 ], [ %index.next393, %vec.epilog.vector.body389 ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 %index390
  %wide.load391 = load <4 x i8>, ptr %i.hj, align 1, !tbaa !35
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 %index390
  %wide.load392 = load <4 x i8>, ptr %i.hk, align 1, !tbaa !35
  %i.hl = lshr <4 x i8> %wide.load392, splat (i8 1)
  %i.hm = sub <4 x i8> %wide.load391, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 %index390
  store <4 x i8> %i.hm, ptr %i.hn, align 1, !tbaa !35
  %index.next393 = add nuw i64 %index390, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next393, %n.vec388
  br i1 %i.ho, label %vec.epilog.middle.block394, label %vec.epilog.vector.body389, !llvm.loop !1050

vec.epilog.middle.block394:                       ; preds = %vec.epilog.vector.body389
  %cmp.n395 = icmp eq i64 %4, %n.vec388
  br i1 %cmp.n395, label %.preheader155, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %iter.check382, %vector.memcheck365, %vec.epilog.iter.check383, %vec.epilog.middle.block394
  %.5174.ph = phi i64 [ 0, %iter.check382 ], [ 0, %vector.memcheck365 ], [ %n.vec372, %vec.epilog.iter.check383 ], [ %n.vec388, %vec.epilog.middle.block394 ] ; 6 uses
  %.neg713 = or disjoint i64 %.5174.ph, 1
  %xtraiter686 = and i64 %4, 1
  %lcmp.mod687.not = icmp eq i64 %xtraiter686, 0
  br i1 %lcmp.mod687.not, label %.lr.ph175.prol.loopexit, label %.lr.ph175.prol

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
  %i.hx = icmp eq i64 %4, %.neg713
  br i1 %i.hx, label %.preheader155, label %.lr.ph175

.preheader154:                                    ; preds = %bb.c
  br i1 %.not138178, label %.preheader152, label %iter.check454

iter.check454:                                    ; preds = %.preheader154
  %min.iters.check440 = icmp samesign ult i64 %4, 4
  %i.hy = sub i64 %i.a, %i.b
  %diff.check442 = icmp ugt i64 %i.hy, -32
  %or.cond671 = or i1 %min.iters.check440, %diff.check442
  br i1 %or.cond671, label %.lr.ph180.preheader, label %vector.main.loop.iter.check443

vector.main.loop.iter.check443:                   ; preds = %iter.check454
  %min.iters.check444 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check444, label %vec.epilog.ph458, label %vector.ph445

vector.ph445:                                     ; preds = %vector.main.loop.iter.check443
  %i.hz = and i64 %4, 28
  %n.vec446 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body447

vector.body447:                                   ; preds = %vector.ph445, %vector.body447
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next451, %vector.body447 ] ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %index448 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %wide.load449 = load <16 x i8>, ptr %i.ia, align 1, !tbaa !35
  %wide.load450 = load <16 x i8>, ptr %i.ib, align 1, !tbaa !35
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 %index448 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <16 x i8> %wide.load449, ptr %i.ic, align 1, !tbaa !35
  store <16 x i8> %wide.load450, ptr %i.id, align 1, !tbaa !35
  %index.next451 = add nuw i64 %index448, 32      ; 2 uses
  %i.ie = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.ie, label %middle.block452, label %vector.body447, !llvm.loop !1051

middle.block452:                                  ; preds = %vector.body447
  %cmp.n453 = icmp eq i64 %4, %n.vec446
  br i1 %cmp.n453, label %.preheader152, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block452
  %min.epilog.iters.check457 = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check457, label %.lr.ph180.preheader, label %vec.epilog.ph458, !prof !90

vec.epilog.ph458:                                 ; preds = %vector.main.loop.iter.check443, %vec.epilog.iter.check455
  %vec.epilog.resume.val459 = phi i64 [ %n.vec446, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check443 ]
  %n.vec460 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body461

vec.epilog.vector.body461:                        ; preds = %vec.epilog.vector.body461, %vec.epilog.ph458
  %index462 = phi i64 [ %vec.epilog.resume.val459, %vec.epilog.ph458 ], [ %index.next464, %vec.epilog.vector.body461 ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 %index462
  %wide.load463 = load <4 x i8>, ptr %i.if, align 1, !tbaa !35
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 %index462
  store <4 x i8> %wide.load463, ptr %i.ig, align 1, !tbaa !35
  %index.next464 = add nuw i64 %index462, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next464, %n.vec460
  br i1 %i.ih, label %vec.epilog.middle.block465, label %vec.epilog.vector.body461, !llvm.loop !1052

vec.epilog.middle.block465:                       ; preds = %vec.epilog.vector.body461
  %cmp.n466 = icmp eq i64 %4, %n.vec460
  br i1 %cmp.n466, label %.preheader152, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %iter.check454, %vec.epilog.iter.check455, %vec.epilog.middle.block465
  %.7179.ph = phi i64 [ 0, %iter.check454 ], [ %n.vec446, %vec.epilog.iter.check455 ], [ %n.vec460, %vec.epilog.middle.block465 ] ; 3 uses
  %xtraiter692 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod693.not = icmp eq i64 %xtraiter692, 0
  br i1 %lcmp.mod693.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol

.lr.ph180.prol:                                   ; preds = %.lr.ph180.preheader, %.lr.ph180.prol
  %.7179.prol = phi i64 [ %i.il, %.lr.ph180.prol ], [ %.7179.ph, %.lr.ph180.preheader ] ; 3 uses
  %prol.iter694 = phi i64 [ %prol.iter694.next, %.lr.ph180.prol ], [ 0, %.lr.ph180.preheader ]
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 %.7179.prol
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !35
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 %.7179.prol
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !35
  %i.il = add nuw nsw i64 %.7179.prol, 1          ; 2 uses
  %prol.iter694.next = add i64 %prol.iter694, 1   ; 2 uses
  %prol.iter694.cmp.not = icmp eq i64 %prol.iter694.next, %xtraiter692
  br i1 %prol.iter694.cmp.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol, !llvm.loop !1053

.lr.ph180.prol.loopexit:                          ; preds = %.lr.ph180.prol, %.lr.ph180.preheader
  %.7179.unr = phi i64 [ %.7179.ph, %.lr.ph180.preheader ], [ %i.il, %.lr.ph180.prol ]
  %i.im = sub nsw i64 %.7179.ph, %4
  %i.in = icmp ugt i64 %i.im, -4
  br i1 %i.in, label %.preheader152, label %.lr.ph180

.preheader155:                                    ; preds = %.lr.ph175.prol.loopexit, %.lr.ph175, %middle.block380, %vec.epilog.middle.block394, %.preheader157
  %i.io = icmp ult i64 %4, %3
  br i1 %i.io, label %iter.check422, label %.loopexit

iter.check422:                                    ; preds = %.preheader155
  %i.ip = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check403 = icmp ult i64 %i.ip, 4
  br i1 %min.iters.check403, label %.lr.ph177.preheader, label %vector.memcheck404

vector.memcheck404:                               ; preds = %iter.check422
  %i.iq = add i64 %4, %i.b
  %i.ir = sub i64 %i.a, %i.iq
  %diff.check405 = icmp ugt i64 %i.ir, -16
  %i.is = sub i64 %i.a, %i.b
  %diff.check406 = icmp ugt i64 %i.is, -16
  %conflict.rdx407 = or i1 %diff.check405, %diff.check406
  %i.it = sub i64 %i.c, %i.b
  %diff.check408 = icmp ugt i64 %i.it, -16
  %conflict.rdx409 = or i1 %conflict.rdx407, %diff.check408
  br i1 %conflict.rdx409, label %.lr.ph177.preheader, label %vector.main.loop.iter.check410

vector.main.loop.iter.check410:                   ; preds = %vector.memcheck404
  %min.iters.check411 = icmp ult i64 %i.ip, 16
  br i1 %min.iters.check411, label %vec.epilog.ph426, label %vector.ph412

vector.ph412:                                     ; preds = %vector.main.loop.iter.check410
  %i.iu = and i64 %i.ip, 12
  %n.vec413 = and i64 %i.ip, -16                  ; 4 uses
  %i.iv = add i64 %4, %n.vec413
  br label %vector.body414

vector.body414:                                   ; preds = %vector.ph412, %vector.body414
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next419, %vector.body414 ] ; 3 uses
  %i.iw = add nuw i64 %4, %index415               ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 %i.iw
  %wide.load416 = load <16 x i8>, ptr %i.ix, align 1, !tbaa !35
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 %index415
  %wide.load417 = load <16 x i8>, ptr %i.iy, align 1, !tbaa !35
  %i.iz = zext <16 x i8> %wide.load417 to <16 x i16>
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 %i.iw
  %wide.load418 = load <16 x i8>, ptr %i.ja, align 1, !tbaa !35
  %i.jb = zext <16 x i8> %wide.load418 to <16 x i16>
  %i.jc = add nuw nsw <16 x i16> %i.jb, %i.iz
  %i.jd = lshr <16 x i16> %i.jc, splat (i16 1)
  %i.je = trunc nuw <16 x i16> %i.jd to <16 x i8>
  %i.jf = sub <16 x i8> %wide.load416, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 %i.iw
  store <16 x i8> %i.jf, ptr %i.jg, align 1, !tbaa !35
  %index.next419 = add nuw i64 %index415, 16      ; 2 uses
  %i.jh = icmp eq i64 %index.next419, %n.vec413
  br i1 %i.jh, label %middle.block420, label %vector.body414, !llvm.loop !1054

middle.block420:                                  ; preds = %vector.body414
  %cmp.n421 = icmp eq i64 %i.ip, %n.vec413
  br i1 %cmp.n421, label %.loopexit, label %vec.epilog.iter.check423

vec.epilog.iter.check423:                         ; preds = %middle.block420
  %min.epilog.iters.check425 = icmp eq i64 %i.iu, 0
  br i1 %min.epilog.iters.check425, label %.lr.ph177.preheader, label %vec.epilog.ph426, !prof !83

vec.epilog.ph426:                                 ; preds = %vector.main.loop.iter.check410, %vec.epilog.iter.check423
  %vec.epilog.resume.val427 = phi i64 [ %n.vec413, %vec.epilog.iter.check423 ], [ 0, %vector.main.loop.iter.check410 ]
  %n.vec428 = and i64 %i.ip, -4                   ; 3 uses
  %i.ji = add i64 %4, %n.vec428
  br label %vec.epilog.vector.body429

vec.epilog.vector.body429:                        ; preds = %vec.epilog.vector.body429, %vec.epilog.ph426
  %index430 = phi i64 [ %vec.epilog.resume.val427, %vec.epilog.ph426 ], [ %index.next434, %vec.epilog.vector.body429 ] ; 3 uses
  %i.jj = add nuw i64 %4, %index430               ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 %i.jj
  %wide.load431 = load <4 x i8>, ptr %i.jk, align 1, !tbaa !35
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 %index430
  %wide.load432 = load <4 x i8>, ptr %i.jl, align 1, !tbaa !35
  %i.jm = zext <4 x i8> %wide.load432 to <4 x i16>
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 %i.jj
  %wide.load433 = load <4 x i8>, ptr %i.jn, align 1, !tbaa !35
  %i.jo = zext <4 x i8> %wide.load433 to <4 x i16>
  %i.jp = add nuw nsw <4 x i16> %i.jo, %i.jm
  %i.jq = lshr <4 x i16> %i.jp, splat (i16 1)
  %i.jr = trunc nuw <4 x i16> %i.jq to <4 x i8>
  %i.js = sub <4 x i8> %wide.load431, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 %i.jj
  store <4 x i8> %i.js, ptr %i.jt, align 1, !tbaa !35
  %index.next434 = add nuw i64 %index430, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next434, %n.vec428
  br i1 %i.ju, label %vec.epilog.middle.block435, label %vec.epilog.vector.body429, !llvm.loop !1055

vec.epilog.middle.block435:                       ; preds = %vec.epilog.vector.body429
  %cmp.n436 = icmp eq i64 %i.ip, %n.vec428
  br i1 %cmp.n436, label %.loopexit, label %.lr.ph177.preheader

.lr.ph177.preheader:                              ; preds = %iter.check422, %vector.memcheck404, %vec.epilog.iter.check423, %vec.epilog.middle.block435
  %.6176.ph = phi i64 [ %4, %iter.check422 ], [ %4, %vector.memcheck404 ], [ %i.iv, %vec.epilog.iter.check423 ], [ %i.ji, %vec.epilog.middle.block435 ] ; 8 uses
  %i.jv = sub i64 %3, %.6176.ph
  %.neg714 = add i64 %.6176.ph, 1
  %xtraiter689 = and i64 %i.jv, 1
  %lcmp.mod690.not = icmp eq i64 %xtraiter689, 0
  br i1 %lcmp.mod690.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol

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
  %i.kl = icmp eq i64 %3, %.neg714
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

.preheader152:                                    ; preds = %.lr.ph180.prol.loopexit, %.lr.ph180, %middle.block452, %vec.epilog.middle.block465, %.preheader154
  %i.mg = icmp ult i64 %4, %3
  br i1 %i.mg, label %iter.check490, label %.loopexit

iter.check490:                                    ; preds = %.preheader152
  %i.mh = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check472 = icmp ult i64 %i.mh, 8
  br i1 %min.iters.check472, label %.lr.ph182.preheader, label %vector.memcheck473

vector.memcheck473:                               ; preds = %iter.check490
  %i.mi = add i64 %4, %i.b
  %i.mj = sub i64 %i.a, %i.mi
  %diff.check474 = icmp ugt i64 %i.mj, -32
  %i.mk = sub i64 %i.a, %i.b
  %diff.check475 = icmp ugt i64 %i.mk, -32
  %conflict.rdx476 = or i1 %diff.check474, %diff.check475
  br i1 %conflict.rdx476, label %.lr.ph182.preheader, label %vector.main.loop.iter.check477

vector.main.loop.iter.check477:                   ; preds = %vector.memcheck473
  %min.iters.check478 = icmp ult i64 %i.mh, 32
  br i1 %min.iters.check478, label %vec.epilog.ph494, label %vector.ph479

vector.ph479:                                     ; preds = %vector.main.loop.iter.check477
  %i.ml = and i64 %i.mh, 24
  %n.vec480 = and i64 %i.mh, -32                  ; 4 uses
  %i.mm = add i64 %4, %n.vec480
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph479, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph479 ], [ %index.next487, %vector.body481 ] ; 3 uses
  %i.mn = add nuw i64 %4, %index482               ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 %i.mn ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %wide.load483 = load <16 x i8>, ptr %i.mo, align 1, !tbaa !35
  %wide.load484 = load <16 x i8>, ptr %i.mp, align 1, !tbaa !35
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 %index482 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %wide.load485 = load <16 x i8>, ptr %i.mq, align 1, !tbaa !35
  %wide.load486 = load <16 x i8>, ptr %i.mr, align 1, !tbaa !35
  %i.ms = lshr <16 x i8> %wide.load485, splat (i8 1)
  %i.mt = lshr <16 x i8> %wide.load486, splat (i8 1)
  %i.mu = sub <16 x i8> %wide.load483, %i.ms
  %i.mv = sub <16 x i8> %wide.load484, %i.mt
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 %i.mn ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store <16 x i8> %i.mu, ptr %i.mw, align 1, !tbaa !35
  store <16 x i8> %i.mv, ptr %i.mx, align 1, !tbaa !35
  %index.next487 = add nuw i64 %index482, 32      ; 2 uses
  %i.my = icmp eq i64 %index.next487, %n.vec480
  br i1 %i.my, label %middle.block488, label %vector.body481, !llvm.loop !1058

middle.block488:                                  ; preds = %vector.body481
  %cmp.n489 = icmp eq i64 %i.mh, %n.vec480
  br i1 %cmp.n489, label %.loopexit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block488
  %min.epilog.iters.check493 = icmp eq i64 %i.ml, 0
  br i1 %min.epilog.iters.check493, label %.lr.ph182.preheader, label %vec.epilog.ph494, !prof !1076

vec.epilog.ph494:                                 ; preds = %vector.main.loop.iter.check477, %vec.epilog.iter.check491
  %vec.epilog.resume.val495 = phi i64 [ %n.vec480, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check477 ]
  %n.vec496 = and i64 %i.mh, -8                   ; 3 uses
  %i.mz = add i64 %4, %n.vec496
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph494
  %index498 = phi i64 [ %vec.epilog.resume.val495, %vec.epilog.ph494 ], [ %index.next501, %vec.epilog.vector.body497 ] ; 3 uses
  %i.na = add nuw i64 %4, %index498               ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 %i.na
  %wide.load499 = load <8 x i8>, ptr %i.nb, align 1, !tbaa !35
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 %index498
  %wide.load500 = load <8 x i8>, ptr %i.nc, align 1, !tbaa !35
  %i.nd = lshr <8 x i8> %wide.load500, splat (i8 1)
  %i.ne = sub <8 x i8> %wide.load499, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 %i.na
  store <8 x i8> %i.ne, ptr %i.nf, align 1, !tbaa !35
  %index.next501 = add nuw i64 %index498, 8       ; 2 uses
  %i.ng = icmp eq i64 %index.next501, %n.vec496
  br i1 %i.ng, label %vec.epilog.middle.block502, label %vec.epilog.vector.body497, !llvm.loop !1059

vec.epilog.middle.block502:                       ; preds = %vec.epilog.vector.body497
  %cmp.n503 = icmp eq i64 %i.mh, %n.vec496
  br i1 %cmp.n503, label %.loopexit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %iter.check490, %vector.memcheck473, %vec.epilog.iter.check491, %vec.epilog.middle.block502
  %.8181.ph = phi i64 [ %4, %iter.check490 ], [ %4, %vector.memcheck473 ], [ %i.mm, %vec.epilog.iter.check491 ], [ %i.mz, %vec.epilog.middle.block502 ] ; 7 uses
  %i.nh = sub i64 %3, %.8181.ph
  %.neg715 = add i64 %.8181.ph, 1
  %xtraiter695 = and i64 %i.nh, 1
  %lcmp.mod696.not = icmp eq i64 %xtraiter695, 0
  br i1 %lcmp.mod696.not, label %.lr.ph182.prol.loopexit, label %.lr.ph182.prol

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
  %i.nr = icmp eq i64 %3, %.neg715
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
  %i.pa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.pa, -32
  %i.pb = sub i64 %i.c, %i.b
  %diff.check235 = icmp ugt i64 %i.pb, -32
  %conflict.rdx = or i1 %diff.check, %diff.check235
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check236 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check236, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pc = and i64 %4, 28
  %n.vec = and i64 %4, 536870880                  ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %wide.load = load <16 x i8>, ptr %i.pd, align 1, !tbaa !35
  %wide.load237 = load <16 x i8>, ptr %i.pe, align 1, !tbaa !35
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %wide.load238 = load <16 x i8>, ptr %i.pf, align 1, !tbaa !35
  %wide.load239 = load <16 x i8>, ptr %i.pg, align 1, !tbaa !35
  %i.ph = sub <16 x i8> %wide.load, %wide.load238
  %i.pi = sub <16 x i8> %wide.load237, %wide.load239
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
  %n.vec240 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index241 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next244, %vec.epilog.vector.body ] ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 %index241
  %wide.load242 = load <4 x i8>, ptr %i.pm, align 1, !tbaa !35
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 %index241
  %wide.load243 = load <4 x i8>, ptr %i.pn, align 1, !tbaa !35
  %i.po = sub <4 x i8> %wide.load242, %wide.load243
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 %index241
  store <4 x i8> %i.po, ptr %i.pp, align 1, !tbaa !35
  %index.next244 = add nuw i64 %index241, 4       ; 2 uses
  %i.pq = icmp eq i64 %index.next244, %n.vec240
  br i1 %i.pq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1063

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n245 = icmp eq i64 %4, %n.vec240
  br i1 %cmp.n245, label %.preheader161, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.9165.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec240, %vec.epilog.middle.block ] ; 3 uses
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
  br i1 %.not135168, label %.preheader158, label %iter.check309

iter.check309:                                    ; preds = %.preheader160
  %min.iters.check295 = icmp samesign ult i64 %4, 4
  %i.qa = sub i64 %i.a, %i.b
  %diff.check297 = icmp ugt i64 %i.qa, -32
  %or.cond672 = or i1 %min.iters.check295, %diff.check297
  br i1 %or.cond672, label %.lr.ph170.preheader, label %vector.main.loop.iter.check298

vector.main.loop.iter.check298:                   ; preds = %iter.check309
  %min.iters.check299 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check299, label %vec.epilog.ph313, label %vector.ph300

vector.ph300:                                     ; preds = %vector.main.loop.iter.check298
  %i.qb = and i64 %4, 28
  %n.vec301 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body302

vector.body302:                                   ; preds = %vector.ph300, %vector.body302
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next306, %vector.body302 ] ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 %index303 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %wide.load304 = load <16 x i8>, ptr %i.qc, align 1, !tbaa !35
  %wide.load305 = load <16 x i8>, ptr %i.qd, align 1, !tbaa !35
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 %index303 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  store <16 x i8> %wide.load304, ptr %i.qe, align 1, !tbaa !35
  store <16 x i8> %wide.load305, ptr %i.qf, align 1, !tbaa !35
  %index.next306 = add nuw i64 %index303, 32      ; 2 uses
  %i.qg = icmp eq i64 %index.next306, %n.vec301
  br i1 %i.qg, label %middle.block307, label %vector.body302, !llvm.loop !1065

middle.block307:                                  ; preds = %vector.body302
  %cmp.n308 = icmp eq i64 %4, %n.vec301
  br i1 %cmp.n308, label %.preheader158, label %vec.epilog.iter.check310

vec.epilog.iter.check310:                         ; preds = %middle.block307
  %min.epilog.iters.check312 = icmp eq i64 %i.qb, 0
  br i1 %min.epilog.iters.check312, label %.lr.ph170.preheader, label %vec.epilog.ph313, !prof !90

vec.epilog.ph313:                                 ; preds = %vector.main.loop.iter.check298, %vec.epilog.iter.check310
  %vec.epilog.resume.val314 = phi i64 [ %n.vec301, %vec.epilog.iter.check310 ], [ 0, %vector.main.loop.iter.check298 ]
  %n.vec315 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body316

vec.epilog.vector.body316:                        ; preds = %vec.epilog.vector.body316, %vec.epilog.ph313
  %index317 = phi i64 [ %vec.epilog.resume.val314, %vec.epilog.ph313 ], [ %index.next319, %vec.epilog.vector.body316 ] ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 %index317
  %wide.load318 = load <4 x i8>, ptr %i.qh, align 1, !tbaa !35
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 %index317
  store <4 x i8> %wide.load318, ptr %i.qi, align 1, !tbaa !35
  %index.next319 = add nuw i64 %index317, 4       ; 2 uses
  %i.qj = icmp eq i64 %index.next319, %n.vec315
  br i1 %i.qj, label %vec.epilog.middle.block320, label %vec.epilog.vector.body316, !llvm.loop !1066

vec.epilog.middle.block320:                       ; preds = %vec.epilog.vector.body316
  %cmp.n321 = icmp eq i64 %4, %n.vec315
  br i1 %cmp.n321, label %.preheader158, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %iter.check309, %vec.epilog.iter.check310, %vec.epilog.middle.block320
  %.11169.ph = phi i64 [ 0, %iter.check309 ], [ %n.vec301, %vec.epilog.iter.check310 ], [ %n.vec315, %vec.epilog.middle.block320 ] ; 3 uses
  %xtraiter680 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod681.not = icmp eq i64 %xtraiter680, 0
  br i1 %lcmp.mod681.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol

.lr.ph170.prol:                                   ; preds = %.lr.ph170.preheader, %.lr.ph170.prol
  %.11169.prol = phi i64 [ %i.qn, %.lr.ph170.prol ], [ %.11169.ph, %.lr.ph170.preheader ] ; 3 uses
  %prol.iter682 = phi i64 [ %prol.iter682.next, %.lr.ph170.prol ], [ 0, %.lr.ph170.preheader ]
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 %.11169.prol
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !35
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 %.11169.prol
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !35
  %i.qn = add nuw nsw i64 %.11169.prol, 1         ; 2 uses
  %prol.iter682.next = add i64 %prol.iter682, 1   ; 2 uses
  %prol.iter682.cmp.not = icmp eq i64 %prol.iter682.next, %xtraiter680
  br i1 %prol.iter682.cmp.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol, !llvm.loop !1067

.lr.ph170.prol.loopexit:                          ; preds = %.lr.ph170.prol, %.lr.ph170.preheader
  %.11169.unr = phi i64 [ %.11169.ph, %.lr.ph170.preheader ], [ %i.qn, %.lr.ph170.prol ]
  %i.qo = sub nsw i64 %.11169.ph, %4
  %i.qp = icmp ugt i64 %i.qo, -4
  br i1 %i.qp, label %.preheader158, label %.lr.ph170

.preheader161:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader163
  %i.qq = icmp ult i64 %4, %3
  br i1 %i.qq, label %iter.check276, label %.loopexit

iter.check276:                                    ; preds = %.preheader161
  %i.qr = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check254 = icmp ult i64 %i.qr, 4
  br i1 %min.iters.check254, label %.lr.ph167.preheader, label %vector.memcheck255

vector.memcheck255:                               ; preds = %iter.check276
  %i.qs = add i64 %4, %i.b                        ; 2 uses
  %i.qt = sub i64 %i.a, %i.qs
  %diff.check256 = icmp ugt i64 %i.qt, -16
  %i.qu = sub i64 %i.a, %i.b
  %diff.check257 = icmp ugt i64 %i.qu, -16
  %conflict.rdx258 = or i1 %diff.check256, %diff.check257
  %i.qv = sub i64 %i.c, %i.qs
  %diff.check259 = icmp ugt i64 %i.qv, -16
  %conflict.rdx260 = or i1 %conflict.rdx258, %diff.check259
  %i.qw = sub i64 %i.c, %i.b
  %diff.check261 = icmp ugt i64 %i.qw, -16
  %conflict.rdx262 = or i1 %conflict.rdx260, %diff.check261
  br i1 %conflict.rdx262, label %.lr.ph167.preheader, label %vector.main.loop.iter.check263

vector.main.loop.iter.check263:                   ; preds = %vector.memcheck255
  %min.iters.check264 = icmp ult i64 %i.qr, 16
  br i1 %min.iters.check264, label %vec.epilog.ph280, label %vector.ph265

vector.ph265:                                     ; preds = %vector.main.loop.iter.check263
  %i.qx = and i64 %i.qr, 12
  %n.vec266 = and i64 %i.qr, -16                  ; 4 uses
  %i.qy = add i64 %4, %n.vec266
  br label %vector.body267

vector.body267:                                   ; preds = %vector.ph265, %vector.body267
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next273, %vector.body267 ] ; 4 uses
  %i.qz = add nuw i64 %4, %index268               ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 %i.qz
  %wide.load269 = load <16 x i8>, ptr %i.ra, align 1, !tbaa !35
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 %index268
  %wide.load270 = load <16 x i8>, ptr %i.rb, align 1, !tbaa !35 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 %i.qz
  %wide.load271 = load <16 x i8>, ptr %i.rc, align 1, !tbaa !35 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 %index268
  %wide.load272 = load <16 x i8>, ptr %i.rd, align 1, !tbaa !35 ; 2 uses
  %i.re = zext <16 x i8> %wide.load271 to <16 x i32> ; 2 uses
  %i.rf = zext <16 x i8> %wide.load272 to <16 x i32> ; 3 uses
  %i.rg = sub nsw <16 x i32> %i.re, %i.rf
  %i.rh = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rg, i1 true) ; 2 uses
  %i.ri = zext <16 x i8> %wide.load270 to <16 x i32> ; 2 uses
  %i.rj = sub nsw <16 x i32> %i.ri, %i.rf
  %i.rk = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rj, i1 true) ; 2 uses
  %i.rl = add nuw nsw <16 x i32> %i.re, %i.ri
  %i.rm = shl nuw nsw <16 x i32> %i.rf, splat (i32 1)
  %i.rn = sub nsw <16 x i32> %i.rl, %i.rm
  %i.ro = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rn, i1 true)
  %i.rp = icmp samesign ult <16 x i32> %i.rk, %i.rh
  %i.rq = select <16 x i1> %i.rp, <16 x i8> %wide.load271, <16 x i8> %wide.load270
  %i.rr = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.rk, <16 x i32> %i.rh)
  %i.rs = icmp samesign ult <16 x i32> %i.ro, %i.rr
  %i.rt = select <16 x i1> %i.rs, <16 x i8> %wide.load272, <16 x i8> %i.rq
  %i.ru = sub <16 x i8> %wide.load269, %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 %i.qz
  store <16 x i8> %i.ru, ptr %i.rv, align 1, !tbaa !35
  %index.next273 = add nuw i64 %index268, 16      ; 2 uses
  %i.rw = icmp eq i64 %index.next273, %n.vec266
  br i1 %i.rw, label %middle.block274, label %vector.body267, !llvm.loop !1068

middle.block274:                                  ; preds = %vector.body267
  %cmp.n275 = icmp eq i64 %i.qr, %n.vec266
  br i1 %cmp.n275, label %.loopexit, label %vec.epilog.iter.check277

vec.epilog.iter.check277:                         ; preds = %middle.block274
  %min.epilog.iters.check279 = icmp eq i64 %i.qx, 0
  br i1 %min.epilog.iters.check279, label %.lr.ph167.preheader, label %vec.epilog.ph280, !prof !83

vec.epilog.ph280:                                 ; preds = %vector.main.loop.iter.check263, %vec.epilog.iter.check277
  %vec.epilog.resume.val281 = phi i64 [ %n.vec266, %vec.epilog.iter.check277 ], [ 0, %vector.main.loop.iter.check263 ]
  %n.vec282 = and i64 %i.qr, -4                   ; 3 uses
  %i.rx = add i64 %4, %n.vec282
  br label %vec.epilog.vector.body283

vec.epilog.vector.body283:                        ; preds = %vec.epilog.vector.body283, %vec.epilog.ph280
  %index284 = phi i64 [ %vec.epilog.resume.val281, %vec.epilog.ph280 ], [ %index.next289, %vec.epilog.vector.body283 ] ; 4 uses
  %i.ry = add nuw i64 %4, %index284               ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ry
  %wide.load285 = load <4 x i8>, ptr %i.rz, align 1, !tbaa !35
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 %index284
  %wide.load286 = load <4 x i8>, ptr %i.sa, align 1, !tbaa !35 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ry
  %wide.load287 = load <4 x i8>, ptr %i.sb, align 1, !tbaa !35 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 %index284
  %wide.load288 = load <4 x i8>, ptr %i.sc, align 1, !tbaa !35 ; 2 uses
  %i.sd = zext <4 x i8> %wide.load287 to <4 x i32> ; 2 uses
  %i.se = zext <4 x i8> %wide.load288 to <4 x i32> ; 3 uses
  %i.sf = sub nsw <4 x i32> %i.sd, %i.se
  %i.sg = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sf, i1 true) ; 2 uses
  %i.sh = zext <4 x i8> %wide.load286 to <4 x i32> ; 2 uses
  %i.si = sub nsw <4 x i32> %i.sh, %i.se
  %i.sj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.si, i1 true) ; 2 uses
  %i.sk = add nuw nsw <4 x i32> %i.sd, %i.sh
  %i.sl = shl nuw nsw <4 x i32> %i.se, splat (i32 1)
  %i.sm = sub nsw <4 x i32> %i.sk, %i.sl
  %i.sn = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sm, i1 true)
  %i.so = icmp samesign ult <4 x i32> %i.sj, %i.sg
  %i.sp = select <4 x i1> %i.so, <4 x i8> %wide.load287, <4 x i8> %wide.load286
  %i.sq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.sj, <4 x i32> %i.sg)
  %i.sr = icmp samesign ult <4 x i32> %i.sn, %i.sq
  %i.ss = select <4 x i1> %i.sr, <4 x i8> %wide.load288, <4 x i8> %i.sp
  %i.st = sub <4 x i8> %wide.load285, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 %i.ry
  store <4 x i8> %i.st, ptr %i.su, align 1, !tbaa !35
  %index.next289 = add nuw i64 %index284, 4       ; 2 uses
  %i.sv = icmp eq i64 %index.next289, %n.vec282
  br i1 %i.sv, label %vec.epilog.middle.block290, label %vec.epilog.vector.body283, !llvm.loop !1069

vec.epilog.middle.block290:                       ; preds = %vec.epilog.vector.body283
  %cmp.n291 = icmp eq i64 %i.qr, %n.vec282
  br i1 %cmp.n291, label %.loopexit, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %iter.check276, %vector.memcheck255, %vec.epilog.iter.check277, %vec.epilog.middle.block290
  %.10166.ph = phi i64 [ %4, %iter.check276 ], [ %4, %vector.memcheck255 ], [ %i.qy, %vec.epilog.iter.check277 ], [ %i.rx, %vec.epilog.middle.block290 ]
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

.preheader158:                                    ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170, %middle.block307, %vec.epilog.middle.block320, %.preheader160
  %i.uy = icmp ult i64 %4, %3
  br i1 %i.uy, label %iter.check345, label %.loopexit

iter.check345:                                    ; preds = %.preheader158
  %i.uz = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check327 = icmp ult i64 %i.uz, 8
  br i1 %min.iters.check327, label %.lr.ph172.preheader, label %vector.memcheck328

vector.memcheck328:                               ; preds = %iter.check345
  %i.va = add i64 %4, %i.b
  %i.vb = sub i64 %i.a, %i.va
  %diff.check329 = icmp ugt i64 %i.vb, -32
  %i.vc = sub i64 %i.a, %i.b
  %diff.check330 = icmp ugt i64 %i.vc, -32
  %conflict.rdx331 = or i1 %diff.check329, %diff.check330
  br i1 %conflict.rdx331, label %.lr.ph172.preheader, label %vector.main.loop.iter.check332

vector.main.loop.iter.check332:                   ; preds = %vector.memcheck328
  %min.iters.check333 = icmp ult i64 %i.uz, 32
  br i1 %min.iters.check333, label %vec.epilog.ph349, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check332
  %i.vd = and i64 %i.uz, 24
  %n.vec335 = and i64 %i.uz, -32                  ; 4 uses
  %i.ve = add i64 %4, %n.vec335
  br label %vector.body336

vector.body336:                                   ; preds = %vector.ph334, %vector.body336
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 3 uses
  %i.vf = add nuw i64 %4, %index337               ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %wide.load338 = load <16 x i8>, ptr %i.vg, align 1, !tbaa !35
  %wide.load339 = load <16 x i8>, ptr %i.vh, align 1, !tbaa !35
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 %index337 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %wide.load340 = load <16 x i8>, ptr %i.vi, align 1, !tbaa !35
  %wide.load341 = load <16 x i8>, ptr %i.vj, align 1, !tbaa !35
  %i.vk = sub <16 x i8> %wide.load338, %wide.load340
  %i.vl = sub <16 x i8> %wide.load339, %wide.load341
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 %i.vf ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  store <16 x i8> %i.vk, ptr %i.vm, align 1, !tbaa !35
  store <16 x i8> %i.vl, ptr %i.vn, align 1, !tbaa !35
  %index.next342 = add nuw i64 %index337, 32      ; 2 uses
  %i.vo = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.vo, label %middle.block343, label %vector.body336, !llvm.loop !1072

middle.block343:                                  ; preds = %vector.body336
  %cmp.n344 = icmp eq i64 %i.uz, %n.vec335
  br i1 %cmp.n344, label %.loopexit, label %vec.epilog.iter.check346

vec.epilog.iter.check346:                         ; preds = %middle.block343
  %min.epilog.iters.check348 = icmp eq i64 %i.vd, 0
  br i1 %min.epilog.iters.check348, label %.lr.ph172.preheader, label %vec.epilog.ph349, !prof !1076

vec.epilog.ph349:                                 ; preds = %vector.main.loop.iter.check332, %vec.epilog.iter.check346
  %vec.epilog.resume.val350 = phi i64 [ %n.vec335, %vec.epilog.iter.check346 ], [ 0, %vector.main.loop.iter.check332 ]
  %n.vec351 = and i64 %i.uz, -8                   ; 3 uses
  %i.vp = add i64 %4, %n.vec351
  br label %vec.epilog.vector.body352

vec.epilog.vector.body352:                        ; preds = %vec.epilog.vector.body352, %vec.epilog.ph349
  %index353 = phi i64 [ %vec.epilog.resume.val350, %vec.epilog.ph349 ], [ %index.next356, %vec.epilog.vector.body352 ] ; 3 uses
  %i.vq = add nuw i64 %4, %index353               ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 %i.vq
  %wide.load354 = load <8 x i8>, ptr %i.vr, align 1, !tbaa !35
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 %index353
  %wide.load355 = load <8 x i8>, ptr %i.vs, align 1, !tbaa !35
  %i.vt = sub <8 x i8> %wide.load354, %wide.load355
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 %i.vq
  store <8 x i8> %i.vt, ptr %i.vu, align 1, !tbaa !35
  %index.next356 = add nuw i64 %index353, 8       ; 2 uses
  %i.vv = icmp eq i64 %index.next356, %n.vec351
  br i1 %i.vv, label %vec.epilog.middle.block357, label %vec.epilog.vector.body352, !llvm.loop !1073

vec.epilog.middle.block357:                       ; preds = %vec.epilog.vector.body352
  %cmp.n358 = icmp eq i64 %i.uz, %n.vec351
  br i1 %cmp.n358, label %.loopexit, label %.lr.ph172.preheader

.lr.ph172.preheader:                              ; preds = %iter.check345, %vector.memcheck328, %vec.epilog.iter.check346, %vec.epilog.middle.block357
  %.12171.ph = phi i64 [ %4, %iter.check345 ], [ %4, %vector.memcheck328 ], [ %i.ve, %vec.epilog.iter.check346 ], [ %i.vp, %vec.epilog.middle.block357 ] ; 7 uses
  %i.vw = sub i64 %3, %.12171.ph
  %.neg = add i64 %.12171.ph, 1
  %xtraiter683 = and i64 %i.vw, 1
  %lcmp.mod684.not = icmp eq i64 %xtraiter683, 0
  br i1 %lcmp.mod684.not, label %.lr.ph172.prol.loopexit, label %.lr.ph172.prol

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

.loopexit:                                        ; preds = %.lr.ph167, %.lr.ph172.prol.loopexit, %.lr.ph172, %.lr.ph177.prol.loopexit, %.lr.ph177, %.lr.ph182.prol.loopexit, %.lr.ph182, %.lr.ph185.prol.loopexit, %.lr.ph185, %.lr.ph188.prol.loopexit, %.lr.ph188, %.lr.ph193.prol.loopexit, %.lr.ph193, %.lr.ph196.prol.loopexit, %.lr.ph196, %middle.block274, %vec.epilog.middle.block290, %middle.block343, %vec.epilog.middle.block357, %middle.block420, %vec.epilog.middle.block435, %middle.block488, %vec.epilog.middle.block502, %middle.block525, %vec.epilog.middle.block539, %middle.block556, %vec.epilog.middle.block569, %middle.block622, %vec.epilog.middle.block636, %middle.block653, %vec.epilog.middle.block666, %.preheader161, %.preheader158, %.preheader155, %.preheader152, %.preheader150, %.preheader148, %.preheader145, %.preheader, %bb.a
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
