Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/reshape_x86?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK4ncnn11Reshape_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a

bb.aw:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit188._crit_edge, %bb.f
  %i.gv = phi i32 [ %.pre, %_ZN4ncnn3MataSERKS0_.exit188._crit_edge ], [ %i.ad, %bb.f ] ; 3 uses
  %.5 = phi i32 [ %.3, %_ZN4ncnn3MataSERKS0_.exit188._crit_edge ], [ -1, %bb.f ]
  %.off = add i32 %i.gv, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ax, label %bb.dg

bb.ax:                                            ; preds = %bb.aw
  %i.gw = icmp eq i32 %i.gv, 3
  %i.gx = load i32, ptr %i.a, align 4, !tbaa !37  ; 3 uses
  %i.gy = icmp eq i32 %i.gx, 0                    ; 2 uses
  br i1 %i.gw, label %bb.ay, label %bb.bj

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.gy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gz = icmp eq i32 %i.ap, 1
  %i.ha = load i32, ptr %i.at, align 4, !tbaa !47
  %i.hb = select i1 %i.gz, i32 %i.aq, i32 1
  %i.hc = mul nsw i32 %i.ha, %i.hb                ; 2 uses
  store i32 %i.hc, ptr %i.a, align 4, !tbaa !37
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hd = phi i32 [ %i.hc, %bb.az ], [ %i.gx, %bb.ay ] ; 2 uses
  %i.he = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hg = icmp eq i32 %i.ap, 2
  %i.hh = load i32, ptr %i.av, align 8, !tbaa !48
  %i.hi = select i1 %i.hg, i32 %i.aq, i32 1
  %i.hj = mul nsw i32 %i.hh, %i.hi                ; 2 uses
  store i32 %i.hj, ptr %i.b, align 4, !tbaa !37
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hk = phi i32 [ %i.hj, %bb.bb ], [ %i.he, %bb.ba ] ; 3 uses
  %i.hl = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hn = icmp eq i32 %i.ap, 3
  %i.ho = load i32, ptr %i.az, align 8, !tbaa !45
  %i.hp = select i1 %i.hn, i32 %i.aq, i32 1
  %i.hq = mul nsw i32 %i.ho, %i.hp                ; 2 uses
  store i32 %i.hq, ptr %i.d, align 4, !tbaa !37
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hr = phi i32 [ %i.hq, %bb.bd ], [ %i.hl, %bb.bc ] ; 4 uses
  %i.hs = icmp eq i32 %i.hd, -1
  br i1 %i.hs, label %bb.bf, label %thread-pre-split228

bb.bf:                                            ; preds = %bb.be
  %i.ht = sdiv i32 %i.be, %i.hr
  %i.hu = sdiv i32 %i.ht, %i.hk                   ; 2 uses
  store i32 %i.hu, ptr %i.a, align 4, !tbaa !37
  br label %thread-pre-split228

thread-pre-split228:                              ; preds = %bb.be, %bb.bf
  %i.hv = phi i32 [ %i.hu, %bb.bf ], [ %i.hd, %bb.be ] ; 3 uses
  %i.hw = icmp eq i32 %i.hk, -1
  br i1 %i.hw, label %bb.bg, label %thread-pre-split230

bb.bg:                                            ; preds = %thread-pre-split228
  %i.hx = sdiv i32 %i.be, %i.hr
  %i.hy = sdiv i32 %i.hx, %i.hv                   ; 2 uses
  store i32 %i.hy, ptr %i.b, align 4, !tbaa !37
  br label %thread-pre-split230

thread-pre-split230:                              ; preds = %thread-pre-split228, %bb.bg
  %i.hz = phi i32 [ %i.hy, %bb.bg ], [ %i.hk, %thread-pre-split228 ] ; 2 uses
  %i.ia = icmp eq i32 %i.hr, -1
  br i1 %i.ia, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %thread-pre-split230
  %i.ib = sdiv i32 %i.be, %i.hz
  %i.ic = sdiv i32 %i.ib, %i.hv                   ; 2 uses
  store i32 %i.ic, ptr %i.d, align 4, !tbaa !37
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %thread-pre-split230
  %i.id = phi i32 [ %i.ic, %bb.bh ], [ %i.hr, %thread-pre-split230 ]
  store i32 1, ptr %i.c, align 4, !tbaa !37
  br label %bb.bx

bb.bj:                                            ; preds = %bb.ax
  br i1 %i.gy, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ie = icmp eq i32 %i.ap, 1
  %i.if = load i32, ptr %i.at, align 4, !tbaa !47
  %i.ig = select i1 %i.ie, i32 %i.aq, i32 1
  %i.ih = mul nsw i32 %i.if, %i.ig                ; 2 uses
  store i32 %i.ih, ptr %i.a, align 4, !tbaa !37
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ii = phi i32 [ %i.ih, %bb.bk ], [ %i.gx, %bb.bj ] ; 2 uses
  %i.ij = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.il = icmp eq i32 %i.ap, 2
  %i.im = load i32, ptr %i.av, align 8, !tbaa !48
  %i.in = select i1 %i.il, i32 %i.aq, i32 1
  %i.io = mul nsw i32 %i.im, %i.in                ; 2 uses
  store i32 %i.io, ptr %i.b, align 4, !tbaa !37
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ip = phi i32 [ %i.io, %bb.bm ], [ %i.ij, %bb.bl ] ; 3 uses
  %i.iq = load i32, ptr %i.c, align 4, !tbaa !37  ; 2 uses
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.is = load i32, ptr %i.ax, align 4, !tbaa !49 ; 2 uses
  store i32 %i.is, ptr %i.c, align 4, !tbaa !37
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.it = phi i32 [ %i.is, %bb.bo ], [ %i.iq, %bb.bn ] ; 4 uses
  %i.iu = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.iw = add i32 %i.ap, -3
  %or.cond = icmp ult i32 %i.iw, 2
  %i.ix = load i32, ptr %i.az, align 8, !tbaa !45
  %i.iy = select i1 %or.cond, i32 %i.aq, i32 1
  %i.iz = mul nsw i32 %i.ix, %i.iy                ; 2 uses
  store i32 %i.iz, ptr %i.d, align 4, !tbaa !37
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ja = phi i32 [ %i.iz, %bb.bq ], [ %i.iu, %bb.bp ] ; 5 uses
  %i.jb = icmp eq i32 %i.ii, -1
  br i1 %i.jb, label %bb.bs, label %thread-pre-split232

