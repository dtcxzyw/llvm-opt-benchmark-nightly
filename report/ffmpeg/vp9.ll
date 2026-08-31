Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9?download=true
inline.NumInlined: 133
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 51
begin_hunk_0_@decode_frame_header:bb.a
  %.not.i = icmp ult i32 %.0.i1206, %i.gkn
  br i1 %.not.i, label %vpx_rac_get_prob_branchy.exit.thread, label %bb.rj

vpx_rac_get_prob_branchy.exit.thread:             ; preds = %vpx_rac_renorm.exit1207
  store i32 %.0.i1206, ptr %i.bth, align 8, !tbaa !166
  br label %bb.rk

bb.rj:                                            ; preds = %vpx_rac_renorm.exit1207
  %i.gko = sub i32 %i.gjv, %i.gkm
  store i32 %i.gko, ptr %i.bsx, align 8, !tbaa !164
  %narrow.i = sub nuw i32 %.0.i1206, %i.gkn
  store i32 %narrow.i, ptr %i.bth, align 8, !tbaa !166
  %i.gkp = tail call fastcc i32 @vp89_rac_get_uint(ptr noundef nonnull %i.bsx, i32 noundef 7)
  %.tr946 = trunc i32 %i.gkp to i8
  %i.gkq = shl i8 %.tr946, 1
  %i.gkr = or disjoint i8 %i.gkq, 1
  %i.gks = getelementptr inbounds nuw i8, ptr %i.b, i64 12609
  store i8 %i.gkr, ptr %i.gks, align 1, !tbaa !270
  %.pre1916 = load i32, ptr %i.bsx, align 8, !tbaa !164
  %.pre1917 = load i32, ptr %i.btf, align 4, !tbaa !165
  %.pre1918 = load i32, ptr %i.bth, align 8, !tbaa !166
  br label %bb.rk

bb.rk:                                            ; preds = %vpx_rac_get_prob_branchy.exit.thread, %bb.rj
  %i.gkt = phi i32 [ %.0.i1206, %vpx_rac_get_prob_branchy.exit.thread ], [ %.pre1918, %bb.rj ]
  %i.gku = phi i32 [ %.018.i1205, %vpx_rac_get_prob_branchy.exit.thread ], [ %.pre1917, %bb.rj ]
  %i.gkv = phi i32 [ %i.gkm, %vpx_rac_get_prob_branchy.exit.thread ], [ %.pre1916, %bb.rj ] ; 2 uses
  %i.gkw = sext i32 %i.gkv to i64
  %i.gkx = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.gkw
  %i.gky = load i8, ptr %i.gkx, align 1, !tbaa !154
  %i.gkz = zext i8 %i.gky to i32                  ; 3 uses
  %i.gla = shl i32 %i.gkv, %i.gkz                 ; 3 uses
  store i32 %i.gla, ptr %i.bsx, align 8, !tbaa !164
  %i.glb = shl i32 %i.gkt, %i.gkz                 ; 3 uses
  %i.glc = add nsw i32 %i.gku, %i.gkz             ; 5 uses
  %i.gld = icmp sgt i32 %i.glc, -1
  br i1 %i.gld, label %bb.rl, label %vpx_rac_renorm.exit1204.1

bb.rl:                                            ; preds = %bb.rk
  %i.gle = load ptr, ptr %i.clp, align 8, !tbaa !167 ; 3 uses
  %i.glf = load ptr, ptr %i.clq, align 8, !tbaa !168
  %i.glg = icmp ult ptr %i.gle, %i.glf
  br i1 %i.glg, label %bb.rm, label %vpx_rac_renorm.exit1204.1

bb.rm:                                            ; preds = %bb.rl
  %i.glh = getelementptr inbounds nuw i8, ptr %i.gle, i64 2
  store ptr %i.glh, ptr %i.clp, align 8, !tbaa !125
  %i.gli = load i16, ptr %i.gle, align 1, !tbaa !154
  %i.glj = tail call i16 @llvm.bswap.i16(i16 %i.gli)
  %i.glk = zext i16 %i.glj to i32
  %i.gll = shl i32 %i.glk, %i.glc
  %i.glm = or i32 %i.gll, %i.glb
  %i.gln = add nsw i32 %i.glc, -16
  br label %vpx_rac_renorm.exit1204.1

