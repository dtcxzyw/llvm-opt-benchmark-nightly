inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@ubidi_writeReordered_78:bb.a
  %i.ej = add nsw i32 %.in309, -1                 ; 2 uses
  %i.ek = call i32 @ubidi_getVisualRun_78(ptr noundef nonnull %0, i32 noundef %i.ej, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = load i32, ptr %i.a, align 4
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.b, align 4             ; 2 uses
  br i1 %i.el, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.eq = call fastcc noundef i32 @_ZL14doWriteReversePKDsiPDsitP10UErrorCode(ptr noundef %i.eo, i32 noundef %i.ep, ptr noundef %.12296, i32 noundef %.5201295, i16 noundef zeroext %i.ei, ptr noundef %4)
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.er = call fastcc noundef i32 @_ZL14doWriteForwardPKDsiPDsitP10UErrorCode(ptr noundef %i.eo, i32 noundef %i.ep, ptr noundef %.12296, i32 noundef %.5201295, i16 noundef zeroext %spec.select288, ptr noundef %4)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %storemerge268 = phi i32 [ %i.er, %bb.az ], [ %i.eq, %bb.ay ] ; 3 uses
  store i32 %storemerge268, ptr %i.b, align 4
  %.not269 = icmp eq ptr %.12296, null
  %i.es = sext i32 %storemerge268 to i64
  %i.et = getelementptr inbounds [2 x i8], ptr %.12296, i64 %i.es
  %.13 = select i1 %.not269, ptr null, ptr %i.et
  %i.eu = sub nsw i32 %.5201295, %storemerge268   ; 2 uses
  %i.ev = icmp samesign ugt i32 %.in309, 1
  br i1 %i.ev, label %bb.ax, label %.loopexit, !llvm.loop !28

bb.bb:                                            ; preds = %bb.aw
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ex = load ptr, ptr %i.ew, align 8            ; 4 uses
  %i.ey = icmp sgt i32 %i.y, 0
  br i1 %i.ey, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.bb
  %i.ez = and i16 %spec.select288, -3
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph, %bb.bu
  %.in = phi i32 [ %i.y, %.lr.ph ], [ %i.fa, %bb.bu ] ; 2 uses
  %.14294 = phi ptr [ %1, %.lr.ph ], [ %.23, %bb.bu ] ; 8 uses
  %.6202293 = phi i32 [ %2, %.lr.ph ], [ %.9205, %bb.bu ] ; 6 uses
  %i.fa = add nsw i32 %.in, -1                    ; 2 uses
  %i.fb = call i32 @ubidi_getVisualRun_78(ptr noundef nonnull %0, i32 noundef %i.fa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %i.fc = load i32, ptr %i.a, align 4             ; 2 uses
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.fd ; 2 uses
  %i.ff = icmp eq i32 %i.fb, 0
  br i1 %i.ff, label %bb.bd, label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.fg = load i32, ptr %i.b, align 4             ; 3 uses
  %i.fh = add nsw i32 %i.fg, %i.fc
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr i8, ptr %i.ex, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 -1
  %i.fl = load i8, ptr %i.fk, align 1
  %.not273 = icmp eq i8 %i.fl, 0
  br i1 %.not273, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fm = icmp sgt i32 %.6202293, 0
  br i1 %i.fm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fn = getelementptr inbounds nuw i8, ptr %.14294, i64 2
  store i16 8206, ptr %.14294, align 2
  %.pre.pre = load i32, ptr %i.b, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pre = phi i32 [ %.pre.pre, %bb.bf ], [ %i.fg, %bb.be ]
  %.15 = phi ptr [ %i.fn, %bb.bf ], [ %.14294, %bb.be ]
  %i.fo = add nsw i32 %.6202293, -1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bd
  %i.fp = phi i32 [ %.pre, %bb.bg ], [ %i.fg, %bb.bd ]
  %.7203 = phi i32 [ %i.fo, %bb.bg ], [ %.6202293, %bb.bd ] ; 2 uses
  %.16 = phi ptr [ %.15, %bb.bg ], [ %.14294, %bb.bd ] ; 3 uses
  %i.fq = call fastcc noundef i32 @_ZL14doWriteReversePKDsiPDsitP10UErrorCode(ptr noundef %i.fe, i32 noundef %i.fp, ptr noundef %.16, i32 noundef %.7203, i16 noundef zeroext %i.ez, ptr noundef %4) ; 3 uses
  store i32 %i.fq, ptr %i.b, align 4
  %.not274 = icmp eq ptr %.16, null
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [2 x i8], ptr %.16, i64 %i.fr ; 2 uses
  %.17 = select i1 %.not274, ptr null, ptr %i.fs  ; 3 uses
  %i.ft = sub nsw i32 %.7203, %i.fq               ; 3 uses
  %i.fu = load i32, ptr %i.a, align 4
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.ex, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1
  %.not275 = icmp eq i8 %i.fx, 0
  br i1 %.not275, label %bb.bu, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fy = icmp sgt i32 %i.ft, 0
  br i1 %i.fy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fz = getelementptr inbounds nuw i8, ptr %.17, i64 2
  store i16 8206, ptr %i.fs, align 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.18 = phi ptr [ %i.fz, %bb.bj ], [ %.17, %bb.bi ]
  %i.ga = add nsw i32 %i.ft, -1
  br label %bb.bu

bb.bl:                                            ; preds = %bb.bc
  %i.gb = getelementptr inbounds i8, ptr %i.ex, i64 %i.fd
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = zext nneg i8 %i.gc to i64
  %i.ge = shl nuw i64 1, %i.gd
  %i.gf = and i64 %i.ge, 8194
  %.not270 = icmp eq i64 %i.gf, 0
  br i1 %.not270, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.gg = icmp sgt i32 %.6202293, 0
  br i1 %i.gg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gh = getelementptr inbounds nuw i8, ptr %.14294, i64 2
  store i16 8207, ptr %.14294, align 2
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.19 = phi ptr [ %i.gh, %bb.bn ], [ %.14294, %bb.bm ]
  %i.gi = add nsw i32 %.6202293, -1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl
  %.8204 = phi i32 [ %.6202293, %bb.bl ], [ %i.gi, %bb.bo ] ; 2 uses
  %.20 = phi ptr [ %.14294, %bb.bl ], [ %.19, %bb.bo ] ; 3 uses
  %i.gj = load i32, ptr %i.b, align 4
  %i.gk = call fastcc noundef i32 @_ZL14doWriteForwardPKDsiPDsitP10UErrorCode(ptr noundef %i.fe, i32 noundef %i.gj, ptr noundef %.20, i32 noundef %.8204, i16 noundef zeroext %spec.select288, ptr noundef %4) ; 5 uses
  store i32 %i.gk, ptr %i.b, align 4
  %.not271 = icmp eq ptr %.20, null
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [2 x i8], ptr %.20, i64 %i.gl ; 2 uses
  %.21 = select i1 %.not271, ptr null, ptr %i.gm  ; 4 uses
  %i.gn = sub nsw i32 %.8204, %i.gk               ; 4 uses
  %i.go = icmp sgt i32 %i.gk, 0
  br i1 %i.go, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.gp = load i32, ptr %i.a, align 4
  %i.gq = add nsw i32 %i.gp, %i.gk
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr i8, ptr %i.ex, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gs, i64 -1
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext nneg i8 %i.gu to i64
  %i.gw = shl nuw i64 1, %i.gv
  %i.gx = and i64 %i.gw, 8194
  %.not272 = icmp eq i64 %i.gx, 0
  br i1 %.not272, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.gy = icmp sgt i32 %i.gn, 0
  br i1 %i.gy, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gz = getelementptr inbounds nuw i8, ptr %.21, i64 2
  store i16 8207, ptr %i.gm, align 2
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.22 = phi ptr [ %i.gz, %bb.bs ], [ %.21, %bb.br ]
  %i.ha = add nsw i32 %i.gn, -1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bp, %bb.bq, %bb.bt, %bb.bh, %bb.bk
  %.9205 = phi i32 [ %i.ga, %bb.bk ], [ %i.ft, %bb.bh ], [ %i.gn, %bb.bq ], [ %i.ha, %bb.bt ], [ %i.gn, %bb.bp ] ; 2 uses
  %.23 = phi ptr [ %.18, %bb.bk ], [ %.17, %bb.bh ], [ %.21, %bb.bq ], [ %.22, %bb.bt ], [ %.21, %bb.bp ]
  %i.hb = icmp samesign ugt i32 %.in, 1
  br i1 %i.hb, label %bb.bc, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %bb.bu, %bb.ba, %bb.av, %bb.u, %bb.bb, %.preheader290, %bb.v, %.preheader
  %.10206 = phi i32 [ %i.ba, %bb.u ], [ %.4200, %bb.av ], [ %i.eu, %bb.ba ], [ %2, %.preheader ], [ %2, %bb.v ], [ %2, %.preheader290 ], [ %2, %bb.bb ], [ %.9205, %bb.bu ]
  %i.hc = sub nsw i32 %2, %.10206
  %i.hd = call i32 @u_terminateUChars_78(ptr noundef %1, i32 noundef %2, i32 noundef %i.hc, ptr noundef nonnull %4) #4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.o, %bb.a, %bb.b, %.loopexit, %bb.n, %bb.l, %bb.g
  %.0 = phi i32 [ %i.hd, %.loopexit ], [ 0, %bb.g ], [ 0, %bb.l ], [ %i.x, %bb.n ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

declare i32 @ubidi_countRuns_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ubidi_getVisualRun_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL14doWriteForwardPKDsiPDsitP10UErrorCode(ptr noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2, i32 noundef %3, i16 noundef zeroext %4, ptr noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %6 = lshr i16 %4, 1
  %i.c = and i16 %6, 5
  switch i16 %i.c, label %.unreachabledefault [
    i16 0, label %bb.b
    i16 1, label %bb.d
    i16 4, label %.preheader178
    i16 5, label %.preheader180
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %3, %1
  br i1 %i.d, label %bb.c, label %iter.check

iter.check:                                       ; preds = %bb.b
  %smin = tail call i32 @llvm.smin.i32(i32 %1, i32 1)
  %i.e = sub i32 %1, %smin                        ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 1                  ; 5 uses
  %min.iters.check265 = icmp ult i32 %i.e, 3
  %i.h = sub i64 %i.b, %i.a
  %diff.check = icmp ult i64 %i.h, 32
  %or.cond293 = or i1 %min.iters.check265, %diff.check
  br i1 %or.cond293, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check266 = icmp ult i32 %i.e, 15
  br i1 %min.iters.check266, label %vec.epilog.ph, label %vector.ph267

vector.ph267:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf268 = and i64 %i.g, 12
  %n.vec269 = and i64 %i.g, 8589934576            ; 5 uses
  %i.i = shl nuw nsw i64 %n.vec269, 1             ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = trunc i64 %n.vec269 to i32
  %i.l = sub i32 %1, %i.k
  %i.m = getelementptr i8, ptr %0, i64 %i.i
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph267
  %index271 = phi i64 [ 0, %vector.ph267 ], [ %index.next276, %vector.body270 ] ; 2 uses
  %i.n = shl i64 %index271, 1                     ; 2 uses
  %next.gep272 = getelementptr i8, ptr %2, i64 %i.n ; 2 uses
  %next.gep273 = getelementptr i8, ptr %0, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep273, i64 16
  %wide.load274 = load <8 x i16>, ptr %next.gep273, align 2
  %wide.load275 = load <8 x i16>, ptr %i.o, align 2
  %i.p = getelementptr i8, ptr %next.gep272, i64 16
  store <8 x i16> %wide.load274, ptr %next.gep272, align 2
  store <8 x i16> %wide.load275, ptr %i.p, align 2
  %index.next276 = add nuw i64 %index271, 16      ; 2 uses
  %i.q = icmp eq i64 %index.next276, %n.vec269
  br i1 %i.q, label %middle.block277, label %vector.body270, !llvm.loop !30

middle.block277:                                  ; preds = %vector.body270
  %cmp.n278 = icmp eq i64 %i.g, %n.vec269
  br i1 %cmp.n278, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block277
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf268, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec269, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec283 = and i64 %i.g, 8589934588            ; 4 uses
  %i.r = shl nuw nsw i64 %n.vec283, 1             ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %i.t = trunc i64 %n.vec283 to i32
  %i.u = sub i32 %1, %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index284 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next288, %vec.epilog.vector.body ] ; 2 uses
  %i.w = shl i64 %index284, 1                     ; 2 uses
  %next.gep285 = getelementptr i8, ptr %2, i64 %i.w
  %next.gep286 = getelementptr i8, ptr %0, i64 %i.w
  %wide.load287 = load <4 x i16>, ptr %next.gep286, align 2
  store <4 x i16> %wide.load287, ptr %next.gep285, align 2
  %index.next288 = add nuw i64 %index284, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next288, %n.vec283
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n289 = icmp eq i64 %i.g, %n.vec283
  br i1 %cmp.n289, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0133.ph = phi ptr [ %2, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.0128.ph = phi i32 [ %1, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  %.0116.ph = phi ptr [ %0, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  store i32 15, ptr %5, align 4
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.0133 = phi ptr [ %i.aa, %.preheader ], [ %.0133.ph, %.preheader.preheader ] ; 2 uses
  %.0128 = phi i32 [ %i.ab, %.preheader ], [ %.0128.ph, %.preheader.preheader ] ; 2 uses
  %.0116 = phi ptr [ %i.y, %.preheader ], [ %.0116.ph, %.preheader.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0116, i64 2
  %i.z = load i16, ptr %.0116, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %.0133, i64 2
  store i16 %i.z, ptr %.0133, align 2
  %i.ab = add nsw i32 %.0128, -1
  %i.ac = icmp sgt i32 %.0128, 1
  br i1 %i.ac, label %.preheader, label %.loopexit, !llvm.loop !32

bb.d:                                             ; preds = %bb.a
  %i.ad = icmp slt i32 %3, %1
  br i1 %i.ad, label %bb.e, label %.preheader175

bb.e:                                             ; preds = %bb.d
  store i32 15, ptr %5, align 4
  br label %.loopexit

.preheader175:                                    ; preds = %bb.d, %bb.k
  %.0125 = phi i32 [ %.2127, %bb.k ], [ 0, %bb.d ] ; 3 uses
  %.0123 = phi i32 [ %.1124, %bb.k ], [ 0, %bb.d ] ; 4 uses
  %i.ae = add nsw i32 %.0125, 1                   ; 4 uses
  %i.af = sext i32 %.0125 to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %0, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = zext i16 %i.ah to i32                   ; 4 uses
  %i.aj = and i32 %i.ai, 64512
  %i.ak = icmp ne i32 %i.aj, 55296
  %.not148 = icmp eq i32 %i.ae, %1
  %or.cond164 = select i1 %i.ak, i1 true, i1 %.not148
  br i1 %or.cond164, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.preheader175
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %0, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = and i32 %i.ao, 64512
  %i.aq = icmp eq i32 %i.ap, 56320
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = add nsw i32 %.0125, 2
  %i.as = shl nuw nsw i32 %i.ai, 10
  %i.at = add nsw i32 %i.as, -56613888
  %i.au = add nuw nsw i32 %i.at, %i.ao
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.preheader175
  %.2127 = phi i32 [ %i.ae, %.preheader175 ], [ %i.ar, %bb.g ], [ %i.ae, %bb.f ] ; 2 uses
  %.1122 = phi i32 [ %i.ai, %.preheader175 ], [ %i.au, %bb.g ], [ %i.ai, %bb.f ]
  %i.av = tail call i32 @u_charMirror_78(i32 noundef %.1122) #4 ; 4 uses
  %i.aw = icmp ult i32 %i.av, 65536
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = trunc nuw i32 %i.av to i16
  %i.ay = add nsw i32 %.0123, 1
  %i.az = sext i32 %.0123 to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %2, i64 %i.az
  store i16 %i.ax, ptr %i.ba, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bb = lshr i32 %i.av, 10
  %i.bc = trunc i32 %i.bb to i16
  %i.bd = add i16 %i.bc, -10304
  %i.be = sext i32 %.0123 to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %2, i64 %i.be ; 2 uses
  store i16 %i.bd, ptr %i.bf, align 2
  %i.bg = trunc i32 %i.av to i16
  %i.bh = and i16 %i.bg, 1023
  %i.bi = or disjoint i16 %i.bh, -9216
  %i.bj = add nsw i32 %.0123, 2
  %i.bk = getelementptr i8, ptr %i.bf, i64 2
  store i16 %i.bi, ptr %i.bk, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1124 = phi i32 [ %i.ay, %bb.i ], [ %i.bj, %bb.j ]
  %i.bl = icmp slt i32 %.2127, %1
  br i1 %i.bl, label %.preheader175, label %.loopexit, !llvm.loop !33

.preheader178:                                    ; preds = %bb.a, %bb.o
  %indvar = phi i64 [ %indvar.next, %bb.o ], [ 0, %bb.a ] ; 2 uses
  %.1134 = phi ptr [ %.2135, %bb.o ], [ %2, %bb.a ] ; 12 uses
  %.0129 = phi i32 [ %i.dl, %bb.o ], [ %1, %bb.a ] ; 5 uses
  %.1117 = phi ptr [ %i.bm, %bb.o ], [ %0, %bb.a ] ; 2 uses
  %.0112 = phi i32 [ %.3115, %bb.o ], [ %3, %bb.a ] ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1117, i64 2 ; 4 uses
  %i.bn = load i16, ptr %.1117, align 2
  %.fr170 = freeze i16 %i.bn                      ; 3 uses
  %i.bo = and i16 %.fr170, -4
  %i.bp = icmp eq i16 %i.bo, 8204
  br i1 %i.bp, label %bb.o, label %switch.early.test

switch.early.test:                                ; preds = %.preheader178
  switch i16 %.fr170, label %bb.l [
    i16 8297, label %bb.o
    i16 8296, label %bb.o
    i16 8295, label %bb.o
    i16 8294, label %bb.o
    i16 8238, label %bb.o
    i16 8237, label %bb.o
    i16 8236, label %bb.o
    i16 8235, label %bb.o
    i16 8234, label %bb.o
  ]

end_hunk_0
