Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pshinter?download=true
inline.NumInlined: 99
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@psh_globals_new:bb.a
  %strided.vec159 = shufflevector <8 x i16> %wide.vec158, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec160 = shufflevector <8 x i16> %wide.vec158, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fv = sub <4 x i16> %strided.vec157, %strided.vec156
  %i.fw = sub <4 x i16> %strided.vec160, %strided.vec159
  %i.fx = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.fv, <4 x i16> %vec.phi153) ; 2 uses
  %i.fy = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.fw, <4 x i16> %vec.phi154) ; 2 uses
  %index.next161 = add nuw i64 %index152, 8       ; 2 uses
  %i.fz = icmp eq i64 %index.next161, %n.vec148
  br i1 %i.fz, label %middle.block162, label %vector.body151, !llvm.loop !233

middle.block162:                                  ; preds = %vector.body151
  %rdx.minmax163 = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.fx, <4 x i16> %i.fy)
  %i.ga = call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %rdx.minmax163) ; 2 uses
  %cmp.n164 = icmp eq i64 %i.fp, %n.vec148
  br i1 %cmp.n164, label %psh_calc_max_height.exit95, label %.lr.ph.i89.preheader

.lr.ph.i89.preheader:                             ; preds = %.lr.ph.preheader.i88, %middle.block162
  %indvars.iv.i90.ph = phi i64 [ 0, %.lr.ph.preheader.i88 ], [ %i.fq, %middle.block162 ]
  %.01011.i91.ph = phi i16 [ %.010.lcssa.i85, %.lr.ph.preheader.i88 ], [ %i.ga, %middle.block162 ]
  br label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.preheader, %.lr.ph.i89
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i93, %.lr.ph.i89 ], [ %indvars.iv.i90.ph, %.lr.ph.i89.preheader ] ; 2 uses
  %.01011.i91 = phi i16 [ %spec.select.i92, %.lr.ph.i89 ], [ %.01011.i91.ph, %.lr.ph.i89.preheader ]
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv.i90 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !34
  %i.ge = load i16, ptr %i.gb, align 2, !tbaa !34
  %i.gf = sub i16 %i.gd, %i.ge
  %spec.select.i92 = call i16 @llvm.smax.i16(i16 %i.gf, i16 %.01011.i91) ; 2 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i90, 2 ; 2 uses
  %i.gg = icmp samesign ult i64 %indvars.iv.next.i93, %i.fm
  br i1 %i.gg, label %.lr.ph.i89, label %psh_calc_max_height.exit95, !llvm.loop !234

psh_calc_max_height.exit95:                       ; preds = %.lr.ph.i89, %middle.block162, %psh_calc_max_height.exit86
  %.010.lcssa.i94 = phi i16 [ %.010.lcssa.i85, %psh_calc_max_height.exit86 ], [ %i.ga, %middle.block162 ], [ %spec.select.i92, %.lr.ph.i89 ] ; 3 uses
  %i.gh = load i8, ptr %i.do, align 1, !tbaa !228 ; 3 uses
  %.not.i96 = icmp eq i8 %i.gh, 0
  br i1 %.not.i96, label %psh_calc_max_height.exit104, label %.lr.ph.preheader.i97

