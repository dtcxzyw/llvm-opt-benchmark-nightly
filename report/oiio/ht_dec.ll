inline.NumInlined: 55
inline.NumDeleted: 13
begin_hunk_0_@opj_t1_ht_decode_cblk:bb.a

bb.hr:                                            ; preds = %.lr.ph1991
  %i.bhw = and i32 %.013481988, 286331153         ; 4 uses
  %i.bhx = and i32 %i.bhw, %.101408
  %.not1631.a = icmp eq i32 %i.bhx, 0
  br i1 %.not1631.a, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.bhy = shl i32 %.613761986, 31
  %i.bhz = load i32, ptr %.013461990, align 4, !tbaa !3
  %i.bia = or i32 %i.bhy, %i.bhz
  %i.bib = or i32 %i.bia, %i.bbb
  store i32 %i.bib, ptr %.013461990, align 4, !tbaa !3
  %i.bic = lshr i32 %.613761986, 1
  %i.bid = add i32 %.613671987, 1
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.71377 = phi i32 [ %i.bic, %bb.hs ], [ %.613761986, %bb.hr ] ; 3 uses
  %.71368 = phi i32 [ %i.bid, %bb.hs ], [ %.613671987, %bb.hr ] ; 2 uses
  %i.bie = shl nuw nsw i32 %i.bhw, 1
  %i.bif = and i32 %i.bie, %.101408
  %.not1632.a = icmp eq i32 %i.bif, 0
  br i1 %.not1632.a, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.big = shl i32 %.71377, 31
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr %.013461990, i64 %i.bbc ; 2 uses
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !3
  %i.bij = or i32 %i.big, %i.bii
  %i.bik = or i32 %i.bij, %i.bbb
  store i32 %i.bik, ptr %i.bih, align 4, !tbaa !3
  %i.bil = lshr i32 %.71377, 1
  %i.bim = add i32 %.71368, 1
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.81378 = phi i32 [ %i.bil, %bb.hu ], [ %.71377, %bb.ht ] ; 3 uses
  %.81369 = phi i32 [ %i.bim, %bb.hu ], [ %.71368, %bb.ht ] ; 2 uses
  %i.bin = shl nuw nsw i32 %i.bhw, 2
  %i.bio = and i32 %i.bin, %.101408
  %.not1633.a = icmp eq i32 %i.bio, 0
  br i1 %.not1633.a, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bip = shl i32 %.81378, 31
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %.013461990, i64 %i.bbe ; 2 uses
  %i.bir = load i32, ptr %i.biq, align 4, !tbaa !3
  %i.bis = or i32 %i.bip, %i.bir
  %i.bit = or i32 %i.bis, %i.bbb
  store i32 %i.bit, ptr %i.biq, align 4, !tbaa !3
  %i.biu = lshr i32 %.81378, 1
  %i.biv = add i32 %.81369, 1
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.91379 = phi i32 [ %i.biu, %bb.hw ], [ %.81378, %bb.hv ] ; 3 uses
  %.9 = phi i32 [ %i.biv, %bb.hw ], [ %.81369, %bb.hv ] ; 2 uses
  %i.biw = shl nuw i32 %i.bhw, 3
  %i.bix = and i32 %i.biw, %.101408
  %.not1634 = icmp eq i32 %i.bix, 0
  br i1 %.not1634, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.biy = shl i32 %.91379, 31
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %.013461990, i64 %i.bbg ; 2 uses
  %i.bja = load i32, ptr %i.biz, align 4, !tbaa !3
  %i.bjb = or i32 %i.biy, %i.bja
  %i.bjc = or i32 %i.bjb, %i.bbb
  store i32 %i.bjc, ptr %i.biz, align 4, !tbaa !3
  %i.bjd = lshr i32 %.91379, 1
  %i.bje = add i32 %.9, 1
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hx, %bb.hy, %.lr.ph1991
  %.111381 = phi i32 [ %.613761986, %.lr.ph1991 ], [ %i.bjd, %bb.hy ], [ %.91379, %bb.hx ]
  %.11 = phi i32 [ %.613671987, %.lr.ph1991 ], [ %i.bje, %bb.hy ], [ %.9, %bb.hx ] ; 2 uses
  %i.bjf = add nuw nsw i32 %.013471989, 1         ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %.013461990, i64 4
  %i.bjh = shl i32 %.013481988, 4
  %i.bji = icmp slt i32 %i.bjf, %i.bfu
  br i1 %i.bji, label %.lr.ph1991, label %.loopexit, !llvm.loop !107

