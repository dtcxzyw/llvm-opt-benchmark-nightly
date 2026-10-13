Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lodepng?download=true
inline.NumInlined: 863
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 142
begin_hunk_0_@_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings:bb.a

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ur = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @free(ptr noundef %i.ur) #33
  %i.us = load i64, ptr %i.e, align 16, !tbaa !25 ; 2 uses
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.tk, ptr noundef %i.un, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 1)
  store i64 0, ptr %i.ty, align 8, !tbaa !25
  store ptr null, ptr %i.g, align 8, !tbaa !28
  %i.ut = load ptr, ptr %i.ti, align 8, !tbaa !187 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.ut, null
  br i1 %.not.i.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.uu = call noundef i32 %i.ut(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ty, ptr noundef %i.tk, i64 noundef %i.tw, ptr noundef nonnull %5), !inline_history !14 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.uv = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ty, ptr noundef %i.tk, i64 noundef %i.tw, ptr noundef nonnull %5) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.uw = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @free(ptr noundef %i.uw) #33
  %i.ux = load i64, ptr %i.ty, align 8, !tbaa !25 ; 2 uses
  %i.uy = icmp ult i64 %i.ux, %i.us
  %spec.select = call i64 @llvm.umin.i64(i64 %i.ux, i64 %i.us) ; 2 uses
  %spec.select205 = zext i1 %i.uy to i32
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.tn, ptr noundef %i.un, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 2)
  store i64 0, ptr %i.tz, align 16, !tbaa !25
  store ptr null, ptr %i.g, align 8, !tbaa !28
  %i.uz = load ptr, ptr %i.ti, align 8, !tbaa !187 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.uz, null
  br i1 %.not.i.2, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.va = call noundef i32 %i.uz(ptr noundef nonnull %i.g, ptr noundef nonnull %i.tz, ptr noundef %i.tn, i64 noundef %i.tw, ptr noundef nonnull %5), !inline_history !14 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.vb = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.tz, ptr noundef %i.tn, i64 noundef %i.tw, ptr noundef nonnull %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.vc = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @free(ptr noundef %i.vc) #33
  %i.vd = load i64, ptr %i.tz, align 16, !tbaa !25 ; 2 uses
  %i.ve = icmp ult i64 %i.vd, %spec.select
  %spec.select206 = call i64 @llvm.umin.i64(i64 %i.vd, i64 %spec.select) ; 2 uses
  %spec.select207 = select i1 %i.ve, i32 2, i32 %spec.select205
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.tq, ptr noundef %i.un, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 3)
  store i64 0, ptr %i.ua, align 8, !tbaa !25
  store ptr null, ptr %i.g, align 8, !tbaa !28
  %i.vf = load ptr, ptr %i.ti, align 8, !tbaa !187 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.vf, null
  br i1 %.not.i.3, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.vg = call noundef i32 %i.vf(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ua, ptr noundef %i.tq, i64 noundef %i.tw, ptr noundef nonnull %5), !inline_history !14 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.vh = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ua, ptr noundef %i.tq, i64 noundef %i.tw, ptr noundef nonnull %5) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.vi = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @free(ptr noundef %i.vi) #33
  %i.vj = load i64, ptr %i.ua, align 8, !tbaa !25 ; 2 uses
  %i.vk = icmp ult i64 %i.vj, %spec.select206
  %spec.select208 = call i64 @llvm.umin.i64(i64 %i.vj, i64 %spec.select206)
  %spec.select209 = select i1 %i.vk, i32 3, i32 %spec.select207
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.tt, ptr noundef %i.un, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 4)
  store i64 0, ptr %i.ub, align 16, !tbaa !25
  store ptr null, ptr %i.g, align 8, !tbaa !28
  %i.vl = load ptr, ptr %i.ti, align 8, !tbaa !187 ; 2 uses
  %.not.i.4 = icmp eq ptr %i.vl, null
  br i1 %.not.i.4, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.vm = call noundef i32 %i.vl(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ub, ptr noundef %i.tt, i64 noundef %i.tw, ptr noundef nonnull %5), !inline_history !14 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.vn = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ub, ptr noundef %i.tt, i64 noundef %i.tw, ptr noundef nonnull %5) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.vo = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @free(ptr noundef %i.vo) #33
  %i.vp = load i64, ptr %i.ub, align 16, !tbaa !25
  %i.vq = icmp ult i64 %i.vp, %spec.select208
  %spec.select210 = select i1 %i.vq, i32 4, i32 %spec.select209 ; 2 uses
  %i.vr = trunc nuw nsw i32 %spec.select210 to i8
  %i.vs = mul i64 %i.u, %indvars.iv101
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 %i.vs ; 2 uses
  store i8 %i.vr, ptr %i.vt, align 1, !tbaa !29
  br i1 %.not28227, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.z
  %i.vu = zext nneg i32 %spec.select210 to i64
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.vu
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !28 ; 4 uses
  %i.vx = getelementptr i8, ptr %i.vt, i64 1      ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.vy = ptrtoaddr ptr %i.vw to i64
  %i.vz = sub i64 %i.vy, %i.ul
  %diff.check = icmp ugt i64 %i.vz, -128
  %or.cond502 = select i1 %i.ui, i1 true, i1 %diff.check
  br i1 %or.cond502, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check218, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vw, i64 %index ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 32
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 64
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 96
  %wide.load = load <32 x i8>, ptr %i.wa, align 1, !tbaa !29
  %wide.load219 = load <32 x i8>, ptr %i.wb, align 1, !tbaa !29
  %wide.load220 = load <32 x i8>, ptr %i.wc, align 1, !tbaa !29
  %wide.load221 = load <32 x i8>, ptr %i.wd, align 1, !tbaa !29
  %i.we = getelementptr i8, ptr %i.vx, i64 %index ; 4 uses
  %i.wf = getelementptr i8, ptr %i.we, i64 32
  %i.wg = getelementptr i8, ptr %i.we, i64 64
  %i.wh = getelementptr i8, ptr %i.we, i64 96
  store <32 x i8> %wide.load, ptr %i.we, align 1, !tbaa !29
  store <32 x i8> %wide.load219, ptr %i.wf, align 1, !tbaa !29
  store <32 x i8> %wide.load220, ptr %i.wg, align 1, !tbaa !29
  store <32 x i8> %wide.load221, ptr %i.wh, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.wi = icmp eq i64 %index.next, %n.vec
  br i1 %i.wi, label %middle.block, label %vector.body, !llvm.loop !1036

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next225, %vec.epilog.vector.body ] ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vw, i64 %index223
  %wide.load224 = load <8 x i8>, ptr %i.wj, align 1, !tbaa !29
  %i.wk = getelementptr i8, ptr %i.vx, i64 %index223
  store <8 x i8> %wide.load224, ptr %i.wk, align 1, !tbaa !29
  %index.next225 = add nuw i64 %index223, 8       ; 2 uses
  %i.wl = icmp eq i64 %index.next225, %n.vec222
  br i1 %i.wl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1037

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n226, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec222, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vw, i64 %indvars.iv
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !29
  %i.wo = getelementptr i8, ptr %i.vx, i64 %indvars.iv
  store i8 %i.wn, ptr %i.wo, align 1, !tbaa !29
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.wp = and i64 %indvars.iv.next, 4294967295
  %.not282 = icmp eq i64 %i.t, %i.wp
  br i1 %.not282, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1038

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.z
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %.not280 = icmp eq i64 %indvars.iv.next102, %i.tx
  br i1 %.not280, label %.loopexit21, label %.preheader19, !llvm.loop !1039

.loopexit21:                                      ; preds = %._crit_edge, %bb.k
  call void @free(ptr noundef %i.tj) #33
  call void @free(ptr noundef %i.tk) #33
  call void @free(ptr noundef %i.tn) #33
  call void @free(ptr noundef %i.tq) #33
  call void @free(ptr noundef %i.tt) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.lr.ph90, %.preheader17, %.thread3, %.thread, %.loopexit16, %.loopexit21, %.loopexit13, %bb.e, %bb.c
  %.0227 = phi i32 [ 31, %bb.c ], [ 88, %bb.e ], [ %spec.select308.4, %.loopexit21 ], [ %spec.select.4, %.loopexit13 ], [ %spec.select306.4, %.loopexit16 ], [ 0, %.thread3 ], [ 31, %.thread ], [ 0, %.preheader17 ], [ 0, %.lr.ph90 ], [ 0, %bb.j ]
  ret i32 %.0227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i64 noundef range(i64 0, 536870912) %4, i8 noundef zeroext %5) unnamed_addr #3 {
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
  br i1 %.not143189, label %.preheader145, label %iter.check582

iter.check582:                                    ; preds = %.preheader147
  %min.iters.check567 = icmp samesign ult i64 %4, 8
  %i.d = sub i64 %i.a, %i.b
  %diff.check566 = icmp ugt i64 %i.d, -128
  %or.cond = or i1 %min.iters.check567, %diff.check566
  br i1 %or.cond, label %.lr.ph191.preheader, label %vector.main.loop.iter.check568

vector.main.loop.iter.check568:                   ; preds = %iter.check582
  %min.iters.check569 = icmp samesign ult i64 %4, 128
  br i1 %min.iters.check569, label %vec.epilog.ph586, label %vector.ph570

vector.ph570:                                     ; preds = %vector.main.loop.iter.check568
  %i.e = and i64 %4, 120
  %n.vec571 = and i64 %4, 536870784               ; 4 uses
  br label %vector.body572

