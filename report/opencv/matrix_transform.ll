Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_transform?download=true
inline.NumInlined: 867
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayE:bb.a
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = and i32 %i.gl, 15
  %i.gn = mul nuw nsw i32 %i.gm, %i.gg
  %i.go = zext nneg i32 %i.gn to i64              ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bl, %bb.bg
  %.0295 = phi i64 [ 0, %bb.bg ], [ %i.gv, %bb.bl ] ; 3 uses
  %i.gp = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.gq = icmp ult i64 %.0295, %i.gp
  br i1 %i.gq, label %bb.bl, label %.loopexit

bb.bj:                                            ; preds = %bb.be
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.bk:                                            ; preds = %bb.bh
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.bl:                                            ; preds = %bb.bi
  %i.gt = mul i64 %.0295, %i.go
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr align 1 %i.ga, i64 %i.go, i1 false)
  %i.gv = add nuw i64 %.0295, 1
  br label %bb.bh, !llvm.loop !160

bb.bm:                                            ; preds = %bb.bf, %bb.bd
  %i.gw = load i32, ptr %i.ab, align 4, !tbaa !62 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !62 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ha = shl i64 %i.w, 2
  %i.hb = and i64 %i.ha, 4294967292               ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.hc, ptr %8, align 8, !tbaa !220
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i32 %i.x, 34
  store i64 %i.hb, ptr %i.hd, align 8, !tbaa !221
  br i1 %.not.i.i, label %bb.bn, label %_ZN2cv10AutoBufferImLm136EEC2Em.exit

bb.bn:                                            ; preds = %bb.bm
  %i.he = shl nuw nsw i64 %i.hb, 3
  %i.hf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.he) #18
          to label %.noexc346 unwind label %bb.cb ; 2 uses

.noexc346:                                        ; preds = %bb.bn
  store ptr %i.hf, ptr %8, align 8, !tbaa !220
  br label %_ZN2cv10AutoBufferImLm136EEC2Em.exit

_ZN2cv10AutoBufferImLm136EEC2Em.exit:             ; preds = %.noexc346, %bb.bm
  %i.hg = phi ptr [ %i.hf, %.noexc346 ], [ %i.hc, %bb.bm ] ; 17 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.ay ; 19 uses
  %i.hi = shl i64 %i.w, 1
  %i.hj = and i64 %i.hi, 4294967294
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hj ; 18 uses
  %i.hl = mul i64 %i.w, 3
  %i.hm = and i64 %i.hl, 4294967295               ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hm ; 19 uses
  %i.ho = add nsw i32 %i.x, -1                    ; 6 uses
  %i.hp = icmp slt i32 %i.x, 1
  br i1 %i.hp, label %.preheader142.preheader.i, label %.preheader149.split.us.preheader.peel.i

.preheader149.split.us.preheader.peel.i:          ; preds = %_ZN2cv10AutoBufferImLm136EEC2Em.exit
  %i.hq = zext nneg i32 %i.ho to i64              ; 9 uses
  %i.hr = add i32 %i.gw, -1                       ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, -1
  br i1 %i.hs, label %bb.bo, label %.thread.i

.thread.i:                                        ; preds = %.preheader149.split.us.preheader.peel.i
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hq
  store i32 1, ptr %i.ht, align 4, !tbaa !16
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hq
  store i64 1, ptr %i.hu, align 8, !tbaa !15
  br label %.preheader149.split.us.1.peel.i

bb.bo:                                            ; preds = %.preheader149.split.us.preheader.peel.i
  %i.hv = zext nneg i32 %i.hr to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !16 ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hq
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !16
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hq
  store i64 1, ptr %i.hz, align 8, !tbaa !15
  %.not139.us.peel.i = icmp eq i32 %i.hx, 0
  br i1 %.not139.us.peel.i, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i, label %.preheader149.split.us.1.peel.i