.loopexit:                                        ; preds = %bb.hz, %bb.gz, %._crit_edge1981
  %.11399.lcssa2181 = phi i32 [ %.101408, %._crit_edge1981 ], [ %.013981994, %bb.gz ], [ %.101408, %bb.hz ] ; 4 uses
  %.11411.lcssa2180 = phi i32 [ %.101420, %._crit_edge1981 ], [ %.014101993, %bb.gz ], [ %.101420, %bb.hz ]
  %.12 = phi i32 [ %.51366, %._crit_edge1981 ], [ 0, %bb.gz ], [ %.11, %bb.hz ] ; 2 uses
  %i.bjj = load i64, ptr %i.bbh, align 8, !tbaa !53
  %i.bjk = zext nneg i32 %.12 to i64
  %i.bjl = lshr i64 %i.bjj, %i.bjk
  store i64 %i.bjl, ptr %i.bbh, align 8, !tbaa !53
  %i.bjm = load i32, ptr %i.bbi, align 8, !tbaa !55
  %i.bjn = sub i32 %i.bjm, %.12
  store i32 %i.bjn, ptr %i.bbi, align 8, !tbaa !55
  br i1 %i.bfj, label %.thread2182, label %bb.gz

.thread2182:                                      ; preds = %.loopexit
  %i.bjo = lshr i32 %.11399.lcssa2181, 28         ; 2 uses
  %i.bjp = lshr i32 %.11399.lcssa2181, 29
  %i.bjq = shl nuw nsw i32 %i.bjo, 1
  %i.bjr = and i32 %i.bjq, 14
  %i.bjs = or i32 %i.bjp, %i.bjr
  %i.bjt = or i32 %i.bjs, %i.bjo
  %i.bju = load i32, ptr %i.bfh, align 4, !tbaa !3
  %i.bjv = xor i32 %i.bju, -1
  %i.bjw = and i32 %i.bjt, %i.bjv
  %i.bjx = load i32, ptr %i.bfi, align 4, !tbaa !3
  %i.bjy = or i32 %i.bjx, %i.bjw
  store i32 %i.bjy, ptr %i.bfi, align 4, !tbaa !3
  br label %.loopexit1838.a

