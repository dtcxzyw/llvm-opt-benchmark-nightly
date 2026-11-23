Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1215
loop-unroll.NumRuntimeUnrolled: 403
loop-unroll.NumUnrolled: 1633
begin_hunk_0_@helper_sve_uzp_p:bb.a
  %i.adr = zext nneg i32 %i.adn to i64
  %i.ads = lshr i64 %i.adq, %i.adr
  %i.adt = or i64 %i.ads, %i.adq                  ; 2 uses
  %exitcond.not.i175.3 = icmp eq i32 %i.d, 1
  br i1 %exitcond.not.i175.3, label %.lr.ph.i179, label %.lr.ph.i171.4

.lr.ph.i171.4:                                    ; preds = %.lr.ph.i171.3
  %indvars.iv.next.i174.3 = or disjoint i64 %i.oy, 4 ; 2 uses
  %i.adu = trunc nuw nsw i64 %indvars.iv.next.i174.3 to i32
  %i.adv = shl nuw nsw i32 1, %i.adu
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr @even_bit_esz_masks, i64 %indvars.iv.next.i174.3
  %i.adx = load i64, ptr %i.adw, align 8
  %i.ady = and i64 %i.adx, %i.adt                 ; 2 uses
  %i.adz = zext nneg i32 %i.adv to i64
  %i.aea = lshr i64 %i.ady, %i.adz
  %i.aeb = or i64 %i.aea, %i.ady
  br label %.lr.ph.i179

.lr.ph.i179:                                      ; preds = %.lr.ph.preheader.i170, %.lr.ph.i171.1, %.lr.ph.i171.2, %.lr.ph.i171.3, %.lr.ph.i171.4
  %.lcssa273 = phi i64 [ %i.acv, %.lr.ph.preheader.i170 ], [ %i.add, %.lr.ph.i171.1 ], [ %i.adl, %.lr.ph.i171.2 ], [ %i.adt, %.lr.ph.i171.3 ], [ %i.aeb, %.lr.ph.i171.4 ]
  %i.aec = lshr i64 %i.acm, %i.ox
  %i.aed = shl nuw nsw i32 1, %i.d
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr @even_bit_esz_masks, i64 %i.oy
  %i.aef = load i64, ptr %i.aee, align 8
  %i.aeg = and i64 %i.aef, %i.aec                 ; 2 uses
  %i.aeh = zext nneg i32 %i.aed to i64
  %i.aei = lshr i64 %i.aeg, %i.aeh
  %i.aej = or i64 %i.aei, %i.aeg                  ; 2 uses
  %indvars.iv.next.i182 = add nuw nsw i64 %i.oy, 1 ; 3 uses
  %exitcond.not.i183 = icmp eq i64 %indvars.iv.next.i182, 5
  br i1 %exitcond.not.i183, label %compress_bits.exit184, label %.lr.ph.i179.1

.lr.ph.i179.1:                                    ; preds = %.lr.ph.i179
  %i.aek = trunc nuw nsw i64 %indvars.iv.next.i182 to i32
  %i.ael = shl nuw nsw i32 1, %i.aek
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr @even_bit_esz_masks, i64 %indvars.iv.next.i182
  %i.aen = load i64, ptr %i.aem, align 8
  %i.aeo = and i64 %i.aen, %i.aej                 ; 2 uses
  %i.aep = zext nneg i32 %i.ael to i64
  %i.aeq = lshr i64 %i.aeo, %i.aep
  %i.aer = or i64 %i.aeq, %i.aeo                  ; 2 uses
  %indvars.iv.next.i182.1 = add nuw nsw i64 %i.oy, 2 ; 3 uses
  %exitcond.not.i183.1 = icmp eq i64 %indvars.iv.next.i182.1, 5
  br i1 %exitcond.not.i183.1, label %compress_bits.exit184, label %.lr.ph.i179.2

.lr.ph.i179.2:                                    ; preds = %.lr.ph.i179.1
  %i.aes = trunc nuw nsw i64 %indvars.iv.next.i182.1 to i32
  %i.aet = shl nuw nsw i32 1, %i.aes
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr @even_bit_esz_masks, i64 %indvars.iv.next.i182.1
  %i.aev = load i64, ptr %i.aeu, align 8
  %i.aew = and i64 %i.aev, %i.aer                 ; 2 uses
  %i.aex = zext nneg i32 %i.aet to i64
  %i.aey = lshr i64 %i.aew, %i.aex
  %i.aez = or i64 %i.aey, %i.aew                  ; 2 uses
  %indvars.iv.next.i182.2 = add nuw nsw i64 %i.oy, 3 ; 3 uses
  %exitcond.not.i183.2 = icmp eq i64 %indvars.iv.next.i182.2, 5
  br i1 %exitcond.not.i183.2, label %compress_bits.exit184, label %.lr.ph.i179.3

