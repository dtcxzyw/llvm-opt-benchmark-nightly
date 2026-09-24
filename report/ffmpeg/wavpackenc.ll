Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wavpackenc?download=true
inline.NumInlined: 107
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 33
begin_hunk_0_@wavpack_encode_block:bb.a
  %i.cwv = sub nsw i32 %.0.i.i.i32.i, %i.cus      ; 6 uses
  store i32 %.020.i.i.i31.i, ptr %i.cri, align 8, !tbaa !77
  store i32 %i.cwv, ptr %i.crr, align 4, !tbaa !76
  %i.cww = getelementptr inbounds nuw [4 x i8], ptr %i.cuk, i64 %indvars.iv46.i
  %i.cwx = load i32, ptr %i.cww, align 4, !tbaa !53
  %i.cwy = ashr i32 %i.cwx, %i.cvd
  %i.cwz = and i32 %i.cwy, %i.cvh                 ; 2 uses
  %i.cxa = sub nsw i32 32, %i.cwv
  %i.cxb = shl i32 %i.cwz, %i.cxa
  %i.cxc = or i32 %i.cxb, %.020.i.i.i31.i         ; 2 uses
  %.not.i.i.i35.i = icmp sgt i32 %i.cwv, %i.cus
  br i1 %.not.i.i.i35.i, label %put_sbits.exit38.i, label %bb.nk

bb.nk:                                            ; preds = %put_sbits.exit33.i
  %i.cxd = load ptr, ptr %i.crp, align 8, !tbaa !74
  %i.cxe = load ptr, ptr %i.crq, align 8, !tbaa !75 ; 2 uses
  %i.cxf = ptrtoint ptr %i.cxd to i64
  %i.cxg = ptrtoint ptr %i.cxe to i64
  %i.cxh = sub i64 %i.cxf, %i.cxg
  %i.cxi = icmp ugt i64 %i.cxh, 3
  br i1 %i.cxi, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk
  store i32 %i.cxc, ptr %i.cxe, align 1, !tbaa !56
  %i.cxj = load ptr, ptr %i.crq, align 8, !tbaa !75
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cxj, i64 4
  store ptr %i.cxk, ptr %i.crq, align 8, !tbaa !75
  br label %bb.nn

bb.nm:                                            ; preds = %bb.nk
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #15
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %i.cxl = lshr i32 %i.cwz, %i.cwv
  %i.cxm = add nsw i32 %i.cwv, 32
  br label %put_sbits.exit38.i

put_sbits.exit38.i:                               ; preds = %bb.nn, %put_sbits.exit33.i
  %.020.i.i.i36.i = phi i32 [ %i.cxl, %bb.nn ], [ %i.cxc, %put_sbits.exit33.i ] ; 2 uses
  %.0.i.i.i37.i = phi i32 [ %i.cxm, %bb.nn ], [ %i.cwv, %put_sbits.exit33.i ]
  %i.cxn = sub nsw i32 %.0.i.i.i37.i, %i.cus      ; 3 uses
  store i32 %.020.i.i.i36.i, ptr %i.cri, align 8, !tbaa !77
  store i32 %i.cxn, ptr %i.crr, align 4, !tbaa !76
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next47.i, %wide.trip.count49.i
  br i1 %exitcond50.not.i, label %pack_float.exit, label %bb.nf, !llvm.loop !226

pack_float.exitthread-pre-split:                  ; preds = %.lr.ph.i831, %.lr.ph19.i, %.preheader15.i, %.preheader.i835, %bb.my, %.preheader39.i, %.preheader.i844
  %.pr1924 = load i32, ptr %i.crr, align 4, !tbaa !76
  br label %pack_float.exit

pack_float.exit:                                  ; preds = %put_sbits.exit.i, %put_sbits.exit38.i, %pack_float.exitthread-pre-split
  %i.cxo = phi i32 [ %.pr1924, %pack_float.exitthread-pre-split ], [ %i.cxn, %put_sbits.exit38.i ], [ %i.cwb, %put_sbits.exit.i ]
  %i.cxp = icmp slt i32 %i.cxo, 32
  br i1 %i.cxp, label %.lr.ph.i846, label %flush_put_bits.exit847

.lr.ph.i846:                                      ; preds = %pack_float.exit, %bb.np
  %i.cxq = load ptr, ptr %i.crq, align 8, !tbaa !75 ; 3 uses
  %i.cxr = load ptr, ptr %i.crp, align 8, !tbaa !74
  %i.cxs = icmp ult ptr %i.cxq, %i.cxr
  br i1 %i.cxs, label %bb.np, label %bb.no

bb.no:                                            ; preds = %.lr.ph.i846
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 160) #15
  tail call void @abort() #16
  unreachable

bb.np:                                            ; preds = %.lr.ph.i846
  %i.cxt = load i32, ptr %i.cri, align 8, !tbaa !77
  %i.cxu = trunc i32 %i.cxt to i8
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxq, i64 1
  store ptr %i.cxv, ptr %i.crq, align 8, !tbaa !75
  store i8 %i.cxu, ptr %i.cxq, align 1, !tbaa !56
  %i.cxw = load i32, ptr %i.cri, align 8, !tbaa !77
  %i.cxx = lshr i32 %i.cxw, 8
  store i32 %i.cxx, ptr %i.cri, align 8, !tbaa !77
  %i.cxy = load i32, ptr %i.crr, align 4, !tbaa !76 ; 2 uses
  %i.cxz = add nsw i32 %i.cxy, 8
  store i32 %i.cxz, ptr %i.crr, align 4, !tbaa !76
  %i.cya = icmp slt i32 %i.cxy, 24
  br i1 %i.cya, label %.lr.ph.i846, label %flush_put_bits.exit847, !llvm.loop !222

flush_put_bits.exit847:                           ; preds = %bb.np, %pack_float.exit
  store i32 32, ptr %i.crr, align 4, !tbaa !76
  store i32 0, ptr %i.cri, align 8, !tbaa !77
  %.val = load ptr, ptr %i.crm, align 8, !tbaa !249
  %.val666 = load ptr, ptr %i.crq, align 8, !tbaa !75
  %i.cyb = ptrtoint ptr %.val666 to i64
  %i.cyc = ptrtoint ptr %.val to i64
  %i.cyd = sub i64 %i.cyb, %i.cyc                 ; 2 uses
  %i.cye = trunc i64 %i.cyd to i32                ; 4 uses
  %i.cyf = icmp sgt i64 %.pre-phi1794, 2
  %or.cond1391 = select i1 %or.cond1390, i1 %i.cyf, i1 false
  br i1 %or.cond1391, label %bb.nq, label %bytestream2_put_byte.exit.thread

bb.nq:                                            ; preds = %flush_put_bits.exit847
  %i.cyg = add nsw i32 %i.cye, 5
  %i.cyh = ashr i32 %i.cyg, 1                     ; 3 uses
  %i.cyi = trunc i32 %i.cyh to i8
  store i8 %i.cyi, ptr %.sroa.0.43, align 1, !tbaa !56
  %i.cyj = lshr i32 %i.cyh, 8
  %i.cyk = trunc i32 %i.cyj to i8
  %i.cyl = getelementptr inbounds nuw i8, ptr %.sroa.0.43, i64 1
  store i8 %i.cyk, ptr %i.cyl, align 1, !tbaa !56
  %i.cym = lshr i32 %i.cyh, 16
  %i.cyn = trunc i32 %i.cym to i8
  %i.cyo = getelementptr inbounds nuw i8, ptr %.sroa.0.43, i64 2
  store i8 %i.cyn, ptr %i.cyo, align 1, !tbaa !56
  %i.cyp = getelementptr inbounds nuw i8, ptr %.sroa.0.43, i64 3 ; 2 uses
  %i.cyq = ptrtoint ptr %i.cyp to i64             ; 2 uses
  %i.cyr = sub i64 %i.are, %i.cyq
  %i.cys = icmp sgt i64 %i.cyr, 3
  br i1 %i.cys, label %bytestream2_skip_p.exit, label %bytestream2_put_byte.exit.thread

bytestream2_skip_p.exit:                          ; preds = %bb.nq
  %i.cyt = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cyu = load i32, ptr %i.cyt, align 8, !tbaa !234
  store i32 %i.cyu, ptr %i.cyp, align 1, !tbaa !56
  %i.cyv = ptrtoint ptr %i.cua to i64
  %i.cyw = sub i64 %i.are, %i.cyv                 ; 2 uses
  %i.cyx = and i64 %i.cyd, 4294967295
  %i.cyy = icmp sgt i64 %i.cyw, %i.cyx
  %i.cyz = trunc i64 %i.cyw to i32
  %i.cza = select i1 %i.cyy, i32 %i.cye, i32 %i.cyz ; 2 uses
  %.not12.i = icmp ne i32 %i.cza, %i.cye          ; 2 uses
  %spec.select1392 = zext i1 %.not12.i to i32
  %i.czb = zext i32 %i.cza to i64
  %i.czc = getelementptr inbounds nuw i8, ptr %i.cua, i64 %i.czb ; 4 uses
  %i.czd = and i32 %i.cye, 1
  %.not518 = icmp eq i32 %i.czd, 0
  br i1 %.not518, label %bytestream2_put_byte.exit, label %bb.nr

bb.nr:                                            ; preds = %bytestream2_skip_p.exit
  %i.cze = ptrtoint ptr %i.czc to i64             ; 2 uses
  %i.czf = sub i64 %i.are, %i.cze
  %i.czg = icmp slt i64 %i.czf, 1
  %or.cond1395.not = select i1 %.not12.i, i1 true, i1 %i.czg
  br i1 %or.cond1395.not, label %bytestream2_put_byte.exit.thread, label %bytestream2_put_byte.exit.thread1309

bytestream2_put_byte.exit.thread1309:             ; preds = %bb.nr
  store i8 0, ptr %i.czc, align 1, !tbaa !56
  %i.czh = getelementptr inbounds nuw i8, ptr %i.czc, i64 1
  %i.czi = ptrtoint ptr %i.czh to i64
  %i.czj = sub i64 %i.czi, %i.abz
  %i.czk = trunc i64 %i.czj to i32                ; 2 uses
  %i.czl = add nsw i32 %i.czk, -8
  %i.czm = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.czl, ptr %i.czm, align 1, !tbaa !56
  br label %bb.nt

bytestream2_put_byte.exit.thread:                 ; preds = %bb.nq, %flush_put_bits.exit847, %bb.nr
  %.pre-phi1795 = phi i64 [ %i.cyq, %bb.nq ], [ %.pre-phi1792, %flush_put_bits.exit847 ], [ %i.cze, %bb.nr ]
  %i.czn = sub i64 %.pre-phi1795, %i.abz
  %i.czo = trunc i64 %i.czn to i32
  %i.czp = add nsw i32 %i.czo, -8
  %i.czq = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.czp, ptr %i.czq, align 1, !tbaa !56
  br label %bb.ns

bytestream2_put_byte.exit:                        ; preds = %bytestream2_skip_p.exit, %bytestream2_put_byte.exit573
  %.sroa.292.18 = phi i32 [ %.sroa.292.17, %bytestream2_put_byte.exit573 ], [ %spec.select1392, %bytestream2_skip_p.exit ]
  %.sroa.0.18 = phi ptr [ %.sroa.0.17, %bytestream2_put_byte.exit573 ], [ %i.czc, %bytestream2_skip_p.exit ]
  %i.czr = ptrtoint ptr %.sroa.0.18 to i64
  %i.czs = sub i64 %i.czr, %i.abz
  %i.czt = trunc i64 %i.czs to i32                ; 2 uses
  %i.czu = add nsw i32 %i.czt, -8
  %i.czv = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.czu, ptr %i.czv, align 1, !tbaa !56
  %.not519 = icmp eq i32 %.sroa.292.18, 0
  br i1 %.not519, label %bb.nt, label %bb.ns

bb.ns:                                            ; preds = %bytestream2_put_byte.exit.thread, %bytestream2_put_byte.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 2819) #15
  tail call void @abort() #16
  unreachable

bb.nt:                                            ; preds = %bytestream2_put_byte.exit.thread1309, %bytestream2_put_byte.exit, %bb.bt
  %.0428 = phi i32 [ %.2444, %bb.bt ], [ %i.czt, %bytestream2_put_byte.exit ], [ %i.czk, %bytestream2_put_byte.exit.thread1309 ]
  ret i32 %.0428
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @wv_mono(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.Decorr, align 4             ; 26 uses
  %5 = alloca %struct.Decorr, align 4             ; 26 uses
  %6 = alloca %struct.WavPackExtraInfo, align 4   ; 24 uses
  %7 = alloca %struct.Decorr, align 4             ; 17 uses
  %8 = alloca [16 x %struct.Decorr], align 16     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %8, i8 0, i64 1408, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 12 uses
  %i.c = shl i32 %i.b, 2                          ; 2 uses
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !53
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !250

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0102.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %._crit_edge.loopexit ]
  %i.h = icmp eq i32 %.0102.lcssa, %i.b
  br i1 %i.h, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.i, i8 0, i64 1408, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 676
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.j, i8 0, i64 76, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i32 0, ptr %i.k, align 8, !tbaa !59
  br label %scan_word.exit

bb.c:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !52
  %i.n = lshr i32 %i.m, 10
  %i.o = and i32 %i.n, 7936
  %i.p = tail call i32 @llvm.umin.i32(i32 %i.o, i32 5888)
  %i.q = tail call fastcc i32 @allocate_buffers(ptr noundef %0) ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %scan_word.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not114 = icmp ne i32 %2, 0                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 6
  %or.cond242 = select i1 %.not114, i1 true, i1 %i.u
  br i1 %or.cond242, label %._crit_edge186, label %bb.e

