Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg4videoenc?download=true
inline.NumInlined: 162
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mpeg4_encode_mb:bb.a
  %i.cve = ptrtoint ptr %i.cvc to i64
  %i.cvf = sub i64 %i.cvd, %i.cve
  %i.cvg = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.cvh = load i32, ptr %i.cvg, align 4, !tbaa !60
  %.tr.i.i646 = trunc i64 %i.cvf to i32
  %i.cvi = shl i32 %.tr.i.i646, 3
  %reass.sub.i.i647 = sub i32 %i.cvi, %i.cvh
  %i.cvj = add i32 %reass.sub.i.i647, 32          ; 2 uses
  %i.cvk = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 4 uses
  %i.cvl = load i32, ptr %i.cvk, align 16, !tbaa !82
  store i32 %i.cvj, ptr %i.cvk, align 16, !tbaa !82
  %i.cvm = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.cvn = load i32, ptr %i.cvm, align 4, !tbaa !83
  %i.cvo = sub i32 %i.cvn, %i.cvl
  %i.cvp = add i32 %i.cvo, %i.cvj
  store i32 %i.cvp, ptr %i.cvm, align 4, !tbaa !83
  call fastcc void @mpeg4_encode_blocks_intra(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.c, ptr noundef %i.f, ptr noundef nonnull %i.p, ptr noundef nonnull %i.o)
  %i.cvq = load ptr, ptr %i.cuz, align 16, !tbaa !59
  %i.cvr = load ptr, ptr %i.cvb, align 8, !tbaa !81
  %i.cvs = ptrtoint ptr %i.cvq to i64
  %i.cvt = ptrtoint ptr %i.cvr to i64
  %i.cvu = sub i64 %i.cvs, %i.cvt
  %i.cvv = load i32, ptr %i.cvg, align 4, !tbaa !60
  %.tr.i.i648 = trunc i64 %i.cvu to i32
  %i.cvw = shl i32 %.tr.i.i648, 3
  %reass.sub.i.i649 = sub i32 %i.cvw, %i.cvv
  %i.cvx = add i32 %reass.sub.i.i649, 32          ; 2 uses
  %i.cvy = load i32, ptr %i.cvk, align 16, !tbaa !82
  store i32 %i.cvx, ptr %i.cvk, align 16, !tbaa !82
  %i.cvz = getelementptr inbounds nuw i8, ptr %0, i64 6336 ; 2 uses
  %i.cwa = load i32, ptr %i.cvz, align 16, !tbaa !84
  %i.cwb = sub i32 %i.cwa, %i.cvy
  %i.cwc = add i32 %i.cwb, %i.cvx
  store i32 %i.cwc, ptr %i.cvz, align 16, !tbaa !84
  br label %bb.jc

.critedge517:                                     ; preds = %bb.ja
  call fastcc void @mpeg4_encode_blocks_intra(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.c, ptr noundef %i.f, ptr noundef nonnull %i.p, ptr noundef nonnull %i.o)
  br label %bb.jc

bb.jc:                                            ; preds = %.critedge517, %bb.jb
  %i.cwd = getelementptr inbounds nuw i8, ptr %0, i64 6344 ; 2 uses
  %i.cwe = load i32, ptr %i.cwd, align 8, !tbaa !181
  %i.cwf = add nsw i32 %i.cwe, 1
  store i32 %i.cwf, ptr %i.cwd, align 8, !tbaa !181
  %i.cwg = load i32, ptr %i.cqy, align 16, !tbaa !180
  %.not501 = icmp eq i32 %i.cwg, 0
  br i1 %.not501, label %restore_ac_coeffs.exit, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cnb, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cwh = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.cwi = load ptr, ptr %i.cwh, align 8, !tbaa !175
  %i.cwj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cwk = getelementptr inbounds nuw i8, ptr %0, i64 1817
  %i.cwl = getelementptr inbounds nuw i8, ptr %0, i64 1818
  %i.cwm = getelementptr inbounds nuw i8, ptr %0, i64 1819
  %i.cwn = getelementptr inbounds nuw i8, ptr %0, i64 1820
  %i.cwo = getelementptr inbounds nuw i8, ptr %0, i64 1821
  %i.cwp = getelementptr inbounds nuw i8, ptr %0, i64 1822
  %i.cwq = getelementptr inbounds nuw i8, ptr %0, i64 1823
  %i.cwr = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.cws = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.cwt = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.cwu = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.cwv = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.cww = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.cwx = getelementptr inbounds nuw i8, ptr %0, i64 1872
  br label %bb.je

