Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/exr?download=true
inline.NumInlined: 54
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@huf_uncompress:bb.a

.lr.ph.i:                                         ; preds = %bb.u
  %i.en = load ptr, ptr %i.ag, align 8, !tbaa !219
  %i.eo = zext nneg i32 %.0.i52 to i64
  %wide.trip.count.i = zext nneg i32 %.0.i50 to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i
  %.pr67.i = phi i32 [ -1, %.lr.ph.i ], [ %.pr66.i, %bb.z ]
  %indvars.iv.i = phi i64 [ %i.eo, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.z ] ; 4 uses
  %.05362.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.z ] ; 3 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.eq = trunc i64 %indvars.iv.i to i16
  %i.er = sext i32 %.05362.i to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  store i16 %i.eq, ptr %i.et, align 2, !tbaa !224
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !153 ; 2 uses
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = and i8 %i.ew, 63                        ; 3 uses
  store i8 %i.ex, ptr %i.es, align 4, !tbaa !226
  %i.ey = lshr i64 %i.ev, 6
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !227
  %i.fb = icmp samesign ugt i8 %i.ex, 32
  br i1 %i.fb, label %huf_decode.exit.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fc = add nsw i32 %.05362.i, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store i32 %i.ep, ptr %i.em, align 8, !tbaa !223
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pr66.i = phi i32 [ %.pr67.i, %bb.x ], [ %i.ep, %bb.y ] ; 2 uses
  %.1.i = phi i32 [ %i.fc, %bb.x ], [ %.05362.i, %bb.y ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.v, !llvm.loop !228

.critedge.i:                                      ; preds = %bb.z, %bb.u
  %.pr.i = phi i32 [ -1, %bb.u ], [ %.pr66.i, %bb.z ] ; 2 uses
  %.053.lcssa.i = phi i32 [ 0, %bb.u ], [ %.1.i, %bb.z ] ; 2 uses
  %.not59.i = icmp eq i32 %.0.i52, 0
  br i1 %.not59.i, label %bb.aa, label %.thread.sink.split.i

bb.aa:                                            ; preds = %.critedge.i
  %i.fd = icmp samesign ult i32 %.0.i50, 65535
  br i1 %i.fd, label %.thread.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = icmp eq i32 %.pr.i, -1
  br i1 %i.fe, label %huf_decode.exit.sink.split, label %.thread.i

.thread.sink.split.i:                             ; preds = %bb.aa, %.critedge.i
  %.sink.i = phi i32 [ 0, %.critedge.i ], [ 65535, %bb.aa ] ; 2 uses
  store i32 %.sink.i, ptr %i.em, align 8, !tbaa !223
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.sink.split.i, %bb.ab
  %i.ff = phi i32 [ %.pr.i, %bb.ab ], [ %.sink.i, %.thread.sink.split.i ]
  %i.fg = trunc i32 %i.ff to i16
  %i.fh = load ptr, ptr %i.ag, align 8, !tbaa !219
  %i.fi = sext i32 %.053.lcssa.i to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  store i16 %i.fg, ptr %i.fk, align 2, !tbaa !224
  %i.fl = zext nneg i32 %.0.i50 to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !153 ; 2 uses
  %i.fo = trunc i64 %i.fn to i8
  %i.fp = and i8 %i.fo, 63                        ; 2 uses
  store i8 %i.fp, ptr %i.fj, align 4, !tbaa !226
  %i.fq = icmp samesign ugt i8 %i.fp, 32
  br i1 %i.fq, label %huf_decode.exit.sink.split, label %huf_build_dec_table.exit

huf_build_dec_table.exit:                         ; preds = %.thread.i
  %i.fr = lshr i64 %i.fn, 6
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !227
  %i.fu = add nsw i32 %.053.lcssa.i, 1
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  tail call void @ff_vlc_free(ptr noundef nonnull %i.fv) #12
  %i.fw = load ptr, ptr %i.ag, align 8, !tbaa !219 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.fz = tail call i32 @ff_vlc_init_sparse(ptr noundef nonnull %i.fv, i32 noundef 12, i32 noundef %i.fu, ptr noundef %i.fw, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %i.fx, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %i.fy, i32 noundef 8, i32 noundef 2, i32 noundef 0) #12 ; 2 uses
  %i.ga = icmp slt i32 %i.fz, 0
  br i1 %i.ga, label %huf_decode.exit, label %bb.ac

bb.ac:                                            ; preds = %huf_build_dec_table.exit
  %i.gb = load i32, ptr %i.em, align 8, !tbaa !223
  %.val = load ptr, ptr %2, align 8, !tbaa !46    ; 5 uses
  %or.cond.i.i55 = icmp ult i32 %.0.i, 2147483135
  %i.gc = icmp ne ptr %.val, null
  %or.cond3.i.i = and i1 %or.cond.i.i55, %i.gc
  %.013.i.i = select i1 %or.cond3.i.i, i32 %.0.i, i32 0 ; 3 uses
  %i.gd = add nuw nsw i32 %.013.i.i, 8            ; 4 uses
  %i.ge = icmp ne i32 %.013.i.i, 0
  %i.gf = icmp sgt i32 %4, 0
  %i.gg = and i1 %i.gf, %i.ge
  br i1 %i.gg, label %.lr.ph9.i, label %huf_decode.exit

.lr.ph9.i:                                        ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !229 ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i, %.lr.ph9.i
  %.0248.i = phi i32 [ 0, %.lr.ph9.i ], [ %.4.i, %.loopexit.i ] ; 6 uses
  %.sroa.5.07.i = phi i32 [ 0, %.lr.ph9.i ], [ %.sroa.5.1.i57, %.loopexit.i ] ; 4 uses
  %i.gj = lshr i32 %.sroa.5.07.i, 3
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 1, !tbaa !60
  %i.gn = tail call i32 @llvm.bswap.i32(i32 %i.gm)
  %i.go = and i32 %.sroa.5.07.i, 7
  %i.gp = shl i32 %i.gn, %i.go
  %i.gq = lshr i32 %i.gp, 20
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gr ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !60
  %i.gu = sext i16 %i.gt to i32                   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !60 ; 2 uses
  %i.gx = sext i16 %i.gw to i32                   ; 3 uses
  %i.gy = icmp slt i16 %i.gw, 0
  br i1 %i.gy, label %bb.ae, label %get_vlc2.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gz = add i32 %.sroa.5.07.i, 12
  %i.ha = tail call i32 @llvm.umin.i32(i32 %i.gd, i32 %i.gz) ; 4 uses
  %i.hb = lshr i32 %i.ha, 3
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 1, !tbaa !60
  %i.hf = tail call i32 @llvm.bswap.i32(i32 %i.he)
  %i.hg = and i32 %i.ha, 7
  %i.hh = shl i32 %i.hf, %i.hg
  %i.hi = add nsw i32 %i.gx, 32
  %i.hj = lshr i32 %i.hh, %i.hi
  %i.hk = add i32 %i.hj, %i.gu
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.hl ; 2 uses
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !60
  %i.ho = sext i16 %i.hn to i32                   ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !60 ; 2 uses
  %i.hr = sext i16 %i.hq to i32                   ; 2 uses
  %i.hs = icmp slt i16 %i.hq, 0
  br i1 %i.hs, label %bb.af, label %get_vlc2.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.ht = sub i32 %i.ha, %i.gx
  %i.hu = tail call i32 @llvm.umin.i32(i32 %i.gd, i32 %i.ht) ; 3 uses
  %i.hv = lshr i32 %i.hu, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 1, !tbaa !60
  %i.hz = tail call i32 @llvm.bswap.i32(i32 %i.hy)
  %i.ia = and i32 %i.hu, 7
  %i.ib = shl i32 %i.hz, %i.ia
  %i.ic = add nsw i32 %i.hr, 32
  %i.id = lshr i32 %i.ib, %i.ic
  %i.ie = add i32 %i.id, %i.ho
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.if ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !60
  %i.ii = zext i16 %i.ih to i32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !60
  %i.il = sext i16 %i.ik to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.af, %bb.ae, %bb.ad
  %.167.i.i = phi i32 [ %i.gu, %bb.ad ], [ %i.ii, %bb.af ], [ %i.ho, %bb.ae ] ; 2 uses
  %.165.i.i = phi i32 [ %.sroa.5.07.i, %bb.ad ], [ %i.hu, %bb.af ], [ %i.ha, %bb.ae ]
  %.1.i.i = phi i32 [ %i.gx, %bb.ad ], [ %i.il, %bb.af ], [ %i.hr, %bb.ae ]
  %i.im = add i32 %.1.i.i, %.165.i.i
  %i.in = tail call i32 @llvm.umin.i32(i32 %i.gd, i32 %i.im) ; 4 uses
  %i.io = and i32 %.167.i.i, 65535
  %i.ip = icmp eq i32 %i.io, %i.gb
  br i1 %i.ip, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %get_vlc2.exit.i
  %i.iq = lshr i32 %i.in, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 1, !tbaa !60
  %i.iu = tail call i32 @llvm.bswap.i32(i32 %i.it)
  %i.iv = and i32 %i.in, 7
  %i.iw = shl i32 %i.iu, %i.iv                    ; 4 uses
  %i.ix = lshr i32 %i.iw, 24                      ; 2 uses
  %i.iy = add nuw i32 %i.in, 8
  %i.iz = tail call i32 @llvm.umin.i32(i32 %i.gd, i32 %i.iy) ; 4 uses
  %i.ja = icmp eq i32 %.0248.i, 0
  %i.jb = add i32 %i.ix, %.0248.i                 ; 5 uses
  %i.jc = icmp sgt i32 %i.jb, %4
  %or.cond.i = select i1 %i.ja, i1 true, i1 %i.jc
  br i1 %or.cond.i, label %huf_decode.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jd = sext i32 %.0248.i to i64                ; 6 uses
  %i.je = getelementptr [2 x i8], ptr %3, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.je, i64 -2
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !149 ; 3 uses
  %.not.i58 = icmp eq i32 %i.ix, 0
  br i1 %.not.i58, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.ah
  %5 = lshr i32 %i.iw, 24
  %i.jh = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %i.iw, 67108864
  br i1 %min.iters.check, label %.lr.ph.i59.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check87 = icmp ult i32 %i.iw, 268435456
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ji = and i64 %i.jh, 12
  %n.vec = and i64 %i.jh, 240                     ; 4 uses
  %i.jj = add nsw i64 %n.vec, %i.jd
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.jg, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %3, i64 %i.jd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !149
  store <8 x i16> %broadcast.splat, ptr %i.jk, align 2, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.jh
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ji, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i59.preheader, label %vec.epilog.ph, !prof !212

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec88 = and i64 %i.jh, 252                   ; 3 uses
  %i.jm = add nsw i64 %n.vec88, %i.jd
  %broadcast.splatinsert89 = insertelement <4 x i16> poison, i16 %i.jg, i64 0
  %broadcast.splat90 = shufflevector <4 x i16> %broadcast.splatinsert89, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep97 = getelementptr [2 x i8], ptr %3, i64 %i.jd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %gep98 = getelementptr [2 x i8], ptr %invariant.gep97, i64 %index91
  store <4 x i16> %broadcast.splat90, ptr %gep98, align 2, !tbaa !149
  %index.next92 = add nuw i64 %index91, 4         ; 2 uses
  %i.jn = icmp eq i64 %index.next92, %n.vec88
  br i1 %i.jn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !231

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %n.vec88, %i.jh
  br i1 %cmp.n93, label %.loopexit.i, label %.lr.ph.i59.preheader

.lr.ph.i59.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i60.ph = phi i64 [ %i.jd, %iter.check ], [ %i.jj, %vec.epilog.iter.check ], [ %i.jm, %vec.epilog.middle.block ]
  br label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.preheader, %.lr.ph.i59
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i61, %.lr.ph.i59 ], [ %indvars.iv.i60.ph, %.lr.ph.i59.preheader ] ; 2 uses
  %indvars.iv.next.i61 = add nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %i.jo = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv.i60
  store i16 %i.jg, ptr %i.jo, align 2, !tbaa !149
  %lftr.wideiv = trunc i64 %indvars.iv.next.i61 to i32
  %exitcond.not = icmp eq i32 %i.jb, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit.i, label %.lr.ph.i59, !llvm.loop !232