._crit_edge186:                                   ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 812
  store i32 0, ptr %i.v, align 4, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i32 0, ptr %i.w, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge186
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.y = icmp sgt i32 %i.t, 0
  br i1 %i.y, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 812 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 6 uses
  %i.af = sext i32 %i.c to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.ah = tail call i32 @llvm.smin.i32(i32 %i.b, i32 2048) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.not12.i = icmp eq i32 %i.b, 0
  %i.ak = add nuw nsw i32 %i.p, 1023
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph160, %bb.x
  %.0103158 = phi i32 [ 0, %.lr.ph160 ], [ %.1104, %bb.x ] ; 4 uses
  %.0105157 = phi i32 [ -1, %.lr.ph160 ], [ %.2, %bb.x ] ; 4 uses
  %.not118 = icmp eq i32 %.0103158, 0             ; 2 uses
  br i1 %.not118, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !79
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.au = load i32, ptr %i.z, align 4, !tbaa !78  ; 4 uses
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = load i32, ptr %i.aa, align 8, !tbaa !79 ; 3 uses
  br i1 %i.av, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.sink.split, label %bb.j, !llvm.loop !251

.thread:                                          ; preds = %bb.h
  %i.ay = add nsw i32 %i.au, -1
  %i.az = and i32 %i.aw, %i.ay
  %i.ba = or i32 %i.az, %i.au                     ; 2 uses
  %i.bb = icmp eq i32 %i.ba, %i.aw
  br i1 %i.bb, label %.sink.split.sink.split, label %bb.j, !llvm.loop !251

bb.j:                                             ; preds = %.thread, %bb.i, %bb.g
  %.1 = phi i32 [ 0, %bb.i ], [ %i.at, %bb.g ], [ %i.ba, %.thread ] ; 2 uses
  %i.bc = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.bd = sext i32 %.1 to i64
  %i.be = getelementptr inbounds [19 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.ad, align 8, !tbaa !42
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr @decorr_filter_nterms, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !56
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 2 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %9, %bb.j
  %.0101 = phi i32 [ %i.bj, %bb.j ], [ %10, %9 ]  ; 7 uses
  %i.bm = load ptr, ptr %i.ae, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %1, i64 %i.af, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %8, i8 0, i64 1408, i1 false)
  %.not169 = icmp eq i32 %.0101, 0
  br i1 %.not169, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %bb.k
  %wide.trip.count184 = zext nneg i32 %.0101 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.ao, i8 0, i64 80, i1 false)
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !81
  %i.bo = sext i8 %i.bn to i32
  store i32 %i.bo, ptr %7, align 4, !tbaa !71
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !56  ; 2 uses
  %i.bq = icmp slt i8 %i.bp, 0
  %narrow.peel = select i1 %i.bq, i8 1, i8 %i.bp
  %spec.select.peel = sext i8 %narrow.peel to i32
  store i32 %spec.select.peel, ptr %i.ag, align 4, !tbaa !70
  %i.br = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.bs = load ptr, ptr %i.ap, align 8, !tbaa !50
  call fastcc void @decorr_mono(ptr noundef %i.br, ptr noundef %i.bs, i32 noundef %i.ah, ptr noundef %7, i32 noundef -1)
  %i.bt = load i32, ptr %i.ag, align 4, !tbaa !70 ; 8 uses
  %i.bu = icmp sgt i32 %i.bt, 8
  br i1 %i.bu, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.lr.ph154.preheader
  %i.bv = icmp sgt i32 %i.bt, 1
  br i1 %i.bv, label %.lr.ph.i.peel, label %reverse_mono_decorr.exit.peel

.lr.ph.i.peel:                                    ; preds = %bb.l
  %i.bw = lshr i32 %i.bt, 1                       ; 3 uses
  %.037.i.peel = add nuw nsw i32 %i.bt, 7
  %i.bx = and i32 %.037.i.peel, 7
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !53
  %i.cb = load i32, ptr %i.ai, align 4, !tbaa !53
  %i.cc = xor i32 %i.cb, %i.ca                    ; 2 uses
  store i32 %i.cc, ptr %i.ai, align 4, !tbaa !53
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !53
  %i.ce = xor i32 %i.cd, %i.cc                    ; 2 uses
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !53
  %i.cf = load i32, ptr %i.ai, align 4, !tbaa !53
  %i.cg = xor i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %i.ai, align 4, !tbaa !53
  %exitcond.not.i.peel = icmp eq i32 %i.bw, 1
  br i1 %exitcond.not.i.peel, label %reverse_mono_decorr.exit.peel, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.peel
  %.037.i.1.peel = add nuw i32 %i.bt, 6
  %i.ch = and i32 %.037.i.1.peel, 7
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ci ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !53
  %i.cl = load i32, ptr %i.aq, align 4, !tbaa !53
  %i.cm = xor i32 %i.cl, %i.ck                    ; 2 uses
  store i32 %i.cm, ptr %i.aq, align 4, !tbaa !53
  %i.cn = load i32, ptr %i.cj, align 4, !tbaa !53
  %i.co = xor i32 %i.cn, %i.cm                    ; 2 uses
  store i32 %i.co, ptr %i.cj, align 4, !tbaa !53
  %i.cp = load i32, ptr %i.aq, align 4, !tbaa !53
  %i.cq = xor i32 %i.cp, %i.co
  store i32 %i.cq, ptr %i.aq, align 4, !tbaa !53
  %exitcond.not.i.1.peel = icmp eq i32 %i.bw, 2
  br i1 %exitcond.not.i.1.peel, label %reverse_mono_decorr.exit.peel, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.037.i.2.peel = add nuw i32 %i.bt, 5
  %i.cr = and i32 %.037.i.2.peel, 7
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cs ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !53
  %i.cv = load i32, ptr %i.ar, align 4, !tbaa !53
  %i.cw = xor i32 %i.cv, %i.cu                    ; 2 uses
  store i32 %i.cw, ptr %i.ar, align 4, !tbaa !53
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !53
  %i.cy = xor i32 %i.cx, %i.cw                    ; 2 uses
  store i32 %i.cy, ptr %i.ct, align 4, !tbaa !53
  %i.cz = load i32, ptr %i.ar, align 4, !tbaa !53
  %i.da = xor i32 %i.cz, %i.cy
  store i32 %i.da, ptr %i.ar, align 4, !tbaa !53
  %exitcond.not.i.2.peel = icmp eq i32 %i.bw, 3
  br i1 %exitcond.not.i.2.peel, label %reverse_mono_decorr.exit.peel, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = and i32 %i.bt, 7
  %i.dc = xor i32 %i.db, 4
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dd ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !53
  %i.dg = load i32, ptr %i.as, align 4, !tbaa !53
  %i.dh = xor i32 %i.dg, %i.df                    ; 2 uses
  store i32 %i.dh, ptr %i.as, align 4, !tbaa !53
  %i.di = load i32, ptr %i.de, align 4, !tbaa !53
  %i.dj = xor i32 %i.di, %i.dh                    ; 2 uses
  store i32 %i.dj, ptr %i.de, align 4, !tbaa !53
  %i.dk = load i32, ptr %i.as, align 4, !tbaa !53
  %i.dl = xor i32 %i.dk, %i.dj
  store i32 %i.dl, ptr %i.as, align 4, !tbaa !53
  br label %reverse_mono_decorr.exit.peel

bb.p:                                             ; preds = %.lr.ph154.preheader
  %i.dm = and i32 %i.bt, 1
  %.not.i.peel = icmp eq i32 %i.dm, 0
  %i.dn = load i32, ptr %i.ai, align 4, !tbaa !53 ; 4 uses
  %i.do = load i32, ptr %i.aj, align 4, !tbaa !53 ; 2 uses
  br i1 %.not.i.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = shl nsw i32 %i.dn, 1
  %i.dq = sub nsw i32 %i.dp, %i.do                ; 2 uses
  %i.dr = shl nsw i32 %i.dq, 1
  %i.ds = sub nsw i32 %i.dr, %i.dn
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dt = mul nsw i32 %i.dn, 3
  %i.du = sub nsw i32 %i.dt, %i.do
  %i.dv = ashr i32 %i.du, 1                       ; 2 uses
  %i.dw = mul nsw i32 %i.dv, 3
  %i.dx = sub nsw i32 %i.dw, %i.dn
  %i.dy = ashr i32 %i.dx, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.peel = phi i32 [ %i.dv, %bb.r ], [ %i.dq, %bb.q ]
  %.1.i.peel = phi i32 [ %i.dy, %bb.r ], [ %i.ds, %bb.q ]
  store i32 %.sink.peel, ptr %i.ai, align 4, !tbaa !53
  store i32 %.1.i.peel, ptr %i.aj, align 4, !tbaa !53
  br label %reverse_mono_decorr.exit.peel

reverse_mono_decorr.exit.peel:                    ; preds = %.lr.ph.i.peel, %bb.m, %bb.n, %bb.o, %bb.s, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %8, ptr noundef nonnull align 4 dereferenceable(88) %7, i64 88, i1 false)
  %i.dz = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ea = load ptr, ptr %i.ap, align 8, !tbaa !50
  call fastcc void @decorr_mono(ptr noundef %i.dz, ptr noundef %i.ea, i32 noundef %i.b, ptr noundef %7, i32 noundef 1)
  %exitcond185.not.peel = icmp eq i32 %.0101, 1
  br i1 %exitcond185.not.peel, label %._crit_edge155.loopexit, label %.lr.ph154

.lr.ph154:                                        ; preds = %reverse_mono_decorr.exit.peel, %.lr.ph154
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %.lr.ph154 ], [ 1, %reverse_mono_decorr.exit.peel ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.ao, i8 0, i64 80, i1 false)
  %i.eb = load i8, ptr %i.bk, align 1, !tbaa !81
  %i.ec = sext i8 %i.eb to i32
  store i32 %i.ec, ptr %7, align 4, !tbaa !71
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv181
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !56  ; 2 uses
  %i.ef = icmp slt i8 %i.ee, 0
  %narrow = select i1 %i.ef, i8 1, i8 %i.ee
  %spec.select = sext i8 %narrow to i32
  store i32 %spec.select, ptr %i.ag, align 4, !tbaa !70
  %i.eg = and i64 %indvars.iv181, 1
  %i.eh = and i64 %indvars.iv181, 1
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.eh ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !50
  %i.ek = xor i64 %i.eg, 1
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ek ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !50
  call fastcc void @decorr_mono(ptr noundef %i.ej, ptr noundef %i.em, i32 noundef %i.ah, ptr noundef %7, i32 noundef -1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  %i.en = getelementptr inbounds nuw [88 x i8], ptr %8, i64 %indvars.iv181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.en, ptr noundef nonnull align 4 dereferenceable(88) %7, i64 88, i1 false)
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !50
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !50
  call fastcc void @decorr_mono(ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.b, ptr noundef %7, i32 noundef 1)
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge155.loopexit, label %.lr.ph154, !llvm.loop !252

._crit_edge155.loopexit:                          ; preds = %.lr.ph154, %reverse_mono_decorr.exit.peel
  %i.eq = and i32 %.0101, 1
  %i.er = zext nneg i32 %i.eq to i64
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %bb.k
  %.0.lcssa = phi i64 [ 0, %bb.k ], [ %i.er, %._crit_edge155.loopexit ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.0.lcssa
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !50 ; 2 uses
  br i1 %.not12.i, label %log2mono.exit.thread, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %._crit_edge155, %log2sample.exit.i
  %.0315.i = phi i32 [ %i.eu, %log2sample.exit.i ], [ %i.b, %._crit_edge155 ]
  %.0414.i = phi ptr [ %i.ev, %log2sample.exit.i ], [ %i.et, %._crit_edge155 ] ; 2 uses
  %.0813.i = phi i32 [ %.2.i, %log2sample.exit.i ], [ 0, %._crit_edge155 ]
  %i.eu = add nsw i32 %.0315.i, -1                ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0414.i, i64 4
  %i.ew = load i32, ptr %.0414.i, align 4, !tbaa !53 ; 2 uses
  %i.ex = tail call i32 @llvm.abs.i32(i32 %i.ew, i1 true) ; 5 uses
  %.not.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph.i122
  %i.ey = lshr i32 %i.ex, 1
  %i.ez = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.ey, i1 false) ; 2 uses
  %i.fa = sub nuw nsw i32 33, %i.ez               ; 2 uses
  %i.fb = icmp samesign ult i32 %i.ex, 256
  br i1 %i.fb, label %.thread.i.i, label %bb.t

.thread.i.i:                                      ; preds = %.preheader.preheader.i.i, %.lr.ph.i122
  %i.fc = phi i32 [ %i.fa, %.preheader.preheader.i.i ], [ 0, %.lr.ph.i122 ] ; 2 uses
  %i.fd = shl nuw nsw i32 %i.fc, 8
  %i.fe = sub nsw i32 9, %i.fc
  %i.ff = shl nuw nsw i32 %i.ex, %i.fe
  %i.fg = and i32 %i.ff, 255
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !56
  %i.fk = zext i8 %i.fj to i32
  %i.fl = or disjoint i32 %i.fd, %i.fk
  br label %log2sample.exit.i

bb.t:                                             ; preds = %.preheader.preheader.i.i
  %i.fm = lshr i32 %i.ex, 9
  %i.fn = add nuw i32 %i.fm, %i.ex
  %i.fo = shl nuw nsw i32 %i.fa, 8
  %i.fp = sub nsw i32 24, %i.ez
  %i.fq = lshr i32 %i.fn, %i.fp
  %i.fr = and i32 %i.fq, 255
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !56
  %i.fv = zext i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.fo, %i.fv
  %i.fx = freeze i32 %i.fw                        ; 2 uses
  %or.cond.not.i.i = icmp ult i32 %i.ak, %i.fx
  br i1 %or.cond.not.i.i, label %log2mono.exit, label %log2sample.exit.i

