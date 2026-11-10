Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_resolution?download=true
inline.NumInlined: 197
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ojph5local10resolution9pull_lineEv:bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !62 ; 6 uses
  %i.ib = add i32 %i.p, -1                        ; 3 uses
  %i.ic = zext i32 %i.ib to i64
  %i.id = add nuw nsw i64 %i.ic, 1                ; 4 uses
  br i1 %.not84, label %.lr.ph128.preheader, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %bb.ag
  %min.iters.check202 = icmp ult i32 %i.ib, 7
  br i1 %min.iters.check202, label %.lr.ph123.preheader232, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph123.preheader
  %n.vec204 = and i64 %i.id, 8589934584           ; 4 uses
  %i.ie = trunc i64 %n.vec204 to i32
  %i.if = sub i32 %i.p, %i.ie
  %i.ig = shl nuw nsw i64 %n.vec204, 2
  %i.ih = getelementptr i8, ptr %i.ia, i64 %i.ig
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next210, %vector.body205 ] ; 2 uses
  %i.ii = shl i64 %index206, 2
  %next.gep207 = getelementptr i8, ptr %i.ia, i64 %i.ii ; 3 uses
  %i.ij = getelementptr i8, ptr %next.gep207, i64 16 ; 2 uses
  %wide.load208 = load <4 x i32>, ptr %next.gep207, align 4, !tbaa !59
  %wide.load209 = load <4 x i32>, ptr %i.ij, align 4, !tbaa !59
  %i.ik = ashr <4 x i32> %wide.load208, splat (i32 1)
  %i.il = ashr <4 x i32> %wide.load209, splat (i32 1)
  store <4 x i32> %i.ik, ptr %next.gep207, align 4, !tbaa !59
  store <4 x i32> %i.il, ptr %i.ij, align 4, !tbaa !59
  %index.next210 = add nuw i64 %index206, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next210, %n.vec204
  br i1 %i.im, label %middle.block211, label %vector.body205, !llvm.loop !167

middle.block211:                                  ; preds = %vector.body205
  %cmp.n212 = icmp eq i64 %i.id, %n.vec204
  br i1 %cmp.n212, label %.loopexit, label %.lr.ph123.preheader232

.lr.ph123.preheader232:                           ; preds = %.lr.ph123.preheader, %middle.block211
  %.071121.ph = phi i32 [ %i.p, %.lr.ph123.preheader ], [ %i.if, %middle.block211 ]
  %.072120.ph = phi ptr [ %i.ia, %.lr.ph123.preheader ], [ %i.ih, %middle.block211 ]
  br label %.lr.ph123

.lr.ph128.preheader:                              ; preds = %bb.ag
  %min.iters.check216 = icmp ult i32 %i.ib, 3
  br i1 %min.iters.check216, label %.lr.ph128.preheader231, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph128.preheader
  %n.vec218 = and i64 %i.id, 8589934588           ; 4 uses
  %i.in = trunc i64 %n.vec218 to i32
  %i.io = sub i32 %i.p, %i.in
  %i.ip = shl nuw nsw i64 %n.vec218, 3
  %i.iq = getelementptr i8, ptr %i.ia, i64 %i.ip
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next224, %vector.body219 ] ; 2 uses
  %i.ir = shl i64 %index220, 3
  %next.gep221 = getelementptr i8, ptr %i.ia, i64 %i.ir ; 3 uses
  %i.is = getelementptr i8, ptr %next.gep221, i64 16 ; 2 uses
  %wide.load222 = load <2 x i64>, ptr %next.gep221, align 8, !tbaa !58
  %wide.load223 = load <2 x i64>, ptr %i.is, align 8, !tbaa !58
  %i.it = ashr <2 x i64> %wide.load222, splat (i64 1)
  %i.iu = ashr <2 x i64> %wide.load223, splat (i64 1)
  store <2 x i64> %i.it, ptr %next.gep221, align 8, !tbaa !58
  store <2 x i64> %i.iu, ptr %i.is, align 8, !tbaa !58
  %index.next224 = add nuw i64 %index220, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next224, %n.vec218
  br i1 %i.iv, label %middle.block225, label %vector.body219, !llvm.loop !168

middle.block225:                                  ; preds = %vector.body219
  %cmp.n226 = icmp eq i64 %i.id, %n.vec218
  br i1 %cmp.n226, label %.loopexit, label %.lr.ph128.preheader231

.lr.ph128.preheader231:                           ; preds = %.lr.ph128.preheader, %middle.block225
  %.069126.ph = phi i32 [ %i.p, %.lr.ph128.preheader ], [ %i.io, %middle.block225 ]
  %.070125.ph = phi ptr [ %i.ia, %.lr.ph128.preheader ], [ %i.iq, %middle.block225 ]
  br label %.lr.ph128