vector.body572:                                   ; preds = %vector.ph570, %vector.body572
  %index573 = phi i64 [ 0, %vector.ph570 ], [ %index.next578, %vector.body572 ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index573 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %wide.load574 = load <32 x i8>, ptr %i.f, align 1, !tbaa !29
  %wide.load575 = load <32 x i8>, ptr %i.g, align 1, !tbaa !29
  %wide.load576 = load <32 x i8>, ptr %i.h, align 1, !tbaa !29
  %wide.load577 = load <32 x i8>, ptr %i.i, align 1, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index573 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store <32 x i8> %wide.load574, ptr %i.j, align 1, !tbaa !29
  store <32 x i8> %wide.load575, ptr %i.k, align 1, !tbaa !29
  store <32 x i8> %wide.load576, ptr %i.l, align 1, !tbaa !29
  store <32 x i8> %wide.load577, ptr %i.m, align 1, !tbaa !29
  %index.next578 = add nuw i64 %index573, 128     ; 2 uses
  %i.n = icmp eq i64 %index.next578, %n.vec571
  br i1 %i.n, label %middle.block579, label %vector.body572, !llvm.loop !1043

middle.block579:                                  ; preds = %vector.body572
  %cmp.n580 = icmp eq i64 %4, %n.vec571
  br i1 %cmp.n580, label %.preheader145, label %vec.epilog.iter.check584

vec.epilog.iter.check584:                         ; preds = %middle.block579
  %min.epilog.iters.check585 = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check585, label %.lr.ph191.preheader, label %vec.epilog.ph586, !prof !93

vec.epilog.ph586:                                 ; preds = %vector.main.loop.iter.check568, %vec.epilog.iter.check584
  %vec.epilog.resume.val581 = phi i64 [ %n.vec571, %vec.epilog.iter.check584 ], [ 0, %vector.main.loop.iter.check568 ]
  %n.vec587 = and i64 %4, 536870904               ; 3 uses
  br label %vec.epilog.vector.body588

vec.epilog.vector.body588:                        ; preds = %vec.epilog.vector.body588, %vec.epilog.ph586
  %index589 = phi i64 [ %vec.epilog.resume.val581, %vec.epilog.ph586 ], [ %index.next591, %vec.epilog.vector.body588 ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index589
  %wide.load590 = load <8 x i8>, ptr %i.o, align 1, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index589
  store <8 x i8> %wide.load590, ptr %i.p, align 1, !tbaa !29
  %index.next591 = add nuw i64 %index589, 8       ; 2 uses
  %i.q = icmp eq i64 %index.next591, %n.vec587
  br i1 %i.q, label %vec.epilog.middle.block592, label %vec.epilog.vector.body588, !llvm.loop !1044

vec.epilog.middle.block592:                       ; preds = %vec.epilog.vector.body588
  %cmp.n593 = icmp eq i64 %4, %n.vec587
  br i1 %cmp.n593, label %.preheader145, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %iter.check582, %vec.epilog.iter.check584, %vec.epilog.middle.block592
  %.1190.ph = phi i64 [ 0, %iter.check582 ], [ %n.vec571, %vec.epilog.iter.check584 ], [ %n.vec587, %vec.epilog.middle.block592 ] ; 3 uses
  %xtraiter699 = and i64 %4, 7                    ; 2 uses
  %lcmp.mod700.not = icmp eq i64 %xtraiter699, 0
  br i1 %lcmp.mod700.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol

.lr.ph191.prol:                                   ; preds = %.lr.ph191.preheader, %.lr.ph191.prol
  %.1190.prol = phi i64 [ %i.u, %.lr.ph191.prol ], [ %.1190.ph, %.lr.ph191.preheader ] ; 3 uses
  %prol.iter701 = phi i64 [ %prol.iter701.next, %.lr.ph191.prol ], [ 0, %.lr.ph191.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.1190.prol
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.1190.prol
  store i8 %i.s, ptr %i.t, align 1, !tbaa !29
  %i.u = add nuw nsw i64 %.1190.prol, 1           ; 2 uses
  %prol.iter701.next = add i64 %prol.iter701, 1   ; 2 uses
  %prol.iter701.cmp.not = icmp eq i64 %prol.iter701.next, %xtraiter699
  br i1 %prol.iter701.cmp.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol, !llvm.loop !1045

.lr.ph191.prol.loopexit:                          ; preds = %.lr.ph191.prol, %.lr.ph191.preheader
  %.1190.unr = phi i64 [ %.1190.ph, %.lr.ph191.preheader ], [ %i.u, %.lr.ph191.prol ]
  %i.v = sub nsw i64 %.1190.ph, %4
  %i.w = icmp ugt i64 %i.v, -8
  br i1 %i.w, label %.preheader145, label %.lr.ph191

.preheader:                                       ; preds = %bb.a
  %.not144194 = icmp eq i64 %3, 0
  br i1 %.not144194, label %.loopexit, label %iter.check650

iter.check650:                                    ; preds = %.preheader
  %min.iters.check635 = icmp ult i64 %3, 8
  %i.x = sub i64 %i.a, %i.b
  %diff.check634 = icmp ugt i64 %i.x, -128
  %or.cond663 = or i1 %min.iters.check635, %diff.check634
  br i1 %or.cond663, label %.lr.ph196.preheader, label %vector.main.loop.iter.check636

vector.main.loop.iter.check636:                   ; preds = %iter.check650
  %min.iters.check637 = icmp ult i64 %3, 128
  br i1 %min.iters.check637, label %vec.epilog.ph654, label %vector.ph638

vector.ph638:                                     ; preds = %vector.main.loop.iter.check636
  %i.y = and i64 %3, 120
  %n.vec639 = and i64 %3, -128                    ; 4 uses
  br label %vector.body640

vector.body640:                                   ; preds = %vector.ph638, %vector.body640
  %index641 = phi i64 [ 0, %vector.ph638 ], [ %index.next646, %vector.body640 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %index641 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load642 = load <32 x i8>, ptr %i.z, align 1, !tbaa !29
  %wide.load643 = load <32 x i8>, ptr %i.aa, align 1, !tbaa !29
  %wide.load644 = load <32 x i8>, ptr %i.ab, align 1, !tbaa !29
  %wide.load645 = load <32 x i8>, ptr %i.ac, align 1, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %index641 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store <32 x i8> %wide.load642, ptr %i.ad, align 1, !tbaa !29
  store <32 x i8> %wide.load643, ptr %i.ae, align 1, !tbaa !29
  store <32 x i8> %wide.load644, ptr %i.af, align 1, !tbaa !29
  store <32 x i8> %wide.load645, ptr %i.ag, align 1, !tbaa !29
  %index.next646 = add nuw i64 %index641, 128     ; 2 uses
  %i.ah = icmp eq i64 %index.next646, %n.vec639
  br i1 %i.ah, label %middle.block647, label %vector.body640, !llvm.loop !1046

middle.block647:                                  ; preds = %vector.body640
  %cmp.n648 = icmp eq i64 %3, %n.vec639
  br i1 %cmp.n648, label %.loopexit, label %vec.epilog.iter.check652

vec.epilog.iter.check652:                         ; preds = %middle.block647
  %min.epilog.iters.check653 = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check653, label %.lr.ph196.preheader, label %vec.epilog.ph654, !prof !93

vec.epilog.ph654:                                 ; preds = %vector.main.loop.iter.check636, %vec.epilog.iter.check652
  %vec.epilog.resume.val649 = phi i64 [ %n.vec639, %vec.epilog.iter.check652 ], [ 0, %vector.main.loop.iter.check636 ]
  %n.vec655 = and i64 %3, -8                      ; 3 uses
  br label %vec.epilog.vector.body656

vec.epilog.vector.body656:                        ; preds = %vec.epilog.vector.body656, %vec.epilog.ph654
  %index657 = phi i64 [ %vec.epilog.resume.val649, %vec.epilog.ph654 ], [ %index.next659, %vec.epilog.vector.body656 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %index657
  %wide.load658 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %index657
  store <8 x i8> %wide.load658, ptr %i.aj, align 1, !tbaa !29
  %index.next659 = add nuw i64 %index657, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next659, %n.vec655
  br i1 %i.ak, label %vec.epilog.middle.block660, label %vec.epilog.vector.body656, !llvm.loop !1047

vec.epilog.middle.block660:                       ; preds = %vec.epilog.vector.body656
  %cmp.n661 = icmp eq i64 %3, %n.vec655
  br i1 %cmp.n661, label %.loopexit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %iter.check650, %vec.epilog.iter.check652, %vec.epilog.middle.block660
  %.0195.ph = phi i64 [ 0, %iter.check650 ], [ %n.vec639, %vec.epilog.iter.check652 ], [ %n.vec655, %vec.epilog.middle.block660 ] ; 3 uses
  %xtraiter705 = and i64 %3, 7                    ; 2 uses
  %lcmp.mod706.not = icmp eq i64 %xtraiter705, 0
  br i1 %lcmp.mod706.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %.0195.prol = phi i64 [ %i.ao, %.lr.ph196.prol ], [ %.0195.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter707 = phi i64 [ %prol.iter707.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.0195.prol
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.0195.prol
  store i8 %i.am, ptr %i.an, align 1, !tbaa !29
  %i.ao = add nuw i64 %.0195.prol, 1              ; 2 uses
  %prol.iter707.next = add i64 %prol.iter707, 1   ; 2 uses
  %prol.iter707.cmp.not = icmp eq i64 %prol.iter707.next, %xtraiter705
  br i1 %prol.iter707.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !1048

.lr.ph196.prol.loopexit:                          ; preds = %.lr.ph196.prol, %.lr.ph196.preheader
  %.0195.unr = phi i64 [ %.0195.ph, %.lr.ph196.preheader ], [ %i.ao, %.lr.ph196.prol ]
  %i.ap = sub i64 %.0195.ph, %3
  %i.aq = icmp ugt i64 %i.ap, -8
  br i1 %i.aq, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196
  %.0195 = phi i64 [ %i.bw, %.lr.ph196 ], [ %.0195.unr, %.lr.ph196.prol.loopexit ] ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %.0195
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.0195
  store i8 %i.as, ptr %i.at, align 1, !tbaa !29
  %i.au = add nuw i64 %.0195, 1                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !29
  %i.ay = add nuw i64 %.0195, 2                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !29
  %i.bc = add nuw i64 %.0195, 3                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !29
  %i.bg = add nuw i64 %.0195, 4                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !29
  %i.bk = add nuw i64 %.0195, 5                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !29
  %i.bo = add nuw i64 %.0195, 6                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !29
  %i.bs = add nuw i64 %.0195, 7                   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !29
  %i.bw = add nuw i64 %.0195, 8                   ; 2 uses
  %.not144.7 = icmp eq i64 %i.bw, %3
  br i1 %.not144.7, label %.loopexit, label %.lr.ph196, !llvm.loop !1049

.preheader145:                                    ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191, %middle.block579, %vec.epilog.middle.block592, %.preheader147
  %i.bx = icmp ult i64 %4, %3
  br i1 %i.bx, label %iter.check619, label %.loopexit

iter.check619:                                    ; preds = %.preheader145
  %i.by = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check599 = icmp ult i64 %i.by, 16
  br i1 %min.iters.check599, label %.lr.ph193.preheader, label %vector.memcheck595

vector.memcheck595:                               ; preds = %iter.check619
  %i.bz = add i64 %4, %i.b
  %i.ca = sub i64 %i.a, %i.bz
  %diff.check596 = icmp ugt i64 %i.ca, -128
  %i.cb = sub i64 %i.a, %i.b
  %diff.check597 = icmp ugt i64 %i.cb, -128
  %conflict.rdx598 = or i1 %diff.check596, %diff.check597
  br i1 %conflict.rdx598, label %.lr.ph193.preheader, label %vector.main.loop.iter.check600

vector.main.loop.iter.check600:                   ; preds = %vector.memcheck595
  %min.iters.check601 = icmp ult i64 %i.by, 128
  br i1 %min.iters.check601, label %vec.epilog.ph623, label %vector.ph602

vector.ph602:                                     ; preds = %vector.main.loop.iter.check600
  %i.cc = and i64 %i.by, 112
  %n.vec603 = and i64 %i.by, -128                 ; 4 uses
  %i.cd = add i64 %4, %n.vec603
  br label %vector.body604

vector.body604:                                   ; preds = %vector.ph602, %vector.body604
  %index605 = phi i64 [ 0, %vector.ph602 ], [ %index.next614, %vector.body604 ] ; 3 uses
  %i.ce = add nuw i64 %4, %index605               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %wide.load606 = load <32 x i8>, ptr %i.cf, align 1, !tbaa !29
  %wide.load607 = load <32 x i8>, ptr %i.cg, align 1, !tbaa !29
  %wide.load608 = load <32 x i8>, ptr %i.ch, align 1, !tbaa !29
  %wide.load609 = load <32 x i8>, ptr %i.ci, align 1, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %index605 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %wide.load610 = load <32 x i8>, ptr %i.cj, align 1, !tbaa !29
  %wide.load611 = load <32 x i8>, ptr %i.ck, align 1, !tbaa !29
  %wide.load612 = load <32 x i8>, ptr %i.cl, align 1, !tbaa !29
  %wide.load613 = load <32 x i8>, ptr %i.cm, align 1, !tbaa !29
  %i.cn = sub <32 x i8> %wide.load606, %wide.load610
  %i.co = sub <32 x i8> %wide.load607, %wide.load611
  %i.cp = sub <32 x i8> %wide.load608, %wide.load612
  %i.cq = sub <32 x i8> %wide.load609, %wide.load613
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  store <32 x i8> %i.cn, ptr %i.cr, align 1, !tbaa !29
  store <32 x i8> %i.co, ptr %i.cs, align 1, !tbaa !29
  store <32 x i8> %i.cp, ptr %i.ct, align 1, !tbaa !29
  store <32 x i8> %i.cq, ptr %i.cu, align 1, !tbaa !29
  %index.next614 = add nuw i64 %index605, 128     ; 2 uses
  %i.cv = icmp eq i64 %index.next614, %n.vec603
  br i1 %i.cv, label %middle.block615, label %vector.body604, !llvm.loop !1050

middle.block615:                                  ; preds = %vector.body604
  %cmp.n616 = icmp eq i64 %i.by, %n.vec603
  br i1 %cmp.n616, label %.loopexit, label %vec.epilog.iter.check621

vec.epilog.iter.check621:                         ; preds = %middle.block615
  %min.epilog.iters.check622 = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check622, label %.lr.ph193.preheader, label %vec.epilog.ph623, !prof !1094

vec.epilog.ph623:                                 ; preds = %vector.main.loop.iter.check600, %vec.epilog.iter.check621
  %vec.epilog.resume.val617 = phi i64 [ %n.vec603, %vec.epilog.iter.check621 ], [ 0, %vector.main.loop.iter.check600 ]
  %n.vec624 = and i64 %i.by, -16                  ; 3 uses
  %i.cw = add i64 %4, %n.vec624
  br label %vec.epilog.vector.body625

vec.epilog.vector.body625:                        ; preds = %vec.epilog.vector.body625, %vec.epilog.ph623
  %index626 = phi i64 [ %vec.epilog.resume.val617, %vec.epilog.ph623 ], [ %index.next629, %vec.epilog.vector.body625 ] ; 3 uses
  %i.cx = add nuw i64 %4, %index626               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cx
  %wide.load627 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %index626
  %wide.load628 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !29
  %i.da = sub <16 x i8> %wide.load627, %wide.load628
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx
  store <16 x i8> %i.da, ptr %i.db, align 1, !tbaa !29
  %index.next629 = add nuw i64 %index626, 16      ; 2 uses
  %i.dc = icmp eq i64 %index.next629, %n.vec624
  br i1 %i.dc, label %vec.epilog.middle.block630, label %vec.epilog.vector.body625, !llvm.loop !1051

vec.epilog.middle.block630:                       ; preds = %vec.epilog.vector.body625
  %cmp.n631 = icmp eq i64 %i.by, %n.vec624
  br i1 %cmp.n631, label %.loopexit, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %iter.check619, %vector.memcheck595, %vec.epilog.iter.check621, %vec.epilog.middle.block630
  %.2192.ph = phi i64 [ %4, %iter.check619 ], [ %4, %vector.memcheck595 ], [ %i.cd, %vec.epilog.iter.check621 ], [ %i.cw, %vec.epilog.middle.block630 ] ; 4 uses
  %i.dd = sub i64 %3, %.2192.ph
  %xtraiter702 = and i64 %i.dd, 3                 ; 2 uses
  %lcmp.mod703.not = icmp eq i64 %xtraiter702, 0
  br i1 %lcmp.mod703.not, label %.lr.ph193.prol.loopexit, label %.lr.ph193.prol

.lr.ph193.prol:                                   ; preds = %.lr.ph193.preheader, %.lr.ph193.prol
  %.2192.prol = phi i64 [ %i.dl, %.lr.ph193.prol ], [ %.2192.ph, %.lr.ph193.preheader ] ; 4 uses
  %prol.iter704 = phi i64 [ %prol.iter704.next, %.lr.ph193.prol ], [ 0, %.lr.ph193.preheader ]
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %.2192.prol
  %i.df = load i8, ptr %i.de, align 1, !tbaa !29
  %i.dg = sub nuw i64 %.2192.prol, %4
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !29
  %i.dj = sub i8 %i.df, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %.2192.prol
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !29
  %i.dl = add nuw i64 %.2192.prol, 1              ; 2 uses
  %prol.iter704.next = add i64 %prol.iter704, 1   ; 2 uses
  %prol.iter704.cmp.not = icmp eq i64 %prol.iter704.next, %xtraiter702
  br i1 %prol.iter704.cmp.not, label %.lr.ph193.prol.loopexit, label %.lr.ph193.prol, !llvm.loop !1052

.lr.ph193.prol.loopexit:                          ; preds = %.lr.ph193.prol, %.lr.ph193.preheader
  %.2192.unr = phi i64 [ %.2192.ph, %.lr.ph193.preheader ], [ %i.dl, %.lr.ph193.prol ]
  %i.dm = sub i64 %.2192.ph, %3
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %.loopexit, label %.lr.ph193

.lr.ph191:                                        ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191
  %.1190 = phi i64 [ %i.et, %.lr.ph191 ], [ %.1190.unr, %.lr.ph191.prol.loopexit ] ; 10 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %.1190
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !29
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %.1190
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !29
  %i.dr = add nuw nsw i64 %.1190, 1               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !29
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %i.dr
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !29
  %i.dv = add nuw nsw i64 %.1190, 2               ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !29
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !29
  %i.dz = add nuw nsw i64 %.1190, 3               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !29
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !29
  %i.ed = add nuw nsw i64 %.1190, 4               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !29
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ed
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !29
  %i.eh = add nuw nsw i64 %.1190, 5               ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !29
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %i.eh
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !29
  %i.el = add nuw nsw i64 %.1190, 6               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !29
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %i.el
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !29
  %i.ep = add nuw nsw i64 %.1190, 7               ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !29
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %i.ep
  store i8 %i.er, ptr %i.es, align 1, !tbaa !29
  %i.et = add nuw nsw i64 %.1190, 8               ; 2 uses
  %.not143.7 = icmp eq i64 %i.et, %4
  br i1 %.not143.7, label %.preheader145, label %.lr.ph191, !llvm.loop !1053

.lr.ph193:                                        ; preds = %.lr.ph193.prol.loopexit, %.lr.ph193
  %.2192 = phi i64 [ %i.fz, %.lr.ph193 ], [ %.2192.unr, %.lr.ph193.prol.loopexit ] ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %.2192
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !29
  %i.ew = sub nuw i64 %.2192, %4
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !29
  %i.ez = sub i8 %i.ev, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %.2192
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !29
  %i.fb = add nuw i64 %.2192, 1                   ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !29
  %i.fe = sub nuw i64 %i.fb, %4
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !29
  %i.fh = sub i8 %i.fd, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %i.fb
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !29
  %i.fj = add nuw i64 %.2192, 2                   ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !29
  %i.fm = sub nuw i64 %i.fj, %4
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !29
  %i.fp = sub i8 %i.fl, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 %i.fj
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !29
  %i.fr = add nuw i64 %.2192, 3                   ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !29
  %i.fu = sub nuw i64 %i.fr, %4
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !29
  %i.fx = sub i8 %i.ft, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !29
  %i.fz = add nuw i64 %.2192, 4                   ; 2 uses
  %exitcond208.not.3 = icmp eq i64 %i.fz, %3
  br i1 %exitcond208.not.3, label %.loopexit, label %.lr.ph193, !llvm.loop !1054

bb.b:                                             ; preds = %bb.a
  %.not140 = icmp eq ptr %2, null
  %.not141186 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %.not140, label %.preheader148, label %.preheader150

.preheader150:                                    ; preds = %bb.b
  br i1 %.not141186, label %.loopexit, label %iter.check521

iter.check521:                                    ; preds = %.preheader150
  %min.iters.check502 = icmp ult i64 %3, 8
  br i1 %min.iters.check502, label %.lr.ph185.preheader, label %vector.memcheck498

vector.memcheck498:                               ; preds = %iter.check521
  %i.ga = sub i64 %i.a, %i.b
  %diff.check499 = icmp ugt i64 %i.ga, -128
  %i.gb = sub i64 %i.c, %i.b
  %diff.check500 = icmp ugt i64 %i.gb, -128
  %conflict.rdx501 = or i1 %diff.check499, %diff.check500
  br i1 %conflict.rdx501, label %.lr.ph185.preheader, label %vector.main.loop.iter.check503

vector.main.loop.iter.check503:                   ; preds = %vector.memcheck498
  %min.iters.check504 = icmp ult i64 %3, 128
  br i1 %min.iters.check504, label %vec.epilog.ph525, label %vector.ph505

vector.ph505:                                     ; preds = %vector.main.loop.iter.check503
  %i.gc = and i64 %3, 120
  %n.vec506 = and i64 %3, -128                    ; 4 uses
  br label %vector.body507

vector.body507:                                   ; preds = %vector.ph505, %vector.body507
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next517, %vector.body507 ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %index508 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 96
  %wide.load509.a = load <32 x i8>, ptr %i.gd, align 1, !tbaa !29
  %wide.load510 = load <32 x i8>, ptr %i.ge, align 1, !tbaa !29
  %wide.load511 = load <32 x i8>, ptr %i.gf, align 1, !tbaa !29
  %wide.load512 = load <32 x i8>, ptr %i.gg, align 1, !tbaa !29
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 %index508 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 96
  %wide.load513 = load <32 x i8>, ptr %i.gh, align 1, !tbaa !29
  %wide.load514 = load <32 x i8>, ptr %i.gi, align 1, !tbaa !29
  %wide.load515 = load <32 x i8>, ptr %i.gj, align 1, !tbaa !29
  %wide.load516 = load <32 x i8>, ptr %i.gk, align 1, !tbaa !29
  %i.gl = sub <32 x i8> %wide.load509.a, %wide.load513
  %i.gm = sub <32 x i8> %wide.load510, %wide.load514
  %i.gn = sub <32 x i8> %wide.load511, %wide.load515
  %i.go = sub <32 x i8> %wide.load512, %wide.load516
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 %index508 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 96
  store <32 x i8> %i.gl, ptr %i.gp, align 1, !tbaa !29
  store <32 x i8> %i.gm, ptr %i.gq, align 1, !tbaa !29
  store <32 x i8> %i.gn, ptr %i.gr, align 1, !tbaa !29
  store <32 x i8> %i.go, ptr %i.gs, align 1, !tbaa !29
  %index.next517 = add nuw i64 %index508, 128     ; 2 uses
  %i.gt = icmp eq i64 %index.next517, %n.vec506
  br i1 %i.gt, label %middle.block518, label %vector.body507, !llvm.loop !1055

middle.block518:                                  ; preds = %vector.body507
  %cmp.n519 = icmp eq i64 %3, %n.vec506
  br i1 %cmp.n519, label %.loopexit, label %vec.epilog.iter.check523

vec.epilog.iter.check523:                         ; preds = %middle.block518
  %min.epilog.iters.check524 = icmp eq i64 %i.gc, 0
  br i1 %min.epilog.iters.check524, label %.lr.ph185.preheader, label %vec.epilog.ph525, !prof !93

vec.epilog.ph525:                                 ; preds = %vector.main.loop.iter.check503, %vec.epilog.iter.check523
  %vec.epilog.resume.val520 = phi i64 [ %n.vec506, %vec.epilog.iter.check523 ], [ 0, %vector.main.loop.iter.check503 ]
  %n.vec526 = and i64 %3, -8                      ; 3 uses
  br label %vec.epilog.vector.body527

vec.epilog.vector.body527:                        ; preds = %vec.epilog.vector.body527, %vec.epilog.ph525
  %index528 = phi i64 [ %vec.epilog.resume.val520, %vec.epilog.ph525 ], [ %index.next531, %vec.epilog.vector.body527 ] ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 %index528
  %wide.load529 = load <8 x i8>, ptr %i.gu, align 1, !tbaa !29
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 %index528
  %wide.load530 = load <8 x i8>, ptr %i.gv, align 1, !tbaa !29
  %i.gw = sub <8 x i8> %wide.load529, %wide.load530
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 %index528
  store <8 x i8> %i.gw, ptr %i.gx, align 1, !tbaa !29
  %index.next531 = add nuw i64 %index528, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next531, %n.vec526
  br i1 %i.gy, label %vec.epilog.middle.block532, label %vec.epilog.vector.body527, !llvm.loop !1056

vec.epilog.middle.block532:                       ; preds = %vec.epilog.vector.body527
  %cmp.n533 = icmp eq i64 %3, %n.vec526
  br i1 %cmp.n533, label %.loopexit, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %iter.check521, %vector.memcheck498, %vec.epilog.iter.check523, %vec.epilog.middle.block532
  %.3184.ph = phi i64 [ 0, %iter.check521 ], [ 0, %vector.memcheck498 ], [ %n.vec506, %vec.epilog.iter.check523 ], [ %n.vec526, %vec.epilog.middle.block532 ] ; 3 uses
  %xtraiter693 = and i64 %3, 7                    ; 2 uses
  %lcmp.mod694.not = icmp eq i64 %xtraiter693, 0
  br i1 %lcmp.mod694.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol

.lr.ph185.prol:                                   ; preds = %.lr.ph185.preheader, %.lr.ph185.prol
  %.3184.prol = phi i64 [ %i.hf, %.lr.ph185.prol ], [ %.3184.ph, %.lr.ph185.preheader ] ; 4 uses
  %prol.iter695 = phi i64 [ %prol.iter695.next, %.lr.ph185.prol ], [ 0, %.lr.ph185.preheader ]
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %.3184.prol
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !29
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 %.3184.prol
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !29
  %i.hd = sub i8 %i.ha, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 %.3184.prol
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !29
  %i.hf = add nuw i64 %.3184.prol, 1              ; 2 uses
  %prol.iter695.next = add i64 %prol.iter695, 1   ; 2 uses
  %prol.iter695.cmp.not = icmp eq i64 %prol.iter695.next, %xtraiter693
  br i1 %prol.iter695.cmp.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol, !llvm.loop !1057

.lr.ph185.prol.loopexit:                          ; preds = %.lr.ph185.prol, %.lr.ph185.preheader
  %.3184.unr = phi i64 [ %.3184.ph, %.lr.ph185.preheader ], [ %i.hf, %.lr.ph185.prol ]
  %i.hg = sub i64 %.3184.ph, %3
  %i.hh = icmp ugt i64 %i.hg, -8
  br i1 %i.hh, label %.loopexit, label %.lr.ph185

.preheader148:                                    ; preds = %bb.b
  br i1 %.not141186, label %.loopexit, label %iter.check552

iter.check552:                                    ; preds = %.preheader148
  %min.iters.check537 = icmp ult i64 %3, 8
  %i.hi = sub i64 %i.a, %i.b
  %diff.check536 = icmp ugt i64 %i.hi, -128
  %or.cond664 = or i1 %min.iters.check537, %diff.check536
  br i1 %or.cond664, label %.lr.ph188.preheader, label %vector.main.loop.iter.check538

vector.main.loop.iter.check538:                   ; preds = %iter.check552
  %min.iters.check539 = icmp ult i64 %3, 128
  br i1 %min.iters.check539, label %vec.epilog.ph556, label %vector.ph540

vector.ph540:                                     ; preds = %vector.main.loop.iter.check538
  %i.hj = and i64 %3, 120
  %n.vec541 = and i64 %3, -128                    ; 4 uses
  br label %vector.body542

vector.body542:                                   ; preds = %vector.ph540, %vector.body542
  %index543 = phi i64 [ 0, %vector.ph540 ], [ %index.next548, %vector.body542 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %index543 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %wide.load544 = load <32 x i8>, ptr %i.hk, align 1, !tbaa !29
  %wide.load545 = load <32 x i8>, ptr %i.hl, align 1, !tbaa !29
  %wide.load546 = load <32 x i8>, ptr %i.hm, align 1, !tbaa !29
  %wide.load547 = load <32 x i8>, ptr %i.hn, align 1, !tbaa !29
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %index543 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 96
  store <32 x i8> %wide.load544, ptr %i.ho, align 1, !tbaa !29
  store <32 x i8> %wide.load545, ptr %i.hp, align 1, !tbaa !29
  store <32 x i8> %wide.load546, ptr %i.hq, align 1, !tbaa !29
  store <32 x i8> %wide.load547, ptr %i.hr, align 1, !tbaa !29
  %index.next548 = add nuw i64 %index543, 128     ; 2 uses
  %i.hs = icmp eq i64 %index.next548, %n.vec541
  br i1 %i.hs, label %middle.block549, label %vector.body542, !llvm.loop !1058

middle.block549:                                  ; preds = %vector.body542
  %cmp.n550 = icmp eq i64 %3, %n.vec541
  br i1 %cmp.n550, label %.loopexit, label %vec.epilog.iter.check554

vec.epilog.iter.check554:                         ; preds = %middle.block549
  %min.epilog.iters.check555 = icmp eq i64 %i.hj, 0
  br i1 %min.epilog.iters.check555, label %.lr.ph188.preheader, label %vec.epilog.ph556, !prof !93

vec.epilog.ph556:                                 ; preds = %vector.main.loop.iter.check538, %vec.epilog.iter.check554
  %vec.epilog.resume.val551 = phi i64 [ %n.vec541, %vec.epilog.iter.check554 ], [ 0, %vector.main.loop.iter.check538 ]
  %n.vec557 = and i64 %3, -8                      ; 3 uses
  br label %vec.epilog.vector.body558

vec.epilog.vector.body558:                        ; preds = %vec.epilog.vector.body558, %vec.epilog.ph556
  %index559 = phi i64 [ %vec.epilog.resume.val551, %vec.epilog.ph556 ], [ %index.next561, %vec.epilog.vector.body558 ] ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %index559
  %wide.load560 = load <8 x i8>, ptr %i.ht, align 1, !tbaa !29
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 %index559
  store <8 x i8> %wide.load560, ptr %i.hu, align 1, !tbaa !29
  %index.next561 = add nuw i64 %index559, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next561, %n.vec557
  br i1 %i.hv, label %vec.epilog.middle.block562, label %vec.epilog.vector.body558, !llvm.loop !1059

vec.epilog.middle.block562:                       ; preds = %vec.epilog.vector.body558
  %cmp.n563 = icmp eq i64 %3, %n.vec557
  br i1 %cmp.n563, label %.loopexit, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %iter.check552, %vec.epilog.iter.check554, %vec.epilog.middle.block562
  %.4187.ph = phi i64 [ 0, %iter.check552 ], [ %n.vec541, %vec.epilog.iter.check554 ], [ %n.vec557, %vec.epilog.middle.block562 ] ; 3 uses
  %xtraiter696 = and i64 %3, 7                    ; 2 uses
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  br i1 %lcmp.mod697.not, label %.lr.ph188.prol.loopexit, label %.lr.ph188.prol

.lr.ph188.prol:                                   ; preds = %.lr.ph188.preheader, %.lr.ph188.prol
  %.4187.prol = phi i64 [ %i.hz, %.lr.ph188.prol ], [ %.4187.ph, %.lr.ph188.preheader ] ; 3 uses
  %prol.iter698 = phi i64 [ %prol.iter698.next, %.lr.ph188.prol ], [ 0, %.lr.ph188.preheader ]
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %.4187.prol
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !29
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 %.4187.prol
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !29
  %i.hz = add nuw i64 %.4187.prol, 1              ; 2 uses
  %prol.iter698.next = add i64 %prol.iter698, 1   ; 2 uses
  %prol.iter698.cmp.not = icmp eq i64 %prol.iter698.next, %xtraiter696
  br i1 %prol.iter698.cmp.not, label %.lr.ph188.prol.loopexit, label %.lr.ph188.prol, !llvm.loop !1060

.lr.ph188.prol.loopexit:                          ; preds = %.lr.ph188.prol, %.lr.ph188.preheader
  %.4187.unr = phi i64 [ %.4187.ph, %.lr.ph188.preheader ], [ %i.hz, %.lr.ph188.prol ]
  %i.ia = sub i64 %.4187.ph, %3
  %i.ib = icmp ugt i64 %i.ia, -8
  br i1 %i.ib, label %.loopexit, label %.lr.ph188

.lr.ph185:                                        ; preds = %.lr.ph185.prol.loopexit, %.lr.ph185
  %.3184 = phi i64 [ %i.kf, %.lr.ph185 ], [ %.3184.unr, %.lr.ph185.prol.loopexit ] ; 11 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %.3184
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !29
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 %.3184
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !29
  %i.ig = sub i8 %i.id, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 %.3184
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !29
  %i.ii = add nuw i64 %.3184, 1                   ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !29
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 %i.ii
  %i.im = load i8, ptr %i.il, align 1, !tbaa !29
  %i.in = sub i8 %i.ik, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 %i.ii
  store i8 %i.in, ptr %i.io, align 1, !tbaa !29
  %i.ip = add nuw i64 %.3184, 2                   ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !29
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 %i.ip
  %i.it = load i8, ptr %i.is, align 1, !tbaa !29
  %i.iu = sub i8 %i.ir, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 %i.ip
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !29
  %i.iw = add nuw i64 %.3184, 3                   ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !29
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 %i.iw
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !29
  %i.jb = sub i8 %i.iy, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 %i.iw
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !29
  %i.jd = add nuw i64 %.3184, 4                   ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !29
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 %i.jd
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !29
  %i.ji = sub i8 %i.jf, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 %i.jd
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !29
  %i.jk = add nuw i64 %.3184, 5                   ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !29
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 %i.jk
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !29
  %i.jp = sub i8 %i.jm, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 %i.jk
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !29
  %i.jr = add nuw i64 %.3184, 6                   ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !29
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 %i.jr
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !29
  %i.jw = sub i8 %i.jt, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 %i.jr
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !29
  %i.jy = add nuw i64 %.3184, 7                   ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !29
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 %i.jy
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !29
  %i.kd = sub i8 %i.ka, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 %i.jy
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !29
  %i.kf = add nuw i64 %.3184, 8                   ; 2 uses
  %.not142.7 = icmp eq i64 %i.kf, %3
  br i1 %.not142.7, label %.loopexit, label %.lr.ph185, !llvm.loop !1061

.lr.ph188:                                        ; preds = %.lr.ph188.prol.loopexit, %.lr.ph188
  %.4187 = phi i64 [ %i.ll, %.lr.ph188 ], [ %.4187.unr, %.lr.ph188.prol.loopexit ] ; 10 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 %.4187
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !29
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 %.4187
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !29
  %i.kj = add nuw i64 %.4187, 1                   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !29
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 %i.kj
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !29
  %i.kn = add nuw i64 %.4187, 2                   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !29
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 %i.kn
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !29
  %i.kr = add nuw i64 %.4187, 3                   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !29
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 %i.kr
  store i8 %i.kt, ptr %i.ku, align 1, !tbaa !29
  %i.kv = add nuw i64 %.4187, 4                   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !29
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 %i.kv
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !29
  %i.kz = add nuw i64 %.4187, 5                   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !29
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 %i.kz
  store i8 %i.lb, ptr %i.lc, align 1, !tbaa !29
  %i.ld = add nuw i64 %.4187, 6                   ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !29
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ld
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !29
  %i.lh = add nuw i64 %.4187, 7                   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !29
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 %i.lh
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !29
  %i.ll = add nuw i64 %.4187, 8                   ; 2 uses
  %.not141.7 = icmp eq i64 %i.ll, %3
  br i1 %.not141.7, label %.loopexit, label %.lr.ph188, !llvm.loop !1062

bb.c:                                             ; preds = %bb.a
  %.not137 = icmp eq ptr %2, null
  %.not138178 = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not137, label %.preheader154, label %.preheader157

.preheader157:                                    ; preds = %bb.c
  br i1 %.not138178, label %.preheader155, label %iter.check380

iter.check380:                                    ; preds = %.preheader157
  %min.iters.check361 = icmp samesign ult i64 %4, 8
  br i1 %min.iters.check361, label %.lr.ph175.preheader, label %vector.memcheck357

vector.memcheck357:                               ; preds = %iter.check380
  %i.lm = sub i64 %i.a, %i.b
  %diff.check358 = icmp ugt i64 %i.lm, -128
  %i.ln = sub i64 %i.c, %i.b
  %diff.check359 = icmp ugt i64 %i.ln, -128
  %conflict.rdx360 = or i1 %diff.check358, %diff.check359
  br i1 %conflict.rdx360, label %.lr.ph175.preheader, label %vector.main.loop.iter.check362

vector.main.loop.iter.check362:                   ; preds = %vector.memcheck357
  %min.iters.check363 = icmp samesign ult i64 %4, 128
  br i1 %min.iters.check363, label %vec.epilog.ph384, label %vector.ph364

vector.ph364:                                     ; preds = %vector.main.loop.iter.check362
  %i.lo = and i64 %4, 120
  %n.vec365 = and i64 %4, 536870784               ; 4 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.ph364, %vector.body366
  %index367 = phi i64 [ 0, %vector.ph364 ], [ %index.next376, %vector.body366 ] ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 %index367 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 96
  %wide.load368 = load <32 x i8>, ptr %i.lp, align 1, !tbaa !29
  %wide.load369 = load <32 x i8>, ptr %i.lq, align 1, !tbaa !29
  %wide.load370 = load <32 x i8>, ptr %i.lr, align 1, !tbaa !29
  %wide.load371 = load <32 x i8>, ptr %i.ls, align 1, !tbaa !29
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 %index367 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 96
  %wide.load372 = load <32 x i8>, ptr %i.lt, align 1, !tbaa !29
  %wide.load373 = load <32 x i8>, ptr %i.lu, align 1, !tbaa !29
  %wide.load374 = load <32 x i8>, ptr %i.lv, align 1, !tbaa !29
  %wide.load375 = load <32 x i8>, ptr %i.lw, align 1, !tbaa !29
  %i.lx = lshr <32 x i8> %wide.load372, splat (i8 1)
  %i.ly = lshr <32 x i8> %wide.load373, splat (i8 1)
  %i.lz = lshr <32 x i8> %wide.load374, splat (i8 1)
  %i.ma = lshr <32 x i8> %wide.load375, splat (i8 1)
  %i.mb = sub <32 x i8> %wide.load368, %i.lx
  %i.mc = sub <32 x i8> %wide.load369, %i.ly
  %i.md = sub <32 x i8> %wide.load370, %i.lz
  %i.me = sub <32 x i8> %wide.load371, %i.ma
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 %index367 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 96
  store <32 x i8> %i.mb, ptr %i.mf, align 1, !tbaa !29
  store <32 x i8> %i.mc, ptr %i.mg, align 1, !tbaa !29
  store <32 x i8> %i.md, ptr %i.mh, align 1, !tbaa !29
  store <32 x i8> %i.me, ptr %i.mi, align 1, !tbaa !29
  %index.next376 = add nuw i64 %index367, 128     ; 2 uses
  %i.mj = icmp eq i64 %index.next376, %n.vec365
  br i1 %i.mj, label %middle.block377, label %vector.body366, !llvm.loop !1063

middle.block377:                                  ; preds = %vector.body366
  %cmp.n378 = icmp eq i64 %4, %n.vec365
  br i1 %cmp.n378, label %.preheader155, label %vec.epilog.iter.check382

vec.epilog.iter.check382:                         ; preds = %middle.block377
  %min.epilog.iters.check383 = icmp eq i64 %i.lo, 0
  br i1 %min.epilog.iters.check383, label %.lr.ph175.preheader, label %vec.epilog.ph384, !prof !93

vec.epilog.ph384:                                 ; preds = %vector.main.loop.iter.check362, %vec.epilog.iter.check382
  %vec.epilog.resume.val379 = phi i64 [ %n.vec365, %vec.epilog.iter.check382 ], [ 0, %vector.main.loop.iter.check362 ]
  %n.vec385 = and i64 %4, 536870904               ; 3 uses
  br label %vec.epilog.vector.body386

vec.epilog.vector.body386:                        ; preds = %vec.epilog.vector.body386, %vec.epilog.ph384
  %index387 = phi i64 [ %vec.epilog.resume.val379, %vec.epilog.ph384 ], [ %index.next390, %vec.epilog.vector.body386 ] ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 %index387
  %wide.load388 = load <8 x i8>, ptr %i.mk, align 1, !tbaa !29
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 %index387
  %wide.load389 = load <8 x i8>, ptr %i.ml, align 1, !tbaa !29
  %i.mm = lshr <8 x i8> %wide.load389, splat (i8 1)
  %i.mn = sub <8 x i8> %wide.load388, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 %index387
  store <8 x i8> %i.mn, ptr %i.mo, align 1, !tbaa !29
  %index.next390 = add nuw i64 %index387, 8       ; 2 uses
  %i.mp = icmp eq i64 %index.next390, %n.vec385
  br i1 %i.mp, label %vec.epilog.middle.block391, label %vec.epilog.vector.body386, !llvm.loop !1064

vec.epilog.middle.block391:                       ; preds = %vec.epilog.vector.body386
  %cmp.n392 = icmp eq i64 %4, %n.vec385
  br i1 %cmp.n392, label %.preheader155, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %iter.check380, %vector.memcheck357, %vec.epilog.iter.check382, %vec.epilog.middle.block391
  %.5174.ph = phi i64 [ 0, %iter.check380 ], [ 0, %vector.memcheck357 ], [ %n.vec365, %vec.epilog.iter.check382 ], [ %n.vec385, %vec.epilog.middle.block391 ] ; 3 uses
  %xtraiter681 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod682.not = icmp eq i64 %xtraiter681, 0
  br i1 %lcmp.mod682.not, label %.lr.ph175.prol.loopexit, label %.lr.ph175.prol

.lr.ph175.prol:                                   ; preds = %.lr.ph175.preheader, %.lr.ph175.prol
  %.5174.prol = phi i64 [ %i.mx, %.lr.ph175.prol ], [ %.5174.ph, %.lr.ph175.preheader ] ; 4 uses
  %prol.iter683 = phi i64 [ %prol.iter683.next, %.lr.ph175.prol ], [ 0, %.lr.ph175.preheader ]
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 %.5174.prol
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !29
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 %.5174.prol
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !29
  %i.mu = lshr i8 %i.mt, 1
  %i.mv = sub i8 %i.mr, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 %.5174.prol
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !29
  %i.mx = add nuw nsw i64 %.5174.prol, 1          ; 2 uses
  %prol.iter683.next = add i64 %prol.iter683, 1   ; 2 uses
  %prol.iter683.cmp.not = icmp eq i64 %prol.iter683.next, %xtraiter681
  br i1 %prol.iter683.cmp.not, label %.lr.ph175.prol.loopexit, label %.lr.ph175.prol, !llvm.loop !1065

.lr.ph175.prol.loopexit:                          ; preds = %.lr.ph175.prol, %.lr.ph175.preheader
  %.5174.unr = phi i64 [ %.5174.ph, %.lr.ph175.preheader ], [ %i.mx, %.lr.ph175.prol ]
  %i.my = sub nsw i64 %.5174.ph, %4
  %i.mz = icmp ugt i64 %i.my, -4
  br i1 %i.mz, label %.preheader155, label %.lr.ph175

.preheader154:                                    ; preds = %bb.c
  br i1 %.not138178, label %.preheader152, label %iter.check447

iter.check447:                                    ; preds = %.preheader154
  %min.iters.check432 = icmp samesign ult i64 %4, 8
  %i.na = sub i64 %i.a, %i.b
  %diff.check431 = icmp ugt i64 %i.na, -128
  %or.cond665 = or i1 %min.iters.check432, %diff.check431
  br i1 %or.cond665, label %.lr.ph180.preheader, label %vector.main.loop.iter.check433

vector.main.loop.iter.check433:                   ; preds = %iter.check447
  %min.iters.check434 = icmp samesign ult i64 %4, 128
  br i1 %min.iters.check434, label %vec.epilog.ph451, label %vector.ph435

vector.ph435:                                     ; preds = %vector.main.loop.iter.check433
  %i.nb = and i64 %4, 120
  %n.vec436 = and i64 %4, 536870784               ; 4 uses
  br label %vector.body437

vector.body437:                                   ; preds = %vector.ph435, %vector.body437
  %index438 = phi i64 [ 0, %vector.ph435 ], [ %index.next443, %vector.body437 ] ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 %index438 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 96
  %wide.load439 = load <32 x i8>, ptr %i.nc, align 1, !tbaa !29
  %wide.load440 = load <32 x i8>, ptr %i.nd, align 1, !tbaa !29
  %wide.load441 = load <32 x i8>, ptr %i.ne, align 1, !tbaa !29
  %wide.load442 = load <32 x i8>, ptr %i.nf, align 1, !tbaa !29
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 %index438 ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 96
  store <32 x i8> %wide.load439, ptr %i.ng, align 1, !tbaa !29
  store <32 x i8> %wide.load440, ptr %i.nh, align 1, !tbaa !29
  store <32 x i8> %wide.load441, ptr %i.ni, align 1, !tbaa !29
  store <32 x i8> %wide.load442, ptr %i.nj, align 1, !tbaa !29
  %index.next443 = add nuw i64 %index438, 128     ; 2 uses
  %i.nk = icmp eq i64 %index.next443, %n.vec436
  br i1 %i.nk, label %middle.block444, label %vector.body437, !llvm.loop !1066

middle.block444:                                  ; preds = %vector.body437
  %cmp.n445 = icmp eq i64 %4, %n.vec436
  br i1 %cmp.n445, label %.preheader152, label %vec.epilog.iter.check449

vec.epilog.iter.check449:                         ; preds = %middle.block444
  %min.epilog.iters.check450 = icmp eq i64 %i.nb, 0
  br i1 %min.epilog.iters.check450, label %.lr.ph180.preheader, label %vec.epilog.ph451, !prof !93

vec.epilog.ph451:                                 ; preds = %vector.main.loop.iter.check433, %vec.epilog.iter.check449
  %vec.epilog.resume.val446 = phi i64 [ %n.vec436, %vec.epilog.iter.check449 ], [ 0, %vector.main.loop.iter.check433 ]
  %n.vec452 = and i64 %4, 536870904               ; 3 uses
  br label %vec.epilog.vector.body453

vec.epilog.vector.body453:                        ; preds = %vec.epilog.vector.body453, %vec.epilog.ph451
  %index454 = phi i64 [ %vec.epilog.resume.val446, %vec.epilog.ph451 ], [ %index.next456, %vec.epilog.vector.body453 ] ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 %index454
  %wide.load455 = load <8 x i8>, ptr %i.nl, align 1, !tbaa !29
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 %index454
  store <8 x i8> %wide.load455, ptr %i.nm, align 1, !tbaa !29
  %index.next456 = add nuw i64 %index454, 8       ; 2 uses
  %i.nn = icmp eq i64 %index.next456, %n.vec452
  br i1 %i.nn, label %vec.epilog.middle.block457, label %vec.epilog.vector.body453, !llvm.loop !1067

vec.epilog.middle.block457:                       ; preds = %vec.epilog.vector.body453
  %cmp.n458 = icmp eq i64 %4, %n.vec452
  br i1 %cmp.n458, label %.preheader152, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %iter.check447, %vec.epilog.iter.check449, %vec.epilog.middle.block457
  %.7179.ph = phi i64 [ 0, %iter.check447 ], [ %n.vec436, %vec.epilog.iter.check449 ], [ %n.vec452, %vec.epilog.middle.block457 ] ; 3 uses
  %xtraiter687 = and i64 %4, 7                    ; 2 uses
  %lcmp.mod688.not = icmp eq i64 %xtraiter687, 0
  br i1 %lcmp.mod688.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol

.lr.ph180.prol:                                   ; preds = %.lr.ph180.preheader, %.lr.ph180.prol
  %.7179.prol = phi i64 [ %i.nr, %.lr.ph180.prol ], [ %.7179.ph, %.lr.ph180.preheader ] ; 3 uses
  %prol.iter689 = phi i64 [ %prol.iter689.next, %.lr.ph180.prol ], [ 0, %.lr.ph180.preheader ]
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 %.7179.prol
  %i.np = load i8, ptr %i.no, align 1, !tbaa !29
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 %.7179.prol
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !29
  %i.nr = add nuw nsw i64 %.7179.prol, 1          ; 2 uses
  %prol.iter689.next = add i64 %prol.iter689, 1   ; 2 uses
  %prol.iter689.cmp.not = icmp eq i64 %prol.iter689.next, %xtraiter687
  br i1 %prol.iter689.cmp.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol, !llvm.loop !1068

.lr.ph180.prol.loopexit:                          ; preds = %.lr.ph180.prol, %.lr.ph180.preheader
  %.7179.unr = phi i64 [ %.7179.ph, %.lr.ph180.preheader ], [ %i.nr, %.lr.ph180.prol ]
  %i.ns = sub nsw i64 %.7179.ph, %4
  %i.nt = icmp ugt i64 %i.ns, -8
  br i1 %i.nt, label %.preheader152, label %.lr.ph180

.preheader155:                                    ; preds = %.lr.ph175.prol.loopexit, %.lr.ph175, %middle.block377, %vec.epilog.middle.block391, %.preheader157
  %i.nu = icmp ult i64 %4, %3
  br i1 %i.nu, label %iter.check415, label %.loopexit

iter.check415:                                    ; preds = %.preheader155
  %i.nv = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check400 = icmp ult i64 %i.nv, 8
  br i1 %min.iters.check400, label %.lr.ph177.preheader, label %vector.memcheck394

vector.memcheck394:                               ; preds = %iter.check415
  %i.nw = add i64 %4, %i.b
  %i.nx = sub i64 %i.a, %i.nw
  %diff.check395 = icmp ugt i64 %i.nx, -32
  %i.ny = sub i64 %i.a, %i.b
  %diff.check396 = icmp ugt i64 %i.ny, -32
  %conflict.rdx397 = or i1 %diff.check395, %diff.check396
  %i.nz = sub i64 %i.c, %i.b
  %diff.check398 = icmp ugt i64 %i.nz, -32
  %conflict.rdx399 = or i1 %conflict.rdx397, %diff.check398
  br i1 %conflict.rdx399, label %.lr.ph177.preheader, label %vector.main.loop.iter.check401

vector.main.loop.iter.check401:                   ; preds = %vector.memcheck394
  %min.iters.check402 = icmp ult i64 %i.nv, 32
  br i1 %min.iters.check402, label %vec.epilog.ph419, label %vector.ph403

vector.ph403:                                     ; preds = %vector.main.loop.iter.check401
  %i.oa = and i64 %i.nv, 24
  %n.vec404 = and i64 %i.nv, -32                  ; 4 uses
  %i.ob = add i64 %4, %n.vec404
  br label %vector.body405

vector.body405:                                   ; preds = %vector.ph403, %vector.body405
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next410, %vector.body405 ] ; 3 uses
  %i.oc = add nuw i64 %4, %index406               ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 %i.oc
  %wide.load407 = load <32 x i8>, ptr %i.od, align 1, !tbaa !29
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 %index406
  %wide.load408 = load <32 x i8>, ptr %i.oe, align 1, !tbaa !29
  %i.of = zext <32 x i8> %wide.load408 to <32 x i16>
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 %i.oc
  %wide.load409 = load <32 x i8>, ptr %i.og, align 1, !tbaa !29
  %i.oh = zext <32 x i8> %wide.load409 to <32 x i16>
  %i.oi = add nuw nsw <32 x i16> %i.oh, %i.of
  %i.oj = lshr <32 x i16> %i.oi, splat (i16 1)
  %i.ok = trunc nuw <32 x i16> %i.oj to <32 x i8>
  %i.ol = sub <32 x i8> %wide.load407, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 %i.oc
  store <32 x i8> %i.ol, ptr %i.om, align 1, !tbaa !29
  %index.next410 = add nuw i64 %index406, 32      ; 2 uses
  %i.on = icmp eq i64 %index.next410, %n.vec404
  br i1 %i.on, label %middle.block411, label %vector.body405, !llvm.loop !1069

middle.block411:                                  ; preds = %vector.body405
  %cmp.n412 = icmp eq i64 %i.nv, %n.vec404
  br i1 %cmp.n412, label %.loopexit, label %vec.epilog.iter.check417

vec.epilog.iter.check417:                         ; preds = %middle.block411
  %min.epilog.iters.check418 = icmp eq i64 %i.oa, 0
  br i1 %min.epilog.iters.check418, label %.lr.ph177.preheader, label %vec.epilog.ph419, !prof !53

vec.epilog.ph419:                                 ; preds = %vector.main.loop.iter.check401, %vec.epilog.iter.check417
  %vec.epilog.resume.val413 = phi i64 [ %n.vec404, %vec.epilog.iter.check417 ], [ 0, %vector.main.loop.iter.check401 ]
  %n.vec420 = and i64 %i.nv, -8                   ; 3 uses
  %i.oo = add i64 %4, %n.vec420
  br label %vec.epilog.vector.body421

vec.epilog.vector.body421:                        ; preds = %vec.epilog.vector.body421, %vec.epilog.ph419
  %index422 = phi i64 [ %vec.epilog.resume.val413, %vec.epilog.ph419 ], [ %index.next426, %vec.epilog.vector.body421 ] ; 3 uses
  %i.op = add nuw i64 %4, %index422               ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 %i.op
  %wide.load423 = load <8 x i8>, ptr %i.oq, align 1, !tbaa !29
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %index422
  %wide.load424 = load <8 x i8>, ptr %i.or, align 1, !tbaa !29
  %i.os = zext <8 x i8> %wide.load424 to <8 x i16>
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 %i.op
  %wide.load425 = load <8 x i8>, ptr %i.ot, align 1, !tbaa !29
  %i.ou = zext <8 x i8> %wide.load425 to <8 x i16>
  %i.ov = add nuw nsw <8 x i16> %i.ou, %i.os
  %i.ow = lshr <8 x i16> %i.ov, splat (i16 1)
  %i.ox = trunc nuw <8 x i16> %i.ow to <8 x i8>
  %i.oy = sub <8 x i8> %wide.load423, %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 %i.op
  store <8 x i8> %i.oy, ptr %i.oz, align 1, !tbaa !29
  %index.next426 = add nuw i64 %index422, 8       ; 2 uses
  %i.pa = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.pa, label %vec.epilog.middle.block427, label %vec.epilog.vector.body421, !llvm.loop !1070

vec.epilog.middle.block427:                       ; preds = %vec.epilog.vector.body421
  %cmp.n428 = icmp eq i64 %i.nv, %n.vec420
  br i1 %cmp.n428, label %.loopexit, label %.lr.ph177.preheader

.lr.ph177.preheader:                              ; preds = %iter.check415, %vector.memcheck394, %vec.epilog.iter.check417, %vec.epilog.middle.block427
  %.6176.ph = phi i64 [ %4, %iter.check415 ], [ %4, %vector.memcheck394 ], [ %i.ob, %vec.epilog.iter.check417 ], [ %i.oo, %vec.epilog.middle.block427 ] ; 4 uses
  %i.pb = sub i64 %3, %.6176.ph
  %xtraiter684 = and i64 %i.pb, 3                 ; 2 uses
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol

.lr.ph177.prol:                                   ; preds = %.lr.ph177.preheader, %.lr.ph177.prol
  %.6176.prol = phi i64 [ %i.pq, %.lr.ph177.prol ], [ %.6176.ph, %.lr.ph177.preheader ] ; 5 uses
  %prol.iter686 = phi i64 [ %prol.iter686.next, %.lr.ph177.prol ], [ 0, %.lr.ph177.preheader ]
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 %.6176.prol
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !29
  %i.pe = sub nuw i64 %.6176.prol, %4
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !29
  %i.ph = zext i8 %i.pg to i16
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 %.6176.prol
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !29
  %i.pk = zext i8 %i.pj to i16
  %i.pl = add nuw nsw i16 %i.pk, %i.ph
  %i.pm = lshr i16 %i.pl, 1
  %i.pn = trunc nuw i16 %i.pm to i8
  %i.po = sub i8 %i.pd, %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 %.6176.prol
  store i8 %i.po, ptr %i.pp, align 1, !tbaa !29
  %i.pq = add nuw i64 %.6176.prol, 1              ; 2 uses
  %prol.iter686.next = add i64 %prol.iter686, 1   ; 2 uses
  %prol.iter686.cmp.not = icmp eq i64 %prol.iter686.next, %xtraiter684
  br i1 %prol.iter686.cmp.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol, !llvm.loop !1071

.lr.ph177.prol.loopexit:                          ; preds = %.lr.ph177.prol, %.lr.ph177.preheader
  %.6176.unr = phi i64 [ %.6176.ph, %.lr.ph177.preheader ], [ %i.pq, %.lr.ph177.prol ]
  %i.pr = sub i64 %.6176.ph, %3
  %i.ps = icmp ugt i64 %i.pr, -4
  br i1 %i.ps, label %.loopexit, label %.lr.ph177

.lr.ph175:                                        ; preds = %.lr.ph175.prol.loopexit, %.lr.ph175
  %.5174 = phi i64 [ %i.qy, %.lr.ph175 ], [ %.5174.unr, %.lr.ph175.prol.loopexit ] ; 7 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 %.5174
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !29
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 %.5174
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !29
  %i.px = lshr i8 %i.pw, 1
  %i.py = sub i8 %i.pu, %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 %.5174
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !29
  %i.qa = add nuw nsw i64 %.5174, 1               ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 %i.qa
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !29
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 %i.qa
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !29
  %i.qf = lshr i8 %i.qe, 1
  %i.qg = sub i8 %i.qc, %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 %i.qa
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !29
  %i.qi = add nuw nsw i64 %.5174, 2               ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !29
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 %i.qi
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !29
  %i.qn = lshr i8 %i.qm, 1
  %i.qo = sub i8 %i.qk, %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 %i.qi
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !29
  %i.qq = add nuw nsw i64 %.5174, 3               ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 %i.qq
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !29
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 %i.qq
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !29
  %i.qv = lshr i8 %i.qu, 1
  %i.qw = sub i8 %i.qs, %i.qv
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 %i.qq
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !29
  %i.qy = add nuw nsw i64 %.5174, 4               ; 2 uses
  %.not139.3 = icmp eq i64 %i.qy, %4
  br i1 %.not139.3, label %.preheader155, label %.lr.ph175, !llvm.loop !1072

.lr.ph177:                                        ; preds = %.lr.ph177.prol.loopexit, %.lr.ph177
  %.6176 = phi i64 [ %i.tg, %.lr.ph177 ], [ %.6176.unr, %.lr.ph177.prol.loopexit ] ; 8 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 %.6176
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !29
  %i.rb = sub nuw i64 %.6176, %4
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !29
  %i.re = zext i8 %i.rd to i16
  %i.rf = getelementptr inbounds nuw i8, ptr %2, i64 %.6176
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !29
  %i.rh = zext i8 %i.rg to i16
  %i.ri = add nuw nsw i16 %i.rh, %i.re
  %i.rj = lshr i16 %i.ri, 1
  %i.rk = trunc nuw i16 %i.rj to i8
  %i.rl = sub i8 %i.ra, %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 %.6176
  store i8 %i.rl, ptr %i.rm, align 1, !tbaa !29
  %i.rn = add nuw i64 %.6176, 1                   ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !29
  %i.rq = sub nuw i64 %i.rn, %4
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !29
  %i.rt = zext i8 %i.rs to i16
  %i.ru = getelementptr inbounds nuw i8, ptr %2, i64 %i.rn
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !29
  %i.rw = zext i8 %i.rv to i16
  %i.rx = add nuw nsw i16 %i.rw, %i.rt
  %i.ry = lshr i16 %i.rx, 1
  %i.rz = trunc nuw i16 %i.ry to i8
  %i.sa = sub i8 %i.rp, %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 %i.rn
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !29
  %i.sc = add nuw i64 %.6176, 2                   ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 %i.sc
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !29
  %i.sf = sub nuw i64 %i.sc, %4
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !29
  %i.si = zext i8 %i.sh to i16
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 %i.sc
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !29
  %i.sl = zext i8 %i.sk to i16
  %i.sm = add nuw nsw i16 %i.sl, %i.si
  %i.sn = lshr i16 %i.sm, 1
  %i.so = trunc nuw i16 %i.sn to i8
  %i.sp = sub i8 %i.se, %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 %i.sc
  store i8 %i.sp, ptr %i.sq, align 1, !tbaa !29
  %i.sr = add nuw i64 %.6176, 3                   ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !29
  %i.su = sub nuw i64 %i.sr, %4
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !29
  %i.sx = zext i8 %i.sw to i16
  %i.sy = getelementptr inbounds nuw i8, ptr %2, i64 %i.sr
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !29
  %i.ta = zext i8 %i.sz to i16
  %i.tb = add nuw nsw i16 %i.ta, %i.sx
  %i.tc = lshr i16 %i.tb, 1
  %i.td = trunc nuw i16 %i.tc to i8
  %i.te = sub i8 %i.st, %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 %i.sr
  store i8 %i.te, ptr %i.tf, align 1, !tbaa !29
  %i.tg = add nuw i64 %.6176, 4                   ; 2 uses
  %exitcond206.not.3 = icmp eq i64 %i.tg, %3
  br i1 %exitcond206.not.3, label %.loopexit, label %.lr.ph177, !llvm.loop !1073

.preheader152:                                    ; preds = %.lr.ph180.prol.loopexit, %.lr.ph180, %middle.block444, %vec.epilog.middle.block457, %.preheader154
  %i.th = icmp ult i64 %4, %3
  br i1 %i.th, label %iter.check484, label %.loopexit

iter.check484:                                    ; preds = %.preheader152
  %i.ti = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check464 = icmp ult i64 %i.ti, 16
  br i1 %min.iters.check464, label %.lr.ph182.preheader, label %vector.memcheck460

vector.memcheck460:                               ; preds = %iter.check484
  %i.tj = add i64 %4, %i.b
  %i.tk = sub i64 %i.a, %i.tj
  %diff.check461 = icmp ugt i64 %i.tk, -128
  %i.tl = sub i64 %i.a, %i.b
  %diff.check462 = icmp ugt i64 %i.tl, -128
  %conflict.rdx463 = or i1 %diff.check461, %diff.check462
  br i1 %conflict.rdx463, label %.lr.ph182.preheader, label %vector.main.loop.iter.check465

vector.main.loop.iter.check465:                   ; preds = %vector.memcheck460
  %min.iters.check466 = icmp ult i64 %i.ti, 128
  br i1 %min.iters.check466, label %vec.epilog.ph488, label %vector.ph467

vector.ph467:                                     ; preds = %vector.main.loop.iter.check465
  %i.tm = and i64 %i.ti, 112
  %n.vec468 = and i64 %i.ti, -128                 ; 4 uses
  %i.tn = add i64 %4, %n.vec468
  br label %vector.body469

vector.body469:                                   ; preds = %vector.ph467, %vector.body469
  %index470 = phi i64 [ 0, %vector.ph467 ], [ %index.next479, %vector.body469 ] ; 3 uses
  %i.to = add nuw i64 %4, %index470               ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 %i.to ; 4 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 96
  %wide.load471 = load <32 x i8>, ptr %i.tp, align 1, !tbaa !29
  %wide.load472 = load <32 x i8>, ptr %i.tq, align 1, !tbaa !29
  %wide.load473 = load <32 x i8>, ptr %i.tr, align 1, !tbaa !29
  %wide.load474 = load <32 x i8>, ptr %i.ts, align 1, !tbaa !29
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 %index470 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 32
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 64
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 96
  %wide.load475 = load <32 x i8>, ptr %i.tt, align 1, !tbaa !29
  %wide.load476 = load <32 x i8>, ptr %i.tu, align 1, !tbaa !29
  %wide.load477 = load <32 x i8>, ptr %i.tv, align 1, !tbaa !29
  %wide.load478 = load <32 x i8>, ptr %i.tw, align 1, !tbaa !29
  %i.tx = lshr <32 x i8> %wide.load475, splat (i8 1)
  %i.ty = lshr <32 x i8> %wide.load476, splat (i8 1)
  %i.tz = lshr <32 x i8> %wide.load477, splat (i8 1)
  %i.ua = lshr <32 x i8> %wide.load478, splat (i8 1)
  %i.ub = sub <32 x i8> %wide.load471, %i.tx
  %i.uc = sub <32 x i8> %wide.load472, %i.ty
  %i.ud = sub <32 x i8> %wide.load473, %i.tz
  %i.ue = sub <32 x i8> %wide.load474, %i.ua
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 %i.to ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 32
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 96
  store <32 x i8> %i.ub, ptr %i.uf, align 1, !tbaa !29
  store <32 x i8> %i.uc, ptr %i.ug, align 1, !tbaa !29
  store <32 x i8> %i.ud, ptr %i.uh, align 1, !tbaa !29
  store <32 x i8> %i.ue, ptr %i.ui, align 1, !tbaa !29
  %index.next479 = add nuw i64 %index470, 128     ; 2 uses
  %i.uj = icmp eq i64 %index.next479, %n.vec468
  br i1 %i.uj, label %middle.block480, label %vector.body469, !llvm.loop !1074

middle.block480:                                  ; preds = %vector.body469
  %cmp.n481 = icmp eq i64 %i.ti, %n.vec468
  br i1 %cmp.n481, label %.loopexit, label %vec.epilog.iter.check486

vec.epilog.iter.check486:                         ; preds = %middle.block480
  %min.epilog.iters.check487 = icmp eq i64 %i.tm, 0
  br i1 %min.epilog.iters.check487, label %.lr.ph182.preheader, label %vec.epilog.ph488, !prof !1094

vec.epilog.ph488:                                 ; preds = %vector.main.loop.iter.check465, %vec.epilog.iter.check486
  %vec.epilog.resume.val482 = phi i64 [ %n.vec468, %vec.epilog.iter.check486 ], [ 0, %vector.main.loop.iter.check465 ]
  %n.vec489 = and i64 %i.ti, -16                  ; 3 uses
  %i.uk = add i64 %4, %n.vec489
  br label %vec.epilog.vector.body490

vec.epilog.vector.body490:                        ; preds = %vec.epilog.vector.body490, %vec.epilog.ph488
  %index491 = phi i64 [ %vec.epilog.resume.val482, %vec.epilog.ph488 ], [ %index.next494, %vec.epilog.vector.body490 ] ; 3 uses
  %i.ul = add nuw i64 %4, %index491               ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 %i.ul
  %wide.load492 = load <16 x i8>, ptr %i.um, align 1, !tbaa !29
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 %index491
  %wide.load493 = load <16 x i8>, ptr %i.un, align 1, !tbaa !29
  %i.uo = lshr <16 x i8> %wide.load493, splat (i8 1)
  %i.up = sub <16 x i8> %wide.load492, %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ul
  store <16 x i8> %i.up, ptr %i.uq, align 1, !tbaa !29
  %index.next494 = add nuw i64 %index491, 16      ; 2 uses
  %i.ur = icmp eq i64 %index.next494, %n.vec489
  br i1 %i.ur, label %vec.epilog.middle.block495, label %vec.epilog.vector.body490, !llvm.loop !1075

vec.epilog.middle.block495:                       ; preds = %vec.epilog.vector.body490
  %cmp.n496 = icmp eq i64 %i.ti, %n.vec489
  br i1 %cmp.n496, label %.loopexit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %iter.check484, %vector.memcheck460, %vec.epilog.iter.check486, %vec.epilog.middle.block495
  %.8181.ph = phi i64 [ %4, %iter.check484 ], [ %4, %vector.memcheck460 ], [ %i.tn, %vec.epilog.iter.check486 ], [ %i.uk, %vec.epilog.middle.block495 ] ; 4 uses
  %i.us = sub i64 %3, %.8181.ph
  %xtraiter690 = and i64 %i.us, 3                 ; 2 uses
  %lcmp.mod691.not = icmp eq i64 %xtraiter690, 0
  br i1 %lcmp.mod691.not, label %.lr.ph182.prol.loopexit, label %.lr.ph182.prol

.lr.ph182.prol:                                   ; preds = %.lr.ph182.preheader, %.lr.ph182.prol
  %.8181.prol = phi i64 [ %i.vb, %.lr.ph182.prol ], [ %.8181.ph, %.lr.ph182.preheader ] ; 4 uses
  %prol.iter692 = phi i64 [ %prol.iter692.next, %.lr.ph182.prol ], [ 0, %.lr.ph182.preheader ]
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 %.8181.prol
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !29
  %i.uv = sub nuw i64 %.8181.prol, %4
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !29
  %i.uy = lshr i8 %i.ux, 1
  %i.uz = sub i8 %i.uu, %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 %.8181.prol
  store i8 %i.uz, ptr %i.va, align 1, !tbaa !29
  %i.vb = add nuw i64 %.8181.prol, 1              ; 2 uses
  %prol.iter692.next = add i64 %prol.iter692, 1   ; 2 uses
  %prol.iter692.cmp.not = icmp eq i64 %prol.iter692.next, %xtraiter690
  br i1 %prol.iter692.cmp.not, label %.lr.ph182.prol.loopexit, label %.lr.ph182.prol, !llvm.loop !1076

.lr.ph182.prol.loopexit:                          ; preds = %.lr.ph182.prol, %.lr.ph182.preheader
  %.8181.unr = phi i64 [ %.8181.ph, %.lr.ph182.preheader ], [ %i.vb, %.lr.ph182.prol ]
  %i.vc = sub i64 %.8181.ph, %3
  %i.vd = icmp ugt i64 %i.vc, -4
  br i1 %i.vd, label %.loopexit, label %.lr.ph182

.lr.ph180:                                        ; preds = %.lr.ph180.prol.loopexit, %.lr.ph180
  %.7179 = phi i64 [ %i.wj, %.lr.ph180 ], [ %.7179.unr, %.lr.ph180.prol.loopexit ] ; 10 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 %.7179
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !29
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 %.7179
  store i8 %i.vf, ptr %i.vg, align 1, !tbaa !29
  %i.vh = add nuw nsw i64 %.7179, 1               ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 %i.vh
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !29
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 %i.vh
  store i8 %i.vj, ptr %i.vk, align 1, !tbaa !29
  %i.vl = add nuw nsw i64 %.7179, 2               ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 %i.vl
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !29
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 %i.vl
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !29
  %i.vp = add nuw nsw i64 %.7179, 3               ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !29
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 %i.vp
  store i8 %i.vr, ptr %i.vs, align 1, !tbaa !29
  %i.vt = add nuw nsw i64 %.7179, 4               ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 %i.vt
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !29
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 %i.vt
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !29
  %i.vx = add nuw nsw i64 %.7179, 5               ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !29
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 %i.vx
  store i8 %i.vz, ptr %i.wa, align 1, !tbaa !29
  %i.wb = add nuw nsw i64 %.7179, 6               ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 %i.wb
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !29
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 %i.wb
  store i8 %i.wd, ptr %i.we, align 1, !tbaa !29
  %i.wf = add nuw nsw i64 %.7179, 7               ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 %i.wf
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !29
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 %i.wf
  store i8 %i.wh, ptr %i.wi, align 1, !tbaa !29
  %i.wj = add nuw nsw i64 %.7179, 8               ; 2 uses
  %.not138.7 = icmp eq i64 %i.wj, %4
  br i1 %.not138.7, label %.preheader152, label %.lr.ph180, !llvm.loop !1077

.lr.ph182:                                        ; preds = %.lr.ph182.prol.loopexit, %.lr.ph182
  %.8181 = phi i64 [ %i.xt, %.lr.ph182 ], [ %.8181.unr, %.lr.ph182.prol.loopexit ] ; 7 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 %.8181
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !29
  %i.wm = sub nuw i64 %.8181, %4
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 %i.wm
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !29
  %i.wp = lshr i8 %i.wo, 1
  %i.wq = sub i8 %i.wl, %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 %.8181
  store i8 %i.wq, ptr %i.wr, align 1, !tbaa !29
  %i.ws = add nuw i64 %.8181, 1                   ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !29
  %i.wv = sub nuw i64 %i.ws, %4
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !29
  %i.wy = lshr i8 %i.wx, 1
  %i.wz = sub i8 %i.wu, %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 %i.ws
  store i8 %i.wz, ptr %i.xa, align 1, !tbaa !29
  %i.xb = add nuw i64 %.8181, 2                   ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !29
  %i.xe = sub nuw i64 %i.xb, %4
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 %i.xe
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !29
  %i.xh = lshr i8 %i.xg, 1
  %i.xi = sub i8 %i.xd, %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 %i.xb
  store i8 %i.xi, ptr %i.xj, align 1, !tbaa !29
  %i.xk = add nuw i64 %.8181, 3                   ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !29
  %i.xn = sub nuw i64 %i.xk, %4
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 %i.xn
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !29
  %i.xq = lshr i8 %i.xp, 1
  %i.xr = sub i8 %i.xm, %i.xq
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 %i.xk
  store i8 %i.xr, ptr %i.xs, align 1, !tbaa !29
  %i.xt = add nuw i64 %.8181, 4                   ; 2 uses
  %exitcond207.not.3 = icmp eq i64 %i.xt, %3
  br i1 %exitcond207.not.3, label %.loopexit, label %.lr.ph182, !llvm.loop !1078

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %.not135168 = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not, label %.preheader160, label %.preheader163

.preheader163:                                    ; preds = %bb.d
  br i1 %.not135168, label %.preheader161, label %iter.check

iter.check:                                       ; preds = %.preheader163
  %min.iters.check = icmp samesign ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.xu = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.xu, -128
  %i.xv = sub i64 %i.c, %i.b
  %diff.check234 = icmp ugt i64 %i.xv, -128
  %conflict.rdx = or i1 %diff.check, %diff.check234
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check235 = icmp samesign ult i64 %4, 128
  br i1 %min.iters.check235, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xw = and i64 %4, 120
  %n.vec = and i64 %4, 536870784                  ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 32
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xx, i64 64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 96
  %wide.load = load <32 x i8>, ptr %i.xx, align 1, !tbaa !29
  %wide.load236 = load <32 x i8>, ptr %i.xy, align 1, !tbaa !29
  %wide.load237 = load <32 x i8>, ptr %i.xz, align 1, !tbaa !29
  %wide.load238 = load <32 x i8>, ptr %i.ya, align 1, !tbaa !29
  %i.yb = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 4 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 32
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yb, i64 96
  %wide.load239 = load <32 x i8>, ptr %i.yb, align 1, !tbaa !29
  %wide.load240 = load <32 x i8>, ptr %i.yc, align 1, !tbaa !29
  %wide.load241 = load <32 x i8>, ptr %i.yd, align 1, !tbaa !29
  %wide.load242 = load <32 x i8>, ptr %i.ye, align 1, !tbaa !29
  %i.yf = sub <32 x i8> %wide.load, %wide.load239
  %i.yg = sub <32 x i8> %wide.load236, %wide.load240
  %i.yh = sub <32 x i8> %wide.load237, %wide.load241
  %i.yi = sub <32 x i8> %wide.load238, %wide.load242
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 4 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 32
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 64
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 96
  store <32 x i8> %i.yf, ptr %i.yj, align 1, !tbaa !29
  store <32 x i8> %i.yg, ptr %i.yk, align 1, !tbaa !29
  store <32 x i8> %i.yh, ptr %i.yl, align 1, !tbaa !29
  store <32 x i8> %i.yi, ptr %i.ym, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.yn = icmp eq i64 %index.next, %n.vec
  br i1 %i.yn, label %middle.block, label %vector.body, !llvm.loop !1079

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.preheader161, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.xw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec243 = and i64 %4, 536870904               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index244 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next247, %vec.epilog.vector.body ] ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 %index244
  %wide.load245 = load <8 x i8>, ptr %i.yo, align 1, !tbaa !29
  %i.yp = getelementptr inbounds nuw i8, ptr %2, i64 %index244
  %wide.load246 = load <8 x i8>, ptr %i.yp, align 1, !tbaa !29
  %i.yq = sub <8 x i8> %wide.load245, %wide.load246
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 %index244
  store <8 x i8> %i.yq, ptr %i.yr, align 1, !tbaa !29
  %index.next247 = add nuw i64 %index244, 8       ; 2 uses
  %i.ys = icmp eq i64 %index.next247, %n.vec243
  br i1 %i.ys, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1080

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n248 = icmp eq i64 %4, %n.vec243
  br i1 %cmp.n248, label %.preheader161, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.9165.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec243, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %4, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.9165.prol = phi i64 [ %i.yz, %.lr.ph.prol ], [ %.9165.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 %.9165.prol
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !29
  %i.yv = getelementptr inbounds nuw i8, ptr %2, i64 %.9165.prol
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !29
  %i.yx = sub i8 %i.yu, %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 %.9165.prol
  store i8 %i.yx, ptr %i.yy, align 1, !tbaa !29
  %i.yz = add nuw nsw i64 %.9165.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1081

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.9165.unr = phi i64 [ %.9165.ph, %.lr.ph.preheader ], [ %i.yz, %.lr.ph.prol ]
  %i.za = sub nsw i64 %.9165.ph, %4
  %i.zb = icmp ugt i64 %i.za, -8
  br i1 %i.zb, label %.preheader161, label %.lr.ph

.preheader160:                                    ; preds = %bb.d
  br i1 %.not135168, label %.preheader158, label %iter.check306

iter.check306:                                    ; preds = %.preheader160
  %min.iters.check291 = icmp samesign ult i64 %4, 8
  %i.zc = sub i64 %i.a, %i.b
  %diff.check290 = icmp ugt i64 %i.zc, -128
  %or.cond666 = or i1 %min.iters.check291, %diff.check290
  br i1 %or.cond666, label %.lr.ph170.preheader, label %vector.main.loop.iter.check292

vector.main.loop.iter.check292:                   ; preds = %iter.check306
  %min.iters.check293 = icmp samesign ult i64 %4, 128
  br i1 %min.iters.check293, label %vec.epilog.ph310, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check292
  %i.zd = and i64 %4, 120
  %n.vec295 = and i64 %4, 536870784               ; 4 uses
  br label %vector.body296

vector.body296:                                   ; preds = %vector.ph294, %vector.body296
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next302, %vector.body296 ] ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 %index297 ; 4 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 64
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 96
  %wide.load298 = load <32 x i8>, ptr %i.ze, align 1, !tbaa !29
  %wide.load299 = load <32 x i8>, ptr %i.zf, align 1, !tbaa !29
  %wide.load300 = load <32 x i8>, ptr %i.zg, align 1, !tbaa !29
  %wide.load301 = load <32 x i8>, ptr %i.zh, align 1, !tbaa !29
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 %index297 ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 32
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 64
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zi, i64 96
  store <32 x i8> %wide.load298, ptr %i.zi, align 1, !tbaa !29
  store <32 x i8> %wide.load299, ptr %i.zj, align 1, !tbaa !29
  store <32 x i8> %wide.load300, ptr %i.zk, align 1, !tbaa !29
  store <32 x i8> %wide.load301, ptr %i.zl, align 1, !tbaa !29
  %index.next302 = add nuw i64 %index297, 128     ; 2 uses
  %i.zm = icmp eq i64 %index.next302, %n.vec295
  br i1 %i.zm, label %middle.block303, label %vector.body296, !llvm.loop !1082

middle.block303:                                  ; preds = %vector.body296
  %cmp.n304 = icmp eq i64 %4, %n.vec295
  br i1 %cmp.n304, label %.preheader158, label %vec.epilog.iter.check308

vec.epilog.iter.check308:                         ; preds = %middle.block303
  %min.epilog.iters.check309 = icmp eq i64 %i.zd, 0
  br i1 %min.epilog.iters.check309, label %.lr.ph170.preheader, label %vec.epilog.ph310, !prof !93

vec.epilog.ph310:                                 ; preds = %vector.main.loop.iter.check292, %vec.epilog.iter.check308
  %vec.epilog.resume.val305 = phi i64 [ %n.vec295, %vec.epilog.iter.check308 ], [ 0, %vector.main.loop.iter.check292 ]
  %n.vec311 = and i64 %4, 536870904               ; 3 uses
  br label %vec.epilog.vector.body312

vec.epilog.vector.body312:                        ; preds = %vec.epilog.vector.body312, %vec.epilog.ph310
  %index313 = phi i64 [ %vec.epilog.resume.val305, %vec.epilog.ph310 ], [ %index.next315, %vec.epilog.vector.body312 ] ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 %index313
  %wide.load314 = load <8 x i8>, ptr %i.zn, align 1, !tbaa !29
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 %index313
  store <8 x i8> %wide.load314, ptr %i.zo, align 1, !tbaa !29
  %index.next315 = add nuw i64 %index313, 8       ; 2 uses
  %i.zp = icmp eq i64 %index.next315, %n.vec311
  br i1 %i.zp, label %vec.epilog.middle.block316, label %vec.epilog.vector.body312, !llvm.loop !1083

vec.epilog.middle.block316:                       ; preds = %vec.epilog.vector.body312
  %cmp.n317 = icmp eq i64 %4, %n.vec311
  br i1 %cmp.n317, label %.preheader158, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %iter.check306, %vec.epilog.iter.check308, %vec.epilog.middle.block316
  %.11169.ph = phi i64 [ 0, %iter.check306 ], [ %n.vec295, %vec.epilog.iter.check308 ], [ %n.vec311, %vec.epilog.middle.block316 ] ; 3 uses
  %xtraiter675 = and i64 %4, 7                    ; 2 uses
  %lcmp.mod676.not = icmp eq i64 %xtraiter675, 0
  br i1 %lcmp.mod676.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol

.lr.ph170.prol:                                   ; preds = %.lr.ph170.preheader, %.lr.ph170.prol
  %.11169.prol = phi i64 [ %i.zt, %.lr.ph170.prol ], [ %.11169.ph, %.lr.ph170.preheader ] ; 3 uses
  %prol.iter677 = phi i64 [ %prol.iter677.next, %.lr.ph170.prol ], [ 0, %.lr.ph170.preheader ]
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 %.11169.prol
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !29
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 %.11169.prol
  store i8 %i.zr, ptr %i.zs, align 1, !tbaa !29
  %i.zt = add nuw nsw i64 %.11169.prol, 1         ; 2 uses
  %prol.iter677.next = add i64 %prol.iter677, 1   ; 2 uses
  %prol.iter677.cmp.not = icmp eq i64 %prol.iter677.next, %xtraiter675
  br i1 %prol.iter677.cmp.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol, !llvm.loop !1084

.lr.ph170.prol.loopexit:                          ; preds = %.lr.ph170.prol, %.lr.ph170.preheader
  %.11169.unr = phi i64 [ %.11169.ph, %.lr.ph170.preheader ], [ %i.zt, %.lr.ph170.prol ]
  %i.zu = sub nsw i64 %.11169.ph, %4
  %i.zv = icmp ugt i64 %i.zu, -8
  br i1 %i.zv, label %.preheader158, label %.lr.ph170

.preheader161:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader163
  %i.zw = icmp ult i64 %4, %3
  br i1 %i.zw, label %iter.check273, label %.loopexit

iter.check273:                                    ; preds = %.preheader161
  %i.zx = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check257 = icmp ult i64 %i.zx, 8
  br i1 %min.iters.check257, label %.lr.ph167.preheader, label %vector.memcheck249

vector.memcheck249:                               ; preds = %iter.check273
  %6 = add i64 %4, %i.b                           ; 2 uses
  %7 = sub i64 %i.a, %6
  %diff.check260 = icmp ugt i64 %7, -32
  %8 = sub i64 %i.a, %i.b
  %diff.check261 = icmp ugt i64 %8, -32
  %conflict.rdx262 = or i1 %diff.check260, %diff.check261
  %9 = sub i64 %i.c, %6
  %diff.check263 = icmp ugt i64 %9, -32
  %conflict.rdx264 = or i1 %conflict.rdx262, %diff.check263
  %10 = sub i64 %i.c, %i.b
  %diff.check265 = icmp ugt i64 %10, -32
  %conflict.rdx266 = or i1 %conflict.rdx264, %diff.check265
  br i1 %conflict.rdx266, label %.lr.ph167.preheader, label %vector.main.loop.iter.check258

vector.main.loop.iter.check258:                   ; preds = %vector.memcheck249
  %min.iters.check259 = icmp ult i64 %i.zx, 32
  br i1 %min.iters.check259, label %vec.epilog.ph277, label %vector.ph260

vector.ph260:                                     ; preds = %vector.main.loop.iter.check258
  %i.zy = and i64 %i.zx, 24
  %n.vec261 = and i64 %i.zx, -32                  ; 4 uses
  %i.zz = add i64 %4, %n.vec261
  br label %vector.body262

vector.body262:                                   ; preds = %vector.ph260, %vector.body262
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next268, %vector.body262 ] ; 4 uses
  %i.aaa = add nuw i64 %4, %index263              ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aaa
  %wide.load264 = load <32 x i8>, ptr %i.aab, align 1, !tbaa !29
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 %index263
  %wide.load265 = load <32 x i8>, ptr %i.aac, align 1, !tbaa !29 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %2, i64 %i.aaa
  %wide.load266 = load <32 x i8>, ptr %i.aad, align 1, !tbaa !29 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %2, i64 %index263
  %wide.load267 = load <32 x i8>, ptr %i.aae, align 1, !tbaa !29 ; 2 uses
  %i.aaf = zext <32 x i8> %wide.load266 to <32 x i32> ; 2 uses
  %i.aag = zext <32 x i8> %wide.load267 to <32 x i32> ; 3 uses
  %i.aah = sub nsw <32 x i32> %i.aaf, %i.aag
  %i.aai = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.aah, i1 true) ; 2 uses
  %i.aaj = zext <32 x i8> %wide.load265 to <32 x i32> ; 2 uses
  %i.aak = sub nsw <32 x i32> %i.aaj, %i.aag
  %i.aal = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.aak, i1 true) ; 2 uses
  %i.aam = add nuw nsw <32 x i32> %i.aaf, %i.aaj
  %i.aan = shl nuw nsw <32 x i32> %i.aag, splat (i32 1)
  %i.aao = sub nsw <32 x i32> %i.aam, %i.aan
  %i.aap = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.aao, i1 true)
  %i.aaq = icmp samesign ult <32 x i32> %i.aal, %i.aai
  %i.aar = select <32 x i1> %i.aaq, <32 x i8> %wide.load266, <32 x i8> %wide.load265
  %i.aas = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.aal, <32 x i32> %i.aai)
  %i.aat = icmp samesign ult <32 x i32> %i.aap, %i.aas
  %i.aau = select <32 x i1> %i.aat, <32 x i8> %wide.load267, <32 x i8> %i.aar
  %i.aav = sub <32 x i8> %wide.load264, %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 %i.aaa
  store <32 x i8> %i.aav, ptr %i.aaw, align 1, !tbaa !29
  %index.next268 = add nuw i64 %index263, 32      ; 2 uses
  %i.aax = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.aax, label %middle.block269, label %vector.body262, !llvm.loop !1085

middle.block269:                                  ; preds = %vector.body262
  %cmp.n270 = icmp eq i64 %i.zx, %n.vec261
  br i1 %cmp.n270, label %.loopexit, label %vec.epilog.iter.check275

vec.epilog.iter.check275:                         ; preds = %middle.block269
  %min.epilog.iters.check276 = icmp eq i64 %i.zy, 0
  br i1 %min.epilog.iters.check276, label %.lr.ph167.preheader, label %vec.epilog.ph277, !prof !53

vec.epilog.ph277:                                 ; preds = %vector.main.loop.iter.check258, %vec.epilog.iter.check275
  %vec.epilog.resume.val271 = phi i64 [ %n.vec261, %vec.epilog.iter.check275 ], [ 0, %vector.main.loop.iter.check258 ]
  %n.vec278 = and i64 %i.zx, -8                   ; 3 uses
  %i.aay = add i64 %4, %n.vec278
  br label %vec.epilog.vector.body279

vec.epilog.vector.body279:                        ; preds = %vec.epilog.vector.body279, %vec.epilog.ph277
  %index280 = phi i64 [ %vec.epilog.resume.val271, %vec.epilog.ph277 ], [ %index.next285, %vec.epilog.vector.body279 ] ; 4 uses
  %i.aaz = add nuw i64 %4, %index280              ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aaz
  %wide.load281 = load <8 x i8>, ptr %i.aba, align 1, !tbaa !29
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 %index280
  %wide.load282 = load <8 x i8>, ptr %i.abb, align 1, !tbaa !29 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %2, i64 %i.aaz
  %wide.load283 = load <8 x i8>, ptr %i.abc, align 1, !tbaa !29 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %2, i64 %index280
  %wide.load284 = load <8 x i8>, ptr %i.abd, align 1, !tbaa !29 ; 2 uses
  %i.abe = zext <8 x i8> %wide.load283 to <8 x i32> ; 2 uses
  %i.abf = zext <8 x i8> %wide.load284 to <8 x i32> ; 3 uses
  %i.abg = sub nsw <8 x i32> %i.abe, %i.abf
  %i.abh = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.abg, i1 true) ; 2 uses
  %i.abi = zext <8 x i8> %wide.load282 to <8 x i32> ; 2 uses
  %i.abj = sub nsw <8 x i32> %i.abi, %i.abf
  %i.abk = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.abj, i1 true) ; 2 uses
  %i.abl = add nuw nsw <8 x i32> %i.abe, %i.abi
  %i.abm = shl nuw nsw <8 x i32> %i.abf, splat (i32 1)
  %i.abn = sub nsw <8 x i32> %i.abl, %i.abm
  %i.abo = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.abn, i1 true)
  %i.abp = icmp samesign ult <8 x i32> %i.abk, %i.abh
  %i.abq = select <8 x i1> %i.abp, <8 x i8> %wide.load283, <8 x i8> %wide.load282
  %i.abr = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.abk, <8 x i32> %i.abh)
  %i.abs = icmp samesign ult <8 x i32> %i.abo, %i.abr
  %i.abt = select <8 x i1> %i.abs, <8 x i8> %wide.load284, <8 x i8> %i.abq
  %i.abu = sub <8 x i8> %wide.load281, %i.abt
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 %i.aaz
  store <8 x i8> %i.abu, ptr %i.abv, align 1, !tbaa !29
  %index.next285 = add nuw i64 %index280, 8       ; 2 uses
  %i.abw = icmp eq i64 %index.next285, %n.vec278
  br i1 %i.abw, label %vec.epilog.middle.block286, label %vec.epilog.vector.body279, !llvm.loop !1086