vpx_rac_renorm.exit1204.1:                        ; preds = %bb.rm, %bb.rl, %bb.rk
  %.018.i1202.1 = phi i32 [ %i.gln, %bb.rm ], [ %i.glc, %bb.rl ], [ %i.glc, %bb.rk ] ; 2 uses
  %.0.i1203.1 = phi i32 [ %i.glm, %bb.rm ], [ %i.glb, %bb.rl ], [ %i.glb, %bb.rk ] ; 4 uses
  store i32 %.018.i1202.1, ptr %i.btf, align 4, !tbaa !165
  %i.glo = mul i32 %i.gla, 252
  %i.glp = add i32 %i.glo, -252
  %i.glq = ashr i32 %i.glp, 8
  %i.glr = add nsw i32 %i.glq, 1                  ; 3 uses
  %i.gls = shl i32 %i.glr, 16                     ; 2 uses
  %.not.i995.1 = icmp ult i32 %.0.i1203.1, %i.gls
  br i1 %.not.i995.1, label %vpx_rac_get_prob_branchy.exit998.thread.1, label %bb.rn

bb.rn:                                            ; preds = %vpx_rac_renorm.exit1204.1
  %i.glt = sub i32 %i.gla, %i.glr
  store i32 %i.glt, ptr %i.bsx, align 8, !tbaa !164
  %narrow.i996.1 = sub nuw i32 %.0.i1203.1, %i.gls
  store i32 %narrow.i996.1, ptr %i.bth, align 8, !tbaa !166
  %i.glu = tail call fastcc i32 @vp89_rac_get_uint(ptr noundef nonnull %i.bsx, i32 noundef 7)
  %.tr.1 = trunc i32 %i.glu to i8
  %i.glv = shl i8 %.tr.1, 1
  %i.glw = or disjoint i8 %i.glv, 1
  %i.glx = getelementptr inbounds nuw i8, ptr %i.b, i64 12641
  store i8 %i.glw, ptr %i.glx, align 1, !tbaa !269
  %.pre1919 = load i32, ptr %i.bsx, align 8, !tbaa !164
  %.pre1920 = load i32, ptr %i.btf, align 4, !tbaa !165
  %.pre1921 = load i32, ptr %i.bth, align 8, !tbaa !166
  br label %bb.ro

vpx_rac_get_prob_branchy.exit998.thread.1:        ; preds = %vpx_rac_renorm.exit1204.1
  store i32 %.0.i1203.1, ptr %i.bth, align 8, !tbaa !166
  br label %bb.ro

bb.ro:                                            ; preds = %vpx_rac_get_prob_branchy.exit998.thread.1, %bb.rn
  %i.gly = phi i32 [ %.0.i1203.1, %vpx_rac_get_prob_branchy.exit998.thread.1 ], [ %.pre1921, %bb.rn ]
  %i.glz = phi i32 [ %.018.i1202.1, %vpx_rac_get_prob_branchy.exit998.thread.1 ], [ %.pre1920, %bb.rn ]
  %i.gma = phi i32 [ %i.glr, %vpx_rac_get_prob_branchy.exit998.thread.1 ], [ %.pre1919, %bb.rn ] ; 2 uses
  %i.gmb = sext i32 %i.gma to i64
  %i.gmc = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.gmb
  %i.gmd = load i8, ptr %i.gmc, align 1, !tbaa !154
  %i.gme = zext i8 %i.gmd to i32                  ; 3 uses
  %i.gmf = shl i32 %i.gma, %i.gme                 ; 3 uses
  store i32 %i.gmf, ptr %i.bsx, align 8, !tbaa !164
  %i.gmg = shl i32 %i.gly, %i.gme                 ; 3 uses
  %i.gmh = add nsw i32 %i.glz, %i.gme             ; 5 uses
  %i.gmi = icmp sgt i32 %i.gmh, -1
  br i1 %i.gmi, label %bb.rp, label %vpx_rac_renorm.exit1207.1

