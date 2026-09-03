Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc-enc-zrle?download=true
inline.NumInlined: 86
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zrle_send_framebuffer_update:bb.a
  %.0112149.i.us.i = phi i32 [ %.1113.i.us.i, %bb.l ], [ 0, %bb.i ] ; 2 uses
  %i.au = load i8, ptr %.0106151.i.us.i, align 1  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0106151.i.us.i, i64 1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.au to i32
  %.not118.i.us.i = icmp eq i8 %i.aw, %i.au
  br i1 %.not118.i.us.i, label %.preheader147.i.us.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.us.i
  %i.ay = add i32 %.0110150.i.us.i, 1
  br label %bb.l

.preheader147.i.us.i:                             ; preds = %.lr.ph.i.us.i, %.preheader147.i.us.i
  %.1107.i.us.i = phi ptr [ %i.az, %.preheader147.i.us.i ], [ %i.av, %.lr.ph.i.us.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.1107.i.us.i, i64 1 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, %i.au
  br i1 %i.bb, label %.preheader147.i.us.i, label %bb.k, !llvm.loop !14

bb.k:                                             ; preds = %.preheader147.i.us.i
  %i.bc = add i32 %.0112149.i.us.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1113.i.us.i = phi i32 [ %.0112149.i.us.i, %bb.j ], [ %i.bc, %bb.k ] ; 2 uses
  %.1111.i.us.i = phi i32 [ %i.ay, %bb.j ], [ %.0110150.i.us.i, %bb.k ] ; 2 uses
  %.2.i.us.i = phi ptr [ %i.av, %bb.j ], [ %i.az, %bb.k ] ; 2 uses
  %i.bd = call i32 @palette_put(ptr noundef nonnull %i.ac, i32 noundef %i.ax) #9 ; 0 uses
  %i.be = icmp ult ptr %.2.i.us.i, %i.ap
  br i1 %i.be, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i, !llvm.loop !15

._crit_edge.i.us.i:                               ; preds = %bb.l, %bb.i
  %.0112.lcssa.i.us.i = phi i32 [ 0, %bb.i ], [ %.1113.i.us.i, %bb.l ] ; 2 uses
  %.0110.lcssa.i.us.i = phi i32 [ 0, %bb.i ], [ %.1111.i.us.i, %bb.l ] ; 2 uses
  %i.bf = call i64 @palette_size(ptr noundef nonnull %i.ac) #9
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.us.i
  %i.bh = add i32 %.0110.lcssa.i.us.i, %.0112.lcssa.i.us.i
  %i.bi = shl i32 %i.bh, 1                        ; 2 uses
  %i.bj = icmp ugt i32 %i.ai, %i.bi
  %spec.select.i.us.i = zext i1 %i.bj to i8       ; 3 uses
  %i.bk = call i64 @palette_size(ptr noundef nonnull %i.ac) #9
  %i.bl = icmp ult i64 %i.bk, 128
  br i1 %i.bl, label %bb.n, label %.thread.i.us.i

bb.n:                                             ; preds = %bb.m
  %spec.select144145.i.us.i = call i32 @llvm.umin.i32(i32 %i.ai, i32 %i.bi) ; 2 uses
  %i.bm = call i64 @palette_size(ptr noundef nonnull %i.ac) #9
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = shl i32 %.0112.lcssa.i.us.i, 1
  %i.bp = add i32 %i.bo, %.0110.lcssa.i.us.i
  %i.bq = add i32 %i.bp, %i.bn                    ; 2 uses
  %i.br = icmp ugt i32 %spec.select144145.i.us.i, %i.bq ; 3 uses
  %i.bs = call i64 @palette_size(ptr noundef nonnull %i.ac) #9
  %i.bt = icmp ult i64 %i.bs, 17
  br i1 %i.bt, label %bb.o, label %zrle_choose_palette_rle.exit.i.us.i

zrle_choose_palette_rle.exit.i.us.i:              ; preds = %bb.n
  br i1 %i.br, label %zrle_choose_palette_rle.exit.thread.i.us.i, label %.thread.i.us.i

bb.o:                                             ; preds = %bb.n
  %.1128.i.us.i = select i1 %i.br, i8 1, i8 %spec.select.i.us.i ; 2 uses
  %.2.i.v.i.us.i = call i32 @llvm.umin.i32(i32 %spec.select144145.i.us.i, i32 %i.bq)
  %i.bu = call i64 @palette_size(ptr noundef nonnull %i.ac) #9
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = call i64 @palette_size(ptr noundef nonnull %i.ac) #9
  %i.bx = getelementptr [4 x i8], ptr @bits_per_packed_pixel, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -4
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = mul i32 %i.bz, %i.ai
  %i.cb = sdiv i32 %i.ca, 8
  %i.cc = add i32 %i.cb, %i.bv
  %i.cd = icmp ugt i32 %.2.i.v.i.us.i, %i.cc      ; 2 uses
  %brmerge.i.us.i = or i1 %i.br, %i.cd
  %.mux.i.us.i = select i1 %i.cd, i8 0, i8 %.1128.i.us.i
  br i1 %brmerge.i.us.i, label %zrle_choose_palette_rle.exit.thread.i.us.i, label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.o, %zrle_choose_palette_rle.exit.i.us.i, %bb.m
  %.2129137.i.us.i = phi i8 [ %spec.select.i.us.i, %zrle_choose_palette_rle.exit.i.us.i ], [ %spec.select.i.us.i, %bb.m ], [ %.1128.i.us.i, %bb.o ] ; 2 uses
  %i.ce = shl nuw i8 %.2129137.i.us.i, 7
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.ce) #9
  %i.cf = trunc nuw i8 %.2129137.i.us.i to i1
  br i1 %i.cf, label %.preheader.i.us.i, label %bb.p