vec.epilog.middle.block286:                       ; preds = %vec.epilog.vector.body279
  %cmp.n287 = icmp eq i64 %i.zx, %n.vec278
  br i1 %cmp.n287, label %.loopexit, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %iter.check273, %vector.memcheck249, %vec.epilog.iter.check275, %vec.epilog.middle.block286
  %.10166.ph = phi i64 [ %4, %iter.check273 ], [ %4, %vector.memcheck249 ], [ %i.zz, %vec.epilog.iter.check275 ], [ %i.aay, %vec.epilog.middle.block286 ]
  br label %.lr.ph167

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.9165 = phi i64 [ %i.aea, %.lr.ph ], [ %.9165.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 %.9165
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !29
  %i.abz = getelementptr inbounds nuw i8, ptr %2, i64 %.9165
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !29
  %i.acb = sub i8 %i.aby, %i.aca
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 %.9165
  store i8 %i.acb, ptr %i.acc, align 1, !tbaa !29
  %i.acd = add nuw nsw i64 %.9165, 1              ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %1, i64 %i.acd
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !29
  %i.acg = getelementptr inbounds nuw i8, ptr %2, i64 %i.acd
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !29
  %i.aci = sub i8 %i.acf, %i.ach
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 %i.acd
  store i8 %i.aci, ptr %i.acj, align 1, !tbaa !29
  %i.ack = add nuw nsw i64 %.9165, 2              ; 3 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ack
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !29
  %i.acn = getelementptr inbounds nuw i8, ptr %2, i64 %i.ack
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !29
  %i.acp = sub i8 %i.acm, %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ack
  store i8 %i.acp, ptr %i.acq, align 1, !tbaa !29
  %i.acr = add nuw nsw i64 %.9165, 3              ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 %i.acr
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !29
  %i.acu = getelementptr inbounds nuw i8, ptr %2, i64 %i.acr
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !29
  %i.acw = sub i8 %i.act, %i.acv
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 %i.acr
  store i8 %i.acw, ptr %i.acx, align 1, !tbaa !29
  %i.acy = add nuw nsw i64 %.9165, 4              ; 3 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !29
  %i.adb = getelementptr inbounds nuw i8, ptr %2, i64 %i.acy
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !29
  %i.add = sub i8 %i.ada, %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 %i.acy
  store i8 %i.add, ptr %i.ade, align 1, !tbaa !29
  %i.adf = add nuw nsw i64 %.9165, 5              ; 3 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 %i.adf
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !29
  %i.adi = getelementptr inbounds nuw i8, ptr %2, i64 %i.adf
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !29
  %i.adk = sub i8 %i.adh, %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 %i.adf
  store i8 %i.adk, ptr %i.adl, align 1, !tbaa !29
  %i.adm = add nuw nsw i64 %.9165, 6              ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 %i.adm
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !29
  %i.adp = getelementptr inbounds nuw i8, ptr %2, i64 %i.adm
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !29
  %i.adr = sub i8 %i.ado, %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 %i.adm
  store i8 %i.adr, ptr %i.ads, align 1, !tbaa !29
  %i.adt = add nuw nsw i64 %.9165, 7              ; 3 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %1, i64 %i.adt
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !29
  %i.adw = getelementptr inbounds nuw i8, ptr %2, i64 %i.adt
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !29
  %i.ady = sub i8 %i.adv, %i.adx
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 %i.adt
  store i8 %i.ady, ptr %i.adz, align 1, !tbaa !29
  %i.aea = add nuw nsw i64 %.9165, 8              ; 2 uses
  %.not136.7 = icmp eq i64 %i.aea, %4
  br i1 %.not136.7, label %.preheader161, label %.lr.ph, !llvm.loop !1087

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.10166 = phi i64 [ %i.aez, %.lr.ph167 ], [ %.10166.ph, %.lr.ph167.preheader ] ; 5 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 %.10166
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !29
  %i.aed = sub nuw i64 %.10166, %4                ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 %i.aed
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !29 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %2, i64 %.10166
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !29 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %2, i64 %i.aed
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !29 ; 2 uses
  %i.aek = zext i8 %i.aeh to i32                  ; 2 uses
  %i.ael = zext i8 %i.aej to i32                  ; 3 uses
  %i.aem = sub nsw i32 %i.aek, %i.ael
  %i.aen = tail call i32 @llvm.abs.i32(i32 %i.aem, i1 true) ; 2 uses
  %i.aeo = zext i8 %i.aef to i32                  ; 2 uses
  %i.aep = sub nsw i32 %i.aeo, %i.ael
  %i.aeq = tail call i32 @llvm.abs.i32(i32 %i.aep, i1 true) ; 2 uses
  %i.aer = add nuw nsw i32 %i.aek, %i.aeo
  %i.aes = shl nuw nsw i32 %i.ael, 1
  %i.aet = sub nsw i32 %i.aer, %i.aes
  %i.aeu = tail call i32 @llvm.abs.i32(i32 %i.aet, i1 true)
  %i.aev = icmp samesign ult i32 %i.aeq, %i.aen
  %.032.i.v = select i1 %i.aev, i8 %i.aeh, i8 %i.aef
  %.0.in.i = tail call i32 @llvm.umin.i32(i32 %i.aeq, i32 %i.aen)
  %i.aew = icmp samesign ult i32 %i.aeu, %.0.in.i
  %.v = select i1 %i.aew, i8 %i.aej, i8 %.032.i.v
  %i.aex = sub i8 %i.aec, %.v
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 %.10166
  store i8 %i.aex, ptr %i.aey, align 1, !tbaa !29
  %i.aez = add nuw i64 %.10166, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.aez, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph167, !llvm.loop !1088

.preheader158:                                    ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170, %middle.block303, %vec.epilog.middle.block316, %.preheader160
  %i.afa = icmp ult i64 %4, %3
  br i1 %i.afa, label %iter.check343, label %.loopexit

iter.check343:                                    ; preds = %.preheader158
  %i.afb = sub nuw i64 %3, %4                     ; 7 uses
  %min.iters.check323 = icmp ult i64 %i.afb, 16
  br i1 %min.iters.check323, label %.lr.ph172.preheader, label %vector.memcheck319

vector.memcheck319:                               ; preds = %iter.check343
  %i.afc = add i64 %4, %i.b
  %i.afd = sub i64 %i.a, %i.afc
  %diff.check320 = icmp ugt i64 %i.afd, -128
  %i.afe = sub i64 %i.a, %i.b
  %diff.check321 = icmp ugt i64 %i.afe, -128
  %conflict.rdx322 = or i1 %diff.check320, %diff.check321
  br i1 %conflict.rdx322, label %.lr.ph172.preheader, label %vector.main.loop.iter.check324

vector.main.loop.iter.check324:                   ; preds = %vector.memcheck319
  %min.iters.check325 = icmp ult i64 %i.afb, 128
  br i1 %min.iters.check325, label %vec.epilog.ph347, label %vector.ph326

vector.ph326:                                     ; preds = %vector.main.loop.iter.check324
  %i.aff = and i64 %i.afb, 112
  %n.vec327 = and i64 %i.afb, -128                ; 4 uses
  %i.afg = add i64 %4, %n.vec327
  br label %vector.body328

vector.body328:                                   ; preds = %vector.ph326, %vector.body328
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next338, %vector.body328 ] ; 3 uses
  %i.afh = add nuw i64 %4, %index329              ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 %i.afh ; 4 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 32
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afi, i64 64
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afi, i64 96
  %wide.load330 = load <32 x i8>, ptr %i.afi, align 1, !tbaa !29
  %wide.load331 = load <32 x i8>, ptr %i.afj, align 1, !tbaa !29
  %wide.load332 = load <32 x i8>, ptr %i.afk, align 1, !tbaa !29
  %wide.load333 = load <32 x i8>, ptr %i.afl, align 1, !tbaa !29
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 %index329 ; 4 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 32
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 64
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afm, i64 96
  %wide.load334 = load <32 x i8>, ptr %i.afm, align 1, !tbaa !29
  %wide.load335 = load <32 x i8>, ptr %i.afn, align 1, !tbaa !29
  %wide.load336 = load <32 x i8>, ptr %i.afo, align 1, !tbaa !29
  %wide.load337 = load <32 x i8>, ptr %i.afp, align 1, !tbaa !29
  %i.afq = sub <32 x i8> %wide.load330, %wide.load334
  %i.afr = sub <32 x i8> %wide.load331, %wide.load335
  %i.afs = sub <32 x i8> %wide.load332, %wide.load336
  %i.aft = sub <32 x i8> %wide.load333, %wide.load337
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 %i.afh ; 4 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 32
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 64
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afu, i64 96
  store <32 x i8> %i.afq, ptr %i.afu, align 1, !tbaa !29
  store <32 x i8> %i.afr, ptr %i.afv, align 1, !tbaa !29
  store <32 x i8> %i.afs, ptr %i.afw, align 1, !tbaa !29
  store <32 x i8> %i.aft, ptr %i.afx, align 1, !tbaa !29
  %index.next338 = add nuw i64 %index329, 128     ; 2 uses
  %i.afy = icmp eq i64 %index.next338, %n.vec327
  br i1 %i.afy, label %middle.block339, label %vector.body328, !llvm.loop !1089