.lr.ph123:                                        ; preds = %.lr.ph123.preheader232, %.lr.ph123
  %.071121 = phi i32 [ %i.iz, %.lr.ph123 ], [ %.071121.ph, %.lr.ph123.preheader232 ]
  %.072120 = phi ptr [ %i.iw, %.lr.ph123 ], [ %.072120.ph, %.lr.ph123.preheader232 ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.072120, i64 4
  %i.ix = load i32, ptr %.072120, align 4, !tbaa !59
  %i.iy = ashr i32 %i.ix, 1
  store i32 %i.iy, ptr %.072120, align 4, !tbaa !59
  %i.iz = add i32 %.071121, -1                    ; 2 uses
  %.not86 = icmp eq i32 %i.iz, 0
  br i1 %.not86, label %.loopexit, label %.lr.ph123, !llvm.loop !169

.lr.ph128:                                        ; preds = %.lr.ph128.preheader231, %.lr.ph128
  %.069126 = phi i32 [ %i.jd, %.lr.ph128 ], [ %.069126.ph, %.lr.ph128.preheader231 ]
  %.070125 = phi ptr [ %i.ja, %.lr.ph128 ], [ %.070125.ph, %.lr.ph128.preheader231 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.070125, i64 8
  %i.jb = load i64, ptr %.070125, align 8, !tbaa !58
  %i.jc = ashr i64 %i.jb, 1
  store i64 %i.jc, ptr %.070125, align 8, !tbaa !58
  %i.jd = add i32 %.069126, -1                    ; 2 uses
  %.not85 = icmp eq i32 %i.jd, 0
  br i1 %.not85, label %.loopexit, label %.lr.ph128, !llvm.loop !170

.loopexit:                                        ; preds = %.lr.ph123, %.lr.ph128, %middle.block211, %middle.block225, %bb.ab, %bb.ac
  %i.je = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !94
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !97
  br label %bb.bs

bb.ah:                                            ; preds = %bb.d
  br i1 %i.y, label %bb.ai, label %bb.bc

bb.ai:                                            ; preds = %bb.ah
  %i.jh = getelementptr inbounds nuw i8, ptr %.tr110, i64 72 ; 8 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !93 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 8, !tbaa !96, !range !84, !noundef !85
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.aj, label %.preheader95

.preheader95:                                     ; preds = %bb.ai
  %i.jm = getelementptr inbounds nuw i8, ptr %.tr110, i64 244 ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.tr110, i64 252 ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.tr110, i64 232 ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.tr110, i64 80 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.tr110, i64 253 ; 2 uses
  %i.jr = zext i32 %i.p to i64
  %i.js = shl nuw nsw i64 %i.jr, 2                ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.tr110, i64 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.tr110, i64 64 ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.tr110, i64 56 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i8 0, ptr %i.jj, align 8, !tbaa !96
  %i.jx = load ptr, ptr %i.ji, align 8, !tbaa !97
  br label %bb.bs

bb.ak:                                            ; preds = %.backedge96, %.preheader95
  %i.jy = phi i32 [ %.pre, %.backedge96 ], [ %i.x, %.preheader95 ]
  %i.jz = load i32, ptr %i.jm, align 4, !tbaa !98
  %i.ka = icmp ult i32 %i.jz, %i.jy
  br i1 %i.ka, label %bb.al, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.kb = load i8, ptr %i.jn, align 4, !tbaa !100, !range !84, !noundef !85
  %i.kc = trunc nuw i8 %i.kb to i1
  %i.kd = load i32, ptr %i.r, align 8, !tbaa !77
  %i.ke = and i32 %i.kd, 1
  %.not82 = icmp eq i32 %i.ke, 0                  ; 2 uses
  br i1 %i.kc, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.kf = load ptr, ptr %i.jw, align 8, !tbaa !83 ; 2 uses
  br i1 %.not82, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kg = load ptr, ptr @_ZN4ojph5local12irv_horz_synE, align 8, !tbaa !78
  %i.kh = load ptr, ptr %i.jo, align 8, !tbaa !76
  %i.ki = load ptr, ptr %i.ju, align 8, !tbaa !94
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !97
  %i.kk = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.kf)
  %i.kl = load ptr, ptr %i.jp, align 8, !tbaa !79
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 120
  %i.kn = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.km)
  %i.ko = load i8, ptr %i.jq, align 1, !tbaa !101, !range !84, !noundef !85
  %i.kp = trunc nuw i8 %i.ko to i1
  tail call void %i.kg(ptr noundef %i.kh, ptr noundef %i.kj, ptr noundef %i.kk, ptr noundef %i.kn, i32 noundef %i.p, i1 noundef zeroext %i.kp)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.kq = load ptr, ptr %i.ju, align 8, !tbaa !94
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !97
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !62
  %i.ku = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.kf)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kt, ptr align 4 %i.kw, i64 %i.js, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.kx = load ptr, ptr %i.ju, align 8, !tbaa !94 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i8 1, ptr %i.ky, align 8, !tbaa !96
  %i.kz = load i8, ptr %i.jn, align 4, !tbaa !100, !range !84, !noundef !85
  %i.la = xor i8 %i.kz, 1
  store i8 %i.la, ptr %i.jn, align 4, !tbaa !100
  %i.lb = load i32, ptr %i.jm, align 4, !tbaa !98
  %i.lc = add i32 %i.lb, 1
  store i32 %i.lc, ptr %i.jm, align 4, !tbaa !98
  %i.ld = load ptr, ptr %i.jo, align 8, !tbaa !76
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lf = load float, ptr %i.le, align 4, !tbaa !113
  %i.lg = load ptr, ptr @_ZN4ojph5local16irv_vert_times_KE, align 8, !tbaa !78
  %i.lh = load ptr, ptr %i.kx, align 8, !tbaa !97
  tail call void %i.lg(float noundef %i.lf, ptr noundef %i.lh, i32 noundef %i.p)
  br label %.backedge96

.backedge96:                                      ; preds = %bb.ap, %bb.ba
  %.pre = load i32, ptr %i.w, align 8, !tbaa !104
  br label %bb.ak, !llvm.loop !171

