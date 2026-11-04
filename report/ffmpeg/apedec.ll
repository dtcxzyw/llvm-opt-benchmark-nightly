Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/apedec?download=true
inline.NumInlined: 91
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 30
begin_hunk_0_@ape_decode_value_3990:bb.a
  %i.ea = lshr i32 %i.dy, 1
  %i.eb = and i32 %i.ea, 255
  %i.ec = or disjoint i32 %i.eb, %i.dz            ; 3 uses
  store i32 %i.ec, ptr %i.e, align 8, !tbaa !78
  %i.ed = shl nuw i32 %i.dq, 8                    ; 3 uses
  store i32 %i.ed, ptr %i.f, align 4, !tbaa !76
  %i.ee = icmp ult i32 %i.dq, 32769
  br i1 %i.ee, label %bb.s, label %range_decode_culfreq.exit, !llvm.loop !0

range_decode_culfreq.exit:                        ; preds = %bb.v, %bb.r
  %i.ef = phi i32 [ %.pre.i, %bb.r ], [ %i.ec, %bb.v ] ; 2 uses
  %i.eg = phi i32 [ %.promoted.i.i, %bb.r ], [ %i.ed, %bb.v ]
  %i.eh = udiv i32 %i.eg, %spec.select            ; 5 uses
  store i32 %i.eh, ptr %i.ah, align 8, !tbaa !85
  %i.ei = udiv i32 %i.ef, %i.eh                   ; 2 uses
  %i.ej = mul i32 %i.ei, %i.eh                    ; 0 uses
  %.recomposed179 = urem i32 %i.ef, %i.eh
  store i32 %.recomposed179, ptr %i.e, align 8, !tbaa !78
  store i32 %i.eh, ptr %i.f, align 4, !tbaa !76
  br label %bb.ae

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.079 = phi i32 [ %i.el, %.lr.ph ], [ 0, %.preheader ]
  %.03378 = phi i32 [ %i.ek, %.lr.ph ], [ %i.d, %.preheader ] ; 2 uses
  %i.ek = lshr i32 %.03378, 1                     ; 2 uses
  %i.el = add nuw nsw i32 %.079, 1                ; 2 uses
  %.not = icmp samesign ult i32 %.03378, 131072
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !253

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.033.lcssa = phi i32 [ %i.d, %.preheader ], [ %i.ek, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.el, %.lr.ph ] ; 2 uses
  %i.em = add nuw nsw i32 %.033.lcssa, 1
  %i.en = icmp ult i32 %.promoted.i.i, 8388609
  br i1 %i.en, label %.lr.ph.i.i54, label %range_decode_culfreq.exit57

.lr.ph.i.i54:                                     ; preds = %._crit_edge
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 7252 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 7560 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 7544
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !61
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 7568
  %.promoted12.i.i55 = load i32, ptr %i.eo, align 4, !tbaa !77
  %.promoted13.i.i56 = load ptr, ptr %i.ep, align 8, !tbaa !64
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %.lr.ph.i.i54
  %i.et = phi i32 [ %.pre.i, %.lr.ph.i.i54 ], [ %i.fi, %bb.z ]
  %i.eu = phi ptr [ %.promoted13.i.i56, %.lr.ph.i.i54 ], [ %i.fd, %bb.z ] ; 4 uses
  %i.ev = phi i32 [ %.promoted12.i.i55, %.lr.ph.i.i54 ], [ %i.fe, %bb.z ]
  %i.ew = phi i32 [ %.promoted.i.i, %.lr.ph.i.i54 ], [ %i.fj, %bb.z ] ; 2 uses
  %i.ex = shl i32 %i.ev, 8                        ; 3 uses
  store i32 %i.ex, ptr %i.eo, align 4, !tbaa !77
  %i.ey = icmp ult ptr %i.eu, %i.er
  br i1 %i.ey, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ez = load i8, ptr %i.eu, align 1, !tbaa !47
  %i.fa = zext i8 %i.ez to i32
  %i.fb = or disjoint i32 %i.ex, %i.fa            ; 2 uses
  store i32 %i.fb, ptr %i.eo, align 4, !tbaa !77
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  store ptr %i.fc, ptr %i.ep, align 8, !tbaa !64
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store i32 1, ptr %i.es, align 8, !tbaa !70
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fd = phi ptr [ %i.eu, %bb.y ], [ %i.fc, %bb.x ]
  %i.fe = phi i32 [ %i.ex, %bb.y ], [ %i.fb, %bb.x ] ; 2 uses
  %i.ff = shl i32 %i.et, 8
  %i.fg = lshr i32 %i.fe, 1
  %i.fh = and i32 %i.fg, 255
  %i.fi = or disjoint i32 %i.fh, %i.ff            ; 3 uses
  store i32 %i.fi, ptr %i.e, align 8, !tbaa !78
  %i.fj = shl nuw i32 %i.ew, 8                    ; 3 uses
  store i32 %i.fj, ptr %i.f, align 4, !tbaa !76
  %i.fk = icmp ult i32 %i.ew, 32769
  br i1 %i.fk, label %bb.w, label %range_decode_culfreq.exit57, !llvm.loop !0