middle.block339:                                  ; preds = %vector.body328
  %cmp.n340 = icmp eq i64 %i.afb, %n.vec327
  br i1 %cmp.n340, label %.loopexit, label %vec.epilog.iter.check345

vec.epilog.iter.check345:                         ; preds = %middle.block339
  %min.epilog.iters.check346 = icmp eq i64 %i.aff, 0
  br i1 %min.epilog.iters.check346, label %.lr.ph172.preheader, label %vec.epilog.ph347, !prof !1094

vec.epilog.ph347:                                 ; preds = %vector.main.loop.iter.check324, %vec.epilog.iter.check345
  %vec.epilog.resume.val341 = phi i64 [ %n.vec327, %vec.epilog.iter.check345 ], [ 0, %vector.main.loop.iter.check324 ]
  %n.vec348 = and i64 %i.afb, -16                 ; 3 uses
  %i.afz = add i64 %4, %n.vec348
  br label %vec.epilog.vector.body349

vec.epilog.vector.body349:                        ; preds = %vec.epilog.vector.body349, %vec.epilog.ph347
  %index350 = phi i64 [ %vec.epilog.resume.val341, %vec.epilog.ph347 ], [ %index.next353, %vec.epilog.vector.body349 ] ; 3 uses
  %i.aga = add nuw i64 %4, %index350              ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 %i.aga
  %wide.load351 = load <16 x i8>, ptr %i.agb, align 1, !tbaa !29
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 %index350
  %wide.load352 = load <16 x i8>, ptr %i.agc, align 1, !tbaa !29
  %i.agd = sub <16 x i8> %wide.load351, %wide.load352
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 %i.aga
  store <16 x i8> %i.agd, ptr %i.age, align 1, !tbaa !29
  %index.next353 = add nuw i64 %index350, 16      ; 2 uses
  %i.agf = icmp eq i64 %index.next353, %n.vec348
  br i1 %i.agf, label %vec.epilog.middle.block354, label %vec.epilog.vector.body349, !llvm.loop !1090