log2sample.exit.i:                                ; preds = %bb.t, %.thread.i.i
  %.pn.i = phi i32 [ %i.fl, %.thread.i.i ], [ %i.fx, %bb.t ]
  %.2.i = add i32 %.pn.i, %.0813.i                ; 2 uses
  %.not.i123 = icmp eq i32 %i.eu, 0
  br i1 %.not.i123, label %log2mono.exit, label %.lr.ph.i122, !llvm.loop !0

log2mono.exit:                                    ; preds = %bb.t, %log2sample.exit.i
  %.0.i = phi i32 [ %.2.i, %log2sample.exit.i ], [ -1, %bb.t ] ; 2 uses
  %i.fy = icmp eq i32 %.0.i, -1
  %i.fz = icmp ne i32 %.0101, 0
  %or.cond = and i1 %i.fz, %i.fy
  br i1 %or.cond, label %9, label %log2mono.exit.thread

9:                                                ; preds = %log2mono.exit
  %10 = lshr i32 %.0101, 1
  br label %bb.k

log2mono.exit.thread:                             ; preds = %._crit_edge155, %log2mono.exit
  %.0101.lcssa = phi i32 [ %i.bj, %._crit_edge155 ], [ %.0101, %log2mono.exit ]
  %.0.i137 = phi i32 [ 0, %._crit_edge155 ], [ %.0.i, %log2mono.exit ] ; 2 uses
  %i.ga = icmp ult i32 %.0.i137, %.0105157
  br i1 %i.ga, label %bb.u, label %bb.v

bb.u:                                             ; preds = %log2mono.exit.thread
  %i.gb = load ptr, ptr %i.al, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gb, ptr align 4 %i.et, i64 %i.af, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.am, ptr noundef nonnull align 16 dereferenceable(1408) %8, i64 1408, i1 false)
  store i32 %.0101.lcssa, ptr %i.an, align 8, !tbaa !59
  store i32 %.1, ptr %i.aa, align 8, !tbaa !79
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %log2mono.exit.thread
  %.1106 = phi i32 [ %.0.i137, %bb.u ], [ %.0105157, %log2mono.exit.thread ] ; 3 uses
  br i1 %.not118, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gc = add nsw i32 %.0103158, 1                ; 2 uses
  %i.gd = load i32, ptr %i.z, align 4, !tbaa !78  ; 2 uses
  %.not119 = icmp eq i32 %i.gd, 0
  br i1 %.not119, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.w, %.thread
  %.sink247 = phi i32 [ %i.au, %.thread ], [ %i.gd, %bb.w ]
  %.2.ph.ph = phi i32 [ %.0105157, %.thread ], [ %.1106, %bb.w ]
  %.1104.ph.ph = phi i32 [ %.0103158, %.thread ], [ %i.gc, %bb.w ]
  %i.ge = shl i32 %.sink247, 1
  %i.gf = load i32, ptr %i.ab, align 8, !tbaa !46
  %i.gg = add nsw i32 %i.gf, -1
  %i.gh = and i32 %i.gg, %i.ge
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.w, %bb.i
  %.sink243 = phi i32 [ 1, %bb.i ], [ 1, %bb.w ], [ %i.gh, %.sink.split.sink.split ]
  %.2.ph = phi i32 [ %.0105157, %bb.i ], [ %.1106, %bb.w ], [ %.2.ph.ph, %.sink.split.sink.split ]
  %.1104.ph = phi i32 [ %.0103158, %bb.i ], [ %i.gc, %bb.w ], [ %.1104.ph.ph, %.sink.split.sink.split ]
  store i32 %.sink243, ptr %i.z, align 4, !tbaa !78
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.v
  %.2 = phi i32 [ %.1106, %bb.v ], [ %.2.ph, %.sink.split ]
  %.1104 = phi i32 [ 1, %bb.v ], [ %.1104.ph, %.sink.split ] ; 2 uses
  %i.gi = load i32, ptr %i.x, align 4, !tbaa !43
  %i.gj = icmp slt i32 %.1104, %i.gi
  br i1 %i.gj, label %bb.f, label %._crit_edge161

._crit_edge161:                                   ; preds = %bb.x, %bb.e
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 6 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !45
  %.not115 = icmp eq i32 %i.gl, 0
  br i1 %.not115, label %bb.bw, label %bb.y

bb.y:                                             ; preds = %._crit_edge161
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.gm = load i32, ptr %i.l, align 4, !tbaa !52
  %i.gn = lshr i32 %i.gm, 10
  %i.go = and i32 %i.gn, 7936
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 1412 ; 3 uses
  %i.gq = tail call i32 @llvm.umin.i32(i32 %i.go, i32 5888)
  %i.gr = add nuw nsw i32 %i.gq, 1024
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !84
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !59 ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 1408 ; 5 uses
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !85
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 18 uses
  %i.gw = icmp sgt i32 %i.gt, -2
  br i1 %i.gw, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.y
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.gy = add i32 %i.gt, 2
  %wide.trip.count.i.i = zext i32 %i.gy to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ac ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %indvars.iv.i.i ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.i.i ; 2 uses
  %i.hb = load i32, ptr %i.a, align 8, !tbaa !49
  %i.hc = shl nsw i32 %i.hb, 2
  %i.hd = sext i32 %i.hc to i64
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.ha, i64 noundef %i.hd) #15
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !50
  %.not.i.i127 = icmp eq ptr %i.he, null
  br i1 %.not.i.i127, label %analyze_mono.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hf = load i32, ptr %i.l, align 4, !tbaa !52
  %i.hg = and i32 %i.hf, 1073741828
  %.not19.i.i = icmp eq i32 %i.hg, 0
  br i1 %.not19.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hj = load i32, ptr %i.a, align 8, !tbaa !49
  %i.hk = shl nsw i32 %i.hj, 2
  %i.hl = sext i32 %i.hk to i64
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hi, i64 noundef %i.hl) #15
  %i.hm = load ptr, ptr %i.hh, align 8, !tbaa !50
  %.not20.i.i = icmp eq ptr %i.hm, null
  br i1 %.not20.i.i, label %analyze_mono.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.i.i, label %.loopexit.i, label %bb.z, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.ac, %bb.y
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1408) %6, ptr noundef nonnull align 8 dereferenceable(1408) %i.hn, i64 1408, i1 false)
  %i.ho = load ptr, ptr %i.gv, align 8, !tbaa !50
  %i.hp = load i32, ptr %i.a, align 8, !tbaa !49
  %i.hq = shl nsw i32 %i.hp, 2
  %i.hr = sext i32 %i.hq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ho, ptr align 4 %1, i64 %i.hr, i1 false)
  %i.hs = icmp sgt i32 %i.gt, 0
  br i1 %i.hs, label %.lr.ph.i126.preheader, label %.critedge.i

.lr.ph.i126.preheader:                            ; preds = %.loopexit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !70
  %.not49.i162 = icmp eq i32 %i.hu, 0
  br i1 %.not49.i162, label %.critedge.loopexit.i, label %.lr.ph164

.lr.ph.i126:                                      ; preds = %.lr.ph164
  %i.hv = getelementptr inbounds nuw [88 x i8], ptr %6, i64 %indvars.iv.next.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !70
  %.not49.i = icmp eq i32 %i.hx, 0
  br i1 %.not49.i, label %.critedge.loopexit.i, label %.lr.ph164, !llvm.loop !253

.lr.ph164:                                        ; preds = %.lr.ph.i126.preheader, %.lr.ph.i126
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i, %.lr.ph.i126 ], [ 0, %.lr.ph.i126.preheader ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [88 x i8], ptr %6, i64 %indvars.iv.i163
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %indvars.iv.i163
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !50
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i163, 1 ; 6 uses
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %indvars.iv.next.i
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !50
  %i.id = load i32, ptr %i.a, align 8, !tbaa !49
  call fastcc void @decorr_mono(ptr noundef %i.ia, ptr noundef %i.ic, i32 noundef %i.id, ptr noundef %i.hy, i32 noundef 1)
  %i.ie = load i32, ptr %i.gu, align 4, !tbaa !85 ; 3 uses
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp slt i64 %indvars.iv.next.i, %i.if
  br i1 %i.ig, label %.lr.ph.i126, label %..critedge.loopexit.i_crit_edge, !llvm.loop !253

..critedge.loopexit.i_crit_edge:                  ; preds = %.lr.ph164
  br label %.critedge.loopexit.i, !llvm.loop !253

.critedge.loopexit.i:                             ; preds = %.lr.ph.i126, %..critedge.loopexit.i_crit_edge, %.lr.ph.i126.preheader
  %.0.lcssa.ph.in.i = phi i64 [ 0, %.lr.ph.i126.preheader ], [ %indvars.iv.next.i, %..critedge.loopexit.i_crit_edge ], [ %indvars.iv.next.i, %.lr.ph.i126 ]
  %.lcssa.ph.i = phi i32 [ %i.gt, %.lr.ph.i126.preheader ], [ %i.ie, %..critedge.loopexit.i_crit_edge ], [ %i.ie, %.lr.ph.i126 ]
  %i.ih = and i64 %.0.lcssa.ph.in.i, 4294967295
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %.loopexit.i ], [ %i.ih, %.critedge.loopexit.i ]
  %.lcssa.i = phi i32 [ %i.gt, %.loopexit.i ], [ %.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.ii = sext i32 %.lcssa.i to i64
  %i.ij = getelementptr inbounds [16 x i8], ptr %i.gv, i64 %i.ii ; 2 uses
  %i.ik = load i32, ptr %i.a, align 8, !tbaa !49  ; 3 uses
  %.not12.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not12.i.i, label %log2mono.exit.i, label %.lr.ph.i58.preheader.i

.lr.ph.i58.preheader.i:                           ; preds = %.critedge.i
  %i.il = load ptr, ptr %i.ij, align 8, !tbaa !50
  br label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %log2sample.exit.i.i, %.lr.ph.i58.preheader.i
  %.0315.i.i = phi i32 [ %i.im, %log2sample.exit.i.i ], [ %i.ik, %.lr.ph.i58.preheader.i ]
  %.0414.i.i = phi ptr [ %i.in, %log2sample.exit.i.i ], [ %i.il, %.lr.ph.i58.preheader.i ] ; 2 uses
  %.0813.i.i = phi i32 [ %.2.i.i, %log2sample.exit.i.i ], [ 0, %.lr.ph.i58.preheader.i ]
  %i.im = add nsw i32 %.0315.i.i, -1              ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0414.i.i, i64 4
  %i.io = load i32, ptr %.0414.i.i, align 4, !tbaa !53 ; 2 uses
  %i.ip = tail call i32 @llvm.abs.i32(i32 %i.io, i1 true) ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.io, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.lr.ph.i58.i
  %i.iq = lshr i32 %i.ip, 1
  %i.ir = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 false) ; 2 uses
  %i.is = sub nuw nsw i32 33, %i.ir               ; 2 uses
  %i.it = icmp samesign ult i32 %i.ip, 256
  br i1 %i.it, label %.thread.i.i.i, label %bb.ad

.thread.i.i.i:                                    ; preds = %.preheader.preheader.i.i.i, %.lr.ph.i58.i
  %i.iu = phi i32 [ %i.is, %.preheader.preheader.i.i.i ], [ 0, %.lr.ph.i58.i ] ; 2 uses
  %i.iv = shl nuw nsw i32 %i.iu, 8
  %i.iw = sub nsw i32 9, %i.iu
  %i.ix = shl nuw nsw i32 %i.ip, %i.iw
  %i.iy = and i32 %i.ix, 255
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !56
  %i.jc = zext i8 %i.jb to i32
  %i.jd = or disjoint i32 %i.iv, %i.jc
  br label %log2sample.exit.i.i

bb.ad:                                            ; preds = %.preheader.preheader.i.i.i
  %i.je = lshr i32 %i.ip, 9
  %i.jf = add nuw i32 %i.je, %i.ip
  %i.jg = shl nuw nsw i32 %i.is, 8
  %i.jh = sub nsw i32 24, %i.ir
  %i.ji = lshr i32 %i.jf, %i.jh
  %i.jj = and i32 %i.ji, 255
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !56
  %i.jn = zext i8 %i.jm to i32
  %i.jo = or disjoint i32 %i.jg, %i.jn
  %i.jp = freeze i32 %i.jo
end_hunk_0
begin_hunk_1_@wv_mono:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ro, ptr noundef nonnull align 4 dereferenceable(32) %i.vk, i64 32, i1 false)
  %i.vn = load i32, ptr %i.rq, align 4, !tbaa !87
  %i.vo = sdiv i32 %i.vn, %i.vi                   ; 2 uses
  store i32 %i.vo, ptr %i.rm, align 4, !tbaa !72
  store i32 %i.vo, ptr %i.vm, align 4, !tbaa !72
  br label %decorr_mono_buffer.exit113.i.i

decorr_mono_buffer.exit113.i.i:                   ; preds = %bb.bj, %reverse_mono_decorr.exit.i103.i.i
  call fastcc void @decorr_mono(ptr noundef readonly %i.vf, ptr noundef %i.vh, i32 noundef %i.vi, ptr noundef %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next164.i.i, %i.rt
  br i1 %exitcond103.not.i, label %.critedge2.loopexit.i.i, label %.lr.ph153.i.i, !llvm.loop !256

.critedge2.loopexit.i.i:                          ; preds = %decorr_mono_buffer.exit113.i.i, %.lr.ph153.i.i, %decorr_mono_buffer.exit113.i.i.peel, %.lr.ph153.preheader.i.i
  %.0.lcssa.ph.in.i.i = phi i64 [ 0, %.lr.ph153.preheader.i.i ], [ %i.rt, %decorr_mono_buffer.exit113.i.i.peel ], [ %i.rt, %decorr_mono_buffer.exit113.i.i ], [ %indvars.iv163.i.i, %.lr.ph153.i.i ]
  %i.vp = and i64 %.0.lcssa.ph.in.i.i, 4294967295
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge2.loopexit.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.vp, %.critedge2.loopexit.i.i ] ; 2 uses
  %i.vq = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %.0.lcssa.i.i ; 2 uses
  %i.vr = load i32, ptr %i.a, align 8, !tbaa !49  ; 3 uses
  %.not12.i114.i.i = icmp eq i32 %i.vr, 0
  br i1 %.not12.i114.i.i, label %log2mono.exit128.i.i, label %.lr.ph.i115.i.i