bb.rp:                                            ; preds = %bb.ro
  %i.gmj = load ptr, ptr %i.clp, align 8, !tbaa !167 ; 3 uses
  %i.gmk = load ptr, ptr %i.clq, align 8, !tbaa !168
  %i.gml = icmp ult ptr %i.gmj, %i.gmk
  br i1 %i.gml, label %bb.rq, label %vpx_rac_renorm.exit1207.1

bb.rq:                                            ; preds = %bb.rp
  %i.gmm = getelementptr inbounds nuw i8, ptr %i.gmj, i64 2
  store ptr %i.gmm, ptr %i.clp, align 8, !tbaa !125
  %i.gmn = load i16, ptr %i.gmj, align 1, !tbaa !154
  %i.gmo = tail call i16 @llvm.bswap.i16(i16 %i.gmn)
  %i.gmp = zext i16 %i.gmo to i32
  %i.gmq = shl i32 %i.gmp, %i.gmh
  %i.gmr = or i32 %i.gmq, %i.gmg
  %i.gms = add nsw i32 %i.gmh, -16
  br label %vpx_rac_renorm.exit1207.1

vpx_rac_renorm.exit1207.1:                        ; preds = %bb.rq, %bb.rp, %bb.ro
  %.018.i1205.1 = phi i32 [ %i.gms, %bb.rq ], [ %i.gmh, %bb.rp ], [ %i.gmh, %bb.ro ]
  %.0.i1206.1 = phi i32 [ %i.gmr, %bb.rq ], [ %i.gmg, %bb.rp ], [ %i.gmg, %bb.ro ] ; 3 uses
  store i32 %.018.i1205.1, ptr %i.btf, align 4, !tbaa !165
  %i.gmt = mul i32 %i.gmf, 252
  %i.gmu = add i32 %i.gmt, -252
  %i.gmv = ashr i32 %i.gmu, 8
  %i.gmw = add nsw i32 %i.gmv, 1                  ; 3 uses
  %i.gmx = shl i32 %i.gmw, 16                     ; 2 uses
  %.not.i.1 = icmp ult i32 %.0.i1206.1, %i.gmx
  br i1 %.not.i.1, label %vpx_rac_get_prob_branchy.exit.thread.1, label %bb.rr

bb.rr:                                            ; preds = %vpx_rac_renorm.exit1207.1
  %i.gmy = sub i32 %i.gmf, %i.gmw
  store i32 %i.gmy, ptr %i.bsx, align 8, !tbaa !164
  %narrow.i.1 = sub nuw i32 %.0.i1206.1, %i.gmx
  store i32 %narrow.i.1, ptr %i.bth, align 8, !tbaa !166
  %i.gmz = tail call fastcc i32 @vp89_rac_get_uint(ptr noundef nonnull %i.bsx, i32 noundef 7)
  %.tr946.1 = trunc i32 %i.gmz to i8
  %i.gna = shl i8 %.tr946.1, 1
  %i.gnb = or disjoint i8 %i.gna, 1
  %i.gnc = getelementptr inbounds nuw i8, ptr %i.b, i64 12642
  store i8 %i.gnb, ptr %i.gnc, align 2, !tbaa !270
  br label %.loopexit

vpx_rac_get_prob_branchy.exit.thread.1:           ; preds = %vpx_rac_renorm.exit1207.1
  store i32 %i.gmw, ptr %i.bsx, align 8, !tbaa !164
  store i32 %.0.i1206.1, ptr %i.bth, align 8, !tbaa !166
  br label %.loopexit