vec.epilog.middle.block354:                       ; preds = %vec.epilog.vector.body349
  %cmp.n355 = icmp eq i64 %i.afb, %n.vec348
  br i1 %cmp.n355, label %.loopexit, label %.lr.ph172.preheader

.lr.ph172.preheader:                              ; preds = %iter.check343, %vector.memcheck319, %vec.epilog.iter.check345, %vec.epilog.middle.block354
  %.12171.ph = phi i64 [ %4, %iter.check343 ], [ %4, %vector.memcheck319 ], [ %i.afg, %vec.epilog.iter.check345 ], [ %i.afz, %vec.epilog.middle.block354 ] ; 4 uses
  %i.agg = sub i64 %3, %.12171.ph
  %xtraiter678 = and i64 %i.agg, 3                ; 2 uses
  %lcmp.mod679.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod679.not, label %.lr.ph172.prol.loopexit, label %.lr.ph172.prol

.lr.ph172.prol:                                   ; preds = %.lr.ph172.preheader, %.lr.ph172.prol
  %.12171.prol = phi i64 [ %i.ago, %.lr.ph172.prol ], [ %.12171.ph, %.lr.ph172.preheader ] ; 4 uses
  %prol.iter680 = phi i64 [ %prol.iter680.next, %.lr.ph172.prol ], [ 0, %.lr.ph172.preheader ]
  %i.agh = getelementptr inbounds nuw i8, ptr %1, i64 %.12171.prol
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !29
  %i.agj = sub nuw i64 %.12171.prol, %4
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !29
  %i.agm = sub i8 %i.agi, %i.agl
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 %.12171.prol
  store i8 %i.agm, ptr %i.agn, align 1, !tbaa !29
  %i.ago = add nuw i64 %.12171.prol, 1            ; 2 uses
  %prol.iter680.next = add i64 %prol.iter680, 1   ; 2 uses
  %prol.iter680.cmp.not = icmp eq i64 %prol.iter680.next, %xtraiter678
  br i1 %prol.iter680.cmp.not, label %.lr.ph172.prol.loopexit, label %.lr.ph172.prol, !llvm.loop !1091