bb.bs:                                            ; preds = %bb.br
  %i.jc = sdiv i32 %i.be, %i.ja
  %i.jd = sdiv i32 %i.jc, %i.it
  %i.je = sdiv i32 %i.jd, %i.ip                   ; 2 uses
  store i32 %i.je, ptr %i.a, align 4, !tbaa !37
  br label %thread-pre-split232

thread-pre-split232:                              ; preds = %bb.br, %bb.bs
  %i.jf = phi i32 [ %i.je, %bb.bs ], [ %i.ii, %bb.br ] ; 5 uses
  %i.jg = icmp eq i32 %i.ip, -1
  br i1 %i.jg, label %bb.bt, label %thread-pre-split234

bb.bt:                                            ; preds = %thread-pre-split232
  %i.jh = sdiv i32 %i.be, %i.ja
  %i.ji = sdiv i32 %i.jh, %i.it
  %i.jj = sdiv i32 %i.ji, %i.jf                   ; 2 uses
  store i32 %i.jj, ptr %i.b, align 4, !tbaa !37
  br label %thread-pre-split234

thread-pre-split234:                              ; preds = %thread-pre-split232, %bb.bt
  %i.jk = phi i32 [ %i.jj, %bb.bt ], [ %i.ip, %thread-pre-split232 ] ; 4 uses
  %i.jl = icmp eq i32 %i.it, -1
  br i1 %i.jl, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %thread-pre-split234
  %i.jm = sdiv i32 %i.be, %i.ja
  %i.jn = sdiv i32 %i.jm, %i.jk
  %i.jo = sdiv i32 %i.jn, %i.jf                   ; 2 uses
  store i32 %i.jo, ptr %i.c, align 4, !tbaa !37
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %thread-pre-split234
  %i.jp = phi i32 [ %i.jo, %bb.bu ], [ %i.it, %thread-pre-split234 ] ; 3 uses
  %i.jq = icmp eq i32 %i.ja, -1
  br i1 %i.jq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jr = sdiv i32 %i.be, %i.jp
  %i.js = sdiv i32 %i.jr, %i.jk
  %i.jt = sdiv i32 %i.js, %i.jf                   ; 2 uses
  store i32 %i.jt, ptr %i.d, align 4, !tbaa !37
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %bb.bi
  %i.ju = phi i32 [ %i.jp, %bb.bv ], [ %i.jp, %bb.bw ], [ 1, %bb.bi ]
  %i.jv = phi i32 [ %i.jk, %bb.bv ], [ %i.jk, %bb.bw ], [ %i.hz, %bb.bi ]
  %i.jw = phi i32 [ %i.jf, %bb.bv ], [ %i.jf, %bb.bw ], [ %i.hv, %bb.bi ]
  %i.jx = phi i32 [ %i.ja, %bb.bv ], [ %i.jt, %bb.bw ], [ %i.id, %bb.bi ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !50, !range !52, !noundef !53
  %i.ka = trunc nuw i8 %i.jz to i1
  %i.kb = and i32 %i.jx, 3
  %i.kc = icmp eq i32 %i.kb, 0
  %i.kd = select i1 %i.ka, i1 %i.kc, i1 false     ; 5 uses
  %.0158 = select i1 %i.kd, i32 4, i32 1          ; 3 uses
  %i.ke = sext i32 %i.aq to i64
  %i.kf = udiv i64 %i.as, %i.ke
  %i.kg = select i1 %i.kd, i64 2, i64 0
  %i.kh = shl i64 %i.kf, %i.kg                    ; 2 uses
  %i.ki = add i32 %i.ap, -3
  %or.cond7 = icmp ult i32 %i.ki, 2
  %.pre247 = load i32, ptr %i.az, align 8, !tbaa !45 ; 2 uses
  br i1 %or.cond7, label %bb.by, label %bb.ci

bb.by:                                            ; preds = %bb.bx
  %i.kj = mul nsw i32 %.pre247, %i.aq
  %i.kk = icmp eq i32 %i.kj, %i.jx
  %i.kl = icmp eq i32 %i.aq, %.0158
  %or.cond180 = select i1 %i.kk, i1 %i.kl, i1 false
  br i1 %or.cond180, label %bb.bz, label %bb.ci

bb.bz:                                            ; preds = %bb.by
  %i.km = icmp eq ptr %i.h, %i.g
  br i1 %i.km, label %.thread238, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !54 ; 2 uses
  %.not.i186 = icmp eq ptr %i.ko, null
  br i1 %.not.i186, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kp = atomicrmw add ptr %i.ko, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.kq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !54 ; 2 uses
  %.not.i208 = icmp eq ptr %i.kr, null
  br i1 %.not.i208, label %_ZN4ncnn3Mat7releaseEv.exit210, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ks = atomicrmw add ptr %i.kr, i32 -1 acq_rel, align 4
  %i.kt = icmp eq i32 %i.ks, 1
  br i1 %i.kt, label %bb.ce, label %_ZN4ncnn3Mat7releaseEv.exit210

bb.ce:                                            ; preds = %bb.cd
  %i.ku = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !55 ; 3 uses
  %.not3.i209 = icmp eq ptr %i.kv, null
  %i.kw = load ptr, ptr %i.h, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i209, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !9
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %i.kv, ptr noundef %i.kw), !inline_history !56
  br label %_ZN4ncnn3Mat7releaseEv.exit210

bb.cg:                                            ; preds = %bb.ce
  %.not.i211 = icmp eq ptr %i.kw, null
  br i1 %.not.i211, label %_ZN4ncnn3Mat7releaseEv.exit210, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @free(ptr noundef nonnull %i.kw) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit210