.lr.ph.preheader.i97:                             ; preds = %psh_calc_max_height.exit95
  %i.gi = zext i8 %i.gh to i64                    ; 2 uses
  %i.gj = add nsw i64 %i.gi, -1
  %i.gk = lshr i64 %i.gj, 1
  %i.gl = add nuw i64 %i.gk, 1                    ; 2 uses
  %min.iters.check168 = icmp ult i8 %i.gh, 15
  br i1 %min.iters.check168, label %.lr.ph.i98.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.preheader.i97
  %n.vec170 = and i64 %i.gl, -8                   ; 3 uses
  %i.gm = shl i64 %n.vec170, 1
  %broadcast.splatinsert171 = insertelement <4 x i16> poison, i16 %.010.lcssa.i94, i64 0
  %broadcast.splat172 = shufflevector <4 x i16> %broadcast.splatinsert171, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph169
  %index174 = phi i64 [ 0, %vector.ph169 ], [ %index.next183, %vector.body173 ] ; 2 uses
  %vec.phi175 = phi <4 x i16> [ %broadcast.splat172, %vector.ph169 ], [ %i.gt, %vector.body173 ]
  %vec.phi176 = phi <4 x i16> [ %broadcast.splat172, %vector.ph169 ], [ %i.gu, %vector.body173 ]
  %i.gn = shl nuw i64 %index174, 1                ; 2 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gn
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gn
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.vec177 = load <8 x i16>, ptr %i.go, align 2, !tbaa !34 ; 2 uses
  %strided.vec178 = shufflevector <8 x i16> %wide.vec177, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec179 = shufflevector <8 x i16> %wide.vec177, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec180 = load <8 x i16>, ptr %i.gq, align 2, !tbaa !34 ; 2 uses
  %strided.vec181 = shufflevector <8 x i16> %wide.vec180, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec182 = shufflevector <8 x i16> %wide.vec180, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gr = sub <4 x i16> %strided.vec179, %strided.vec178
  %i.gs = sub <4 x i16> %strided.vec182, %strided.vec181
  %i.gt = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gr, <4 x i16> %vec.phi175) ; 2 uses
  %i.gu = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gs, <4 x i16> %vec.phi176) ; 2 uses
  %index.next183 = add nuw i64 %index174, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next183, %n.vec170
  br i1 %i.gv, label %middle.block184, label %vector.body173, !llvm.loop !235

middle.block184:                                  ; preds = %vector.body173
  %rdx.minmax185 = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gt, <4 x i16> %i.gu)
  %i.gw = call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %rdx.minmax185) ; 2 uses
  %cmp.n186 = icmp eq i64 %i.gl, %n.vec170
  br i1 %cmp.n186, label %psh_calc_max_height.exit104, label %.lr.ph.i98.preheader

.lr.ph.i98.preheader:                             ; preds = %.lr.ph.preheader.i97, %middle.block184
  %indvars.iv.i99.ph = phi i64 [ 0, %.lr.ph.preheader.i97 ], [ %i.gm, %middle.block184 ]
  %.01011.i100.ph = phi i16 [ %.010.lcssa.i94, %.lr.ph.preheader.i97 ], [ %i.gw, %middle.block184 ]
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %.lr.ph.i98.preheader, %.lr.ph.i98
  %indvars.iv.i99 = phi i64 [ %indvars.iv.next.i102, %.lr.ph.i98 ], [ %indvars.iv.i99.ph, %.lr.ph.i98.preheader ] ; 2 uses
  %.01011.i100 = phi i16 [ %spec.select.i101, %.lr.ph.i98 ], [ %.01011.i100.ph, %.lr.ph.i98.preheader ]
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %indvars.iv.i99 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !34
  %i.ha = load i16, ptr %i.gx, align 2, !tbaa !34
  %i.hb = sub i16 %i.gz, %i.ha
  %spec.select.i101 = call i16 @llvm.smax.i16(i16 %i.hb, i16 %.01011.i100) ; 2 uses
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i99, 2 ; 2 uses
  %i.hc = icmp samesign ult i64 %indvars.iv.next.i102, %i.gi
  br i1 %i.hc, label %.lr.ph.i98, label %psh_calc_max_height.exit104, !llvm.loop !236

psh_calc_max_height.exit104:                      ; preds = %.lr.ph.i98, %middle.block184, %psh_calc_max_height.exit95
  %.010.lcssa.i103 = phi i16 [ %.010.lcssa.i94, %psh_calc_max_height.exit95 ], [ %i.gw, %middle.block184 ], [ %spec.select.i101, %.lr.ph.i98 ] ; 2 uses
  %i.hd = zext nneg i16 %.010.lcssa.i103 to i64
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !237 ; 2 uses
  %i.hg = mul i64 %i.hf, %i.hd                    ; 2 uses
  %i.hh = ashr i64 %i.hg, 63
  %i.hi = add i64 %i.hg, 32768
  %i.hj = add i64 %i.hi, %i.hh
  %i.hk = icmp slt i64 %i.hj, 65536000
  br i1 %i.hk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %psh_calc_max_height.exit104
  %i.hl = shl nsw i64 %i.hf, 3
  %i.hm = sdiv i64 %i.hl, 125
  br label %bb.e

