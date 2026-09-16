Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/smpdtfmt?download=true
inline.NumInlined: 596
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK6icu_7816SimpleDateFormat8subParseERKNS_13UnicodeStringERiDsiaaPaS4_RNS_8CalendarEiPNS_13MessageFormatEP23UTimeZoneFormatTimeTypePi:bb.a
bb.eh:                                            ; preds = %bb.eg
  %i.lf = load i32, ptr %2, align 4, !tbaa !69
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kw, i64 56
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !92
  %i.li = getelementptr inbounds nuw i8, ptr %i.kw, i64 72
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !96
  %i.lk = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat22matchAlphaMonthStringsERKNS_13UnicodeStringEiPS2_S4_iRNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.lf, ptr noundef %i.lh, ptr noundef %i.lj, i32 noundef %i.lb, ptr noundef nonnull align 8 dereferenceable(256) %9)
          to label %bb.ei unwind label %bb.ej     ; 3 uses

bb.ei:                                            ; preds = %bb.eh
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.thread993, label %bb.ek

bb.ej:                                            ; preds = %.invoke1162, %.thread989, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.eh, %bb.ed
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.on

bb.ek:                                            ; preds = %bb.ei, %bb.eg, %bb.ef, %bb.ee
  %.0675 = phi i32 [ %i.lk, %bb.ei ], [ 0, %bb.eg ], [ 0, %bb.ef ], [ 0, %bb.ee ]
  %i.ln = load ptr, ptr %0, align 8, !tbaa !45
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 224
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = invoke noundef signext i8 %i.lp(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.el unwind label %bb.ej

bb.el:                                            ; preds = %bb.ek
  %i.lr = icmp ne i8 %i.lq, 0
  %i.ls = icmp eq i32 %4, 4
  %or.cond62 = or i1 %i.ls, %i.lr
  br i1 %or.cond62, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %bb.el
  %i.lt = load i32, ptr %2, align 4, !tbaa !69
  %i.lu = load ptr, ptr %i.kd, align 8, !tbaa !46 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 56
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !92
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 64
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !93
  %i.lz = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.lt, i32 noundef 2, ptr noundef %i.lw, i32 noundef %i.ly, ptr noundef %.0680981, ptr noundef nonnull align 8 dereferenceable(256) %9)
          to label %bb.en unwind label %bb.ej     ; 3 uses

bb.en:                                            ; preds = %bb.em
  %i.ma = icmp sgt i32 %i.lz, 0
  br i1 %i.ma, label %.thread993, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.el
  %.1676 = phi i32 [ %i.lz, %bb.en ], [ %.0675, %bb.el ]
  %i.mb = load ptr, ptr %0, align 8, !tbaa !45
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 224
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = invoke noundef signext i8 %i.md(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ep unwind label %bb.ej

bb.ep:                                            ; preds = %bb.eo
  %i.mf = icmp ne i8 %i.me, 0
  %i.mg = icmp eq i32 %4, 3
  %or.cond64 = or i1 %i.mg, %i.mf
  br i1 %or.cond64, label %.invoke1162, label %.thread989

bb.eq:                                            ; preds = %.thread983, %bb.ec
  %.0679987 = phi ptr [ %i.kn, %.thread983 ], [ null, %bb.ec ]
  %.0680986 = phi ptr [ %i.km, %.thread983 ], [ null, %bb.ec ]
  %i.mh = load ptr, ptr %0, align 8, !tbaa !45
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 224
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = invoke noundef signext i8 %i.mj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.er unwind label %bb.ej

bb.er:                                            ; preds = %bb.eq
  %i.ml = icmp ne i8 %i.mk, 0
  %i.mm = add i32 %4, -3
  %i.mn = icmp ult i32 %i.mm, 2
  %or.cond68 = and i1 %i.mn, %i.ml
  br i1 %or.cond68, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %bb.er
  %i.mo = load ptr, ptr %i.kd, align 8, !tbaa !46 ; 5 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 488
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !90
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 112
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !95 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 128
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !99
  %i.mw = icmp eq i32 %i.mt, %i.mv
  br i1 %i.mw, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.mx = load i32, ptr %2, align 4, !tbaa !69
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 104
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !94
  %i.na = getelementptr inbounds nuw i8, ptr %i.mo, i64 120
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !98
  %i.nc = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat22matchAlphaMonthStringsERKNS_13UnicodeStringEiPS2_S4_iRNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.mx, ptr noundef %i.mz, ptr noundef %i.nb, i32 noundef %i.mt, ptr noundef nonnull align 8 dereferenceable(256) %9)
          to label %bb.ev unwind label %bb.ej     ; 3 uses