bb.je:                                            ; preds = %.loopexit.i652, %bb.jd
  %indvars.iv.i650 = phi i64 [ 0, %bb.jd ], [ %indvars.iv.next.i654, %.loopexit.i652 ] ; 5 uses
  %i.cwy = getelementptr inbounds nuw [4 x i8], ptr %i.aud, i64 %indvars.iv.i650
  %i.cwz = load i32, ptr %i.cwy, align 4, !tbaa !49
  %i.cxa = shl nsw i32 %i.cwz, 4
  %i.cxb = sext i32 %i.cxa to i64
  %i.cxc = getelementptr inbounds [2 x i8], ptr %i.cwi, i64 %i.cxb ; 12 uses
  %i.cxd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i650
  store ptr %i.cwj, ptr %i.cxd, align 8, !tbaa !161
  %i.cxe = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i650
  %i.cxf = load i32, ptr %i.cxe, align 4, !tbaa !49
  %.not.i651 = icmp eq i32 %i.cxf, 0
  %i.cxg = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %indvars.iv.i650 ; 11 uses
  br i1 %.not.i651, label %.preheader.i656, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.je
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cxc, i64 18
  %i.cxi = load i16, ptr %i.cxh, align 2, !tbaa !57
  %i.cxj = load i8, ptr %i.cwk, align 1, !tbaa !50
  %i.cxk = zext i8 %i.cxj to i64
  %i.cxl = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.cxk
  store i16 %i.cxi, ptr %i.cxl, align 2, !tbaa !57
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cxc, i64 20
  %i.cxn = load i16, ptr %i.cxm, align 2, !tbaa !57
  %i.cxo = load i8, ptr %i.cwl, align 2, !tbaa !50
  %i.cxp = zext i8 %i.cxo to i64
  %i.cxq = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.cxp
  store i16 %i.cxn, ptr %i.cxq, align 2, !tbaa !57
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.cxc, i64 22
  %i.cxs = load i16, ptr %i.cxr, align 2, !tbaa !57
  %i.cxt = load i8, ptr %i.cwm, align 1, !tbaa !50
  %i.cxu = zext i8 %i.cxt to i64
  %i.cxv = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.cxu
  store i16 %i.cxs, ptr %i.cxv, align 2, !tbaa !57
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.cxc, i64 24
  %i.cxx = load i16, ptr %i.cxw, align 2, !tbaa !57
  %i.cxy = load i8, ptr %i.cwn, align 4, !tbaa !50
  %i.cxz = zext i8 %i.cxy to i64
  %i.cya = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.cxz
  store i16 %i.cxx, ptr %i.cya, align 2, !tbaa !57
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cxc, i64 26
  br label %.loopexit.i652

.preheader.i656:                                  ; preds = %bb.je
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cxc, i64 2
  %i.cyd = load i16, ptr %i.cyc, align 2, !tbaa !57
  %i.cye = load i8, ptr %i.cwr, align 16, !tbaa !50
  %i.cyf = zext i8 %i.cye to i64
  %i.cyg = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.cyf
  store i16 %i.cyd, ptr %i.cyg, align 2, !tbaa !57
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cxc, i64 4
  %i.cyi = load i16, ptr %i.cyh, align 2, !tbaa !57
  %i.cyj = load i8, ptr %i.cws, align 8, !tbaa !50
  %i.cyk = zext i8 %i.cyj to i64
  %i.cyl = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.cyk
  store i16 %i.cyi, ptr %i.cyl, align 2, !tbaa !57
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cxc, i64 6
  %i.cyn = load i16, ptr %i.cym, align 2, !tbaa !57
  %i.cyo = load i8, ptr %i.cwt, align 16, !tbaa !50
  %i.cyp = zext i8 %i.cyo to i64
  %i.cyq = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.cyp
  store i16 %i.cyn, ptr %i.cyq, align 2, !tbaa !57
  %i.cyr = getelementptr inbounds nuw i8, ptr %i.cxc, i64 8
  %i.cys = load i16, ptr %i.cyr, align 2, !tbaa !57
  %i.cyt = load i8, ptr %i.cwu, align 8, !tbaa !50
  %i.cyu = zext i8 %i.cyt to i64
  %i.cyv = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.cyu
  store i16 %i.cys, ptr %i.cyv, align 2, !tbaa !57
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cxc, i64 10
  br label %.loopexit.i652