_ZN4ncnn3Mat7releaseEv.exit210:                   ; preds = %bb.ch, %bb.cg, %bb.cc, %bb.cd, %bb.cf
  %i.la = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.lc = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.le = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 0, ptr %i.le, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.lc, i8 0, i64 20, i1 false)
  %i.lf = load <2 x ptr>, ptr %i.g, align 8, !tbaa !57
  store <2 x ptr> %i.lf, ptr %i.h, align 8, !tbaa !57
  %i.lg = load i64, ptr %i.ar, align 8, !tbaa !25
  store i64 %i.lg, ptr %i.la, align 8, !tbaa !25
  %i.lh = load i32, ptr %i.i, align 8, !tbaa !21
  store i32 %i.lh, ptr %i.lb, align 8, !tbaa !21
  %i.li = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !55
  %i.lk = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !55
  %i.ll = load <4 x i32>, ptr %i.ao, align 8, !tbaa !37
  store <4 x i32> %i.ll, ptr %i.lc, align 8, !tbaa !37
  %i.lm = load i32, ptr %i.az, align 8, !tbaa !45
  store i32 %i.lm, ptr %i.ld, align 8, !tbaa !45
  %i.ln = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !44
  store i64 %i.lo, ptr %i.le, align 8, !tbaa !44
  %.pre248 = load i32, ptr %i.ac, align 8, !tbaa !42
  %.pre249 = load i32, ptr %i.a, align 4, !tbaa !37
  %.pre250 = load i32, ptr %i.b, align 4, !tbaa !37
  %.pre251 = load i32, ptr %i.c, align 4, !tbaa !37
  br label %.thread238

.thread238:                                       ; preds = %_ZN4ncnn3Mat7releaseEv.exit210, %bb.bz
  %i.lp = phi i32 [ %.pre251, %_ZN4ncnn3Mat7releaseEv.exit210 ], [ %i.ju, %bb.bz ]
  %i.lq = phi i32 [ %.pre250, %_ZN4ncnn3Mat7releaseEv.exit210 ], [ %i.jv, %bb.bz ]
  %i.lr = phi i32 [ %.pre249, %_ZN4ncnn3Mat7releaseEv.exit210 ], [ %i.jw, %bb.bz ]
  %i.ls = phi i32 [ %.pre248, %_ZN4ncnn3Mat7releaseEv.exit210 ], [ %i.gv, %bb.bz ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 %i.ls, ptr %i.lt, align 8, !tbaa !46
  %i.lu = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.lr, ptr %i.lu, align 4, !tbaa !47
  %i.lv = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %i.lq, ptr %i.lv, align 8, !tbaa !48
  %i.lw = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 %i.lp, ptr %i.lw, align 4, !tbaa !49
  br label %_ZN4ncnn3MataSERKS0_.exit188.thread

bb.ci:                                            ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !54 ; 2 uses
  %i.ma = load <2 x ptr>, ptr %i.g, align 8, !tbaa !57
  store <2 x ptr> %i.ma, ptr %6, align 16, !tbaa !57
  %i.mb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mc = load i64, ptr %i.ar, align 8, !tbaa !25
  store i64 %i.mc, ptr %i.mb, align 16, !tbaa !25
  %i.md = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.me = load i32, ptr %i.i, align 8, !tbaa !21
  store i32 %i.me, ptr %i.md, align 8, !tbaa !21
  %i.mf = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !55
  store ptr %i.mh, ptr %i.mf, align 16, !tbaa !55
  %i.mi = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.mj = load <4 x i32>, ptr %i.ao, align 8, !tbaa !37
  store <4 x i32> %i.mj, ptr %i.mi, align 8, !tbaa !37
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store i32 %.pre247, ptr %i.mk, align 8, !tbaa !45
  %i.ml = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !44
  store i64 %i.mn, ptr %i.ml, align 16, !tbaa !44
  %.not.i223 = icmp eq ptr %i.lz, null
  br i1 %.not.i223, label %_ZN4ncnn3Mat6addrefEv.exit224, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mo = atomicrmw add ptr %i.lz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit224

_ZN4ncnn3Mat6addrefEv.exit224:                    ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !58
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !61
  %i.mr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !62
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit224
  %i.ms = load ptr, ptr %6, align 16, !tbaa !43
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %.thread237, label %_ZNK4ncnn3Mat5emptyEv.exit181

_ZNK4ncnn3Mat5emptyEv.exit181:                    ; preds = %bb.ck
  %i.mu = load i64, ptr %i.ml, align 16, !tbaa !44
  %i.mv = load i32, ptr %i.mk, align 8, !tbaa !45
  %i.mw = sext i32 %i.mv to i64
  %i.mx = mul i64 %i.mu, %i.mw
  %i.my = icmp eq i64 %i.mx, 0
  br i1 %i.my, label %.thread237, label %bb.cm

.thread237:                                       ; preds = %bb.ck, %_ZNK4ncnn3Mat5emptyEv.exit181
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.cl:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit224
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.cz

bb.cm:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit181
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.na = load i32, ptr %i.ac, align 8, !tbaa !42
  %i.nb = icmp eq i32 %i.na, 3
  %i.nc = load i32, ptr %i.a, align 4, !tbaa !37  ; 2 uses
  %i.nd = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  br i1 %i.nb, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.ne = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.nf = sdiv i32 %i.ne, 4
  %8 = select i1 %i.kd, i32 %i.nf, i32 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i32 noundef %i.nc, i32 noundef %i.nd, i32 noundef %8, i64 noundef %i.kh, i32 noundef %.0158, ptr noundef %i.nh)
          to label %bb.cq unwind label %bb.co

bb.co:                                            ; preds = %bb.cp, %bb.cn
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cp:                                            ; preds = %bb.cm
  %i.nj = load i32, ptr %i.c, align 4, !tbaa !37
  %i.nk = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.nl = sdiv i32 %i.nk, 4
  %9 = select i1 %i.kd, i32 %i.nl, i32 %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i32 noundef %i.nc, i32 noundef %i.nd, i32 noundef %i.nj, i32 noundef %9, i64 noundef %i.kh, i32 noundef %.0158, ptr noundef %i.nn)
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  %i.no = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.cq
  %i.nq = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !44
  %i.ns = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !45
  %i.nu = sext i32 %i.nt to i64
  %i.nv = mul i64 %i.nr, %i.nu
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.nx = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !47
  %i.nz = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !48
  %i.ob = mul nsw i32 %i.oa, %i.ny
  %i.oc = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !49
  %i.oe = mul nsw i32 %i.ob, %i.od
  store i32 %i.oe, ptr %i.e, align 4, !tbaa !37
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.og = load i32, ptr %i.of, align 4, !tbaa !63
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.og)
  %_ZNK4ncnn11Reshape_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1._ZNK4ncnn11Reshape_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2 = select i1 %i.kd, ptr @_ZNK4ncnn11Reshape_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1, ptr @_ZNK4ncnn11Reshape_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull %_ZNK4ncnn11Reshape_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1._ZNK4ncnn11Reshape_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.h, ptr nonnull %6, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.cq, %.thread237, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.cr
  %i.oh = phi i1 [ false, %.thread237 ], [ true, %bb.cr ], [ false, %_ZNK4ncnn3Mat5emptyEv.exit ], [ false, %bb.cq ]
  %.7 = phi i32 [ -100, %.thread237 ], [ %.5, %bb.cr ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.cq ]
  %i.oi = load ptr, ptr %i.lx, align 8, !tbaa !54 ; 2 uses
  %.not.i197 = icmp eq ptr %i.oi, null
  br i1 %.not.i197, label %bb.cy, label %bb.cs