.preheader149.split.us.1.peel.i:                  ; preds = %bb.bo, %.thread.i
  %i.ia = add i32 %i.gy, -1                       ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, -1
  br i1 %i.ib, label %bb.bp, label %.thread226.i

.thread226.i:                                     ; preds = %.preheader149.split.us.1.peel.i
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hq
  store i32 1, ptr %i.ic, align 4, !tbaa !16
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hq
  store i64 1, ptr %i.id, align 8, !tbaa !15
  br label %.split.us.peel.i

bb.bp:                                            ; preds = %.preheader149.split.us.1.peel.i
  %i.ie = zext nneg i32 %i.ia to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !16 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hq
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !16
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hq
  store i64 1, ptr %i.ii, align 8, !tbaa !15
  %.not139.us.1.peel.i = icmp eq i32 %i.ig, 0
  br i1 %.not139.us.1.peel.i, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i, label %.split.us.peel.i

.split.us.peel.i:                                 ; preds = %bb.bp, %.thread226.i
  %i.ij = icmp eq i32 %i.ho, 0
  br i1 %i.ij, label %.preheader142.preheader.i, label %.preheader149.split.preheader.i

.preheader149.split.preheader.i:                  ; preds = %.split.us.peel.i, %.split.us.i
  %indvars.iv.in.i = phi i64 [ %indvars.iv.i, %.split.us.i ], [ %i.hq, %.split.us.peel.i ] ; 10 uses
  %indvars.iv.i = add nsw i64 %indvars.iv.in.i, -1 ; 10 uses
  %i.ik = trunc i64 %indvars.iv.i to i32
  %i.il = sub i32 %i.ik, %i.x                     ; 2 uses
  %i.im = add i32 %i.il, %i.gw                    ; 2 uses
  %i.in = icmp sgt i32 %i.im, -1
  br i1 %i.in, label %bb.br, label %.thread230.i

.thread230.i:                                     ; preds = %.preheader149.split.preheader.i
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.in.i
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !15
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.in.i
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !16
  %i.is = sext i32 %i.ir to i64
  %i.it = mul i64 %i.ip, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i
  store i32 1, ptr %i.iu, align 4, !tbaa !16
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.i
  store i64 %i.it, ptr %i.iv, align 8, !tbaa !15
  br label %.preheader149.split.1.i

.preheader149.split.1.i:                          ; preds = %bb.br, %.thread230.i
  %i.iw = add i32 %i.il, %i.gy                    ; 2 uses
  %i.ix = icmp sgt i32 %i.iw, -1
  br i1 %i.ix, label %bb.bq, label %.thread228.i

.thread228.i:                                     ; preds = %.preheader149.split.1.i
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.in.i
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !15
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.in.i
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !16
  %i.jc = sext i32 %i.jb to i64
  %i.jd = mul i64 %i.iz, %i.jc
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i
  store i32 1, ptr %i.je, align 4, !tbaa !16
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.i
  store i64 %i.jd, ptr %i.jf, align 8, !tbaa !15
  br label %.split.us.i

bb.bq:                                            ; preds = %.preheader149.split.1.i
  %i.jg = zext nneg i32 %i.iw to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !16 ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.in.i
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !15
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.in.i
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !16
  %i.jn = sext i32 %i.jm to i64
  %i.jo = mul i64 %i.jk, %i.jn
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i
  store i32 %i.ji, ptr %i.jp, align 4, !tbaa !16
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.i
  store i64 %i.jo, ptr %i.jq, align 8, !tbaa !15
  %.not139.1.i = icmp eq i32 %i.ji, 0
  br i1 %.not139.1.i, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i, label %.split.us.i

bb.br:                                            ; preds = %.preheader149.split.preheader.i
  %i.jr = zext nneg i32 %i.im to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !16 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.in.i
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !15
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.in.i
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !16
  %i.jy = sext i32 %i.jx to i64
  %i.jz = mul i64 %i.jv, %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i
  store i32 %i.jt, ptr %i.ka, align 4, !tbaa !16
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.i
  store i64 %i.jz, ptr %i.kb, align 8, !tbaa !15
  %.not139.i = icmp eq i32 %i.jt, 0
  br i1 %.not139.i, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i, label %.preheader149.split.1.i