.lr.ph.i179.3:                                    ; preds = %.lr.ph.i179.2
  %i.afa = trunc nuw nsw i64 %indvars.iv.next.i182.2 to i32
  %i.afb = shl nuw nsw i32 1, %i.afa
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr @even_bit_esz_masks, i64 %indvars.iv.next.i182.2
  %i.afd = load i64, ptr %i.afc, align 8
  %i.afe = and i64 %i.afd, %i.aez                 ; 2 uses
  %i.aff = zext nneg i32 %i.afb to i64
  %i.afg = lshr i64 %i.afe, %i.aff
  %i.afh = or i64 %i.afg, %i.afe                  ; 2 uses
  %exitcond.not.i183.3 = icmp eq i32 %i.d, 1
  br i1 %exitcond.not.i183.3, label %compress_bits.exit184, label %.lr.ph.i179.4

.lr.ph.i179.4:                                    ; preds = %.lr.ph.i179.3
  %indvars.iv.next.i182.3 = or disjoint i64 %i.oy, 4 ; 2 uses
  %i.afi = trunc nuw nsw i64 %indvars.iv.next.i182.3 to i32
  %i.afj = shl nuw nsw i32 1, %i.afi
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr @even_bit_esz_masks, i64 %indvars.iv.next.i182.3
  %i.afl = load i64, ptr %i.afk, align 8
  %i.afm = and i64 %i.afl, %i.afh                 ; 2 uses
  %i.afn = zext nneg i32 %i.afj to i64
  %i.afo = lshr i64 %i.afm, %i.afn
  %i.afp = or i64 %i.afo, %i.afm
  br label %compress_bits.exit184

compress_bits.exit184:                            ; preds = %.lr.ph.i179.4, %.lr.ph.i179.3, %.lr.ph.i179.2, %.lr.ph.i179.1, %.lr.ph.i179
  %.lcssa272 = phi i64 [ %i.aej, %.lr.ph.i179 ], [ %i.aer, %.lr.ph.i179.1 ], [ %i.aez, %.lr.ph.i179.2 ], [ %i.afh, %.lr.ph.i179.3 ], [ %i.afp, %.lr.ph.i179.4 ]
  %i.afq = and i64 %.lcssa273, 4294967295
  %i.afr = and i64 %.lcssa272, 4294967295
  %i.afs = shl nuw nsw i64 %i.afr, %i.sc
  %i.aft = or i64 %i.afs, %i.afq
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cs
  store i64 %i.aft, ptr %i.afu, align 8
  %i.afv = lshr i64 %i.b, 1                       ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 %i.afv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.afw, ptr noundef nonnull align 16 %4, i64 noundef %i.afv, i1 noundef false) #26
  br label %.loopexit

.lr.ph.preheader.i186:                            ; preds = %.lr.ph.preheader.i186.lr.ph, %compress_bits.exit200
  %.2224 = phi i64 [ 0, %.lr.ph.preheader.i186.lr.ph ], [ %i.aht, %compress_bits.exit200 ] ; 3 uses
  %.idx208 = shl nuw nsw i64 %.2224, 4
  %i.afx = getelementptr inbounds nuw i8, ptr %.0108, i64 %.idx208 ; 2 uses
  %i.afy = getelementptr i8, ptr %i.afx, i64 8
  %i.afz = load i64, ptr %i.afy, align 8
  %i.aga = load i64, ptr %i.afx, align 8
  %i.agb = lshr i64 %i.aga, %i.nd
  %i.agc = and i64 %i.ni, %i.agb                  ; 2 uses
  %i.agd = lshr i64 %i.agc, %i.nj
  %i.age = or i64 %i.agd, %i.agc                  ; 2 uses
  br i1 %exitcond.not.i191, label %.lr.ph.i195, label %.lr.ph.i187.1