range_decode_culfreq.exit57:                      ; preds = %bb.z, %._crit_edge
  %i.fl = phi i32 [ %.pre.i, %._crit_edge ], [ %i.fi, %bb.z ] ; 2 uses
  %i.fm = phi i32 [ %.promoted.i.i, %._crit_edge ], [ %i.fj, %bb.z ]
  %i.fn = udiv i32 %i.fm, %i.em                   ; 8 uses
  store i32 %i.fn, ptr %i.ah, align 8, !tbaa !85
  %i.fo = udiv i32 %i.fl, %i.fn                   ; 2 uses
  %i.fp = mul i32 %i.fo, %i.fn                    ; 0 uses
  %.recomposed180 = urem i32 %i.fl, %i.fn         ; 3 uses
  store i32 %.recomposed180, ptr %i.e, align 8, !tbaa !78
  store i32 %i.fn, ptr %i.f, align 4, !tbaa !76
  %i.fq = icmp ult i32 %i.fn, 8388609
  br i1 %i.fq, label %.lr.ph.i.i60, label %range_decode_culfreq.exit63

.lr.ph.i.i60:                                     ; preds = %range_decode_culfreq.exit57
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 7252 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 7560 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 7544
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !61
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 7568
  %.promoted12.i.i61 = load i32, ptr %i.fr, align 4, !tbaa !77
  %.promoted13.i.i62 = load ptr, ptr %i.fs, align 8, !tbaa !64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %.lr.ph.i.i60
  %i.fw = phi i32 [ %.recomposed180, %.lr.ph.i.i60 ], [ %i.gl, %bb.ad ]
  %i.fx = phi ptr [ %.promoted13.i.i62, %.lr.ph.i.i60 ], [ %i.gg, %bb.ad ] ; 4 uses
  %i.fy = phi i32 [ %.promoted12.i.i61, %.lr.ph.i.i60 ], [ %i.gh, %bb.ad ]
  %i.fz = phi i32 [ %i.fn, %.lr.ph.i.i60 ], [ %i.gm, %bb.ad ] ; 2 uses
  %i.ga = shl i32 %i.fy, 8                        ; 3 uses
  store i32 %i.ga, ptr %i.fr, align 4, !tbaa !77
  %i.gb = icmp ult ptr %i.fx, %i.fu
  br i1 %i.gb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gc = load i8, ptr %i.fx, align 1, !tbaa !47
  %i.gd = zext i8 %i.gc to i32
  %i.ge = or disjoint i32 %i.ga, %i.gd            ; 2 uses
  store i32 %i.ge, ptr %i.fr, align 4, !tbaa !77
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  store ptr %i.gf, ptr %i.fs, align 8, !tbaa !64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i32 1, ptr %i.fv, align 8, !tbaa !70
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gg = phi ptr [ %i.fx, %bb.ac ], [ %i.gf, %bb.ab ]
  %i.gh = phi i32 [ %i.ga, %bb.ac ], [ %i.ge, %bb.ab ] ; 2 uses
  %i.gi = shl i32 %i.fw, 8
  %i.gj = lshr i32 %i.gh, 1
  %i.gk = and i32 %i.gj, 255
  %i.gl = or disjoint i32 %i.gk, %i.gi            ; 3 uses
  store i32 %i.gl, ptr %i.e, align 8, !tbaa !78
  %i.gm = shl nuw i32 %i.fz, 8                    ; 3 uses
  store i32 %i.gm, ptr %i.f, align 4, !tbaa !76
  %i.gn = icmp ult i32 %i.fz, 32769
  br i1 %i.gn, label %bb.aa, label %range_decode_culfreq.exit63, !llvm.loop !0

