Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/smpdtfmt?download=true
inline.NumInlined: 584
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6icu_7816SimpleDateFormat8subParseERKNS_13UnicodeStringERiDsiaaPaS4_RNS_8CalendarEiPNS_13MessageFormatEP23UTimeZoneFormatTimeTypePi:bb.a
bb.cc:                                            ; preds = %bb.cb
  %i.jv = icmp eq i32 %i.h, 2
  br i1 %i.jv, label %.thread896, label %.thread901

.thread896:                                       ; preds = %bb.cc
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  br label %bb.ce

.thread901:                                       ; preds = %bb.cc
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 192
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 256
  br label %bb.cl

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %i.jz = icmp eq i32 %i.h, 2
  br i1 %i.jz, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %.thread896, %bb.cd
  %.0676900 = phi ptr [ %i.jw, %.thread896 ], [ null, %bb.cd ]
  %.0677899 = phi ptr [ %i.jr, %.thread896 ], [ null, %bb.cd ]
  %i.ka = load ptr, ptr %0, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 224
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = call noundef signext i8 %i.kc(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.ke = icmp ne i8 %i.kd, 0
  %i.kf = add i32 %4, -3
  %i.kg = icmp ult i32 %i.kf, 2
  %or.cond60 = and i1 %i.kg, %i.ke
  br i1 %or.cond60, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.kh = load ptr, ptr %i.jo, align 8            ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 488
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  %i.km = load i32, ptr %i.kl, align 8            ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 80
  %i.ko = load i32, ptr %i.kn, align 8
  %i.kp = icmp eq i32 %i.km, %i.ko
  br i1 %i.kp, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.kq = load i32, ptr %2, align 4
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 56
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kh, i64 72
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = call noundef i32 @_ZNK6icu_7816SimpleDateFormat22matchAlphaMonthStringsERKNS_13UnicodeStringEiPS2_S4_iRNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.kq, ptr noundef %i.ks, ptr noundef %i.ku, i32 noundef %i.km, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %.thread911, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %.0672 = phi i32 [ %i.kv, %bb.ch ], [ 0, %bb.cg ], [ 0, %bb.cf ], [ 0, %bb.ce ]
  %i.kx = load ptr, ptr %0, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 224
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = call noundef signext i8 %i.kz(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.lb = icmp ne i8 %i.la, 0
  %i.lc = icmp eq i32 %4, 4
  %or.cond62 = or i1 %i.lc, %i.lb
  br i1 %or.cond62, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ld = load i32, ptr %2, align 4
  %i.le = load ptr, ptr %i.jo, align 8            ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 56
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 64
  %i.li = load i32, ptr %i.lh, align 8
  %i.lj = call noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ld, i32 noundef 2, ptr noundef %i.lg, i32 noundef %i.li, ptr noundef %.0677899, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %.thread911, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.1673 = phi i32 [ %i.lj, %bb.cj ], [ %.0672, %bb.ci ]
  %i.ll = load ptr, ptr %0, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 224
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = call noundef signext i8 %i.ln(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.lp = icmp ne i8 %i.lo, 0
  %i.lq = icmp eq i32 %4, 3
  %or.cond64 = or i1 %i.lq, %i.lp
  br i1 %or.cond64, label %bb.cs, label %.thread907

bb.cl:                                            ; preds = %.thread901, %bb.cd
  %.0676905 = phi ptr [ %i.jy, %.thread901 ], [ null, %bb.cd ]
  %.0677904 = phi ptr [ %i.jx, %.thread901 ], [ null, %bb.cd ]
  %i.lr = load ptr, ptr %0, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 224
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = call noundef signext i8 %i.lt(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.lv = icmp ne i8 %i.lu, 0
  %i.lw = add i32 %4, -3
  %i.lx = icmp ult i32 %i.lw, 2
  %or.cond68 = and i1 %i.lx, %i.lv
  br i1 %or.cond68, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.ly = load ptr, ptr %i.jo, align 8            ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 488
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 112
  %i.md = load i32, ptr %i.mc, align 8            ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 128
  %i.mf = load i32, ptr %i.me, align 8
  %i.mg = icmp eq i32 %i.md, %i.mf
  br i1 %i.mg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.mh = load i32, ptr %2, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 104
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 120
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = call noundef i32 @_ZNK6icu_7816SimpleDateFormat22matchAlphaMonthStringsERKNS_13UnicodeStringEiPS2_S4_iRNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.mh, ptr noundef %i.mj, ptr noundef %i.ml, i32 noundef %i.md, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %.thread911, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl
  %.2674 = phi i32 [ %i.mm, %bb.co ], [ 0, %bb.cn ], [ 0, %bb.cm ], [ 0, %bb.cl ]
  %i.mo = load ptr, ptr %0, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 224
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = call noundef signext i8 %i.mq(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.ms = icmp ne i8 %i.mr, 0
  %i.mt = icmp eq i32 %4, 4
  %or.cond70 = or i1 %i.mt, %i.ms
  br i1 %or.cond70, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.mu = load i32, ptr %2, align 4
  %i.mv = load ptr, ptr %i.jo, align 8            ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 104
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 112
  %i.mz = load i32, ptr %i.my, align 8
  %i.na = call noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.mu, i32 noundef 2, ptr noundef %i.mx, i32 noundef %i.mz, ptr noundef %.0677904, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %.thread911, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.3675 = phi i32 [ %i.na, %bb.cq ], [ %.2674, %bb.cp ]
  %i.nc = load ptr, ptr %0, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 224
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = call noundef signext i8 %i.ne(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.ng = icmp ne i8 %i.nf, 0
  %i.nh = icmp eq i32 %4, 3
  %or.cond72 = or i1 %i.nh, %i.ng
  br i1 %or.cond72, label %bb.cs, label %.thread907

bb.cs:                                            ; preds = %bb.cr, %bb.ck
  %.sink1085 = phi i64 [ 72, %bb.ck ], [ 120, %bb.cr ]
  %.sink1082 = phi i64 [ 80, %bb.ck ], [ 128, %bb.cr ]
  %.0676905.sink = phi ptr [ %.0676900, %bb.ck ], [ %.0676905, %bb.cr ]
  %i.ni = load i32, ptr %2, align 4
  %i.nj = load ptr, ptr %i.jo, align 8            ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %.sink1085
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 %.sink1082
  %i.nn = load i32, ptr %i.nm, align 8
  %i.no = call noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ni, i32 noundef 2, ptr noundef %i.nl, i32 noundef %i.nn, ptr noundef %.0676905.sink, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %.thread911, label %.thread907

.thread907:                                       ; preds = %bb.cr, %bb.ck, %bb.cs
  %.4909 = phi i32 [ %i.no, %bb.cs ], [ %.3675, %bb.cr ], [ %.1673, %bb.ck ]
  %i.nq = load ptr, ptr %0, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 224
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = call noundef signext i8 %i.ns(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %.not839.not = icmp eq i8 %i.nt, 0
  br i1 %.not839.not, label %.thread911, label %bb.gj

bb.ct:                                            ; preds = %bb.an
  %i.nu = load ptr, ptr %9, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 128
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = call noundef i32 %i.nw(ptr noundef nonnull align 8 dereferenceable(256) %9, i32 noundef 11) #17
  %i.ny = add nsw i32 %i.nx, 1
  %i.nz = icmp eq i32 %.4687, %i.ny
  %spec.select862 = select i1 %i.nz, i32 0, i32 %.4687
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.an
  %.7690 = phi i32 [ %.4687, %bb.an ], [ %spec.select862, %bb.ct ]
  call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %9, i32 noundef 11, i32 noundef %.7690) #17
  %i.oa = load i32, ptr %i.f, align 8
  br label %.thread911

bb.cv:                                            ; preds = %bb.an
  %i.ob = load i32, ptr %2, align 4
  %i.oc = call noundef i32 @_ZNK6icu_7816SimpleDateFormat11countDigitsERKNS_13UnicodeStringEii(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ob, i32 noundef %i.ex) ; 8 uses
  %i.od = icmp slt i32 %i.oc, 3
  br i1 %i.od, label %.preheader.preheader, label %.preheader969

.preheader.preheader:                             ; preds = %bb.cv
  %i.oe = sub i32 3, %i.oc                        ; 3 uses
  %min.iters.check1096 = icmp ult i32 %i.oe, 8
  br i1 %min.iters.check1096, label %.preheader.preheader1119, label %vector.ph1097

vector.ph1097:                                    ; preds = %.preheader.preheader
  %n.vec1098 = and i32 %i.oe, -8                  ; 3 uses
  %i.of = add i32 %i.oc, %n.vec1098
  %i.og = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.4687, i64 0
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %vector.ph1097
  %index1100 = phi i32 [ 0, %vector.ph1097 ], [ %index.next1103, %vector.body1099 ]
  %vec.phi1101 = phi <4 x i32> [ %i.og, %vector.ph1097 ], [ %i.oh, %vector.body1099 ]
  %vec.phi1102 = phi <4 x i32> [ splat (i32 1), %vector.ph1097 ], [ %i.oi, %vector.body1099 ]
  %i.oh = mul <4 x i32> %vec.phi1101, splat (i32 10) ; 2 uses
  %i.oi = mul <4 x i32> %vec.phi1102, splat (i32 10) ; 2 uses
  %index.next1103 = add nuw i32 %index1100, 8     ; 2 uses
  %i.oj = icmp eq i32 %index.next1103, %n.vec1098
  br i1 %i.oj, label %middle.block1104, label %vector.body1099, !llvm.loop !35

middle.block1104:                                 ; preds = %vector.body1099
  %bin.rdx1105 = mul <4 x i32> %i.oi, %i.oh
  %i.ok = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1105) ; 2 uses
  %cmp.n1106 = icmp eq i32 %i.oe, %n.vec1098
  br i1 %cmp.n1106, label %.loopexit, label %.preheader.preheader1119

.preheader.preheader1119:                         ; preds = %.preheader.preheader, %middle.block1104
  %.8691984.ph = phi i32 [ %.4687, %.preheader.preheader ], [ %i.ok, %middle.block1104 ]
  %.0722983.ph = phi i32 [ %i.oc, %.preheader.preheader ], [ %i.of, %middle.block1104 ]
  br label %.preheader

.preheader969:                                    ; preds = %bb.cv
  %.not985 = icmp eq i32 %i.oc, 3
  br i1 %.not985, label %._crit_edge981, label %.lr.ph980.preheader

.lr.ph980.preheader:                              ; preds = %.preheader969
  %i.ol = add nsw i32 %i.oc, -3                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ol, 8
  br i1 %min.iters.check, label %.lr.ph980.preheader1122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph980.preheader
  %n.vec = and i32 %i.ol, -8                      ; 3 uses
  %i.om = sub i32 %i.oc, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = mul <4 x i32> %reduced.phi, splat (i32 100) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.on = icmp eq i32 %index.next, %n.vec
  br i1 %i.on, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %i.oo = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ol, %n.vec
  br i1 %cmp.n, label %._crit_edge981, label %.lr.ph980.preheader1122

.lr.ph980.preheader1122:                          ; preds = %.lr.ph980.preheader, %middle.block
  %.0671979.ph = phi i32 [ 1, %.lr.ph980.preheader ], [ %i.oo, %middle.block ]
  %.1723978.ph = phi i32 [ %i.oc, %.lr.ph980.preheader ], [ %i.om, %middle.block ]
  br label %.lr.ph980

.preheader:                                       ; preds = %.preheader.preheader1119, %.preheader
  %.8691984 = phi i32 [ %i.op, %.preheader ], [ %.8691984.ph, %.preheader.preheader1119 ]
  %.0722983 = phi i32 [ %i.oq, %.preheader ], [ %.0722983.ph, %.preheader.preheader1119 ]
  %i.op = mul nsw i32 %.8691984, 10               ; 2 uses
  %i.oq = add i32 %.0722983, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.oq, 3
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !37

.lr.ph980:                                        ; preds = %.lr.ph980.preheader1122, %.lr.ph980
  %.0671979 = phi i32 [ %i.or, %.lr.ph980 ], [ %.0671979.ph, %.lr.ph980.preheader1122 ]
  %.1723978 = phi i32 [ %i.os, %.lr.ph980 ], [ %.1723978.ph, %.lr.ph980.preheader1122 ] ; 2 uses
  %i.or = mul nuw nsw i32 %.0671979, 10           ; 2 uses
  %i.os = add nsw i32 %.1723978, -1
  %i.ot = icmp samesign ugt i32 %.1723978, 4
  br i1 %i.ot, label %.lr.ph980, label %._crit_edge981, !llvm.loop !38

._crit_edge981:                                   ; preds = %.lr.ph980, %middle.block, %.preheader969
  %.0671.lcssa = phi i32 [ 1, %.preheader969 ], [ %i.oo, %middle.block ], [ %i.or, %.lr.ph980 ]
  %i.ou = sdiv i32 %.4687, %.0671.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %middle.block1104, %._crit_edge981
  %.9692 = phi i32 [ %i.ou, %._crit_edge981 ], [ %i.ok, %middle.block1104 ], [ %i.op, %.preheader ]
  call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %9, i32 noundef 14, i32 noundef %.9692) #17
  %i.ov = load i32, ptr %i.f, align 8
  br label %.thread911

bb.cw:                                            ; preds = %.thread885
  br i1 %.not828, label %bb.cx, label %.thread914

.thread914:                                       ; preds = %bb.cw
  call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %9, i32 noundef 18, i32 noundef %.4687) #17
  %i.ow = load i32, ptr %i.f, align 8
  br label %.thread911

bb.cx:                                            ; preds = %.thread885, %bb.cw, %bb.an
  %i.ox = load ptr, ptr %0, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 224
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = call noundef signext i8 %i.oz(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.pb = icmp ne i8 %i.pa, 0
  %i.pc = icmp eq i32 %4, 4
  %or.cond74 = or i1 %i.pc, %i.pb
  br i1 %or.cond74, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.pd = load i32, ptr %2, align 4
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.pf = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 152
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 160
  %i.pj = load i32, ptr %i.pi, align 8
  %i.pk = call noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.pd, i32 noundef 7, ptr noundef %i.ph, i32 noundef %i.pj, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.pl = icmp sgt i32 %i.pk, 0
  br i1 %i.pl, label %.thread911, label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.0668 = phi i32 [ %i.pk, %bb.cy ], [ 0, %bb.cx ]
  %i.pm = load ptr, ptr %0, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 224
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = call noundef signext i8 %i.po(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.pq = icmp ne i8 %i.pp, 0
  %i.pr = icmp eq i32 %4, 3
  %or.cond76 = or i1 %i.pr, %i.pq
  br i1 %or.cond76, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ps = load i32, ptr %2, align 4
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.pu = load ptr, ptr %i.pt, align 8            ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 168
  %i.pw = load ptr, ptr %i.pv, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 176
  %i.py = load i32, ptr %i.px, align 8
  %i.pz = call noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ps, i32 noundef 7, ptr noundef %i.pw, i32 noundef %i.py, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.qa = icmp sgt i32 %i.pz, 0
  br i1 %i.qa, label %.thread911, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.1669 = phi i32 [ %i.pz, %bb.da ], [ %.0668, %bb.cz ]
  %i.qb = load ptr, ptr %0, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 224
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = call noundef signext i8 %i.qd(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.qf = icmp ne i8 %i.qe, 0
  %i.qg = icmp eq i32 %4, 6
  %or.cond78 = or i1 %i.qg, %i.qf
  br i1 %or.cond78, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.qh = load i32, ptr %2, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.qj = load ptr, ptr %i.qi, align 8            ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 184
  %i.ql = load ptr, ptr %i.qk, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 192
  %i.qn = load i32, ptr %i.qm, align 8
  %i.qo = call noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.qh, i32 noundef 7, ptr noundef %i.ql, i32 noundef %i.qn, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.qp = icmp sgt i32 %i.qo, 0
  br i1 %i.qp, label %.thread911, label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.2670 = phi i32 [ %i.qo, %bb.dc ], [ %.1669, %bb.db ]
  %i.qq = load ptr, ptr %0, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 224
  %i.qs = load ptr, ptr %i.qr, align 8
  %i.qt = call noundef signext i8 %i.qs(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.qu = icmp ne i8 %i.qt, 0
  %i.qv = icmp eq i32 %4, 5
  %or.cond80 = or i1 %i.qv, %i.qu
  br i1 %or.cond80, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.qw = load i32, ptr %2, align 4
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.qy = load ptr, ptr %i.qx, align 8            ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 200
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 208
  %i.rc = load i32, ptr %i.rb, align 8
  %i.rd = call noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.qw, i32 noundef 7, ptr noundef %i.ra, i32 noundef %i.rc, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.re = icmp sgt i32 %i.rd, 0
  br i1 %i.re, label %.thread911, label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de
  %.3 = phi i32 [ %i.rd, %bb.de ], [ %.2670, %bb.dd ]
  %i.rf = load ptr, ptr %0, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 224
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = call noundef signext i8 %i.rh(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.rj = icmp ne i8 %i.ri, 0
  %i.rk = icmp ne i32 %i.h, 9
  %or.cond82.not = and i1 %i.rk, %i.rj
  br i1 %or.cond82.not, label %bb.gj, label %.thread911

bb.dg:                                            ; preds = %.thread885
  br i1 %.not828, label %bb.dh, label %.thread920

.thread920:                                       ; preds = %bb.dg
  call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %9, i32 noundef 18, i32 noundef %.4687) #17
  %i.rl = load i32, ptr %i.f, align 8
  br label %.thread911

bb.dh:                                            ; preds = %bb.dg
  %i.rm = load ptr, ptr %0, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 224
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = call noundef signext i8 %i.ro(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.rq = icmp ne i8 %i.rp, 0
  %i.rr = icmp eq i32 %4, 4
  %or.cond84 = or i1 %i.rr, %i.rq
  br i1 %or.cond84, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.rs = load i32, ptr %2, align 4
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ru = load ptr, ptr %i.rt, align 8            ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 216
  %i.rw = load ptr, ptr %i.rv, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 224
  %i.ry = load i32, ptr %i.rx, align 8
  %i.rz = call noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.rs, i32 noundef 7, ptr noundef %i.rw, i32 noundef %i.ry, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.sa = icmp sgt i32 %i.rz, 0
  br i1 %i.sa, label %.thread911, label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.0665 = phi i32 [ %i.rz, %bb.di ], [ 0, %bb.dh ]
  %i.sb = load ptr, ptr %0, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 224
  %i.sd = load ptr, ptr %i.sc, align 8
  %i.se = call noundef signext i8 %i.sd(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  %i.sf = icmp ne i8 %i.se, 0
  %i.sg = icmp eq i32 %4, 3
  %or.cond86 = or i1 %i.sg, %i.sf
  br i1 %or.cond86, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.sh = load i32, ptr %2, align 4
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.sj = load ptr, ptr %i.si, align 8            ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 232
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 240
  %i.sn = load i32, ptr %i.sm, align 8
  %i.so = call noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.sh, i32 noundef 7, ptr noundef %i.sl, i32 noundef %i.sn, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %9) ; 3 uses
  %i.sp = icmp sgt i32 %i.so, 0
  br i1 %i.sp, label %.thread911, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.1666 = phi i32 [ %i.so, %bb.dk ], [ %.0665, %bb.dj ]
  %i.sq = load ptr, ptr %0, align 8
end_hunk_0