.loopexit:                                        ; preds = %bb.rr, %vpx_rac_get_prob_branchy.exit.thread.1, %bb.rc, %bb.iq, %bb.ip
  %i.gnd = trunc i64 %i.bsu to i32
  %i.gne = add i32 %i.bsb, %i.gnd
  br label %.critedge

.critedge:                                        ; preds = %bb.ev, %bb.ei, %bb.ea, %bb.fb, %bb.w, %bb.l, %.loopexit, %bb.ff, %bb.fa, %bb.dq, %bb.ad, %bb.u, %bb.k, %bb.h, %bb.g, %bb.d, %bb.b
  %.5854 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ -1094995529, %bb.g ], [ 0, %bb.h ], [ -1094995529, %bb.k ], [ -1094995529, %bb.ad ], [ %i.biq, %bb.dq ], [ -1094995529, %bb.fa ], [ %i.bsy, %bb.fb ], [ -1094995529, %bb.ff ], [ %i.gne, %.loopexit ], [ %i.fa, %bb.w ], [ -12, %bb.ea ], [ -1094995529, %bb.u ], [ %i.cb, %bb.l ], [ -1094995529, %bb.ei ], [ -1094995529, %bb.ev ]
  ret i32 %.5854
}

declare void @ff_thread_finish_setup(ptr noundef) local_unnamed_addr #3

declare void @ff_progress_frame_await(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @vp9_frame_unref(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.a) #13
  tail call void @av_refstruct_unref(ptr noundef %0) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !91
  ret void
}