bb.ev:                                            ; preds = %bb.eu
  %i.nd = icmp sgt i32 %i.nc, 0
  br i1 %i.nd, label %.thread993, label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.et, %bb.es, %bb.er
  %.2677 = phi i32 [ %i.nc, %bb.ev ], [ 0, %bb.et ], [ 0, %bb.es ], [ 0, %bb.er ]
  %i.ne = load ptr, ptr %0, align 8, !tbaa !45
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 224
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = invoke noundef signext i8 %i.ng(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ex unwind label %bb.ej

bb.ex:                                            ; preds = %bb.ew
  %i.ni = icmp ne i8 %i.nh, 0
  %i.nj = icmp eq i32 %4, 4
  %or.cond70 = or i1 %i.nj, %i.ni
  br i1 %or.cond70, label %bb.ey, label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.nk = load i32, ptr %2, align 4, !tbaa !69
  %i.nl = load ptr, ptr %i.kd, align 8, !tbaa !46 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 104
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !94
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 112
  %i.np = load i32, ptr %i.no, align 8, !tbaa !95
  %i.nq = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.nk, i32 noundef 2, ptr noundef %i.nn, i32 noundef %i.np, ptr noundef %.0680986, ptr noundef nonnull align 8 dereferenceable(256) %9)
          to label %bb.ez unwind label %bb.ej     ; 3 uses

bb.ez:                                            ; preds = %bb.ey
  %i.nr = icmp sgt i32 %i.nq, 0
  br i1 %i.nr, label %.thread993, label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ex
  %.3678 = phi i32 [ %i.nq, %bb.ez ], [ %.2677, %bb.ex ]
  %i.ns = load ptr, ptr %0, align 8, !tbaa !45
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 224
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = invoke noundef signext i8 %i.nu(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.fb unwind label %bb.ej

bb.fb:                                            ; preds = %bb.fa
  %i.nw = icmp ne i8 %i.nv, 0
  %i.nx = icmp eq i32 %4, 3
  %or.cond72 = or i1 %i.nx, %i.nw
  br i1 %or.cond72, label %.invoke1162, label %.thread989

.invoke1162:                                      ; preds = %bb.fb, %bb.ep
  %.sink1166 = phi i64 [ 72, %bb.ep ], [ 120, %bb.fb ]
  %.sink1164 = phi i64 [ 80, %bb.ep ], [ 128, %bb.fb ]
  %i.ny = phi ptr [ %.0679982, %bb.ep ], [ %.0679987, %bb.fb ]
  %i.nz = load i32, ptr %2, align 4, !tbaa !69
  %i.oa = load ptr, ptr %i.kd, align 8, !tbaa !46 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.sink1166
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !141
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.sink1164
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !69
  %i.of = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.nz, i32 noundef 2, ptr noundef %i.oc, i32 noundef %i.oe, ptr noundef %i.ny, ptr noundef nonnull align 8 dereferenceable(256) %9)
          to label %bb.fc unwind label %bb.ej     ; 3 uses

bb.fc:                                            ; preds = %.invoke1162
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %.thread993, label %.thread989

.thread989:                                       ; preds = %bb.ep, %bb.fb, %bb.fc
  %.4991 = phi i32 [ %i.of, %bb.fc ], [ %.1676, %bb.ep ], [ %.3678, %bb.fb ]
  %i.oh = load ptr, ptr %0, align 8, !tbaa !45
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 224
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = invoke noundef signext i8 %i.oj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.fd unwind label %bb.ej

bb.fd:                                            ; preds = %.thread989
  %.not909.not = icmp eq i8 %i.ok, 0
  br i1 %.not909.not, label %.thread993, label %bb.nc

bb.fe:                                            ; preds = %bb.bj
  %i.ol = load ptr, ptr %9, align 8, !tbaa !45
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 128
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = invoke noundef i32 %i.on(ptr noundef nonnull align 8 dereferenceable(256) %9, i32 noundef 11)
          to label %bb.ff unwind label %bb.bo