bb.cs:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %i.oj = atomicrmw add ptr %i.oi, i32 -1 acq_rel, align 4
  %i.ok = icmp eq i32 %i.oj, 1
  br i1 %i.ok, label %bb.ct, label %bb.cy

bb.ct:                                            ; preds = %bb.cs
  %i.ol = load ptr, ptr %i.mf, align 16, !tbaa !55 ; 3 uses
  %.not3.i198 = icmp eq ptr %i.ol, null
  %i.om = load ptr, ptr %6, align 16, !tbaa !43   ; 3 uses
  br i1 %.not3.i198, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.on = load ptr, ptr %i.ol, align 8, !tbaa !9
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load ptr, ptr %i.oo, align 8
  invoke void %i.op(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef %i.om)
          to label %bb.cy unwind label %bb.cx, !inline_history !56

bb.cv:                                            ; preds = %bb.ct
  %.not.i216 = icmp eq ptr %i.om, null
  br i1 %.not.i216, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @free(ptr noundef nonnull %i.om) #9
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  %i.oq = landingpad { ptr, i32 }
          catch ptr null
  %i.or = extractvalue { ptr, i32 } %i.oq, 0
  call void @__clang_call_terminate(ptr %i.or) #15
  unreachable

bb.cy:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br i1 %i.oh, label %bb.dg, label %_ZN4ncnn3MataSERKS0_.exit188.thread

bb.cz:                                            ; preds = %bb.co, %bb.cl
  %.pn175 = phi { ptr, i32 } [ %i.ni, %bb.co ], [ %i.mz, %bb.cl ]
  %i.os = load ptr, ptr %i.lx, align 8, !tbaa !54 ; 2 uses
  %.not.i201 = icmp eq ptr %i.os, null
  br i1 %.not.i201, label %_ZN4ncnn3MatD2Ev.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ot = atomicrmw add ptr %i.os, i32 -1 acq_rel, align 4
  %i.ou = icmp eq i32 %i.ot, 1
  br i1 %i.ou, label %bb.db, label %_ZN4ncnn3MatD2Ev.exit

bb.db:                                            ; preds = %bb.da
  %i.ov = load ptr, ptr %i.mf, align 16, !tbaa !55 ; 3 uses
  %.not3.i202 = icmp eq ptr %i.ov, null
  %i.ow = load ptr, ptr %6, align 16, !tbaa !43   ; 3 uses
  br i1 %.not3.i202, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ox = load ptr, ptr %i.ov, align 8, !tbaa !9
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8
  invoke void %i.oz(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, ptr noundef %i.ow)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.df, !inline_history !56

bb.dd:                                            ; preds = %bb.db
  %.not.i214 = icmp eq ptr %i.ow, null
  br i1 %.not.i214, label %_ZN4ncnn3MatD2Ev.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @free(ptr noundef nonnull %i.ow) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.df:                                            ; preds = %bb.dc
  %i.pa = landingpad { ptr, i32 }
          catch ptr null
  %i.pb = extractvalue { ptr, i32 } %i.pa, 0
  call void @__clang_call_terminate(ptr %i.pb) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.da, %bb.cz, %bb.dc, %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.dh

bb.dg:                                            ; preds = %bb.aw, %bb.cy
  br label %_ZN4ncnn3MataSERKS0_.exit188.thread

bb.dh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit190
  %.pn175.pn = phi { ptr, i32 } [ %.pn175, %_ZN4ncnn3MatD2Ev.exit ], [ %.pn, %_ZN4ncnn3MatD2Ev.exit190 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  resume { ptr, i32 } %.pn175.pn

_ZN4ncnn3MataSERKS0_.exit188.thread:              ; preds = %bb.z, %_ZN4ncnn3Mat7releaseEv.exit207, %bb.p, %bb.aa, %_ZNK4ncnn3Mat5emptyEv.exit184, %.thread238, %_ZNK4ncnn3Mat5emptyEv.exit185.thread, %_ZNK4ncnn3Mat5emptyEv.exit185, %bb.dg, %bb.cy, %_ZN4ncnn3MataSERKS0_.exit188, %bb.c
  %.10 = phi i32 [ %.3, %_ZN4ncnn3MataSERKS0_.exit188 ], [ -1, %bb.c ], [ 0, %bb.dg ], [ %.7, %bb.cy ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit185.thread ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit185 ], [ 0, %.thread238 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit184 ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit207 ], [ 0, %bb.p ], [ 0, %bb.aa ], [ -100, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.di

bb.di:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit188.thread, %bb.b
  %.11 = phi i32 [ %i.p, %bb.b ], [ %.10, %_ZN4ncnn3MataSERKS0_.exit188.thread ]
  ret i32 %.11
}

declare noundef i32 @_ZNK4ncnn7Reshape7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn11Reshape_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn7ReshapeC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn11Reshape_x86E, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !64
  %i.b = invoke noundef i32 @_ZN4ncnn20cpu_support_x86_f16cEv()
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.e = zext i1 %i.c to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.f, align 4, !tbaa !66
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4ncnn7ReshapeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #9
  resume { ptr, i32 } %i.g
}