.loopexit1838.a:                                  ; preds = %.thread2182, %bb.gy
  %.111409 = phi i32 [ 0, %bb.gy ], [ %.11399.lcssa2181, %.thread2182 ]
  %i.bjz = load i32, ptr %.114351997, align 4, !tbaa !3
  %i.bka = or i32 %i.bjz, %.111409                ; 2 uses
  %i.bkb = lshr i32 %i.bka, 3
  %i.bkc = and i32 %i.bkb, 286331153              ; 4 uses
  %i.bkd = shl i32 %i.bkc, 4
  %i.bke = lshr i32 %i.bkc, 4
  %i.bkf = or i32 %i.bke, %i.bkd
  %i.bkg = or i32 %i.bkf, %i.bkc
  %.not1629 = icmp eq i64 %indvars.iv2056, 0
  br i1 %.not1629, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %.loopexit1838.a
  %i.bkh = shl i32 %i.bkc, 28
  %i.bki = getelementptr inbounds i8, ptr %.114311999, i64 -4
  %i.bkj = load i32, ptr %i.bki, align 4, !tbaa !3
  %i.bkk = xor i32 %i.bkj, -1
  %i.bkl = and i32 %i.bkh, %i.bkk
  %i.bkm = getelementptr inbounds i8, ptr %.014292000, i64 -4 ; 2 uses
  %i.bkn = load i32, ptr %i.bkm, align 4, !tbaa !3
  %i.bko = or i32 %i.bkn, %i.bkl
  store i32 %i.bko, ptr %i.bkm, align 4, !tbaa !3
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %.loopexit1838.a
  %i.bkp = load i32, ptr %.114311999, align 4, !tbaa !3
  %i.bkq = xor i32 %i.bkp, -1
  %i.bkr = and i32 %i.bkg, %i.bkq
  %i.bks = load i32, ptr %.014292000, align 4, !tbaa !3
  %i.bkt = or i32 %i.bks, %i.bkr
  store i32 %i.bkt, ptr %.014292000, align 4, !tbaa !3
  %i.bku = lshr i32 %i.bka, 31
  %i.bkv = getelementptr inbounds nuw i8, ptr %.114311999, i64 4 ; 2 uses
  %i.bkw = load i32, ptr %i.bkv, align 4, !tbaa !3
  %i.bkx = xor i32 %i.bkw, -1
  %i.bky = and i32 %i.bku, %i.bkx
  %i.bkz = getelementptr inbounds nuw i8, ptr %.014292000, i64 4 ; 3 uses
  %i.bla = load i32, ptr %i.bkz, align 4, !tbaa !3
  %i.blb = or i32 %i.bla, %i.bky
  store i32 %i.blb, ptr %i.bkz, align 4, !tbaa !3
  %indvars.iv.next2057 = add nuw nsw i64 %indvars.iv2056, 8 ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %.114351997, i64 4
  %i.bld = getelementptr inbounds nuw i8, ptr %.114331998, i64 4
  %i.ble = trunc nuw i64 %indvars.iv.next2057 to i32
  %i.blf = icmp sgt i32 %i.ej, %i.ble
  br i1 %i.blf, label %bb.gy, label %._crit_edge2003, !llvm.loop !108

._crit_edge2003:                                  ; preds = %bb.ib, %bb.gx, %.thread1816
  %indvars.iv.next2060 = add nsw i64 %indvars.iv2059, 4 ; 2 uses
  %i.blg = icmp slt i64 %indvars.iv.next2060, %i.bbk
  br i1 %i.blg, label %bb.gv, label %.loopexit1839, !llvm.loop !109

.loopexit1839:                                    ; preds = %._crit_edge2003, %.loopexit1840, %._crit_edge1950
  %i.blh = icmp slt i32 %i.em, 1
  %brmerge2217 = or i1 %i.blh, %i.gy
  br i1 %brmerge2217, label %opj_t1_allocate_buffers.exit.thread, label %.lr.ph2010.us.preheader

.lr.ph2010.us.preheader:                          ; preds = %.loopexit1839
  %i.bli = zext nneg i32 %i.ej to i64             ; 3 uses
  %wide.trip.count2066 = zext nneg i32 %i.em to i64
  %min.iters.check2351 = icmp ult i32 %i.ej, 8
  %n.vec2354 = and i64 %i.bli, 2147483640         ; 4 uses
  %i.blj = shl nuw nsw i64 %n.vec2354, 2
  %i.blk = trunc nuw nsw i64 %n.vec2354 to i32
  %cmp.n2362 = icmp eq i64 %n.vec2354, %i.bli
  br label %.lr.ph2010.us

.lr.ph2010.us:                                    ; preds = %.lr.ph2010.us.preheader, %._crit_edge2011.us
  %indvars.iv2063 = phi i64 [ 0, %.lr.ph2010.us.preheader ], [ %indvars.iv.next2064, %._crit_edge2011.us ] ; 2 uses
  %i.bll = mul nuw nsw i64 %indvars.iv2063, %i.bli
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.bll ; 3 uses
  br i1 %min.iters.check2351, label %scalar.ph2350.preheader, label %vector.ph2352

vector.ph2352:                                    ; preds = %.lr.ph2010.us
  %i.bln = getelementptr i8, ptr %i.blm, i64 %i.blj
  br label %vector.body2355