bb.aq:                                            ; preds = %bb.al
  %i.li = load ptr, ptr %i.jp, align 8, !tbaa !79
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 240 ; 2 uses
  br i1 %.not82, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lk = load ptr, ptr @_ZN4ojph5local12irv_horz_synE, align 8, !tbaa !78
  %i.ll = load ptr, ptr %i.jo, align 8, !tbaa !76
  %i.lm = load ptr, ptr %i.jh, align 8, !tbaa !93
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !97
  %i.lo = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.lj)
  %i.lp = load ptr, ptr %i.jp, align 8, !tbaa !79
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 360
  %i.lr = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.lq)
  %i.ls = load i8, ptr %i.jq, align 1, !tbaa !101, !range !84, !noundef !85
  %i.lt = trunc nuw i8 %i.ls to i1
  tail call void %i.lk(ptr noundef %i.ll, ptr noundef %i.ln, ptr noundef %i.lo, ptr noundef %i.lr, i32 noundef %i.p, i1 noundef zeroext %i.lt)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.lu = load ptr, ptr %i.jh, align 8, !tbaa !93
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !97
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !62
  %i.ly = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.lj)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.lx, ptr align 4 %i.ma, i64 %i.js, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.mb = load ptr, ptr %i.jh, align 8, !tbaa !93 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store i8 1, ptr %i.mc, align 8, !tbaa !96
  %i.md = load i8, ptr %i.jn, align 4, !tbaa !100, !range !84, !noundef !85
  %i.me = xor i8 %i.md, 1
  store i8 %i.me, ptr %i.jn, align 4, !tbaa !100
  %i.mf = load i32, ptr %i.jm, align 4, !tbaa !98
  %i.mg = add i32 %i.mf, 1
  store i32 %i.mg, ptr %i.jm, align 4, !tbaa !98
  %i.mh = load ptr, ptr %i.jo, align 8, !tbaa !76
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !113
  %i.mk = fdiv float 1.000000e+00, %i.mj
  %i.ml = load ptr, ptr @_ZN4ojph5local16irv_vert_times_KE, align 8, !tbaa !78
  %i.mm = load ptr, ptr %i.mb, align 8, !tbaa !97
  tail call void %i.ml(float noundef %i.mk, ptr noundef %i.mm, i32 noundef %i.p)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ak
  %i.mn = load i32, ptr %i.jt, align 4, !tbaa !91
  %.not135 = icmp eq i32 %i.mn, 0
  br i1 %.not135, label %._crit_edge, label %.lr.ph116

._crit_edge:                                      ; preds = %bb.ay, %bb.au
  %i.mo = load ptr, ptr %i.ju, align 8, !tbaa !94 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load i8, ptr %i.mp, align 8, !tbaa !96, !range !84, !noundef !85
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.az, label %bb.ba

.lr.ph116:                                        ; preds = %bb.au, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 0, %bb.au ] ; 7 uses
  %i.ms = load ptr, ptr %i.ju, align 8, !tbaa !94 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load i8, ptr %i.mt, align 8, !tbaa !96, !range !84, !noundef !85
  %i.mv = trunc nuw i8 %i.mu to i1
  %.pre154 = load ptr, ptr %i.jv, align 8, !tbaa !92 ; 5 uses
  br i1 %i.mv, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %.lr.ph116
  %i.mw = load ptr, ptr %i.jh, align 8, !tbaa !93 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load i8, ptr %i.mx, align 8, !tbaa !96, !range !84, !noundef !85
  %i.mz = trunc nuw i8 %i.my to i1
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre154, i64 %indvars.iv ; 2 uses
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre151 = load i8, ptr %.phi.trans.insert150, align 8, !tbaa !96, !range !84
  %.pre151.fr = freeze i8 %.pre151
  %i.na = trunc i8 %.pre151.fr to i1              ; 2 uses
  br i1 %i.mz, label %.thread92, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.na, label %.thread92.thread, label %bb.ay

.thread92.thread:                                 ; preds = %bb.aw
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %.pre154, i64 %indvars.iv
  br label %bb.ax

.thread92:                                        ; preds = %bb.av
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %.pre154, i64 %indvars.iv
  %spec.select189 = select i1 %i.na, ptr %i.nc, ptr %i.mw
  br label %bb.ax

bb.ax:                                            ; preds = %.thread92, %.thread92.thread
  %.in = phi ptr [ %i.mw, %.thread92 ], [ %.phi.trans.insert, %.thread92.thread ]
  %i.nd = phi ptr [ %spec.select189, %.thread92 ], [ %i.nb, %.thread92.thread ]
  %i.ne = load ptr, ptr %i.ms, align 8, !tbaa !97
  %i.nf = load ptr, ptr %.in, align 8, !tbaa !97
  %i.ng = load ptr, ptr %i.nd, align 8, !tbaa !97
  %i.nh = load ptr, ptr %i.jo, align 8, !tbaa !76
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !105
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv
  %i.nl = load ptr, ptr @_ZN4ojph5local13irv_vert_stepE, align 8, !tbaa !78
  tail call void %i.nl(ptr noundef %i.nk, ptr noundef %i.nf, ptr noundef %i.ng, ptr noundef %i.ne, i32 noundef %i.p, i1 noundef zeroext true)
  %.pre152 = load ptr, ptr %i.ju, align 8, !tbaa !94
  %.pre153 = load ptr, ptr %i.jv, align 8, !tbaa !92
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.lr.ph116
  %i.nm = phi ptr [ %.pre153, %bb.ax ], [ %.pre154, %bb.aw ], [ %.pre154, %.lr.ph116 ]
  %i.nn = phi ptr [ %.pre152, %bb.ax ], [ %i.ms, %bb.aw ], [ %i.ms, %.lr.ph116 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.nn, i64 16, i1 false), !tbaa.struct !108
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.nm, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.nn, ptr noundef nonnull align 8 dereferenceable(9) %i.no, i64 9, i1 false), !tbaa.struct !108
  %i.np = load ptr, ptr %i.jh, align 8, !tbaa !93
  %i.nq = load ptr, ptr %i.jv, align 8, !tbaa !92
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.nq, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.nr, ptr noundef nonnull align 8 dereferenceable(9) %i.np, i64 9, i1 false), !tbaa.struct !108
  %i.ns = load ptr, ptr %i.jh, align 8, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ns, ptr noundef nonnull align 8 dereferenceable(9) %2, i64 9, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nt = load i32, ptr %i.jt, align 4, !tbaa !91
  %i.nu = zext i32 %i.nt to i64
  %i.nv = icmp samesign ult i64 %indvars.iv.next, %i.nu
  br i1 %i.nv, label %.lr.ph116, label %._crit_edge, !llvm.loop !172