declare void @_ZN4ncnn7ReshapeC2Ev(ptr noundef nonnull align 8 dereferenceable(264)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn20cpu_support_x86_f16cEv() local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5
end_hunk_0
begin_hunk_1_@_ZNK4ncnn11Reshape_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a

bb.av:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit182._crit_edge, %bb.e
  %i.go = phi i32 [ %.pre, %_ZN4ncnn3MataSERKS0_.exit182._crit_edge ], [ %i.v, %bb.e ] ; 3 uses
  %.5 = phi i32 [ %.3, %_ZN4ncnn3MataSERKS0_.exit182._crit_edge ], [ -1, %bb.e ]
  %.off = add i32 %i.go, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.aw, label %bb.df

bb.aw:                                            ; preds = %bb.av
  %i.gp = icmp eq i32 %i.go, 3
  %i.gq = load i32, ptr %i.a, align 4, !tbaa !37  ; 3 uses
  %i.gr = icmp eq i32 %i.gq, 0                    ; 2 uses
  br i1 %i.gp, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.gr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gs = icmp eq i32 %i.ah, 1
  %i.gt = load i32, ptr %i.am, align 4, !tbaa !47
  %i.gu = select i1 %i.gs, i32 %i.aj, i32 1
  %i.gv = mul nsw i32 %i.gt, %i.gu                ; 2 uses
  store i32 %i.gv, ptr %i.a, align 4, !tbaa !37
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gw = phi i32 [ %i.gv, %bb.ay ], [ %i.gq, %bb.ax ] ; 2 uses
  %i.gx = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gz = icmp eq i32 %i.ah, 2
  %i.ha = load i32, ptr %i.ao, align 8, !tbaa !48
  %i.hb = select i1 %i.gz, i32 %i.aj, i32 1
  %i.hc = mul nsw i32 %i.ha, %i.hb                ; 2 uses
  store i32 %i.hc, ptr %i.b, align 4, !tbaa !37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hd = phi i32 [ %i.hc, %bb.ba ], [ %i.gx, %bb.az ] ; 3 uses
  %i.he = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hg = icmp eq i32 %i.ah, 3
  %i.hh = load i32, ptr %i.as, align 8, !tbaa !45
  %i.hi = select i1 %i.hg, i32 %i.aj, i32 1
  %i.hj = mul nsw i32 %i.hh, %i.hi                ; 2 uses
  store i32 %i.hj, ptr %i.d, align 4, !tbaa !37
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hk = phi i32 [ %i.hj, %bb.bc ], [ %i.he, %bb.bb ] ; 4 uses
  %i.hl = icmp eq i32 %i.gw, -1
  br i1 %i.hl, label %bb.be, label %thread-pre-split222

bb.be:                                            ; preds = %bb.bd
  %i.hm = sdiv i32 %i.ax, %i.hk
  %i.hn = sdiv i32 %i.hm, %i.hd                   ; 2 uses
  store i32 %i.hn, ptr %i.a, align 4, !tbaa !37
  br label %thread-pre-split222

thread-pre-split222:                              ; preds = %bb.bd, %bb.be
  %i.ho = phi i32 [ %i.hn, %bb.be ], [ %i.gw, %bb.bd ] ; 3 uses
  %i.hp = icmp eq i32 %i.hd, -1
  br i1 %i.hp, label %bb.bf, label %thread-pre-split224

bb.bf:                                            ; preds = %thread-pre-split222
  %i.hq = sdiv i32 %i.ax, %i.hk
  %i.hr = sdiv i32 %i.hq, %i.ho                   ; 2 uses
  store i32 %i.hr, ptr %i.b, align 4, !tbaa !37
  br label %thread-pre-split224

thread-pre-split224:                              ; preds = %thread-pre-split222, %bb.bf
  %i.hs = phi i32 [ %i.hr, %bb.bf ], [ %i.hd, %thread-pre-split222 ] ; 2 uses
  %i.ht = icmp eq i32 %i.hk, -1
  br i1 %i.ht, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %thread-pre-split224
  %i.hu = sdiv i32 %i.ax, %i.hs
  %i.hv = sdiv i32 %i.hu, %i.ho                   ; 2 uses
  store i32 %i.hv, ptr %i.d, align 4, !tbaa !37
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %thread-pre-split224
  %i.hw = phi i32 [ %i.hv, %bb.bg ], [ %i.hk, %thread-pre-split224 ]
  store i32 1, ptr %i.c, align 4, !tbaa !37
  br label %bb.bw

bb.bi:                                            ; preds = %bb.aw
  br i1 %i.gr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hx = icmp eq i32 %i.ah, 1
  %i.hy = load i32, ptr %i.am, align 4, !tbaa !47
  %i.hz = select i1 %i.hx, i32 %i.aj, i32 1
  %i.ia = mul nsw i32 %i.hy, %i.hz                ; 2 uses
  store i32 %i.ia, ptr %i.a, align 4, !tbaa !37
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ib = phi i32 [ %i.ia, %bb.bj ], [ %i.gq, %bb.bi ] ; 2 uses
  %i.ic = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ie = icmp eq i32 %i.ah, 2
  %i.if = load i32, ptr %i.ao, align 8, !tbaa !48
  %i.ig = select i1 %i.ie, i32 %i.aj, i32 1
  %i.ih = mul nsw i32 %i.if, %i.ig                ; 2 uses
  store i32 %i.ih, ptr %i.b, align 4, !tbaa !37
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ii = phi i32 [ %i.ih, %bb.bl ], [ %i.ic, %bb.bk ] ; 3 uses
  %i.ij = load i32, ptr %i.c, align 4, !tbaa !37  ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.il = load i32, ptr %i.aq, align 4, !tbaa !49 ; 2 uses
  store i32 %i.il, ptr %i.c, align 4, !tbaa !37
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.im = phi i32 [ %i.il, %bb.bn ], [ %i.ij, %bb.bm ] ; 4 uses
  %i.in = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ip = add i32 %i.ah, -3
  %or.cond = icmp ult i32 %i.ip, 2
  %i.iq = load i32, ptr %i.as, align 8, !tbaa !45
  %i.ir = select i1 %or.cond, i32 %i.aj, i32 1
  %i.is = mul nsw i32 %i.iq, %i.ir                ; 2 uses
  store i32 %i.is, ptr %i.d, align 4, !tbaa !37
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.it = phi i32 [ %i.is, %bb.bp ], [ %i.in, %bb.bo ] ; 5 uses
  %i.iu = icmp eq i32 %i.ib, -1
  br i1 %i.iu, label %bb.br, label %thread-pre-split226

bb.br:                                            ; preds = %bb.bq
  %i.iv = sdiv i32 %i.ax, %i.it
  %i.iw = sdiv i32 %i.iv, %i.im
  %i.ix = sdiv i32 %i.iw, %i.ii                   ; 2 uses
  store i32 %i.ix, ptr %i.a, align 4, !tbaa !37
  br label %thread-pre-split226

thread-pre-split226:                              ; preds = %bb.bq, %bb.br
  %i.iy = phi i32 [ %i.ix, %bb.br ], [ %i.ib, %bb.bq ] ; 5 uses
  %i.iz = icmp eq i32 %i.ii, -1
  br i1 %i.iz, label %bb.bs, label %thread-pre-split228

bb.bs:                                            ; preds = %thread-pre-split226
  %i.ja = sdiv i32 %i.ax, %i.it
  %i.jb = sdiv i32 %i.ja, %i.im
  %i.jc = sdiv i32 %i.jb, %i.iy                   ; 2 uses
  store i32 %i.jc, ptr %i.b, align 4, !tbaa !37
  br label %thread-pre-split228

thread-pre-split228:                              ; preds = %thread-pre-split226, %bb.bs
  %i.jd = phi i32 [ %i.jc, %bb.bs ], [ %i.ii, %thread-pre-split226 ] ; 4 uses
  %i.je = icmp eq i32 %i.im, -1
  br i1 %i.je, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %thread-pre-split228
  %i.jf = sdiv i32 %i.ax, %i.it
  %i.jg = sdiv i32 %i.jf, %i.jd
  %i.jh = sdiv i32 %i.jg, %i.iy                   ; 2 uses
  store i32 %i.jh, ptr %i.c, align 4, !tbaa !37
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %thread-pre-split228
  %i.ji = phi i32 [ %i.jh, %bb.bt ], [ %i.im, %thread-pre-split228 ] ; 3 uses
  %i.jj = icmp eq i32 %i.it, -1
  br i1 %i.jj, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jk = sdiv i32 %i.ax, %i.ji
  %i.jl = sdiv i32 %i.jk, %i.jd
  %i.jm = sdiv i32 %i.jl, %i.iy                   ; 2 uses
  store i32 %i.jm, ptr %i.d, align 4, !tbaa !37
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bh
  %i.jn = phi i32 [ %i.ji, %bb.bu ], [ %i.ji, %bb.bv ], [ 1, %bb.bh ]
  %i.jo = phi i32 [ %i.jd, %bb.bu ], [ %i.jd, %bb.bv ], [ %i.hs, %bb.bh ]
  %i.jp = phi i32 [ %i.iy, %bb.bu ], [ %i.iy, %bb.bv ], [ %i.ho, %bb.bh ]
  %i.jq = phi i32 [ %i.it, %bb.bu ], [ %i.jm, %bb.bv ], [ %i.hw, %bb.bh ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !50, !range !52, !noundef !53
  %i.jt = trunc nuw i8 %i.js to i1
  %i.ju = and i32 %i.jq, 3
  %i.jv = icmp eq i32 %i.ju, 0
  %i.jw = select i1 %i.jt, i1 %i.jv, i1 false     ; 5 uses
  %.0153 = select i1 %i.jw, i32 4, i32 1          ; 3 uses
  %i.jx = sext i32 %i.aj to i64
  %i.jy = udiv i64 %i.al, %i.jx
  %i.jz = select i1 %i.jw, i64 2, i64 0
  %i.ka = shl i64 %i.jy, %i.jz                    ; 2 uses
  %i.kb = add i32 %i.ah, -3
  %or.cond7 = icmp ult i32 %i.kb, 2
  %.pre241 = load i32, ptr %i.as, align 8, !tbaa !45 ; 2 uses
  br i1 %or.cond7, label %bb.bx, label %bb.ch

bb.bx:                                            ; preds = %bb.bw
  %i.kc = mul nsw i32 %.pre241, %i.aj
  %i.kd = icmp eq i32 %i.kc, %i.jq
  %i.ke = icmp eq i32 %i.aj, %.0153
  %or.cond175 = select i1 %i.kd, i1 %i.ke, i1 false
  br i1 %or.cond175, label %bb.by, label %bb.ch

bb.by:                                            ; preds = %bb.bx
  %i.kf = icmp eq ptr %i.h, %i.g
  br i1 %i.kf, label %.thread232, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp eq ptr %i.kh, null
  br i1 %.not.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ki = atomicrmw add ptr %i.kh, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.kj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !54 ; 2 uses
  %.not.i202 = icmp eq ptr %i.kk, null
  br i1 %.not.i202, label %_ZN4ncnn3Mat7releaseEv.exit204, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kl = atomicrmw add ptr %i.kk, i32 -1 acq_rel, align 4
  %i.km = icmp eq i32 %i.kl, 1
  br i1 %i.km, label %bb.cd, label %_ZN4ncnn3Mat7releaseEv.exit204

bb.cd:                                            ; preds = %bb.cc
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !55 ; 3 uses
  %.not3.i203 = icmp eq ptr %i.ko, null
  %i.kp = load ptr, ptr %i.h, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i203, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !9
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef %i.kp), !inline_history !56
  br label %_ZN4ncnn3Mat7releaseEv.exit204

bb.cf:                                            ; preds = %bb.cd
  %.not.i205 = icmp eq ptr %i.kp, null
  br i1 %.not.i205, label %_ZN4ncnn3Mat7releaseEv.exit204, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @free(ptr noundef nonnull %i.kp) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit204

_ZN4ncnn3Mat7releaseEv.exit204:                   ; preds = %bb.cg, %bb.cf, %bb.cb, %bb.cc, %bb.ce
  %i.kt = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ku = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.kx = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 0, ptr %i.kx, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.kv, i8 0, i64 20, i1 false)
  %i.ky = load <2 x ptr>, ptr %i.g, align 8, !tbaa !57
  store <2 x ptr> %i.ky, ptr %i.h, align 8, !tbaa !57
  %i.kz = load i64, ptr %i.ak, align 8, !tbaa !25
  store i64 %i.kz, ptr %i.kt, align 8, !tbaa !25
  %i.la = load i32, ptr %i.ai, align 8, !tbaa !21
  store i32 %i.la, ptr %i.ku, align 8, !tbaa !21
  %i.lb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !55
  %i.ld = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !55
  %i.le = load <4 x i32>, ptr %i.ag, align 8, !tbaa !37
  store <4 x i32> %i.le, ptr %i.kv, align 8, !tbaa !37
  %i.lf = load i32, ptr %i.as, align 8, !tbaa !45
  store i32 %i.lf, ptr %i.kw, align 8, !tbaa !45
  %i.lg = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !44
  store i64 %i.lh, ptr %i.kx, align 8, !tbaa !44
  %.pre242 = load i32, ptr %i.u, align 8, !tbaa !42
  %.pre243 = load i32, ptr %i.a, align 4, !tbaa !37
  %.pre244 = load i32, ptr %i.b, align 4, !tbaa !37
  %.pre245 = load i32, ptr %i.c, align 4, !tbaa !37
  br label %.thread232