bb.p:                                             ; preds = %.thread.i.us.i
  call void @vnc_write(ptr noundef %0, ptr noundef %i.an, i64 noundef %i.ao) #9
  br label %zrle_encode_tile8ne.exit.us.i

zrle_choose_palette_rle.exit.thread.i.us.i:       ; preds = %bb.o, %zrle_choose_palette_rle.exit.i.us.i
  %.2129132.i.us.i = phi i8 [ 1, %zrle_choose_palette_rle.exit.i.us.i ], [ %.mux.i.us.i, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !annotation !10
  %i.cg = call i64 @palette_size(ptr noundef nonnull %i.ac) #9 ; 3 uses
  %i.ch = shl nuw i8 %.2129132.i.us.i, 7
  %i.ci = trunc i64 %i.cg to i8
  %i.cj = or i8 %i.ch, %i.ci
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cj) #9
  %i.ck = call i64 @palette_fill(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b) #9 ; 0 uses
  %.not176.i.us.i = icmp eq i64 %i.cg, 0
  br i1 %.not176.i.us.i, label %.loopexit204.i.us.i, label %.lr.ph154.i.us.i

.lr.ph154.i.us.i:                                 ; preds = %zrle_choose_palette_rle.exit.thread.i.us.i, %.lr.ph154.i.us.i
  %i.cl = phi i64 [ %i.cq, %.lr.ph154.i.us.i ], [ 0, %zrle_choose_palette_rle.exit.thread.i.us.i ]
  %.0108153.i.us.i = phi i32 [ %i.cp, %.lr.ph154.i.us.i ], [ 0, %zrle_choose_palette_rle.exit.thread.i.us.i ]
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = trunc i32 %i.cn to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.co) #9
  %i.cp = add i32 %.0108153.i.us.i, 1             ; 2 uses
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = icmp ugt i64 %i.cg, %i.cq
  br i1 %i.cr, label %.lr.ph154.i.us.i, label %.loopexit204.i.us.i, !llvm.loop !16

.loopexit204.i.us.i:                              ; preds = %.lr.ph154.i.us.i, %zrle_choose_palette_rle.exit.thread.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.cs = trunc nuw i8 %.2129132.i.us.i to i1
  br i1 %i.cs, label %.preheader.i.us.i, label %bb.q