bb.az:                                            ; preds = %._crit_edge
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i8 0, ptr %i.nw, align 8, !tbaa !96
  %i.nx = load ptr, ptr %i.mo, align 8, !tbaa !97
  br label %bb.bs

bb.ba:                                            ; preds = %._crit_edge
  %i.ny = load ptr, ptr %i.jh, align 8, !tbaa !93 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i8, ptr %i.nz, align 8, !tbaa !96, !range !84, !noundef !85
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.bb, label %.backedge96

bb.bb:                                            ; preds = %bb.ba
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store i8 0, ptr %i.oc, align 8, !tbaa !96
  %i.od = load ptr, ptr %i.ny, align 8, !tbaa !97
  br label %bb.bs

bb.bc:                                            ; preds = %bb.ah
  %i.oe = getelementptr inbounds nuw i8, ptr %.tr110, i64 252
  %i.of = load i8, ptr %i.oe, align 4, !tbaa !100, !range !84, !noundef !85
  %i.og = trunc nuw i8 %i.of to i1
  %i.oh = and i32 %i.s, 1
  %.not79 = icmp eq i32 %i.oh, 0                  ; 2 uses
  br i1 %i.og, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not79, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.oi = load ptr, ptr @_ZN4ojph5local12irv_horz_synE, align 8, !tbaa !78
  %i.oj = getelementptr inbounds nuw i8, ptr %.tr110, i64 232
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !76
  %i.ol = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !94
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !97
  %i.oo = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !83
  %i.oq = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.op)
  %i.or = getelementptr inbounds nuw i8, ptr %.tr110, i64 80
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !79
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 120
  %i.ou = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ot)
  %i.ov = getelementptr inbounds nuw i8, ptr %.tr110, i64 253
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !101, !range !84, !noundef !85
  %i.ox = trunc nuw i8 %i.ow to i1
  tail call void %i.oi(ptr noundef %i.ok, ptr noundef %i.on, ptr noundef %i.oq, ptr noundef %i.ou, i32 noundef %i.p, i1 noundef zeroext %i.ox)
  br label %.loopexit97

bb.bf:                                            ; preds = %bb.bd
  %i.oy = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !94
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !97
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !62
  %i.pd = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !83
  %i.pf = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.pe)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !62
  %i.pi = zext i32 %i.p to i64
  %i.pj = shl nuw nsw i64 %i.pi, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.pc, ptr align 4 %i.ph, i64 %i.pj, i1 false)
  br label %.loopexit97

bb.bg:                                            ; preds = %bb.bc
  br i1 %.not79, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pk = load ptr, ptr @_ZN4ojph5local12irv_horz_synE, align 8, !tbaa !78
  %i.pl = getelementptr inbounds nuw i8, ptr %.tr110, i64 232
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !76
  %i.pn = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !94
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !97
  %i.pq = getelementptr inbounds nuw i8, ptr %.tr110, i64 80 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !79
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 240
  %i.pt = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ps)
  %i.pu = load ptr, ptr %i.pq, align 8, !tbaa !79
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 360
  %i.pw = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.pv)
  %i.px = getelementptr inbounds nuw i8, ptr %.tr110, i64 253
  %i.py = load i8, ptr %i.px, align 1, !tbaa !101, !range !84, !noundef !85
  %i.pz = trunc nuw i8 %i.py to i1
  tail call void %i.pk(ptr noundef %i.pm, ptr noundef %i.pp, ptr noundef %i.pt, ptr noundef %i.pw, i32 noundef %i.p, i1 noundef zeroext %i.pz)
  br label %.lr.ph114.preheader

bb.bi:                                            ; preds = %bb.bg
  %i.qa = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !94
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !97
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !62
  %i.qf = getelementptr inbounds nuw i8, ptr %.tr110, i64 80
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !79
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 240
  %i.qi = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.qh)
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !62
  %i.ql = zext i32 %i.p to i64
  %i.qm = shl nuw nsw i64 %i.ql, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qe, ptr align 4 %i.qk, i64 %i.qm, i1 false)
  br label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %bb.bh, %bb.bi
  %i.qn = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !94
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !97
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !62 ; 3 uses
  %i.qs = add i32 %i.p, -1                        ; 2 uses
  %i.qt = zext i32 %i.qs to i64
  %i.qu = add nuw nsw i64 %i.qt, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.qs, 7
  br i1 %min.iters.check, label %.lr.ph114.preheader237, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph114.preheader
  %n.vec = and i64 %i.qu, 8589934584              ; 4 uses
  %i.qv = trunc i64 %n.vec to i32
  %i.qw = sub i32 %i.p, %i.qv
  %i.qx = shl nuw nsw i64 %n.vec, 2
  %i.qy = getelementptr i8, ptr %i.qr, i64 %i.qx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.qr, i64 %i.qz ; 3 uses
  %i.ra = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !114
  %wide.load199 = load <4 x float>, ptr %i.ra, align 4, !tbaa !114
  %i.rb = fmul <4 x float> %wide.load, splat (float 5.000000e-01)
  %i.rc = fmul <4 x float> %wide.load199, splat (float 5.000000e-01)
  store <4 x float> %i.rb, ptr %next.gep, align 4, !tbaa !114
  store <4 x float> %i.rc, ptr %i.ra, align 4, !tbaa !114
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rd = icmp eq i64 %index.next, %n.vec
  br i1 %i.rd, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qu, %n.vec
  br i1 %cmp.n, label %.loopexit97, label %.lr.ph114.preheader237