.thread232:                                       ; preds = %_ZN4ncnn3Mat7releaseEv.exit204, %bb.by
  %i.li = phi i32 [ %.pre245, %_ZN4ncnn3Mat7releaseEv.exit204 ], [ %i.jn, %bb.by ]
  %i.lj = phi i32 [ %.pre244, %_ZN4ncnn3Mat7releaseEv.exit204 ], [ %i.jo, %bb.by ]
  %i.lk = phi i32 [ %.pre243, %_ZN4ncnn3Mat7releaseEv.exit204 ], [ %i.jp, %bb.by ]
  %i.ll = phi i32 [ %.pre242, %_ZN4ncnn3Mat7releaseEv.exit204 ], [ %i.go, %bb.by ]
  %i.lm = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 %i.ll, ptr %i.lm, align 8, !tbaa !46
  %i.ln = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.lk, ptr %i.ln, align 4, !tbaa !47
  %i.lo = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %i.lj, ptr %i.lo, align 8, !tbaa !48
  %i.lp = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 %i.li, ptr %i.lp, align 4, !tbaa !49
  br label %_ZN4ncnn3MataSERKS0_.exit182.thread

bb.ch:                                            ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.lq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !54 ; 2 uses
  %i.lt = load <2 x ptr>, ptr %i.g, align 8, !tbaa !57
  store <2 x ptr> %i.lt, ptr %6, align 16, !tbaa !57
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lv = load i64, ptr %i.ak, align 8, !tbaa !25
  store i64 %i.lv, ptr %i.lu, align 16, !tbaa !25
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.lx = load i32, ptr %i.ai, align 8, !tbaa !21
  store i32 %i.lx, ptr %i.lw, align 8, !tbaa !21
  %i.ly = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !55
  store ptr %i.ma, ptr %i.ly, align 16, !tbaa !55
  %i.mb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.mc = load <4 x i32>, ptr %i.ag, align 8, !tbaa !37
  store <4 x i32> %i.mc, ptr %i.mb, align 8, !tbaa !37
  %i.md = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store i32 %.pre241, ptr %i.md, align 8, !tbaa !45
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !44
  store i64 %i.mg, ptr %i.me, align 16, !tbaa !44
  %.not.i217 = icmp eq ptr %i.ls, null
  br i1 %.not.i217, label %_ZN4ncnn3Mat6addrefEv.exit218, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mh = atomicrmw add ptr %i.ls, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit218