.lr.ph.i115.i.i:                                  ; preds = %.critedge2.i.i
  %i.vs = load ptr, ptr %i.vq, align 8, !tbaa !50
  br label %bb.bk

bb.bk:                                            ; preds = %log2sample.exit.i122.i.i, %.lr.ph.i115.i.i
  %.0315.i116.i.i = phi i32 [ %i.vr, %.lr.ph.i115.i.i ], [ %i.vt, %log2sample.exit.i122.i.i ]
  %.0414.i117.i.i = phi ptr [ %i.vs, %.lr.ph.i115.i.i ], [ %i.vu, %log2sample.exit.i122.i.i ] ; 2 uses
  %.0813.i118.i.i = phi i32 [ 0, %.lr.ph.i115.i.i ], [ %.2.i124.i.i, %log2sample.exit.i122.i.i ]
  %i.vt = add nsw i32 %.0315.i116.i.i, -1         ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.0414.i117.i.i, i64 4
  %i.vv = load i32, ptr %.0414.i117.i.i, align 4, !tbaa !53 ; 2 uses
  %i.vw = tail call i32 @llvm.abs.i32(i32 %i.vv, i1 true) ; 5 uses
  %.not.i.i119.i.i = icmp eq i32 %i.vv, 0
  br i1 %.not.i.i119.i.i, label %.thread.i.i127.i.i, label %.preheader.preheader.i.i120.i.i

.preheader.preheader.i.i120.i.i:                  ; preds = %bb.bk
  %i.vx = lshr i32 %i.vw, 1
  %i.vy = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.vx, i1 false) ; 2 uses
  %i.vz = sub nuw nsw i32 33, %i.vy               ; 2 uses
  %i.wa = icmp samesign ult i32 %i.vw, 256
  br i1 %i.wa, label %.thread.i.i127.i.i, label %bb.bl

.thread.i.i127.i.i:                               ; preds = %.preheader.preheader.i.i120.i.i, %bb.bk
  %i.wb = phi i32 [ %i.vz, %.preheader.preheader.i.i120.i.i ], [ 0, %bb.bk ] ; 2 uses
  %i.wc = shl nuw nsw i32 %i.wb, 8
  %i.wd = sub nsw i32 9, %i.wb
  %i.we = shl nuw nsw i32 %i.vw, %i.wd
  %i.wf = and i32 %i.we, 255
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.wg
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !56
  %i.wj = zext i8 %i.wi to i32
  %i.wk = or disjoint i32 %i.wc, %i.wj
  br label %log2sample.exit.i122.i.i

bb.bl:                                            ; preds = %.preheader.preheader.i.i120.i.i
  %i.wl = lshr i32 %i.vw, 9
  %i.wm = add nuw i32 %i.wl, %i.vw
  %i.wn = shl nuw nsw i32 %i.vz, 8
  %i.wo = sub nsw i32 24, %i.vy
  %i.wp = lshr i32 %i.wm, %i.wo
  %i.wq = and i32 %i.wp, 255
  %i.wr = zext nneg i32 %i.wq to i64
  %i.ws = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !56
  %i.wu = zext i8 %i.wt to i32
  %i.wv = or disjoint i32 %i.wn, %i.wu
  %i.ww = freeze i32 %i.wv                        ; 2 uses
  %or.cond.not.i.i121.i.i = icmp ult i32 %i.rv, %i.ww
  br i1 %or.cond.not.i.i121.i.i, label %delta_mono.exit.i, label %log2sample.exit.i122.i.i

log2sample.exit.i122.i.i:                         ; preds = %bb.bl, %.thread.i.i127.i.i
  %.pn.i123.i.i = phi i32 [ %i.wk, %.thread.i.i127.i.i ], [ %i.ww, %bb.bl ]
  %.2.i124.i.i = add i32 %.pn.i123.i.i, %.0813.i118.i.i ; 2 uses
  %.not.i125.i.i = icmp eq i32 %i.vt, 0
  br i1 %.not.i125.i.i, label %log2mono.exit128.i.i, label %bb.bk, !llvm.loop !0

log2mono.exit128.i.i:                             ; preds = %log2sample.exit.i122.i.i, %.critedge2.i.i
  %.0.i126.i.i = phi i32 [ 0, %.critedge2.i.i ], [ %.2.i124.i.i, %log2sample.exit.i122.i.i ] ; 3 uses
  %.not98.i.i = icmp ult i32 %.0.i126.i.i, %i.sh
  br i1 %.not98.i.i, label %bb.bm, label %delta_mono.exit.i

bb.bm:                                            ; preds = %log2mono.exit128.i.i
  store i32 %.0.i126.i.i, ptr %i.jq, align 4, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.hn, i8 0, i64 1408, i1 false)
  %i.wx = mul nuw nsw i64 %.0.lcssa.i.i, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hn, ptr nonnull align 4 %6, i64 %i.wx, i1 false)
  %i.wy = load ptr, ptr %i.ry, align 8, !tbaa !50
  %i.wz = load ptr, ptr %i.vq, align 8, !tbaa !50
  %i.xa = shl nsw i32 %i.vr, 2
  %i.xb = sext i32 %i.xa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.wy, ptr align 4 %i.wz, i64 %i.xb, i1 false)
  %exitcond104.not.i = icmp eq i32 %.187158.i.i, 7
  br i1 %exitcond104.not.i, label %delta_mono.exit.i, label %.preheader.i.i, !llvm.loop !257

delta_mono.exit.i:                                ; preds = %bb.ay, %bb.bm, %log2mono.exit128.i.i, %bb.bl, %.thread.i.i124, %bb.aj
  %i.xc = load i32, ptr %i.gk, align 8, !tbaa !45 ; 3 uses
  %i.xd = and i32 %i.xc, 2
  %.not53.i = icmp eq i32 %i.xd, 0
  br i1 %.not53.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %delta_mono.exit.i
  %i.xe = load i32, ptr %i.lp, align 4, !tbaa !70
  %.not54.i = icmp eq i32 %i.xe, 0
  br i1 %.not54.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 2 uses
  %i.xg = load float, ptr %i.xf, align 8, !tbaa !48
  %i.xh = fpext nsz float %i.xg to double
  %i.xi = load i32, ptr %i.hn, align 8, !tbaa !71
  %i.xj = sitofp nsz i32 %i.xi to double
  %i.xk = tail call nsz double @llvm.fmuladd.f64(double %i.xh, double 2.000000e+00, double %i.xj)
  %i.xl = fdiv nsz double %i.xk, 3.000000e+00
  %i.xm = fptrunc nsz double %i.xl to float
  store float %i.xm, ptr %i.xf, align 8, !tbaa !48
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %delta_mono.exit.i
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 2232
  store float 2.000000e+00, ptr %i.xn, align 8, !tbaa !48
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.ai
  %i.xo = phi i32 [ %i.xc, %bb.bo ], [ %i.xc, %bb.bp ], [ %i.ln, %bb.ai ]
  %i.xp = and i32 %i.xo, 16
  %.not55.i = icmp eq i32 %i.xp, 0
  br i1 %.not55.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call fastcc void @sort_mono(ptr noundef nonnull %0, ptr noundef %6)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.not56.i = icmp eq i32 %3, 0
  %.pre111.i = load i32, ptr %i.gu, align 4, !tbaa !85 ; 4 uses
  br i1 %.not56.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.xq = sext i32 %.pre111.i to i64
  %i.xr = getelementptr [16 x i8], ptr %i.gv, i64 %i.xq
  %i.xs = getelementptr i8, ptr %i.xr, i64 16
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !50
  %i.xu = load i32, ptr %i.a, align 8, !tbaa !49
  %i.xv = shl nsw i32 %i.xu, 2
  %i.xw = sext i32 %i.xv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.xt, i64 %i.xw, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.xx = icmp sgt i32 %.pre111.i, 0
  br i1 %i.xx, label %.lr.ph93.preheader.i, label %._crit_edge.i

.lr.ph93.preheader.i:                             ; preds = %bb.bu
  %wide.trip.count.i = zext nneg i32 %.pre111.i to i64
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %bb.bv, %.lr.ph93.preheader.i
  %indvars.iv105.i = phi i64 [ 0, %.lr.ph93.preheader.i ], [ %indvars.iv.next106.i, %bb.bv ] ; 3 uses
  %i.xy = getelementptr inbounds nuw [88 x i8], ptr %i.hn, i64 %indvars.iv105.i
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !70
  %.not57.i = icmp eq i32 %i.ya, 0
  br i1 %.not57.i, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph93.i
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %wide.trip.count.i
  br i1 %exitcond109.not.i, label %._crit_edge.i, label %.lr.ph93.i, !llvm.loop !258

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph93.i
  %i.yb = trunc nuw nsw i64 %indvars.iv105.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bv, %._crit_edge.loopexit.split.loop.exit.i, %bb.bu
  %.1.lcssa.i = phi i32 [ 0, %bb.bu ], [ %i.yb, %._crit_edge.loopexit.split.loop.exit.i ], [ %.pre111.i, %bb.bv ]
  store i32 %.1.lcssa.i, ptr %i.gs, align 8, !tbaa !59
  br label %analyze_mono.exit

analyze_mono.exit:                                ; preds = %bb.z, %bb.ab, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.by

bb.bw:                                            ; preds = %._crit_edge161
  %.not116 = icmp eq i32 %3, 0
  br i1 %.not116, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !50
  %i.ye = sext i32 %i.c to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.yd, i64 %i.ye, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx, %analyze_mono.exit
  br i1 %.not114, label %11, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.yf = load i32, ptr %i.gk, align 8, !tbaa !45
  %.not117 = icmp eq i32 %i.yf, 0
  br i1 %.not117, label %scan_word.exit, label %11

11:                                               ; preds = %bb.bz, %bb.by
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 676
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %12, i8 0, i64 76, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %.not5.i = icmp eq i32 %i.b, 0
  br i1 %.not5.i, label %scan_word.exit, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %11
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !50
  %i.yi = sext i32 %i.b to i64
  %i.yj = getelementptr [4 x i8], ptr %i.yh, i64 %i.yi
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ch, %.lr.ph.i128
  %i.ym = phi i32 [ 0, %.lr.ph.i128 ], [ %i.zx, %bb.ch ] ; 7 uses
  %i.yn = phi i32 [ 0, %.lr.ph.i128 ], [ %i.zy, %bb.ch ] ; 6 uses
  %i.yo = phi i32 [ 0, %.lr.ph.i128 ], [ %i.zz, %bb.ch ] ; 5 uses
  %.in.i = phi i32 [ %i.b, %.lr.ph.i128 ], [ %i.yp, %bb.ch ]
  %.pn.i130 = phi ptr [ %i.yj, %.lr.ph.i128 ], [ %.16.i, %bb.ch ]
  %.16.i = getelementptr i8, ptr %.pn.i130, i64 -4 ; 2 uses
  %i.yp = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.yq = load i32, ptr %.16.i, align 4, !tbaa !53
  %i.yr = tail call i32 @llvm.abs.i32(i32 %i.yq, i1 false) ; 3 uses
  %i.ys = ashr i32 %i.yo, 4                       ; 2 uses
  %i.yt = add nsw i32 %i.ys, 1                    ; 2 uses
  %i.yu = icmp ult i32 %i.yr, %i.yt
  br i1 %i.yu, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.yv = add i32 %i.yo, 126
  %.neg36.i = sdiv i32 %i.yv, -128
  %.neg37.i = shl nsw i32 %.neg36.i, 1
  %i.yw = add i32 %.neg37.i, %i.yo                ; 2 uses
  store i32 %i.yw, ptr %13, align 8, !tbaa !53
  br label %bb.ch

bb.cc:                                            ; preds = %bb.ca
  %i.yx = add i32 %i.yo, 128
  %i.yy = sdiv i32 %i.yx, 128
  %i.yz = mul nsw i32 %i.yy, 5
  %i.za = add i32 %i.yz, %i.yo                    ; 4 uses
  store i32 %i.za, ptr %13, align 8, !tbaa !53
  %i.zb = sub nuw i32 %i.yr, %i.yt
  %i.zc = ashr i32 %i.yn, 4                       ; 2 uses
  %i.zd = add nsw i32 %i.zc, 1
  %i.ze = icmp ult i32 %i.zb, %i.zd
  br i1 %i.ze, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.zf = add i32 %i.yn, 62
  %.neg34.i = sdiv i32 %i.zf, -64
  %.neg35.i = shl nsw i32 %.neg34.i, 1
  %i.zg = add i32 %.neg35.i, %i.yn                ; 2 uses
  store i32 %i.zg, ptr %i.yk, align 4, !tbaa !53
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.zh = add i32 %i.yn, 64
  %i.zi = sdiv i32 %i.zh, 64
  %i.zj = mul nsw i32 %i.zi, 5
  %i.zk = add i32 %i.zj, %i.yn                    ; 3 uses
  store i32 %i.zk, ptr %i.yk, align 4, !tbaa !53
  %i.zl = add i32 %i.yr, -2
  %i.zm = add nsw i32 %i.ys, %i.zc
  %i.zn = sub i32 %i.zl, %i.zm
  %i.zo = ashr i32 %i.ym, 4
  %i.zp = add nsw i32 %i.zo, 1
  %i.zq = icmp ult i32 %i.zn, %i.zp
  br i1 %i.zq, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.zr = add i32 %i.ym, 30
  %.neg.i = sdiv i32 %i.zr, -32
  %.neg33.i = shl nsw i32 %.neg.i, 1
  %i.zs = add i32 %.neg33.i, %i.ym                ; 2 uses
  store i32 %i.zs, ptr %i.yl, align 8, !tbaa !53
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.zt = add i32 %i.ym, 32
  %i.zu = sdiv i32 %i.zt, 32
  %i.zv = mul nsw i32 %i.zu, 5
  %i.zw = add i32 %i.zv, %i.ym                    ; 2 uses
  store i32 %i.zw, ptr %i.yl, align 8, !tbaa !53
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.cb
  %i.zx = phi i32 [ %i.ym, %bb.cd ], [ %i.zw, %bb.cg ], [ %i.zs, %bb.cf ], [ %i.ym, %bb.cb ]
  %i.zy = phi i32 [ %i.zg, %bb.cd ], [ %i.zk, %bb.cg ], [ %i.zk, %bb.cf ], [ %i.yn, %bb.cb ]
  %i.zz = phi i32 [ %i.za, %bb.cd ], [ %i.za, %bb.cg ], [ %i.za, %bb.cf ], [ %i.yw, %bb.cb ]
  %.not.i131 = icmp eq i32 %i.yp, 0
  br i1 %.not.i131, label %scan_word.exit, label %bb.ca, !llvm.loop !2

