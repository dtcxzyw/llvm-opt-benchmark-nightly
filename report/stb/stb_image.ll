Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__psd_load:bb.a
.preheader228:                                    ; preds = %bb.ap
  br i1 %i.bl, label %.lr.ph248.preheader, label %.loopexit225

.lr.ph248.preheader:                              ; preds = %.preheader228
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !29
  %.pre288 = load ptr, ptr %i.bn, align 8, !tbaa !31
  br label %.lr.ph248

.preheader226:                                    ; preds = %bb.ap
  br i1 %i.bl, label %.lr.ph251, label %.loopexit225

.lr.ph251:                                        ; preds = %.preheader226, %.lr.ph251
  %.4250 = phi i32 [ %i.fr, %.lr.ph251 ], [ 0, %.preheader226 ]
  %.0188249 = phi ptr [ %i.fs, %.lr.ph251 ], [ %i.fn, %.preheader226 ] ; 2 uses
  %i.fo = tail call i32 @stbi__get16be(ptr noundef nonnull %0)
  %i.fp = lshr i32 %i.fo, 8
  %i.fq = trunc nuw i32 %i.fp to i8
  store i8 %i.fq, ptr %.0188249, align 1, !tbaa !37
  %i.fr = add nuw nsw i32 %.4250, 1               ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0188249, i64 4
  %exitcond275.not = icmp eq i32 %i.fr, %.fr260
  br i1 %exitcond275.not, label %.loopexit225, label %.lr.ph251, !llvm.loop !187

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %stbi__get8.exit
  %i.ft = phi ptr [ %i.gp, %stbi__get8.exit ], [ %.pre288, %.lr.ph248.preheader ] ; 3 uses
  %i.fu = phi ptr [ %i.gq, %stbi__get8.exit ], [ %.pre, %.lr.ph248.preheader ] ; 4 uses
  %.5247 = phi i32 [ %i.gr, %stbi__get8.exit ], [ 0, %.lr.ph248.preheader ]
  %.1189246 = phi ptr [ %i.gs, %stbi__get8.exit ], [ %i.fn, %.lr.ph248.preheader ] ; 2 uses
  %i.fv = icmp ult ptr %i.fu, %i.ft
  br i1 %i.fv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph248
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 1 ; 2 uses
  store ptr %i.fw, ptr %i.bm, align 8, !tbaa !29
  %i.fx = load i8, ptr %i.fu, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.ar:                                            ; preds = %.lr.ph248
  %i.fy = load i32, ptr %i.bo, align 8, !tbaa !26
  %.not.i221 = icmp eq i32 %i.fy, 0
  br i1 %.not.i221, label %stbi__get8.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fz = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ga = load ptr, ptr %i.bp, align 8, !tbaa !34
  %i.gb = load i32, ptr %i.br, align 4, !tbaa !35
  %i.gc = tail call i32 %i.fz(ptr noundef %i.ga, ptr noundef nonnull %i.bq, i32 noundef %i.gb) #37, !inline_history !65 ; 2 uses
  %i.gd = load ptr, ptr %i.bm, align 8, !tbaa !29
  %i.ge = load ptr, ptr %i.bs, align 8, !tbaa !28
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = load i32, ptr %i.bt, align 8, !tbaa !27
  %i.gk = add nsw i32 %i.gj, %i.gi
  store i32 %i.gk, ptr %i.bt, align 8, !tbaa !27
  %i.gl = icmp eq i32 %i.gc, 0
  br i1 %i.gl, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.bo, align 8, !tbaa !26
  store i8 0, ptr %i.bq, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.au:                                            ; preds = %bb.as
  %i.gm = sext i32 %i.gc to i64
  %i.gn = getelementptr inbounds i8, ptr %i.bq, i64 %i.gm
  %.pre.i222 = load i8, ptr %i.bq, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.au, %bb.at
  %i.go = phi i8 [ 0, %bb.at ], [ %.pre.i222, %bb.au ]
  %.sink.i.i = phi ptr [ %i.bu, %bb.at ], [ %i.gn, %bb.au ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.bn, align 8, !tbaa !31
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.aq, %bb.ar, %stbi__refill_buffer.exit.i
  %i.gp = phi ptr [ %i.ft, %bb.aq ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.ft, %bb.ar ]
  %i.gq = phi ptr [ %i.fw, %bb.aq ], [ %i.bu, %stbi__refill_buffer.exit.i ], [ %i.fu, %bb.ar ]
  %.0.i = phi i8 [ %i.fx, %bb.aq ], [ %i.go, %stbi__refill_buffer.exit.i ], [ 0, %bb.ar ]
  store i8 %.0.i, ptr %.1189246, align 1, !tbaa !37
  %i.gr = add nuw nsw i32 %.5247, 1               ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.1189246, i64 4
  %exitcond274.not = icmp eq i32 %i.gr, %.fr260
  br i1 %exitcond274.not, label %.loopexit225, label %.lr.ph248, !llvm.loop !188

.loopexit225.loopexit322.unr-lcssa:               ; preds = %.lr.ph245
  br i1 %lcmp.mod361.not, label %.loopexit225, label %.lr.ph245.epil.preheader

.lr.ph245.epil.preheader:                         ; preds = %.loopexit225.loopexit322.unr-lcssa, %.lr.ph245.preheader
  %.0192243.epil.init = phi ptr [ %i.en, %.lr.ph245.preheader ], [ %i.ev, %.loopexit225.loopexit322.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod362)
  br label %.lr.ph245.epil

.lr.ph245.epil:                                   ; preds = %.lr.ph245.epil, %.lr.ph245.epil.preheader
  %.0192243.epil = phi ptr [ %i.gt, %.lr.ph245.epil ], [ %.0192243.epil.init, %.lr.ph245.epil.preheader ] ; 2 uses
  %epil.iter360 = phi i32 [ %epil.iter360.next, %.lr.ph245.epil ], [ 0, %.lr.ph245.epil.preheader ]
  store i16 %i.em, ptr %.0192243.epil, align 2, !tbaa !74
  %i.gt = getelementptr inbounds nuw i8, ptr %.0192243.epil, i64 8
  %epil.iter360.next = add i32 %epil.iter360, 1   ; 2 uses
  %epil.iter360.cmp.not = icmp eq i32 %epil.iter360.next, %xtraiter359
  br i1 %epil.iter360.cmp.not, label %.loopexit225, label %.lr.ph245.epil, !llvm.loop !189

.loopexit225.loopexit323.unr-lcssa:               ; preds = %.lr.ph
  br i1 %lcmp.mod355.not, label %.loopexit225, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit225.loopexit323.unr-lcssa, %.lr.ph.preheader
  %.0191241.epil.init = phi ptr [ %i.ex, %.lr.ph.preheader ], [ %i.ff, %.loopexit225.loopexit323.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod356)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0191241.epil = phi ptr [ %i.gu, %.lr.ph.epil ], [ %.0191241.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter354 = phi i32 [ %epil.iter354.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store i8 %i.ew, ptr %.0191241.epil, align 1, !tbaa !37
  %i.gu = getelementptr inbounds nuw i8, ptr %.0191241.epil, i64 4
  %epil.iter354.next = add i32 %epil.iter354, 1   ; 2 uses
  %epil.iter354.cmp.not = icmp eq i32 %epil.iter354.next, %xtraiter353
  br i1 %epil.iter354.cmp.not, label %.loopexit225, label %.lr.ph.epil, !llvm.loop !190

.loopexit225:                                     ; preds = %.loopexit225.loopexit323.unr-lcssa, %.lr.ph.epil, %.loopexit225.loopexit322.unr-lcssa, %.lr.ph245.epil, %stbi__get8.exit, %.lr.ph251, %.lr.ph254, %bb.am, %bb.al, %.preheader228, %.preheader226, %bb.ao
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond278.not, label %.loopexit233, label %bb.aj, !llvm.loop !191

.loopexit233:                                     ; preds = %.loopexit225
  %i.gv = icmp samesign ugt i32 %i.aa, 3
  br i1 %i.gv, label %.loopexit233.thread306, label %.loopexit

.loopexit233.thread306:                           ; preds = %bb.ae, %bb.ai, %.loopexit233
  %i.gw = load i32, ptr %5, align 4, !tbaa !42
  %i.gx = icmp eq i32 %i.gw, 16
  %i.gy = icmp sgt i32 %.fr260, 0                 ; 2 uses
  br i1 %i.gx, label %.preheader, label %.preheader223

.preheader223:                                    ; preds = %.loopexit233.thread306
  br i1 %i.gy, label %.lr.ph257.preheader, label %.loopexit

.lr.ph257.preheader:                              ; preds = %.preheader223
  %wide.trip.count = zext nneg i32 %.fr260 to i64
  br label %.lr.ph257

.preheader:                                       ; preds = %.loopexit233.thread306
  br i1 %i.gy, label %.lr.ph259.preheader, label %.loopexit

.lr.ph259.preheader:                              ; preds = %.preheader
  %wide.trip.count286 = zext nneg i32 %.fr260 to i64
  br label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %bb.aw
  %indvars.iv283 = phi i64 [ 0, %.lr.ph259.preheader ], [ %indvars.iv.next284, %bb.aw ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv283, 3
  %i.gz = getelementptr inbounds nuw i8, ptr %.0195, i64 %.idx ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 6
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !74 ; 2 uses
  %.off = add i16 %i.hb, -1
  %switch = icmp ult i16 %.off, -2
  br i1 %switch, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph259
  %i.hc = uitofp i16 %i.hb to float
  %i.hd = fdiv float %i.hc, 6.553500e+04
  %i.he = fdiv float 1.000000e+00, %i.hd          ; 3 uses
  %i.hf = fsub nnan float 1.000000e+00, %i.he
  %i.hg = fmul nnan float %i.hf, 6.553500e+04     ; 2 uses
  %i.hh = load <2 x i16>, ptr %i.gz, align 2, !tbaa !74
  %i.hi = uitofp <2 x i16> %i.hh to <2 x float>
  %i.hj = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.hk, <2 x float> %i.hm)
  %i.ho = fptoui <2 x float> %i.hn to <2 x i16>
  store <2 x i16> %i.ho, ptr %i.gz, align 2, !tbaa !74
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 4 ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !74
  %i.hr = uitofp i16 %i.hq to float
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.he, float %i.hg)
  %i.ht = fptoui float %i.hs to i16
  store i16 %i.ht, ptr %i.hp, align 2, !tbaa !74
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph259, %bb.av
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %.loopexit, label %.lr.ph259, !llvm.loop !192

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %bb.ay
  %indvars.iv279 = phi i64 [ 0, %.lr.ph257.preheader ], [ %indvars.iv.next280, %bb.ay ] ; 2 uses
  %i.hu = shl nuw nsw i64 %indvars.iv279, 2
  %i.hv = getelementptr inbounds nuw i8, ptr %.0195, i64 %i.hu ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 3
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !37  ; 2 uses
  %.off219 = add i8 %i.hx, -1
  %switch220 = icmp ult i8 %.off219, -2
  br i1 %switch220, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph257
  %i.hy = uitofp i8 %i.hx to float
  %i.hz = fdiv float %i.hy, 2.550000e+02
  %i.ia = load i8, ptr %i.hv, align 1, !tbaa !37
  %i.ib = uitofp i8 %i.ia to float
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 1 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %7 = fdiv float 1.000000e+00, %i.hz             ; 3 uses
  %8 = fsub nnan float 1.000000e+00, %7
  %i.ie = fmul nnan float %8, 2.550000e+02        ; 2 uses
  %i.if = tail call float @llvm.fmuladd.f32(float %i.ib, float %7, float %i.ie)
  %i.ig = fptoui float %i.if to i8
  store i8 %i.ig, ptr %i.hv, align 1, !tbaa !37
  %i.ih = load <2 x i8>, ptr %i.ic, align 1, !tbaa !37
  %i.ii = uitofp <2 x i8> %i.ih to <2 x float>
  %i.ij = insertelement <2 x float> poison, float %7, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ik, <2 x float> %i.im) ; 2 uses
  %i.io = extractelement <2 x float> %i.in, i64 0
  %i.ip = fptoui float %i.io to i8
  store i8 %i.ip, ptr %i.ic, align 1, !tbaa !37
  %i.iq = extractelement <2 x float> %i.in, i64 1
  %i.ir = fptoui float %i.iq to i8
  store i8 %i.ir, ptr %i.id, align 1, !tbaa !37
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph257, %bb.ax
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count
  br i1 %exitcond282.not, label %.loopexit, label %.lr.ph257, !llvm.loop !193

.loopexit.loopexit324.unr-lcssa:                  ; preds = %.preheader234.us.3
  %lcmp.mod349.not = icmp eq i32 %xtraiter347, 0
  br i1 %lcmp.mod349.not, label %.loopexit, label %.preheader234.us.3.epil.preheader

.preheader234.us.3.epil.preheader:                ; preds = %.loopexit.loopexit324.unr-lcssa, %.preheader234.us.3.preheader
  %.0193237.us.3.epil.init = phi ptr [ %.0193237.us.3.ph, %.preheader234.us.3.preheader ], [ %i.eb, %.loopexit.loopexit324.unr-lcssa ]
  %lcmp.mod350 = icmp ne i32 %xtraiter347, 0
  tail call void @llvm.assume(i1 %lcmp.mod350)
  br label %.preheader234.us.3.epil

.preheader234.us.3.epil:                          ; preds = %.preheader234.us.3.epil, %.preheader234.us.3.epil.preheader
  %.0193237.us.3.epil = phi ptr [ %i.is, %.preheader234.us.3.epil ], [ %.0193237.us.3.epil.init, %.preheader234.us.3.epil.preheader ] ; 2 uses
  %epil.iter348 = phi i32 [ %epil.iter348.next, %.preheader234.us.3.epil ], [ 0, %.preheader234.us.3.epil.preheader ]
  store i8 -1, ptr %.0193237.us.3.epil, align 1, !tbaa !37
  %i.is = getelementptr inbounds nuw i8, ptr %.0193237.us.3.epil, i64 4
  %epil.iter348.next = add i32 %epil.iter348, 1   ; 2 uses
  %epil.iter348.cmp.not = icmp eq i32 %epil.iter348.next, %xtraiter347
  br i1 %epil.iter348.cmp.not, label %.loopexit, label %.preheader234.us.3.epil, !llvm.loop !194

.loopexit:                                        ; preds = %.loopexit.loopexit324.unr-lcssa, %.preheader234.us.3.epil, %bb.ay, %bb.aw, %.split.preheader, %.preheader234, %.preheader234.1, %.preheader234.2, %.preheader223, %.preheader, %.loopexit233
  %i.it = and i32 %4, -5
  %or.cond11.not = icmp eq i32 %i.it, 0
  br i1 %or.cond11.not, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.iu = load i32, ptr %5, align 4, !tbaa !42
  %i.iv = icmp eq i32 %i.iu, 16
  br i1 %i.iv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.iw = tail call ptr @stbi__convert_format16(ptr noundef nonnull %.0195, i32 noundef 4, i32 noundef %4, i32 noundef %i.ak, i32 noundef %i.ag)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.ix = tail call ptr @stbi__convert_format(ptr noundef nonnull %.0195, i32 noundef 4, i32 noundef %4, i32 noundef %i.ak, i32 noundef %i.ag)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1196 = phi ptr [ %i.iw, %bb.ba ], [ %i.ix, %bb.bb ] ; 2 uses
  %i.iy = icmp eq ptr %.1196, null
  br i1 %i.iy, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.loopexit
  %.2197 = phi ptr [ %.1196, %bb.bc ], [ %.0195, %.loopexit ]
  %.not214 = icmp eq ptr %3, null
  br i1 %.not214, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 4, ptr %3, align 4, !tbaa !40
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store i32 %i.ag, ptr %2, align 4, !tbaa !40
  store i32 %i.ak, ptr %1, align 4, !tbaa !40
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %.critedge, %bb.bf, %bb.y, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.d, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.r ], [ null, %.critedge ], [ null, %bb.t ], [ %.2197, %bb.bf ], [ null, %bb.y ], [ null, %bb.bc ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__pic_test(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @stbi__pic_is4(ptr noundef %0, ptr noundef nonnull @.str.88)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %stbi__pic_test_core.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !29
  %.pre8.i = load ptr, ptr %i.c, align 8, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %stbi__get8.exit.i, %.preheader.i
  %i.l = phi ptr [ %.pre8.i, %.preheader.i ], [ %i.af, %stbi__get8.exit.i ] ; 3 uses
  %i.m = phi ptr [ %.pre.i, %.preheader.i ], [ %i.ag, %stbi__get8.exit.i ] ; 3 uses
  %.07.i = phi i32 [ 0, %.preheader.i ], [ %i.ah, %stbi__get8.exit.i ]
  %i.n = icmp ult ptr %i.m, %i.l
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  br label %stbi__get8.exit.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.d, align 8, !tbaa !26
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %stbi__get8.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.s = load i32, ptr %i.h, align 4, !tbaa !35
  %i.t = tail call i32 %i.q(ptr noundef %i.r, ptr noundef nonnull %i.g, i32 noundef %i.s) #37, !inline_history !195 ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !27
  %i.ab = add nsw i32 %i.aa, %i.z
  store i32 %i.ab, ptr %i.j, align 8, !tbaa !27
  %i.ac = icmp eq i32 %i.t, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.d, align 8, !tbaa !26
  store i8 0, ptr %i.g, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ad = sext i32 %i.t to i64
  %i.ae = getelementptr inbounds i8, ptr %i.g, i64 %i.ad
  br label %stbi__refill_buffer.exit.i.i

stbi__refill_buffer.exit.i.i:                     ; preds = %bb.g, %bb.f
  %.sink.i.i.i = phi ptr [ %i.k, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.c, align 8, !tbaa !31
  br label %stbi__get8.exit.sink.split.i

stbi__get8.exit.sink.split.i:                     ; preds = %stbi__refill_buffer.exit.i.i, %bb.c
  %.sink.i = phi ptr [ %i.o, %bb.c ], [ %i.k, %stbi__refill_buffer.exit.i.i ] ; 2 uses
  %.ph.i = phi ptr [ %i.l, %bb.c ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ]
  store ptr %.sink.i, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit.i

stbi__get8.exit.i:                                ; preds = %stbi__get8.exit.sink.split.i, %bb.d
  %i.af = phi ptr [ %i.l, %bb.d ], [ %.ph.i, %stbi__get8.exit.sink.split.i ]
  %i.ag = phi ptr [ %i.m, %bb.d ], [ %.sink.i, %stbi__get8.exit.sink.split.i ]
  %i.ah = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ah, 84
  br i1 %exitcond.not.i, label %bb.h, label %bb.b, !llvm.loop !0

bb.h:                                             ; preds = %stbi__get8.exit.i
  %i.ai = tail call i32 @stbi__pic_is4(ptr noundef nonnull %0, ptr noundef nonnull @.str.89)
  br label %stbi__pic_test_core.exit

stbi__pic_test_core.exit:                         ; preds = %bb.a, %bb.h
  %.05.i = phi i32 [ 0, %bb.a ], [ %i.ai, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !39
  store <2 x ptr> %i.al, ptr %i.ak, align 8, !tbaa !39
  ret i32 %.05.i
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi__pic_load(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !29
  %.pre62 = load ptr, ptr %i.c, align 8, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %stbi__get8.exit
  %i.l = phi ptr [ %.pre62, %bb.a ], [ %i.af, %stbi__get8.exit ] ; 3 uses
  %i.m = phi ptr [ %.pre, %bb.a ], [ %i.ag, %stbi__get8.exit ] ; 3 uses
  %.061 = phi i32 [ 0, %bb.a ], [ %i.ah, %stbi__get8.exit ]
  %i.n = icmp ult ptr %i.m, %i.l
  br i1 %i.n, label %bb.c, label %bb.d

end_hunk_0