bb.q:                                             ; preds = %.loopexit204.i.us.i
  %i.ct = call i64 @palette_size(ptr noundef nonnull %i.ac) #9
  %i.cu = icmp ult i64 %i.ct, 17
  br i1 %i.cu, label %bb.r, label %.split.us.i

bb.r:                                             ; preds = %bb.q
  %i.cv = call i64 @palette_size(ptr noundef nonnull %i.ac) #9
  %i.cw = getelementptr [4 x i8], ptr @bits_per_packed_pixel, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  br i1 %i.af, label %.lr.ph168.i.us.i, label %zrle_encode_tile8ne.exit.us.i

.lr.ph168.i.us.i:                                 ; preds = %bb.r
  %i.cz = sext i32 %i.ah to i64
  %i.da = trunc i32 %i.cy to i8
  %i.db = icmp sgt i32 %i.ag, 0
  br i1 %i.db, label %.lr.ph160.i.preheader.us.i, label %zrle_encode_tile8ne.exit.us.i

.lr.ph160.i.preheader.us.i:                       ; preds = %.lr.ph168.i.us.i, %._crit_edge161.thread.i.us.i
  %.5166.i.us.i = phi ptr [ %i.dd, %._crit_edge161.thread.i.us.i ], [ %i.an, %.lr.ph168.i.us.i ] ; 2 uses
  %.1109165.i.us.i = phi i32 [ %i.ds, %._crit_edge161.thread.i.us.i ], [ 0, %.lr.ph168.i.us.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.5166.i.us.i, i64 %i.cz ; 2 uses
  br label %.lr.ph160.i.us.i

.lr.ph160.i.us.i:                                 ; preds = %.lr.ph160.i.us.i.backedge, %.lr.ph160.i.preheader.us.i
  %.0158.i.us.i = phi i32 [ 0, %.lr.ph160.i.preheader.us.i ], [ %i.di, %.lr.ph160.i.us.i.backedge ]
  %.0103157.i.us.i = phi i8 [ 0, %.lr.ph160.i.preheader.us.i ], [ %.0103157.i.us.i.be, %.lr.ph160.i.us.i.backedge ]
  %.6156.i.us.i = phi ptr [ %.5166.i.us.i, %.lr.ph160.i.preheader.us.i ], [ %i.dd, %.lr.ph160.i.us.i.backedge ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.6156.i.us.i, i64 1 ; 4 uses
  %i.de = load i8, ptr %.6156.i.us.i, align 1
  %i.df = zext i8 %i.de to i32
  %i.dg = call i32 @palette_idx(ptr noundef nonnull %i.ac, i32 noundef %i.df) #9
  %i.dh = shl i32 %.0158.i.us.i, %i.cy
  %i.di = or i32 %i.dg, %i.dh                     ; 3 uses
  %i.dj = add i8 %.0103157.i.us.i, %i.da          ; 4 uses
  %i.dk = icmp ugt i8 %i.dj, 7
  br i1 %i.dk, label %.thread197.i.us.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph160.i.us.i
  %i.dl = icmp ult ptr %i.dd, %i.dc
  br i1 %i.dl, label %.lr.ph160.i.us.i.backedge, label %._crit_edge161.i.us.i

.thread197.i.us.i:                                ; preds = %.lr.ph160.i.us.i
  %i.dm = trunc i32 %i.di to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.dm) #9
  %i.dn = icmp ult ptr %i.dd, %i.dc
  br i1 %i.dn, label %.lr.ph160.i.us.i.backedge, label %._crit_edge161.thread.i.us.i

.lr.ph160.i.us.i.backedge:                        ; preds = %.thread197.i.us.i, %bb.s
  %.0103157.i.us.i.be = phi i8 [ 0, %.thread197.i.us.i ], [ %i.dj, %bb.s ]
  br label %.lr.ph160.i.us.i, !llvm.loop !17

._crit_edge161.i.us.i:                            ; preds = %bb.s
  %.not.i.us.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i.us.i, label %._crit_edge161.thread.i.us.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge161.i.us.i
  %i.do = trunc i32 %i.di to i16
  %narrow.i.us.i = sub nuw nsw i8 8, %i.dj
  %i.dp = zext nneg i8 %narrow.i.us.i to i16
  %i.dq = shl i16 %i.do, %i.dp
  %i.dr = trunc i16 %i.dq to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.dr) #9
  br label %._crit_edge161.thread.i.us.i