declare ptr @av_refstruct_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ff_vpx_init_range_decoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_slice_thread_execute_with_mainfunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline nounwind uwtable
define internal noundef i32 @decode_tiles_mt(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [77168 x i8], ptr %i.d, i64 %i.e ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 3928
  %i.h = load i8, ptr %i.g, align 8, !tbaa !79
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !81
  %i.p = sext i32 %i.o to i64                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.r = load i32, ptr %i.q, align 4, !tbaa !177  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 3952 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !99   ; 4 uses
  %i.u = mul nsw i32 %i.t, %2
  %i.v = ashr i32 %i.u, %i.r
  %i.w = add nsw i32 %2, 1
  %i.x = mul nsw i32 %i.t, %i.w
  %i.y = ashr i32 %i.x, %i.r
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.t) ; 2 uses
  %i.aa = shl i32 %i.z, 3                         ; 5 uses
  %i.ab = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.t)
  %i.ac = shl i32 %i.ab, 3                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 %i.aa, ptr %i.ad, align 16, !tbaa !178
  %i.ae = shl nuw nsw i32 %i.i, 6                 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 3924 ; 4 uses
  %i.ag = ashr exact i32 %i.aa, 3                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 19160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !175
  %i.aj = sext i32 %i.ag to i64
  %i.ak = getelementptr inbounds [192 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !161 ; 2 uses
  %.not124 = icmp eq i32 %i.am, 0
  br i1 %.not124, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.a
  %i.an = mul nsw i32 %i.ag, %i.ae
  %i.ao = sext i32 %i.an to i64
  %i.ap = load i8, ptr %i.af, align 4, !tbaa !75
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = lshr i32 %i.ae, %i.aq
  %i.as = mul nsw i32 %i.ag, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = sext i32 %i.m to i64                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 3956
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 52384
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 52208 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 52192
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 52352
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 52408
  %i.bg = icmp slt i32 %i.aa, %i.ac
  %i.bh = zext nneg i32 %i.ae to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 3960
  %i.bj = sub nsw i32 %i.ac, %i.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 19136
  %4 = shl i32 %i.z, 6
  %5 = mul nsw i32 %4, %i.i                       ; 3 uses
  %i.bl = sext i32 %5 to i64
  %i.bm = mul nsw i64 %i.au, 63
  %i.bn = shl i32 %i.bj, 3
  %i.bo = mul i32 %i.bn, %i.i                     ; 3 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 19144
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 3925 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 19152
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 3824 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 3912
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 3864
  %i.by = shl nsw i64 %i.au, 6
  %i.bz = shl nsw i64 %i.p, 6
  br label %bb.b

.loopexit.loopexit:                               ; preds = %bb.h
  %.pre = load i32, ptr %i.al, align 8, !tbaa !161
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.ca = phi i32 [ %i.cd, %bb.b ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.197.lcssa = phi i64 [ %.096118, %bb.b ], [ %i.fl, %.loopexit.loopexit ]
  %.1.lcssa = phi i64 [ %.095119, %bb.b ], [ %i.fh, %.loopexit.loopexit ]
  %i.cb = zext i32 %i.ca to i64
  %i.cc = icmp samesign ult i64 %indvars.iv.next, %i.cb
  br i1 %i.cc, label %bb.b, label %._crit_edge123, !llvm.loop !271

bb.b:                                             ; preds = %.lr.ph122, %.loopexit
  %i.cd = phi i32 [ %i.am, %.lr.ph122 ], [ %i.ca, %.loopexit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.095119 = phi i64 [ %i.ao, %.lr.ph122 ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %.096118 = phi i64 [ %i.at, %.lr.ph122 ], [ %.197.lcssa, %.loopexit ] ; 2 uses
  %i.ce = load i32, ptr %i.av, align 8, !tbaa !173 ; 2 uses
  %i.cf = load i32, ptr %i.aw, align 4, !tbaa !100 ; 4 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32
  %i.ch = mul nsw i32 %i.cf, %i.cg
  %i.ci = ashr i32 %i.ch, %i.ce
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ck = mul nsw i32 %i.cf, %i.cj
  %i.cl = ashr i32 %i.ck, %i.ce
  %i.cm = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.cf)
  %i.cn = shl i32 %i.cm, 3                        ; 2 uses
  %i.co = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.cf)
  %i.cp = shl i32 %i.co, 3                        ; 2 uses
  %i.cq = load ptr, ptr %i.ax, align 8, !tbaa !163
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %indvars.iv
  store ptr %i.cr, ptr %i.ay, align 16, !tbaa !179
  %i.cs = icmp slt i32 %i.cn, %i.cp
  br i1 %i.cs, label %.lr.ph116, label %.loopexit

.lr.ph116:                                        ; preds = %bb.b, %bb.h
  %.094114 = phi i32 [ %i.dk, %bb.h ], [ %i.cn, %bb.b ] ; 3 uses
  %.1113 = phi i64 [ %i.fh, %bb.h ], [ %.095119, %bb.b ] ; 3 uses
  %.197112 = phi i64 [ %i.fl, %bb.h ], [ %.096118, %bb.b ] ; 4 uses
  %i.ct = load i32, ptr %i.s, align 8, !tbaa !99
  %i.cu = ashr exact i32 %.094114, 3              ; 2 uses
  %i.cv = mul i32 %i.ct, %i.cu
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [192 x i8], ptr %i.ak, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.cy = load i8, ptr %i.ba, align 2, !tbaa !72
  %.not = icmp eq i8 %i.cy, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph116
  %i.cz = load i8, ptr %i.bb, align 1, !tbaa !73
  %.not99 = icmp eq i8 %i.cz, 0
  br i1 %.not99, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bc, i8 2, i64 16, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 723401728380766730, ptr %i.bc, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.be, i8 0, i64 32, i1 false)
  store i64 0, ptr %i.bf, align 8
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0111 = phi ptr [ %i.di, %.lr.ph ], [ %i.cx, %bb.f ] ; 3 uses
  %.090110 = phi i64 [ %i.dh, %.lr.ph ], [ %.197112, %bb.f ] ; 2 uses
  %.091109 = phi i64 [ %i.dc, %.lr.ph ], [ %.1113, %bb.f ] ; 2 uses
  %.093108 = phi i32 [ %i.db, %.lr.ph ], [ %i.aa, %bb.f ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0111, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.da, i8 0, i64 128, i1 false)
  tail call fastcc void @decode_sb(ptr noundef %i.f, i32 noundef %.094114, i32 noundef %.093108, ptr noundef %.0111, i64 noundef %.091109, i64 noundef %.090110, i32 noundef 0)
  %i.db = add nsw i32 %.093108, 8                 ; 2 uses
  %i.dc = add nsw i64 %.091109, %i.bh
  %i.dd = load i8, ptr %i.af, align 4, !tbaa !75
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = lshr i32 %i.ae, %i.de
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = add nsw i64 %.090110, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.0111, i64 192
  %i.dj = icmp slt i32 %i.db, %i.ac
  br i1 %i.dj, label %.lr.ph, label %._crit_edge, !llvm.loop !272

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %i.dk = add nsw i32 %.094114, 8                 ; 3 uses
  %i.dl = load i32, ptr %i.bi, align 8, !tbaa !141
  %i.dm = icmp ult i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.dn = load ptr, ptr %i.bk, align 8, !tbaa !125
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.bl
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %.1113
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.dr, i64 %i.bp, i1 false)
  %i.ds = load ptr, ptr %i.bq, align 8, !tbaa !125
  %i.dt = load i8, ptr %i.af, align 4, !tbaa !75
  %i.du = zext i8 %i.dt to i32                    ; 2 uses
  %i.dv = ashr i32 %5, %i.du
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 %i.dw
  %i.dy = load ptr, ptr %i.br, align 8, !tbaa !125
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %.197112
  %i.ea = load i8, ptr %i.bs, align 1, !tbaa !74
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = lshr i32 64, %i.eb
  %i.ed = add nsw i32 %i.ec, -1
  %i.ee = sext i32 %i.ed to i64
  %i.ef = mul nsw i64 %i.ee, %i.p
  %i.eg = getelementptr inbounds i8, ptr %i.dz, i64 %i.ef
  %i.eh = lshr i32 %i.bo, %i.du
  %i.ei = zext i32 %i.eh to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.eg, i64 %i.ei, i1 false)
  %i.ej = load ptr, ptr %i.bt, align 8, !tbaa !125
  %i.ek = load i8, ptr %i.af, align 4, !tbaa !75
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  %i.em = ashr i32 %5, %i.el
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.ej, i64 %i.en
  %i.ep = load ptr, ptr %i.bu, align 8, !tbaa !125
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %.197112
  %i.er = load i8, ptr %i.bs, align 1, !tbaa !74
  %i.es = zext nneg i8 %i.er to i32
  %i.et = lshr i32 64, %i.es
  %i.eu = add nsw i32 %i.et, -1
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul nsw i64 %i.ev, %i.p
  %i.ex = getelementptr inbounds i8, ptr %i.eq, i64 %i.ew
  %i.ey = lshr i32 %i.bo, %i.el
  %i.ez = zext i32 %i.ey to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.ex, i64 %i.ez, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.fa = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bv) #13 ; 0 uses
  %i.fb = load ptr, ptr %i.bw, align 8, !tbaa !155
  %i.fc = sext i32 %i.cu to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = atomicrmw add ptr %i.fd, i32 1 release, align 4 ; 0 uses
  %i.ff = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.bx) #13 ; 0 uses
  %i.fg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bv) #13 ; 0 uses
  %i.fh = add nsw i64 %.1113, %i.by               ; 2 uses
  %i.fi = load i8, ptr %i.bs, align 1, !tbaa !74
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = ashr i64 %i.bz, %i.fj
  %i.fl = add nsw i64 %i.fk, %.197112             ; 2 uses
  %i.fm = icmp slt i32 %i.dk, %i.cp
  br i1 %i.fm, label %.lr.ph116, label %.loopexit.loopexit, !llvm.loop !273

