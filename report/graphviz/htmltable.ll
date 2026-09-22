Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/htmltable?download=true
inline.NumInlined: 100
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pos_html_tbl:bb.a
bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.aa
  %.sroa.22.0 = phi double [ %i.fu, %bb.aa ], [ %i.hi, %bb.ak ], [ %i.hd, %bb.ai ], [ %i.he, %bb.aj ], [ %i.fu, %bb.ag ] ; 2 uses
  %.sroa.15.1 = phi double [ %i.fr, %bb.aa ], [ %.sroa.15.0, %bb.ak ], [ %.sroa.15.0, %bb.ai ], [ %.sroa.15.0, %bb.aj ], [ %.sroa.15.0, %bb.ag ] ; 2 uses
  %.sroa.9.0 = phi double [ %i.fx, %bb.aa ], [ %i.hh, %bb.ak ], [ %i.fx, %bb.ai ], [ %i.hf, %bb.aj ], [ %i.fx, %bb.ag ] ; 2 uses
  %.sroa.0142.1 = phi double [ %i.fm, %bb.aa ], [ %.sroa.0142.0, %bb.ak ], [ %.sroa.0142.0, %bb.ai ], [ %.sroa.0142.0, %bb.aj ], [ %.sroa.0142.0, %bb.ag ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  store double %.sroa.0142.1, ptr %i.hj, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !25
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  store double %.sroa.15.1, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  store double %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eo, i64 63
  store i8 %.3, ptr %i.hk, align 1, !tbaa !286
  %i.hl = getelementptr inbounds nuw i8, ptr %i.eo, i64 61
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !91
  %i.hn = uitofp i8 %i.hm to double               ; 4 uses
  %i.ho = fadd double %.sroa.0142.1, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.eo, i64 62
  %i.hq = load i8, ptr %i.hp, align 2, !tbaa !157
  %i.hr = uitofp i8 %i.hq to double               ; 4 uses
  %i.hs = fadd double %i.ho, %i.hr                ; 6 uses
  store double %i.hs, ptr %3, align 8, !tbaa !284
  %i.ht = fadd double %.sroa.9.0, %i.hn
  %i.hu = fadd double %i.ht, %i.hr                ; 6 uses
  store double %i.hu, ptr %i.dn, align 8, !tbaa !285
  %i.hv = fsub double %.sroa.15.1, %i.hn
  %i.hw = fsub double %i.hv, %i.hr                ; 6 uses
  store double %i.hw, ptr %i.do, align 8, !tbaa !104
  %i.hx = fsub double %.sroa.22.0, %i.hn
  %i.hy = fsub double %i.hx, %i.hr                ; 6 uses
  store double %i.hy, ptr %i.dp, align 8, !tbaa !105
  %i.hz = getelementptr inbounds nuw i8, ptr %i.eo, i64 112 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.eo, i64 120
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !92
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !21 ; 7 uses
  switch i32 %i.ib, label %bb.aw [
    i32 1, label %bb.am
    i32 3, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @pos_html_tbl(ptr noundef %i.ic, ptr noundef nonnull byval(%struct.boxf) align 8 %3, i8 noundef zeroext range(i8 0, 16) %.3), !inline_history !277
  br label %pos_html_cell.exit

bb.an:                                            ; preds = %bb.al
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %.sroa.0.0.copyload5.i = load double, ptr %i.id, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %.sroa.9.0.copyload8.i = load double, ptr %.sroa.9.0..sroa_idx7.i, align 8, !tbaa !25
  %i.ie = fsub double %i.hw, %i.hs
  %i.if = fsub double %i.ie, %.sroa.0.0.copyload5.i ; 3 uses
  %i.ig = fcmp ogt double %i.if, 0.000000e+00
  br i1 %i.ig, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ih = and i16 %i.gl, 6
  switch i16 %i.ih, label %bb.ar [
    i16 4, label %bb.ap
    i16 2, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ii = fsub double %i.hw, %i.if
  store double %i.ii, ptr %i.do, align 8, !tbaa !104
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ij = fadd double %i.hs, %i.if
  store double %i.ij, ptr %3, align 8, !tbaa !284
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.ik = fsub double %i.hy, %i.hu
  %i.il = fsub double %i.ik, %.sroa.9.0.copyload8.i ; 3 uses
  %i.im = fcmp ogt double %i.il, 0.000000e+00
  br i1 %i.im, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.in = and i16 %i.gl, 24
  switch i16 %i.in, label %bb.av [
    i16 16, label %bb.at
    i16 8, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.io = fsub double %i.hy, %i.il
  store double %i.io, ptr %i.dp, align 8, !tbaa !105
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ip = fadd double %i.hu, %i.il
  store double %i.ip, ptr %i.dn, align 8, !tbaa !285
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ic, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  br label %pos_html_cell.exit

bb.aw:                                            ; preds = %bb.al
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %.sroa.0.0.copyload6.i = load double, ptr %i.iq, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %.sroa.9.0.copyload10.i = load double, ptr %.sroa.9.0..sroa_idx9.i, align 8, !tbaa !25
  %i.ir = fsub double %i.hw, %i.hs
  %i.is = fsub double %i.ir, %.sroa.0.0.copyload6.i ; 4 uses
  %i.it = fcmp ogt double %i.is, 0.000000e+00
  br i1 %i.it, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.iu = and i16 %i.gl, 6
  switch i16 %i.iu, label %.unreachabledefault.i [
    i16 6, label %bb.bb
    i16 4, label %bb.ay
    i16 2, label %bb.az
    i16 0, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.iv = fsub double %i.hw, %i.is
  store double %i.iv, ptr %i.do, align 8, !tbaa !104
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.iw = fadd double %i.hs, %i.is
  store double %i.iw, ptr %3, align 8, !tbaa !284
  br label %bb.bb

.unreachabledefault.i:                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.ix = fmul nnan double %i.is, 5.000000e-01    ; 2 uses
  %i.iy = fadd double %i.hs, %i.ix
  store double %i.iy, ptr %3, align 8, !tbaa !284
  %i.iz = fsub double %i.hw, %i.ix
  store double %i.iz, ptr %i.do, align 8, !tbaa !104
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.ja = fsub double %i.hy, %i.hu
  %i.jb = fsub double %i.ja, %.sroa.9.0.copyload10.i ; 4 uses
  %i.jc = fcmp ogt double %i.jb, 0.000000e+00
  br i1 %i.jc, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.jd = and i16 %i.gl, 24
  switch i16 %i.jd, label %bb.bf [
    i16 16, label %bb.bd
    i16 8, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.je = fsub double %i.hy, %i.jb
  store double %i.je, ptr %i.dp, align 8, !tbaa !105
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.jf = fadd double %i.hu, %i.jb
  store double %i.jf, ptr %i.dn, align 8, !tbaa !285
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.jg = fmul nnan double %i.jb, 5.000000e-01    ; 2 uses
  %i.jh = fadd double %i.hu, %i.jg
  store double %i.jh, ptr %i.dn, align 8, !tbaa !285
  %i.ji = fsub double %i.hy, %i.jg
  store double %i.ji, ptr %i.dp, align 8, !tbaa !105
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jj, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !287
  %i.jk = load i16, ptr %i.gk, align 8, !tbaa !155
  %i.jl = and i16 %i.jk, 768                      ; 2 uses
  %switch.selectcmp.i = icmp eq i16 %i.jl, 256
  %switch.select.i = select i1 %switch.selectcmp.i, i8 114, i8 110
  %switch.selectcmp84.i = icmp eq i16 %i.jl, 512
  %switch.select85.i = select i1 %switch.selectcmp84.i, i8 108, i8 %switch.select.i ; 25 uses
  %i.jm = load ptr, ptr %i.hz, align 8, !tbaa !21 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !107 ; 9 uses
  %.not.i140 = icmp eq i64 %i.jo, 0
  br i1 %.not.i140, label %pos_html_cell.exit, label %iter.check

iter.check:                                       ; preds = %bb.bg
  %i.jp = load ptr, ptr %i.jm, align 8, !tbaa !108 ; 25 uses
  %min.iters.check = icmp ult i64 %i.jo, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check191 = icmp ult i64 %i.jo, 16
  br i1 %min.iters.check191, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jq = and i64 %i.jo, 8
  %n.vec = and i64 %i.jo, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue221
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue221 ] ; 17 uses
  %i.jr = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.js = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jt = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.ju = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jv = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jw = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jx = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jy = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jz = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.ka = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kb = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kc = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kd = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.ke = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kf = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kg = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.js, i64 56 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jt, i64 96 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ju, i64 136 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jv, i64 176 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jw, i64 216 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jx, i64 256 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jy, i64 296 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 336 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ka, i64 376 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 416 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 456 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kd, i64 496 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 536 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kf, i64 576 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kg, i64 616 ; 2 uses
  %i.kx = load i8, ptr %i.kh, align 8, !tbaa !111
  %i.ky = load i8, ptr %i.ki, align 8, !tbaa !111
  %i.kz = load i8, ptr %i.kj, align 8, !tbaa !111
  %i.la = load i8, ptr %i.kk, align 8, !tbaa !111
  %i.lb = load i8, ptr %i.kl, align 8, !tbaa !111
  %i.lc = load i8, ptr %i.km, align 8, !tbaa !111
  %i.ld = load i8, ptr %i.kn, align 8, !tbaa !111
  %i.le = load i8, ptr %i.ko, align 8, !tbaa !111
  %i.lf = load i8, ptr %i.kp, align 8, !tbaa !111
  %i.lg = load i8, ptr %i.kq, align 8, !tbaa !111
  %i.lh = load i8, ptr %i.kr, align 8, !tbaa !111
  %i.li = load i8, ptr %i.ks, align 8, !tbaa !111
  %i.lj = load i8, ptr %i.kt, align 8, !tbaa !111
  %i.lk = load i8, ptr %i.ku, align 8, !tbaa !111
  %i.ll = load i8, ptr %i.kv, align 8, !tbaa !111
  %i.lm = load i8, ptr %i.kw, align 8, !tbaa !111
  %i.ln = insertelement <16 x i8> poison, i8 %i.kx, i64 0
  %i.lo = insertelement <16 x i8> %i.ln, i8 %i.ky, i64 1
  %i.lp = insertelement <16 x i8> %i.lo, i8 %i.kz, i64 2
  %i.lq = insertelement <16 x i8> %i.lp, i8 %i.la, i64 3
  %i.lr = insertelement <16 x i8> %i.lq, i8 %i.lb, i64 4
  %i.ls = insertelement <16 x i8> %i.lr, i8 %i.lc, i64 5
  %i.lt = insertelement <16 x i8> %i.ls, i8 %i.ld, i64 6
  %i.lu = insertelement <16 x i8> %i.lt, i8 %i.le, i64 7
  %i.lv = insertelement <16 x i8> %i.lu, i8 %i.lf, i64 8
  %i.lw = insertelement <16 x i8> %i.lv, i8 %i.lg, i64 9
  %i.lx = insertelement <16 x i8> %i.lw, i8 %i.lh, i64 10
  %i.ly = insertelement <16 x i8> %i.lx, i8 %i.li, i64 11
  %i.lz = insertelement <16 x i8> %i.ly, i8 %i.lj, i64 12
  %i.ma = insertelement <16 x i8> %i.lz, i8 %i.lk, i64 13
  %i.mb = insertelement <16 x i8> %i.ma, i8 %i.ll, i64 14
  %i.mc = insertelement <16 x i8> %i.mb, i8 %i.lm, i64 15
  %i.md = icmp eq <16 x i8> %i.mc, zeroinitializer ; 16 uses
  %i.me = extractelement <16 x i1> %i.md, i64 0
  br i1 %i.me, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 %switch.select85.i, ptr %i.kh, align 8, !tbaa !111
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.mf = extractelement <16 x i1> %i.md, i64 1
  br i1 %i.mf, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue
  store i8 %switch.select85.i, ptr %i.ki, align 8, !tbaa !111
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue
  %i.mg = extractelement <16 x i1> %i.md, i64 2
  br i1 %i.mg, label %pred.store.if194, label %pred.store.continue195

pred.store.if194:                                 ; preds = %pred.store.continue193
  store i8 %switch.select85.i, ptr %i.kj, align 8, !tbaa !111
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.if194, %pred.store.continue193
  %i.mh = extractelement <16 x i1> %i.md, i64 3
  br i1 %i.mh, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue195
  store i8 %switch.select85.i, ptr %i.kk, align 8, !tbaa !111
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue195
  %i.mi = extractelement <16 x i1> %i.md, i64 4
  br i1 %i.mi, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue197
  store i8 %switch.select85.i, ptr %i.kl, align 8, !tbaa !111
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.if198, %pred.store.continue197
  %i.mj = extractelement <16 x i1> %i.md, i64 5
  br i1 %i.mj, label %pred.store.if200, label %pred.store.continue201

pred.store.if200:                                 ; preds = %pred.store.continue199
  store i8 %switch.select85.i, ptr %i.km, align 8, !tbaa !111
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue199
  %i.mk = extractelement <16 x i1> %i.md, i64 6
  br i1 %i.mk, label %pred.store.if202, label %pred.store.continue203

pred.store.if202:                                 ; preds = %pred.store.continue201
  store i8 %switch.select85.i, ptr %i.kn, align 8, !tbaa !111
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %i.ml = extractelement <16 x i1> %i.md, i64 7
  br i1 %i.ml, label %pred.store.if204, label %pred.store.continue205

pred.store.if204:                                 ; preds = %pred.store.continue203
  store i8 %switch.select85.i, ptr %i.ko, align 8, !tbaa !111
  br label %pred.store.continue205

pred.store.continue205:                           ; preds = %pred.store.if204, %pred.store.continue203
  %i.mm = extractelement <16 x i1> %i.md, i64 8
  br i1 %i.mm, label %pred.store.if206, label %pred.store.continue207

pred.store.if206:                                 ; preds = %pred.store.continue205
  store i8 %switch.select85.i, ptr %i.kp, align 8, !tbaa !111
  br label %pred.store.continue207

pred.store.continue207:                           ; preds = %pred.store.if206, %pred.store.continue205
  %i.mn = extractelement <16 x i1> %i.md, i64 9
  br i1 %i.mn, label %pred.store.if208, label %pred.store.continue209

pred.store.if208:                                 ; preds = %pred.store.continue207
  store i8 %switch.select85.i, ptr %i.kq, align 8, !tbaa !111
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue207
  %i.mo = extractelement <16 x i1> %i.md, i64 10
  br i1 %i.mo, label %pred.store.if210, label %pred.store.continue211

pred.store.if210:                                 ; preds = %pred.store.continue209
  store i8 %switch.select85.i, ptr %i.kr, align 8, !tbaa !111
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %i.mp = extractelement <16 x i1> %i.md, i64 11
  br i1 %i.mp, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %pred.store.continue211
  store i8 %switch.select85.i, ptr %i.ks, align 8, !tbaa !111
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue211
  %i.mq = extractelement <16 x i1> %i.md, i64 12
  br i1 %i.mq, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue213
  store i8 %switch.select85.i, ptr %i.kt, align 8, !tbaa !111
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %i.mr = extractelement <16 x i1> %i.md, i64 13
  br i1 %i.mr, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  store i8 %switch.select85.i, ptr %i.ku, align 8, !tbaa !111
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.ms = extractelement <16 x i1> %i.md, i64 14
  br i1 %i.ms, label %pred.store.if218, label %pred.store.continue219

pred.store.if218:                                 ; preds = %pred.store.continue217
  store i8 %switch.select85.i, ptr %i.kv, align 8, !tbaa !111
  br label %pred.store.continue219

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %i.mt = extractelement <16 x i1> %i.md, i64 15
  br i1 %i.mt, label %pred.store.if220, label %pred.store.continue221

pred.store.if220:                                 ; preds = %pred.store.continue219
  store i8 %switch.select85.i, ptr %i.kw, align 8, !tbaa !111
  br label %pred.store.continue221

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %pred.store.continue221
  %cmp.n = icmp eq i64 %i.jo, %n.vec
end_hunk_0