_ZN4ncnn3Mat6addrefEv.exit218:                    ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !58
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !61
  %i.mk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !62
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit218
  %i.ml = load ptr, ptr %6, align 16, !tbaa !43
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %.thread231, label %_ZNK4ncnn3Mat5emptyEv.exit176

_ZNK4ncnn3Mat5emptyEv.exit176:                    ; preds = %bb.cj
  %i.mn = load i64, ptr %i.me, align 16, !tbaa !44
  %i.mo = load i32, ptr %i.md, align 8, !tbaa !45
  %i.mp = sext i32 %i.mo to i64
  %i.mq = mul i64 %i.mn, %i.mp
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %.thread231, label %bb.cl

.thread231:                                       ; preds = %bb.cj, %_ZNK4ncnn3Mat5emptyEv.exit176
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ck:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit218
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.cy

bb.cl:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit176
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.mt = load i32, ptr %i.u, align 8, !tbaa !42
  %i.mu = icmp eq i32 %i.mt, 3
  %i.mv = load i32, ptr %i.a, align 4, !tbaa !37  ; 2 uses
  %i.mw = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  br i1 %i.mu, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.mx = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.my = sdiv i32 %i.mx, 4
  %8 = select i1 %i.jw, i32 %i.my, i32 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i32 noundef %i.mv, i32 noundef %i.mw, i32 noundef %8, i64 noundef %i.ka, i32 noundef %.0153, ptr noundef %i.na)
          to label %bb.cp unwind label %bb.cn

bb.cn:                                            ; preds = %bb.co, %bb.cm
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.co:                                            ; preds = %bb.cl
  %i.nc = load i32, ptr %i.c, align 4, !tbaa !37
  %i.nd = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.ne = sdiv i32 %i.nd, 4
  %9 = select i1 %i.jw, i32 %i.ne, i32 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i32 noundef %i.mv, i32 noundef %i.mw, i32 noundef %i.nc, i32 noundef %9, i64 noundef %i.ka, i32 noundef %.0153, ptr noundef %i.ng)
          to label %bb.cp unwind label %bb.cn

bb.cp:                                            ; preds = %bb.co, %bb.cm
  %i.nh = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.ni = icmp eq ptr %i.nh, null
  br i1 %i.ni, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.cp
  %i.nj = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !44
  %i.nl = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !45
  %i.nn = sext i32 %i.nm to i64
  %i.no = mul i64 %i.nk, %i.nn
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.cq