.loopexit.i652:                                   ; preds = %.preheader.i656, %.preheader28.i
  %.sink869.in = phi ptr [ %i.cwv, %.preheader.i656 ], [ %i.cwo, %.preheader28.i ]
  %.sink866.in = phi ptr [ %i.cyw, %.preheader.i656 ], [ %i.cyb, %.preheader28.i ]
  %.sink865 = phi i64 [ 12, %.preheader.i656 ], [ 28, %.preheader28.i ]
  %.sink851.in = phi ptr [ %i.cww, %.preheader.i656 ], [ %i.cwp, %.preheader28.i ]
  %.sink847 = phi i64 [ 14, %.preheader.i656 ], [ 30, %.preheader28.i ]
  %.sink39.in.i = phi ptr [ %i.cwx, %.preheader.i656 ], [ %i.cwq, %.preheader28.i ]
  %.sink866 = load i16, ptr %.sink866.in, align 2, !tbaa !57
  %.sink869 = load i8, ptr %.sink869.in, align 1, !tbaa !50
  %i.cyx = zext i8 %.sink869 to i64
  %i.cyy = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.cyx
  store i16 %.sink866, ptr %i.cyy, align 2, !tbaa !57
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cxc, i64 %.sink865
  %.sink848 = load i16, ptr %i.cyz, align 2, !tbaa !57
  %.sink851 = load i8, ptr %.sink851.in, align 1, !tbaa !50
  %i.cza = zext i8 %.sink851 to i64
  %i.czb = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.cza
  store i16 %.sink848, ptr %i.czb, align 2, !tbaa !57
  %i.czc = getelementptr inbounds nuw i8, ptr %i.cxc, i64 %.sink847
  %.sink.i653 = load i16, ptr %i.czc, align 2, !tbaa !57
  %.sink39.i = load i8, ptr %.sink39.in.i, align 1, !tbaa !50
  %i.czd = zext i8 %.sink39.i to i64
  %i.cze = getelementptr inbounds nuw [2 x i8], ptr %i.cxg, i64 %i.czd
  store i16 %.sink.i653, ptr %i.cze, align 2, !tbaa !57
  %indvars.iv.next.i654 = add nuw nsw i64 %indvars.iv.i650, 1 ; 2 uses
  %exitcond.not.i655 = icmp eq i64 %indvars.iv.next.i654, 6
  br i1 %exitcond.not.i655, label %restore_ac_coeffs.exit, label %bb.je, !llvm.loop !182

restore_ac_coeffs.exit:                           ; preds = %.loopexit.i652, %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.critedge503

.critedge503:                                     ; preds = %bb.db, %bb.da, %bb.z, %put_bits.exit, %bb.e, %restore_ac_coeffs.exit, %bb.gk, %bb.br, %.critedge, %.critedge512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare void @ff_qpeldsp_init(ptr noundef) local_unnamed_addr #1