bb.ff:                                            ; preds = %bb.fe
  %i.op = add nsw i32 %i.oo, 1
  %i.oq = icmp eq i32 %.4690, %i.op
  %spec.select945 = select i1 %i.oq, i32 0, i32 %.4690
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.bj
  %.7693 = phi i32 [ %.4690, %bb.bj ], [ %spec.select945, %bb.ff ]
  invoke void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %9, i32 noundef 11, i32 noundef %.7693)
          to label %bb.fh unwind label %bb.bo

bb.fh:                                            ; preds = %bb.fg
  %i.or = load i32, ptr %i.f, align 8, !tbaa !143
  br label %.thread993

bb.fi:                                            ; preds = %bb.bj
  %i.os = load i32, ptr %2, align 4, !tbaa !69
  %i.ot = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat11countDigitsERKNS_13UnicodeStringEii(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.os, i32 noundef %i.ff)
          to label %bb.fj unwind label %bb.bo     ; 9 uses

bb.fj:                                            ; preds = %bb.fi
  %i.ou = icmp slt i32 %i.ot, 3
  br i1 %i.ou, label %.preheader.preheader, label %.preheader1051

.preheader.preheader:                             ; preds = %bb.fj
  %i.ov = sub i32 3, %i.ot                        ; 3 uses
  %min.iters.check1178 = icmp ult i32 %i.ov, 8
  br i1 %min.iters.check1178, label %.preheader.preheader1201, label %vector.ph1179

vector.ph1179:                                    ; preds = %.preheader.preheader
  %n.vec1180 = and i32 %i.ov, -8                  ; 3 uses
  %i.ow = add i32 %i.ot, %n.vec1180
  %i.ox = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.4690, i64 0
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %vector.ph1179
  %index1182 = phi i32 [ 0, %vector.ph1179 ], [ %index.next1185, %vector.body1181 ]
  %vec.phi1183 = phi <4 x i32> [ %i.ox, %vector.ph1179 ], [ %i.oy, %vector.body1181 ]
  %vec.phi1184 = phi <4 x i32> [ splat (i32 1), %vector.ph1179 ], [ %i.oz, %vector.body1181 ]
  %i.oy = mul <4 x i32> %vec.phi1183, splat (i32 10) ; 2 uses
  %i.oz = mul <4 x i32> %vec.phi1184, splat (i32 10) ; 2 uses
  %index.next1185 = add nuw i32 %index1182, 8     ; 2 uses
  %i.pa = icmp eq i32 %index.next1185, %n.vec1180
  br i1 %i.pa, label %middle.block1186, label %vector.body1181, !llvm.loop !206

middle.block1186:                                 ; preds = %vector.body1181
  %bin.rdx1187 = mul <4 x i32> %i.oz, %i.oy
  %i.pb = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1187) ; 2 uses
  %cmp.n1188 = icmp eq i32 %i.ov, %n.vec1180
  br i1 %cmp.n1188, label %.loopexit, label %.preheader.preheader1201

.preheader.preheader1201:                         ; preds = %.preheader.preheader, %middle.block1186
  %.86941070.ph = phi i32 [ %.4690, %.preheader.preheader ], [ %i.pb, %middle.block1186 ]
  %.07691069.ph = phi i32 [ %i.ot, %.preheader.preheader ], [ %i.ow, %middle.block1186 ]
  br label %.preheader

.preheader1051:                                   ; preds = %bb.fj
  %.not1071 = icmp eq i32 %i.ot, 3
  br i1 %.not1071, label %._crit_edge1067, label %.lr.ph1066.preheader

.lr.ph1066.preheader:                             ; preds = %.preheader1051
  %21 = call i32 @llvm.smin.i32(i32 %i.ot, i32 4)
  %i.pc = add nuw i32 %i.ot, 1
  %22 = sub i32 %i.pc, %21                        ; 3 uses
  %min.iters.check = icmp ult i32 %22, 8
  br i1 %min.iters.check, label %.lr.ph1066.preheader1204, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1066.preheader
  %n.vec = and i32 %22, -8                        ; 3 uses
  %i.pd = sub i32 %i.ot, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = mul <4 x i32> %reduced.phi, splat (i32 100) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.pe = icmp eq i32 %index.next, %n.vec
  br i1 %i.pe, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %i.pf = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %22, %n.vec
  br i1 %cmp.n, label %._crit_edge1067, label %.lr.ph1066.preheader1204