scan_word.exit:                                   ; preds = %bb.ch, %11, %bb.bz, %bb.c, %._crit_edge.thread
  %.0107 = phi i32 [ 0, %._crit_edge.thread ], [ %i.q, %bb.c ], [ 0, %bb.bz ], [ 0, %11 ], [ 0, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret i32 %.0107
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @wv_stereo(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.Decorr, align 4             ; 19 uses
  %6 = alloca [16 x %struct.Decorr], align 16     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 15 uses
  %i.c = shl i32 %i.b, 2                          ; 3 uses
  %i.d = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !53
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53
  %.not224 = icmp eq i32 %i.h, 0
  br i1 %.not224, label %bb.c, label %._crit_edge.loopexit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !259

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0207.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %i.j = icmp eq i32 %.0207.lcssa, %i.b
  br i1 %i.j, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !52
  %i.m = and i32 %i.l, -17
  store i32 %i.m, ptr %i.k, align 4, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.n, i8 0, i64 1408, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 676
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.o, i8 0, i64 76, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i32 0, ptr %i.p, align 8, !tbaa !59
  br label %scan_word.exit263

bb.d:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 6 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !52
  %i.s = lshr i32 %i.r, 10
  %i.t = and i32 %i.s, 7936
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 5888)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.w = load i32, ptr %i.v, align 4, !tbaa !267  ; 3 uses
  %.not226 = icmp eq i32 %i.w, 0                  ; 2 uses
  %i.x = tail call fastcc i32 @allocate_buffers(ptr noundef %0) ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %scan_word.exit263, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not232 = icmp ne i32 %3, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !43  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 6
  %or.cond352 = select i1 %.not232, i1 true, i1 %i.ab
  br i1 %or.cond352, label %._crit_edge322, label %bb.f

._crit_edge322:                                   ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 812
  store i32 0, ptr %i.ac, align 4, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i32 0, ptr %i.ad, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge322
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.af = icmp sgt i32 %i.aa, 0
  br i1 %i.af, label %.lr.ph296, label %.._crit_edge297_crit_edge

.._crit_edge297_crit_edge:                        ; preds = %bb.f
  %.pre326 = add i32 %i.w, -1
  br label %._crit_edge297

.lr.ph296:                                        ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 812 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 656
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 5 uses
  %.off = add i32 %i.w, -1                        ; 2 uses
  %switch = icmp ult i32 %.off, -2
  %i.al = sext i32 %i.c to i64                    ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.b, i32 2048)
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 3 uses
  %.not29.i = icmp eq i32 %i.b, 0
  %i.ax = add nuw nsw i32 %i.u, 1023              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 784
  %wide.trip.count305 = zext i32 %i.b to i64      ; 6 uses
  %i.bc = shl nuw nsw i64 %wide.trip.count305, 2  ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  %n.vec = and i64 %wide.trip.count305, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count305
  %xtraiter = and i64 %wide.trip.count305, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bd = add nsw i64 %wide.trip.count305, -1
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph296, %bb.ao
  %.0205294 = phi i32 [ -1, %.lr.ph296 ], [ %.2, %bb.ao ] ; 4 uses
  %.0209293 = phi i32 [ 0, %.lr.ph296 ], [ %.1210, %bb.ao ] ; 4 uses
  %.0211292 = phi i32 [ 0, %.lr.ph296 ], [ %.4, %bb.ao ] ; 3 uses
  %.not234 = icmp eq i32 %.0209293, 0             ; 2 uses
  br i1 %.not234, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = load i32, ptr %i.ah, align 8, !tbaa !79
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bl = load i32, ptr %i.ag, align 4, !tbaa !78 ; 4 uses
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = load i32, ptr %i.ah, align 8, !tbaa !79 ; 3 uses
  br i1 %i.bm, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.sink.split, label %bb.k, !llvm.loop !260

.thread:                                          ; preds = %bb.i
  %i.bp = add nsw i32 %i.bl, -1
  %i.bq = and i32 %i.bn, %i.bp
  %i.br = or i32 %i.bq, %i.bl                     ; 2 uses
  %i.bs = icmp eq i32 %i.br, %i.bn
  br i1 %i.bs, label %.sink.split.sink.split, label %bb.k, !llvm.loop !260

bb.k:                                             ; preds = %.thread, %bb.j, %bb.h
  %.1 = phi i32 [ 0, %bb.j ], [ %i.bk, %bb.h ], [ %i.br, %.thread ] ; 2 uses
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.bu = sext i32 %.1 to i64
  %i.bv = getelementptr inbounds [19 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  %i.bw = load i32, ptr %i.ak, align 8, !tbaa !42
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr @decorr_filter_nterms, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !56
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  br label %bb.l

bb.l:                                             ; preds = %9, %bb.k
  %.1212 = phi i32 [ %.0211292, %bb.k ], [ %.3, %9 ] ; 2 uses
  %.0204 = phi i32 [ %i.ca, %bb.k ], [ %10, %9 ]  ; 6 uses
  br i1 %switch, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !268
  %i.ce = icmp eq i8 %i.cd, 0
  %or.cond = or i1 %.not226, %i.ce
  br i1 %or.cond, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.not236 = icmp eq i32 %.1212, 0
  br i1 %.not236, label %bb.o, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.n
  %.pre312 = load ptr, ptr %i.an, align 8, !tbaa !269
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, i64 noundef %i.al) #15
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, i64 noundef %i.al) #15
  %i.cf = load ptr, ptr %i.an, align 8, !tbaa !269
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cf, ptr align 4 %1, i64 %i.al, i1 false)
  %i.cg = load ptr, ptr %i.ap, align 8, !tbaa !270
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cg, ptr align 4 %2, i64 %i.al, i1 false)
  %.pre313 = load ptr, ptr %i.an, align 8, !tbaa !269 ; 10 uses
  br i1 %i.d, label %.lr.ph286, label %.loopexit

.lr.ph286:                                        ; preds = %bb.o
  %i.ch = load ptr, ptr %i.ap, align 8, !tbaa !270 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph286
  %scevgep = getelementptr i8, ptr %.pre313, i64 %i.bc
  %scevgep359 = getelementptr i8, ptr %i.ch, i64 %i.bc
  %bound0 = icmp ult ptr %.pre313, %scevgep359
  %bound1 = icmp ult ptr %i.ch, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 3 uses
  %wide.load = load <4 x i32>, ptr %i.ci, align 4, !tbaa !53, !alias.scope !271
  %wide.load360 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !53, !alias.scope !271
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.pre313, i64 %index ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %wide.load361 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !53, !alias.scope !272, !noalias !271
  %wide.load362 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !53, !alias.scope !272, !noalias !271
  %i.cm = sub nsw <4 x i32> %wide.load361, %wide.load ; 2 uses
  %i.cn = sub nsw <4 x i32> %wide.load362, %wide.load360 ; 2 uses
  store <4 x i32> %i.cm, ptr %i.ck, align 4, !tbaa !53, !alias.scope !272, !noalias !271
  store <4 x i32> %i.cn, ptr %i.cl, align 4, !tbaa !53, !alias.scope !272, !noalias !271
  %i.co = ashr <4 x i32> %i.cm, splat (i32 1)
  %i.cp = ashr <4 x i32> %i.cn, splat (i32 1)
  %wide.load363 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !53, !alias.scope !271
  %wide.load364 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !53, !alias.scope !271
  %i.cq = add nsw <4 x i32> %wide.load363, %i.co
  %i.cr = add nsw <4 x i32> %wide.load364, %i.cp
  store <4 x i32> %i.cq, ptr %i.ci, align 4, !tbaa !53, !alias.scope !271
  store <4 x i32> %i.cr, ptr %i.cj, align 4, !tbaa !53, !alias.scope !271
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph286, %middle.block
  %indvars.iv302.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph286 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv302.ph ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !53
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.pre313, i64 %indvars.iv302.ph ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !53
  %i.cx = sub nsw i32 %i.cw, %i.cu                ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !53
  %i.cy = ashr i32 %i.cx, 1
  %i.cz = load i32, ptr %i.ct, align 4, !tbaa !53
  %i.da = add nsw i32 %i.cz, %i.cy
  store i32 %i.da, ptr %i.ct, align 4, !tbaa !53
  %indvars.iv.next303.prol = or disjoint i64 %indvars.iv302.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv302.unr = phi i64 [ %indvars.iv302.ph, %scalar.ph.preheader ], [ %indvars.iv.next303.prol, %scalar.ph.prol ]
  %i.db = icmp eq i64 %indvars.iv302.ph, %i.bd
  br i1 %i.db, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv302 = phi i64 [ %indvars.iv.next303.1, %scalar.ph ], [ %indvars.iv302.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv302 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !53
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.pre313, i64 %indvars.iv302 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !53
  %i.dg = sub nsw i32 %i.df, %i.dd                ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !53
  %i.dh = ashr i32 %i.dg, 1
  %i.di = load i32, ptr %i.dc, align 4, !tbaa !53
  %i.dj = add nsw i32 %i.di, %i.dh
  store i32 %i.dj, ptr %i.dc, align 4, !tbaa !53
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next303 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !53
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.pre313, i64 %indvars.iv.next303 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !53
  %i.do = sub nsw i32 %i.dn, %i.dl                ; 2 uses
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !53
  %i.dp = ashr i32 %i.do, 1
  %i.dq = load i32, ptr %i.dk, align 4, !tbaa !53
  %i.dr = add nsw i32 %i.dq, %i.dp
  store i32 %i.dr, ptr %i.dk, align 4, !tbaa !53
  %indvars.iv.next303.1 = add nuw nsw i64 %indvars.iv302, 2 ; 2 uses
  %exitcond306.not.1 = icmp eq i64 %indvars.iv.next303.1, %wide.trip.count305
  br i1 %exitcond306.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !265

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %..loopexit_crit_edge, %bb.o
  %i.ds = phi ptr [ %.pre312, %..loopexit_crit_edge ], [ %.pre313, %bb.o ], [ %.pre313, %middle.block ], [ %.pre313, %scalar.ph ], [ %.pre313, %scalar.ph.prol.loopexit ]
  %i.dt = load ptr, ptr %7, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dt, ptr align 4 %i.ds, i64 %i.al, i1 false)
  %i.du = load ptr, ptr %i.am, align 8, !tbaa !50
  %i.dv = load ptr, ptr %i.ap, align 8, !tbaa !270
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.du, ptr align 4 %i.dv, i64 %i.al, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.dw = load ptr, ptr %7, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dw, ptr align 4 %1, i64 %i.al, i1 false)
  %i.dx = load ptr, ptr %i.am, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dx, ptr align 4 %2, i64 %i.al, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit
  %.3 = phi i32 [ 1, %.loopexit ], [ %.1212, %bb.p ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %6, i8 0, i64 1408, i1 false)
  %.not298 = icmp eq i32 %.0204, 0
  br i1 %.not298, label %._crit_edge290, label %.lr.ph289.preheader

.lr.ph289.preheader:                              ; preds = %bb.q
  %wide.trip.count310 = zext nneg i32 %.0204 to i64
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %bb.ag
  %indvars.iv307 = phi i64 [ 0, %.lr.ph289.preheader ], [ %indvars.iv.next308, %bb.ag ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %5, i8 0, i64 88, i1 false)
  %i.dy = load i8, ptr %i.cb, align 1, !tbaa !81
  %i.dz = sext i8 %i.dy to i32
  store i32 %i.dz, ptr %5, align 4, !tbaa !71
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv307
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !56  ; 2 uses
  %i.ec = sext i8 %i.eb to i32
  store i32 %i.ec, ptr %i.ar, align 4, !tbaa !70
  %i.ed = icmp slt i8 %i.eb, 0
  br i1 %i.ed, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.lr.ph289
  %i.ee = load i32, ptr %i.q, align 4, !tbaa !52
  %i.ef = and i32 %i.ee, 32
  %.not238 = icmp eq i32 %i.ef, 0
  br i1 %.not238, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 -3, ptr %i.ar, align 4, !tbaa !70
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph289
  %i.eg = and i64 %indvars.iv307, 1
  %i.eh = and i64 %indvars.iv307, 1
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.eh ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !50
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !50
  %i.em = xor i64 %i.eg, 1
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.em ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !50
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !50
  call fastcc void @decorr_stereo(ptr noundef %i.ej, ptr noundef %i.el, ptr noundef %i.eo, ptr noundef %i.eq, i32 noundef %i.as, ptr noundef %5, i32 noundef -1)
  %.not239 = icmp eq i64 %indvars.iv307, 0
  br i1 %.not239, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.at, i8 0, i64 64, i1 false)
  br label %reverse_decorr.exit