._crit_edge161.thread.i.us.i:                     ; preds = %.thread197.i.us.i, %bb.t, %._crit_edge161.i.us.i
  %i.ds = add nuw nsw i32 %.1109165.i.us.i, 1     ; 2 uses
  %exitcond.not.i.us.i = icmp eq i32 %i.ds, %i.ae
  br i1 %exitcond.not.i.us.i, label %zrle_encode_tile8ne.exit.us.i, label %.lr.ph160.i.preheader.us.i, !llvm.loop !18

.preheader.i.us.i:                                ; preds = %.loopexit204.i.us.i, %.thread.i.us.i
  %i.dt = phi i1 [ false, %.thread.i.us.i ], [ true, %.loopexit204.i.us.i ]
  br i1 %i.at, label %.lr.ph175.i.us.i, label %zrle_encode_tile8ne.exit.us.i

.lr.ph175.i.us.i:                                 ; preds = %.preheader.i.us.i, %bb.ab
  %.3174.i.us.i = phi ptr [ %.4.i.us.i, %bb.ab ], [ %i.an, %.preheader.i.us.i ] ; 3 uses
  %i.du = load i8, ptr %.3174.i.us.i, align 1     ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph175.i.us.i
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %bb.u ], [ -255, %.lr.ph175.i.us.i ] ; 2 uses
  %.3.pn.i.us.i = phi ptr [ %.4.i.us.i, %bb.u ], [ %.3174.i.us.i, %.lr.ph175.i.us.i ]
  %.4.i.us.i = getelementptr inbounds nuw i8, ptr %.3.pn.i.us.i, i64 1 ; 5 uses
  %i.dv = load i8, ptr %.4.i.us.i, align 1
  %i.dw = icmp eq i8 %i.dv, %i.du
  %i.dx = icmp ult ptr %.4.i.us.i, %i.ap          ; 2 uses
  %i.dy = and i1 %i.dw, %i.dx
  %indvars.iv.next.i = add i32 %indvars.iv.i, 1
  br i1 %i.dy, label %bb.u, label %bb.v, !llvm.loop !19

bb.v:                                             ; preds = %bb.u
  %i.dz = ptrtoint ptr %.4.i.us.i to i64
  %i.ea = ptrtoint ptr %.3174.i.us.i to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = trunc i64 %i.eb to i32                  ; 3 uses
  br i1 %i.dt, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ed = zext i8 %i.du to i32
  %i.ee = call i32 @palette_idx(ptr noundef nonnull %i.ac, i32 noundef %i.ed) #9
  %i.ef = trunc i32 %i.ee to i8                   ; 4 uses
  %i.eg = icmp slt i32 %i.ec, 3
  br i1 %i.eg, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = or i8 %i.ef, -128
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.sink.i.us.i = phi i8 [ %i.eh, %bb.x ], [ %i.du, %bb.v ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink.i.us.i) #9
  %i.ei = add i32 %i.ec, -1                       ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 254
  br i1 %i.ej, label %.lr.ph171.i.us.i, label %._crit_edge172.i.us.i