range_decode_culfreq.exit63:                      ; preds = %bb.ad, %range_decode_culfreq.exit57
  %i.go = phi i32 [ %.recomposed180, %range_decode_culfreq.exit57 ], [ %i.gl, %bb.ad ] ; 2 uses
  %i.gp = phi i32 [ %i.fn, %range_decode_culfreq.exit57 ], [ %i.gm, %bb.ad ]
  %i.gq = lshr i32 %i.gp, %.0.lcssa               ; 5 uses
  store i32 %i.gq, ptr %i.ah, align 8, !tbaa !85
  %i.gr = udiv i32 %i.go, %i.gq                   ; 2 uses
  %i.gs = mul i32 %i.gr, %i.gq                    ; 0 uses
  %.recomposed181 = urem i32 %i.go, %i.gq
  store i32 %.recomposed181, ptr %i.e, align 8, !tbaa !78
  store i32 %i.gq, ptr %i.f, align 4, !tbaa !76
  %i.gt = shl i32 %i.fo, %.0.lcssa
  %i.gu = add nsw i32 %i.gr, %i.gt
  br label %bb.ae

bb.ae:                                            ; preds = %range_decode_culfreq.exit63, %range_decode_culfreq.exit
  %.034 = phi i32 [ %i.ei, %range_decode_culfreq.exit ], [ %i.gu, %range_decode_culfreq.exit63 ]
  %i.gv = mul i32 %.035, %spec.select
  %i.gw = add i32 %.034, %i.gv                    ; 3 uses
  %i.gx = load i32, ptr %1, align 4, !tbaa !84    ; 5 uses
  %.not.i64 = icmp ne i32 %i.gx, 0
  %i.gy = add i32 %i.gx, 4
  %i.gz = add i32 %i.gw, 1
  %i.ha = lshr i32 %i.gz, 1
  %i.hb = add i32 %i.b, 16
  %i.hc = lshr i32 %i.hb, 5
  %i.hd = sub nsw i32 %i.ha, %i.hc
  %i.he = add i32 %i.hd, %i.b                     ; 3 uses
  store i32 %i.he, ptr %i.a, align 4, !tbaa !83
  %.highbits14.i = lshr i32 %i.he, %i.gy
  %i.hf = icmp eq i32 %.highbits14.i, 0
  %i.hg = select i1 %.not.i64, i1 %i.hf, i1 false
  br i1 %i.hg, label %.sink.split.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hh = add i32 %i.gx, 5
  %.highbits.i = lshr i32 %i.he, %i.hh
  %.not13.i = icmp ne i32 %.highbits.i, 0
  %i.hi = icmp ult i32 %i.gx, 24
  %or.cond.i = and i1 %i.hi, %.not13.i
  br i1 %or.cond.i, label %.sink.split.i, label %update_rice.exit

.sink.split.i:                                    ; preds = %bb.af, %bb.ae
  %.sink15.i = phi i32 [ -1, %bb.ae ], [ 1, %bb.af ]
  %i.hj = add i32 %.sink15.i, %i.gx
  store i32 %i.hj, ptr %1, align 4, !tbaa !84
  br label %update_rice.exit

