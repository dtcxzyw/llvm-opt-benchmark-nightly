Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv40?download=true
inline.NumInlined: 32
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rv40_decode_mb_info:bb.a
bb.y:                                             ; preds = %bb.x, %bb.w
  %.154.5 = phi i32 [ 5, %bb.x ], [ %.154.4, %bb.w ]
  %.1.5 = phi i32 [ 1, %bb.x ], [ %.1.4, %bb.w ]  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !47 ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, %.1.5
  br i1 %i.eb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ec = icmp samesign ugt i32 %i.ea, 1
  br i1 %i.ec, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.154.6 = phi i32 [ 6, %bb.z ], [ %.154.5, %bb.y ]
  %.1.6 = phi i32 [ 1, %bb.z ], [ %.1.5, %bb.y ]  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !47 ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, %.1.6
  br i1 %i.ef, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eg = icmp samesign ugt i32 %i.ee, 1
  br i1 %i.eg, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.154.7 = phi i32 [ 7, %bb.ab ], [ %.154.6, %bb.aa ]
  %.1.7 = phi i32 [ 1, %bb.ab ], [ %.1.6, %bb.aa ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ei = load i32, ptr %i.eh, align 16, !tbaa !47 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, %.1.7
  br i1 %i.ej, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ek = icmp samesign ugt i32 %i.ei, 1
  br i1 %i.ek, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.154.8 = phi i32 [ 8, %bb.ad ], [ %.154.7, %bb.ac ]
  %.1.8 = phi i32 [ 1, %bb.ad ], [ %.1.7, %bb.ac ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.em = load i32, ptr %i.el, align 4, !tbaa !47 ; 2 uses
  %i.en = icmp sgt i32 %i.em, %.1.8
  br i1 %i.en, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eo = icmp samesign ugt i32 %i.em, 1
  br i1 %i.eo, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.154.9 = phi i32 [ 9, %bb.af ], [ %.154.8, %bb.ae ]
  %.1.9 = phi i32 [ 1, %bb.af ], [ %.1.8, %bb.ae ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !47 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, %.1.9
  br i1 %i.er, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.es = icmp samesign ugt i32 %i.eq, 1
  br i1 %i.es, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.154.10 = phi i32 [ 10, %bb.ah ], [ %.154.9, %bb.ag ]
  %.1.10 = phi i32 [ 1, %bb.ah ], [ %.1.9, %bb.ag ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !47
  %i.ev = icmp sgt i32 %i.eu, %.1.10
  %spec.select = select i1 %i.ev, i32 11, i32 %.154.10
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n
  %.2 = phi i32 [ 0, %bb.n ], [ 6, %bb.z ], [ 1, %bb.p ], [ %spec.select, %bb.ai ], [ 2, %bb.r ], [ 8, %bb.ad ], [ 3, %bb.t ], [ 10, %bb.ah ], [ 4, %bb.v ], [ 7, %bb.ab ], [ 5, %bb.x ], [ 9, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.am

bb.ak:                                            ; preds = %bb.g
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 5812
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !47
  %.not62 = icmp eq i32 %i.ex, 0
  br i1 %.not62, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 5624
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !91
  %i.fa = sext i32 %i.j to i64
  %i.fb = getelementptr [4 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 -4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !47
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.3 = phi i32 [ %.2, %bb.aj ], [ %i.fd, %bb.al ], [ 0, %bb.ak ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.ff = load i32, ptr %i.fe, align 16, !tbaa !92
  %i.fg = icmp eq i32 %i.ff, 2
  %i.fh = sext i32 %.3 to i64                     ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 4 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !43 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.fl = load i32, ptr %i.fk, align 16, !tbaa !46 ; 3 uses
  %i.fm = load ptr, ptr %i.b, align 16, !tbaa !44 ; 2 uses
  %i.fn = lshr i32 %i.fj, 3
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 1, !tbaa !45
  %i.fr = tail call i32 @llvm.bswap.i32(i32 %i.fq)
  %i.fs = and i32 %i.fj, 7
  %i.ft = shl i32 %i.fr, %i.fs                    ; 2 uses
  br i1 %i.fg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fu = getelementptr inbounds i8, ptr @block_num_to_ptype_vlc_num, i64 %i.fh
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !45
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr @ptype_vlc, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !50 ; 2 uses
  %i.fz = lshr i32 %i.ft, 25
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.ga ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !45 ; 2 uses
  %i.gd = sext i16 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !45
  %i.gg = sext i16 %i.gf to i32
  %i.gh = add i32 %i.fj, %i.gg
  %i.gi = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 %i.gh) ; 2 uses
  store i32 %i.gi, ptr %i.fi, align 8, !tbaa !43
  %i.gj = icmp slt i16 %i.gc, 255
  br i1 %i.gj, label %bb.ap, label %.sink.split

bb.ao:                                            ; preds = %bb.am
  %i.gk = getelementptr inbounds i8, ptr @block_num_to_btype_vlc_num, i64 %i.fh
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !45
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr @btype_vlc, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !50 ; 2 uses
  %i.gp = lshr i32 %i.ft, 26
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gq ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !45 ; 2 uses
  %i.gt = sext i16 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !45
  %i.gw = sext i16 %i.gv to i32
  %i.gx = add i32 %i.fj, %i.gw
  %i.gy = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 %i.gx) ; 2 uses
  store i32 %i.gy, ptr %i.fi, align 8, !tbaa !43
  %i.gz = icmp slt i16 %i.gs, 255
  br i1 %i.gz, label %bb.ap, label %.sink.split

.sink.split:                                      ; preds = %bb.ao, %bb.an
  %.sink123 = phi i32 [ %i.gi, %bb.an ], [ %i.gy, %bb.ao ] ; 3 uses
  %.sink115 = phi i32 [ 25, %bb.an ], [ 26, %bb.ao ]
  %.sink111 = phi ptr [ %i.fy, %bb.an ], [ %i.go, %bb.ao ]
  %.str.2.sink = phi ptr [ @.str.2, %bb.an ], [ @.str.3, %bb.ao ]
  %i.ha = lshr i32 %.sink123, 3
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 1, !tbaa !45
  %i.he = tail call i32 @llvm.bswap.i32(i32 %i.hd)
  %i.hf = and i32 %.sink123, 7
  %i.hg = shl i32 %i.he, %i.hf
  %i.hh = lshr i32 %i.hg, %.sink115
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.sink111, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !45
  %i.hm = sext i16 %i.hl to i32
  %i.hn = add i32 %.sink123, %i.hm
  %i.ho = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 %i.hn)
  store i32 %i.ho, ptr %i.fi, align 8, !tbaa !43
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !93
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hq, i32 noundef 16, ptr noundef nonnull %.str.2.sink) #7
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %bb.ao, %bb.an, %bb.f, %get_interleaved_ue_golomb.exit
  %.056 = phi i32 [ -1, %get_interleaved_ue_golomb.exit ], [ 6, %bb.f ], [ %i.gt, %bb.ao ], [ %i.gd, %bb.an ], [ 0, %.sink.split ]
  ret i32 %.056
}

; Function Attrs: nounwind uwtable
define internal void @rv40_loop_filter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca [4 x [2 x i32]], align 16         ; 12 uses
  %.sroa.0456 = alloca i32, align 4               ; 4 uses
  %.sroa.5457 = alloca i32, align 4               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !102  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge351

.lr.ph:                                           ; preds = %bb.a
  %i.v = load i32, ptr %i.r, align 4, !tbaa !51
  %i.w = mul i32 %i.v, %1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5744
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5728
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5736
  %i.ab = sext i32 %i.w to i64
  %.pre413 = load ptr, ptr %i.x, align 16, !tbaa !103
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %i.ac = phi i32 [ %i.t, %.lr.ph ], [ %i.ao, %.thread ] ; 2 uses
  %i.ad = phi ptr [ %.pre413, %.lr.ph ], [ %i.ap, %.thread ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 5 uses
  %.0248333 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %.thread ]
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47 ; 2 uses
  %i.ag = and i32 %i.af, 16777223
  %or.cond298 = icmp eq i32 %i.ag, 0
  br i1 %or.cond298, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = and i32 %i.af, 7
  %.not296 = icmp eq i32 %i.ah, 0
  %i.ai = load ptr, ptr %i.y, align 16, !tbaa !104
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv
  store i16 -1, ptr %i.aj, align 2, !tbaa !52
  %i.ak = load ptr, ptr %i.z, align 16, !tbaa !105
  %i.al = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %indvars.iv
  store i16 -1, ptr %i.al, align 2, !tbaa !52
  br i1 %.not296, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !106
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %indvars.iv
  store i8 -1, ptr %i.an, align 1, !tbaa !45
  %.pre = load ptr, ptr %i.x, align 16, !tbaa !103
  %.pre414 = load i32, ptr %i.s, align 4, !tbaa !102
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.c
  %i.ao = phi i32 [ %i.ac, %bb.b ], [ %.pre414, %bb.d ], [ %i.ac, %bb.c ] ; 3 uses
  %i.ap = phi ptr [ %i.ad, %bb.b ], [ %.pre, %bb.d ], [ %i.ad, %bb.c ]
  %i.aq = add nuw nsw i32 %.0248333, 1            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ar = icmp slt i32 %i.aq, %i.ao
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %.thread
  %i.as = icmp sgt i32 %i.ao, 0
  br i1 %i.as, label %.lr.ph350, label %._crit_edge351

.lr.ph350:                                        ; preds = %._crit_edge
  %i.at = load i32, ptr %i.r, align 4, !tbaa !51
  %i.au = mul i32 %i.at, %1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5744 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5728 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5736 ; 4 uses
  %.not263 = icmp eq i32 %1, 0                    ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.bh = shl nsw i32 %1, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5048 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5032 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5016 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5056 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5040 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 5024 ; 8 uses
  %i.bp = shl nsw i32 %1, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.br = sext i32 %i.bh to i64
  %i.bs = sext i32 %i.bp to i64
  %i.bt = sext i32 %i.au to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph350, %bb.cg
  %indvars.iv374 = phi i64 [ 0, %.lr.ph350 ], [ %indvars.iv.next375, %bb.cg ] ; 5 uses
  %indvars.iv372 = phi i64 [ %i.bt, %.lr.ph350 ], [ %indvars.iv.next373, %bb.cg ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0456)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5457)
  %i.ca = load ptr, ptr %i.aw, align 8, !tbaa !107
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %indvars.iv372
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !45
  %i.cd = sext i8 %i.cc to i64                    ; 5 uses
  %i.ce = getelementptr inbounds i8, ptr @rv40_alpha_tab, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !45
  %i.cg = getelementptr inbounds i8, ptr @rv40_beta_tab, i64 %i.cd
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !45
  %i.ci = load i32, ptr %i.ax, align 16, !tbaa !108
  %i.cj = load i32, ptr %i.ay, align 4, !tbaa !109
  %i.ck = load i32, ptr %i.az, align 8, !tbaa !110
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  %.not431 = icmp slt i32 %1, %i.cl
  %i.cm = load ptr, ptr %i.ba, align 16, !tbaa !104
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %indvars.iv372
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !52
  %i.cp = zext i16 %i.co to i32                   ; 3 uses
  %i.cq = load ptr, ptr %i.bc, align 16, !tbaa !105
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %indvars.iv372
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !52
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = load ptr, ptr %i.bd, align 8, !tbaa !106
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %indvars.iv372
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !45  ; 2 uses
  %i.cx = and i8 %i.cw, 15
  %i.cy = zext nneg i8 %i.cx to i32               ; 5 uses
  %i.cz = lshr i8 %i.cw, 4
  %i.da = zext nneg i8 %i.cz to i32               ; 5 uses
  %i.db = load ptr, ptr %i.bb, align 16, !tbaa !103
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %indvars.iv372
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !47 ; 2 uses
  %i.de = and i32 %i.dd, 16777223                 ; 6 uses
  %i.df = icmp ne i32 %i.de, 0
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr @rv40_filter_clip_tbl, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.cd
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !45
  %i.dl = zext i8 %i.dk to i32                    ; 6 uses
  br i1 %.not263, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dm = load i32, ptr %i.r, align 4, !tbaa !51
  %i.dn = sub nsw i32 0, %i.dm
  %i.do = sext i32 %i.dn to i64
  %i.dp = add nsw i64 %indvars.iv372, %i.do       ; 4 uses
  %i.dq = load ptr, ptr %i.ba, align 16, !tbaa !104
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.dp
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !52
  %i.dt = zext i16 %i.ds to i32
  %i.du = load ptr, ptr %i.bb, align 16, !tbaa !103
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dp
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = load ptr, ptr %i.bc, align 16, !tbaa !105
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.dp
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !52
  %i.ea = load ptr, ptr %i.bd, align 8, !tbaa !106
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dp
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !45  ; 2 uses
  %i.ed = and i8 %i.ec, 15
  %i.ee = zext nneg i8 %i.ed to i32               ; 2 uses
  store i32 %i.ee, ptr %i.bg, align 8, !tbaa !47
  %i.ef = lshr i8 %i.ec, 4
  %i.eg = zext nneg i8 %i.ef to i32               ; 2 uses
  store i32 %i.eg, ptr %i.bv, align 4, !tbaa !47
  %.pre416 = and i32 %i.dw, 16777223
  %i.eh = lshr i16 %i.dz, 12
  %i.ei = zext nneg i16 %i.eh to i32
  %i.ej = lshr i32 %i.ee, 2
  %i.ek = lshr i32 %i.eg, 2
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.bw, align 4, !tbaa !47
  store i32 0, ptr %i.bg, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi = phi i32 [ %i.de, %bb.g ], [ %.pre416, %bb.f ] ; 2 uses
  %.sroa.5383.0 = phi i32 [ 0, %bb.g ], [ %i.ei, %bb.f ]
  %.sroa.5.0.a = phi i32 [ 0, %bb.g ], [ %i.dt, %bb.f ]
  %i.el = phi i32 [ 0, %bb.g ], [ %i.ek, %bb.f ]
  %i.em = phi i32 [ 0, %bb.g ], [ %i.ej, %bb.f ]
  %i.en = icmp ne i32 %.pre-phi, 0
  %i.eo = zext i1 %i.en to i64
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr @rv40_filter_clip_tbl, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.cd
  %i.es = load i8, ptr %i.er, align 1, !tbaa !45
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %.not294.2 = icmp eq i64 %indvars.iv374, 0
  br i1 %.not294.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eu = add nsw i64 %indvars.iv372, -1          ; 4 uses
  %i.ev = load ptr, ptr %i.ba, align 16, !tbaa !104
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.eu
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !52
  %i.ey = zext i16 %i.ex to i32
  %i.ez = load ptr, ptr %i.bb, align 16, !tbaa !103
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.eu
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !47
  %i.fc = load ptr, ptr %i.bc, align 16, !tbaa !105
  %i.fd = getelementptr inbounds [2 x i8], ptr %i.fc, i64 %i.eu
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !52
  %i.ff = load ptr, ptr %i.bd, align 8, !tbaa !106
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.eu
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !45  ; 2 uses
  %i.fi = and i8 %i.fh, 15
  %i.fj = zext nneg i8 %i.fi to i32               ; 2 uses
  store i32 %i.fj, ptr %i.bf, align 16, !tbaa !47
  %i.fk = lshr i8 %i.fh, 4
  %i.fl = zext nneg i8 %i.fk to i32               ; 2 uses
  store i32 %i.fl, ptr %i.bx, align 4, !tbaa !47
  %.pre417 = and i32 %i.fb, 16777223
  %i.fm = lshr i16 %i.fe, 3
  %i.fn = and i16 %i.fm, 4369
  %i.fo = zext nneg i16 %i.fn to i32
  %i.fp = lshr i32 %i.fj, 1
  %i.fq = and i32 %i.fp, 5
  %i.fr = lshr i32 %i.fl, 1
  %i.fs = and i32 %i.fr, 5
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 0, ptr %i.by, align 4, !tbaa !47
  store i32 0, ptr %i.bf, align 16, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi418 = phi i32 [ %i.de, %bb.j ], [ %.pre417, %bb.i ] ; 2 uses
  %.sroa.8384.0 = phi i32 [ 0, %bb.j ], [ %i.fo, %bb.i ]
  %.sroa.8380.0 = phi i32 [ 0, %bb.j ], [ %i.ey, %bb.i ]
  %i.ft = phi i32 [ 0, %bb.j ], [ %i.fs, %bb.i ]
  %i.fu = phi i32 [ 0, %bb.j ], [ %i.fq, %bb.i ]
  %i.fv = icmp ne i32 %.pre-phi418, 0
  %i.fw = zext i1 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [32 x i8], ptr @rv40_filter_clip_tbl, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.cd
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !45
  %i.gb = zext i8 %i.ga to i32                    ; 3 uses
  br i1 %.not431, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gc = load i32, ptr %i.r, align 4, !tbaa !51
  %i.gd = sext i32 %i.gc to i64
  %i.ge = add nsw i64 %indvars.iv372, %i.gd       ; 3 uses
  %i.gf = load ptr, ptr %i.ba, align 16, !tbaa !104
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.ge
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !52
  %i.gi = zext i16 %i.gh to i32
  %i.gj = load ptr, ptr %i.bb, align 16, !tbaa !103
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.ge
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !47
  %i.gm = load ptr, ptr %i.bd, align 8, !tbaa !106
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %i.ge
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !45  ; 2 uses
  %i.gp = and i8 %i.go, 15
  %i.gq = zext nneg i8 %i.gp to i32               ; 2 uses
  %i.gr = lshr i8 %i.go, 4
  %i.gs = zext nneg i8 %i.gr to i32               ; 2 uses
  %i.gt = shl nuw i32 %i.gi, 16
  %i.gu = or disjoint i32 %i.gt, %i.cp
  %.pre419434 = or i32 %i.gl, %i.dd
  %i.gv = and i32 %.pre419434, 16777223
  %i.gw = shl nuw nsw i32 %i.gq, 4
  %i.gx = or disjoint i32 %i.gw, %i.cy
  %i.gy = shl nuw nsw i32 %i.gs, 4
  %i.gz = or disjoint i32 %i.gy, %i.da
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ha = phi i32 [ %i.gq, %bb.l ], [ 0, %bb.k ]
  %i.hb = phi i32 [ %i.gs, %bb.l ], [ 0, %bb.k ]
  %.pre-phi420 = phi i32 [ %i.gv, %bb.l ], [ %i.de, %bb.k ] ; 2 uses
  %.sroa.12.0 = phi i32 [ %i.gu, %bb.l ], [ %i.cp, %bb.k ] ; 4 uses
  %i.hc = phi i32 [ %i.gz, %bb.l ], [ %i.da, %bb.k ] ; 3 uses
  %i.hd = phi i32 [ %i.gx, %bb.l ], [ %i.cy, %bb.k ] ; 3 uses
  %i.he = zext i8 %i.cf to i32                    ; 24 uses
  %i.hf = zext i8 %i.ch to i32                    ; 26 uses
  %i.hg = mul nuw nsw i32 %i.hf, 3                ; 5 uses
  %i.hh = mul nsw i32 %i.cj, %i.ci
  %i.hi = icmp slt i32 %i.hh, 25345
  %i.hj = shl nuw nsw i32 %i.hf, 2
  %spec.select = select i1 %i.hi, i32 %i.hj, i32 %i.hg ; 4 uses
  %i.hk = shl nuw nsw i32 %i.ct, 4
  %i.hl = or disjoint i32 %.sroa.5383.0, %i.hk
  %i.hm = or i32 %i.hl, %.sroa.12.0               ; 2 uses
  %i.hn = shl nuw nsw i32 %i.ct, 1
  %i.ho = and i32 %i.hn, 126702
  %i.hp = or disjoint i32 %i.ho, %.sroa.8384.0
  %i.hq = or i32 %i.hp, %.sroa.12.0               ; 2 uses
  %.not = icmp eq i64 %indvars.iv374, 0           ; 3 uses
  %i.hr = and i32 %i.hq, 61166
  %spec.select299 = select i1 %.not, i32 %i.hr, i32 %i.hq
  %i.hs = and i32 %i.hm, -16
  %.0253 = select i1 %.not263, i32 %i.hs, i32 %i.hm ; 2 uses
  %i.ht = icmp eq i32 %1, %i.cl                   ; 2 uses
  br i1 %i.ht, label %._crit_edge423, label %bb.n

._crit_edge423:                                   ; preds = %bb.m
  %.pre424433 = icmp ne i32 %.pre-phi420, 0
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not432 = icmp eq i32 %.pre-phi420, 0
  br i1 %.not432, label %.preheader332, label %bb.o

bb.o:                                             ; preds = %._crit_edge423, %bb.n
  %.pre421.pre-phi = phi i1 [ %.pre424433, %._crit_edge423 ], [ true, %bb.n ]
  %i.hu = and i32 %.0253, -983041
  br label %.preheader332

.preheader332:                                    ; preds = %bb.o, %bb.n
  %.pre-phi422 = phi i1 [ %.pre421.pre-phi, %bb.o ], [ false, %bb.n ]
  %.1254 = phi i32 [ %i.hu, %bb.o ], [ %.0253, %bb.n ] ; 2 uses
  %i.hv = shl nuw nsw i32 %i.cy, 1
  %i.hw = and i32 %i.hv, 26
  %i.hx = or disjoint i32 %i.hw, %i.fu
  %i.hy = or i32 %i.hx, %i.hd                     ; 2 uses
  %i.hz = shl nuw nsw i32 %i.cy, 2
  %i.ia = or disjoint i32 %i.em, %i.hz
  %i.ib = or i32 %i.ia, %i.hd                     ; 3 uses
  %i.ic = and i32 %i.hy, -6
  %spec.select464 = select i1 %.not, i32 %i.ic, i32 %i.hy
  store i32 %spec.select464, ptr %.sroa.0456, align 4, !tbaa !47
  %brmerge = select i1 %i.ht, i1 true, i1 %.pre-phi422 ; 4 uses
  %2 = or i1 %.not263, %brmerge
  %i.id = and i32 %i.ib, -4
  %i.ie = select i1 %.not263, i32 %i.id, i32 %i.ib ; 2 uses
  %3 = and i32 %i.ie, -49
  %simplifycfg.merge = select i1 %brmerge, i32 %3, i32 %i.ie
  %.sroa.0453.0 = select i1 %2, i32 %simplifycfg.merge, i32 %i.ib
  %i.if = shl nuw nsw i32 %i.da, 1
  %i.ig = and i32 %i.if, 26
  %i.ih = or disjoint i32 %i.ig, %i.ft
  %i.ii = or i32 %i.ih, %i.hc                     ; 2 uses
  %i.ij = shl nuw nsw i32 %i.da, 2
  %i.ik = or disjoint i32 %i.el, %i.ij
  %i.il = or i32 %i.ik, %i.hc                     ; 3 uses
  %i.im = and i32 %i.ii, -6
  %storemerge459 = select i1 %.not, i32 %i.im, i32 %i.ii
  store i32 %storemerge459, ptr %.sroa.5457, align 4, !tbaa !47
  %4 = or i1 %.not263, %brmerge
  %i.in = and i32 %i.il, -4
  %i.io = select i1 %.not263, i32 %i.in, i32 %i.il ; 2 uses
  %i.ip = and i32 %i.io, -49
  %simplifycfg.merge441 = select i1 %brmerge, i32 %i.ip, i32 %i.io
  %.sroa.5.0458 = select i1 %4, i32 %simplifycfg.merge441, i32 %i.il
  %i.iq = shl nuw nsw i64 %indvars.iv374, 4
  %i.ir = or i32 %.pre-phi418, %i.de
  %.not435 = icmp eq i32 %i.ir, 0                 ; 4 uses
  %i.is = or i32 %.pre-phi, %i.de
  %.not436 = icmp eq i32 %i.is, 0                 ; 2 uses
  br label %bb.p

.preheader331:                                    ; preds = %bb.aw
  %i.it = shl nuw nsw i64 %indvars.iv374, 3
  br label %.preheader

bb.p:                                             ; preds = %.preheader332, %bb.aw
  %indvars.iv363 = phi i64 [ 0, %.preheader332 ], [ %indvars.iv.next364, %bb.aw ] ; 5 uses
  %i.iu = load ptr, ptr %i.av, align 16, !tbaa !111
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iq
  %i.iw = add nuw nsw i64 %indvars.iv363, %i.br
  %i.ix = load i64, ptr %i.bi, align 16, !tbaa !112
  %i.iy = mul nsw i64 %i.ix, %i.iw
  %i.iz = getelementptr inbounds i8, ptr %i.iv, i64 %i.iy
  %.not280 = icmp eq i64 %indvars.iv363, 0        ; 2 uses
  %i.ja = trunc nuw nsw i64 %indvars.iv363 to i32 ; 2 uses
  %i.jb = shl nuw nsw i32 8, %i.ja
  %i.jc = and i32 %.sroa.8380.0, %i.jb
  %.not286 = icmp eq i32 %i.jc, 0
  %i.jd = select i1 %.not286, i32 0, i32 %i.gb    ; 4 uses
  %i.je = lshr i32 %i.jd, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.av
  %.0257338 = phi ptr [ %i.iz, %bb.p ], [ %i.ne, %bb.av ] ; 14 uses
  %.2337 = phi i32 [ 0, %bb.p ], [ %i.nd, %bb.av ] ; 7 uses
  %i.jf = or disjoint i32 %.2337, %i.ja           ; 4 uses
  %i.jg = shl nuw nsw i32 1, %i.jf                ; 2 uses
  %i.jh = and i32 %i.jg, %i.cp
  %.not279 = icmp eq i32 %i.jh, 0
  %i.ji = select i1 %.not279, i32 0, i32 %i.dl    ; 12 uses
  %i.jj = shl nuw nsw i32 %.2337, 2               ; 2 uses
  %i.jk = select i1 %.not280, i32 %i.jj, i32 %i.jf ; 3 uses
  %i.jl = shl nuw nsw i32 16, %i.jf               ; 2 uses
  %i.jm = and i32 %i.jl, %.1254
  %.not281 = icmp eq i32 %i.jm, 0
  br i1 %.not281, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jn = load i64, ptr %i.bi, align 16, !tbaa !112 ; 2 uses
  %i.jo = shl nsw i64 %i.jn, 2
  %i.jp = getelementptr inbounds i8, ptr %.0257338, i64 %i.jo ; 4 uses
  %i.jq = and i32 %i.jl, %.sroa.12.0
  %.not282 = icmp eq i32 %i.jq, 0
  %i.jr = select i1 %.not282, i32 0, i32 %i.dl    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  %i.js = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.jt = shl i64 %i.jn, 32
  %i.ju = ashr exact i64 %i.jt, 32                ; 4 uses
  %i.jv = call i32 %i.js(ptr noundef %i.jp, i64 noundef %i.ju, i32 noundef range(i32 0, 256) %i.hf, i32 noundef range(i32 0, 1021) %spec.select, i32 noundef 0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #7, !inline_history !95
  %i.jw = load i32, ptr %i.o, align 4, !tbaa !47  ; 4 uses
  %i.jx = load i32, ptr %i.p, align 4, !tbaa !47  ; 4 uses
  %i.jy = add nuw nsw i32 %i.ji, %i.jr
  %i.jz = lshr i32 %i.jy, 1
  %i.ka = add nuw nsw i32 %i.jz, 1
  %i.kb = add i32 %i.ka, %i.jw
  %i.kc = add i32 %i.kb, %i.jx                    ; 3 uses
  %.not.i = icmp eq i32 %i.jv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kd = load ptr, ptr %i.bk, align 8, !tbaa !42
  call void %i.kd(ptr noundef %i.jp, i64 noundef %i.ju, i32 noundef range(i32 0, 256) %i.he, i32 noundef %i.kc, i32 noundef range(i32 -2147483648, 19) %i.jk, i32 noundef 0) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit

bb.t:                                             ; preds = %bb.r
  %i.ke = and i32 %i.jx, %i.jw
  %.not35.i = icmp eq i32 %i.ke, 0
  br i1 %.not35.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kf = load ptr, ptr %i.bl, align 8, !tbaa !42
  call void %i.kf(ptr noundef %i.jp, i64 noundef %i.ju, i32 noundef 1, i32 noundef 1, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.kc, i32 noundef %i.jr, i32 noundef %i.ji) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit

bb.v:                                             ; preds = %bb.t
  %i.kg = or i32 %i.jx, %i.jw
  %.not36.i = icmp eq i32 %i.kg, 0
  br i1 %.not36.i, label %rv40_adaptive_loop_filter.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kh = load ptr, ptr %i.bl, align 8, !tbaa !42
  %i.ki = ashr i32 %i.kc, 1
  %i.kj = lshr i32 %i.jr, 1
  %i.kk = lshr i32 %i.ji, 1
  call void %i.kh(ptr noundef %i.jp, i64 noundef %i.ju, i32 noundef %i.jw, i32 noundef %i.jx, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.ki, i32 noundef %i.kj, i32 noundef %i.kk) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit

rv40_adaptive_loop_filter.exit:                   ; preds = %bb.s, %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  br label %bb.x

bb.x:                                             ; preds = %rv40_adaptive_loop_filter.exit, %bb.q
  %i.kl = and i32 %i.jg, %spec.select299
  %.not283 = icmp eq i32 %i.kl, 0                 ; 2 uses
  br i1 %.not283, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not284 = icmp eq i32 %.2337, 0
  br i1 %.not284, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  br i1 %.not435, label %bb.aa, label %bb.ag

.critedge:                                        ; preds = %bb.y
  %i.km = add nsw i32 %i.jf, -1
  %i.kn = shl nuw nsw i32 1, %i.km
  %i.ko = and i32 %i.kn, %.sroa.12.0
  %.not287 = icmp eq i32 %i.ko, 0
  %i.kp = select i1 %.not287, i32 0, i32 %i.dl
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  %.0250 = phi i32 [ %i.kp, %.critedge ], [ %i.jd, %bb.z ] ; 3 uses
  %i.kq = load i64, ptr %i.bi, align 16, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  %i.kr = load ptr, ptr %i.bm, align 16, !tbaa !42
  %i.ks = shl i64 %i.kq, 32
  %i.kt = ashr exact i64 %i.ks, 32                ; 4 uses
  %i.ku = call i32 %i.kr(ptr noundef %.0257338, i64 noundef %i.kt, i32 noundef range(i32 0, 256) %i.hf, i32 noundef range(i32 0, 1021) %spec.select, i32 noundef 0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #7, !inline_history !95
  %i.kv = load i32, ptr %i.m, align 4, !tbaa !47  ; 4 uses
  %i.kw = load i32, ptr %i.n, align 4, !tbaa !47  ; 4 uses
  %i.kx = add nuw nsw i32 %.0250, %i.ji
  %i.ky = lshr i32 %i.kx, 1
  %i.kz = add nuw nsw i32 %i.ky, 1
  %i.la = add i32 %i.kz, %i.kv
  %i.lb = add i32 %i.la, %i.kw                    ; 3 uses
  %.not.i302 = icmp eq i32 %i.ku, 0
  br i1 %.not.i302, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lc = load ptr, ptr %i.bn, align 16, !tbaa !42
  call void %i.lc(ptr noundef %.0257338, i64 noundef %i.kt, i32 noundef range(i32 0, 256) %i.he, i32 noundef %i.lb, i32 noundef range(i32 -2147483648, 19) %i.jk, i32 noundef 0) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit305

bb.ac:                                            ; preds = %bb.aa
  %i.ld = and i32 %i.kw, %i.kv
  %.not35.i303 = icmp eq i32 %i.ld, 0
  br i1 %.not35.i303, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.le = load ptr, ptr %i.bo, align 16, !tbaa !42
  call void %i.le(ptr noundef %.0257338, i64 noundef %i.kt, i32 noundef 1, i32 noundef 1, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.lb, i32 noundef %i.ji, i32 noundef %.0250) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit305

bb.ae:                                            ; preds = %bb.ac
  %i.lf = or i32 %i.kw, %i.kv
  %.not36.i304 = icmp eq i32 %i.lf, 0
  br i1 %.not36.i304, label %rv40_adaptive_loop_filter.exit305, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lg = load ptr, ptr %i.bo, align 16, !tbaa !42
  %i.lh = ashr i32 %i.lb, 1
  %i.li = lshr i32 %i.ji, 1
  %i.lj = lshr i32 %.0250, 1
  call void %i.lg(ptr noundef %.0257338, i64 noundef %i.kt, i32 noundef %i.kv, i32 noundef %i.kw, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.lh, i32 noundef %i.li, i32 noundef %i.lj) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit305

rv40_adaptive_loop_filter.exit305:                ; preds = %bb.ab, %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  br label %bb.ag

bb.ag:                                            ; preds = %rv40_adaptive_loop_filter.exit305, %bb.z, %bb.x
  br i1 %.not280, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.lk = shl nuw nsw i32 1, %.2337
  %i.ll = and i32 %i.lk, %.1254
  %.not288 = icmp eq i32 %i.ll, 0
  %brmerge352 = or i1 %.not288, %.not436
  br i1 %brmerge352, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lm = load i64, ptr %i.bi, align 16, !tbaa !112
  %i.ln = shl nuw nsw i32 4096, %.2337
  %i.lo = and i32 %.sroa.5.0.a, %i.ln
  %.not290 = icmp eq i32 %i.lo, 0
  %i.lp = select i1 %.not290, i32 0, i32 %i.et    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.lq = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.lr = shl i64 %i.lm, 32
  %i.ls = ashr exact i64 %i.lr, 32                ; 4 uses
  %i.lt = call i32 %i.lq(ptr noundef %.0257338, i64 noundef %i.ls, i32 noundef range(i32 0, 256) %i.hf, i32 noundef range(i32 0, 1021) %spec.select, i32 noundef 1, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7, !inline_history !95
  %i.lu = load i32, ptr %i.k, align 4, !tbaa !47  ; 4 uses
  %i.lv = load i32, ptr %i.l, align 4, !tbaa !47  ; 4 uses
  %i.lw = add nuw nsw i32 %i.lp, %i.ji
  %i.lx = lshr i32 %i.lw, 1
  %i.ly = add nuw nsw i32 %i.lx, 1
  %i.lz = add i32 %i.ly, %i.lu
  %i.ma = add i32 %i.lz, %i.lv                    ; 3 uses
  %.not.i306 = icmp eq i32 %i.lt, 0
  br i1 %.not.i306, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mb = load ptr, ptr %i.bk, align 8, !tbaa !42
  call void %i.mb(ptr noundef %.0257338, i64 noundef %i.ls, i32 noundef range(i32 0, 256) %i.he, i32 noundef %i.ma, i32 noundef range(i32 -2147483648, 19) %i.jj, i32 noundef 0) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit309

bb.ak:                                            ; preds = %bb.ai
  %i.mc = and i32 %i.lv, %i.lu
  %.not35.i307 = icmp eq i32 %i.mc, 0
  br i1 %.not35.i307, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.md = load ptr, ptr %i.bl, align 8, !tbaa !42
  call void %i.md(ptr noundef %.0257338, i64 noundef %i.ls, i32 noundef 1, i32 noundef 1, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.ma, i32 noundef %i.ji, i32 noundef %i.lp) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit309

bb.am:                                            ; preds = %bb.ak
  %i.me = or i32 %i.lv, %i.lu
  %.not36.i308 = icmp eq i32 %i.me, 0
  br i1 %.not36.i308, label %rv40_adaptive_loop_filter.exit309, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mf = load ptr, ptr %i.bl, align 8, !tbaa !42
  %i.mg = ashr i32 %i.ma, 1
  %i.mh = lshr i32 %i.ji, 1
  %i.mi = lshr i32 %i.lp, 1
  call void %i.mf(ptr noundef %.0257338, i64 noundef %i.ls, i32 noundef %i.lu, i32 noundef %i.lv, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.mg, i32 noundef %i.mh, i32 noundef %i.mi) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit309

rv40_adaptive_loop_filter.exit309:                ; preds = %bb.aj, %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %rv40_adaptive_loop_filter.exit309, %bb.ag
  %i.mj = icmp ne i32 %.2337, 0
  %or.cond = or i1 %i.mj, %.not283
  %brmerge353 = or i1 %or.cond, %.not435
  br i1 %brmerge353, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mk = load i64, ptr %i.bi, align 16, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  %i.ml = load ptr, ptr %i.bm, align 16, !tbaa !42
  %i.mm = shl i64 %i.mk, 32
  %i.mn = ashr exact i64 %i.mm, 32                ; 4 uses
  %i.mo = call i32 %i.ml(ptr noundef %.0257338, i64 noundef %i.mn, i32 noundef range(i32 0, 256) %i.hf, i32 noundef range(i32 0, 1021) %spec.select, i32 noundef 1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #7, !inline_history !95
  %i.mp = load i32, ptr %i.i, align 4, !tbaa !47  ; 4 uses
  %i.mq = load i32, ptr %i.j, align 4, !tbaa !47  ; 4 uses
  %i.mr = add nuw nsw i32 %i.jd, %i.ji
  %i.ms = lshr i32 %i.mr, 1
  %i.mt = add nuw nsw i32 %i.ms, 1
  %i.mu = add i32 %i.mt, %i.mp
  %i.mv = add i32 %i.mu, %i.mq                    ; 3 uses
  %.not.i310 = icmp eq i32 %i.mo, 0
  br i1 %.not.i310, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mw = load ptr, ptr %i.bn, align 16, !tbaa !42
  call void %i.mw(ptr noundef %.0257338, i64 noundef %i.mn, i32 noundef range(i32 0, 256) %i.he, i32 noundef %i.mv, i32 noundef range(i32 -2147483648, 19) %i.jk, i32 noundef 0) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit313

bb.ar:                                            ; preds = %bb.ap
  %i.mx = and i32 %i.mq, %i.mp
  %.not35.i311 = icmp eq i32 %i.mx, 0
  br i1 %.not35.i311, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.my = load ptr, ptr %i.bo, align 16, !tbaa !42
  call void %i.my(ptr noundef %.0257338, i64 noundef %i.mn, i32 noundef 1, i32 noundef 1, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.mv, i32 noundef %i.ji, i32 noundef %i.jd) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit313

bb.at:                                            ; preds = %bb.ar
  %i.mz = or i32 %i.mq, %i.mp
  %.not36.i312 = icmp eq i32 %i.mz, 0
  br i1 %.not36.i312, label %rv40_adaptive_loop_filter.exit313, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.na = load ptr, ptr %i.bo, align 16, !tbaa !42
  %i.nb = ashr i32 %i.mv, 1
  %i.nc = lshr i32 %i.ji, 1
  call void %i.na(ptr noundef %.0257338, i64 noundef %i.mn, i32 noundef %i.mp, i32 noundef %i.mq, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.nb, i32 noundef %i.nc, i32 noundef %i.je) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit313

rv40_adaptive_loop_filter.exit313:                ; preds = %bb.aq, %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  br label %bb.av

bb.av:                                            ; preds = %bb.ao, %rv40_adaptive_loop_filter.exit313
  %i.nd = add nuw nsw i32 %.2337, 1               ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.0257338, i64 4
  %exitcond.not = icmp eq i32 %i.nd, 4
  br i1 %exitcond.not, label %bb.aw, label %bb.q, !llvm.loop !96

bb.aw:                                            ; preds = %bb.av
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 4
  %i.nf = icmp samesign ult i64 %indvars.iv363, 12
  br i1 %i.nf, label %bb.p, label %.preheader331, !llvm.loop !97

.preheader:                                       ; preds = %.preheader331, %bb.cf
  %i.ng = phi i1 [ true, %.preheader331 ], [ false, %bb.cf ]
  %indvars.iv369.sroa.phi.sroa.speculated = phi i32 [ %i.hd, %.preheader331 ], [ %i.hc, %bb.cf ] ; 3 uses
  %indvars.iv369.sroa.phi.sroa.speculated454 = phi i32 [ %.sroa.0453.0, %.preheader331 ], [ %.sroa.5.0458, %bb.cf ] ; 2 uses
  %indvars.iv369.sroa.phi = phi ptr [ %.sroa.0456, %.preheader331 ], [ %.sroa.5457, %bb.cf ]
  %indvars.iv369 = phi i64 [ 0, %.preheader331 ], [ 1, %bb.cf ] ; 3 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv369
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv369 ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv369
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %bb.ce
  %.not273 = phi i1 [ false, %.preheader ], [ true, %bb.ce ] ; 2 uses
  %indvars.iv366 = phi i64 [ 0, %.preheader ], [ 1, %bb.ce ] ; 3 uses
  %i.ni = load ptr, ptr %6, align 8, !tbaa !111
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.it
  %i.nk = shl nuw nsw i64 %indvars.iv366, 2
  %i.nl = or disjoint i64 %i.nk, %i.bs
  %i.nm = load i64, ptr %i.bq, align 8, !tbaa !113
  %i.nn = mul nsw i64 %i.nm, %i.nl
  %i.no = getelementptr inbounds i8, ptr %i.nj, i64 %i.nn
  %indvars.iv366.tr = trunc nuw nsw i64 %indvars.iv366 to i32
  %i.np = shl nuw nsw i32 %indvars.iv366.tr, 1    ; 2 uses
  %i.nq = shl nuw nsw i32 2, %i.np                ; 2 uses
  %i.nr = shl nuw nsw i64 %indvars.iv366, 3       ; 2 uses
  %i.ns = trunc nuw nsw i64 %i.nr to i32
  %i.nt = trunc nuw nsw i64 %i.nr to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.cd
  %.0256343 = phi ptr [ %i.no, %bb.ax ], [ %i.rx, %bb.cd ] ; 14 uses
  %.not269 = phi i1 [ true, %bb.ax ], [ false, %bb.cd ]
  %i.nu = phi i1 [ false, %bb.ax ], [ true, %bb.cd ] ; 2 uses
  %.3341 = phi i32 [ 0, %bb.ax ], [ 1, %bb.cd ]   ; 3 uses
  %i.nv = or disjoint i32 %.3341, %i.np           ; 3 uses
  %i.nw = shl nuw nsw i32 1, %i.nv                ; 3 uses
  %i.nx = and i32 %indvars.iv369.sroa.phi.sroa.speculated, %i.nw
  %.not265 = icmp eq i32 %i.nx, 0
  %i.ny = select i1 %.not265, i32 0, i32 %i.dl    ; 12 uses
  %i.nz = shl nuw nsw i32 4, %i.nv                ; 3 uses
  %i.oa = and i32 %indvars.iv369.sroa.phi.sroa.speculated454, %i.nz
  %.not266 = icmp eq i32 %i.oa, 0
  br i1 %.not266, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ob = and i32 %indvars.iv369.sroa.phi.sroa.speculated, %i.nz
  %.not267 = icmp eq i32 %i.ob, 0
  %i.oc = select i1 %.not267, i32 0, i32 %i.dl    ; 3 uses
  %i.od = load i64, ptr %i.bq, align 8, !tbaa !113 ; 2 uses
  %i.oe = shl nsw i64 %i.od, 2
  %i.of = getelementptr inbounds i8, ptr %.0256343, i64 %i.oe ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.og = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.oh = shl i64 %i.od, 32
  %i.oi = ashr exact i64 %i.oh, 32                ; 4 uses
  %i.oj = call i32 %i.og(ptr noundef %i.of, i64 noundef %i.oi, i32 noundef range(i32 0, 256) %i.hf, i32 noundef range(i32 0, 1021) %i.hg, i32 noundef 0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #7, !inline_history !95
  %i.ok = load i32, ptr %i.g, align 4, !tbaa !47  ; 4 uses
  %i.ol = load i32, ptr %i.h, align 4, !tbaa !47  ; 4 uses
  %i.om = add nuw nsw i32 %i.ny, %i.oc
  %i.on = lshr i32 %i.om, 1
  %i.oo = add nuw nsw i32 %i.on, 1
  %i.op = add i32 %i.oo, %i.ok
  %i.oq = add i32 %i.op, %i.ol                    ; 3 uses
  %.not.i314 = icmp eq i32 %i.oj, 0
  br i1 %.not.i314, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.or = shl nuw nsw i32 %.3341, 3
  %i.os = load ptr, ptr %i.bk, align 8, !tbaa !42
  call void %i.os(ptr noundef %i.of, i64 noundef %i.oi, i32 noundef range(i32 0, 256) %i.he, i32 noundef %i.oq, i32 noundef range(i32 -2147483648, 19) %i.or, i32 noundef 1) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit317

bb.bb:                                            ; preds = %bb.az
  %i.ot = and i32 %i.ol, %i.ok
  %.not35.i315 = icmp eq i32 %i.ot, 0
  br i1 %.not35.i315, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ou = load ptr, ptr %i.bl, align 8, !tbaa !42
  call void %i.ou(ptr noundef %i.of, i64 noundef %i.oi, i32 noundef 1, i32 noundef 1, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.oq, i32 noundef %i.oc, i32 noundef %i.ny) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit317

bb.bd:                                            ; preds = %bb.bb
  %i.ov = or i32 %i.ol, %i.ok
  %.not36.i316 = icmp eq i32 %i.ov, 0
  br i1 %.not36.i316, label %rv40_adaptive_loop_filter.exit317, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ow = load ptr, ptr %i.bl, align 8, !tbaa !42
  %i.ox = ashr i32 %i.oq, 1
  %i.oy = lshr i32 %i.oc, 1
  %i.oz = lshr i32 %i.ny, 1
  call void %i.ow(ptr noundef %i.of, i64 noundef %i.oi, i32 noundef %i.ok, i32 noundef %i.ol, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.ox, i32 noundef %i.oy, i32 noundef %i.oz) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit317

rv40_adaptive_loop_filter.exit317:                ; preds = %bb.ba, %bb.bc, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  br label %bb.bf

bb.bf:                                            ; preds = %rv40_adaptive_loop_filter.exit317, %bb.ay
  %8 = load i32, ptr %indvars.iv369.sroa.phi, align 4, !tbaa !47
  %i.pa = and i32 %8, %i.nw
  %.not268 = icmp eq i32 %i.pa, 0                 ; 2 uses
  br i1 %.not268, label %bb.bp, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not269, label %bb.bh, label %.critedge301

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not435, label %bb.bi, label %bb.bp

bb.bi:                                            ; preds = %bb.bh
  %i.pb = load i32, ptr %i.nh, align 4, !tbaa !47
  %i.pc = and i32 %i.pb, %i.nq
  br label %bb.bj

.critedge301:                                     ; preds = %bb.bg
  %i.pd = add nsw i32 %i.nv, -1
  %i.pe = shl nuw nsw i32 1, %i.pd
  %i.pf = and i32 %indvars.iv369.sroa.phi.sroa.speculated, %i.pe
  br label %bb.bj

bb.bj:                                            ; preds = %.critedge301, %bb.bi
  %.sink442 = phi i32 [ %i.pf, %.critedge301 ], [ %i.pc, %bb.bi ]
  %.sink = phi i32 [ %i.dl, %.critedge301 ], [ %i.gb, %bb.bi ]
  %.not272 = icmp eq i32 %.sink442, 0
  %i.pg = select i1 %.not272, i32 0, i32 %.sink   ; 3 uses
  %i.ph = load i64, ptr %i.bq, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.pi = load ptr, ptr %i.bm, align 16, !tbaa !42
  %i.pj = shl i64 %i.ph, 32
  %i.pk = ashr exact i64 %i.pj, 32                ; 4 uses
  %i.pl = call i32 %i.pi(ptr noundef %.0256343, i64 noundef %i.pk, i32 noundef range(i32 0, 256) %i.hf, i32 noundef range(i32 0, 1021) %i.hg, i32 noundef 0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #7, !inline_history !95
  %i.pm = load i32, ptr %i.e, align 4, !tbaa !47  ; 4 uses
  %i.pn = load i32, ptr %i.f, align 4, !tbaa !47  ; 4 uses
  %i.po = add nuw nsw i32 %i.pg, %i.ny
  %i.pp = lshr i32 %i.po, 1
  %i.pq = add nuw nsw i32 %i.pp, 1
  %i.pr = add i32 %i.pq, %i.pm
  %i.ps = add i32 %i.pr, %i.pn                    ; 3 uses
  %.not.i318 = icmp eq i32 %i.pl, 0
  br i1 %.not.i318, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pt = load ptr, ptr %i.bn, align 16, !tbaa !42
  call void %i.pt(ptr noundef %.0256343, i64 noundef %i.pk, i32 noundef range(i32 0, 256) %i.he, i32 noundef %i.ps, i32 noundef range(i32 -2147483648, 19) %i.ns, i32 noundef 1) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit321

bb.bl:                                            ; preds = %bb.bj
  %i.pu = and i32 %i.pn, %i.pm
  %.not35.i319 = icmp eq i32 %i.pu, 0
  br i1 %.not35.i319, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pv = load ptr, ptr %i.bo, align 16, !tbaa !42
  call void %i.pv(ptr noundef %.0256343, i64 noundef %i.pk, i32 noundef 1, i32 noundef 1, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.ps, i32 noundef %i.ny, i32 noundef %i.pg) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit321

bb.bn:                                            ; preds = %bb.bl
  %i.pw = or i32 %i.pn, %i.pm
  %.not36.i320 = icmp eq i32 %i.pw, 0
  br i1 %.not36.i320, label %rv40_adaptive_loop_filter.exit321, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.px = load ptr, ptr %i.bo, align 16, !tbaa !42
  %i.py = ashr i32 %i.ps, 1
  %i.pz = lshr i32 %i.ny, 1
  %i.qa = lshr i32 %i.pg, 1
  call void %i.px(ptr noundef %.0256343, i64 noundef %i.pk, i32 noundef %i.pm, i32 noundef %i.pn, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.py, i32 noundef %i.pz, i32 noundef %i.qa) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit321

rv40_adaptive_loop_filter.exit321:                ; preds = %bb.bk, %bb.bm, %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.bp

bb.bp:                                            ; preds = %rv40_adaptive_loop_filter.exit321, %bb.bh, %bb.bf
  %i.qb = and i32 %indvars.iv369.sroa.phi.sroa.speculated454, %i.nw
  %.not274 = icmp eq i32 %i.qb, 0
  %or.cond330 = select i1 %.not273, i1 true, i1 %.not274
  %brmerge354 = or i1 %or.cond330, %.not436
  br i1 %brmerge354, label %bb.bw, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qc = load i32, ptr %7, align 4, !tbaa !47
  %i.qd = and i32 %i.qc, %i.nz
  %.not276 = icmp eq i32 %i.qd, 0
  %i.qe = select i1 %.not276, i32 0, i32 %i.et    ; 3 uses
  %i.qf = load i64, ptr %i.bq, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.qg = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.qh = shl i64 %i.qf, 32
  %i.qi = ashr exact i64 %i.qh, 32                ; 4 uses
  %i.qj = call i32 %i.qg(ptr noundef %.0256343, i64 noundef %i.qi, i32 noundef range(i32 0, 256) %i.hf, i32 noundef range(i32 0, 1021) %i.hg, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #7, !inline_history !95
  %i.qk = load i32, ptr %i.c, align 4, !tbaa !47  ; 4 uses
  %i.ql = load i32, ptr %i.d, align 4, !tbaa !47  ; 4 uses
  %i.qm = add nuw nsw i32 %i.qe, %i.ny
  %i.qn = lshr i32 %i.qm, 1
  %i.qo = add nuw nsw i32 %i.qn, 1
  %i.qp = add i32 %i.qo, %i.qk
  %i.qq = add i32 %i.qp, %i.ql                    ; 3 uses
  %.not.i322 = icmp eq i32 %i.qj, 0
  br i1 %.not.i322, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qr = shl nuw nsw i32 %.3341, 3
  %i.qs = load ptr, ptr %i.bk, align 8, !tbaa !42
  call void %i.qs(ptr noundef %.0256343, i64 noundef %i.qi, i32 noundef range(i32 0, 256) %i.he, i32 noundef %i.qq, i32 noundef range(i32 -2147483648, 19) %i.qr, i32 noundef 1) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit325

bb.bs:                                            ; preds = %bb.bq
  %i.qt = and i32 %i.ql, %i.qk
  %.not35.i323 = icmp eq i32 %i.qt, 0
  br i1 %.not35.i323, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qu = load ptr, ptr %i.bl, align 8, !tbaa !42
  call void %i.qu(ptr noundef %.0256343, i64 noundef %i.qi, i32 noundef 1, i32 noundef 1, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.qq, i32 noundef %i.ny, i32 noundef %i.qe) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit325

bb.bu:                                            ; preds = %bb.bs
  %i.qv = or i32 %i.ql, %i.qk
  %.not36.i324 = icmp eq i32 %i.qv, 0
  br i1 %.not36.i324, label %rv40_adaptive_loop_filter.exit325, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qw = load ptr, ptr %i.bl, align 8, !tbaa !42
  %i.qx = ashr i32 %i.qq, 1
  %i.qy = lshr i32 %i.ny, 1
  %i.qz = lshr i32 %i.qe, 1
  call void %i.qw(ptr noundef %.0256343, i64 noundef %i.qi, i32 noundef %i.qk, i32 noundef %i.ql, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.qx, i32 noundef %i.qy, i32 noundef %i.qz) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit325

rv40_adaptive_loop_filter.exit325:                ; preds = %bb.br, %bb.bt, %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bp, %rv40_adaptive_loop_filter.exit325
  %or.cond3 = or i1 %i.nu, %.not268
  %brmerge355 = or i1 %or.cond3, %.not435
  br i1 %brmerge355, label %bb.cd, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ra = load i32, ptr %i.nh, align 4, !tbaa !47
  %i.rb = and i32 %i.ra, %i.nq
  %.not278 = icmp eq i32 %i.rb, 0
  %i.rc = select i1 %.not278, i32 0, i32 %i.gb    ; 3 uses
  %i.rd = load i64, ptr %i.bq, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.re = load ptr, ptr %i.bm, align 16, !tbaa !42
  %i.rf = shl i64 %i.rd, 32
  %i.rg = ashr exact i64 %i.rf, 32                ; 4 uses
  %i.rh = call i32 %i.re(ptr noundef %.0256343, i64 noundef %i.rg, i32 noundef range(i32 0, 256) %i.hf, i32 noundef range(i32 0, 1021) %i.hg, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7, !inline_history !95
  %i.ri = load i32, ptr %i.a, align 4, !tbaa !47  ; 4 uses
  %i.rj = load i32, ptr %i.b, align 4, !tbaa !47  ; 4 uses
  %i.rk = add nuw nsw i32 %i.rc, %i.ny
  %i.rl = lshr i32 %i.rk, 1
  %i.rm = add nuw nsw i32 %i.rl, 1
  %i.rn = add i32 %i.rm, %i.ri
  %i.ro = add i32 %i.rn, %i.rj                    ; 3 uses
  %.not.i326 = icmp eq i32 %i.rh, 0
  br i1 %.not.i326, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.rp = load ptr, ptr %i.bn, align 16, !tbaa !42
  call void %i.rp(ptr noundef %.0256343, i64 noundef %i.rg, i32 noundef range(i32 0, 256) %i.he, i32 noundef %i.ro, i32 noundef range(i32 -2147483648, 19) %i.nt, i32 noundef 1) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit329

bb.bz:                                            ; preds = %bb.bx
  %i.rq = and i32 %i.rj, %i.ri
  %.not35.i327 = icmp eq i32 %i.rq, 0
  br i1 %.not35.i327, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rr = load ptr, ptr %i.bo, align 16, !tbaa !42
  call void %i.rr(ptr noundef %.0256343, i64 noundef %i.rg, i32 noundef 1, i32 noundef 1, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.ro, i32 noundef %i.ny, i32 noundef %i.rc) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit329

bb.cb:                                            ; preds = %bb.bz
  %i.rs = or i32 %i.rj, %i.ri
  %.not36.i328 = icmp eq i32 %i.rs, 0
  br i1 %.not36.i328, label %rv40_adaptive_loop_filter.exit329, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rt = load ptr, ptr %i.bo, align 16, !tbaa !42
  %i.ru = ashr i32 %i.ro, 1
  %i.rv = lshr i32 %i.ny, 1
  %i.rw = lshr i32 %i.rc, 1
  call void %i.rt(ptr noundef %.0256343, i64 noundef %i.rg, i32 noundef %i.ri, i32 noundef %i.rj, i32 noundef range(i32 0, 256) %i.he, i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.ru, i32 noundef %i.rv, i32 noundef %i.rw) #7, !inline_history !95
  br label %rv40_adaptive_loop_filter.exit329

rv40_adaptive_loop_filter.exit329:                ; preds = %bb.by, %bb.ca, %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bw, %rv40_adaptive_loop_filter.exit329
  %i.rx = getelementptr inbounds nuw i8, ptr %.0256343, i64 4
  br i1 %i.nu, label %bb.ce, label %bb.ay, !llvm.loop !98

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not273, label %bb.cf, label %bb.ax, !llvm.loop !99

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.ng, label %.preheader, label %bb.cg, !llvm.loop !100

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0456)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5457)
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %indvars.iv.next373 = add nsw i64 %indvars.iv372, 1
  %i.ry = load i32, ptr %i.s, align 4, !tbaa !102
  %i.rz = sext i32 %i.ry to i64
  %i.sa = icmp slt i64 %indvars.iv.next375, %i.rz
  br i1 %i.sa, label %bb.e, label %._crit_edge351.loopexit, !llvm.loop !101

._crit_edge351.loopexit:                          ; preds = %bb.cg
  store i32 %i.da, ptr %i.bu, align 4, !tbaa !47
  store i32 %i.cy, ptr %i.q, align 16, !tbaa !47
  store i32 %i.hb, ptr %i.bz, align 4
  store i32 %i.ha, ptr %i.be, align 8
  br label %._crit_edge351

._crit_edge351:                                   ; preds = %._crit_edge351.loopexit, %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  ret void
}

declare void @ff_rv40dsp_init(ptr noundef) local_unnamed_addr #0

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind optsize uwtable
define internal void @rv40_init_tables() #1 {
bb.a:
  %0 = alloca %struct.VLCInitState, align 8       ; 8 uses
  %i.a = alloca [81 x i16], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @__const.rv40_init_tables.state, i64 16, i1 false)
  %i.b = call ptr @ff_vlc_init_tables_from_lengths(ptr noundef nonnull %0, i32 noundef 7, i32 noundef 16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rv40_aic_top_vlc_tab, i64 1), i32 noundef 2, ptr noundef nonnull @rv40_aic_top_vlc_tab, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i8
  %i.c = urem i8 %.lhs.trunc, 10
  %i.d = icmp eq i8 %i.c, 9
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [18 x i8], ptr @aic_mode1_vlc_tabs, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = call ptr @ff_vlc_init_tables_from_lengths(ptr noundef nonnull %0, i32 noundef 7, i32 noundef 9, ptr noundef nonnull %i.f, i32 noundef 2, ptr noundef nonnull %i.e, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @aic_mode1_vlc, i64 %indvars.iv
  store ptr %i.g, ptr %i.h, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 90
  br i1 %exitcond.not, label %.preheader29, label %bb.b, !llvm.loop !114

.preheader29:                                     ; preds = %bb.d, %bb.e
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb.e ], [ 0, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.i = getelementptr inbounds nuw [81 x i8], ptr @aic_mode2_vlc_syms, i64 %indvars.iv40
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw [81 x i8], ptr @aic_mode2_vlc_bits, i64 %indvars.iv40
  %i.k = call ptr @ff_vlc_init_tables_from_lengths(ptr noundef nonnull %0, i32 noundef 9, i32 noundef 81, ptr noundef nonnull %i.j, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0) #7
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @aic_mode2_vlc, i64 %indvars.iv40
  store ptr %i.k, ptr %i.l, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, 20
  br i1 %exitcond43.not, label %.preheader28, label %.preheader29, !llvm.loop !115

bb.f:                                             ; preds = %.preheader29, %bb.f
  %indvars.iv36 = phi i64 [ 0, %.preheader29 ], [ %indvars.iv.next37, %bb.f ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv36
  %i.n = load i8, ptr %i.m, align 1, !tbaa !45
  %i.o = zext i8 %i.n to i16                      ; 2 uses
  %i.p = lshr i16 %i.o, 4
  %i.q = shl nuw i16 %i.o, 8
  %i.r = and i16 %i.q, 3840
  %i.s = or disjoint i16 %i.r, %i.p
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv36
  store i16 %i.s, ptr %i.t, align 2, !tbaa !52
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next37, 81
  br i1 %exitcond39.not, label %bb.e, label %bb.f, !llvm.loop !116

.preheader28:                                     ; preds = %bb.e, %.preheader28
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.preheader28 ], [ 0, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr @ptype_vlc_tabs, i64 %indvars.iv44 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = call ptr @ff_vlc_init_tables_from_lengths(ptr noundef nonnull %0, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %i.v, i32 noundef 2, ptr noundef nonnull %i.u, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @ptype_vlc, i64 %indvars.iv44
  store ptr %i.w, ptr %i.x, align 8, !tbaa !50
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, 7
  br i1 %exitcond47.not, label %.preheader, label %.preheader28, !llvm.loop !117

.preheader:                                       ; preds = %.preheader28, %.preheader
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.preheader ], [ 0, %.preheader28 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [14 x i8], ptr @btype_vlc_tabs, i64 %indvars.iv48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = call ptr @ff_vlc_init_tables_from_lengths(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 7, ptr noundef nonnull %i.z, i32 noundef 2, ptr noundef nonnull %i.y, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @btype_vlc, i64 %indvars.iv48
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !50
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next49, 6
  br i1 %exitcond51.not, label %bb.g, label %.preheader, !llvm.loop !118

bb.g:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ff_rv34_get_start_offset(ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @ff_vlc_init_tables_from_lengths(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #6

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 short", !9, i64 0}
!14 = !{!"p1 int", !9, i64 0}
!15 = !{!"ScanTable", !12, i64 0, !5, i64 8, !5, i64 72}
!16 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!17 = !{!"p1 _ZTS15AVRefStructPool", !9, i64 0}
!18 = !{!"BufferPoolContext", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!19 = !{!"p1 _ZTS10MPVPicture", !9, i64 0}
!20 = !{!"MPVWorkPicture", !5, i64 0, !5, i64 24, !19, i64 48, !12, i64 56, !5, i64 64, !14, i64 80, !12, i64 88, !5, i64 96, !6, i64 112}
!21 = !{!"ScratchpadContext", !12, i64 0, !12, i64 8, !5, i64 16, !6, i64 24}
!22 = !{!"BlockDSPContext", !9, i64 0, !9, i64 8, !5, i64 16}
!23 = !{!"H264ChromaContext", !5, i64 0, !5, i64 32}
!24 = !{!"HpelDSPContext", !5, i64 0, !5, i64 128, !5, i64 256, !5, i64 352}
!25 = !{!"IDCTDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !6, i64 112, !6, i64 116}
!26 = !{!"QpelDSPContext", !5, i64 0, !5, i64 256, !5, i64 512}
!27 = !{!"VideoDSPContext", !9, i64 0, !9, i64 8}
!28 = !{!"H263DSPContext", !9, i64 0, !9, i64 8}
!29 = !{!"short", !5, i64 0}
!30 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!31 = !{!"p1 _ZTS11ThreadFrame", !9, i64 0}
!32 = !{!"p1 _ZTS14ThreadProgress", !9, i64 0}
!33 = !{!"ERPicture", !30, i64 0, !31, i64 8, !32, i64 16, !5, i64 24, !5, i64 40, !14, i64 56, !6, i64 64}
!34 = !{!"ERContext", !16, i64 0, !9, i64 8, !14, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !11, i64 40, !11, i64 48, !5, i64 56, !6, i64 60, !12, i64 64, !12, i64 72, !5, i64 80, !12, i64 104, !12, i64 112, !5, i64 120, !33, i64 184, !33, i64 256, !33, i64 328, !5, i64 400, !5, i64 416, !29, i64 432, !29, i64 434, !6, i64 436, !6, i64 440, !9, i64 448, !9, i64 456}
!35 = !{!"MpegEncContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !6, i64 68, !15, i64 72, !15, i64 208, !16, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !11, i64 416, !11, i64 424, !17, i64 432, !18, i64 440, !6, i64 496, !6, i64 500, !5, i64 504, !6, i64 760, !20, i64 768, !20, i64 888, !20, i64 1008, !13, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !13, i64 1176, !13, i64 1184, !13, i64 1192, !6, i64 1200, !12, i64 1208, !12, i64 1216, !12, i64 1224, !12, i64 1232, !21, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !22, i64 1288, !23, i64 1320, !24, i64 1384, !25, i64 1768, !26, i64 1888, !27, i64 2656, !28, i64 2672, !13, i64 2688, !5, i64 2696, !6, i64 2728, !6, i64 2732, !5, i64 2736, !5, i64 2800, !5, i64 2816, !5, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !5, i64 3120, !5, i64 3144, !5, i64 3168, !14, i64 3192, !5, i64 3200, !5, i64 3328, !5, i64 3456, !5, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !11, i64 3744, !11, i64 3752, !29, i64 3760, !29, i64 3762, !29, i64 3764, !29, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !5, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !5, i64 3872, !6, i64 3880, !6, i64 3884, !9, i64 3888, !9, i64 3896, !6, i64 3904, !6, i64 3908, !34, i64 3912}
!36 = !{!"GetBitContext", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!37 = !{!"RV34DSPContext", !5, i64 0, !5, i64 256, !5, i64 512, !5, i64 528, !5, i64 544, !9, i64 576, !9, i64 584, !9, i64 592, !9, i64 600, !5, i64 608, !5, i64 624, !5, i64 640}
!38 = !{!"p1 _ZTS7RV34VLC", !9, i64 0}
!39 = !{!"H264PredContext", !5, i64 0, !5, i64 120, !5, i64 216, !5, i64 304, !5, i64 376, !5, i64 392, !5, i64 408, !5, i64 424, !5, i64 448}
!40 = !{!"SliceInfo", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!41 = !{!"RV34DecContext", !35, i64 0, !36, i64 4384, !37, i64 4408, !12, i64 5064, !12, i64 5072, !6, i64 5080, !12, i64 5088, !12, i64 5096, !38, i64 5104, !39, i64 5112, !40, i64 5584, !6, i64 5616, !6, i64 5620, !14, i64 5624, !6, i64 5632, !6, i64 5636, !6, i64 5640, !6, i64 5644, !5, i64 5648, !6, i64 5680, !6, i64 5684, !6, i64 5688, !6, i64 5692, !6, i64 5696, !6, i64 5700, !6, i64 5704, !6, i64 5708, !6, i64 5712, !6, i64 5716, !6, i64 5720, !6, i64 5724, !13, i64 5728, !12, i64 5736, !13, i64 5744, !5, i64 5760, !5, i64 5792, !5, i64 5840, !5, i64 5856, !12, i64 5888, !9, i64 5896, !9, i64 5904, !9, i64 5912, !9, i64 5920}
!42 = !{!9, !9, i64 0}
!43 = !{!36, !6, i64 8}
!44 = !{!36, !12, i64 0}
!45 = !{!5, !5, i64 0}
!46 = !{!36, !6, i64 16}
!47 = !{!6, !6, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"p1 _ZTS7VLCElem", !9, i64 0}
end_hunk_0