bb.v:                                             ; preds = %bb.t
  %i.er = load i32, ptr %i.ar, align 4, !tbaa !70 ; 8 uses
  %i.es = icmp sgt i32 %i.er, 8
  br i1 %i.es, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.et = and i32 %i.er, 1
  %.not.i = icmp eq i32 %i.et, 0
  %i.eu = load i32, ptr %i.at, align 4, !tbaa !53 ; 4 uses
  %i.ev = load i32, ptr %i.av, align 4, !tbaa !53 ; 2 uses
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ew = shl nsw i32 %i.eu, 1
  %i.ex = sub nsw i32 %i.ew, %i.ev                ; 2 uses
  %i.ey = load i32, ptr %i.au, align 4, !tbaa !53 ; 2 uses
  %i.ez = shl nsw i32 %i.ey, 1
  %i.fa = load i32, ptr %i.aw, align 4, !tbaa !53
  %i.fb = sub nsw i32 %i.ez, %i.fa                ; 2 uses
  store i32 %i.ex, ptr %i.at, align 4, !tbaa !53
  store i32 %i.fb, ptr %i.au, align 4, !tbaa !53
  %i.fc = shl nsw i32 %i.ex, 1
  %i.fd = sub nsw i32 %i.fc, %i.eu
  %i.fe = shl nsw i32 %i.fb, 1
  %i.ff = sub nsw i32 %i.fe, %i.ey
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fg = mul nsw i32 %i.eu, 3
  %i.fh = sub nsw i32 %i.fg, %i.ev
  %i.fi = ashr i32 %i.fh, 1                       ; 2 uses
  %i.fj = load i32, ptr %i.au, align 4, !tbaa !53 ; 2 uses
  %i.fk = mul nsw i32 %i.fj, 3
  %i.fl = load i32, ptr %i.aw, align 4, !tbaa !53
  %i.fm = sub nsw i32 %i.fk, %i.fl
  %i.fn = ashr i32 %i.fm, 1                       ; 2 uses
  store i32 %i.fi, ptr %i.at, align 4, !tbaa !53
  store i32 %i.fn, ptr %i.au, align 4, !tbaa !53
  %i.fo = mul nsw i32 %i.fi, 3
  %i.fp = sub nsw i32 %i.fo, %i.eu
  %i.fq = ashr i32 %i.fp, 1
  %i.fr = mul nsw i32 %i.fn, 3
  %i.fs = sub nsw i32 %i.fr, %i.fj
  %i.ft = ashr i32 %i.fs, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.167.i = phi i32 [ %i.fd, %bb.x ], [ %i.fq, %bb.y ]
  %.1.i = phi i32 [ %i.ff, %bb.x ], [ %i.ft, %bb.y ]
  store i32 %.167.i, ptr %i.av, align 4, !tbaa !53
  store i32 %.1.i, ptr %i.aw, align 4, !tbaa !53
  br label %reverse_decorr.exit

bb.aa:                                            ; preds = %bb.v
  %i.fu = icmp sgt i32 %i.er, 1
  br i1 %i.fu, label %.lr.ph.i, label %reverse_decorr.exit

.lr.ph.i:                                         ; preds = %bb.aa
  %i.fv = lshr i32 %i.er, 1                       ; 3 uses
  %.063.i = add nuw nsw i32 %i.er, 7
  %i.fw = and i32 %.063.i, 7
  %i.fx = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.fx ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !53
  %i.ga = load i32, ptr %i.at, align 4, !tbaa !53
  %i.gb = xor i32 %i.ga, %i.fz                    ; 2 uses
  store i32 %i.gb, ptr %i.at, align 4, !tbaa !53
  %i.gc = load i32, ptr %i.fy, align 4, !tbaa !53
  %i.gd = xor i32 %i.gc, %i.gb                    ; 2 uses
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !53
  %i.ge = load i32, ptr %i.at, align 4, !tbaa !53
  %i.gf = xor i32 %i.ge, %i.gd
  store i32 %i.gf, ptr %i.at, align 4, !tbaa !53
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.fx ; 3 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !53
  %i.gi = load i32, ptr %i.au, align 4, !tbaa !53
  %i.gj = xor i32 %i.gi, %i.gh                    ; 2 uses
  store i32 %i.gj, ptr %i.au, align 4, !tbaa !53
  %i.gk = load i32, ptr %i.gg, align 4, !tbaa !53
  %i.gl = xor i32 %i.gk, %i.gj                    ; 2 uses
  store i32 %i.gl, ptr %i.gg, align 4, !tbaa !53
  %i.gm = load i32, ptr %i.au, align 4, !tbaa !53
  %i.gn = xor i32 %i.gm, %i.gl
  store i32 %i.gn, ptr %i.au, align 4, !tbaa !53
  %exitcond.not.i = icmp eq i32 %i.fv, 1
  br i1 %exitcond.not.i, label %reverse_decorr.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i
  %.063.i.1 = add nuw i32 %i.er, 6
  %i.go = and i32 %.063.i.1, 7
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.gp ; 3 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !53
  %i.gs = load i32, ptr %i.be, align 4, !tbaa !53
  %i.gt = xor i32 %i.gs, %i.gr                    ; 2 uses
  store i32 %i.gt, ptr %i.be, align 4, !tbaa !53
  %i.gu = load i32, ptr %i.gq, align 4, !tbaa !53
  %i.gv = xor i32 %i.gu, %i.gt                    ; 2 uses
  store i32 %i.gv, ptr %i.gq, align 4, !tbaa !53
  %i.gw = load i32, ptr %i.be, align 4, !tbaa !53
  %i.gx = xor i32 %i.gw, %i.gv
  store i32 %i.gx, ptr %i.be, align 4, !tbaa !53
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.gp ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !53
  %i.ha = load i32, ptr %i.bf, align 4, !tbaa !53
  %i.hb = xor i32 %i.ha, %i.gz                    ; 2 uses
  store i32 %i.hb, ptr %i.bf, align 4, !tbaa !53
  %i.hc = load i32, ptr %i.gy, align 4, !tbaa !53
  %i.hd = xor i32 %i.hc, %i.hb                    ; 2 uses
  store i32 %i.hd, ptr %i.gy, align 4, !tbaa !53
  %i.he = load i32, ptr %i.bf, align 4, !tbaa !53
  %i.hf = xor i32 %i.he, %i.hd
  store i32 %i.hf, ptr %i.bf, align 4, !tbaa !53
  %exitcond.not.i.1 = icmp eq i32 %i.fv, 2
  br i1 %exitcond.not.i.1, label %reverse_decorr.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.063.i.2 = add nuw i32 %i.er, 5
  %i.hg = and i32 %.063.i.2, 7
  %i.hh = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.hh ; 3 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !53
  %i.hk = load i32, ptr %i.bg, align 4, !tbaa !53
  %i.hl = xor i32 %i.hk, %i.hj                    ; 2 uses
  store i32 %i.hl, ptr %i.bg, align 4, !tbaa !53
  %i.hm = load i32, ptr %i.hi, align 4, !tbaa !53
  %i.hn = xor i32 %i.hm, %i.hl                    ; 2 uses
  store i32 %i.hn, ptr %i.hi, align 4, !tbaa !53
  %i.ho = load i32, ptr %i.bg, align 4, !tbaa !53
  %i.hp = xor i32 %i.ho, %i.hn
  store i32 %i.hp, ptr %i.bg, align 4, !tbaa !53
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.hh ; 3 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !53
  %i.hs = load i32, ptr %i.bh, align 4, !tbaa !53
  %i.ht = xor i32 %i.hs, %i.hr                    ; 2 uses
  store i32 %i.ht, ptr %i.bh, align 4, !tbaa !53
  %i.hu = load i32, ptr %i.hq, align 4, !tbaa !53
  %i.hv = xor i32 %i.hu, %i.ht                    ; 2 uses
  store i32 %i.hv, ptr %i.hq, align 4, !tbaa !53
  %i.hw = load i32, ptr %i.bh, align 4, !tbaa !53
  %i.hx = xor i32 %i.hw, %i.hv
  store i32 %i.hx, ptr %i.bh, align 4, !tbaa !53
  %exitcond.not.i.2 = icmp eq i32 %i.fv, 3
  br i1 %exitcond.not.i.2, label %reverse_decorr.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hy = and i32 %i.er, 7
  %i.hz = xor i32 %i.hy, 4
  %i.ia = zext nneg i32 %i.hz to i64              ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ia ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !53
  %i.id = load i32, ptr %i.bi, align 4, !tbaa !53
  %i.ie = xor i32 %i.id, %i.ic                    ; 2 uses
  store i32 %i.ie, ptr %i.bi, align 4, !tbaa !53
  %i.if = load i32, ptr %i.ib, align 4, !tbaa !53
  %i.ig = xor i32 %i.if, %i.ie                    ; 2 uses
  store i32 %i.ig, ptr %i.ib, align 4, !tbaa !53
  %i.ih = load i32, ptr %i.bi, align 4, !tbaa !53
  %i.ii = xor i32 %i.ih, %i.ig
  store i32 %i.ii, ptr %i.bi, align 4, !tbaa !53
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ia ; 3 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !53
  %i.il = load i32, ptr %i.bj, align 4, !tbaa !53
  %i.im = xor i32 %i.il, %i.ik                    ; 2 uses
  store i32 %i.im, ptr %i.bj, align 4, !tbaa !53
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !53
  %i.io = xor i32 %i.in, %i.im                    ; 2 uses
  store i32 %i.io, ptr %i.ij, align 4, !tbaa !53
  %i.ip = load i32, ptr %i.bj, align 4, !tbaa !53
  %i.iq = xor i32 %i.ip, %i.io
  store i32 %i.iq, ptr %i.bj, align 4, !tbaa !53
  br label %reverse_decorr.exit

reverse_decorr.exit:                              ; preds = %.lr.ph.i, %bb.ab, %bb.ac, %bb.ad, %bb.aa, %bb.z, %bb.u
  %i.ir = getelementptr inbounds nuw [88 x i8], ptr %6, i64 %indvars.iv307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ir, ptr noundef nonnull align 4 dereferenceable(88) %5, i64 88, i1 false)
  %i.is = load i32, ptr %i.q, align 4, !tbaa !52
  %i.it = and i32 %i.is, 4194304
  %.not240 = icmp eq i32 %i.it, 0
  %i.iu = load ptr, ptr %i.ei, align 8, !tbaa !50 ; 2 uses
  %i.iv = load ptr, ptr %i.ek, align 8, !tbaa !50 ; 2 uses
  %i.iw = load ptr, ptr %i.en, align 8, !tbaa !50 ; 2 uses
  %i.ix = load ptr, ptr %i.ep, align 8, !tbaa !50 ; 2 uses
  br i1 %.not240, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %reverse_decorr.exit
  call fastcc void @decorr_stereo(ptr noundef %i.iu, ptr noundef %i.iv, ptr noundef %i.iw, ptr noundef %i.ix, i32 noundef %i.b, ptr noundef %5, i32 noundef 1)
  br label %bb.ag

bb.af:                                            ; preds = %reverse_decorr.exit
  call fastcc void @decorr_stereo_quick(ptr noundef %i.iu, ptr noundef %i.iv, ptr noundef %i.iw, ptr noundef %i.ix, i32 noundef %i.b, ptr noundef %5)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge290.loopexit, label %.lr.ph289, !llvm.loop !266

._crit_edge290.loopexit:                          ; preds = %bb.ag
  %i.iy = and i32 %.0204, 1
  %i.iz = zext nneg i32 %i.iy to i64
  br label %._crit_edge290

._crit_edge290:                                   ; preds = %._crit_edge290.loopexit, %bb.q
  %.0.lcssa = phi i64 [ 0, %bb.q ], [ %i.iz, %._crit_edge290.loopexit ]
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.0.lcssa ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !50 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  br i1 %.not29.i, label %log2stereo.exit.thread, label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %._crit_edge290
  %8 = load ptr, ptr %i.jc, align 8, !tbaa !50
  br label %bb.ah

bb.ah:                                            ; preds = %log2sample.exit15.i, %.lr.ph.i244
  %.in.i = phi i32 [ %i.b, %.lr.ph.i244 ], [ %i.jd, %log2sample.exit15.i ]
  %.0632.i = phi ptr [ %8, %.lr.ph.i244 ], [ %i.kh, %log2sample.exit15.i ] ; 2 uses
  %.0731.i = phi ptr [ %i.jb, %.lr.ph.i244 ], [ %i.kg, %log2sample.exit15.i ] ; 2 uses
  %.02030.i = phi i32 [ 0, %.lr.ph.i244 ], [ %.4.i, %log2sample.exit15.i ]
  %i.jd = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.je = load i32, ptr %.0731.i, align 4, !tbaa !53 ; 2 uses
  %i.jf = call i32 @llvm.abs.i32(i32 %i.je, i1 true) ; 5 uses
  %.not.i.i = icmp eq i32 %i.je, 0
  br i1 %.not.i.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.ah
  %i.jg = lshr i32 %i.jf, 1
  %i.jh = call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.jg, i1 false) ; 2 uses
  %i.ji = sub nuw nsw i32 33, %i.jh               ; 2 uses
  %i.jj = icmp samesign ult i32 %i.jf, 256
  br i1 %i.jj, label %.thread.i.i, label %bb.ai