.lr.ph114.preheader237:                           ; preds = %.lr.ph114.preheader, %middle.block
  %.0113.ph = phi i32 [ %i.p, %.lr.ph114.preheader ], [ %i.qw, %middle.block ]
  %.066112.ph = phi ptr [ %i.qr, %.lr.ph114.preheader ], [ %i.qy, %middle.block ]
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader237, %.lr.ph114
  %.0113 = phi i32 [ %i.rh, %.lr.ph114 ], [ %.0113.ph, %.lr.ph114.preheader237 ]
  %.066112 = phi ptr [ %i.re, %.lr.ph114 ], [ %.066112.ph, %.lr.ph114.preheader237 ] ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.066112, i64 4
  %i.rf = load float, ptr %.066112, align 4, !tbaa !114
  %i.rg = fmul float %i.rf, 5.000000e-01
  store float %i.rg, ptr %.066112, align 4, !tbaa !114
  %i.rh = add i32 %.0113, -1                      ; 2 uses
  %.not78 = icmp eq i32 %i.rh, 0
  br i1 %.not78, label %.loopexit97, label %.lr.ph114, !llvm.loop !174

.loopexit97:                                      ; preds = %.lr.ph114, %middle.block, %bb.be, %bb.bf
  %i.ri = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !94
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !97
  br label %bb.bs

bb.bj:                                            ; preds = %bb.c
  %i.rl = and i32 %i.s, 1
  %.not76 = icmp eq i32 %i.rl, 0                  ; 2 uses
  br i1 %i.v, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not76, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.rm = load ptr, ptr @_ZN4ojph5local12rev_horz_synE, align 8, !tbaa !78
  %i.rn = getelementptr inbounds nuw i8, ptr %.tr110, i64 232
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !76
  %i.rp = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !94
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !97
  %i.rs = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !83
  %i.ru = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.rt)
  %i.rv = getelementptr inbounds nuw i8, ptr %.tr110, i64 80
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !79
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 120
  %i.ry = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.rx)
  %i.rz = getelementptr inbounds nuw i8, ptr %.tr110, i64 253
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !101, !range !84, !noundef !85
  %i.sb = trunc nuw i8 %i.sa to i1
  tail call void %i.rm(ptr noundef %i.ro, ptr noundef %i.rr, ptr noundef %i.ru, ptr noundef %i.ry, i32 noundef %i.p, i1 noundef zeroext %i.sb)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.sc = getelementptr inbounds nuw i8, ptr %.tr110, i64 64 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !94
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !97
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !62
  %i.sh = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !83
  %i.sj = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.si)
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !62
  %i.sm = zext i32 %i.p to i64
  %i.sn = load ptr, ptr %i.sc, align 8, !tbaa !94
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !97
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 12
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !110
  %i.sr = and i32 %i.sq, 15
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = mul nuw nsw i64 %i.ss, %i.sm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sg, ptr align 1 %i.sl, i64 %i.st, i1 false)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.su = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !94
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !97
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bj
  br i1 %.not76, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.sx = load ptr, ptr @_ZN4ojph5local12irv_horz_synE, align 8, !tbaa !78
  %i.sy = getelementptr inbounds nuw i8, ptr %.tr110, i64 232
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !76
  %i.ta = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !94
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !97
  %i.td = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !83
  %i.tf = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.te)
  %i.tg = getelementptr inbounds nuw i8, ptr %.tr110, i64 80
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !79
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 120
  %i.tj = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ti)
  %i.tk = getelementptr inbounds nuw i8, ptr %.tr110, i64 253
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !101, !range !84, !noundef !85
  %i.tm = trunc nuw i8 %i.tl to i1
  tail call void %i.sx(ptr noundef %i.sz, ptr noundef %i.tc, ptr noundef %i.tf, ptr noundef %i.tj, i32 noundef %i.p, i1 noundef zeroext %i.tm)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.tn = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !94
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !97
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !62
  %i.ts = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !83
  %i.tu = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.tt)
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !62
  %i.tx = zext i32 %i.p to i64
  %i.ty = shl nuw nsw i64 %i.tx, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tr, ptr align 4 %i.tw, i64 %i.ty, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.tz = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !94
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !97
  br label %bb.bs

bb.bs:                                            ; preds = %bb.g, %bb.w, %bb.y, %.loopexit, %bb.aj, %bb.az, %bb.bb, %.loopexit97, %bb.bn, %bb.br, %bb.b, %tailrecurse._crit_edge
  %.1 = phi ptr [ %i.f, %tailrecurse._crit_edge ], [ null, %bb.b ], [ %i.ub, %bb.br ], [ %i.ao, %bb.g ], [ %i.er, %bb.w ], [ %i.ex, %bb.y ], [ %i.jg, %.loopexit ], [ %i.jx, %bb.aj ], [ %i.nx, %bb.az ], [ %i.od, %bb.bb ], [ %i.rk, %.loopexit97 ], [ %i.sw, %bb.bn ]
  ret ptr %.1
}