.lr.ph171.i.us.i:                                 ; preds = %bb.y, %.lr.ph171.i.us.i
  %.0105169.i.us.i = phi i32 [ %i.ek, %.lr.ph171.i.us.i ], [ %i.ei, %bb.y ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.ek = add nsw i32 %.0105169.i.us.i, -255
  %i.el = icmp samesign ugt i32 %.0105169.i.us.i, 509
  br i1 %i.el, label %.lr.ph171.i.us.i, label %._crit_edge172.i.us.loopexit.i, !llvm.loop !20

._crit_edge172.i.us.loopexit.i:                   ; preds = %.lr.ph171.i.us.i
  %17 = urem i32 %indvars.iv.i, 255
  br label %._crit_edge172.i.us.i

._crit_edge172.i.us.i:                            ; preds = %._crit_edge172.i.us.loopexit.i, %bb.y
  %.0105.lcssa.i.us.i = phi i32 [ %i.ei, %bb.y ], [ %17, %._crit_edge172.i.us.loopexit.i ]
  %i.em = trunc i32 %.0105.lcssa.i.us.i to i8
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.en = icmp eq i32 %i.ec, 2
  br i1 %i.en, label %bb.aa, label %bb.ab, !llvm.loop !21

bb.aa:                                            ; preds = %bb.z
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.ef) #9
  br label %bb.ab, !llvm.loop !21

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge172.i.us.i
  %.sink213.i.us.i = phi i8 [ %i.em, %._crit_edge172.i.us.i ], [ %i.ef, %bb.aa ], [ %i.ef, %bb.z ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink213.i.us.i) #9
  br i1 %i.dx, label %.lr.ph175.i.us.i, label %zrle_encode_tile8ne.exit.us.i

bb.ac:                                            ; preds = %._crit_edge.i.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !annotation !10
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 1) #9
  %i.eo = call i32 @palette_color(ptr noundef nonnull %i.ac, i32 noundef 0, ptr noundef nonnull %i.a) #9
  %i.ep = trunc i32 %i.eo to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.ep) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %zrle_encode_tile8ne.exit.us.i

zrle_encode_tile8ne.exit.us.i:                    ; preds = %._crit_edge161.thread.i.us.i, %bb.ab, %bb.ac, %.preheader.i.us.i, %.lr.ph168.i.us.i, %bb.r, %bb.p
  %i.eq = add i32 %.03749.us.i, 64                ; 2 uses
  %i.er = icmp slt i32 %i.eq, %i.y
  br i1 %i.er, label %bb.i, label %._crit_edge.us.i, !llvm.loop !22

._crit_edge.us.i:                                 ; preds = %zrle_encode_tile8ne.exit.us.i
  %i.es = add i32 %.050.us.i, 64                  ; 2 uses
  %i.et = icmp slt i32 %i.es, %i.w
  br i1 %i.et, label %.lr.ph.us.i, label %zrle_encode_8ne.exit, !llvm.loop !23

.split.us.i:                                      ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__.zrle_encode_tile8ne) #10
  unreachable

bb.ad:                                            ; preds = %bb.g
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 86681
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = icmp ugt i8 %i.ev, 31
  %i.ex = add i32 %5, %3                          ; 9 uses
  %i.ey = icmp slt i32 %3, %i.ex                  ; 4 uses
  br i1 %i.ew, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.e, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ey, label %.lr.ph43.i, label %zrle_encode_8ne.exit

.lr.ph43.i:                                       ; preds = %bb.af
  %i.ez = add i32 %4, %2                          ; 3 uses
  %i.fa = icmp slt i32 %2, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 3640 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 3672
  br i1 %i.fa, label %.lr.ph.us.i136, label %zrle_encode_8ne.exit