._crit_edge123:                                   ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal noundef i32 @loopfilter_proc(ptr noundef %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3956 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !100
  %.not45 = icmp eq i32 %i.d, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !81
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !81
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3928
  %i.n = load i8, ptr %i.m, align 8, !tbaa !79
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 3912 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 3824 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 3864
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.u = shl nsw i64 %i.l, 6
  %i.v = shl nsw i64 %i.i, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 3925
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 19160
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 3952
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 3964 ; 2 uses
  %i.aa = shl nuw nsw i32 %i.o, 6                 ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 3924
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph44, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !162 ; 3 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load atomic i32, ptr %i.af acquire, align 4
  %.not.i = icmp slt i32 %i.ag, %i.ad
  br i1 %.not.i, label %bb.c, label %vp9_await_tile_progress.exit

bb.c:                                             ; preds = %bb.b
  %i.ah = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.r) #13 ; 0 uses
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %.not1112.i = icmp eq i32 %i.ak, %i.ad
  br i1 %.not1112.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.al = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.s, ptr noundef nonnull %i.r) #13 ; 0 uses
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load atomic i32, ptr %i.an monotonic, align 4
  %.not11.i = icmp eq i32 %i.ao, %i.ad
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !274

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %i.ap = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #13 ; 0 uses
  br label %vp9_await_tile_progress.exit