.lr.ph.i187.1:                                    ; preds = %.lr.ph.preheader.i186
  %i.agf = load i64, ptr %i.nm, align 8
  %i.agg = and i64 %i.agf, %i.age                 ; 2 uses
  %i.agh = lshr i64 %i.agg, %i.nn
  %i.agi = or i64 %i.agh, %i.agg                  ; 2 uses
  br i1 %exitcond.not.i191.1, label %.lr.ph.i195, label %.lr.ph.i187.2

.lr.ph.i187.2:                                    ; preds = %.lr.ph.i187.1
  %i.agj = load i64, ptr %i.nq, align 8
  %i.agk = and i64 %i.agj, %i.agi                 ; 2 uses
  %i.agl = lshr i64 %i.agk, %i.nr
  %i.agm = or i64 %i.agl, %i.agk                  ; 2 uses
  br i1 %exitcond.not.i191.2, label %.lr.ph.i195, label %.lr.ph.i187.3

.lr.ph.i187.3:                                    ; preds = %.lr.ph.i187.2
  %i.agn = load i64, ptr %i.nu, align 8
  %i.ago = and i64 %i.agn, %i.agm                 ; 2 uses
  %i.agp = lshr i64 %i.ago, %i.nv
  %i.agq = or i64 %i.agp, %i.ago                  ; 2 uses
  br i1 %exitcond.not.i191.3, label %.lr.ph.i195, label %.lr.ph.i187.4

.lr.ph.i187.4:                                    ; preds = %.lr.ph.i187.3
  %i.agr = load i64, ptr %i.ny, align 8
  %i.ags = and i64 %i.agr, %i.agq                 ; 2 uses
  %i.agt = lshr i64 %i.ags, %i.nz
  %i.agu = or i64 %i.agt, %i.ags
  br label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %.lr.ph.preheader.i186, %.lr.ph.i187.1, %.lr.ph.i187.2, %.lr.ph.i187.3, %.lr.ph.i187.4
  %.lcssa270 = phi i64 [ %i.age, %.lr.ph.preheader.i186 ], [ %i.agi, %.lr.ph.i187.1 ], [ %i.agm, %.lr.ph.i187.2 ], [ %i.agq, %.lr.ph.i187.3 ], [ %i.agu, %.lr.ph.i187.4 ]
  %i.agv = lshr i64 %i.afz, %i.nd
  %i.agw = and i64 %i.oc, %i.agv                  ; 2 uses
  %i.agx = lshr i64 %i.agw, %i.od
  %i.agy = or i64 %i.agx, %i.agw                  ; 2 uses
  br i1 %exitcond.not.i199, label %compress_bits.exit200, label %.lr.ph.i195.1

.lr.ph.i195.1:                                    ; preds = %.lr.ph.i195
  %i.agz = load i64, ptr %i.og, align 8
  %i.aha = and i64 %i.agz, %i.agy                 ; 2 uses
  %i.ahb = lshr i64 %i.aha, %i.oh
  %i.ahc = or i64 %i.ahb, %i.aha                  ; 2 uses
  br i1 %exitcond.not.i199.1, label %compress_bits.exit200, label %.lr.ph.i195.2

.lr.ph.i195.2:                                    ; preds = %.lr.ph.i195.1
  %i.ahd = load i64, ptr %i.ok, align 8
  %i.ahe = and i64 %i.ahd, %i.ahc                 ; 2 uses
  %i.ahf = lshr i64 %i.ahe, %i.ol
  %i.ahg = or i64 %i.ahf, %i.ahe                  ; 2 uses
  br i1 %exitcond.not.i199.2, label %compress_bits.exit200, label %.lr.ph.i195.3

.lr.ph.i195.3:                                    ; preds = %.lr.ph.i195.2
  %i.ahh = load i64, ptr %i.oo, align 8
  %i.ahi = and i64 %i.ahh, %i.ahg                 ; 2 uses
  %i.ahj = lshr i64 %i.ahi, %i.op
  %i.ahk = or i64 %i.ahj, %i.ahi                  ; 2 uses
  br i1 %exitcond.not.i199.3, label %compress_bits.exit200, label %.lr.ph.i195.4

.lr.ph.i195.4:                                    ; preds = %.lr.ph.i195.3
  %i.ahl = load i64, ptr %i.os, align 8
  %i.ahm = and i64 %i.ahl, %i.ahk                 ; 2 uses
  %i.ahn = lshr i64 %i.ahm, %i.ot
  %i.aho = or i64 %i.ahn, %i.ahm
  br label %compress_bits.exit200

