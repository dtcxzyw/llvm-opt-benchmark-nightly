Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 154
loop-unroll.NumUnrolled: 182
begin_hunk_0_@bary_unpack_internal:bb.a
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !7
  %i.em = xor i32 %i.el, -1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !7
  %.1.i229 = add nuw i64 %.125.i228, 1            ; 2 uses
  %exitcond31.not.i230 = icmp eq i64 %.1.i229, %1
  br i1 %exitcond31.not.i230, label %bary_2comp.exit, label %.lr.ph26.i227, !llvm.loop !200

bb.ai:                                            ; preds = %bb.ae
  %i.en = getelementptr i8, ptr %i.b, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !7
  %.not165 = icmp sgt i32 %i.eo, -1
  br i1 %.not165, label %bary_2comp.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @bary_2comp(ptr noundef nonnull %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.ak:                                            ; preds = %.loopexit
  %i.ep = select i1 %.not163, i32 1, i32 -1
  br label %bary_2comp.exit

bb.al:                                            ; preds = %bb.x, %bb.a
  %.not315 = icmp eq i64 %1, 0                    ; 4 uses
  br i1 %.not315, label %.loopexit326, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = and i32 %6, 3
  %i.er = icmp eq i32 %i.eq, 1                    ; 3 uses
  %i.es = add i64 %3, -1
  %i.et = mul i64 %4, %i.es                       ; 2 uses
  %i.eu = sub i64 0, %4
  %.035.i = select i1 %i.er, i64 %i.et, i64 0
  %.034.i = select i1 %i.er, i64 %i.eu, i64 %4
  %.033.i = select i1 %i.er, i64 0, i64 %i.et
  %i.ev = trunc i64 %5 to i32
  %i.ew = and i32 %i.ev, 7                        ; 3 uses
  %i.ex = icmp ne i32 %i.ew, 0                    ; 3 uses
  %i.ey = lshr i64 %5, 3
  %i.ez = sub i64 %4, %i.ey
  %i.fa = sext i1 %i.ex to i64
  %spec.select.i = add i64 %i.ez, %i.fa           ; 2 uses
  %i.fb = and i32 %6, 112
  %i.fc = icmp eq i32 %i.fb, 16                   ; 2 uses
  %i.fd = add i64 %4, -1
  %.032.i = select i1 %i.fc, i64 %i.fd, i64 0
  %.0.i233 = select i1 %i.fc, i64 -1, i64 1
  %i.fe = getelementptr i8, ptr %2, i64 %.035.i
  %i.ff = getelementptr i8, ptr %2, i64 %.033.i
  %.not371 = icmp eq i64 %spec.select.i, 0
  %i.fg = lshr i32 255, %i.ew
  %i.fh = select i1 %i.ex, i32 %i.fg, i32 0
  %invariant.op = sub i32 8, %i.ew
  br label %bb.an

bb.an:                                            ; preds = %integer_unpack_push_bits.exit238, %bb.am
  %.0291 = phi ptr [ %0, %bb.am ], [ %.2293, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0286 = phi i64 [ 0, %bb.am ], [ %.2288, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0283 = phi i32 [ 0, %bb.am ], [ %.2285, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0137 = phi ptr [ %i.fe, %bb.am ], [ %i.hh, %integer_unpack_push_bits.exit238 ] ; 3 uses
  %i.fi = getelementptr i8, ptr %.0137, i64 %.032.i ; 2 uses
  br i1 %.not371, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %integer_unpack_push_bits.exit
  %.0351 = phi ptr [ %i.gp, %integer_unpack_push_bits.exit ], [ %i.fi, %bb.an ] ; 2 uses
  %.0136350 = phi i64 [ %i.gq, %integer_unpack_push_bits.exit ], [ 0, %bb.an ]
  %.1284349 = phi i32 [ %.4, %integer_unpack_push_bits.exit ], [ %.0283, %bb.an ] ; 3 uses
  %.1287348 = phi i64 [ %.3289, %integer_unpack_push_bits.exit ], [ %.0286, %bb.an ]
  %.1292347 = phi ptr [ %.5296, %integer_unpack_push_bits.exit ], [ %.0291, %bb.an ] ; 3 uses
  %i.fj = load i8, ptr %.0351, align 1, !tbaa !15
  %i.fk = zext i8 %i.fj to i64
  %i.fl = zext nneg i32 %.1284349 to i64
  %i.fm = shl i64 %i.fk, %i.fl
  %i.fn = or i64 %i.fm, %.1287348                 ; 3 uses
  %i.fo = add i32 %.1284349, 8                    ; 4 uses
  %i.fp = icmp sgt i32 %i.fo, 31
  br i1 %i.fp, label %.lr.ph.i234.preheader, label %integer_unpack_push_bits.exit

.lr.ph.i234.preheader:                            ; preds = %.lr.ph
  %i.fq = add nsw i32 %.1284349, -24              ; 2 uses
  %i.fr = lshr i32 %i.fq, 5
  %i.fs = add nuw nsw i32 %i.fr, 1
  %xtraiter = and i32 %i.fs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol

.lr.ph.i234.prol:                                 ; preds = %.lr.ph.i234.preheader, %.lr.ph.i234.prol
  %.3.prol = phi i32 [ %i.fy, %.lr.ph.i234.prol ], [ %i.fo, %.lr.ph.i234.preheader ]
  %i.ft = phi ptr [ %i.fw, %.lr.ph.i234.prol ], [ %.1292347, %.lr.ph.i234.preheader ] ; 2 uses
  %i.fu = phi i64 [ %i.fx, %.lr.ph.i234.prol ], [ %i.fn, %.lr.ph.i234.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i234.prol ], [ 0, %.lr.ph.i234.preheader ]
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = getelementptr i8, ptr %i.ft, i64 4      ; 3 uses
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !7
  %i.fx = lshr i64 %i.fu, 32                      ; 3 uses
  %i.fy = add nsw i32 %.3.prol, -32               ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol, !llvm.loop !201

.lr.ph.i234.prol.loopexit:                        ; preds = %.lr.ph.i234.prol, %.lr.ph.i234.preheader
  %.3.unr = phi i32 [ %i.fo, %.lr.ph.i234.preheader ], [ %i.fy, %.lr.ph.i234.prol ]
  %.unr = phi ptr [ %.1292347, %.lr.ph.i234.preheader ], [ %i.fw, %.lr.ph.i234.prol ]
  %.unr531 = phi i64 [ %i.fn, %.lr.ph.i234.preheader ], [ %i.fx, %.lr.ph.i234.prol ]
  %.lcssa526.unr = phi ptr [ poison, %.lr.ph.i234.preheader ], [ %i.fw, %.lr.ph.i234.prol ]
  %.lcssa525.unr = phi i64 [ poison, %.lr.ph.i234.preheader ], [ %i.fx, %.lr.ph.i234.prol ]
  %.lcssa524.unr = phi i32 [ poison, %.lr.ph.i234.preheader ], [ %i.fy, %.lr.ph.i234.prol ]
  %i.fz = icmp ult i32 %i.fq, 224
  br i1 %i.fz, label %integer_unpack_push_bits.exit, label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234
  %.3 = phi i32 [ %i.gn, %.lr.ph.i234 ], [ %.3.unr, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.ga = phi ptr [ %i.gm, %.lr.ph.i234 ], [ %.unr, %.lr.ph.i234.prol.loopexit ] ; 9 uses
  %i.gb = phi i64 [ 0, %.lr.ph.i234 ], [ %.unr531, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = getelementptr i8, ptr %i.ga, i64 4
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !7
  %i.ge = lshr i64 %i.gb, 32
  %i.gf = trunc nuw i64 %i.ge to i32
  %i.gg = getelementptr i8, ptr %i.ga, i64 8
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !7
  %i.gh = getelementptr i8, ptr %i.ga, i64 12
  store i32 0, ptr %i.gg, align 4, !tbaa !7
  %i.gi = getelementptr i8, ptr %i.ga, i64 16
  store i32 0, ptr %i.gh, align 4, !tbaa !7
  %i.gj = getelementptr i8, ptr %i.ga, i64 20
  store i32 0, ptr %i.gi, align 4, !tbaa !7
  %i.gk = getelementptr i8, ptr %i.ga, i64 24
  store i32 0, ptr %i.gj, align 4, !tbaa !7
  %i.gl = getelementptr i8, ptr %i.ga, i64 28
  store i32 0, ptr %i.gk, align 4, !tbaa !7
  %i.gm = getelementptr i8, ptr %i.ga, i64 32     ; 2 uses
  store i32 0, ptr %i.gl, align 4, !tbaa !7
  %i.gn = add nsw i32 %.3, -256                   ; 2 uses
  %i.go = icmp sgt i32 %.3, 287
  br i1 %i.go, label %.lr.ph.i234, label %integer_unpack_push_bits.exit, !llvm.loop !202

integer_unpack_push_bits.exit:                    ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234, %.lr.ph
  %.5296 = phi ptr [ %.1292347, %.lr.ph ], [ %.lcssa526.unr, %.lr.ph.i234.prol.loopexit ], [ %i.gm, %.lr.ph.i234 ] ; 2 uses
  %.3289 = phi i64 [ %i.fn, %.lr.ph ], [ %.lcssa525.unr, %.lr.ph.i234.prol.loopexit ], [ 0, %.lr.ph.i234 ] ; 2 uses
  %.4 = phi i32 [ %i.fo, %.lr.ph ], [ %.lcssa524.unr, %.lr.ph.i234.prol.loopexit ], [ %i.gn, %.lr.ph.i234 ] ; 2 uses
  %i.gp = getelementptr i8, ptr %.0351, i64 %.0.i233 ; 2 uses
  %i.gq = add nuw i64 %.0136350, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, %spec.select.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !203

._crit_edge:                                      ; preds = %integer_unpack_push_bits.exit, %bb.an
  %.1292.lcssa = phi ptr [ %.0291, %bb.an ], [ %.5296, %integer_unpack_push_bits.exit ] ; 3 uses
  %.1287.lcssa = phi i64 [ %.0286, %bb.an ], [ %.3289, %integer_unpack_push_bits.exit ] ; 2 uses
  %.1284.lcssa = phi i32 [ %.0283, %bb.an ], [ %.4, %integer_unpack_push_bits.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.fi, %bb.an ], [ %i.gp, %integer_unpack_push_bits.exit ]
  br i1 %i.ex, label %bb.ao, label %integer_unpack_push_bits.exit238

bb.ao:                                            ; preds = %._crit_edge
  %i.gr = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.gs = zext i8 %i.gr to i32
  %i.gt = and i32 %i.fh, %i.gs
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = zext nneg i32 %.1284.lcssa to i64
  %i.gw = shl i64 %i.gu, %i.gv
  %i.gx = or i64 %i.gw, %.1287.lcssa              ; 2 uses
  %.reass = add i32 %.1284.lcssa, %invariant.op   ; 3 uses
  %i.gy = icmp sgt i32 %.reass, 31
  br i1 %i.gy, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238

.lr.ph.i235:                                      ; preds = %bb.ao, %.lr.ph.i235
  %.5 = phi i32 [ %i.he, %.lr.ph.i235 ], [ %.reass, %bb.ao ] ; 2 uses
  %i.gz = phi ptr [ %i.hc, %.lr.ph.i235 ], [ %.1292.lcssa, %bb.ao ] ; 2 uses
  %i.ha = phi i64 [ %i.hd, %.lr.ph.i235 ], [ %i.gx, %bb.ao ] ; 2 uses
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = getelementptr i8, ptr %i.gz, i64 4      ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !7
  %i.hd = lshr i64 %i.ha, 32                      ; 2 uses
  %i.he = add nsw i32 %.5, -32                    ; 2 uses
  %i.hf = icmp samesign ugt i32 %.5, 63
  br i1 %i.hf, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238, !llvm.loop !202

integer_unpack_push_bits.exit238:                 ; preds = %.lr.ph.i235, %bb.ao, %._crit_edge
  %.2293 = phi ptr [ %.1292.lcssa, %._crit_edge ], [ %.1292.lcssa, %bb.ao ], [ %i.hc, %.lr.ph.i235 ] ; 4 uses
  %.2288 = phi i64 [ %.1287.lcssa, %._crit_edge ], [ %i.gx, %bb.ao ], [ %i.hd, %.lr.ph.i235 ] ; 3 uses
  %.2285 = phi i32 [ %.1284.lcssa, %._crit_edge ], [ %.reass, %bb.ao ], [ %i.he, %.lr.ph.i235 ]
  %i.hg = icmp eq ptr %.0137, %i.ff
  %i.hh = getelementptr i8, ptr %.0137, i64 %.034.i
  br i1 %i.hg, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %integer_unpack_push_bits.exit238
  %.not173 = icmp eq i64 %.2288, 0
  br i1 %.not173, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hi = trunc i64 %.2288 to i32
  %i.hj = getelementptr i8, ptr %.2293, i64 4
  store i32 %i.hi, ptr %.2293, align 4, !tbaa !7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3294 = phi ptr [ %.2293, %bb.ap ], [ %i.hj, %bb.aq ] ; 3 uses
  %i.hk = icmp ult ptr %.3294, %i.b
  br i1 %i.hk, label %.lr.ph357.preheader, label %.loopexit326

.lr.ph357.preheader:                              ; preds = %bb.ar
  %.3294394 = ptrtoaddr ptr %.3294 to i64
  %i.hl = shl i64 %1, 2
  %i.hm = add i64 %i.hl, %i.a
  %i.hn = xor i64 %.3294394, -1
  %i.ho = add i64 %i.hm, %i.hn
  %i.hp = and i64 %i.ho, -4
  %i.hq = add i64 %i.hp, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.3294, i8 0, i64 %i.hq, i1 false), !tbaa !7
  br label %.loopexit326

.loopexit326:                                     ; preds = %.lr.ph357.preheader, %bb.ar, %bb.al
  %i.hr = and i32 %6, 128
  %.not174 = icmp eq i32 %i.hr, 0
  br i1 %.not174, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit326
  %i.hs = and i32 %6, 512
  %.not175 = icmp eq i32 %i.hs, 0
  %i.ht = select i1 %.not175, i32 1, i32 -1
  br label %bary_2comp.exit

bb.at:                                            ; preds = %.loopexit326
  %.not176 = icmp eq i32 %7, 0
  %i.hu = and i32 %6, 512
  %.not177 = icmp eq i32 %i.hu, 0                 ; 2 uses
  br i1 %.not176, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hv = getelementptr i8, ptr %i.b, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !7  ; 2 uses
  br i1 %.not177, label %bb.av, label %._crit_edge396

bb.av:                                            ; preds = %bb.au
  %i.hx = sub i32 31, %7
  %i.hy = lshr i32 %i.hw, %i.hx
  %.not181 = icmp eq i32 %i.hy, 0
  br i1 %.not181, label %bary_2comp.exit, label %._crit_edge396

._crit_edge396:                                   ; preds = %bb.au, %bb.av
  %i.hz = sub i32 32, %7
  %i.ia = shl nsw i32 -1, %i.hz
  %i.ib = getelementptr i8, ptr %i.b, i64 -4
  %i.ic = or i32 %i.hw, %i.ia
  store i32 %i.ic, ptr %i.ib, align 4, !tbaa !7
  br label %bary_zero_p.exit

bb.aw:                                            ; preds = %bb.at
  br i1 %.not177, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not315, label %bary_2comp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ax, %bb.ay
  %.0.i239 = phi i64 [ %i.id, %bb.ay ], [ %1, %bb.ax ]
  %i.id = add i64 %.0.i239, -1                    ; 3 uses
  %i.ie = getelementptr [4 x i8], ptr %0, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !7
  %.not.i240 = icmp eq i32 %i.if, 0
  br i1 %.not.i240, label %bb.ay, label %bary_zero_p.exit

bb.ay:                                            ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.id, 0
  br i1 %.not7.i, label %bary_2comp.exit, label %.preheader.i, !llvm.loop !158

bb.az:                                            ; preds = %bb.aw
  br i1 %.not315, label %bary_2comp.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ig = getelementptr i8, ptr %i.b, i64 -4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !7
  %.not178 = icmp sgt i32 %i.ih, -1
  br i1 %.not178, label %bary_2comp.exit, label %.lr.ph.i242.preheader

bary_zero_p.exit:                                 ; preds = %.preheader.i, %._crit_edge396
  br i1 %.not315, label %bary_2comp.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %bary_zero_p.exit, %bb.ba
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.preheader, %bb.bb
  %.023.i243 = phi i64 [ %i.ik, %bb.bb ], [ 0, %.lr.ph.i242.preheader ] ; 5 uses
  %i.ii = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !7  ; 2 uses
  %.not.i244 = icmp eq i32 %i.ij, 0
  br i1 %.not.i244, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i242
  %i.ik = add nuw i64 %.023.i243, 1               ; 2 uses
  %exitcond.not.i251 = icmp eq i64 %i.ik, %1
  br i1 %exitcond.not.i251, label %bary_2comp.exit, label %.lr.ph.i242, !llvm.loop !55

bb.bc:                                            ; preds = %.lr.ph.i242
  %i.il = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.im = sub i32 0, %i.ij
  store i32 %i.im, ptr %i.il, align 4, !tbaa !7
  %.124.i245 = add i64 %.023.i243, 1              ; 4 uses
  %i.in = icmp ult i64 %.124.i245, %1
  br i1 %i.in, label %.lr.ph26.i247.preheader, label %bary_2comp.exit

.lr.ph26.i247.preheader:                          ; preds = %bb.bc
  %i.io = xor i64 %.023.i243, -1
  %i.ip = add i64 %1, %i.io                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ip, 8
  br i1 %min.iters.check, label %.lr.ph26.i247.preheader517, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i247.preheader
  %n.vec = and i64 %i.ip, -8                      ; 3 uses
  %i.iq = add i64 %.124.i245, %n.vec
  %i.ir = getelementptr [4 x i8], ptr %0, i64 %.124.i245
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.is = getelementptr [4 x i8], ptr %i.ir, i64 %index ; 3 uses
  %i.it = getelementptr i8, ptr %i.is, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.is, align 4, !tbaa !7
  %wide.load469 = load <4 x i32>, ptr %i.it, align 4, !tbaa !7
  %i.iu = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.iv = xor <4 x i32> %wide.load469, splat (i32 -1)
  store <4 x i32> %i.iu, ptr %i.is, align 4, !tbaa !7
  store <4 x i32> %i.iv, ptr %i.it, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iw = icmp eq i64 %index.next, %n.vec
  br i1 %i.iw, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ip, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit, label %.lr.ph26.i247.preheader517

.lr.ph26.i247.preheader517:                       ; preds = %.lr.ph26.i247.preheader, %middle.block
  %.125.i248.ph = phi i64 [ %.124.i245, %.lr.ph26.i247.preheader ], [ %i.iq, %middle.block ]
  br label %.lr.ph26.i247

.lr.ph26.i247:                                    ; preds = %.lr.ph26.i247.preheader517, %.lr.ph26.i247
  %.125.i248 = phi i64 [ %.1.i249, %.lr.ph26.i247 ], [ %.125.i248.ph, %.lr.ph26.i247.preheader517 ] ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %0, i64 %.125.i248 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !7
  %i.iz = xor i32 %i.iy, -1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !7
  %.1.i249 = add nuw i64 %.125.i248, 1            ; 2 uses
  %exitcond31.not.i250 = icmp eq i64 %.1.i249, %1
  br i1 %exitcond31.not.i250, label %bary_2comp.exit, label %.lr.ph26.i247, !llvm.loop !205

bary_2comp.exit:                                  ; preds = %bb.ay, %bb.bb, %.lr.ph26.i247, %bb.ag, %.lr.ph26.i227, %bb.r, %.lr.ph26.i, %middle.block, %middle.block491, %middle.block503, %bb.ba, %bb.az, %bb.ax, %bb.av, %bb.bc, %bb.af, %bb.ah, %bb.q, %bb.s, %integer_unpack_single_bdigit.exit, %integer_unpack_single_bdigit.exit201, %integer_unpack_single_bdigit.exit207, %bb.as, %bary_zero_p.exit, %bb.ak, %bb.aj, %bb.ai, %bb.w, %bb.u, %bb.v
  %.1139 = phi i32 [ 1, %bb.ai ], [ %i.ht, %bb.as ], [ %i.bq, %bb.w ], [ %.0.i205, %integer_unpack_single_bdigit.exit207 ], [ -1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.az ], [ -1, %bb.aj ], [ %i.ep, %bb.ak ], [ -1, %middle.block491 ], [ -1, %bary_zero_p.exit ], [ %spec.select317, %integer_unpack_single_bdigit.exit ], [ %spec.select319, %integer_unpack_single_bdigit.exit201 ], [ -2, %bb.ag ], [ -2, %bb.q ], [ -1, %bb.s ], [ -1, %bb.bb ], [ -2, %bb.af ], [ -1, %bb.ah ], [ -1, %middle.block503 ], [ -2, %bb.r ], [ -1, %bb.bc ], [ -1, %middle.block ], [ 1, %bb.av ], [ -2, %bb.ax ], [ 1, %bb.ba ], [ -1, %.lr.ph26.i247 ], [ -1, %.lr.ph26.i ], [ -1, %.lr.ph26.i227 ], [ -2, %bb.ay ]
  ret i32 %.1139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_cstr_to_inum(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %. = select i1 %.not, ptr %i.a, ptr null
  %i.b = call i64 @rb_int_parse_cstr(ptr noundef nonnull %0, i64 noundef -1, ptr noundef %., ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
  %i.c = icmp ne i64 %i.b, 4                      ; 2 uses
  %brmerge = or i1 %.not, %i.c
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rb_invalid_str(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.mux = select i1 %i.c, i64 %i.b, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.mux
}

; Function Attrs: noreturn
declare void @rb_invalid_str(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_int_parse_cstr(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.c = icmp ne ptr %2, null                     ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %str2big_scan_digits.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not197 = icmp eq i64 %1, 0
  %i.d = and i32 %5, 1
  %.not198 = icmp eq i32 %i.d, 0
  %or.cond216 = or i1 %.not197, %.not198
  br i1 %or.cond216, label %bb.g, label %.preheader289

.preheader289:                                    ; preds = %bb.b
  %i.e = load i8, ptr %0, align 1, !tbaa !15      ; 3 uses
  %i.f = sext i8 %i.e to i32
  %i.g = icmp ne i8 %i.e, 32
  %i.h = add nsw i32 %i.f, -14
  %i.i = icmp ult i32 %i.h, -5
  %narrow.i.not311 = select i1 %i.g, i1 %i.i, i1 false
  br i1 %narrow.i.not311, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader289
  %i.j = getelementptr i8, ptr %0, i64 %1
  %scevgep = getelementptr i8, ptr %i.j, i64 -1   ; 2 uses
  %or.cond416 = icmp eq i64 %1, 1
end_hunk_0