.split.us.i:                                      ; preds = %bb.bq, %.thread228.i
  %i.kc = icmp samesign ult i64 %indvars.iv.in.i, 2
  br i1 %i.kc, label %._crit_edge.i, label %.preheader149.split.preheader.i, !llvm.loop !161

._crit_edge.i:                                    ; preds = %.split.us.i
  %.not.i347 = icmp eq i32 %i.x, 1
  br i1 %.not.i347, label %.preheader142.preheader.i, label %.preheader148.preheader.i

.preheader148.preheader.i:                        ; preds = %._crit_edge.i
  %i.kd = add i64 %i.w, 4294967294
  %i.ke = and i64 %i.kd, 4294967295
  br label %bb.bs

.preheader143.i:                                  ; preds = %.loopexit145.i
  %.not164.not.i = icmp slt i32 %.1126.i, %i.x
  br i1 %.not164.not.i, label %.preheader142.preheader.i, label %.preheader141.i

.preheader142.preheader.i:                        ; preds = %_ZN2cv10AutoBufferImLm136EEC2Em.exit, %._crit_edge.i, %.split.us.peel.i, %.preheader143.i
  %.0125.lcssa.i471 = phi i32 [ %.1126.i, %.preheader143.i ], [ 0, %.split.us.peel.i ], [ %i.ho, %_ZN2cv10AutoBufferImLm136EEC2Em.exit ], [ 0, %._crit_edge.i ]
  %i.kf = add nsw i64 %i.ay, -1
  %i.kg = sext i32 %.0125.lcssa.i471 to i64
  br label %.preheader142.i

bb.bs:                                            ; preds = %.loopexit145.i, %.preheader148.preheader.i
  %indvars.iv189.i = phi i64 [ %i.ke, %.preheader148.preheader.i ], [ %indvars.iv.next190.i, %.loopexit145.i ] ; 8 uses
  %.0125161.i = phi i32 [ %i.ho, %.preheader148.preheader.i ], [ %.1126.i, %.loopexit145.i ] ; 3 uses
  %i.kh = sext i32 %.0125161.i to i64             ; 4 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.kh ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !16 ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv189.i
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !16 ; 3 uses
  %i.km = icmp eq i32 %i.kl, 1                    ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.kh
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !15
  %i.kp = sext i32 %i.kj to i64
  %i.kq = mul i64 %i.ko, %i.kp
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv189.i
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !15 ; 2 uses
  %i.kt = icmp eq i64 %i.kq, %i.ks
  %i.ku = icmp ne i32 %i.kj, 1
  %i.kv = xor i1 %i.ku, %i.km
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.kh ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !16 ; 3 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv189.i ; 3 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !16
  %i.la = icmp eq i32 %i.kz, 1                    ; 2 uses
  br i1 %i.kt, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.kh
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !15
  %i.ld = sext i32 %i.kx to i64
  %i.le = mul i64 %i.lc, %i.ld
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv189.i
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !15
  %i.lh = icmp eq i64 %i.le, %i.lg
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.li = phi i1 [ false, %bb.bs ], [ %i.lh, %bb.bt ]
  %i.lj = select i1 %i.km, i1 %i.la, i1 false     ; 2 uses
  br i1 %i.kv, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.lk = icmp ne i32 %i.kx, 1
  %i.ll = xor i1 %i.lk, %i.la
  %i.lm = select i1 %i.ll, i1 true, i1 %i.lj
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %or.cond.i = phi i1 [ %i.lj, %bb.bu ], [ %i.lm, %bb.bv ]
  %or.cond140.i = select i1 %i.li, i1 %or.cond.i, i1 false
  br i1 %or.cond140.i, label %.preheader144.i, label %bb.bx