.lr.ph.us.i136:                                   ; preds = %.lr.ph43.i, %._crit_edge.us.i137
  %.041.us.i = phi i32 [ %i.fp, %._crit_edge.us.i137 ], [ %3, %.lr.ph43.i ] ; 3 uses
  %i.fd = sub i32 %i.ex, %.041.us.i
  %i.fe = tail call i32 @llvm.smin.i32(i32 %i.fd, i32 64) ; 3 uses
  %i.ff = shl i32 %i.fe, 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.us.i136
  %.03740.us.i = phi i32 [ %2, %.lr.ph.us.i136 ], [ %i.fn, %bb.ag ] ; 3 uses
  %i.fg = sub i32 %i.ez, %.03740.us.i
  %i.fh = tail call i32 @llvm.smin.i32(i32 %i.fg, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  tail call void @buffer_reset(ptr noundef nonnull %i.fb) #9
  %i.fi = mul i32 %i.ff, %i.fh
  %i.fj = add i32 %i.fi, 16
  %i.fk = sext i32 %i.fj to i64
  tail call void @buffer_reserve(ptr noundef nonnull %i.fb, i64 noundef %i.fk) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.fb, i64 40, i1 false)
  %i.fl = tail call i32 @vnc_raw_send_framebuffer_update(ptr noundef %0, i32 noundef %.03740.us.i, i32 noundef %.041.us.i, i32 noundef %i.fh, i32 noundef %i.fe) #9 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false)
  %i.fm = load ptr, ptr %i.fc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  tail call fastcc void @zrle_encode_tile16be(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef %i.fm, i32 noundef %i.fh, i32 noundef %i.fe, i32 noundef range(i32 0, 4) %.0)
  %i.fn = add i32 %.03740.us.i, 64                ; 2 uses
  %i.fo = icmp slt i32 %i.fn, %i.ez
  br i1 %i.fo, label %bb.ag, label %._crit_edge.us.i137, !llvm.loop !24

._crit_edge.us.i137:                              ; preds = %bb.ag
  %i.fp = add i32 %.041.us.i, 64                  ; 2 uses
  %i.fq = icmp slt i32 %i.fp, %i.ex
  br i1 %i.fq, label %.lr.ph.us.i136, label %zrle_encode_8ne.exit, !llvm.loop !25

bb.ah:                                            ; preds = %bb.ae
  br i1 %i.ey, label %.lr.ph43.i138, label %zrle_encode_8ne.exit

.lr.ph43.i138:                                    ; preds = %bb.ah
  %i.fr = add i32 %4, %2                          ; 3 uses
  %i.fs = icmp slt i32 %2, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 3640 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 3672
  br i1 %i.fs, label %.lr.ph.us.i139, label %zrle_encode_8ne.exit

.lr.ph.us.i139:                                   ; preds = %.lr.ph43.i138, %._crit_edge.us.i142
  %.041.us.i140 = phi i32 [ %i.gh, %._crit_edge.us.i142 ], [ %3, %.lr.ph43.i138 ] ; 3 uses
  %i.fv = sub i32 %i.ex, %.041.us.i140
  %i.fw = tail call i32 @llvm.smin.i32(i32 %i.fv, i32 64) ; 3 uses
  %i.fx = shl i32 %i.fw, 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.us.i139
  %.03740.us.i141 = phi i32 [ %2, %.lr.ph.us.i139 ], [ %i.gf, %bb.ai ] ; 3 uses
  %i.fy = sub i32 %i.fr, %.03740.us.i141
  %i.fz = tail call i32 @llvm.smin.i32(i32 %i.fy, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  tail call void @buffer_reset(ptr noundef nonnull %i.ft) #9
  %i.ga = mul i32 %i.fx, %i.fz
  %i.gb = add i32 %i.ga, 16
  %i.gc = sext i32 %i.gb to i64
  tail call void @buffer_reserve(ptr noundef nonnull %i.ft, i64 noundef %i.gc) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.ft, i64 40, i1 false)
  %i.gd = tail call i32 @vnc_raw_send_framebuffer_update(ptr noundef %0, i32 noundef %.03740.us.i141, i32 noundef %.041.us.i140, i32 noundef %i.fz, i32 noundef %i.fw) #9 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false)
  %i.ge = load ptr, ptr %i.fu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  tail call fastcc void @zrle_encode_tile16le(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef %i.ge, i32 noundef %i.fz, i32 noundef %i.fw, i32 noundef range(i32 0, 4) %.0)
  %i.gf = add i32 %.03740.us.i141, 64             ; 2 uses
  %i.gg = icmp slt i32 %i.gf, %i.fr
  br i1 %i.gg, label %bb.ai, label %._crit_edge.us.i142, !llvm.loop !26