compress_bits.exit200:                            ; preds = %.lr.ph.i195.4, %.lr.ph.i195.3, %.lr.ph.i195.2, %.lr.ph.i195.1, %.lr.ph.i195
  %.lcssa271 = phi i64 [ %i.agy, %.lr.ph.i195 ], [ %i.ahc, %.lr.ph.i195.1 ], [ %i.ahg, %.lr.ph.i195.2 ], [ %i.ahk, %.lr.ph.i195.3 ], [ %i.aho, %.lr.ph.i195.4 ]
  %i.ahp = and i64 %.lcssa270, 4294967295
  %i.ahq = shl i64 %.lcssa271, 32
  %i.ahr = or disjoint i64 %i.ahq, %i.ahp
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %.2224
  store i64 %i.ahr, ptr %i.ahs, align 8
  %i.aht = add nuw nsw i64 %.2224, 1              ; 2 uses
  %exitcond241.not = icmp eq i64 %i.aht, %i.cs
  br i1 %exitcond241.not, label %.loopexit, label %.lr.ph.preheader.i186, !llvm.loop !713

.loopexit:                                        ; preds = %compress_bits.exit200, %compress_bits.exit184
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %compress_bits.exit120
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_trn_p(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = and i32 %3, 63
  %i.b = lshr i32 %3, 6
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 1, %i.c                  ; 2 uses
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @even_bit_esz_masks, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %.not = icmp ult i32 %3, 256                    ; 2 uses
  %narrow = select i1 %.not, i32 0, i32 %i.d
  %i.h = zext nneg i32 %narrow to i64             ; 9 uses
  %.028 = shl i64 %i.g, %i.h                      ; 16 uses
  %i.i = add nuw nsw i32 %i.a, 7
  %i.j = lshr i32 %i.i, 3                         ; 8 uses
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.026 = select i1 %.not, i32 %i.d, i32 0
  %i.k = zext nneg i32 %.026 to i64               ; 8 uses
  %i.l = load i64, ptr %1, align 8
  %4 = and i64 %i.l, %.028
  %5 = lshr i64 %4, %i.h
  %i.m = load i64, ptr %2, align 8
  %i.n = and i64 %i.m, %.028
  %i.o = shl i64 %i.n, %i.k
  %i.p = add i64 %i.o, %5
  store i64 %i.p, ptr %0, align 8
  %exitcond.not = icmp eq i32 %i.j, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %6 = and i64 %i.r, %.028
  %7 = lshr i64 %6, %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, %.028
  %i.v = shl i64 %i.u, %i.k
  %i.w = add i64 %i.v, %7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8
  %exitcond.not.1 = icmp eq i32 %i.j, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %8 = and i64 %i.z, %.028
  %9 = lshr i64 %8, %i.h
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, %.028
  %i.ad = shl i64 %i.ac, %i.k
  %i.ae = add i64 %i.ad, %9
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ae, ptr %i.af, align 8
  %exitcond.not.2 = icmp eq i32 %i.j, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %10 = and i64 %i.ah, %.028
  %11 = lshr i64 %10, %i.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, %.028
  %i.al = shl i64 %i.ak, %i.k
  %i.am = add i64 %i.al, %11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.am, ptr %i.an, align 8
  %exitcond.not.3 = icmp eq i32 %i.j, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load i64, ptr %i.ao, align 8
  %12 = and i64 %i.ap, %.028
  %13 = lshr i64 %12, %i.h
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = and i64 %i.ar, %.028
  %i.at = shl i64 %i.as, %i.k
  %i.au = add i64 %i.at, %13
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.au, ptr %i.av, align 8
  %exitcond.not.4 = icmp eq i32 %i.j, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i64, ptr %i.aw, align 8
  %14 = and i64 %i.ax, %.028
  %15 = lshr i64 %14, %i.h
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, %.028
  %i.bb = shl i64 %i.ba, %i.k
  %i.bc = add i64 %i.bb, %15
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bc, ptr %i.bd, align 8
  %exitcond.not.5 = icmp eq i32 %i.j, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load i64, ptr %i.be, align 8
  %16 = and i64 %i.bf, %.028
  %17 = lshr i64 %16, %i.h
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, %.028
  %i.bj = shl i64 %i.bi, %i.k
  %i.bk = add i64 %i.bj, %17
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bk, ptr %i.bl, align 8
  %exitcond.not.6 = icmp eq i32 %i.j, 7
  br i1 %exitcond.not.6, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bn = load i64, ptr %i.bm, align 8
  %18 = and i64 %i.bn, %.028
  %19 = lshr i64 %18, %i.h
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = and i64 %i.bp, %.028
  %i.br = shl i64 %i.bq, %i.k
  %i.bs = add i64 %i.br, %19
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bs, ptr %i.bt, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.a
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_rev_p(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = and i32 %2, 63                           ; 8 uses
  %i.b = zext nneg i32 %i.a to i64                ; 15 uses
  %i.c = lshr i32 %2, 6
  %i.d = and i32 %i.c, 3                          ; 25 uses
  %i.e = lshr i64 %i.b, 1                         ; 5 uses
  %i.f = icmp samesign ult i32 %i.a, 9
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8
  %i.h = shl nuw nsw i64 %i.b, 3
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = tail call i64 @llvm.bswap.i64(i64 %i.g)
  %i.k = lshr i64 %i.j, %i.i                      ; 3 uses
  %.not15.i = icmp eq i32 %i.d, 3
  br i1 %.not15.i, label %reverse_bits_64.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = shl i64 %i.k, 4
  %i.m = and i64 %i.l, -1085102592571150096
  %i.n = lshr i64 %i.k, 4
  %i.o = and i64 %i.n, 1085102592571150095
  %i.p = or disjoint i64 %i.m, %i.o               ; 3 uses
  %.not.not.i = icmp samesign ult i32 %i.d, 2
  br i1 %.not.not.i, label %.lr.ph.i.1, label %reverse_bits_64.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.q = shl i64 %i.p, 2
  %i.r = and i64 %i.q, -3689348814741910324
  %i.s = lshr i64 %i.p, 2
  %i.t = and i64 %i.s, 3689348814741910323
  %i.u = or disjoint i64 %i.r, %i.t               ; 3 uses
  %.not.not.i.1 = icmp eq i32 %i.d, 0
  br i1 %.not.not.i.1, label %.lr.ph.i.2, label %reverse_bits_64.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.v = shl i64 %i.u, 1
  %i.w = and i64 %i.v, -6148914691236517206
  %i.x = lshr i64 %i.u, 1
  %i.y = and i64 %i.x, 6148914691236517205
  %i.z = or disjoint i64 %i.w, %i.y
  br label %reverse_bits_64.exit

reverse_bits_64.exit:                             ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.b
  %.0.lcssa.i = phi i64 [ %i.k, %bb.b ], [ %i.p, %.lr.ph.i ], [ %i.u, %.lr.ph.i.1 ], [ %i.z, %.lr.ph.i.2 ]
  store i64 %.0.lcssa.i, ptr %0, align 8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.aa = and i64 %i.b, 15
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph94, label %.preheader86

.preheader86:                                     ; preds = %bb.c
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader86
  %.not13.i = icmp eq i32 %i.d, 3
  br i1 %.not13.i, label %reverse_bits_8.exit.thread.us.preheader, label %.lr.ph.preheader.i67.preheader

.lr.ph.preheader.i67.preheader:                   ; preds = %.lr.ph
  %.not.not.i71 = icmp samesign ult i32 %i.d, 2
  %.not.not.i71.1 = icmp eq i32 %i.d, 0
  %.not.not.i79 = icmp samesign ult i32 %i.d, 2
  %.not.not.i79.1 = icmp eq i32 %i.d, 0
  br label %.lr.ph.preheader.i67

reverse_bits_8.exit.thread.us.preheader:          ; preds = %.lr.ph
  %i.ac = icmp eq i64 %i.e, 1
  br i1 %i.ac, label %reverse_bits_8.exit.thread.us.epil.preheader, label %reverse_bits_8.exit.thread.us.preheader.new

reverse_bits_8.exit.thread.us.preheader.new:      ; preds = %reverse_bits_8.exit.thread.us.preheader
  %unroll_iter = and i64 %i.e, 30
  br label %reverse_bits_8.exit.thread.us

reverse_bits_8.exit.thread.us:                    ; preds = %reverse_bits_8.exit.thread.us, %reverse_bits_8.exit.thread.us.preheader.new
  %.192.us = phi i64 [ 0, %reverse_bits_8.exit.thread.us.preheader.new ], [ %i.au, %reverse_bits_8.exit.thread.us ] ; 6 uses
  %niter = phi i64 [ 0, %reverse_bits_8.exit.thread.us.preheader.new ], [ %niter.next.1, %reverse_bits_8.exit.thread.us ]
  %i.ad = xor i64 %.192.us, -1
  %i.ae = add nsw i64 %i.ad, %i.b                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.192.us
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.192.us
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.ae
  store i8 %i.ag, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.192.us, 1             ; 2 uses
  %i.am = xor i64 %.192.us, -2
  %i.an = add nsw i64 %i.am, %i.b                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.an
  store i8 %i.ap, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %.192.us, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit125.unr-lcssa, label %reverse_bits_8.exit.thread.us, !llvm.loop !715

.lr.ph94:                                         ; preds = %bb.c
  %i.av = add nsw i64 %i.b, -8                    ; 4 uses
  %.not15.i47 = icmp eq i32 %i.d, 3
  br i1 %.not15.i47, label %reverse_bits_64.exit56.thread.us, label %.lr.ph.i49

reverse_bits_64.exit56.thread.us:                 ; preds = %.lr.ph94
  %i.aw = load i64, ptr %1, align 8
  %i.ax = tail call i64 @llvm.bswap.i64(i64 %i.aw)
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = tail call i64 @llvm.bswap.i64(i64 %i.az)
  store i64 %i.ba, ptr %0, align 8
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.av
  store i64 %i.ax, ptr %i.bb, align 8
  %i.bc = icmp samesign ugt i32 %i.a, 17
  br i1 %i.bc, label %reverse_bits_64.exit56.thread.us.1, label %.loopexit

reverse_bits_64.exit56.thread.us.1:               ; preds = %reverse_bits_64.exit56.thread.us
  %i.bd = add nsw i64 %i.b, -16                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = tail call i64 @llvm.bswap.i64(i64 %i.bf)
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bd
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = tail call i64 @llvm.bswap.i64(i64 %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bd
  store i64 %i.bg, ptr %i.bl, align 8
  %i.bm = icmp samesign ugt i32 %i.a, 33
  br i1 %i.bm, label %reverse_bits_64.exit56.thread.us.2, label %.loopexit

reverse_bits_64.exit56.thread.us.2:               ; preds = %reverse_bits_64.exit56.thread.us.1
  %i.bn = add nsw i64 %i.b, -24                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = tail call i64 @llvm.bswap.i64(i64 %i.bp)
  %i.br = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = tail call i64 @llvm.bswap.i64(i64 %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bn
  store i64 %i.bq, ptr %i.bv, align 8
  %i.bw = icmp samesign ugt i32 %i.a, 49
  br i1 %i.bw, label %reverse_bits_64.exit56.thread.us.3, label %.loopexit

reverse_bits_64.exit56.thread.us.3:               ; preds = %reverse_bits_64.exit56.thread.us.2
  %i.bx = add nsw i64 %i.b, -32                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = tail call i64 @llvm.bswap.i64(i64 %i.bz)
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %i.bx
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = tail call i64 @llvm.bswap.i64(i64 %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.bx
  store i64 %i.ca, ptr %i.cf, align 8
  br label %.loopexit

.lr.ph.i49:                                       ; preds = %.lr.ph94
  %i.cg = load i64, ptr %1, align 8               ; 2 uses
  %i.ch = tail call i64 @llvm.bswap.i64(i64 %i.cg) ; 2 uses
  %i.ci = shl i64 %i.ch, 4
  %i.cj = and i64 %i.ci, -1085102592571150096
  %i.ck = lshr i64 %i.ch, 4
  %i.cl = and i64 %i.ck, 1085102592571150095
  %i.cm = or disjoint i64 %i.cj, %i.cl            ; 3 uses
  %.not.not.i54 = icmp samesign ult i32 %i.d, 2
  br i1 %.not.not.i54, label %.lr.ph.i49.1, label %.lr.ph.i59

.lr.ph.i49.1:                                     ; preds = %.lr.ph.i49
  %i.cn = shl i64 %i.cm, 2
  %i.co = and i64 %i.cn, -3689348814741910324
  %i.cp = lshr i64 %i.cm, 2
  %i.cq = and i64 %i.cp, 3689348814741910323
  %i.cr = or disjoint i64 %i.co, %i.cq
  %.not.not.i54.1 = icmp eq i32 %i.d, 0
end_hunk_0