.preheader144.i:                                  ; preds = %bb.bw
  %i.ln = mul nsw i32 %i.kl, %i.kj
  store i32 %i.ln, ptr %i.ki, align 4, !tbaa !16
  %i.lo = load i32, ptr %i.ky, align 4, !tbaa !16
  %i.lp = mul nsw i32 %i.lo, %i.kx
  store i32 %i.lp, ptr %i.kw, align 4, !tbaa !16
  br label %.loopexit145.i

bb.bx:                                            ; preds = %bb.bw
  %i.lq = add nsw i32 %.0125161.i, -1             ; 4 uses
  %i.lr = sext i32 %i.lq to i64
  %i.ls = icmp slt i64 %indvars.iv189.i, %i.lr
  br i1 %i.ls, label %.preheader146.i, label %.loopexit145.i

.preheader146.i:                                  ; preds = %bb.bx
  %i.lt = zext nneg i32 %i.lq to i64              ; 4 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.lt
  store i32 %i.kl, ptr %i.lu, align 4, !tbaa !16
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.lt
  store i64 %i.ks, ptr %i.lv, align 8, !tbaa !15
  %i.lw = load i32, ptr %i.ky, align 4, !tbaa !16
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.lt
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !16
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv189.i
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !15
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.lt
  store i64 %i.lz, ptr %i.ma, align 8, !tbaa !15
  br label %.loopexit145.i

.loopexit145.i:                                   ; preds = %.preheader146.i, %bb.bx, %.preheader144.i
  %.1126.i = phi i32 [ %i.lq, %bb.bx ], [ %.0125161.i, %.preheader144.i ], [ %i.lq, %.preheader146.i ] ; 3 uses
  %indvars.iv.next190.i = add nsw i64 %indvars.iv189.i, -1
  %i.mb = icmp sgt i64 %indvars.iv189.i, 0
  br i1 %i.mb, label %bb.bs, label %.preheader143.i, !llvm.loop !162

.preheader142.i:                                  ; preds = %._crit_edge208.i, %.preheader142.preheader.i
  %indvars.iv195.i = phi i64 [ %i.kf, %.preheader142.preheader.i ], [ %indvars.iv.next196.i, %._crit_edge208.i ] ; 8 uses
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %indvars.iv195.i
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !16
  %i.me = icmp eq i32 %i.md, 1
  br i1 %i.me, label %bb.bz, label %bb.by

.preheader141.loopexit.i:                         ; preds = %._crit_edge208.i
  %i.mf = trunc nsw i64 %indvars.iv.next196.i to i32
  br label %.preheader141.i

.preheader141.i:                                  ; preds = %.preheader141.loopexit.i, %.preheader143.i
  %.2129.lcssa.i = phi i32 [ %i.ho, %.preheader143.i ], [ %i.mf, %.preheader141.loopexit.i ] ; 3 uses
  %i.mg = icmp sgt i32 %.2129.lcssa.i, -1
  br i1 %i.mg, label %.preheader.preheader.i, label %_ZN2cvL22_flatten_for_broadcastEiiPKiPS1_PPiPPm.exit

.preheader.preheader.i:                           ; preds = %.preheader141.i
  %i.mh = zext nneg i32 %.2129.lcssa.i to i64     ; 5 uses
  %i.mi = add nuw nsw i64 %i.mh, 1                ; 2 uses
  %min.iters.check854 = icmp ult i32 %.2129.lcssa.i, 17
  br i1 %min.iters.check854, label %.preheader.i.preheader, label %vector.memcheck849

vector.memcheck849:                               ; preds = %.preheader.preheader.i
  %i.mj = shl i64 %i.w, 4
  %i.mk = and i64 %i.mj, 34359738352
  %i.ml = shl nuw nsw i64 %i.hm, 3
  %i.mm = sub nsw i64 %i.ml, %i.mk
  %diff.check850 = icmp ugt i64 %i.mm, -32
  %diff.check851 = icmp ugt i64 %sext, -8589934592
  %conflict.rdx852 = or i1 %diff.check850, %diff.check851
  br i1 %conflict.rdx852, label %.preheader.i.preheader, label %vector.ph855