.thread.i.i:                                      ; preds = %.preheader.preheader.i.i, %bb.ah
  %i.jk = phi i32 [ %i.ji, %.preheader.preheader.i.i ], [ 0, %bb.ah ] ; 2 uses
  %i.jl = shl nuw nsw i32 %i.jk, 8
  %i.jm = sub nsw i32 9, %i.jk
  %i.jn = shl nuw nsw i32 %i.jf, %i.jm
  %i.jo = and i32 %i.jn, 255
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !56
  %i.js = zext i8 %i.jr to i32
  %i.jt = or disjoint i32 %i.jl, %i.js
  br label %bb.aj

bb.ai:                                            ; preds = %.preheader.preheader.i.i
  %i.ju = lshr i32 %i.jf, 9
  %i.jv = add nuw i32 %i.ju, %i.jf
  %i.jw = shl nuw nsw i32 %i.ji, 8
  %i.jx = sub nsw i32 24, %i.jh
  %i.jy = lshr i32 %i.jv, %i.jx
  %i.jz = and i32 %i.jy, 255
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !56
  %i.kd = zext i8 %i.kc to i32
  %i.ke = or disjoint i32 %i.jw, %i.kd
  %i.kf = freeze i32 %i.ke                        ; 2 uses
  %or.cond.not.i.i = icmp ult i32 %i.ax, %i.kf
  br i1 %or.cond.not.i.i, label %log2stereo.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread.i.i
  %.pn.i = phi i32 [ %i.jt, %.thread.i.i ], [ %i.kf, %bb.ai ]
  %.2.ph.i = add i32 %.pn.i, %.02030.i
  %i.kg = getelementptr inbounds nuw i8, ptr %.0731.i, i64 4
  %i.kh = getelementptr inbounds nuw i8, ptr %.0632.i, i64 4
  %i.ki = load i32, ptr %.0632.i, align 4, !tbaa !53 ; 2 uses
  %i.kj = call i32 @llvm.abs.i32(i32 %i.ki, i1 true) ; 5 uses
  %.not.i10.i = icmp eq i32 %i.ki, 0
  br i1 %.not.i10.i, label %.thread.i14.i, label %.preheader.preheader.i11.i

.preheader.preheader.i11.i:                       ; preds = %bb.aj
  %i.kk = lshr i32 %i.kj, 1
  %i.kl = call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.kk, i1 false) ; 2 uses
  %i.km = sub nuw nsw i32 33, %i.kl               ; 2 uses
  %i.kn = icmp samesign ult i32 %i.kj, 256
  br i1 %i.kn, label %.thread.i14.i, label %bb.ak

.thread.i14.i:                                    ; preds = %.preheader.preheader.i11.i, %bb.aj
  %i.ko = phi i32 [ %i.km, %.preheader.preheader.i11.i ], [ 0, %bb.aj ] ; 2 uses
  %i.kp = shl nuw nsw i32 %i.ko, 8
  %i.kq = sub nsw i32 9, %i.ko
  %i.kr = shl nuw nsw i32 %i.kj, %i.kq
  %i.ks = and i32 %i.kr, 255
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !56
  %i.kw = zext i8 %i.kv to i32
  %i.kx = or disjoint i32 %i.kp, %i.kw
  br label %log2sample.exit15.i

bb.ak:                                            ; preds = %.preheader.preheader.i11.i
  %i.ky = lshr i32 %i.kj, 9
  %i.kz = add nuw i32 %i.ky, %i.kj
  %i.la = shl nuw nsw i32 %i.km, 8
  %i.lb = sub nsw i32 24, %i.kl
  %i.lc = lshr i32 %i.kz, %i.lb
  %i.ld = and i32 %i.lc, 255
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !56
  %i.lh = zext i8 %i.lg to i32
  %i.li = or disjoint i32 %i.la, %i.lh
  %i.lj = freeze i32 %i.li                        ; 2 uses
  %or.cond.not.i12.i = icmp ult i32 %i.ax, %i.lj
  br i1 %or.cond.not.i12.i, label %log2stereo.exit, label %log2sample.exit15.i

log2sample.exit15.i:                              ; preds = %bb.ak, %.thread.i14.i
  %.pn28.i = phi i32 [ %i.kx, %.thread.i14.i ], [ %i.lj, %bb.ak ]
  %.4.i = add i32 %.2.ph.i, %.pn28.i              ; 2 uses
  %.not.i245 = icmp eq i32 %i.jd, 0
  br i1 %.not.i245, label %log2stereo.exit, label %bb.ah, !llvm.loop !3

log2stereo.exit:                                  ; preds = %bb.ai, %bb.ak, %log2sample.exit15.i
  %.0.i = phi i32 [ -1, %bb.ai ], [ %.4.i, %log2sample.exit15.i ], [ -1, %bb.ak ] ; 2 uses
  %i.lk = icmp eq i32 %.0.i, -1
  %i.ll = icmp ne i32 %.0204, 0
  %or.cond3 = select i1 %i.lk, i1 %i.ll, i1 false
  br i1 %or.cond3, label %9, label %log2stereo.exit.thread

9:                                                ; preds = %log2stereo.exit
  %10 = lshr i32 %.0204, 1
  br label %bb.l

log2stereo.exit.thread:                           ; preds = %._crit_edge290, %log2stereo.exit
  %.0204.lcssa = phi i32 [ %i.ca, %._crit_edge290 ], [ %.0204, %log2stereo.exit ]
  %.0.i268 = phi i32 [ 0, %._crit_edge290 ], [ %.0.i, %log2stereo.exit ] ; 2 uses
  %i.lm = icmp ult i32 %.0.i268, %.0205294
  br i1 %i.lm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %log2stereo.exit.thread
  %i.ln = load ptr, ptr %i.ay, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ln, ptr align 4 %i.jb, i64 %i.al, i1 false)
  %i.lo = load ptr, ptr %i.az, align 8, !tbaa !50
  %i.lp = load ptr, ptr %i.jc, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.lo, ptr align 4 %i.lp, i64 %i.al, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.ba, ptr noundef nonnull align 16 dereferenceable(1408) %6, i64 1408, i1 false)
  store i32 %.0204.lcssa, ptr %i.bb, align 8, !tbaa !59
  store i32 %.1, ptr %i.ah, align 8, !tbaa !79
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %log2stereo.exit.thread
  %.1206 = phi i32 [ %.0.i268, %bb.al ], [ %.0205294, %log2stereo.exit.thread ] ; 3 uses
  br i1 %.not234, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lq = add nsw i32 %.0209293, 1                ; 2 uses
  %i.lr = load i32, ptr %i.ag, align 4, !tbaa !78 ; 2 uses
  %.not237 = icmp eq i32 %i.lr, 0
  br i1 %.not237, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.an, %.thread
  %.sink356 = phi i32 [ %i.bl, %.thread ], [ %i.lr, %bb.an ]
  %.4.ph.ph = phi i32 [ %.0211292, %.thread ], [ %.3, %bb.an ]
  %.1210.ph.ph = phi i32 [ %.0209293, %.thread ], [ %i.lq, %bb.an ]
  %.2.ph.ph = phi i32 [ %.0205294, %.thread ], [ %.1206, %bb.an ]
  %i.ls = shl i32 %.sink356, 1
  %i.lt = load i32, ptr %i.ai, align 8, !tbaa !46
  %i.lu = add nsw i32 %i.lt, -1
  %i.lv = and i32 %i.lu, %i.ls
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.an, %bb.j
  %.sink = phi i32 [ 1, %bb.j ], [ 1, %bb.an ], [ %i.lv, %.sink.split.sink.split ]
  %.4.ph = phi i32 [ %.0211292, %bb.j ], [ %.3, %bb.an ], [ %.4.ph.ph, %.sink.split.sink.split ]
  %.1210.ph = phi i32 [ %.0209293, %bb.j ], [ %i.lq, %bb.an ], [ %.1210.ph.ph, %.sink.split.sink.split ]
  %.2.ph = phi i32 [ %.0205294, %bb.j ], [ %.1206, %bb.an ], [ %.2.ph.ph, %.sink.split.sink.split ]
  store i32 %.sink, ptr %i.ag, align 4, !tbaa !78
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.am
  %.4 = phi i32 [ %.3, %bb.am ], [ %.4.ph, %.sink.split ]
  %.1210 = phi i32 [ 1, %bb.am ], [ %.1210.ph, %.sink.split ] ; 2 uses
  %.2 = phi i32 [ %.1206, %bb.am ], [ %.2.ph, %.sink.split ]
  %i.lw = load i32, ptr %i.ae, align 4, !tbaa !43
  %i.lx = icmp slt i32 %.1210, %i.lw
  br i1 %i.lx, label %bb.g, label %._crit_edge297

._crit_edge297:                                   ; preds = %bb.ao, %.._crit_edge297_crit_edge
  %.off242.pre-phi = phi i32 [ %.pre326, %.._crit_edge297_crit_edge ], [ %.off, %bb.ao ]
  %switch243 = icmp ult i32 %.off242.pre-phi, -2
  br i1 %switch243, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge297
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !47
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !79
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [19 x i8], ptr %i.lz, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !268
  %i.mf = icmp eq i8 %i.me, 0
  %or.cond5 = or i1 %.not226, %i.mf
  br i1 %or.cond5, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge297, %bb.ap
  %i.mg = load i32, ptr %i.q, align 4, !tbaa !52
  %i.mh = or i32 %i.mg, 16
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.mi = load i32, ptr %i.q, align 4, !tbaa !52
  %i.mj = and i32 %i.mi, -17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %storemerge = phi i32 [ %i.mj, %bb.ar ], [ %i.mh, %bb.aq ] ; 2 uses
  store i32 %storemerge, ptr %i.q, align 4, !tbaa !52
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !45
  %.not228 = icmp eq i32 %i.ml, 0
  br i1 %.not228, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mm = and i32 %storemerge, 16
  %.not230 = icmp eq i32 %i.mm, 0
  br i1 %.not230, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !269
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !270
  call fastcc void @analyze_stereo(ptr noundef nonnull %0, ptr noundef %i.mo, ptr noundef %i.mq, i32 noundef %4)
  %.not231 = icmp eq i32 %4, 0
  br i1 %.not231, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mr = load ptr, ptr %i.mn, align 8, !tbaa !269
  %i.ms = sext i32 %i.c to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.mr, i64 %i.ms, i1 false)
  %i.mt = load ptr, ptr %i.mp, align 8, !tbaa !270
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %i.mt, i64 %i.ms, i1 false)
  br label %bb.az

bb.aw:                                            ; preds = %bb.at
  call fastcc void @analyze_stereo(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %4)
  br label %bb.az

bb.ax:                                            ; preds = %bb.as
  %.not229 = icmp eq i32 %4, 0
  br i1 %.not229, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !50
  %i.mw = sext i32 %i.c to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.mv, i64 %i.mw, i1 false)
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %i.my, i64 %i.mw, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw, %bb.av, %bb.au
  %i.mz = load i32, ptr %i.mk, align 8, !tbaa !45
  %i.na = or i32 %i.mz, %3
  %or.cond7.not = icmp eq i32 %i.na, 0
  br i1 %or.cond7.not, label %bb.ba, label %._crit_edge314

._crit_edge314:                                   ; preds = %bb.az
  %.phi.trans.insert315 = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %.pre316 = load ptr, ptr %.phi.trans.insert315, align 8, !tbaa !47
  %.phi.trans.insert317 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.pre318 = load i32, ptr %.phi.trans.insert317, align 8, !tbaa !79
  %.phi.trans.insert319 = sext i32 %.pre318 to i64
  %.phi.trans.insert320 = getelementptr inbounds [19 x i8], ptr %.pre316, i64 %.phi.trans.insert319
  %.pre321 = load i8, ptr %.phi.trans.insert320, align 1, !tbaa !268
  %.pre324 = sext i8 %.pre321 to i32
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !273
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !47
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !79
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [19 x i8], ptr %i.ne, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !268
  %i.nk = sext i8 %i.nj to i32                    ; 2 uses
  %.not233 = icmp eq i32 %i.nc, %i.nk
  br i1 %.not233, label %scan_word.exit263, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge314, %bb.ba
  %.pre-phi325 = phi i32 [ %.pre324, %._crit_edge314 ], [ %i.nk, %bb.ba ]
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i32 %.pre-phi325, ptr %i.nl, align 8, !tbaa !273
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.nm, i8 0, i64 76, i1 false)
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %.not5.i = icmp eq i32 %i.b, 0
  br i1 %.not5.i, label %scan_word.exit263, label %.lr.ph.i246