bb.ai:                                            ; preds = %get_vlc2.exit.i
  %i.jp = trunc i32 %.167.i.i to i16
  %i.jq = add nsw i32 %.0248.i, 1
  %i.jr = sext i32 %.0248.i to i64
  %i.js = getelementptr inbounds [2 x i8], ptr %3, i64 %i.jr
  store i16 %i.jp, ptr %i.js, align 2, !tbaa !149
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i59, %middle.block, %vec.epilog.middle.block, %bb.ai, %bb.ah
  %.sroa.5.1.i57 = phi i32 [ %i.in, %bb.ai ], [ %i.iz, %bb.ah ], [ %i.iz, %middle.block ], [ %i.iz, %vec.epilog.middle.block ], [ %i.iz, %.lr.ph.i59 ] ; 2 uses
  %.4.i = phi i32 [ %i.jq, %bb.ai ], [ %.0248.i, %bb.ah ], [ %i.jb, %middle.block ], [ %i.jb, %vec.epilog.middle.block ], [ %i.jb, %.lr.ph.i59 ] ; 2 uses
  %i.jt = icmp sgt i32 %.013.i.i, %.sroa.5.1.i57
  %i.ju = icmp slt i32 %.4.i, %4
  %i.jv = select i1 %i.jt, i1 %i.ju, i1 false
  br i1 %i.jv, label %bb.ad, label %huf_decode.exit, !llvm.loop !233