vector.ph855:                                     ; preds = %vector.memcheck849
  %n.vec856 = and i64 %i.mi, 4294967292           ; 3 uses
  %i.mn = sub nsw i64 %i.mh, %n.vec856
  br label %vector.body857

vector.body857:                                   ; preds = %vector.body857, %vector.ph855
  %index858 = phi i64 [ 0, %vector.ph855 ], [ %index.next859, %vector.body857 ] ; 2 uses
  %i.mo = sub i64 %i.mh, %index858                ; 4 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 -8
  %i.mr = getelementptr inbounds i8, ptr %i.mp, i64 -24
  store <2 x i64> zeroinitializer, ptr %i.mq, align 8, !tbaa !15
  store <2 x i64> zeroinitializer, ptr %i.mr, align 8, !tbaa !15
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mo ; 2 uses
  %i.mt = getelementptr inbounds i8, ptr %i.ms, i64 -4
  %i.mu = getelementptr inbounds i8, ptr %i.ms, i64 -12
  store <2 x i32> splat (i32 1), ptr %i.mt, align 4, !tbaa !16
  store <2 x i32> splat (i32 1), ptr %i.mu, align 4, !tbaa !16
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.mo ; 2 uses
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 -8
  %i.mx = getelementptr inbounds i8, ptr %i.mv, i64 -24
  store <2 x i64> zeroinitializer, ptr %i.mw, align 8, !tbaa !15
  store <2 x i64> zeroinitializer, ptr %i.mx, align 8, !tbaa !15
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.mo ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 -4
  %i.na = getelementptr inbounds i8, ptr %i.my, i64 -12
  store <2 x i32> splat (i32 1), ptr %i.mz, align 4, !tbaa !16
  store <2 x i32> splat (i32 1), ptr %i.na, align 4, !tbaa !16
  %index.next859 = add nuw i64 %index858, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next859, %n.vec856
  br i1 %i.nb, label %middle.block860, label %vector.body857, !llvm.loop !163

middle.block860:                                  ; preds = %vector.body857
  %cmp.n861 = icmp eq i64 %i.mi, %n.vec856
  br i1 %cmp.n861, label %_ZN2cvL22_flatten_for_broadcastEiiPKiPS1_PPiPPm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %vector.memcheck849, %.preheader.preheader.i, %middle.block860
  %indvars.iv201.i.ph = phi i64 [ %i.mh, %vector.memcheck849 ], [ %i.mh, %.preheader.preheader.i ], [ %i.mn, %middle.block860 ] ; 8 uses
  %i.nc = and i64 %indvars.iv201.i.ph, 1
  %lcmp.mod1065.not.not = icmp eq i64 %i.nc, 0
  br i1 %lcmp.mod1065.not.not, label %.preheader.i.prol, label %.preheader.i.prol.loopexit

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv201.i.ph
  store i64 0, ptr %i.nd, align 8, !tbaa !15
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv201.i.ph
  store i32 1, ptr %i.ne, align 4, !tbaa !16
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv201.i.ph
  store i64 0, ptr %i.nf, align 8, !tbaa !15
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv201.i.ph
  store i32 1, ptr %i.ng, align 4, !tbaa !16
  %indvars.iv.next202.i.prol = add nsw i64 %indvars.iv201.i.ph, -1
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %indvars.iv201.i.unr = phi i64 [ %indvars.iv201.i.ph, %.preheader.i.preheader ], [ %indvars.iv.next202.i.prol, %.preheader.i.prol ]
  %i.nh = icmp eq i64 %indvars.iv201.i.ph, 0
  br i1 %i.nh, label %_ZN2cvL22_flatten_for_broadcastEiiPKiPS1_PPiPPm.exit, label %.preheader.i