.lr.ph1066.preheader1204:                         ; preds = %.lr.ph1066.preheader, %middle.block
  %.06741065.ph = phi i32 [ 1, %.lr.ph1066.preheader ], [ %i.pf, %middle.block ]
  %.17701064.ph = phi i32 [ %i.ot, %.lr.ph1066.preheader ], [ %i.pd, %middle.block ]
  br label %.lr.ph1066

.preheader:                                       ; preds = %.preheader.preheader1201, %.preheader
  %.86941070 = phi i32 [ %i.pg, %.preheader ], [ %.86941070.ph, %.preheader.preheader1201 ]
  %.07691069 = phi i32 [ %i.ph, %.preheader ], [ %.07691069.ph, %.preheader.preheader1201 ]
  %i.pg = mul nsw i32 %.86941070, 10              ; 2 uses
  %i.ph = add i32 %.07691069, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ph, 3
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !208

.lr.ph1066:                                       ; preds = %.lr.ph1066.preheader1204, %.lr.ph1066
  %.06741065 = phi i32 [ %i.pi, %.lr.ph1066 ], [ %.06741065.ph, %.lr.ph1066.preheader1204 ]
  %.17701064 = phi i32 [ %i.pj, %.lr.ph1066 ], [ %.17701064.ph, %.lr.ph1066.preheader1204 ] ; 2 uses
  %i.pi = mul nuw nsw i32 %.06741065, 10          ; 2 uses
  %i.pj = add nsw i32 %.17701064, -1
  %i.pk = icmp samesign ugt i32 %.17701064, 4
  br i1 %i.pk, label %.lr.ph1066, label %._crit_edge1067, !llvm.loop !209

._crit_edge1067:                                  ; preds = %.lr.ph1066, %middle.block, %.preheader1051
  %.0674.lcssa = phi i32 [ 1, %.preheader1051 ], [ %i.pf, %middle.block ], [ %i.pi, %.lr.ph1066 ]
  %i.pl = sdiv i32 %.4690, %.0674.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %middle.block1186, %._crit_edge1067
  %.9695 = phi i32 [ %i.pl, %._crit_edge1067 ], [ %i.pb, %middle.block1186 ], [ %i.pg, %.preheader ]
  invoke void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %9, i32 noundef 14, i32 noundef %.9695)
          to label %bb.fk unwind label %bb.bo

bb.fk:                                            ; preds = %.loopexit
  %i.pm = load i32, ptr %i.f, align 8, !tbaa !143
  br label %.thread993

bb.fl:                                            ; preds = %.thread967
  br i1 %.not898, label %bb.fn, label %.thread996

.thread996:                                       ; preds = %bb.fl
  invoke void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %9, i32 noundef 18, i32 noundef %.4690)
          to label %bb.fm unwind label %bb.bo

bb.fm:                                            ; preds = %.thread996
  %i.pn = load i32, ptr %i.f, align 8, !tbaa !143
  br label %.thread993

bb.fn:                                            ; preds = %.thread967, %bb.fl, %bb.bj
  %i.po = load ptr, ptr %0, align 8, !tbaa !45
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 224
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = invoke noundef signext i8 %i.pq(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.fo unwind label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  %i.ps = icmp ne i8 %i.pr, 0
  %i.pt = icmp eq i32 %4, 4
  %or.cond74 = or i1 %i.pt, %i.ps
  br i1 %or.cond74, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.pu = load i32, ptr %2, align 4, !tbaa !69
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !46 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 152
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !102
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 160
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !103
  %i.qb = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.pu, i32 noundef 7, ptr noundef %i.py, i32 noundef %i.qa, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %9)
          to label %bb.fq unwind label %bb.fr     ; 3 uses

bb.fq:                                            ; preds = %bb.fp
  %i.qc = icmp sgt i32 %i.qb, 0
  br i1 %i.qc, label %.thread993, label %bb.fs

bb.fr:                                            ; preds = %bb.ge, %bb.gc, %bb.ga, %bb.fy, %bb.fw, %bb.fu, %bb.fs, %bb.fp, %bb.fn
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.on