vp9_await_tile_progress.exit:                     ; preds = %bb.b, %._crit_edge.i
  %i.aq = load i8, ptr %i.t, align 2, !tbaa !182
  %.not = icmp eq i8 %i.aq, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %vp9_await_tile_progress.exit
  %i.ar = load i32, ptr %i.z, align 4, !tbaa !121
  %.not46 = icmp eq i32 %i.ar, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !175
  %i.at = load i32, ptr %i.y, align 8, !tbaa !99
  %i.au = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.av = mul i32 %i.at, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [192 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load i8, ptr %i.w, align 1, !tbaa !74
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = ashr i64 %i.v, %i.az
  %i.bb = mul nsw i64 %i.ba, %indvars.iv
  %i.bc = mul nsw i64 %i.u, %indvars.iv
  %i.bd = shl i32 %i.au, 3
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.03441 = phi i32 [ 0, %.lr.ph ], [ %i.be, %bb.e ] ; 2 uses
  %.03540 = phi ptr [ %i.ax, %.lr.ph ], [ %i.bl, %bb.e ] ; 2 uses
  %.03639 = phi i64 [ %i.bc, %.lr.ph ], [ %i.bf, %bb.e ] ; 2 uses
  %.03738 = phi i64 [ %i.bb, %.lr.ph ], [ %i.bk, %bb.e ] ; 2 uses
  tail call void @ff_vp9_loopfilter_sb(ptr noundef %0, ptr noundef %.03540, i32 noundef %i.bd, i32 noundef %.03441, i64 noundef %.03639, i64 noundef %.03738) #13
  %i.be = add nuw nsw i32 %.03441, 8              ; 2 uses
  %i.bf = add nsw i64 %.03639, %i.ab
  %i.bg = load i8, ptr %i.ac, align 4, !tbaa !75
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = lshr i32 %i.aa, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = add nsw i64 %.03738, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.03540, i64 192
  %i.bm = load i32, ptr %i.z, align 4, !tbaa !121
  %i.bn = icmp ult i32 %i.be, %i.bm
  br i1 %i.bn, label %bb.e, label %.loopexit, !llvm.loop !275

.loopexit:                                        ; preds = %bb.e, %bb.d, %vp9_await_tile_progress.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = load i32, ptr %i.c, align 4, !tbaa !100
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %bb.b, label %._crit_edge, !llvm.loop !276

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0
}

declare void @ff_vp9_adapt_probs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @vp9_export_enc_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.b = load i8, ptr %i.a, align 2, !tbaa !76
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.loopexit71, label %.preheader70

.preheader70:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3820
  %i.d = load i32, ptr %i.c, align 4, !tbaa !140  ; 3 uses
  %.not82 = icmp eq i32 %i.d, 0
  br i1 %.not82, label %.loopexit71, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130  ; 9 uses
  %wide.trip.count = zext i32 %i.d to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi106 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.g = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.h = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.i = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.j = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.k = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.l = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.m = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.n = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 77152
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 154320
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 231488
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 308656
end_hunk_0