bb.by:                                            ; preds = %.preheader142.i
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %indvars.iv195.i
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !15
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.preheader142.i
  %i.nk = phi i64 [ %i.nj, %bb.by ], [ 0, %.preheader142.i ]
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %indvars.iv195.i
  store i64 %i.nk, ptr %i.nl, align 8, !tbaa !15
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %indvars.iv195.i
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !16
  %i.no = icmp eq i32 %i.nn, 1
  br i1 %i.no, label %._crit_edge208.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.np = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %indvars.iv195.i
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !15
  br label %._crit_edge208.i

._crit_edge208.i:                                 ; preds = %bb.bz, %bb.ca
  %i.nr = phi i64 [ %i.nq, %bb.ca ], [ 0, %bb.bz ]
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %indvars.iv195.i
  store i64 %i.nr, ptr %i.ns, align 8, !tbaa !15
  %indvars.iv.next196.i = add nsw i64 %indvars.iv195.i, -1 ; 2 uses
  %.not.not.i = icmp sgt i64 %indvars.iv195.i, %i.kg
  br i1 %.not.not.i, label %.preheader142.i, label %.preheader141.loopexit.i, !llvm.loop !164

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %indvars.iv201.i = phi i64 [ %indvars.iv.next202.i.1, %.preheader.i ], [ %indvars.iv201.i.unr, %.preheader.i.prol.loopexit ] ; 6 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv201.i
  store i64 0, ptr %i.nt, align 8, !tbaa !15
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv201.i
  store i32 1, ptr %i.nu, align 4, !tbaa !16
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv201.i
  store i64 0, ptr %i.nv, align 8, !tbaa !15
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv201.i
  store i32 1, ptr %i.nw, align 4, !tbaa !16
  %indvars.iv.next202.i = add nsw i64 %indvars.iv201.i, -1 ; 5 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.next202.i
  store i64 0, ptr %i.nx, align 8, !tbaa !15
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.next202.i
  store i32 1, ptr %i.ny, align 4, !tbaa !16
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.next202.i
  store i64 0, ptr %i.nz, align 8, !tbaa !15
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next202.i
  store i32 1, ptr %i.oa, align 4, !tbaa !16
  %indvars.iv.next202.i.1 = add nsw i64 %indvars.iv201.i, -2
  %.not233.i.1 = icmp eq i64 %indvars.iv.next202.i, 0
  br i1 %.not233.i.1, label %_ZN2cvL22_flatten_for_broadcastEiiPKiPS1_PPiPPm.exit, label %.preheader.i, !llvm.loop !165

_ZN2cvL22_flatten_for_broadcastEiiPKiPS1_PPiPPm.exit: ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block860, %.preheader141.i
  %i.ob = sext i32 %i.ho to i64                   ; 3 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.ob
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !15
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ob
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !15
  %or.cond = icmp ult i64 %i.of, 2
  br i1 %or.cond, label %bb.ch, label %bb.cc

bb.cb:                                            ; preds = %bb.bn
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferImLm136EED2Ev.exit393

bb.cc:                                            ; preds = %_ZN2cvL22_flatten_for_broadcastEiiPKiPS1_PPiPPm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 1240) #20
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  unreachable

bb.cf:                                            ; preds = %bb.cc
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.cg:                                            ; preds = %bb.cd
  %i.oi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oj = load ptr, ptr %9, align 8, !tbaa !39    ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cg
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !40
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.on) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.cf
  %.pn304 = phi { ptr, i32 } [ %i.oh, %bb.cf ], [ %i.oi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.oi, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.dv

bb.ch:                                            ; preds = %_ZN2cvL22_flatten_for_broadcastEiiPKiPS1_PPiPPm.exit
  %i.oo = icmp sgt i32 %i.x, 1
  br i1 %i.oo, label %bb.cn, label %bb.ci
end_hunk_0