update_rice.exit:                                 ; preds = %bb.af, %.sink.split.i
  %i.hk = lshr i32 %i.gw, 1
  %i.hl = and i32 %i.gw, 1
  %i.hm = add nsw i32 %i.hl, -1
  %i.hn = xor i32 %i.hm, %i.hk
  %i.ho = add i32 %i.hn, 1
  ret i32 %i.ho
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @long_filter_ehigh_3830(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 2147483392) %1) unnamed_addr #9 {
bb.a:
  %2 = alloca [8 x i32], align 16                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  %.4..4..sroa_idx31 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0. = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59   ; 5 uses
  %.lobit.i = lshr i32 %i.d, 31
  %i.e = icmp sgt i32 %i.d, 0
  %.neg.i = sext i1 %i.e to i32
  %i.f = add nsw i32 %.lobit.i, %.neg.i
  %.4..4. = load i32, ptr %.4..4..sroa_idx31, align 4, !tbaa !59
  %.16. = load <4 x i32>, ptr %.16..16..sroa_idx, align 16, !tbaa !59
  %.8. = load <2 x i32>, ptr %.8..8..sroa_idx, align 8, !tbaa !59
  %3 = insertelement <8 x i32> poison, i32 %.4..4., i64 6
  %4 = insertelement <8 x i32> %3, i32 %.0., i64 7
  %5 = shufflevector <4 x i32> %.16., <4 x i32> poison, <8 x i32> <i32 2, i32 3, i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %6 = shufflevector <8 x i32> %5, <8 x i32> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %7 = shufflevector <2 x i32> %.8., <2 x i32> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <8 x i32> %6, <8 x i32> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7> ; 2 uses
  %i.g = ashr <8 x i32> %8, splat (i32 31)
  %i.h = or <8 x i32> %i.g, splat (i32 1)
  %i.i = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %i.j = shufflevector <8 x i32> %i.i, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.k = mul nsw <8 x i32> %i.h, %i.j
  %i.l = add <8 x i32> %i.k, %i.b
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.4..4..sroa_idx, ptr noundef nonnull align 16 dereferenceable(28) %2, i64 28, i1 false), !tbaa !59
  %i.m = mul <8 x i32> %i.b, %8
  %i.n = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.m)
  store i32 %i.d, ptr %2, align 16, !tbaa !59
  %i.o = ashr i32 %i.n, 9
  %i.p = sub i32 %i.d, %i.o
  store i32 %i.p, ptr %i.c, align 4, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !254

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define internal fastcc void @ape_apply_filters(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7272 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 9 uses
  %.not.i = icmp eq ptr %2, null
  %i.d = load i32, ptr %i.a, align 4, !tbaa !50   ; 3 uses
  %.not.us = icmp eq i32 %i.d, 0                  ; 2 uses
  br i1 %.not.i, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %.not.us, label %.split16.us, label %apply_filter.exit

.split.us.preheader:                              ; preds = %bb.a
  br i1 %.not.us, label %.split16.us, label %apply_filter.exit.us

apply_filter.exit.us:                             ; preds = %.split.us.preheader
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds [6 x i8], ptr @ape_filter_orders, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !53
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds [3 x i8], ptr @ape_filter_fracbits, i64 %i.e
  %i.j = load i8, ptr %i.i, align 1, !tbaa !47
  %i.k = zext i8 %i.j to i32
  %i.l = load i32, ptr %i.c, align 4, !tbaa !48
  tail call fastcc void @do_apply_filter(ptr noundef nonnull readonly %0, i32 noundef %i.l, ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %3, i32 noundef range(i32 1, 65536) %i.h, i32 noundef range(i32 0, 256) %i.k)
  %i.m = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %i.n = add i32 %i.m, -5
  %.not.us.1 = icmp ult i32 %i.n, -2
  br i1 %.not.us.1, label %.split16.us, label %apply_filter.exit.us.1

apply_filter.exit.us.1:                           ; preds = %apply_filter.exit.us
  %i.o = zext nneg i32 %i.m to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw [6 x i8], ptr @ape_filter_orders, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7352
  %i.t = zext i16 %i.r to i32
  %i.u = getelementptr inbounds nuw [3 x i8], ptr @ape_filter_fracbits, i64 %i.o
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !47
  %i.x = zext i8 %i.w to i32
  %i.y = load i32, ptr %i.c, align 4, !tbaa !48
  tail call fastcc void @do_apply_filter(ptr noundef nonnull readonly %0, i32 noundef %i.y, ptr noundef nonnull %i.s, ptr noundef %1, i32 noundef %3, i32 noundef range(i32 1, 65536) %i.t, i32 noundef range(i32 0, 256) %i.x)
  %i.z = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %.not.us.2.not = icmp eq i32 %i.z, 4
  br i1 %.not.us.2.not, label %apply_filter.exit.us.2, label %.split16.us

apply_filter.exit.us.2:                           ; preds = %apply_filter.exit.us.1
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw [6 x i8], ptr @ape_filter_orders, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7432
  %i.af = zext i16 %i.ad to i32
  %i.ag = getelementptr inbounds nuw [3 x i8], ptr @ape_filter_fracbits, i64 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !47
  %i.aj = zext i8 %i.ai to i32
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !48
  tail call fastcc void @do_apply_filter(ptr noundef nonnull readonly %0, i32 noundef %i.ak, ptr noundef nonnull %i.ae, ptr noundef %1, i32 noundef %3, i32 noundef range(i32 1, 65536) %i.af, i32 noundef range(i32 0, 256) %i.aj)
  br label %.split16.us

apply_filter.exit:                                ; preds = %.split.preheader
  %i.al = sext i32 %i.d to i64                    ; 2 uses
  %i.am = getelementptr inbounds [6 x i8], ptr @ape_filter_orders, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !53
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = getelementptr inbounds [3 x i8], ptr @ape_filter_fracbits, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !47
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = load i32, ptr %i.c, align 4, !tbaa !48
  tail call fastcc void @do_apply_filter(ptr noundef nonnull readonly %0, i32 noundef %i.as, ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %3, i32 noundef range(i32 1, 65536) %i.ao, i32 noundef range(i32 0, 256) %i.ar)
  %i.at = load i32, ptr %i.c, align 4, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 7312
  tail call fastcc void @do_apply_filter(ptr noundef nonnull readonly %0, i32 noundef %i.at, ptr noundef nonnull %i.au, ptr noundef nonnull %2, i32 noundef %3, i32 noundef range(i32 1, 65536) %i.ao, i32 noundef range(i32 0, 256) %i.ar)
  %i.av = load i32, ptr %i.a, align 4, !tbaa !50  ; 2 uses
  %i.aw = add i32 %i.av, -5
  %.not.1 = icmp ult i32 %i.aw, -2
  br i1 %.not.1, label %.split16.us, label %apply_filter.exit.1

apply_filter.exit.1:                              ; preds = %apply_filter.exit
  %i.ax = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw [6 x i8], ptr @ape_filter_orders, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !53
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 7352
  %i.bc = zext i16 %i.ba to i32                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [3 x i8], ptr @ape_filter_fracbits, i64 %i.ax
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !47
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !48
  tail call fastcc void @do_apply_filter(ptr noundef nonnull readonly %0, i32 noundef %i.bh, ptr noundef nonnull %i.bb, ptr noundef %1, i32 noundef %3, i32 noundef range(i32 1, 65536) %i.bc, i32 noundef range(i32 0, 256) %i.bg)
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 7392
  tail call fastcc void @do_apply_filter(ptr noundef nonnull readonly %0, i32 noundef %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %2, i32 noundef %3, i32 noundef range(i32 1, 65536) %i.bc, i32 noundef range(i32 0, 256) %i.bg)
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !50  ; 2 uses
  %.not.2.not = icmp eq i32 %i.bk, 4
  br i1 %.not.2.not, label %apply_filter.exit.2, label %.split16.us

apply_filter.exit.2:                              ; preds = %apply_filter.exit.1
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [6 x i8], ptr @ape_filter_orders, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i16, ptr %i.bn, align 4, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 7432
  %i.bq = zext i16 %i.bo to i32                   ; 2 uses
  %i.br = getelementptr inbounds nuw [3 x i8], ptr @ape_filter_fracbits, i64 %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !47
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = load i32, ptr %i.c, align 4, !tbaa !48
  tail call fastcc void @do_apply_filter(ptr noundef nonnull readonly %0, i32 noundef %i.bv, ptr noundef nonnull %i.bp, ptr noundef %1, i32 noundef %3, i32 noundef range(i32 1, 65536) %i.bq, i32 noundef range(i32 0, 256) %i.bu)
  %i.bw = load i32, ptr %i.c, align 4, !tbaa !48
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 7472
  tail call fastcc void @do_apply_filter(ptr noundef nonnull readonly %0, i32 noundef %i.bw, ptr noundef nonnull %i.bx, ptr noundef nonnull %2, i32 noundef %3, i32 noundef range(i32 1, 65536) %i.bq, i32 noundef range(i32 0, 256) %i.bu)
  br label %.split16.us

.split16.us:                                      ; preds = %.split.preheader, %apply_filter.exit, %apply_filter.exit.1, %apply_filter.exit.2, %.split.us.preheader, %apply_filter.exit.us, %apply_filter.exit.us.1, %apply_filter.exit.us.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_apply_filter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef range(i32 1, 65536) %5, i32 noundef range(i32 0, 256) %6) unnamed_addr #1 {
bb.a:
  %.not61 = icmp eq i32 %4, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %4, -1                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.d = zext nneg i32 %5 to i64                  ; 3 uses
  %i.e = sub nsw i64 0, %i.d                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.g = add nsw i32 %6, -1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw i64 1, %i.h                      ; 2 uses
  %i.j = zext nneg i32 %6 to i64                  ; 2 uses
  %i.k = icmp slt i32 %1, 3980
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.n = shl nuw nsw i32 %5, 1
  %i.o = zext nneg i32 %i.n to i64                ; 6 uses
  %i.p = sub nsw i64 0, %i.o                      ; 2 uses
  %i.q = shl nuw nsw i64 %i.o, 1                  ; 2 uses
  %.pre66 = load ptr, ptr %i.c, align 8, !tbaa !87 ; 2 uses
  %.pre67 = load ptr, ptr %i.f, align 8, !tbaa !88 ; 2 uses
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %i.r = phi ptr [ %i.bj, %bb.c ], [ %.pre67, %.lr.ph ]
  %i.s = phi ptr [ %i.bk, %bb.c ], [ %.pre66, %.lr.ph ]
  %i.t = phi i32 [ %i.bl, %bb.c ], [ %i.a, %.lr.ph ] ; 2 uses
  %.062.us = phi ptr [ %i.ai, %bb.c ], [ %3, %.lr.ph ] ; 4 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !256
  %i.v = load ptr, ptr %2, align 8, !tbaa !89
  %i.w = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.e
  %i.x = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.e
  %i.y = load i32, ptr %.062.us, align 4, !tbaa !59 ; 2 uses
  %.lobit.i.us = lshr i32 %i.y, 31
  %i.z = icmp sgt i32 %i.y, 0
  %.neg.i.us = sext i1 %i.z to i32
  %i.aa = add nsw i32 %.lobit.i.us, %.neg.i.us
  %i.ab = tail call i32 %i.u(ptr noundef %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i32 noundef %5, i32 noundef %i.aa) #17
  %i.ac = sext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.i, %i.ac
  %i.ae = ashr i64 %i.ad, %i.j
  %i.af = trunc i64 %i.ae to i32
  %i.ag = load i32, ptr %.062.us, align 4, !tbaa !59
  %i.ah = add i32 %i.ag, %i.af                    ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.062.us, i64 4
  store i32 %i.ah, ptr %.062.us, align 4, !tbaa !59
  %i.aj = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 -32768)
  %i.ak = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 32767)
  %.0.i.us = trunc nsw i32 %i.ak to i16
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !87  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2 ; 4 uses
  store ptr %i.am, ptr %i.c, align 8, !tbaa !87
  store i16 %.0.i.us, ptr %i.al, align 2, !tbaa !53
  %i.an = icmp eq i32 %i.ah, 0
  %i.ao = lshr i32 %i.ah, 28
  %i.ap = trunc nuw nsw i32 %i.ao to i16
  %i.aq = and i16 %i.ap, 8
  %i.ar = add nsw i16 %i.aq, -4
  %i.as = select i1 %i.an, i16 0, i16 %i.ar
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !88  ; 4 uses
  store i16 %i.as, ptr %i.at, align 2, !tbaa !53
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8 ; 2 uses
end_hunk_0