huf_decode.exit.sink.split:                       ; preds = %bb.v, %.thread.i, %bb.ab
  %.str.81.sink = phi ptr [ @.str.81, %.thread.i ], [ @.str.82, %bb.ab ], [ @.str.81, %bb.v ]
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !29
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.jx, ptr noundef nonnull %.str.81.sink) #12
  br label %huf_decode.exit

huf_decode.exit:                                  ; preds = %bb.n, %bb.l, %bb.j, %.loopexit.i, %bb.ag, %huf_decode.exit.sink.split, %bb.i, %.thread, %.thread82, %bb.ac, %huf_build_dec_table.exit, %bb.t, %bytestream2_get_le32.exit
  %.0 = phi i32 [ -1094995529, %bytestream2_get_le32.exit ], [ -12, %bb.i ], [ -1094995529, %.thread82 ], [ -1094995529, %bb.t ], [ -12, %.thread ], [ -1163346256, %huf_decode.exit.sink.split ], [ %i.fz, %huf_build_dec_table.exit ], [ 0, %bb.ac ], [ 0, %.loopexit.i ], [ -1094995529, %bb.ag ], [ -1094995529, %bb.j ], [ -1094995529, %bb.l ], [ -1094995529, %bb.n ]
  ret i32 %.0
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_vlc_free(ptr noundef) local_unnamed_addr #2