vector.body2355:                                  ; preds = %vector.body2355, %vector.ph2352
  %index2356 = phi i64 [ 0, %vector.ph2352 ], [ %index.next2360, %vector.body2355 ] ; 2 uses
  %i.blo = shl i64 %index2356, 2
  %next.gep2357 = getelementptr i8, ptr %i.blm, i64 %i.blo ; 3 uses
  %i.blp = getelementptr i8, ptr %next.gep2357, i64 16 ; 2 uses
  %wide.load2358.a = load <4 x i32>, ptr %next.gep2357, align 4, !tbaa !3 ; 2 uses
  %wide.load2359 = load <4 x i32>, ptr %i.blp, align 4, !tbaa !3 ; 2 uses
  %i.blq = and <4 x i32> %wide.load2358.a, splat (i32 2147483647) ; 2 uses
  %i.blr = and <4 x i32> %wide.load2359, splat (i32 2147483647) ; 2 uses
  %i.bls = sub nsw <4 x i32> zeroinitializer, %i.blq
  %i.blt = sub nsw <4 x i32> zeroinitializer, %i.blr
  %13 = icmp slt <4 x i32> %wide.load2358.a, zeroinitializer
  %14 = icmp slt <4 x i32> %wide.load2359, zeroinitializer
  %i.blu = select <4 x i1> %13, <4 x i32> %i.bls, <4 x i32> %i.blq
  %i.blv = select <4 x i1> %14, <4 x i32> %i.blt, <4 x i32> %i.blr
  store <4 x i32> %i.blu, ptr %next.gep2357, align 4, !tbaa !3
  store <4 x i32> %i.blv, ptr %i.blp, align 4, !tbaa !3
  %index.next2360 = add nuw i64 %index2356, 8     ; 2 uses
  %i.blw = icmp eq i64 %index.next2360, %n.vec2354
  br i1 %i.blw, label %middle.block2361, label %vector.body2355, !llvm.loop !110

middle.block2361:                                 ; preds = %vector.body2355
  br i1 %cmp.n2362, label %._crit_edge2011.us, label %scalar.ph2350.preheader

scalar.ph2350.preheader:                          ; preds = %.lr.ph2010.us, %middle.block2361
  %.013412008.us.ph = phi ptr [ %i.blm, %.lr.ph2010.us ], [ %i.bln, %middle.block2361 ]
  %.013432007.us.ph = phi i32 [ 0, %.lr.ph2010.us ], [ %i.blk, %middle.block2361 ]
  br label %scalar.ph2350

scalar.ph2350:                                    ; preds = %scalar.ph2350.preheader, %scalar.ph2350
  %.013412008.us = phi ptr [ %i.bmc, %scalar.ph2350 ], [ %.013412008.us.ph, %scalar.ph2350.preheader ] ; 3 uses
  %.013432007.us = phi i32 [ %i.bmb, %scalar.ph2350 ], [ %.013432007.us.ph, %scalar.ph2350.preheader ]
  %i.blx = load i32, ptr %.013412008.us, align 4, !tbaa !3 ; 2 uses
  %i.bly = and i32 %i.blx, 2147483647             ; 2 uses
  %i.blz = sub nsw i32 0, %i.bly
  %.not16241625.us = icmp slt i32 %i.blx, 0
  %i.bma = select i1 %.not16241625.us, i32 %i.blz, i32 %i.bly
  store i32 %i.bma, ptr %.013412008.us, align 4, !tbaa !3
  %i.bmb = add nuw nsw i32 %.013432007.us, 1      ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %.013412008.us, i64 4
  %exitcond2062.not = icmp eq i32 %i.bmb, %i.ej
  br i1 %exitcond2062.not, label %._crit_edge2011.us, label %scalar.ph2350, !llvm.loop !111

._crit_edge2011.us:                               ; preds = %scalar.ph2350, %middle.block2361
  %indvars.iv.next2064 = add nuw nsw i64 %indvars.iv2063, 1 ; 2 uses
  %exitcond2067.not = icmp eq i64 %indvars.iv.next2064, %wide.trip.count2066
  br i1 %exitcond2067.not, label %opj_t1_allocate_buffers.exit.thread, label %.lr.ph2010.us, !llvm.loop !112