bb.cq:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.nq = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !47
  %i.ns = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !48
  %i.nu = mul nsw i32 %i.nt, %i.nr
  %i.nv = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !49
  %i.nx = mul nsw i32 %i.nu, %i.nw
  store i32 %i.nx, ptr %i.e, align 4, !tbaa !37
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !63
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.nz)
  %_ZNK4ncnn11Reshape_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3._ZNK4ncnn11Reshape_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4 = select i1 %i.jw, ptr @_ZNK4ncnn11Reshape_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3, ptr @_ZNK4ncnn11Reshape_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull %_ZNK4ncnn11Reshape_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3._ZNK4ncnn11Reshape_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.h, ptr nonnull %6, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.cp, %.thread231, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.cq
  %i.oa = phi i1 [ false, %.thread231 ], [ true, %bb.cq ], [ false, %_ZNK4ncnn3Mat5emptyEv.exit ], [ false, %bb.cp ]
  %.7 = phi i32 [ -100, %.thread231 ], [ %.5, %bb.cq ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.cp ]
  %i.ob = load ptr, ptr %i.lq, align 8, !tbaa !54 ; 2 uses
  %.not.i191 = icmp eq ptr %i.ob, null
  br i1 %.not.i191, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %i.oc = atomicrmw add ptr %i.ob, i32 -1 acq_rel, align 4
  %i.od = icmp eq i32 %i.oc, 1
  br i1 %i.od, label %bb.cs, label %bb.cx

bb.cs:                                            ; preds = %bb.cr
  %i.oe = load ptr, ptr %i.ly, align 16, !tbaa !55 ; 3 uses
  %.not3.i192 = icmp eq ptr %i.oe, null
  %i.of = load ptr, ptr %6, align 16, !tbaa !43   ; 3 uses
  br i1 %.not3.i192, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.og = load ptr, ptr %i.oe, align 8, !tbaa !9
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8
  invoke void %i.oi(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, ptr noundef %i.of)
          to label %bb.cx unwind label %bb.cw, !inline_history !56

bb.cu:                                            ; preds = %bb.cs
  %.not.i210 = icmp eq ptr %i.of, null
  br i1 %.not.i210, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @free(ptr noundef nonnull %i.of) #9
  br label %bb.cx

bb.cw:                                            ; preds = %bb.ct
  %i.oj = landingpad { ptr, i32 }
          catch ptr null
  %i.ok = extractvalue { ptr, i32 } %i.oj, 0
  call void @__clang_call_terminate(ptr %i.ok) #15
  unreachable

bb.cx:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br i1 %i.oa, label %bb.df, label %_ZN4ncnn3MataSERKS0_.exit182.thread

bb.cy:                                            ; preds = %bb.cn, %bb.ck
  %.pn170 = phi { ptr, i32 } [ %i.nb, %bb.cn ], [ %i.ms, %bb.ck ]
  %i.ol = load ptr, ptr %i.lq, align 8, !tbaa !54 ; 2 uses
  %.not.i195 = icmp eq ptr %i.ol, null
  br i1 %.not.i195, label %_ZN4ncnn3MatD2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.om = atomicrmw add ptr %i.ol, i32 -1 acq_rel, align 4
  %i.on = icmp eq i32 %i.om, 1
  br i1 %i.on, label %bb.da, label %_ZN4ncnn3MatD2Ev.exit

bb.da:                                            ; preds = %bb.cz
  %i.oo = load ptr, ptr %i.ly, align 16, !tbaa !55 ; 3 uses
  %.not3.i196 = icmp eq ptr %i.oo, null
  %i.op = load ptr, ptr %6, align 16, !tbaa !43   ; 3 uses
  br i1 %.not3.i196, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.oq = load ptr, ptr %i.oo, align 8, !tbaa !9
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load ptr, ptr %i.or, align 8
  invoke void %i.os(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, ptr noundef %i.op)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.de, !inline_history !56

bb.dc:                                            ; preds = %bb.da
  %.not.i208 = icmp eq ptr %i.op, null
  br i1 %.not.i208, label %_ZN4ncnn3MatD2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @free(ptr noundef nonnull %i.op) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.de:                                            ; preds = %bb.db
  %i.ot = landingpad { ptr, i32 }
          catch ptr null
  %i.ou = extractvalue { ptr, i32 } %i.ot, 0
  call void @__clang_call_terminate(ptr %i.ou) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.cz, %bb.cy, %bb.db, %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.dg

bb.df:                                            ; preds = %bb.av, %bb.cx
  br label %_ZN4ncnn3MataSERKS0_.exit182.thread

bb.dg:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit184
  %.pn170.pn = phi { ptr, i32 } [ %.pn170, %_ZN4ncnn3MatD2Ev.exit ], [ %.pn, %_ZN4ncnn3MatD2Ev.exit184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  resume { ptr, i32 } %.pn170.pn

_ZN4ncnn3MataSERKS0_.exit182.thread:              ; preds = %bb.y, %_ZN4ncnn3Mat7releaseEv.exit201, %bb.o, %bb.z, %_ZNK4ncnn3Mat5emptyEv.exit179, %.thread232, %_ZNK4ncnn3Mat5emptyEv.exit180.thread, %_ZNK4ncnn3Mat5emptyEv.exit180, %bb.df, %bb.cx, %_ZN4ncnn3MataSERKS0_.exit182, %bb.b
  %.10 = phi i32 [ %.3, %_ZN4ncnn3MataSERKS0_.exit182 ], [ -1, %bb.b ], [ 0, %bb.df ], [ %.7, %bb.cx ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit180.thread ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit180 ], [ 0, %.thread232 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit179 ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit201 ], [ 0, %bb.o ], [ 0, %bb.z ], [ -100, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.10
}

declare noundef i32 @_ZNK4ncnn7Reshape15eval_shape_exprERKSt6vectorINS_3MatESaIS2_EERiS7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Reshape_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.h, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.i = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !37
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 4 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !37
  %i.l = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %.not95 = icmp sgt i32 %i.l, %i.k
  br i1 %.not95, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = load i32, ptr %4, align 4, !tbaa !37     ; 7 uses
  %i.p = icmp sgt i32 %i.o, 3
  br i1 %i.p, label %.lr.ph98.split.preheader, label %.lr.ph98.split.us

.lr.ph98.split.preheader:                         ; preds = %.lr.ph98
  %i.q = sext i32 %i.l to i64
  %i.r = add nsw i32 %i.k, 1
  br label %.lr.ph98.split

.lr.ph98.split.us:                                ; preds = %.lr.ph98
  %i.s = load ptr, ptr %3, align 8, !tbaa !43     ; 4 uses
end_hunk_1