.lr.ph.i246:                                      ; preds = %bb.bb
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = sext i32 %i.b to i64                      ; 2 uses
  %14 = getelementptr [4 x i8], ptr %12, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bj, %.lr.ph.i246
  %i.no = phi i32 [ 0, %.lr.ph.i246 ], [ %i.oz, %bb.bj ] ; 7 uses
  %i.np = phi i32 [ 0, %.lr.ph.i246 ], [ %i.pa, %bb.bj ] ; 6 uses
  %i.nq = phi i32 [ 0, %.lr.ph.i246 ], [ %i.pb, %bb.bj ] ; 5 uses
  %.in.i247 = phi i32 [ %i.b, %.lr.ph.i246 ], [ %i.nr, %bb.bj ]
  %.pn.i248 = phi ptr [ %14, %.lr.ph.i246 ], [ %.16.i, %bb.bj ]
  %.16.i = getelementptr i8, ptr %.pn.i248, i64 -4 ; 2 uses
  %i.nr = add nsw i32 %.in.i247, -1               ; 2 uses
  %i.ns = load i32, ptr %.16.i, align 4, !tbaa !53
  %i.nt = call i32 @llvm.abs.i32(i32 %i.ns, i1 false) ; 3 uses
  %i.nu = ashr i32 %i.nq, 4                       ; 2 uses
  %i.nv = add nsw i32 %i.nu, 1                    ; 2 uses
  %i.nw = icmp ult i32 %i.nt, %i.nv
  br i1 %i.nw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.nx = add i32 %i.nq, 126
  %.neg36.i = sdiv i32 %i.nx, -128
  %.neg37.i = shl nsw i32 %.neg36.i, 1
  %i.ny = add i32 %.neg37.i, %i.nq                ; 2 uses
  store i32 %i.ny, ptr %i.nn, align 8, !tbaa !53
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %i.nz = add i32 %i.nq, 128
  %i.oa = sdiv i32 %i.nz, 128
  %i.ob = mul nsw i32 %i.oa, 5
  %i.oc = add i32 %i.ob, %i.nq                    ; 4 uses
  store i32 %i.oc, ptr %i.nn, align 8, !tbaa !53
  %i.od = sub nuw i32 %i.nt, %i.nv
  %i.oe = ashr i32 %i.np, 4                       ; 2 uses
  %i.of = add nsw i32 %i.oe, 1
  %i.og = icmp ult i32 %i.od, %i.of
  br i1 %i.og, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.oh = add i32 %i.np, 62
  %.neg34.i = sdiv i32 %i.oh, -64
  %.neg35.i = shl nsw i32 %.neg34.i, 1
  %i.oi = add i32 %.neg35.i, %i.np                ; 2 uses
  store i32 %i.oi, ptr %15, align 4, !tbaa !53
  br label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.oj = add i32 %i.np, 64
  %i.ok = sdiv i32 %i.oj, 64
  %i.ol = mul nsw i32 %i.ok, 5
  %i.om = add i32 %i.ol, %i.np                    ; 3 uses
  store i32 %i.om, ptr %15, align 4, !tbaa !53
  %i.on = add i32 %i.nt, -2
  %i.oo = add nsw i32 %i.nu, %i.oe
  %i.op = sub i32 %i.on, %i.oo
  %i.oq = ashr i32 %i.no, 4
  %i.or = add nsw i32 %i.oq, 1
  %i.os = icmp ult i32 %i.op, %i.or
  br i1 %i.os, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ot = add i32 %i.no, 30
  %.neg.i = sdiv i32 %i.ot, -32
  %.neg33.i = shl nsw i32 %.neg.i, 1
  %i.ou = add i32 %.neg33.i, %i.no                ; 2 uses
  store i32 %i.ou, ptr %16, align 8, !tbaa !53
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.ov = add i32 %i.no, 32
  %i.ow = sdiv i32 %i.ov, 32
  %i.ox = mul nsw i32 %i.ow, 5
  %i.oy = add i32 %i.ox, %i.no                    ; 2 uses
  store i32 %i.oy, ptr %16, align 8, !tbaa !53
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bf, %bb.bd
  %i.oz = phi i32 [ %i.no, %bb.bf ], [ %i.oy, %bb.bi ], [ %i.ou, %bb.bh ], [ %i.no, %bb.bd ]
  %i.pa = phi i32 [ %i.oi, %bb.bf ], [ %i.om, %bb.bi ], [ %i.om, %bb.bh ], [ %i.np, %bb.bd ]
  %i.pb = phi i32 [ %i.oc, %bb.bf ], [ %i.oc, %bb.bi ], [ %i.oc, %bb.bh ], [ %i.ny, %bb.bd ]
  %.not.i249 = icmp eq i32 %i.nr, 0
  br i1 %.not.i249, label %scan_word.exit, label %bb.bc, !llvm.loop !2

scan_word.exit:                                   ; preds = %bb.bj
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !50
  %i.pf = getelementptr [4 x i8], ptr %i.pe, i64 %13
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.br, %scan_word.exit
  %i.pi = phi i32 [ 0, %scan_word.exit ], [ %i.qt, %bb.br ] ; 7 uses
  %i.pj = phi i32 [ 0, %scan_word.exit ], [ %i.qu, %bb.br ] ; 6 uses
  %i.pk = phi i32 [ 0, %scan_word.exit ], [ %i.qv, %bb.br ] ; 5 uses
  %.in.i253 = phi i32 [ %i.b, %scan_word.exit ], [ %i.pl, %bb.br ]
  %.pn.i254 = phi ptr [ %i.pf, %scan_word.exit ], [ %.16.i255, %bb.br ]
  %.16.i255 = getelementptr i8, ptr %.pn.i254, i64 -4 ; 2 uses
  %i.pl = add nsw i32 %.in.i253, -1               ; 2 uses
  %i.pm = load i32, ptr %.16.i255, align 4, !tbaa !53
  %i.pn = call i32 @llvm.abs.i32(i32 %i.pm, i1 false) ; 3 uses
  %i.po = ashr i32 %i.pk, 4                       ; 2 uses
  %i.pp = add nsw i32 %i.po, 1                    ; 2 uses
  %i.pq = icmp ult i32 %i.pn, %i.pp
  br i1 %i.pq, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.pr = add i32 %i.pk, 126
  %.neg36.i261 = sdiv i32 %i.pr, -128
  %.neg37.i262 = shl nsw i32 %.neg36.i261, 1
  %i.ps = add i32 %.neg37.i262, %i.pk             ; 2 uses
  store i32 %i.ps, ptr %i.pc, align 4, !tbaa !53
  br label %bb.br

bb.bm:                                            ; preds = %bb.bk
  %i.pt = add i32 %i.pk, 128
  %i.pu = sdiv i32 %i.pt, 128
  %i.pv = mul nsw i32 %i.pu, 5
  %i.pw = add i32 %i.pv, %i.pk                    ; 4 uses
  store i32 %i.pw, ptr %i.pc, align 4, !tbaa !53
  %i.px = sub nuw i32 %i.pn, %i.pp
  %i.py = ashr i32 %i.pj, 4                       ; 2 uses
  %i.pz = add nsw i32 %i.py, 1
  %i.qa = icmp ult i32 %i.px, %i.pz
  br i1 %i.qa, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.qb = add i32 %i.pj, 62
  %.neg34.i259 = sdiv i32 %i.qb, -64
  %.neg35.i260 = shl nsw i32 %.neg34.i259, 1
  %i.qc = add i32 %.neg35.i260, %i.pj             ; 2 uses
  store i32 %i.qc, ptr %i.pg, align 8, !tbaa !53
  br label %bb.br

bb.bo:                                            ; preds = %bb.bm
  %i.qd = add i32 %i.pj, 64
  %i.qe = sdiv i32 %i.qd, 64
  %i.qf = mul nsw i32 %i.qe, 5
  %i.qg = add i32 %i.qf, %i.pj                    ; 3 uses
  store i32 %i.qg, ptr %i.pg, align 8, !tbaa !53
  %i.qh = add i32 %i.pn, -2
  %i.qi = add nsw i32 %i.po, %i.py
  %i.qj = sub i32 %i.qh, %i.qi
  %i.qk = ashr i32 %i.pi, 4
  %i.ql = add nsw i32 %i.qk, 1
  %i.qm = icmp ult i32 %i.qj, %i.ql
  br i1 %i.qm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qn = add i32 %i.pi, 30
  %.neg.i257 = sdiv i32 %i.qn, -32
  %.neg33.i258 = shl nsw i32 %.neg.i257, 1
  %i.qo = add i32 %.neg33.i258, %i.pi             ; 2 uses
  store i32 %i.qo, ptr %i.ph, align 4, !tbaa !53
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.qp = add i32 %i.pi, 32
  %i.qq = sdiv i32 %i.qp, 32
  %i.qr = mul nsw i32 %i.qq, 5
  %i.qs = add i32 %i.qr, %i.pi                    ; 2 uses
  store i32 %i.qs, ptr %i.ph, align 4, !tbaa !53
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bn, %bb.bl
  %i.qt = phi i32 [ %i.pi, %bb.bn ], [ %i.qs, %bb.bq ], [ %i.qo, %bb.bp ], [ %i.pi, %bb.bl ]
  %i.qu = phi i32 [ %i.qc, %bb.bn ], [ %i.qg, %bb.bq ], [ %i.qg, %bb.bp ], [ %i.pj, %bb.bl ]
  %i.qv = phi i32 [ %i.pw, %bb.bn ], [ %i.pw, %bb.bq ], [ %i.pw, %bb.bp ], [ %i.ps, %bb.bl ]
  %.not.i256 = icmp eq i32 %i.pl, 0
  br i1 %.not.i256, label %scan_word.exit263, label %bb.bk, !llvm.loop !2

scan_word.exit263:                                ; preds = %bb.br, %bb.bb, %bb.ba, %bb.d, %._crit_edge.thread
  %.0216 = phi i32 [ 0, %._crit_edge.thread ], [ %i.x, %bb.d ], [ 0, %bb.ba ], [ 0, %bb.bb ], [ 0, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i32 %.0216
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -71935, 71936) i32 @log2s(i32 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %cond = icmp eq i32 %0, -1
  br i1 %cond, label %wp_log2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = sub nsw i32 0, %0
  %i.c = lshr i32 %i.b, 9
  %i.d = sub i32 %i.c, %0                         ; 5 uses
  %.not.i = icmp ult i32 %i.d, 65536              ; 2 uses
  %i.e = lshr i32 %i.d, 16
  %spec.select.i = select i1 %.not.i, i32 %i.d, i32 %i.e ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.f = lshr i32 %spec.select.i, 8
  %i.g = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.f
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.g
  %i.h = zext nneg i32 %.110.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !56
  %i.k = zext i8 %i.j to i32
  %i.l = add nuw nsw i32 %.1.i, %i.k              ; 4 uses
  %.neg = xor i32 %i.l, -1
  %i.m = icmp samesign ult i32 %i.l, 8
  %.neg13 = shl nsw i32 %.neg, 8                  ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i32 8, %i.l
  %i.o = shl i32 %i.d, %i.n
  %i.p = and i32 %i.o, 254
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.q
  %i.s = load i8, ptr %i.r, align 2, !tbaa !56
  %i.t = zext i8 %i.s to i32
  %.neg14 = sub nuw nsw i32 %.neg13, %i.t
  br label %wp_log2.exit

bb.e:                                             ; preds = %bb.c
  %i.u = add nsw i32 %i.l, -8
  %i.v = lshr i32 %i.d, %i.u
  %i.w = and i32 %i.v, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !56
  %i.aa = zext i8 %i.z to i32
  %.neg12 = sub nuw nsw i32 %.neg13, %i.aa
  br label %wp_log2.exit

bb.f:                                             ; preds = %bb.a
  switch i32 %0, label %bb.h [
    i32 0, label %wp_log2.exit
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %wp_log2.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = lshr i32 %0, 9
  %i.ac = add nuw i32 %i.ab, %0                   ; 5 uses
  %.not.i5 = icmp ult i32 %i.ac, 65536            ; 2 uses
  %i.ad = lshr i32 %i.ac, 16
  %spec.select.i6 = select i1 %.not.i5, i32 %i.ac, i32 %i.ad ; 3 uses
  %spec.select12.i7 = select i1 %.not.i5, i32 0, i32 16 ; 2 uses
  %.not11.i8 = icmp samesign ult i32 %spec.select.i6, 256 ; 2 uses
  %i.ae = lshr i32 %spec.select.i6, 8
  %i.af = or disjoint i32 %spec.select12.i7, 8
  %.110.i9 = select i1 %.not11.i8, i32 %spec.select.i6, i32 %i.ae
  %.1.i10 = select i1 %.not11.i8, i32 %spec.select12.i7, i32 %i.af
  %i.ag = zext nneg i32 %.110.i9 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %.1.i10, %i.aj          ; 4 uses
  %i.al = icmp samesign ult i32 %i.ak, 8
  %i.am = shl nuw nsw i32 %i.ak, 8
  %i.an = add nuw nsw i32 %i.am, 256              ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = sub nuw nsw i32 8, %i.ak
  %i.ap = shl i32 %i.ac, %i.ao
  %i.aq = and i32 %i.ap, 254
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 2, !tbaa !56
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.an, %i.au
  br label %wp_log2.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = add nsw i32 %i.ak, -8
  %i.ax = lshr i32 %i.ac, %i.aw
  %i.ay = and i32 %i.ax, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !56
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.an, %i.bc
  br label %wp_log2.exit

wp_log2.exit:                                     ; preds = %bb.e, %bb.d, %bb.b, %bb.j, %bb.i, %bb.g, %bb.f
  %i.be = phi i32 [ %0, %bb.f ], [ 256, %bb.g ], [ %i.av, %bb.i ], [ %i.bd, %bb.j ], [ %.neg12, %bb.e ], [ %.neg14, %bb.d ], [ -256, %bb.b ]
  ret i32 %i.be
}

; Function Attrs: nounwind uwtable
define internal fastcc void @wavpack_encode_sample(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 4 uses
  %.lobit = lshr i32 %2, 31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !53
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.f = load i32, ptr %i.e, align 4, !tbaa !275
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53
  %i.i = icmp slt i32 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 684 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !88   ; 2 uses
  %.not110 = icmp eq i32 %i.k, 0
  %.not111 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not110, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not111, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @encode_flush(ptr noundef nonnull %0)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !88
  br label %bb.ad

bb.h:                                             ; preds = %bb.d
  br i1 %.not111, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !77   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !76   ; 3 uses
  %.not.i.i = icmp sgt i32 %i.p, 1
  br i1 %.not.i.i, label %put_bits.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75   ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ugt i64 %i.w, 3
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.n, ptr %i.t, align 1, !tbaa !56
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.z, ptr %i.s, align 8, !tbaa !75
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = add nsw i32 %i.p, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.i, %bb.m
  %.020.i.i = phi i32 [ 0, %bb.m ], [ %i.n, %bb.i ]
  %.0.i.i = phi i32 [ %i.aa, %bb.m ], [ %i.p, %bb.i ]
  %i.ab = add nsw i32 %.0.i.i, -1
end_hunk_1