opj_t1_allocate_buffers.exit.thread:              ; preds = %._crit_edge2011.us, %.loopexit1839, %.thread2145, %bb.dj, %.critedge1764, %bb.dg, %.critedge1766, %bb.n, %.thread2183, %bb.e, %bb.i, %.thread1800, %bb.ar, %.critedge1757, %bb.ao, %.critedge1755, %bb.ak, %.critedge1753, %bb.ad, %.critedge1748, %bb.aa, %.critedge1746, %bb.y, %.critedge1744, %bb.j, %bb.c, %.critedge
  %.8 = phi i32 [ 0, %.critedge1764 ], [ 0, %bb.n ], [ 1, %.thread2145 ], [ 0, %bb.ar ], [ 0, %.critedge1757 ], [ 0, %bb.ao ], [ 0, %.critedge1755 ], [ 0, %bb.ak ], [ 0, %.thread1800 ], [ 0, %bb.dj ], [ 0, %.critedge1753 ], [ 0, %bb.e ], [ 1, %bb.j ], [ 0, %.critedge ], [ 0, %bb.c ], [ 0, %.critedge1744 ], [ 0, %bb.y ], [ 0, %.critedge1746 ], [ 0, %bb.aa ], [ 0, %.critedge1748 ], [ 0, %bb.ad ], [ 0, %bb.i ], [ 0, %.thread2183 ], [ 0, %.critedge1766 ], [ 0, %bb.dg ], [ 1, %.loopexit1839 ], [ 1, %._crit_edge2011.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret i32 %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @opj_mutex_lock(ptr noundef) local_unnamed_addr #2

declare i32 @opj_event_msg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @opj_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @opj_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @mel_init(ptr noundef nonnull writeonly captures(none) initializes((0, 36), (40, 48)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 2, 4080) %3) unnamed_addr #3 {
.critedge:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 %i.a
  %i.c = zext nneg i32 %3 to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d     ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.g, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i32 0, ptr %i.h, align 8, !tbaa !117
  %i.i = add nsw i32 %3, -1                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.k, align 4, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.l, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !121
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3                          ; 3 uses
  %i.q = load i8, ptr %i.e, align 1, !tbaa !46
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp eq i32 %i.i, 1
  %i.t = or i64 %i.r, 15
  %spec.select = select i1 %i.s, i64 %i.t, i64 %i.r ; 4 uses
  %i.u = add nsw i32 %3, -2                       ; 2 uses
  store i32 %i.u, ptr %i.j, align 4, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !113
  store i64 %spec.select, ptr %i.g, align 8, !tbaa !116
  store i32 8, ptr %i.f, align 8, !tbaa !115
  %i.w = icmp eq i64 %spec.select, 255            ; 3 uses
  %i.x = zext i1 %i.w to i32
  store i32 %i.x, ptr %i.h, align 8, !tbaa !117
  %exitcond.not = icmp eq i32 %i.p, 3
  br i1 %exitcond.not, label %bb.m, label %bb.a

bb.a:                                             ; preds = %.critedge
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = load i8, ptr %i.v, align 1, !tbaa !46
  %i.z = icmp ugt i8 %i.y, -113
  br i1 %i.z, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = icmp samesign ugt i32 %3, 2             ; 2 uses
  br i1 %i.aa, label %bb.d, label %.critedge.1

bb.d:                                             ; preds = %bb.c
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !46
  %i.ac = zext i8 %i.ab to i64
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.d, %bb.c
  %i.ad = phi i64 [ %i.ac, %bb.d ], [ 255, %bb.c ] ; 2 uses
  %i.ae = icmp eq i32 %i.u, 1
  %i.af = or i64 %i.ad, 15
  %spec.select.1 = select i1 %i.ae, i64 %i.af, i64 %i.ad ; 2 uses
  %i.ag = add nsw i32 %3, -3                      ; 2 uses
  store i32 %i.ag, ptr %i.j, align 4, !tbaa !118
  %i.ah = zext i1 %i.aa to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ah ; 4 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !113
  %i.aj = select i1 %i.w, i32 7, i32 8            ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl i64 %spec.select, %i.ak
  %i.am = or i64 %i.al, %spec.select.1            ; 3 uses
  store i64 %i.am, ptr %i.g, align 8, !tbaa !116
  %i.an = add nuw nsw i32 %i.aj, 8                ; 3 uses
  store i32 %i.an, ptr %i.f, align 8, !tbaa !115
  %i.ao = icmp eq i64 %spec.select.1, 255         ; 3 uses
  %i.ap = zext i1 %i.ao to i32
  store i32 %i.ap, ptr %i.h, align 8, !tbaa !117
  %exitcond.not.1 = icmp eq i32 %i.p, 2
  br i1 %exitcond.not.1, label %bb.m, label %bb.e

bb.e:                                             ; preds = %.critedge.1
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !46
  %i.ar = icmp ugt i8 %i.aq, -113
  br i1 %i.ar, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = icmp samesign ugt i32 %3, 3             ; 2 uses
  br i1 %i.as, label %bb.h, label %.critedge.2

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %i.ai, align 1, !tbaa !46
  %i.au = zext i8 %i.at to i64
  br label %.critedge.2

.critedge.2:                                      ; preds = %bb.h, %bb.g
  %i.av = phi i64 [ %i.au, %bb.h ], [ 255, %bb.g ] ; 2 uses
  %i.aw = icmp eq i32 %i.ag, 1
  %i.ax = or i64 %i.av, 15
  %spec.select.2 = select i1 %i.aw, i64 %i.ax, i64 %i.av ; 2 uses
  %i.ay = add nsw i32 %3, -4                      ; 2 uses
  store i32 %i.ay, ptr %i.j, align 4, !tbaa !118
  %i.az = zext i1 %i.as to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.az ; 4 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !113
  %i.bb = select i1 %i.ao, i32 7, i32 8           ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 %i.am, %i.bc
  %i.be = or i64 %i.bd, %spec.select.2            ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !tbaa !116
  %i.bf = add nuw nsw i32 %i.an, %i.bb            ; 3 uses
  store i32 %i.bf, ptr %i.f, align 8, !tbaa !115
  %i.bg = icmp eq i64 %spec.select.2, 255         ; 3 uses
  %i.bh = zext i1 %i.bg to i32
  store i32 %i.bh, ptr %i.h, align 8, !tbaa !117
  %exitcond.not.2 = icmp eq i32 %i.p, 1
  br i1 %exitcond.not.2, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.critedge.2
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !46
  %i.bj = icmp ugt i8 %i.bi, -113
  br i1 %i.bj, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = icmp samesign ugt i32 %3, 4             ; 2 uses
  br i1 %i.bk, label %bb.l, label %.critedge.3

bb.l:                                             ; preds = %bb.k
  %i.bl = load i8, ptr %i.ba, align 1, !tbaa !46
  %i.bm = zext i8 %i.bl to i64
  br label %.critedge.3

.critedge.3:                                      ; preds = %bb.l, %bb.k
  %i.bn = phi i64 [ %i.bm, %bb.l ], [ 255, %bb.k ] ; 2 uses
  %i.bo = icmp eq i32 %i.ay, 1
  %i.bp = or i64 %i.bn, 15
  %spec.select.3 = select i1 %i.bo, i64 %i.bp, i64 %i.bn ; 2 uses
  %i.bq = add nsw i32 %3, -5
  store i32 %i.bq, ptr %i.j, align 4, !tbaa !118
  %i.br = zext i1 %i.bk to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.br
  store ptr %i.bs, ptr %0, align 8, !tbaa !113
  %i.bt = select i1 %i.bg, i32 7, i32 8           ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl i64 %i.be, %i.bu
  %i.bw = or i64 %i.bv, %spec.select.3            ; 2 uses
  store i64 %i.bw, ptr %i.g, align 8, !tbaa !116
  %i.bx = add nuw nsw i32 %i.bf, %i.bt            ; 2 uses
  store i32 %i.bx, ptr %i.f, align 8, !tbaa !115
  %i.by = icmp eq i64 %spec.select.3, 255
  %i.bz = zext i1 %i.by to i32
  store i32 %i.bz, ptr %i.h, align 8, !tbaa !117
  br label %bb.m
end_hunk_0