declare i32 @ff_mpv_encode_init(ptr noundef) local_unnamed_addr #1

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mpeg4_encode_init_static() #6 {
bb.a:
  tail call fastcc void @init_uni_dc_tab() #16
  tail call fastcc void @init_uni_mpeg4_rl_tab(ptr noundef nonnull @ff_mpeg4_rl_intra, ptr noundef nonnull @uni_mpeg4_intra_rl_bits, ptr noundef nonnull @uni_mpeg4_intra_rl_len) #16
  tail call fastcc void @init_uni_mpeg4_rl_tab(ptr noundef nonnull @ff_h263_rl_inter, ptr noundef nonnull @uni_mpeg4_inter_rl_bits, ptr noundef nonnull @uni_mpeg4_inter_rl_len) #16
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.0810 = phi i32 [ 7, %bb.a ], [ %i.d, %._crit_edge ] ; 5 uses
  %i.a = shl i32 16, %.0810                       ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %0 = sub nsw i32 0, %i.a
  %1 = trunc i32 %.0810 to i8
  %2 = sext i32 %0 to i64
  %scevgep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @fcode_tab, i64 4096), i64 %2
  %i.c = shl i32 32, %.0810
  %3 = add i32 %i.c, -32
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, i8 %1, i64 %5, i1 false), !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.d = add nsw i32 %.0810, -1
  %i.e = icmp samesign ugt i32 %.0810, 1
  br i1 %i.e, label %bb.c, label %bb.b, !llvm.loop !183
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mpeg4_encode_visual_object_header(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %i.d = load i32, ptr %i.c, align 8, !tbaa !184  ; 2 uses
  %.not = icmp eq i32 %i.d, -99
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %i.d, 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9864
  %i.g = load i32, ptr %i.f, align 8, !tbaa !158
  %.not23 = icmp eq i32 %i.g, 0
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.i = load i32, ptr %i.h, align 4, !tbaa !185
  %.not24 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not24, i32 0, i32 240
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.020 = phi i32 [ %i.e, %bb.b ], [ 240, %bb.c ], [ %spec.select, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 692
  %i.k = load i32, ptr %i.j, align 4, !tbaa !186  ; 2 uses
  %.not25 = icmp eq i32 %i.k, -99
  %. = select i1 %.not25, i32 1, i32 %i.k
  %.1 = or i32 %., %.020                          ; 5 uses
  %.mask = and i32 %.1, -16
  %i.l = icmp eq i32 %.mask, 240
  %.0 = select i1 %i.l, i32 5, i32 1              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 10 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !60   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4408 ; 9 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 27 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59   ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.v, 3
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.m, align 8, !tbaa !61
  %i.y = zext i32 %i.x to i64
  %i.z = zext nneg i32 %i.o to i64
  %i.aa = shl i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = sub nsw i32 32, %i.o
  %i.ad = lshr i32 432, %i.ac
  %i.ae = or i32 %i.ad, %i.ab
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  store i32 %i.af, ptr %i.s, align 1, !tbaa !50
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ah, ptr %i.r, align 8, !tbaa !59
  br label %put_bits32.exit

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits32.exit

put_bits32.exit:                                  ; preds = %bb.f, %bb.g
  store i32 432, ptr %i.m, align 8, !tbaa !61
  store i32 %i.o, ptr %i.n, align 4, !tbaa !60
  %i.ai = icmp sgt i32 %i.o, 8
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %put_bits32.exit
  %i.aj = or i32 %.1, 110592
  br label %put_bits.exit

bb.i:                                             ; preds = %put_bits32.exit
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ugt i64 %i.ao, 3
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = shl nuw nsw i32 432, %i.o
  %i.ar = sub nsw i32 8, %i.o
  %i.as = lshr i32 %.1, %i.ar
  %i.at = or i32 %i.as, %i.aq
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  store i32 %i.au, ptr %i.al, align 1, !tbaa !50
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store ptr %i.aw, ptr %i.r, align 8, !tbaa !59
  br label %put_bits.exit

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.j, %bb.k, %bb.h
  %.sink = phi i32 [ -8, %bb.h ], [ 24, %bb.k ], [ 24, %bb.j ]
  %.026.i.i = phi i32 [ %i.aj, %bb.h ], [ %.1, %bb.k ], [ %.1, %bb.j ] ; 2 uses
  %i.ax = add nsw i32 %i.o, %.sink                ; 8 uses
  store i32 %.026.i.i, ptr %i.m, align 8, !tbaa !61
  store i32 %i.ax, ptr %i.n, align 4, !tbaa !60
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ugt i64 %i.bc, 3
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %put_bits.exit
  %i.be = zext i32 %.026.i.i to i64
  %i.bf = zext nneg i32 %i.ax to i64
  %i.bg = shl i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = sub nsw i32 32, %i.ax
  %i.bj = lshr i32 437, %i.bi
  %i.bk = or i32 %i.bj, %i.bh
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  store i32 %i.bl, ptr %i.az, align 1, !tbaa !50
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.bn, ptr %i.r, align 8, !tbaa !59
  br label %put_bits32.exit26

bb.m:                                             ; preds = %put_bits.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits32.exit26

put_bits32.exit26:                                ; preds = %bb.l, %bb.m
  store i32 437, ptr %i.m, align 8, !tbaa !61
  store i32 %i.ax, ptr %i.n, align 4, !tbaa !60
  %i.bo = icmp sgt i32 %i.ax, 1
  br i1 %i.bo, label %put_bits.exit30, label %bb.n

bb.n:                                             ; preds = %put_bits32.exit26
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.bq = load ptr, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp ugt i64 %i.bt, 3
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = shl nuw nsw i32 437, %i.ax
  %i.bw = icmp eq i32 %i.ax, 1
  %i.bx = zext i1 %i.bw to i32
  %i.by = or i32 %i.bv, %i.bx
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.by)
  store i32 %i.bz, ptr %i.bq, align 1, !tbaa !50
  %i.ca = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store ptr %i.cb, ptr %i.r, align 8, !tbaa !59
  br label %put_bits.exit30

bb.p:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit30

put_bits.exit30:                                  ; preds = %bb.o, %bb.p, %put_bits32.exit26
  %.sink52 = phi i32 [ -1, %put_bits32.exit26 ], [ 31, %bb.p ], [ 31, %bb.o ]
  %.026.i.i28 = phi i32 [ 875, %put_bits32.exit26 ], [ 1, %bb.p ], [ 1, %bb.o ] ; 3 uses
  %i.cc = add nsw i32 %i.ax, %.sink52             ; 5 uses
  store i32 %.026.i.i28, ptr %i.m, align 8, !tbaa !61
  store i32 %i.cc, ptr %i.n, align 4, !tbaa !60
  %i.cd = icmp sgt i32 %i.cc, 4
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %put_bits.exit30
  %i.ce = shl nuw nsw i32 %.026.i.i28, 4
  %i.cf = or disjoint i32 %i.ce, %.0
  br label %put_bits.exit34

bb.r:                                             ; preds = %put_bits.exit30
  %i.cg = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = icmp ugt i64 %i.ck, 3
end_hunk_0