bb.fs:                                            ; preds = %bb.fq, %bb.fo
  %.0671 = phi i32 [ %i.qb, %bb.fq ], [ 0, %bb.fo ]
  %i.qe = load ptr, ptr %0, align 8, !tbaa !45
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 224
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = invoke noundef signext i8 %i.qg(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ft unwind label %bb.fr

bb.ft:                                            ; preds = %bb.fs
  %i.qi = icmp ne i8 %i.qh, 0
  %i.qj = icmp eq i32 %4, 3
  %or.cond76 = or i1 %i.qj, %i.qi
  br i1 %or.cond76, label %bb.fu, label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  %i.qk = load i32, ptr %2, align 4, !tbaa !69
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !46 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 168
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !106
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 176
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !107
  %i.qr = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.qk, i32 noundef 7, ptr noundef %i.qo, i32 noundef %i.qq, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %9)
          to label %bb.fv unwind label %bb.fr     ; 3 uses

bb.fv:                                            ; preds = %bb.fu
  %i.qs = icmp sgt i32 %i.qr, 0
  br i1 %i.qs, label %.thread993, label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.ft
  %.1672 = phi i32 [ %i.qr, %bb.fv ], [ %.0671, %bb.ft ]
  %i.qt = load ptr, ptr %0, align 8, !tbaa !45
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 224
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = invoke noundef signext i8 %i.qv(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.fx unwind label %bb.fr

bb.fx:                                            ; preds = %bb.fw
  %i.qx = icmp ne i8 %i.qw, 0
  %i.qy = icmp eq i32 %4, 6
  %or.cond78 = or i1 %i.qy, %i.qx
  br i1 %or.cond78, label %bb.fy, label %bb.ga

bb.fy:                                            ; preds = %bb.fx
  %i.qz = load i32, ptr %2, align 4, !tbaa !69
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !46 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 184
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !104
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 192
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !105
  %i.rg = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.qz, i32 noundef 7, ptr noundef %i.rd, i32 noundef %i.rf, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %9)
          to label %bb.fz unwind label %bb.fr     ; 3 uses

bb.fz:                                            ; preds = %bb.fy
  %i.rh = icmp sgt i32 %i.rg, 0
  br i1 %i.rh, label %.thread993, label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fx
  %.2673 = phi i32 [ %i.rg, %bb.fz ], [ %.1672, %bb.fx ]
  %i.ri = load ptr, ptr %0, align 8, !tbaa !45
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 224
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = invoke noundef signext i8 %i.rk(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.gb unwind label %bb.fr

bb.gb:                                            ; preds = %bb.ga
  %i.rm = icmp ne i8 %i.rl, 0
  %i.rn = icmp eq i32 %4, 5
  %or.cond80 = or i1 %i.rn, %i.rm
  br i1 %or.cond80, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %bb.gb
  %i.ro = load i32, ptr %2, align 4, !tbaa !69
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !46 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 200
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !100
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 208
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !101
  %i.rv = invoke noundef i32 @_ZNK6icu_7816SimpleDateFormat11matchStringERKNS_13UnicodeStringEi19UCalendarDateFieldsPS2_iS5_RNS_8CalendarE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ro, i32 noundef 7, ptr noundef %i.rs, i32 noundef %i.ru, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %9)
          to label %bb.gd unwind label %bb.fr     ; 3 uses

bb.gd:                                            ; preds = %bb.gc
  %i.rw = icmp sgt i32 %i.rv, 0
  br i1 %i.rw, label %.thread993, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gb
  %.3 = phi i32 [ %i.rv, %bb.gd ], [ %.2673, %bb.gb ]
  %i.rx = load ptr, ptr %0, align 8, !tbaa !45
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 224
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = invoke noundef signext i8 %i.rz(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.gf unwind label %bb.fr

bb.gf:                                            ; preds = %bb.ge
  %i.sb = icmp ne i8 %i.sa, 0
  %i.sc = icmp ne i32 %i.h, 9
  %or.cond82.not = and i1 %i.sc, %i.sb
  br i1 %or.cond82.not, label %bb.nc, label %.thread993

bb.gg:                                            ; preds = %.thread967
  br i1 %.not898, label %bb.gi, label %.thread1002

.thread1002:                                      ; preds = %bb.gg
  invoke void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %9, i32 noundef 18, i32 noundef %.4690)
          to label %bb.gh unwind label %bb.bo

bb.gh:                                            ; preds = %.thread1002
  %i.sd = load i32, ptr %i.f, align 8, !tbaa !143
  br label %.thread993

bb.gi:                                            ; preds = %bb.gg
  %i.se = load ptr, ptr %0, align 8, !tbaa !45
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 224
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = invoke noundef signext i8 %i.sg(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.gj unwind label %bb.gm

end_hunk_0