._crit_edge.us.i142:                              ; preds = %bb.ai
  %i.gh = add i32 %.041.us.i140, 64               ; 2 uses
  %i.gi = icmp slt i32 %i.gh, %i.ex
  br i1 %i.gi, label %.lr.ph.us.i139, label %zrle_encode_8ne.exit, !llvm.loop !27

bb.aj:                                            ; preds = %bb.ad
  br i1 %i.e, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ey, label %.lr.ph43.i143, label %zrle_encode_8ne.exit

.lr.ph43.i143:                                    ; preds = %bb.ak
  %i.gj = add i32 %4, %2                          ; 3 uses
  %i.gk = icmp slt i32 %2, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 3640 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 3672
  br i1 %i.gk, label %.lr.ph.us.i144, label %zrle_encode_8ne.exit

.lr.ph.us.i144:                                   ; preds = %.lr.ph43.i143, %._crit_edge.us.i147
  %.041.us.i145 = phi i32 [ %i.gz, %._crit_edge.us.i147 ], [ %3, %.lr.ph43.i143 ] ; 3 uses
  %i.gn = sub i32 %i.ex, %.041.us.i145
  %i.go = tail call i32 @llvm.smin.i32(i32 %i.gn, i32 64) ; 3 uses
  %i.gp = mul i32 %i.go, 15
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.us.i144
  %.03740.us.i146 = phi i32 [ %2, %.lr.ph.us.i144 ], [ %i.gx, %bb.al ] ; 3 uses
  %i.gq = sub i32 %i.gj, %.03740.us.i146
  %i.gr = tail call i32 @llvm.smin.i32(i32 %i.gq, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  tail call void @buffer_reset(ptr noundef nonnull %i.gl) #9
  %i.gs = mul i32 %i.gp, %i.gr
  %i.gt = add i32 %i.gs, 15
  %i.gu = sext i32 %i.gt to i64
  tail call void @buffer_reserve(ptr noundef nonnull %i.gl, i64 noundef %i.gu) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.gl, i64 40, i1 false)
  %i.gv = tail call i32 @vnc_raw_send_framebuffer_update(ptr noundef %0, i32 noundef %.03740.us.i146, i32 noundef %.041.us.i145, i32 noundef %i.gr, i32 noundef %i.go) #9 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gl, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false)
  %i.gw = load ptr, ptr %i.gm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  tail call fastcc void @zrle_encode_tile15be(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef %i.gw, i32 noundef %i.gr, i32 noundef %i.go, i32 noundef range(i32 0, 4) %.0)
  %i.gx = add i32 %.03740.us.i146, 64             ; 2 uses
  %i.gy = icmp slt i32 %i.gx, %i.gj
  br i1 %i.gy, label %bb.al, label %._crit_edge.us.i147, !llvm.loop !28

._crit_edge.us.i147:                              ; preds = %bb.al
  %i.gz = add i32 %.041.us.i145, 64               ; 2 uses
  %i.ha = icmp slt i32 %i.gz, %i.ex
  br i1 %i.ha, label %.lr.ph.us.i144, label %zrle_encode_8ne.exit, !llvm.loop !29

bb.am:                                            ; preds = %bb.aj
  br i1 %i.ey, label %.lr.ph43.i148, label %zrle_encode_8ne.exit

.lr.ph43.i148:                                    ; preds = %bb.am
  %i.hb = add i32 %4, %2                          ; 3 uses
  %i.hc = icmp slt i32 %2, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 3640 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 3672
  br i1 %i.hc, label %.lr.ph.us.i149, label %zrle_encode_8ne.exit

.lr.ph.us.i149:                                   ; preds = %.lr.ph43.i148, %._crit_edge.us.i152
  %.041.us.i150 = phi i32 [ %i.hr, %._crit_edge.us.i152 ], [ %3, %.lr.ph43.i148 ] ; 3 uses
  %i.hf = sub i32 %i.ex, %.041.us.i150
  %i.hg = tail call i32 @llvm.smin.i32(i32 %i.hf, i32 64) ; 3 uses
end_hunk_0