.lr.ph172.prol.loopexit:                          ; preds = %.lr.ph172.prol, %.lr.ph172.preheader
  %.12171.unr = phi i64 [ %.12171.ph, %.lr.ph172.preheader ], [ %i.ago, %.lr.ph172.prol ]
  %i.agp = sub i64 %.12171.ph, %3
  %i.agq = icmp ugt i64 %i.agp, -4
  br i1 %i.agq, label %.loopexit, label %.lr.ph172

.lr.ph170:                                        ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170
  %.11169 = phi i64 [ %i.ahw, %.lr.ph170 ], [ %.11169.unr, %.lr.ph170.prol.loopexit ] ; 10 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 %.11169
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !29
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 %.11169
  store i8 %i.ags, ptr %i.agt, align 1, !tbaa !29
  %i.agu = add nuw nsw i64 %.11169, 1             ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 %i.agu
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !29
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 %i.agu
  store i8 %i.agw, ptr %i.agx, align 1, !tbaa !29
  %i.agy = add nuw nsw i64 %.11169, 2             ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 %i.agy
  %i.aha = load i8, ptr %i.agz, align 1, !tbaa !29
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 %i.agy
  store i8 %i.aha, ptr %i.ahb, align 1, !tbaa !29
  %i.ahc = add nuw nsw i64 %.11169, 3             ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahc
  %i.ahe = load i8, ptr %i.ahd, align 1, !tbaa !29
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ahc
  store i8 %i.ahe, ptr %i.ahf, align 1, !tbaa !29
  %i.ahg = add nuw nsw i64 %.11169, 4             ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahg
  %i.ahi = load i8, ptr %i.ahh, align 1, !tbaa !29
  %i.ahj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ahg
  store i8 %i.ahi, ptr %i.ahj, align 1, !tbaa !29
  %i.ahk = add nuw nsw i64 %.11169, 5             ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahk
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !29
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 %i.ahk
  store i8 %i.ahm, ptr %i.ahn, align 1, !tbaa !29
  %i.aho = add nuw nsw i64 %.11169, 6             ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 %i.aho
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !29
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 %i.aho
  store i8 %i.ahq, ptr %i.ahr, align 1, !tbaa !29
  %i.ahs = add nuw nsw i64 %.11169, 7             ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahs
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !29
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 %i.ahs
  store i8 %i.ahu, ptr %i.ahv, align 1, !tbaa !29
  %i.ahw = add nuw nsw i64 %.11169, 8             ; 2 uses
  %.not135.7 = icmp eq i64 %i.ahw, %4
  br i1 %.not135.7, label %.preheader158, label %.lr.ph170, !llvm.loop !1092