bb.d:                                             ; preds = %psh_calc_max_height.exit104
  %.rhs.trunc = zext nneg i16 %.010.lcssa.i103 to i32
  %i.hn = udiv i32 4194304, %.rhs.trunc
  %.sext = zext nneg i32 %i.hn to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sext.sink = phi i64 [ %i.hm, %bb.c ], [ %.sext, %bb.d ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 3928
  store i64 %.sext.sink, ptr %i.ho, align 8, !tbaa !238
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !239
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 3936
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !240
  %i.hs = load i32, ptr %i.di, align 4, !tbaa !226
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 3944
  store i32 %i.hs, ptr %i.ht, align 8, !tbaa !241
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i8 0, i64 16, i1 false)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.hw = phi i32 [ %.pre, %bb.e ], [ %i.c, %bb.a ]
  store ptr %i.b, ptr %2, align 8, !tbaa !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.hw
}

; Function Attrs: nounwind uwtable
define internal void @psh_globals_destroy(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !220
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 0, ptr %i.c, align 8, !tbaa !220
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i32 0, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.e, align 8, !tbaa !243
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2376
  store i32 0, ptr %i.f, align 8, !tbaa !244
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3152
  store i32 0, ptr %i.g, align 8, !tbaa !245
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef nonnull %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @psh_blues_set_zones(ptr nofree noundef %0, i32 noundef range(i32 0, 256) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 256) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %.092.idx = select i1 %.not, i64 0, i64 1552
  %.092 = getelementptr inbounds nuw i8, ptr %0, i64 %.092.idx ; 8 uses
  %.091.v = select i1 %.not, i64 776, i64 2328    ; 2 uses
  %.091 = getelementptr inbounds nuw i8, ptr %0, i64 %.091.v ; 9 uses
  store i32 0, ptr %.092, align 8, !tbaa !115
  store i32 0, ptr %.091, align 8, !tbaa !115
  %i.a = icmp samesign ugt i32 %1, 1
  br i1 %i.a, label %.lr.ph21.i, label %psh_blues_set_zones_0.exit

.lr.ph21.i:                                       ; preds = %bb.a, %bb.k
  %.019.i = phi i32 [ %i.v, %bb.k ], [ %1, %bb.a ]
  %or.cond.not.not.i = phi i1 [ true, %bb.k ], [ false, %bb.a ] ; 5 uses
  %.06217.i = phi i32 [ %.163.i, %bb.k ], [ 0, %bb.a ] ; 7 uses
  %.06416.i = phi i32 [ %.165.i, %bb.k ], [ 0, %bb.a ] ; 7 uses
  %.06615.i = phi ptr [ %i.u, %bb.k ], [ %2, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.06615.i, i64 2 ; 2 uses
  %..06615.i = select i1 %or.cond.not.not.i, ptr %i.b, ptr %.06615.i
  %.06615.i. = select i1 %or.cond.not.not.i, ptr %.06615.i, ptr %i.b
  %.06416.i..06217.i = select i1 %or.cond.not.not.i, i32 %.06416.i, i32 %.06217.i ; 3 uses
  %.092..091 = select i1 %or.cond.not.not.i, ptr %.092, ptr %.091 ; 2 uses
  %.sink39.in.i = load i16, ptr %.06615.i., align 2, !tbaa !34
  %.sink39.i = sext i16 %.sink39.in.i to i32      ; 4 uses
  %.sink40.i = load i16, ptr %..06615.i, align 2, !tbaa !34
  %i.c = sext i16 %.sink40.i to i32
  %i.d = sub nsw i32 %i.c, %.sink39.i             ; 6 uses
  %.056.i = getelementptr inbounds nuw i8, ptr %.092..091, i64 8 ; 2 uses
  %.not3.i = icmp eq i32 %.06416.i..06217.i, 0
  br i1 %.not3.i, label %._crit_edge14.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph21.i, %bb.h
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.lr.ph21.i ] ; 3 uses
  %.0555.i = phi ptr [ %i.n, %bb.h ], [ %.056.i, %.lr.ph21.i ] ; 5 uses
  %.14.i = phi i32 [ %i.m, %bb.h ], [ %.06416.i..06217.i, %.lr.ph21.i ]
  %i.e = load i32, ptr %.0555.i, align 8, !tbaa !64 ; 2 uses
  %i.f = icmp sgt i32 %i.e, %.sink39.i
  br i1 %i.f, label %.lr.ph13.preheader.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = icmp eq i32 %i.e, %.sink39.i
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0555.i, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !139  ; 2 uses
  %i.j = icmp slt i32 %i.d, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.d, %i.i
  br i1 %i.k, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  store i32 %i.d, ptr %i.h, align 4, !tbaa !139
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.l = icmp sgt i32 %i.d, %i.i
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  store i32 %i.d, ptr %i.h, align 4, !tbaa !139
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.m = add i32 %.14.i, -1                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0555.i, i64 48 ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge14.i, label %.lr.ph.i, !llvm.loop !246

.lr.ph13.preheader.i:                             ; preds = %.lr.ph.i
  %i.o = mul nuw nsw i64 %indvar, 48
  %i.p = getelementptr i8, ptr %.092..091, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.p, i64 56
  %7 = zext i32 %.06416.i..06217.i to i64
  %8 = mul nuw nsw i64 %7, 48
  %i.q = mul nsw i64 %indvar, -48
  %9 = add i64 %i.q, %8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep, ptr nonnull align 8 %.0555.i, i64 %9, i1 false)
  br label %._crit_edge14.i