declare i32 @ff_vlc_init_sparse(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @rle(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.02754 = phi i32 [ %.128, %.loopexit ], [ %3, %bb.a ] ; 2 uses
  %.02953 = phi i32 [ %.130, %.loopexit ], [ %2, %bb.a ] ; 3 uses
  %.03152 = phi ptr [ %.2, %.loopexit ], [ %1, %bb.a ] ; 4 uses
  %.03351 = phi ptr [ %.3, %.loopexit ], [ %0, %bb.a ] ; 19 uses
  %.0335164 = ptrtoaddr ptr %.03351 to i64
  %.0315265 = ptrtoaddr ptr %.03152 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %.03152, i64 1 ; 7 uses
  %i.e = load i8, ptr %.03152, align 1, !tbaa !60 ; 4 uses
  %i.f = sext i8 %i.e to i32                      ; 5 uses
  %i.g = icmp slt i8 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nsw i32 %.02754, %i.f                ; 5 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.loopexit44, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nsw i32 %.02953, -1
  %i.j = add i32 %.neg, %i.f                      ; 5 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.loopexit44, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.l = sub nsw i32 0, %i.f                      ; 4 uses
  %narrow = sub nsw i32 0, %i.f                   ; 3 uses
  %i.m = zext nneg i32 %narrow to i64             ; 5 uses
  %min.iters.check = icmp ult i32 %narrow, 4
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = sub i64 %.0335164, %.0315265
  %i.o = add i64 %i.n, -2
  %diff.check = icmp ult i64 %i.o, 31
  br i1 %diff.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check66 = icmp ult i32 %narrow, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.m, 28
  %n.vec = and i64 %i.m, 224                      ; 6 uses
  %i.q = trunc nuw nsw i64 %n.vec to i32
  %i.r = sub nsw i32 %i.l, %i.q
  %i.s = getelementptr i8, ptr %i.d, i64 %n.vec   ; 2 uses
  %i.t = getelementptr i8, ptr %.03351, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %next.gep67 = getelementptr i8, ptr %.03351, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !60
  %wide.load68 = load <16 x i8>, ptr %i.u, align 1, !tbaa !60
  %i.v = getelementptr i8, ptr %next.gep67, i64 16
  store <16 x i8> %wide.load, ptr %next.gep67, align 1, !tbaa !60
  store <16 x i8> %wide.load68, ptr %i.v, align 1, !tbaa !60
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !178

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec71 = and i64 %i.m, 252                    ; 5 uses
  %i.x = trunc nuw nsw i64 %n.vec71 to i32
  %i.y = sub nsw i32 %i.l, %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %n.vec71 ; 2 uses
  %i.aa = getelementptr i8, ptr %.03351, i64 %n.vec71 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index72 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 3 uses
  %next.gep73 = getelementptr i8, ptr %i.d, i64 %index72
  %next.gep74 = getelementptr i8, ptr %.03351, i64 %index72
  %wide.load75 = load <4 x i8>, ptr %next.gep73, align 1, !tbaa !60
  store <4 x i8> %wide.load75, ptr %next.gep74, align 1, !tbaa !60
  %index.next76 = add nuw i64 %index72, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next76, %n.vec71
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !235
end_hunk_0