.lr.ph172:                                        ; preds = %.lr.ph172.prol.loopexit, %.lr.ph172
  %.12171 = phi i64 [ %i.ajc, %.lr.ph172 ], [ %.12171.unr, %.lr.ph172.prol.loopexit ] ; 7 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %1, i64 %.12171
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !29
  %i.ahz = sub nuw i64 %.12171, %4
  %i.aia = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahz
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !29
  %i.aic = sub i8 %i.ahy, %i.aib
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 %.12171
  store i8 %i.aic, ptr %i.aid, align 1, !tbaa !29
  %i.aie = add nuw i64 %.12171, 1                 ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %1, i64 %i.aie
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !29
  %i.aih = sub nuw i64 %i.aie, %4
  %i.aii = getelementptr inbounds nuw i8, ptr %1, i64 %i.aih
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !29
  %i.aik = sub i8 %i.aig, %i.aij
  %i.ail = getelementptr inbounds nuw i8, ptr %0, i64 %i.aie
  store i8 %i.aik, ptr %i.ail, align 1, !tbaa !29
  %i.aim = add nuw i64 %.12171, 2                 ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %1, i64 %i.aim
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !29
  %i.aip = sub nuw i64 %i.aim, %4
  %i.aiq = getelementptr inbounds nuw i8, ptr %1, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !29
  %i.ais = sub i8 %i.aio, %i.air
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 %i.aim
  store i8 %i.ais, ptr %i.ait, align 1, !tbaa !29
  %i.aiu = add nuw i64 %.12171, 3                 ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %1, i64 %i.aiu
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !29
  %i.aix = sub nuw i64 %i.aiu, %4
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 %i.aix
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !29
  %i.aja = sub i8 %i.aiw, %i.aiz
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 %i.aiu
  store i8 %i.aja, ptr %i.ajb, align 1, !tbaa !29
  %i.ajc = add nuw i64 %.12171, 4                 ; 2 uses
  %exitcond205.not.3 = icmp eq i64 %i.ajc, %3
  br i1 %exitcond205.not.3, label %.loopexit, label %.lr.ph172, !llvm.loop !1093

.loopexit:                                        ; preds = %.lr.ph167, %.lr.ph172.prol.loopexit, %.lr.ph172, %.lr.ph177.prol.loopexit, %.lr.ph177, %.lr.ph182.prol.loopexit, %.lr.ph182, %.lr.ph185.prol.loopexit, %.lr.ph185, %.lr.ph188.prol.loopexit, %.lr.ph188, %.lr.ph193.prol.loopexit, %.lr.ph193, %.lr.ph196.prol.loopexit, %.lr.ph196, %middle.block269, %vec.epilog.middle.block286, %middle.block339, %vec.epilog.middle.block354, %middle.block411, %vec.epilog.middle.block427, %middle.block480, %vec.epilog.middle.block495, %middle.block518, %vec.epilog.middle.block532, %middle.block549, %vec.epilog.middle.block562, %middle.block615, %vec.epilog.middle.block630, %middle.block647, %vec.epilog.middle.block660, %.preheader161, %.preheader158, %.preheader155, %.preheader152, %.preheader150, %.preheader148, %.preheader145, %.preheader, %bb.a
  ret void
}

end_hunk_0