._crit_edge14.i:                                  ; preds = %bb.h, %.lr.ph13.preheader.i, %.lr.ph21.i
  %.055.lcssa33.i = phi ptr [ %.056.i, %.lr.ph21.i ], [ %.0555.i, %.lr.ph13.preheader.i ], [ %i.n, %bb.h ] ; 2 uses
  store i32 %.sink39.i, ptr %.055.lcssa33.i, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %.055.lcssa33.i, i64 4
  store i32 %i.d, ptr %i.r, align 4, !tbaa !139
  br i1 %or.cond.not.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge14.i
  %i.s = add i32 %.06416.i, 1
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge14.i
  %i.t = add i32 %.06217.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.165.i = phi i32 [ %i.s, %bb.i ], [ %.06416.i, %bb.j ], [ %.06416.i, %bb.f ], [ %.06416.i, %bb.g ], [ %.06416.i, %bb.d ], [ %.06416.i, %bb.e ] ; 2 uses
  %.163.i = phi i32 [ %.06217.i, %bb.i ], [ %i.t, %bb.j ], [ %.06217.i, %bb.f ], [ %.06217.i, %bb.g ], [ %.06217.i, %bb.d ], [ %.06217.i, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.06615.i, i64 4
  %i.v = add nsw i32 %.019.i, -2                  ; 2 uses
  %i.w = icmp ugt i32 %i.v, 1
  br i1 %i.w, label %.lr.ph21.i, label %psh_blues_set_zones_0.exit, !llvm.loop !247

psh_blues_set_zones_0.exit:                       ; preds = %bb.k, %bb.a
  %.064.lcssa.i = phi i32 [ 0, %bb.a ], [ %.165.i, %bb.k ] ; 5 uses
  %.062.lcssa.i = phi i32 [ 0, %bb.a ], [ %.163.i, %bb.k ] ; 3 uses
  store i32 %.064.lcssa.i, ptr %.092, align 8, !tbaa !115
  store i32 %.062.lcssa.i, ptr %.091, align 8, !tbaa !115
  %i.x = icmp samesign ugt i32 %3, 1
  br i1 %i.x, label %.lr.ph21.i111.preheader, label %psh_blues_set_zones_0.exit140

.lr.ph21.i111.preheader:                          ; preds = %psh_blues_set_zones_0.exit
  %.056.i126 = getelementptr inbounds nuw i8, ptr %.091, i64 8 ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %.091.v
  %i.z = getelementptr i8, ptr %i.y, i64 56
  br label %.lr.ph21.i111

.lr.ph21.i111:                                    ; preds = %.lr.ph21.i111.preheader, %bb.s
  %.019.i112 = phi i32 [ %i.as, %bb.s ], [ %3, %.lr.ph21.i111.preheader ]
  %.06217.i114 = phi i32 [ %.163.i135, %bb.s ], [ %.062.lcssa.i, %.lr.ph21.i111.preheader ] ; 8 uses
  %.06615.i116 = phi ptr [ %i.ar, %bb.s ], [ %4, %.lr.ph21.i111.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.06615.i116, i64 2
  %.sink39.in.i123 = load i16, ptr %i.aa, align 2, !tbaa !34
  %.sink39.i124 = sext i16 %.sink39.in.i123 to i32 ; 4 uses
  %.sink40.i125 = load i16, ptr %.06615.i116, align 2, !tbaa !34
  %i.ab = sext i16 %.sink40.i125 to i32
  %i.ac = sub nsw i32 %i.ab, %.sink39.i124        ; 6 uses
  %.not3.i127 = icmp eq i32 %.06217.i114, 0
  br i1 %.not3.i127, label %._crit_edge14.i132, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph21.i111, %bb.r
  %indvar180 = phi i64 [ %indvar.next181, %bb.r ], [ 0, %.lr.ph21.i111 ] ; 3 uses
  %.0555.i129 = phi ptr [ %i.am, %bb.r ], [ %.056.i126, %.lr.ph21.i111 ] ; 5 uses
  %.14.i130 = phi i32 [ %i.al, %bb.r ], [ %.06217.i114, %.lr.ph21.i111 ]
  %i.ad = load i32, ptr %.0555.i129, align 8, !tbaa !64 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, %.sink39.i124
  br i1 %i.ae, label %.lr.ph13.preheader.i136, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i128
  %i.af = icmp eq i32 %i.ad, %.sink39.i124
  br i1 %i.af, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.0555.i129, i64 4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !139 ; 2 uses
  %i.ai = icmp slt i32 %i.ac, 0
  br i1 %i.ai, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aj = icmp slt i32 %i.ac, %i.ah
  br i1 %i.aj, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  store i32 %i.ac, ptr %i.ag, align 4, !tbaa !139
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.ak = icmp sgt i32 %i.ac, %i.ah
  br i1 %i.ak, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store i32 %i.ac, ptr %i.ag, align 4, !tbaa !139
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.al = add i32 %.14.i130, -1                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0555.i129, i64 48 ; 2 uses
  %.not.i131 = icmp eq i32 %i.al, 0
  %indvar.next181 = add i64 %indvar180, 1
  br i1 %.not.i131, label %._crit_edge14.i132, label %.lr.ph.i128, !llvm.loop !246

.lr.ph13.preheader.i136:                          ; preds = %.lr.ph.i128
  %10 = mul nuw nsw i64 %indvar180, 48
  %scevgep184 = getelementptr i8, ptr %i.z, i64 %10
  %i.an = zext i32 %.06217.i114 to i64
  %i.ao = mul nuw nsw i64 %i.an, 48
  %11 = mul nsw i64 %indvar180, -48
  %12 = add i64 %11, %i.ao
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep184, ptr nonnull align 8 %.0555.i129, i64 %12, i1 false)
  br label %._crit_edge14.i132

._crit_edge14.i132:                               ; preds = %bb.r, %.lr.ph13.preheader.i136, %.lr.ph21.i111
  %.055.lcssa33.i133 = phi ptr [ %.056.i126, %.lr.ph21.i111 ], [ %.0555.i129, %.lr.ph13.preheader.i136 ], [ %i.am, %bb.r ] ; 2 uses
  store i32 %.sink39.i124, ptr %.055.lcssa33.i133, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %.055.lcssa33.i133, i64 4
  store i32 %i.ac, ptr %i.ap, align 4, !tbaa !139
  %i.aq = add i32 %.06217.i114, 1
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge14.i132, %bb.q, %bb.p, %bb.o, %bb.n
  %.163.i135 = phi i32 [ %.06217.i114, %bb.o ], [ %i.aq, %._crit_edge14.i132 ], [ %.06217.i114, %bb.p ], [ %.06217.i114, %bb.q ], [ %.06217.i114, %bb.n ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.06615.i116, i64 4
  %i.as = add nsw i32 %.019.i112, -2              ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  br i1 %i.at, label %.lr.ph21.i111, label %psh_blues_set_zones_0.exit140, !llvm.loop !247

psh_blues_set_zones_0.exit140:                    ; preds = %bb.s, %psh_blues_set_zones_0.exit
  %.062.lcssa.i110 = phi i32 [ %.062.lcssa.i, %psh_blues_set_zones_0.exit ], [ %.163.i135, %bb.s ] ; 4 uses
  store i32 %.064.lcssa.i, ptr %.092, align 8, !tbaa !115
  store i32 %.062.lcssa.i110, ptr %.091, align 8, !tbaa !115
  %.not101 = icmp eq i32 %.064.lcssa.i, 0         ; 2 uses
  br i1 %.not101, label %.loopexit141, label %bb.t

bb.t:                                             ; preds = %psh_blues_set_zones_0.exit140
  %i.au = getelementptr inbounds nuw i8, ptr %.092, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %bb.t
  %.093 = phi i32 [ %.064.lcssa.i, %bb.t ], [ %i.bh, %bb.x ] ; 2 uses
  %.090 = phi ptr [ %i.au, %bb.t ], [ %i.bi, %bb.x ] ; 8 uses
  switch i32 %.093, label %bb.v [
    i32 0, label %.loopexit141
    i32 1, label %._crit_edge188
  ]

._crit_edge188:                                   ; preds = %bb.u
  %.pre = load i32, ptr %.090, align 8, !tbaa !64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.090, i64 4
  %.pre189 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !139
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %.090, i64 48
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !64
  %i.ax = load i32, ptr %.090, align 8, !tbaa !64 ; 3 uses
  %i.ay = sub nsw i32 %i.aw, %i.ax                ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.090, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !139 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, %i.ay
  br i1 %i.bb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !139
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge188, %bb.v, %bb.w
  %i.bc = phi i32 [ %.pre189, %._crit_edge188 ], [ %i.ba, %bb.v ], [ %i.ay, %bb.w ]
  %i.bd = phi i32 [ %.pre, %._crit_edge188 ], [ %i.ax, %bb.v ], [ %i.ax, %bb.w ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.090, i64 12
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !117
  %i.bf = add nsw i32 %i.bc, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %.090, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !118
  %i.bh = add i32 %.093, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %.090, i64 48
  br label %bb.u, !llvm.loop !248

.loopexit141:                                     ; preds = %bb.u, %psh_blues_set_zones_0.exit140
  %.not103 = icmp eq i32 %.062.lcssa.i110, 0      ; 2 uses
  br i1 %.not103, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.loopexit141
  %i.bj = getelementptr inbounds nuw i8, ptr %.091, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %bb.y
  %.194 = phi i32 [ %.062.lcssa.i110, %bb.y ], [ %i.bw, %bb.ac ] ; 2 uses
  %.089 = phi ptr [ %i.bj, %bb.y ], [ %i.bx, %bb.ac ] ; 8 uses
  switch i32 %.194, label %bb.aa [
    i32 0, label %.loopexit
    i32 1, label %._crit_edge190
  ]

._crit_edge190:                                   ; preds = %bb.z
  %.pre191 = load i32, ptr %.089, align 8, !tbaa !64
  %.phi.trans.insert192 = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %.pre193 = load i32, ptr %.phi.trans.insert192, align 4, !tbaa !139
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bk = load i32, ptr %.089, align 8, !tbaa !64 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.089, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !64
  %i.bn = sub nsw i32 %i.bk, %i.bm                ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.089, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !139 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bn
  br i1 %i.bq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !139
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge190, %bb.aa, %bb.ab
  %i.br = phi i32 [ %.pre193, %._crit_edge190 ], [ %i.bp, %bb.aa ], [ %i.bn, %bb.ab ]
  %i.bs = phi i32 [ %.pre191, %._crit_edge190 ], [ %i.bk, %bb.aa ], [ %i.bk, %bb.ab ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.089, i64 8
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !118
  %i.bu = add nsw i32 %i.br, %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %.089, i64 12
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !117
  %i.bw = add i32 %.194, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %.089, i64 48
  br label %bb.z, !llvm.loop !249

.loopexit:                                        ; preds = %bb.z, %.loopexit141
  br i1 %.not101, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  %.0164 = getelementptr inbounds nuw i8, ptr %.092, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.092, i64 20 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !117
  %i.ca = sub nsw i32 %i.bz, %5
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !117
  %i.cb = getelementptr inbounds nuw i8, ptr %.092, i64 16
  %.087153 = load i32, ptr %i.cb, align 8, !tbaa !118 ; 2 uses
  %.3154 = add i32 %.064.lcssa.i, -1              ; 2 uses
  %.not106155 = icmp eq i32 %.3154, 0
  br i1 %.not106155, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %.lr.ph
  %.3158 = phi i32 [ %.3, %.lr.ph ], [ %.3154, %bb.ad ]
  %.087157 = phi i32 [ %.087, %.lr.ph ], [ %.087153, %bb.ad ] ; 3 uses
  %.1156 = phi ptr [ %i.cc, %.lr.ph ], [ %.0164, %bb.ad ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1156, i64 48 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1156, i64 60 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !117 ; 2 uses
  %i.cf = sub nsw i32 %i.ce, %.087157
  %i.cg = sdiv i32 %i.cf, 2                       ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %5                  ; 2 uses
  %i.ci = add nsw i32 %i.cg, %.087157             ; 2 uses
  %i.cj = add nsw i32 %.087157, %5
  %i.ck = sub nsw i32 %i.ce, %5
  %.sink185 = select i1 %i.ch, i32 %i.ci, i32 %i.ck
  %.sink = select i1 %i.ch, i32 %i.ci, i32 %i.cj
  store i32 %.sink185, ptr %i.cd, align 4, !tbaa !117
  %i.cl = getelementptr inbounds nuw i8, ptr %.1156, i64 8
  store i32 %.sink, ptr %i.cl, align 8, !tbaa !118
  %i.cm = getelementptr inbounds nuw i8, ptr %.1156, i64 56
  %.087 = load i32, ptr %i.cm, align 8, !tbaa !118 ; 2 uses
  %.3 = add i32 %.3158, -1                        ; 2 uses
  %.not106 = icmp eq i32 %.3, 0
  br i1 %.not106, label %._crit_edge, label %.lr.ph, !llvm.loop !250

._crit_edge:                                      ; preds = %.lr.ph, %bb.ad
  %.1.lcssa = phi ptr [ %.0164, %bb.ad ], [ %i.cc, %.lr.ph ]
  %.087.lcssa = phi i32 [ %.087153, %bb.ad ], [ %.087, %.lr.ph ]
  %i.cn = add nsw i32 %.087.lcssa, %5
  %i.co = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  store i32 %i.cn, ptr %i.co, align 8, !tbaa !118
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %.loopexit
  br i1 %.not103, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.0164.1 = getelementptr inbounds nuw i8, ptr %.091, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.091, i64 20 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !117
  %i.cr = sub nsw i32 %i.cq, %5
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !117
  %i.cs = getelementptr inbounds nuw i8, ptr %.091, i64 16
  %.087153.1 = load i32, ptr %i.cs, align 8, !tbaa !118 ; 2 uses
  %.3154.1 = add i32 %.062.lcssa.i110, -1         ; 2 uses
  %.not106155.1 = icmp eq i32 %.3154.1, 0
  br i1 %.not106155.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.af, %.lr.ph.1
  %.3158.1 = phi i32 [ %.3.1, %.lr.ph.1 ], [ %.3154.1, %bb.af ]
  %.087157.1 = phi i32 [ %.087.1, %.lr.ph.1 ], [ %.087153.1, %bb.af ] ; 3 uses
  %.1156.1 = phi ptr [ %i.ct, %.lr.ph.1 ], [ %.0164.1, %bb.af ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.1156.1, i64 48 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1156.1, i64 60 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !117 ; 2 uses
  %i.cw = sub nsw i32 %i.cv, %.087157.1
  %i.cx = sdiv i32 %i.cw, 2                       ; 2 uses
  %i.cy = icmp slt i32 %i.cx, %5                  ; 2 uses
  %i.cz = add nsw i32 %i.cx, %.087157.1           ; 2 uses
  %i.da = add nsw i32 %.087157.1, %5
  %i.db = sub nsw i32 %i.cv, %5
  %.sink187 = select i1 %i.cy, i32 %i.cz, i32 %i.db
  %.sink186 = select i1 %i.cy, i32 %i.cz, i32 %i.da
  store i32 %.sink187, ptr %i.cu, align 4, !tbaa !117
  %i.dc = getelementptr inbounds nuw i8, ptr %.1156.1, i64 8
  store i32 %.sink186, ptr %i.dc, align 8, !tbaa !118
  %i.dd = getelementptr inbounds nuw i8, ptr %.1156.1, i64 56
  %.087.1 = load i32, ptr %i.dd, align 8, !tbaa !118 ; 2 uses
  %.3.1 = add i32 %.3158.1, -1                    ; 2 uses
  %.not106.1 = icmp eq i32 %.3.1, 0
end_hunk_0