declare noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ojph5local10resolution16prepare_precinctEv(ptr noundef nonnull align 8 dereferenceable(264) initializes((16, 20)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = tail call noundef i32 @_ZN4ojph5local10resolution16prepare_precinctEv(ptr noundef nonnull align 8 dereferenceable(264) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.05 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.j = load i32, ptr %i.i, align 4, !tbaa !116
  %i.k = mul i32 %i.j, %i.h                       ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ 0, %bb.c ], [ %i.y, %bb.d ]
  %i.r = add i32 %i.q, %.05
  ret i32 %i.r

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i32, ptr %i.n, align 4, !tbaa !89
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = tail call noundef i32 @_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE(ptr noundef nonnull align 8 dereferenceable(98) %i.t, i32 noundef %i.u, ptr noundef nonnull %i.o, ptr noundef %i.v)
  %i.x = load i32, ptr %i.f, align 8, !tbaa !75
  %i.y = add i32 %i.x, %i.w                       ; 2 uses
  store i32 %i.y, ptr %i.f, align 8, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !175
}

declare noundef i32 @_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE(ptr noundef nonnull align 8 dereferenceable(98), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10resolution15write_precinctsEPNS_12outfile_baseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !115
  %i.f = load i32, ptr %i.d, align 4, !tbaa !116
  %i.g = mul i32 %i.f, %i.e
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %indvars.iv
  tail call void @_ZN4ojph5local8precinct5writeEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(98) %i.i, ptr noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.c, align 8, !tbaa !115
  %i.k = load i32, ptr %i.d, align 4, !tbaa !116
  %i.l = mul i32 %i.k, %i.j
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !176
}

declare void @_ZN4ojph5local8precinct5writeEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(98), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4ojph5local10resolution21get_top_left_precinctERNS_5pointE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.d = load i32, ptr %i.c, align 4, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !86   ; 2 uses
  %i.g = mul i32 %i.f, %i.d
  %i.h = add i32 %i.g, %i.b
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = zext i32 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.l = load i32, ptr %i.k, align 4, !tbaa !116
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw i64 %i.m, %i.j
  %i.o = icmp ugt i64 %i.n, %i.i                  ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !59
  store i64 %i.t, ptr %1, align 4, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10resolution18write_one_precinctEPNS_12outfile_baseE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !86
  %i.g = mul i32 %i.f, %i.d
  %i.h = add i32 %i.g, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %i.k
  tail call void @_ZN4ojph5local8precinct5writeEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(98) %i.l, ptr noundef %1)
  %i.m = load i32, ptr %i.a, align 8, !tbaa !117
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !117
  %i.o = load i32, ptr %i.e, align 8, !tbaa !86
  %.not = icmp ult i32 %i.n, %i.o
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !117
  %i.p = load i32, ptr %i.c, align 4, !tbaa !118
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.c, align 4, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10resolution19parse_all_precinctsERjPNS_11infile_baseE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !86   ; 2 uses
  %i.i = mul i32 %i.h, %i.f
  %i.j = add i32 %i.i, %i.d                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.l = zext i32 %i.j to i64                     ; 2 uses
  %i.m = zext i32 %i.h to i64
  %i.n = load i32, ptr %i.k, align 4, !tbaa !116
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw i64 %i.o, %i.m
  %i.q = icmp ugt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.v = phi i64 [ %i.l, %.lr.ph ], [ %i.aj, %bb.e ]
  %.09 = phi i32 [ %i.j, %.lr.ph ], [ %i.ai, %bb.e ]
  %i.w = load i32, ptr %1, align 4, !tbaa !59
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.v
  %i.z = load i32, ptr %i.r, align 4, !tbaa !89
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !73, !range !84, !noundef !85
  %i.ac = trunc nuw i8 %i.ab to i1
  tail call void @_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb(ptr noundef nonnull align 8 dereferenceable(98) %i.y, i32 noundef %i.z, ptr noundef nonnull %i.s, ptr noundef %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, i1 noundef zeroext %i.ac)
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !117
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
  store i32 %i.ae, ptr %i.c, align 8, !tbaa !117
  %i.af = load i32, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %.not = icmp ult i32 %i.ae, %i.af
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !117
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !118
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.e, align 4, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ai = add i32 %.09, 1                         ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = zext i32 %i.af to i64
  %i.al = load i32, ptr %i.k, align 4, !tbaa !116
  %i.am = zext i32 %i.al to i64
  %i.an = mul nuw i64 %i.am, %i.ak
  %i.ao = icmp ugt i64 %i.an, %i.aj
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

declare void @_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb(ptr noundef nonnull align 8 dereferenceable(98), i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10resolution18parse_one_precinctERjPNS_11infile_baseE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !59
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !117
  %i.f = load i32, ptr %i.b, align 4, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !86
  %i.i = mul i32 %i.h, %i.f
  %i.j = add i32 %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = zext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.p = load i32, ptr %i.o, align 4, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !73, !range !84, !noundef !85
  %i.v = trunc nuw i8 %i.u to i1
  tail call void @_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb(ptr noundef nonnull align 8 dereferenceable(98) %i.n, i32 noundef %i.p, ptr noundef nonnull %i.q, ptr noundef %i.s, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, i1 noundef zeroext %i.v)
  %i.w = load i32, ptr %i.a, align 8, !tbaa !117
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.a, align 8, !tbaa !117
  %i.y = load i32, ptr %i.g, align 8, !tbaa !86
  %.not = icmp ult i32 %i.x, %i.y
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !117
  %i.z = load i32, ptr %i.b, align 4, !tbaa !118
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !118
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4ojph5local10resolution13get_num_bytesEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %tailrecurse ]
  %i.d = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !75
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.f = phi i32 [ %i.k, %tailrecurse ], [ %i.b, %bb.a ]
  %.tr8 = phi ptr [ %i.i, %tailrecurse ], [ %0, %bb.a ]
  %i.g = icmp ult i32 %1, %i.f
  br i1 %i.g, label %tailrecurse, label %.loopexit

tailrecurse:                                      ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.tr8, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !74   ; 2 uses
  %i.l = icmp eq i32 %i.k, %1
  br i1 %i.l, label %tailrecurse._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %tailrecurse._crit_edge
  %.0 = phi i32 [ %i.e, %tailrecurse._crit_edge ], [ 0, %.lr.ph ]
  ret i32 %.0
}

declare noundef ptr @_ZN4ojph5local9param_cod7get_cocEj(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"bool", !4, i64 0}
!11 = !{!"_ZTSN4ojph4sizeE", !5, i64 0, !5, i64 4}
!12 = !{!"p1 _ZTSN4ojph5local4tileE", !8, i64 0}
!13 = !{!"p1 _ZTSN4ojph8line_bufE", !8, i64 0}
!14 = !{!"p1 _ZTSN4ojph4sizeE", !8, i64 0}
!15 = !{!"short", !4, i64 0}
!16 = !{!"p1 _ZTSN4ojph5local13siz_comp_infoE", !8, i64 0}
!17 = !{!"p1 _ZTSN4ojph5local9param_codE", !8, i64 0}
!18 = !{!"p1 _ZTSN4ojph5local9param_dfsE", !8, i64 0}
!19 = !{!"_ZTSN4ojph5local9param_sizE", !15, i64 0, !15, i64 2, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !15, i64 36, !16, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !10, i64 68, !10, i64 69, !17, i64 72, !18, i64 80}
!20 = !{!"_ZTSN4ojph5local9param_cod8cod_typeE", !4, i64 0}
!21 = !{!"_ZTSN4ojph5local9cod_SGcodE", !4, i64 0, !15, i64 2, !4, i64 4}
!22 = !{!"_ZTSN4ojph5local9cod_SPcodE", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4, !4, i64 5}
!23 = !{!"p1 _ZTSN4ojph5local9param_atkE", !8, i64 0}
!24 = !{!"_ZTSN4ojph5local9param_codE", !20, i64 0, !15, i64 2, !4, i64 4, !21, i64 6, !22, i64 12, !17, i64 56, !23, i64 64, !17, i64 72, !15, i64 80, !17, i64 88}
!25 = !{!"_ZTSN4ojph5local9param_capE", !15, i64 0, !5, i64 4, !4, i64 8}
!26 = !{!"_ZTSN4ojph5local9param_qcd8qcd_typeE", !4, i64 0}
!27 = !{!"float", !4, i64 0}
!28 = !{!"p1 _ZTSN4ojph5local9param_qcdE", !8, i64 0}
!29 = !{!"_ZTSN4ojph5local9param_qcdE", !26, i64 0, !15, i64 2, !4, i64 4, !4, i64 6, !5, i64 200, !27, i64 204, !10, i64 208, !28, i64 216, !28, i64 224, !15, i64 232, !28, i64 240}
!30 = !{!"p1 _ZTSN4ojph5local9param_tlm14Ttlm_Ptlm_pairE", !8, i64 0}
!31 = !{!"_ZTSN4ojph5local9param_tlmE", !15, i64 0, !4, i64 2, !4, i64 3, !30, i64 8, !5, i64 16, !5, i64 20}
!32 = !{!"p1 _ZTSN4ojph5local9param_nltE", !8, i64 0}
!33 = !{!"_ZTSN4ojph5local9param_nltE", !15, i64 0, !15, i64 2, !4, i64 4, !4, i64 5, !10, i64 6, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSN4ojph5local9param_dfsE", !15, i64 0, !15, i64 2, !4, i64 4, !4, i64 5, !18, i64 16, !18, i64 24}
!35 = !{!"p1 _ZTSN4ojph5local12lifting_stepE", !8, i64 0}
!36 = !{!"_ZTSN4ojph5local9param_atkE", !15, i64 0, !15, i64 2, !27, i64 4, !4, i64 8, !35, i64 16, !5, i64 24, !4, i64 28, !23, i64 80, !23, i64 88, !23, i64 96}
!37 = !{!"p1 _ZTSN4ojph19mem_fixed_allocatorE", !8, i64 0}
!38 = !{!"p1 _ZTSN4ojph21mem_elastic_allocatorE", !8, i64 0}
!39 = !{!"p1 _ZTSN4ojph12outfile_baseE", !8, i64 0}
!40 = !{!"p1 _ZTSN4ojph11infile_baseE", !8, i64 0}
!41 = !{!"_ZTSN4ojph5local10codestreamE", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !10, i64 28, !5, i64 32, !5, i64 36, !11, i64 40, !12, i64 48, !13, i64 56, !5, i64 64, !14, i64 72, !14, i64 80, !10, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !10, i64 104, !19, i64 112, !24, i64 200, !25, i64 296, !29, i64 368, !31, i64 616, !33, i64 640, !34, i64 664, !36, i64 696, !37, i64 800, !38, i64 808, !39, i64 816, !40, i64 824}
!42 = !{!41, !37, i64 800}
!43 = !{!24, !20, i64 0}
!44 = !{!24, !4, i64 12}
!45 = !{!24, !17, i64 72}
!46 = !{!41, !5, i64 36}
!47 = !{!24, !23, i64 64}
!48 = !{!34, !15, i64 0}
!49 = !{!"vtable pointer", !3, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"_ZTSN4ojph5pointE", !5, i64 0, !5, i64 4}
!52 = !{!"_ZTSN4ojph4rectE", !51, i64 0, !11, i64 8}
!53 = !{!52, !5, i64 0}
!54 = !{!52, !5, i64 4}
!55 = !{!52, !5, i64 8}
!56 = !{!52, !5, i64 12}
!57 = !{!"long", !4, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!5, !5, i64 0}
!60 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 4, !59, i64 12, i64 4, !59}
!61 = !{!24, !4, i64 4}
!62 = !{!4, !4, i64 0}
!63 = !{!36, !4, i64 8}
!64 = !{!36, !15, i64 2}
!65 = !{!"p1 _ZTSN4ojph11lifting_bufE", !8, i64 0}
!66 = !{!"p1 _ZTSN4ojph5local7subbandE", !8, i64 0}
!67 = !{!"p1 _ZTSN4ojph5local9tile_compE", !8, i64 0}
!68 = !{!"p1 _ZTSN4ojph5local10resolutionE", !8, i64 0}
!69 = !{!"p1 _ZTSN4ojph5local8precinctE", !8, i64 0}
!70 = !{!"_ZTSN4ojph5local10resolutionE", !10, i64 0, !10, i64 1, !10, i64 2, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !51, i64 20, !52, i64 28, !13, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !66, i64 80, !67, i64 88, !68, i64 96, !68, i64 104, !69, i64 112, !11, i64 120, !11, i64 128, !5, i64 136, !5, i64 140, !4, i64 144, !51, i64 224, !23, i64 232, !5, i64 240, !5, i64 244, !5, i64 248, !10, i64 252, !10, i64 253, !38, i64 256}
!71 = !{!70, !38, i64 256}
!72 = !{!70, !10, i64 2}
!73 = !{!70, !10, i64 1}
!74 = !{!70, !5, i64 8}
!75 = !{!70, !5, i64 16}
!76 = !{!70, !23, i64 232}
!77 = !{!70, !5, i64 240}
!78 = !{!8, !8, i64 0}
!79 = !{!70, !66, i64 80}
!80 = !{!"p1 _ZTSN4ojph5local9codeblockE", !8, i64 0}
!81 = !{!"p1 _ZTSN4ojph5local15coded_cb_headerE", !8, i64 0}
!82 = !{!"_ZTSN4ojph5local7subbandE", !10, i64 0, !5, i64 4, !5, i64 8, !10, i64 12, !52, i64 16, !13, i64 32, !68, i64 40, !80, i64 48, !11, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !27, i64 92, !27, i64 96, !5, i64 100, !81, i64 104, !38, i64 112}
!83 = !{!70, !68, i64 104}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!70, !5, i64 120}
!87 = !{!70, !69, i64 112}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!70, !5, i64 140}
!90 = !{!70, !10, i64 0}
!91 = !{!70, !5, i64 4}
!92 = !{!70, !65, i64 56}
!93 = !{!70, !65, i64 72}
!94 = !{!70, !65, i64 64}
!95 = !{!"_ZTSN4ojph11lifting_bufE", !13, i64 0, !10, i64 8}
!96 = !{!95, !10, i64 8}
!97 = !{!95, !13, i64 0}
!98 = !{!70, !5, i64 244}
!99 = !{!70, !5, i64 248}
!100 = !{!70, !10, i64 252}
!101 = !{!70, !10, i64 253}
!102 = !{!65, !65, i64 0}
!103 = !{!70, !5, i64 36}
!104 = !{!70, !5, i64 40}
!105 = !{!36, !35, i64 16}
!106 = !{!13, !13, i64 0}
!107 = !{!10, !10, i64 0}
!108 = !{i64 0, i64 8, !106, i64 8, i64 1, !107}
!109 = !{!"_ZTSN4ojph8line_bufE", !57, i64 0, !5, i64 8, !5, i64 12, !4, i64 16}
!110 = !{!109, !5, i64 12}
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = !{!"llvm.loop.unroll.runtime.disable"}
!113 = !{!36, !27, i64 4}
!114 = !{!27, !27, i64 0}
!115 = !{!11, !5, i64 0}
!116 = !{!11, !5, i64 4}
!117 = !{!70, !5, i64 224}
!118 = !{!70, !5, i64 228}
!119 = distinct !{!119, !88}
!120 = distinct !{!120, !137}
!121 = distinct !{!121, !88}
!122 = distinct !{!122, !88}
!123 = distinct !{!123, !137}
!124 = distinct !{!124, !88}
!125 = distinct !{!125, !137}
!126 = distinct !{!126, !88}
!127 = distinct !{!127, !88}
!128 = distinct !{!128, !88}
!129 = distinct !{!129, !88}
!130 = !{!41, !38, i64 808}
!131 = !{!41, !5, i64 32}
!132 = !{!70, !67, i64 88}
!133 = !{!70, !68, i64 96}
!134 = !{!70, !5, i64 12}
!135 = !{!82, !10, i64 0}
!136 = !{!70, !5, i64 124}
!137 = !{!"llvm.loop.unroll.disable"}
!138 = !{!70, !5, i64 128}
!139 = !{!70, !5, i64 132}
!140 = !{!"_ZTSN4ojph5local9tile_compE", !12, i64 0, !68, i64 8, !52, i64 16, !51, i64 32, !5, i64 40, !5, i64 44, !5, i64 48}
!141 = !{!140, !12, i64 0}
!142 = !{!41, !9, i64 8}
!143 = !{!"p1 _ZTSN4ojph11coded_listsE", !8, i64 0}
!144 = !{!"_ZTSN4ojph5local8precinctE", !9, i64 0, !51, i64 8, !4, i64 16, !66, i64 80, !143, i64 88, !10, i64 96, !10, i64 97}
!145 = !{!144, !66, i64 80}
!146 = !{!144, !10, i64 96}
!147 = !{!144, !10, i64 97}
!148 = !{!144, !9, i64 0}
!149 = !{!144, !143, i64 88}
!150 = !{!22, !4, i64 1}
!151 = !{!22, !4, i64 2}
!152 = !{!70, !5, i64 136}
!153 = !{!70, !13, i64 48}
!154 = distinct !{!154, !88}
!155 = distinct !{!155, !88}
!156 = distinct !{!156, !88, !111, !112}
!157 = distinct !{!157, !88, !111, !112}
!158 = distinct !{!158, !88, !112, !111}
!159 = distinct !{!159, !88, !112, !111}
!160 = distinct !{!160, !88}
!161 = distinct !{!161, !88}
!162 = distinct !{!162, !88, !111, !112}
!163 = distinct !{!163, !88, !112, !111}
!164 = !{!82, !13, i64 32}
!165 = distinct !{!165, !88}
!166 = distinct !{!166, !88}
!167 = distinct !{!167, !88, !111, !112}
!168 = distinct !{!168, !88, !111, !112}
!169 = distinct !{!169, !88, !112, !111}
!170 = distinct !{!170, !88, !112, !111}
!171 = distinct !{!171, !88}
!172 = distinct !{!172, !88}
!173 = distinct !{!173, !88, !111, !112}
!174 = distinct !{!174, !88, !112, !111}
!175 = distinct !{!175, !88}
!176 = distinct !{!176, !88}
!177 = distinct !{!177, !88}
end_hunk_0
