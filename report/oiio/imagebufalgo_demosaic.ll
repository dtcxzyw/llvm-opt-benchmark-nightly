Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_demosaic?download=true
inline.NumInlined: 17707
inline.NumDeleted: 3921
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 218
begin_hunk_0_@_ZN3fmt3v126detail6bigint6squareEv:bb.a
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai) ; 4 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !318
  %i.ak = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ak, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !312   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.m
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.m ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bf, %bb.m ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.am = icmp eq i64 %indvars.iv, 0
  br i1 %i.am, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.n

.preheader.loopexit:                              ; preds = %bb.m
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bf, %.preheader.loopexit ]
  %i.an = icmp sgt i32 %i.d, %i.c
  br i1 %i.an, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ao = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.ap = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.aq = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.aq, %i.ap
  %i.ar = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.ap, -1      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.prol
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.m, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.bz, %.unr-lcssa ]
  %lcmp.mod151 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !67
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !67
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw
  %i.bb = zext i64 %i.ba to i128
  %i.bc = add i128 %.147.epil.init, %i.bb
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa148 = phi i128 [ %i.bz, %.unr-lcssa ], [ %i.bc, %.epil.preheader ] ; 2 uses
  %i.bd = trunc i128 %.lcssa148 to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !67
  %i.bf = lshr i128 %.lcssa148, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !1074

bb.n:                                             ; preds = %bb.n, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.n ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.n ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.bz, %bb.n ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.n ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !67
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !67
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.bi
  %i.bn = zext i64 %i.bm to i128
  %i.bo = add i128 %.147, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !67
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !67
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bs
  %i.by = zext i64 %i.bx to i128
  %i.bz = add i128 %i.bo, %i.by                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.n, !llvm.loop !1075

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.ca = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.cb = trunc nuw i64 %i.aj to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cb, i32 1) ; 2 uses
  %i.cc = trunc nuw i64 %i.aj to i32              ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph143, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph143
  %i.ce = trunc nuw i64 %i.ch to i32              ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %.lr.ph143, label %.critedge.i, !llvm.loop !29

.lr.ph143:                                        ; preds = %._crit_edge59, %bb.o
  %i.cg = phi i32 [ %i.ce, %bb.o ], [ %i.cc, %._crit_edge59 ]
  %indvars.iv.i142 = phi i64 [ %i.ch, %bb.o ], [ %i.aj, %._crit_edge59 ]
  %i.ch = add nsw i64 %indvars.iv.i142, -1        ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !67
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %..critedge.i_crit_edge, !llvm.loop !29

..critedge.i_crit_edge:                           ; preds = %.lr.ph143
  br label %.critedge.i, !llvm.loop !29

.critedge.i:                                      ; preds = %bb.o, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cg, %..critedge.i_crit_edge ], [ %smin.i, %bb.o ]
  %i.cl = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cm = icmp ult i64 %i.ai, %i.cl
  br i1 %i.cm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !311
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cl)
          to label %.noexc43 unwind label %bb.t, !inline_history !1076

.noexc43:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !313
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.ap, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.de, %._crit_edge ] ; 3 uses
  %i.cp = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.cq = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.cr = sub i32 %indvar, %i.c
  %i.cs = and i32 %i.cr, 1
  %lcmp.mod153.not.not = icmp eq i32 %i.cs, 0
  br i1 %lcmp.mod153.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %i.cq, 1
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.cq
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !67
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load i32, ptr %i.as, align 4, !tbaa !67
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw i64 %i.cx, %i.cv
  %i.cz = zext i64 %i.cy to i128
  %i.da = add nsw i128 %.256, %i.cz               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa147.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.da, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %i.cq, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.da, %.lr.ph.prol ]
  %i.db = icmp eq i32 %i.ar, %indvar
  br i1 %i.db, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.q
  %.3.lcssa = phi i128 [ %.256, %bb.q ], [ %.lcssa147.unr, %.lr.ph.prol.loopexit ], [ %i.dy, %.lr.ph ] ; 2 uses
  %i.dc = trunc i128 %.3.lcssa to i32
  %i.dd = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !67
  %i.de = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.q, !llvm.loop !1077

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.dy, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !67
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv82.in
  %i.dj = getelementptr i8, ptr %i.di, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !67
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw i64 %i.dl, %i.dh
  %i.dn = zext i64 %i.dm to i128
  %i.do = add i128 %.352, %i.dn
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !67
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.1
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !67
  %i.dv = zext i32 %i.du to i64
  %i.dw = mul nuw i64 %i.dv, %i.ds
  %i.dx = zext i64 %i.dw to i128
  %i.dy = add i128 %i.do, %i.dx                   ; 2 uses
  %lftr.wideiv118.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv118.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1078

bb.r:                                             ; preds = %.noexc43, %.critedge.i
  %i.dz = phi i64 [ %i.ai, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.ea = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.dz)
  store i64 %i.ea, ptr %i.a, align 8, !tbaa !318
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !317
  %i.ed = shl nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !317
  %i.ee = load ptr, ptr %1, align 8, !tbaa !312   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ee) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.t:                                             ; preds = %bb.p
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.t ], [ %i.at, %bb.l ]
  %i.eh = load ptr, ptr %1, align 8, !tbaa !312   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.eh) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 8 uses
  %7 = alloca %class.anon.59, align 8             ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !230    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #29
  %i.d = load ptr, ptr %6, align 8, !tbaa !245
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !252  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  invoke void @_ZSt16__throw_bad_castv() #34
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !226
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit unwind label %bb.f, !inline_history !30

bb.f:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %i.m

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.pre = load i32, ptr %2, align 4, !tbaa !230
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.n = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.o = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !306  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !307
  %i.t = add nsw i32 %i.s, %i.q                   ; 3 uses
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  %i.v = trunc i32 %i.n to i8
  %i.w = and i8 %i.v, 7
  switch i8 %i.w, label %bb.h [
    i8 2, label %bb.i
    i8 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !232  ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %. = select i1 %i.z, i32 %i.y, i32 %4
  %i.aa = icmp sgt i32 %i.t, -4
  %i.ab = icmp sle i32 %i.t, %.
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = ptrtoint ptr %5 to i64
  %i.ae = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.q, i8 noundef signext %i.o, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.ad)
  br label %bb.u

bb.j:                                             ; preds = %bb.g, %bb.h
  %.not51 = icmp ne i32 %3, 0
  %i.af = zext i1 %.not51 to i32
  %i.ag = add nsw i32 %i.q, %i.af
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = and i32 %i.n, 8192
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !232
  %i.al = sub nsw i32 %i.ak, %i.q
  %i.am = call noundef i32 @llvm.smax.i32(i32 %i.al, i32 0) ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.an, %i.ah
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i32 %i.q, 1
  %spec.select = select i1 %i.ap, i8 0, i8 %i.o
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.049 = phi i32 [ %i.am, %bb.k ], [ 0, %bb.l ]
  %.048 = phi i64 [ %i.ao, %bb.k ], [ %i.ah, %bb.l ]
  %.0 = phi i8 [ %i.o, %bb.k ], [ %spec.select, %bb.l ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.aq = zext i1 %.not52 to i64
  %i.ar = call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 100
  %i.at = icmp samesign ugt i32 %i.ar, 999
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  store float %i.fe, ptr %i.ff, align 4, !tbaa !111
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fg = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fg, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1569

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fi = load ptr, ptr %i.at, align 8, !tbaa !564 ; 7 uses
  %i.fj = load ptr, ptr %i.au, align 8, !tbaa !565
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fi, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fk, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !564
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 168
  store ptr %i.fm, ptr %i.at, align 8, !tbaa !564
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !556 ; 6 uses
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fr = sdiv exact i64 %i.fp, 168               ; 3 uses
  %i.fs = icmp eq ptr %i.fi, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fs, i64 1, i64 %i.fr
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fr ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 54901024028897475)
  %i.fw = select i1 %i.fu, i64 54901024028897475, i64 %i.fv ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fx = mul nuw nsw i64 %i.fw, 168              ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fz, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ga, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fs, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %i.fy, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.gd, i64 36, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1570

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = call ptr @__cxa_begin_catch(ptr %i.gh) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fy, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !47

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gs = phi ptr [ %i.gb, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gm, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gt = load ptr, ptr %i.au, align 8, !tbaa !565
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gv) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gz = extractvalue { ptr, i32 } %i.gj, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.fz) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.fx) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fy, ptr %4, align 8, !tbaa !556
  store ptr %i.gs, ptr %i.at, align 8, !tbaa !564
  %i.he = getelementptr inbounds nuw [168 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.he, ptr %i.au, align 8, !tbaa !565
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hf = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hg = and i32 %i.hf, -2
  %i.hh = add i32 %i.hg, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hi = add nuw nsw i32 %i.hh, %spec.store.select.i.i.i.i ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 5
  br i1 %i.hj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hk = sext i32 %i.hi to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !111
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.hm, ptr %i.hn, align 4, !tbaa !111
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ho = add nsw i32 %i.hh, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.ho, i32 noundef %i.ct, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.hp = add nsw i32 %i.hh, %i.bz
  %i.hq = srem i32 %i.hp, 2
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !200
  %i.hu = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.ht, 32
  %i.hv = ashr exact i64 %sext.i.i.i.i, 30
  %i.hw = getelementptr inbounds i8, ptr %i.bk, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !111
  %i.hy = fmul float %i.hu, %i.hx
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.hy, ptr %i.hz, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1571

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.ib = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ie = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.ie, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1572

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fh, %bb.t ], [ %i.ia, %bb.am ], [ %i.hb, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.if = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i28.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.ii = load ptr, ptr %4, align 8, !tbaa !556   ; 3 uses
  %i.ij = load ptr, ptr %i.at, align 8, !tbaa !564 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ii, %i.ij
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.io, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.ii, %bb.as ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.io, %i.ij
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !47

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !556
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.ii, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !565
  %i.ip = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.iq = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ir) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.is = load i32, ptr %i.l, align 4, !tbaa !549
  %i.it = add nsw i32 %i.is, %.02152.i.i.i
  %i.iu = srem i32 %i.it, 2
  %i.iv = sext i32 %i.iu to i64                   ; 2 uses
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.iv
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.iv ; 2 uses
  %i.iy = load i32, ptr %i.k, align 8, !tbaa !548
  %i.iz = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.ja = add nsw i32 %i.iz, %i.iy
  %i.jb = srem i32 %i.ja, 2                       ; 2 uses
  %i.jc = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jd = sub nsw i32 %i.jc, %i.iz                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1589
  store ptr %3, ptr %i.ax, align 8, !tbaa !420
  %i.je = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.je, ptr %i.ay, align 8, !tbaa !553
  store i32 %i.jb, ptr %i.ba, align 4, !tbaa !559
  store i32 %i.jd, ptr %i.bb, align 8, !tbaa !558
  %i.jf = icmp sgt i32 %i.jb, 0
  br i1 %i.jf, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !115
  invoke void %i.jg(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !558
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.ji = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jd, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.ji, 1
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jj = sdiv i32 %i.ji, 2
  %i.jk = call i32 @llvm.umax.i32(i32 %i.jj, i32 1)
  %umax.i.i.i = sext i32 %i.jk to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.az, %bb.ay
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  store float %i.fg, ptr %i.fh, align 4, !tbaa !111
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fi = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fi, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1606

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fk = load ptr, ptr %i.at, align 8, !tbaa !583 ; 7 uses
  %i.fl = load ptr, ptr %i.au, align 8, !tbaa !584
  %.not.i.i.i.i.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fk, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fm, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !583
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 168
  store ptr %i.fo, ptr %i.at, align 8, !tbaa !583
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !575 ; 6 uses
  %i.fp = ptrtoint ptr %i.fk to i64
  %i.fq = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775800
  br i1 %i.fs, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.ft = sdiv exact i64 %i.fr, 168               ; 3 uses
  %i.fu = icmp eq ptr %i.fk, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fu, i64 1, i64 %i.ft
  %i.fv = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.ft ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.ft
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fv, i64 54901024028897475)
  %i.fy = select i1 %i.fw, i64 54901024028897475, i64 %i.fx ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fz = mul nuw nsw i64 %i.fy, 168              ; 2 uses
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fr ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gb, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fu, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.y ], [ %i.ga, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gf = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.gf, i64 36, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gg, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1607

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  %i.gk = call ptr @__cxa_begin_catch(ptr %i.gj) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.ga, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.go = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !48

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gu = phi ptr [ %i.gd, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.go, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !584
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gx) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hb = extractvalue { ptr, i32 } %i.gl, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gb) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.fz) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.ga, ptr %4, align 8, !tbaa !575
  store ptr %i.gu, ptr %i.at, align 8, !tbaa !583
  %i.hg = getelementptr inbounds nuw [168 x i8], ptr %i.ga, i64 %i.fy
  store ptr %i.hg, ptr %i.au, align 8, !tbaa !584
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hh = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hi = and i32 %i.hh, -2
  %i.hj = add i32 %i.hi, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hk = add nuw nsw i32 %i.hj, %spec.store.select.i.i.i.i ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 5
  br i1 %i.hl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !111
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ho, ptr %i.hp, align 4, !tbaa !111
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hq = add nsw i32 %i.hj, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hq, i32 noundef %i.ct, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.hr = add nsw i32 %i.hj, %i.bz
  %i.hs = srem i32 %i.hr, 2
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !200
  %i.hw = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.hv, 32
  %i.hx = ashr exact i64 %sext.i.i.i.i, 30
  %i.hy = getelementptr inbounds i8, ptr %i.bk, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !111
  %i.ia = fmul float %i.hw, %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ia, ptr %i.ib, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1608

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.id = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ig = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.ig, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1609

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fj, %bb.t ], [ %i.ic, %bb.am ], [ %i.hd, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i28.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.ik = load ptr, ptr %4, align 8, !tbaa !575   ; 3 uses
  %i.il = load ptr, ptr %i.at, align 8, !tbaa !583 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ik, %i.il
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.iq, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.ik, %bb.as ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.iq, %i.il
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !48

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !575
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.ik, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !584
  %i.ir = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.is = ptrtoint ptr %.val.i.i.i.i to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.it) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iu = load i32, ptr %i.l, align 4, !tbaa !568
  %i.iv = add nsw i32 %i.iu, %.02152.i.i.i
  %i.iw = srem i32 %i.iv, 2
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ix
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ix ; 2 uses
  %i.ja = load i32, ptr %i.k, align 8, !tbaa !567
  %i.jb = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jc = add nsw i32 %i.jb, %i.ja
  %i.jd = srem i32 %i.jc, 2                       ; 2 uses
  %i.je = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jf = sub nsw i32 %i.je, %i.jb                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1626
  store ptr %3, ptr %i.ax, align 8, !tbaa !420
  %i.jg = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jg, ptr %i.ay, align 8, !tbaa !572
  store i32 %i.jd, ptr %i.ba, align 4, !tbaa !578
  store i32 %i.jf, ptr %i.bb, align 8, !tbaa !577
  %i.jh = icmp sgt i32 %i.jd, 0
  br i1 %i.jh, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !115
  invoke void %i.ji(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !577
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jk = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jf, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jk, 1
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jl = sdiv i32 %i.jk, 2
  %i.jm = call i32 @llvm.umax.i32(i32 %i.jl, i32 1)
  %umax.i.i.i = sext i32 %i.jm to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.az, %bb.ay
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  store float %i.fv, ptr %i.fw, align 4, !tbaa !111
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fx = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fx, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1643

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.fz = load ptr, ptr %i.at, align 8, !tbaa !602 ; 7 uses
  %i.ga = load ptr, ptr %i.au, align 8, !tbaa !603
  %.not.i.i.i.i.i = icmp eq ptr %i.fz, %i.ga
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fz, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.z
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gb, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.gc = load ptr, ptr %i.at, align 8, !tbaa !602
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 168
  store ptr %i.gd, ptr %i.at, align 8, !tbaa !602
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !594 ; 6 uses
  %i.ge = ptrtoint ptr %i.fz to i64
  %i.gf = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.gg = sub i64 %i.ge, %i.gf                    ; 3 uses
  %i.gh = icmp eq i64 %i.gg, 9223372036854775800
  br i1 %i.gh, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gi = sdiv exact i64 %i.gg, 168               ; 3 uses
  %i.gj = icmp eq ptr %i.fz, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gj, i64 1, i64 %i.gi
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gi ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gi
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 54901024028897475)
  %i.gn = select i1 %i.gl, i64 54901024028897475, i64 %i.gm ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.go = mul nuw nsw i64 %i.gn, 168              ; 2 uses
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gg ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gq, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc82.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gr, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.gj, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %bb.ad ], [ %i.gp, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gu = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gt, ptr noundef nonnull align 8 dereferenceable(36) %i.gu, i64 36, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.fz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1644

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  %i.gz = call ptr @__cxa_begin_catch(ptr %i.gy) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gp, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hd = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hi, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hi, %i.fz
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !49

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hj = phi ptr [ %i.gs, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.hd, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hk = load ptr, ptr %i.au, align 8, !tbaa !603
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = sub i64 %i.hl, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.hm) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  %i.hp = call ptr @__cxa_begin_catch(ptr %i.ho) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.hq = extractvalue { ptr, i32 } %i.ha, 0
  %i.hr = call ptr @__cxa_begin_catch(ptr %i.hq) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gq) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.go) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gp, ptr %4, align 8, !tbaa !594
  store ptr %i.hj, ptr %i.at, align 8, !tbaa !602
  %i.hv = getelementptr inbounds nuw [168 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.hv, ptr %i.au, align 8, !tbaa !603
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.as ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hw = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hx = and i32 %i.hw, -2
  %i.hy = add i32 %i.hx, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hz = add nuw nsw i32 %i.hy, %spec.store.select.i.i.i.i ; 2 uses
  %i.ia = icmp slt i32 %i.hz, 5
  br i1 %i.ia, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ib = sext i32 %i.hz to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !111
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.id, ptr %i.ie, align 4, !tbaa !111
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.if = add nsw i32 %i.hy, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.if, i32 noundef %i.ct, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.ar

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.aq
  %i.ig = add nsw i32 %i.hy, %i.bz
  %i.ih = srem i32 %i.ig, 2
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ii
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !200
  %i.il = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.ik, 32
  %i.im = ashr exact i64 %sext.i.i.i.i, 30
  %i.in = getelementptr inbounds i8, ptr %i.bk, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !111
  %i.ip = fmul float %i.il, %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ip, ptr %i.iq, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.as:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ap
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ao, !llvm.loop !1645

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.is = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.at, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.iv = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.iv, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1646

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.z
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.ab
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.ar, %bb.al, %bb.y
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.y ], [ %i.ir, %bb.ar ], [ %i.hs, %bb.al ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.iw = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i29.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i29.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.av, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.iz = load ptr, ptr %4, align 8, !tbaa !594   ; 3 uses
  %i.ja = load ptr, ptr %i.at, align 8, !tbaa !602 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.iz, %i.ja
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ax, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.jf, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.iz, %bb.ax ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ay, %.lr.ph.i.i.i.i.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i28.i.i.i = icmp eq ptr %i.jf, %i.ja
  br i1 %.not.i.i.i28.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !594
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.ax
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.iz, %bb.ax ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !603
  %i.jg = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.jh = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ji) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.jj = load i32, ptr %i.l, align 4, !tbaa !587
  %i.jk = add nsw i32 %i.jj, %.02153.i.i.i
  %i.jl = srem i32 %i.jk, 2
  %i.jm = sext i32 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jm
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.jm ; 2 uses
  %i.jp = load i32, ptr %i.k, align 8, !tbaa !586
  %i.jq = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jr = add nsw i32 %i.jq, %i.jp
  %i.js = srem i32 %i.jr, 2                       ; 2 uses
  %i.jt = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.ju = sub nsw i32 %i.jt, %i.jq                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1663
  store ptr %3, ptr %i.ax, align 8, !tbaa !420
  %i.jv = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jv, ptr %i.ay, align 8, !tbaa !591
  store i32 %i.js, ptr %i.ba, align 4, !tbaa !597
  store i32 %i.ju, ptr %i.bb, align 8, !tbaa !596
  %i.jw = icmp sgt i32 %i.js, 0
  br i1 %i.jw, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !115
  invoke void %i.jx(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge66.i.i.i unwind label %bb.bc

._crit_edge66.i.i.i:                              ; preds = %bb.bb
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !596
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bd:                                            ; preds = %._crit_edge66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jz = phi i32 [ %.pre.i.i.i, %._crit_edge66.i.i.i ], [ %i.ju, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jz, 1
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bd
  %i.ka = sdiv i32 %i.jz, 2
  %i.kb = call i32 @llvm.umax.i32(i32 %i.ka, i32 1)
  %umax.i.i.i = sext i32 %i.kb to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.be, %bb.bd
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  store float %i.fg, ptr %i.fh, align 4, !tbaa !111
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fi = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fi, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1680

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fk = load ptr, ptr %i.at, align 8, !tbaa !621 ; 7 uses
  %i.fl = load ptr, ptr %i.au, align 8, !tbaa !622
  %.not.i.i.i.i.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fk, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fm, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !621
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 168
  store ptr %i.fo, ptr %i.at, align 8, !tbaa !621
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !613 ; 6 uses
  %i.fp = ptrtoint ptr %i.fk to i64
  %i.fq = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775800
  br i1 %i.fs, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.ft = sdiv exact i64 %i.fr, 168               ; 3 uses
  %i.fu = icmp eq ptr %i.fk, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fu, i64 1, i64 %i.ft
  %i.fv = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.ft ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.ft
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fv, i64 54901024028897475)
  %i.fy = select i1 %i.fw, i64 54901024028897475, i64 %i.fx ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fz = mul nuw nsw i64 %i.fy, 168              ; 2 uses
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fr ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gb, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fu, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.y ], [ %i.ga, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gf = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.gf, i64 36, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gg, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1681

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  %i.gk = call ptr @__cxa_begin_catch(ptr %i.gj) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.ga, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.go = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !50

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gu = phi ptr [ %i.gd, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.go, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !622
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gx) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hb = extractvalue { ptr, i32 } %i.gl, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gb) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.fz) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.ga, ptr %4, align 8, !tbaa !613
  store ptr %i.gu, ptr %i.at, align 8, !tbaa !621
  %i.hg = getelementptr inbounds nuw [168 x i8], ptr %i.ga, i64 %i.fy
  store ptr %i.hg, ptr %i.au, align 8, !tbaa !622
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hh = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hi = and i32 %i.hh, -2
  %i.hj = add i32 %i.hi, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hk = add nuw nsw i32 %i.hj, %spec.store.select.i.i.i.i ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 5
  br i1 %i.hl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !111
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ho, ptr %i.hp, align 4, !tbaa !111
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hq = add nsw i32 %i.hj, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hq, i32 noundef %i.ct, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.hr = add nsw i32 %i.hj, %i.bz
  %i.hs = srem i32 %i.hr, 2
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !200
  %i.hw = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.hv, 32
  %i.hx = ashr exact i64 %sext.i.i.i.i, 30
  %i.hy = getelementptr inbounds i8, ptr %i.bk, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !111
  %i.ia = fmul float %i.hw, %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ia, ptr %i.ib, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1682

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.id = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ig = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.ig, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1683

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fj, %bb.t ], [ %i.ic, %bb.am ], [ %i.hd, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i28.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.ik = load ptr, ptr %4, align 8, !tbaa !613   ; 3 uses
  %i.il = load ptr, ptr %i.at, align 8, !tbaa !621 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ik, %i.il
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.iq, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.ik, %bb.as ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.iq, %i.il
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !50

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !613
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.ik, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !622
  %i.ir = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.is = ptrtoint ptr %.val.i.i.i.i to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.it) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iu = load i32, ptr %i.l, align 4, !tbaa !606
  %i.iv = add nsw i32 %i.iu, %.02152.i.i.i
  %i.iw = srem i32 %i.iv, 2
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ix
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ix ; 2 uses
  %i.ja = load i32, ptr %i.k, align 8, !tbaa !605
  %i.jb = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jc = add nsw i32 %i.jb, %i.ja
  %i.jd = srem i32 %i.jc, 2                       ; 2 uses
  %i.je = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jf = sub nsw i32 %i.je, %i.jb                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1700
  store ptr %3, ptr %i.ax, align 8, !tbaa !420
  %i.jg = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jg, ptr %i.ay, align 8, !tbaa !610
  store i32 %i.jd, ptr %i.ba, align 4, !tbaa !616
  store i32 %i.jf, ptr %i.bb, align 8, !tbaa !615
  %i.jh = icmp sgt i32 %i.jd, 0
  br i1 %i.jh, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !115
  invoke void %i.ji(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !615
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jk = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jf, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jk, 1
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jl = sdiv i32 %i.jk, 2
  %i.jm = call i32 @llvm.umax.i32(i32 %i.jl, i32 1)
  %umax.i.i.i = sext i32 %i.jm to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.az, %bb.ay
end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  store float %i.fg, ptr %i.fh, align 4, !tbaa !111
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fi = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fi, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1717

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fk = load ptr, ptr %i.at, align 8, !tbaa !640 ; 7 uses
  %i.fl = load ptr, ptr %i.au, align 8, !tbaa !641
  %.not.i.i.i.i.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fk, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fm, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !640
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 168
  store ptr %i.fo, ptr %i.at, align 8, !tbaa !640
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !632 ; 6 uses
  %i.fp = ptrtoint ptr %i.fk to i64
  %i.fq = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775800
  br i1 %i.fs, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.ft = sdiv exact i64 %i.fr, 168               ; 3 uses
  %i.fu = icmp eq ptr %i.fk, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fu, i64 1, i64 %i.ft
  %i.fv = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.ft ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.ft
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fv, i64 54901024028897475)
  %i.fy = select i1 %i.fw, i64 54901024028897475, i64 %i.fx ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fz = mul nuw nsw i64 %i.fy, 168              ; 2 uses
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fr ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gb, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fu, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.y ], [ %i.ga, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gf = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.gf, i64 36, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gg, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1718

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  %i.gk = call ptr @__cxa_begin_catch(ptr %i.gj) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.ga, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.go = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !51

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gu = phi ptr [ %i.gd, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.go, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !641
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gx) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hb = extractvalue { ptr, i32 } %i.gl, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gb) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.fz) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.ga, ptr %4, align 8, !tbaa !632
  store ptr %i.gu, ptr %i.at, align 8, !tbaa !640
  %i.hg = getelementptr inbounds nuw [168 x i8], ptr %i.ga, i64 %i.fy
  store ptr %i.hg, ptr %i.au, align 8, !tbaa !641
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hh = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hi = and i32 %i.hh, -2
  %i.hj = add i32 %i.hi, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hk = add nuw nsw i32 %i.hj, %spec.store.select.i.i.i.i ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 5
  br i1 %i.hl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !111
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ho, ptr %i.hp, align 4, !tbaa !111
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hq = add nsw i32 %i.hj, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hq, i32 noundef %i.ct, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.hr = add nsw i32 %i.hj, %i.bz
  %i.hs = srem i32 %i.hr, 2
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !200
  %i.hw = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.hv, 32
  %i.hx = ashr exact i64 %sext.i.i.i.i, 30
  %i.hy = getelementptr inbounds i8, ptr %i.bk, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !111
  %i.ia = fmul float %i.hw, %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ia, ptr %i.ib, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1719

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.id = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ig = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.ig, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1720

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fj, %bb.t ], [ %i.ic, %bb.am ], [ %i.hd, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i28.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.ik = load ptr, ptr %4, align 8, !tbaa !632   ; 3 uses
  %i.il = load ptr, ptr %i.at, align 8, !tbaa !640 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ik, %i.il
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.iq, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.ik, %bb.as ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.iq, %i.il
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !51

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !632
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.ik, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !641
  %i.ir = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.is = ptrtoint ptr %.val.i.i.i.i to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.it) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iu = load i32, ptr %i.l, align 4, !tbaa !625
  %i.iv = add nsw i32 %i.iu, %.02152.i.i.i
  %i.iw = srem i32 %i.iv, 2
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ix
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ix ; 2 uses
  %i.ja = load i32, ptr %i.k, align 8, !tbaa !624
  %i.jb = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jc = add nsw i32 %i.jb, %i.ja
  %i.jd = srem i32 %i.jc, 2                       ; 2 uses
  %i.je = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jf = sub nsw i32 %i.je, %i.jb                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1737
  store ptr %3, ptr %i.ax, align 8, !tbaa !504
  %i.jg = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jg, ptr %i.ay, align 8, !tbaa !629
  store i32 %i.jd, ptr %i.ba, align 4, !tbaa !635
  store i32 %i.jf, ptr %i.bb, align 8, !tbaa !634
  %i.jh = icmp sgt i32 %i.jd, 0
  br i1 %i.jh, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !115
  invoke void %i.ji(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !634
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jk = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jf, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jk, 1
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jl = sdiv i32 %i.jk, 2
  %i.jm = call i32 @llvm.umax.i32(i32 %i.jl, i32 1)
  %umax.i.i.i = sext i32 %i.jm to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.az, %bb.ay
end_hunk_5
begin_hunk_6_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  store float %i.fv, ptr %i.fw, align 4, !tbaa !111
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fx = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fx, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1754

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.fz = load ptr, ptr %i.at, align 8, !tbaa !659 ; 7 uses
  %i.ga = load ptr, ptr %i.au, align 8, !tbaa !660
  %.not.i.i.i.i.i = icmp eq ptr %i.fz, %i.ga
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fz, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.z
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gb, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.gc = load ptr, ptr %i.at, align 8, !tbaa !659
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 168
  store ptr %i.gd, ptr %i.at, align 8, !tbaa !659
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !651 ; 6 uses
  %i.ge = ptrtoint ptr %i.fz to i64
  %i.gf = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.gg = sub i64 %i.ge, %i.gf                    ; 3 uses
  %i.gh = icmp eq i64 %i.gg, 9223372036854775800
  br i1 %i.gh, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gi = sdiv exact i64 %i.gg, 168               ; 3 uses
  %i.gj = icmp eq ptr %i.fz, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gj, i64 1, i64 %i.gi
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gi ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gi
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 54901024028897475)
  %i.gn = select i1 %i.gl, i64 54901024028897475, i64 %i.gm ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.go = mul nuw nsw i64 %i.gn, 168              ; 2 uses
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gg ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gq, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc82.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gr, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.gj, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %bb.ad ], [ %i.gp, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gu = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gt, ptr noundef nonnull align 8 dereferenceable(36) %i.gu, i64 36, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.fz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1755

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  %i.gz = call ptr @__cxa_begin_catch(ptr %i.gy) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gp, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hd = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hi, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hi, %i.fz
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hj = phi ptr [ %i.gs, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.hd, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hk = load ptr, ptr %i.au, align 8, !tbaa !660
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = sub i64 %i.hl, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.hm) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  %i.hp = call ptr @__cxa_begin_catch(ptr %i.ho) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.hq = extractvalue { ptr, i32 } %i.ha, 0
  %i.hr = call ptr @__cxa_begin_catch(ptr %i.hq) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gq) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.go) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gp, ptr %4, align 8, !tbaa !651
  store ptr %i.hj, ptr %i.at, align 8, !tbaa !659
  %i.hv = getelementptr inbounds nuw [168 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.hv, ptr %i.au, align 8, !tbaa !660
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.as ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hw = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hx = and i32 %i.hw, -2
  %i.hy = add i32 %i.hx, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hz = add nuw nsw i32 %i.hy, %spec.store.select.i.i.i.i ; 2 uses
  %i.ia = icmp slt i32 %i.hz, 5
  br i1 %i.ia, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ib = sext i32 %i.hz to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !111
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.id, ptr %i.ie, align 4, !tbaa !111
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.if = add nsw i32 %i.hy, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.if, i32 noundef %i.ct, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.ar

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.aq
  %i.ig = add nsw i32 %i.hy, %i.bz
  %i.ih = srem i32 %i.ig, 2
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ii
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !200
  %i.il = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.ik, 32
  %i.im = ashr exact i64 %sext.i.i.i.i, 30
  %i.in = getelementptr inbounds i8, ptr %i.bk, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !111
  %i.ip = fmul float %i.il, %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ip, ptr %i.iq, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.as:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ap
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ao, !llvm.loop !1756

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.is = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.at, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.iv = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.iv, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1757

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.z
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.ab
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.ar, %bb.al, %bb.y
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.y ], [ %i.ir, %bb.ar ], [ %i.hs, %bb.al ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.iw = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i29.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i29.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.av, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.iz = load ptr, ptr %4, align 8, !tbaa !651   ; 3 uses
  %i.ja = load ptr, ptr %i.at, align 8, !tbaa !659 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.iz, %i.ja
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ax, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.jf, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.iz, %bb.ax ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ay, %.lr.ph.i.i.i.i.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i28.i.i.i = icmp eq ptr %i.jf, %i.ja
  br i1 %.not.i.i.i28.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !651
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.ax
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.iz, %bb.ax ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !660
  %i.jg = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.jh = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ji) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.jj = load i32, ptr %i.l, align 4, !tbaa !644
  %i.jk = add nsw i32 %i.jj, %.02153.i.i.i
  %i.jl = srem i32 %i.jk, 2
  %i.jm = sext i32 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jm
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.jm ; 2 uses
  %i.jp = load i32, ptr %i.k, align 8, !tbaa !643
  %i.jq = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jr = add nsw i32 %i.jq, %i.jp
  %i.js = srem i32 %i.jr, 2                       ; 2 uses
  %i.jt = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.ju = sub nsw i32 %i.jt, %i.jq                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1774
  store ptr %3, ptr %i.ax, align 8, !tbaa !525
  %i.jv = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jv, ptr %i.ay, align 8, !tbaa !648
  store i32 %i.js, ptr %i.ba, align 4, !tbaa !654
  store i32 %i.ju, ptr %i.bb, align 8, !tbaa !653
  %i.jw = icmp sgt i32 %i.js, 0
  br i1 %i.jw, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !115
  invoke void %i.jx(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge66.i.i.i unwind label %bb.bc

._crit_edge66.i.i.i:                              ; preds = %bb.bb
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !653
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bd:                                            ; preds = %._crit_edge66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jz = phi i32 [ %.pre.i.i.i, %._crit_edge66.i.i.i ], [ %i.ju, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jz, 1
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bd
  %i.ka = sdiv i32 %i.jz, 2
  %i.kb = call i32 @llvm.umax.i32(i32 %i.ka, i32 1)
  %umax.i.i.i = sext i32 %i.kb to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.be, %bb.bd
end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  store float %i.fg, ptr %i.fh, align 4, !tbaa !111
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fi = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fi, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1791

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fk = load ptr, ptr %i.at, align 8, !tbaa !678 ; 7 uses
  %i.fl = load ptr, ptr %i.au, align 8, !tbaa !679
  %.not.i.i.i.i.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fk, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fm, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !678
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 168
  store ptr %i.fo, ptr %i.at, align 8, !tbaa !678
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !670 ; 6 uses
  %i.fp = ptrtoint ptr %i.fk to i64
  %i.fq = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775800
  br i1 %i.fs, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.ft = sdiv exact i64 %i.fr, 168               ; 3 uses
  %i.fu = icmp eq ptr %i.fk, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fu, i64 1, i64 %i.ft
  %i.fv = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.ft ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.ft
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fv, i64 54901024028897475)
  %i.fy = select i1 %i.fw, i64 54901024028897475, i64 %i.fx ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fz = mul nuw nsw i64 %i.fy, 168              ; 2 uses
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fr ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gb, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fu, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.y ], [ %i.ga, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gf = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.gf, i64 36, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gg, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1792

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  %i.gk = call ptr @__cxa_begin_catch(ptr %i.gj) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.ga, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.go = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !53

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gu = phi ptr [ %i.gd, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.go, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !679
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gx) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hb = extractvalue { ptr, i32 } %i.gl, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gb) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.fz) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.ga, ptr %4, align 8, !tbaa !670
  store ptr %i.gu, ptr %i.at, align 8, !tbaa !678
  %i.hg = getelementptr inbounds nuw [168 x i8], ptr %i.ga, i64 %i.fy
  store ptr %i.hg, ptr %i.au, align 8, !tbaa !679
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hh = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hi = and i32 %i.hh, -2
  %i.hj = add i32 %i.hi, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hk = add nuw nsw i32 %i.hj, %spec.store.select.i.i.i.i ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 5
  br i1 %i.hl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !111
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ho, ptr %i.hp, align 4, !tbaa !111
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hq = add nsw i32 %i.hj, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hq, i32 noundef %i.ct, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.hr = add nsw i32 %i.hj, %i.bz
  %i.hs = srem i32 %i.hr, 2
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !200
  %i.hw = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.hv, 32
  %i.hx = ashr exact i64 %sext.i.i.i.i, 30
  %i.hy = getelementptr inbounds i8, ptr %i.bk, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !111
  %i.ia = fmul float %i.hw, %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ia, ptr %i.ib, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1793

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.id = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ig = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.ig, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1794

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fj, %bb.t ], [ %i.ic, %bb.am ], [ %i.hd, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i28.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.ik = load ptr, ptr %4, align 8, !tbaa !670   ; 3 uses
  %i.il = load ptr, ptr %i.at, align 8, !tbaa !678 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ik, %i.il
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.iq, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.ik, %bb.as ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.iq, %i.il
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !53

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !670
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.ik, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !679
  %i.ir = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.is = ptrtoint ptr %.val.i.i.i.i to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.it) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iu = load i32, ptr %i.l, align 4, !tbaa !663
  %i.iv = add nsw i32 %i.iu, %.02152.i.i.i
  %i.iw = srem i32 %i.iv, 2
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ix
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ix ; 2 uses
  %i.ja = load i32, ptr %i.k, align 8, !tbaa !662
  %i.jb = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jc = add nsw i32 %i.jb, %i.ja
  %i.jd = srem i32 %i.jc, 2                       ; 2 uses
  %i.je = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jf = sub nsw i32 %i.je, %i.jb                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1811
  store ptr %3, ptr %i.ax, align 8, !tbaa !546
  %i.jg = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jg, ptr %i.ay, align 8, !tbaa !667
  store i32 %i.jd, ptr %i.ba, align 4, !tbaa !673
  store i32 %i.jf, ptr %i.bb, align 8, !tbaa !672
  %i.jh = icmp sgt i32 %i.jd, 0
  br i1 %i.jh, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !115
  invoke void %i.ji(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !672
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jk = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jf, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jk, 1
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jl = sdiv i32 %i.jk, 2
  %i.jm = call i32 @llvm.umax.i32(i32 %i.jl, i32 1)
  %umax.i.i.i = sext i32 %i.jm to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.az, %bb.ay
end_hunk_7
begin_hunk_8_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fj = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fj, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1830

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !697 ; 7 uses
  %i.fm = load ptr, ptr %i.au, align 8, !tbaa !698
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fl, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fn, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fo = load ptr, ptr %i.at, align 8, !tbaa !697
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 168
  store ptr %i.fp, ptr %i.at, align 8, !tbaa !697
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !691 ; 6 uses
  %i.fq = ptrtoint ptr %i.fl to i64
  %i.fr = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = icmp eq i64 %i.fs, 9223372036854775800
  br i1 %i.ft, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fu = sdiv exact i64 %i.fs, 168               ; 3 uses
  %i.fv = icmp eq ptr %i.fl, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fv, i64 1, i64 %i.fu
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fu ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fu
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 54901024028897475)
  %i.fz = select i1 %i.fx, i64 54901024028897475, i64 %i.fy ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.ga = mul nuw nsw i64 %i.fz, 168              ; 2 uses
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fs ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gc, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gd, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fv, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.y ], [ %i.gb, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gf, ptr noundef nonnull align 8 dereferenceable(36) %i.gg, i64 36, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1831

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  %i.gl = call ptr @__cxa_begin_catch(ptr %i.gk) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gb, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gu, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !54

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gv = phi ptr [ %i.ge, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gp, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gw = load ptr, ptr %i.au, align 8, !tbaa !698
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = sub i64 %i.gx, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gy) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  %i.hb = call ptr @__cxa_begin_catch(ptr %i.ha) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hc = extractvalue { ptr, i32 } %i.gm, 0
  %i.hd = call ptr @__cxa_begin_catch(ptr %i.hc) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gc) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.ga) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gb, ptr %4, align 8, !tbaa !691
  store ptr %i.gv, ptr %i.at, align 8, !tbaa !697
  %i.hh = getelementptr inbounds nuw [168 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.hh, ptr %i.au, align 8, !tbaa !698
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hi = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hi                 ; 2 uses
  %i.hj = urem i32 %.fr.i.i.i.i, 6
  %i.hk = sub nuw i32 %.fr.i.i.i.i, %i.hj
  %i.hl = add i32 %i.hk, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hm = add nuw nsw i32 %i.hl, %spec.store.select.i.i.i.i ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 5
  br i1 %i.hn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !111
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.hq, ptr %i.hr, align 4, !tbaa !111
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hs = add nsw i32 %i.hl, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hs, i32 noundef %i.cw, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.ht = add nsw i32 %i.hl, %i.bz
  %i.hu = srem i32 %i.ht, 6
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !200
  %i.hy = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.hx, 32
  %i.hz = ashr exact i64 %sext.i.i.i.i, 30
  %i.ia = getelementptr inbounds i8, ptr %i.bk, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !111
  %i.ic = fmul float %i.hy, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ic, ptr %i.id, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1832

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.if = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ii = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.ii, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1833

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fk, %bb.t ], [ %i.ie, %bb.am ], [ %i.he, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ij = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i28.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.db, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.im = load ptr, ptr %4, align 8, !tbaa !691   ; 3 uses
  %i.in = load ptr, ptr %i.at, align 8, !tbaa !697 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.im, %i.in
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.is, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.im, %bb.as ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.is, %i.in
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !54

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !691
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.im, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !698
  %i.it = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.iu = ptrtoint ptr %.val.i.i.i.i to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.iv) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iw = load i32, ptr %i.l, align 4, !tbaa !682
  %i.ix = add nsw i32 %i.iw, %.02152.i.i.i
  %i.iy = srem i32 %i.ix, 6
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.iz
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.iz ; 2 uses
  %i.jc = load i32, ptr %i.k, align 8, !tbaa !681
  %i.jd = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.je = add nsw i32 %i.jd, %i.jc
  %i.jf = srem i32 %i.je, 6                       ; 2 uses
  %i.jg = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jh = sub nsw i32 %i.jg, %i.jd                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1850
  store ptr %3, ptr %i.ax, align 8, !tbaa !420
  %i.ji = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.ji, ptr %i.ay, align 8, !tbaa !686
  store i32 %i.jf, ptr %i.ba, align 4, !tbaa !687
  store i32 %i.jh, ptr %i.bb, align 8, !tbaa !688
  %i.jj = icmp sgt i32 %i.jf, 0
  br i1 %i.jj, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jk = load ptr, ptr %i.jb, align 8, !tbaa !115
  invoke void %i.jk(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !688
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jm = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jh, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jm, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jn = sdiv i32 %i.jm, 6
  %i.jo = call i32 @llvm.umax.i32(i32 %i.jn, i32 1)
  %umax.i.i.i = sext i32 %i.jo to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.az, %bb.ay
end_hunk_8
begin_hunk_9_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fl = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fl, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1869

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !716 ; 7 uses
  %i.fo = load ptr, ptr %i.au, align 8, !tbaa !717
  %.not.i.i.i.i.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fn, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fp, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fq = load ptr, ptr %i.at, align 8, !tbaa !716
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 168
  store ptr %i.fr, ptr %i.at, align 8, !tbaa !716
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !710 ; 6 uses
  %i.fs = ptrtoint ptr %i.fn to i64
  %i.ft = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fw = sdiv exact i64 %i.fu, 168               ; 3 uses
  %i.fx = icmp eq ptr %i.fn, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fx, i64 1, i64 %i.fw
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fw ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fw
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 54901024028897475)
  %i.gb = select i1 %i.fz, i64 54901024028897475, i64 %i.ga ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gc = mul nuw nsw i64 %i.gb, 168              ; 2 uses
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fu ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.ge, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gf, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fx, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gk, %bb.y ], [ %i.gd, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gi = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gh, ptr noundef nonnull align 8 dereferenceable(36) %i.gi, i64 36, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gj, %i.fn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1870

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  %i.gn = call ptr @__cxa_begin_catch(ptr %i.gm) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gd, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gw, %i.fn
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !55

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gx = phi ptr [ %i.gg, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gy = load ptr, ptr %i.au, align 8, !tbaa !717
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ha) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  %i.hd = call ptr @__cxa_begin_catch(ptr %i.hc) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.he = extractvalue { ptr, i32 } %i.go, 0
  %i.hf = call ptr @__cxa_begin_catch(ptr %i.he) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.ge) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gc) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gd, ptr %4, align 8, !tbaa !710
  store ptr %i.gx, ptr %i.at, align 8, !tbaa !716
  %i.hj = getelementptr inbounds nuw [168 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.hj, ptr %i.au, align 8, !tbaa !717
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hk = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hk                 ; 2 uses
  %i.hl = urem i32 %.fr.i.i.i.i, 6
  %i.hm = sub nuw i32 %.fr.i.i.i.i, %i.hl
  %i.hn = add i32 %i.hm, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.ho = add nuw nsw i32 %i.hn, %spec.store.select.i.i.i.i ; 2 uses
  %i.hp = icmp slt i32 %i.ho, 5
  br i1 %i.hp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hq = sext i32 %i.ho to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !111
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.hs, ptr %i.ht, align 4, !tbaa !111
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hu = add nsw i32 %i.hn, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hu, i32 noundef %i.cw, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.hv = add nsw i32 %i.hn, %i.bz
  %i.hw = srem i32 %i.hv, 6
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !200
  %i.ia = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.hz, 32
  %i.ib = ashr exact i64 %sext.i.i.i.i, 30
  %i.ic = getelementptr inbounds i8, ptr %i.bk, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !111
  %i.ie = fmul float %i.ia, %i.id
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ie, ptr %i.if, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1871

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ik = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.ik, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1872

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.t ], [ %i.ig, %bb.am ], [ %i.hg, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.il = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i28.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.db, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.io = load ptr, ptr %4, align 8, !tbaa !710   ; 3 uses
  %i.ip = load ptr, ptr %i.at, align 8, !tbaa !716 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.io, %i.ip
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.iu, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.io, %bb.as ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.iu, %i.ip
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !55

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !710
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.io, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !717
  %i.iv = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.iw = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ix) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iy = load i32, ptr %i.l, align 4, !tbaa !701
  %i.iz = add nsw i32 %i.iy, %.02152.i.i.i
  %i.ja = srem i32 %i.iz, 6
  %i.jb = sext i32 %i.ja to i64                   ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jb
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.jb ; 2 uses
  %i.je = load i32, ptr %i.k, align 8, !tbaa !700
  %i.jf = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jg = add nsw i32 %i.jf, %i.je
  %i.jh = srem i32 %i.jg, 6                       ; 2 uses
  %i.ji = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jj = sub nsw i32 %i.ji, %i.jf                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1889
  store ptr %3, ptr %i.ax, align 8, !tbaa !420
  %i.jk = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jk, ptr %i.ay, align 8, !tbaa !705
  store i32 %i.jh, ptr %i.ba, align 4, !tbaa !706
  store i32 %i.jj, ptr %i.bb, align 8, !tbaa !707
  %i.jl = icmp sgt i32 %i.jh, 0
  br i1 %i.jl, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !115
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !707
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jo = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jj, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jo, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jp = sdiv i32 %i.jo, 6
  %i.jq = call i32 @llvm.umax.i32(i32 %i.jp, i32 1)
  %umax.i.i.i = sext i32 %i.jq to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.az, %bb.ay
end_hunk_9
begin_hunk_10_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ga = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ga, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1908

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.gc = load ptr, ptr %i.at, align 8, !tbaa !735 ; 7 uses
  %i.gd = load ptr, ptr %i.au, align 8, !tbaa !736
  %.not.i.i.i.i.i = icmp eq ptr %i.gc, %i.gd
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gc, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.z
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.gf = load ptr, ptr %i.at, align 8, !tbaa !735
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 168
  store ptr %i.gg, ptr %i.at, align 8, !tbaa !735
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !729 ; 6 uses
  %i.gh = ptrtoint ptr %i.gc to i64
  %i.gi = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775800
  br i1 %i.gk, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gl = sdiv exact i64 %i.gj, 168               ; 3 uses
  %i.gm = icmp eq ptr %i.gc, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gm, i64 1, i64 %i.gl
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gl ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gl
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gn, i64 54901024028897475)
  %i.gq = select i1 %i.go, i64 54901024028897475, i64 %i.gp ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gr = mul nuw nsw i64 %i.gq, 168              ; 2 uses
  %i.gs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gj ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gt, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc82.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gu, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.gm, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gz, %bb.ad ], [ %i.gs, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gy, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gx = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gw, ptr noundef nonnull align 8 dereferenceable(36) %i.gx, i64 36, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gy, %i.gc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1909

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gs, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hl, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hl, %i.gc
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !56

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hm = phi ptr [ %i.gv, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.hg, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hn = load ptr, ptr %i.au, align 8, !tbaa !736
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %i.ho, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.hp) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  %i.hs = call ptr @__cxa_begin_catch(ptr %i.hr) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.ht = extractvalue { ptr, i32 } %i.hd, 0
  %i.hu = call ptr @__cxa_begin_catch(ptr %i.ht) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gt) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gr) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gs, ptr %4, align 8, !tbaa !729
  store ptr %i.hm, ptr %i.at, align 8, !tbaa !735
  %i.hy = getelementptr inbounds nuw [168 x i8], ptr %i.gs, i64 %i.gq
  store ptr %i.hy, ptr %i.au, align 8, !tbaa !736
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.as ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hz = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hz                 ; 2 uses
  %i.ia = urem i32 %.fr.i.i.i.i, 6
  %i.ib = sub nuw i32 %.fr.i.i.i.i, %i.ia
  %i.ic = add i32 %i.ib, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.id = add nuw nsw i32 %i.ic, %spec.store.select.i.i.i.i ; 2 uses
  %i.ie = icmp slt i32 %i.id, 5
  br i1 %i.ie, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.if = sext i32 %i.id to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !111
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ih, ptr %i.ii, align 4, !tbaa !111
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ij = add nsw i32 %i.ic, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.ij, i32 noundef %i.cw, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.ar

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.aq
  %i.ik = add nsw i32 %i.ic, %i.bz
  %i.il = srem i32 %i.ik, 6
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.im
  %i.io = load i64, ptr %i.in, align 8, !tbaa !200
  %i.ip = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.io, 32
  %i.iq = ashr exact i64 %sext.i.i.i.i, 30
  %i.ir = getelementptr inbounds i8, ptr %i.bk, i64 %i.iq
  %i.is = load float, ptr %i.ir, align 4, !tbaa !111
  %i.it = fmul float %i.ip, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.it, ptr %i.iu, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.as:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ap
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ao, !llvm.loop !1910

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.iw = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.at, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.iz = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.iz, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1911

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.z
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.ab
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.ar, %bb.al, %bb.y
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.gb, %bb.y ], [ %i.iv, %bb.ar ], [ %i.hv, %bb.al ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ja = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i29.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i29.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.av, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.db, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.jd = load ptr, ptr %4, align 8, !tbaa !729   ; 3 uses
  %i.je = load ptr, ptr %i.at, align 8, !tbaa !735 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.jd, %i.je
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ax, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.jj, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.jd, %bb.ax ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jh = landingpad { ptr, i32 }
          catch ptr null
  %i.ji = extractvalue { ptr, i32 } %i.jh, 0
  call void @__clang_call_terminate(ptr %i.ji) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ay, %.lr.ph.i.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i28.i.i.i = icmp eq ptr %i.jj, %i.je
  br i1 %.not.i.i.i28.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !56

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !729
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.ax
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.jd, %bb.ax ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !736
  %i.jk = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.jl = ptrtoint ptr %.val.i.i.i.i to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.jm) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.jn = load i32, ptr %i.l, align 4, !tbaa !720
  %i.jo = add nsw i32 %i.jn, %.02153.i.i.i
  %i.jp = srem i32 %i.jo, 6
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jq
  %i.js = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.jq ; 2 uses
  %i.jt = load i32, ptr %i.k, align 8, !tbaa !719
  %i.ju = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jv = add nsw i32 %i.ju, %i.jt
  %i.jw = srem i32 %i.jv, 6                       ; 2 uses
  %i.jx = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jy = sub nsw i32 %i.jx, %i.ju                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1928
  store ptr %3, ptr %i.ax, align 8, !tbaa !420
  %i.jz = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jz, ptr %i.ay, align 8, !tbaa !724
  store i32 %i.jw, ptr %i.ba, align 4, !tbaa !725
  store i32 %i.jy, ptr %i.bb, align 8, !tbaa !726
  %i.ka = icmp sgt i32 %i.jw, 0
  br i1 %i.ka, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.kb = load ptr, ptr %i.js, align 8, !tbaa !115
  invoke void %i.kb(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge66.i.i.i unwind label %bb.bc

._crit_edge66.i.i.i:                              ; preds = %bb.bb
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !726
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bd:                                            ; preds = %._crit_edge66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.kd = phi i32 [ %.pre.i.i.i, %._crit_edge66.i.i.i ], [ %i.jy, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.kd, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bd
  %i.ke = sdiv i32 %i.kd, 6
  %i.kf = call i32 @llvm.umax.i32(i32 %i.ke, i32 1)
  %umax.i.i.i = sext i32 %i.kf to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.be, %bb.bd
end_hunk_10
begin_hunk_11_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fl = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fl, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1947

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !754 ; 7 uses
  %i.fo = load ptr, ptr %i.au, align 8, !tbaa !755
  %.not.i.i.i.i.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fn, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fp, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fq = load ptr, ptr %i.at, align 8, !tbaa !754
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 168
  store ptr %i.fr, ptr %i.at, align 8, !tbaa !754
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !748 ; 6 uses
  %i.fs = ptrtoint ptr %i.fn to i64
  %i.ft = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fw = sdiv exact i64 %i.fu, 168               ; 3 uses
  %i.fx = icmp eq ptr %i.fn, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fx, i64 1, i64 %i.fw
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fw ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fw
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 54901024028897475)
  %i.gb = select i1 %i.fz, i64 54901024028897475, i64 %i.ga ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gc = mul nuw nsw i64 %i.gb, 168              ; 2 uses
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fu ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.ge, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gf, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fx, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gk, %bb.y ], [ %i.gd, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gi = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gh, ptr noundef nonnull align 8 dereferenceable(36) %i.gi, i64 36, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gj, %i.fn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1948

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  %i.gn = call ptr @__cxa_begin_catch(ptr %i.gm) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gd, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gw, %i.fn
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !57

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gx = phi ptr [ %i.gg, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gy = load ptr, ptr %i.au, align 8, !tbaa !755
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ha) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  %i.hd = call ptr @__cxa_begin_catch(ptr %i.hc) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.he = extractvalue { ptr, i32 } %i.go, 0
  %i.hf = call ptr @__cxa_begin_catch(ptr %i.he) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.ge) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gc) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gd, ptr %4, align 8, !tbaa !748
  store ptr %i.gx, ptr %i.at, align 8, !tbaa !754
  %i.hj = getelementptr inbounds nuw [168 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.hj, ptr %i.au, align 8, !tbaa !755
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hk = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hk                 ; 2 uses
  %i.hl = urem i32 %.fr.i.i.i.i, 6
  %i.hm = sub nuw i32 %.fr.i.i.i.i, %i.hl
  %i.hn = add i32 %i.hm, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.ho = add nuw nsw i32 %i.hn, %spec.store.select.i.i.i.i ; 2 uses
  %i.hp = icmp slt i32 %i.ho, 5
  br i1 %i.hp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hq = sext i32 %i.ho to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !111
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.hs, ptr %i.ht, align 4, !tbaa !111
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hu = add nsw i32 %i.hn, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hu, i32 noundef %i.cw, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.hv = add nsw i32 %i.hn, %i.bz
  %i.hw = srem i32 %i.hv, 6
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !200
  %i.ia = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.hz, 32
  %i.ib = ashr exact i64 %sext.i.i.i.i, 30
  %i.ic = getelementptr inbounds i8, ptr %i.bk, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !111
  %i.ie = fmul float %i.ia, %i.id
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ie, ptr %i.if, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1949

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ik = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.ik, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1950

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.t ], [ %i.ig, %bb.am ], [ %i.hg, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.il = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i28.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.db, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.io = load ptr, ptr %4, align 8, !tbaa !748   ; 3 uses
  %i.ip = load ptr, ptr %i.at, align 8, !tbaa !754 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.io, %i.ip
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.iu, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.io, %bb.as ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.iu, %i.ip
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !57

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !748
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.io, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !755
  %i.iv = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.iw = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ix) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iy = load i32, ptr %i.l, align 4, !tbaa !739
  %i.iz = add nsw i32 %i.iy, %.02152.i.i.i
  %i.ja = srem i32 %i.iz, 6
  %i.jb = sext i32 %i.ja to i64                   ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jb
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.jb ; 2 uses
  %i.je = load i32, ptr %i.k, align 8, !tbaa !738
  %i.jf = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jg = add nsw i32 %i.jf, %i.je
  %i.jh = srem i32 %i.jg, 6                       ; 2 uses
  %i.ji = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jj = sub nsw i32 %i.ji, %i.jf                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1967
  store ptr %3, ptr %i.ax, align 8, !tbaa !420
  %i.jk = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jk, ptr %i.ay, align 8, !tbaa !743
  store i32 %i.jh, ptr %i.ba, align 4, !tbaa !744
  store i32 %i.jj, ptr %i.bb, align 8, !tbaa !745
  %i.jl = icmp sgt i32 %i.jh, 0
  br i1 %i.jl, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !115
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !745
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jo = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jj, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jo, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jp = sdiv i32 %i.jo, 6
  %i.jq = call i32 @llvm.umax.i32(i32 %i.jp, i32 1)
  %umax.i.i.i = sext i32 %i.jq to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.az, %bb.ay
end_hunk_11
begin_hunk_12_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fl = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fl, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1986

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !773 ; 7 uses
  %i.fo = load ptr, ptr %i.au, align 8, !tbaa !774
  %.not.i.i.i.i.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fn, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fp, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fq = load ptr, ptr %i.at, align 8, !tbaa !773
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 168
  store ptr %i.fr, ptr %i.at, align 8, !tbaa !773
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !767 ; 6 uses
  %i.fs = ptrtoint ptr %i.fn to i64
  %i.ft = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fw = sdiv exact i64 %i.fu, 168               ; 3 uses
  %i.fx = icmp eq ptr %i.fn, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fx, i64 1, i64 %i.fw
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fw ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fw
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 54901024028897475)
  %i.gb = select i1 %i.fz, i64 54901024028897475, i64 %i.ga ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gc = mul nuw nsw i64 %i.gb, 168              ; 2 uses
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fu ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.ge, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gf, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fx, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gk, %bb.y ], [ %i.gd, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gi = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gh, ptr noundef nonnull align 8 dereferenceable(36) %i.gi, i64 36, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gj, %i.fn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1987

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  %i.gn = call ptr @__cxa_begin_catch(ptr %i.gm) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gd, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gw, %i.fn
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gx = phi ptr [ %i.gg, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gy = load ptr, ptr %i.au, align 8, !tbaa !774
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ha) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  %i.hd = call ptr @__cxa_begin_catch(ptr %i.hc) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.he = extractvalue { ptr, i32 } %i.go, 0
  %i.hf = call ptr @__cxa_begin_catch(ptr %i.he) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.ge) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gc) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gd, ptr %4, align 8, !tbaa !767
  store ptr %i.gx, ptr %i.at, align 8, !tbaa !773
  %i.hj = getelementptr inbounds nuw [168 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.hj, ptr %i.au, align 8, !tbaa !774
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hk = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hk                 ; 2 uses
  %i.hl = urem i32 %.fr.i.i.i.i, 6
  %i.hm = sub nuw i32 %.fr.i.i.i.i, %i.hl
  %i.hn = add i32 %i.hm, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.ho = add nuw nsw i32 %i.hn, %spec.store.select.i.i.i.i ; 2 uses
  %i.hp = icmp slt i32 %i.ho, 5
  br i1 %i.hp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hq = sext i32 %i.ho to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !111
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.hs, ptr %i.ht, align 4, !tbaa !111
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hu = add nsw i32 %i.hn, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hu, i32 noundef %i.cw, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.hv = add nsw i32 %i.hn, %i.bz
  %i.hw = srem i32 %i.hv, 6
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !200
  %i.ia = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.hz, 32
  %i.ib = ashr exact i64 %sext.i.i.i.i, 30
  %i.ic = getelementptr inbounds i8, ptr %i.bk, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !111
  %i.ie = fmul float %i.ia, %i.id
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ie, ptr %i.if, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1988

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ik = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.ik, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1989

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.t ], [ %i.ig, %bb.am ], [ %i.hg, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.il = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i28.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.db, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.io = load ptr, ptr %4, align 8, !tbaa !767   ; 3 uses
  %i.ip = load ptr, ptr %i.at, align 8, !tbaa !773 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.io, %i.ip
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.iu, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.io, %bb.as ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.iu, %i.ip
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !767
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.io, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !774
  %i.iv = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.iw = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ix) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iy = load i32, ptr %i.l, align 4, !tbaa !758
  %i.iz = add nsw i32 %i.iy, %.02152.i.i.i
  %i.ja = srem i32 %i.iz, 6
  %i.jb = sext i32 %i.ja to i64                   ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jb
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.jb ; 2 uses
  %i.je = load i32, ptr %i.k, align 8, !tbaa !757
  %i.jf = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jg = add nsw i32 %i.jf, %i.je
  %i.jh = srem i32 %i.jg, 6                       ; 2 uses
  %i.ji = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jj = sub nsw i32 %i.ji, %i.jf                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !2006
  store ptr %3, ptr %i.ax, align 8, !tbaa !504
  %i.jk = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jk, ptr %i.ay, align 8, !tbaa !762
  store i32 %i.jh, ptr %i.ba, align 4, !tbaa !763
  store i32 %i.jj, ptr %i.bb, align 8, !tbaa !764
  %i.jl = icmp sgt i32 %i.jh, 0
  br i1 %i.jl, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !115
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !764
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jo = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jj, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jo, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jp = sdiv i32 %i.jo, 6
  %i.jq = call i32 @llvm.umax.i32(i32 %i.jp, i32 1)
  %umax.i.i.i = sext i32 %i.jq to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.az, %bb.ay
end_hunk_12
begin_hunk_13_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ga = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ga, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2025

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.gc = load ptr, ptr %i.at, align 8, !tbaa !792 ; 7 uses
  %i.gd = load ptr, ptr %i.au, align 8, !tbaa !793
  %.not.i.i.i.i.i = icmp eq ptr %i.gc, %i.gd
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gc, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.z
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.gf = load ptr, ptr %i.at, align 8, !tbaa !792
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 168
  store ptr %i.gg, ptr %i.at, align 8, !tbaa !792
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !786 ; 6 uses
  %i.gh = ptrtoint ptr %i.gc to i64
  %i.gi = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775800
  br i1 %i.gk, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gl = sdiv exact i64 %i.gj, 168               ; 3 uses
  %i.gm = icmp eq ptr %i.gc, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gm, i64 1, i64 %i.gl
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gl ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gl
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gn, i64 54901024028897475)
  %i.gq = select i1 %i.go, i64 54901024028897475, i64 %i.gp ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gr = mul nuw nsw i64 %i.gq, 168              ; 2 uses
  %i.gs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gj ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gt, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc82.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gu, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.gm, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gz, %bb.ad ], [ %i.gs, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gy, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gx = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gw, ptr noundef nonnull align 8 dereferenceable(36) %i.gx, i64 36, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gy, %i.gc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2026

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gs, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hl, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hl, %i.gc
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hm = phi ptr [ %i.gv, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.hg, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hn = load ptr, ptr %i.au, align 8, !tbaa !793
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %i.ho, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.hp) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  %i.hs = call ptr @__cxa_begin_catch(ptr %i.hr) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.ht = extractvalue { ptr, i32 } %i.hd, 0
  %i.hu = call ptr @__cxa_begin_catch(ptr %i.ht) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gt) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gr) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gs, ptr %4, align 8, !tbaa !786
  store ptr %i.hm, ptr %i.at, align 8, !tbaa !792
  %i.hy = getelementptr inbounds nuw [168 x i8], ptr %i.gs, i64 %i.gq
  store ptr %i.hy, ptr %i.au, align 8, !tbaa !793
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.as ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hz = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hz                 ; 2 uses
  %i.ia = urem i32 %.fr.i.i.i.i, 6
  %i.ib = sub nuw i32 %.fr.i.i.i.i, %i.ia
  %i.ic = add i32 %i.ib, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.id = add nuw nsw i32 %i.ic, %spec.store.select.i.i.i.i ; 2 uses
  %i.ie = icmp slt i32 %i.id, 5
  br i1 %i.ie, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.if = sext i32 %i.id to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !111
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ih, ptr %i.ii, align 4, !tbaa !111
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ij = add nsw i32 %i.ic, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.ij, i32 noundef %i.cw, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.ar

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.aq
  %i.ik = add nsw i32 %i.ic, %i.bz
  %i.il = srem i32 %i.ik, 6
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.im
  %i.io = load i64, ptr %i.in, align 8, !tbaa !200
  %i.ip = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.io, 32
  %i.iq = ashr exact i64 %sext.i.i.i.i, 30
  %i.ir = getelementptr inbounds i8, ptr %i.bk, i64 %i.iq
  %i.is = load float, ptr %i.ir, align 4, !tbaa !111
  %i.it = fmul float %i.ip, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.it, ptr %i.iu, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.as:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ap
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ao, !llvm.loop !2027

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.iw = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.at, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.iz = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.iz, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !2028

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.z
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.ab
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.ar, %bb.al, %bb.y
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.gb, %bb.y ], [ %i.iv, %bb.ar ], [ %i.hv, %bb.al ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ja = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i29.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i29.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.av, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.db, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.jd = load ptr, ptr %4, align 8, !tbaa !786   ; 3 uses
  %i.je = load ptr, ptr %i.at, align 8, !tbaa !792 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.jd, %i.je
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ax, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.jj, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.jd, %bb.ax ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jh = landingpad { ptr, i32 }
          catch ptr null
  %i.ji = extractvalue { ptr, i32 } %i.jh, 0
  call void @__clang_call_terminate(ptr %i.ji) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ay, %.lr.ph.i.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i28.i.i.i = icmp eq ptr %i.jj, %i.je
  br i1 %.not.i.i.i28.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !786
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.ax
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.jd, %bb.ax ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !793
  %i.jk = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.jl = ptrtoint ptr %.val.i.i.i.i to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.jm) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.jn = load i32, ptr %i.l, align 4, !tbaa !777
  %i.jo = add nsw i32 %i.jn, %.02153.i.i.i
  %i.jp = srem i32 %i.jo, 6
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jq
  %i.js = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.jq ; 2 uses
  %i.jt = load i32, ptr %i.k, align 8, !tbaa !776
  %i.ju = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jv = add nsw i32 %i.ju, %i.jt
  %i.jw = srem i32 %i.jv, 6                       ; 2 uses
  %i.jx = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jy = sub nsw i32 %i.jx, %i.ju                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !2045
  store ptr %3, ptr %i.ax, align 8, !tbaa !525
  %i.jz = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jz, ptr %i.ay, align 8, !tbaa !781
  store i32 %i.jw, ptr %i.ba, align 4, !tbaa !782
  store i32 %i.jy, ptr %i.bb, align 8, !tbaa !783
  %i.ka = icmp sgt i32 %i.jw, 0
  br i1 %i.ka, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.kb = load ptr, ptr %i.js, align 8, !tbaa !115
  invoke void %i.kb(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge66.i.i.i unwind label %bb.bc

._crit_edge66.i.i.i:                              ; preds = %bb.bb
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !783
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bd:                                            ; preds = %._crit_edge66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.kd = phi i32 [ %.pre.i.i.i, %._crit_edge66.i.i.i ], [ %i.jy, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.kd, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bd
  %i.ke = sdiv i32 %i.kd, 6
  %i.kf = call i32 @llvm.umax.i32(i32 %i.ke, i32 1)
  %umax.i.i.i = sext i32 %i.kf to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.be, %bb.bd
end_hunk_13
begin_hunk_14_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fl = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fl, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2064

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !811 ; 7 uses
  %i.fo = load ptr, ptr %i.au, align 8, !tbaa !812
  %.not.i.i.i.i.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fn, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fp, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fq = load ptr, ptr %i.at, align 8, !tbaa !811
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 168
  store ptr %i.fr, ptr %i.at, align 8, !tbaa !811
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !805 ; 6 uses
  %i.fs = ptrtoint ptr %i.fn to i64
  %i.ft = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fw = sdiv exact i64 %i.fu, 168               ; 3 uses
  %i.fx = icmp eq ptr %i.fn, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fx, i64 1, i64 %i.fw
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fw ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fw
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 54901024028897475)
  %i.gb = select i1 %i.fz, i64 54901024028897475, i64 %i.ga ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gc = mul nuw nsw i64 %i.gb, 168              ; 2 uses
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fu ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.ge, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gf, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fx, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gk, %bb.y ], [ %i.gd, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gi = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gh, ptr noundef nonnull align 8 dereferenceable(36) %i.gi, i64 36, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gj, %i.fn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2065

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  %i.gn = call ptr @__cxa_begin_catch(ptr %i.gm) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gd, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !413
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gw, %i.fn
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !60

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gx = phi ptr [ %i.gg, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gy = load ptr, ptr %i.au, align 8, !tbaa !812
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ha) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  %i.hd = call ptr @__cxa_begin_catch(ptr %i.hc) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.he = extractvalue { ptr, i32 } %i.go, 0
  %i.hf = call ptr @__cxa_begin_catch(ptr %i.he) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.ge) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gc) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gd, ptr %4, align 8, !tbaa !805
  store ptr %i.gx, ptr %i.at, align 8, !tbaa !811
  %i.hj = getelementptr inbounds nuw [168 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.hj, ptr %i.au, align 8, !tbaa !812
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hk = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hk                 ; 2 uses
  %i.hl = urem i32 %.fr.i.i.i.i, 6
  %i.hm = sub nuw i32 %.fr.i.i.i.i, %i.hl
  %i.hn = add i32 %i.hm, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.ho = add nuw nsw i32 %i.hn, %spec.store.select.i.i.i.i ; 2 uses
  %i.hp = icmp slt i32 %i.ho, 5
  br i1 %i.hp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hq = sext i32 %i.ho to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !111
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.hs, ptr %i.ht, align 4, !tbaa !111
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hu = add nsw i32 %i.hn, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hu, i32 noundef %i.cw, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.hv = add nsw i32 %i.hn, %i.bz
  %i.hw = srem i32 %i.hv, 6
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !200
  %i.ia = load float, ptr %i.a, align 4, !tbaa !111
  %sext.i.i.i.i = shl i64 %i.hz, 32
  %i.ib = ashr exact i64 %sext.i.i.i.i, 30
  %i.ic = getelementptr inbounds i8, ptr %i.bk, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !111
  %i.ie = fmul float %i.ia, %i.id
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv126.i.i.i.i
  store float %i.ie, ptr %i.if, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !2066

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ik = add nuw nsw i32 %.070105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond131.not.i.i.i.i = icmp eq i32 %i.ik, 5
  br i1 %exitcond131.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !2067

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.t ], [ %i.ig, %bb.am ], [ %i.hg, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.il = load ptr, ptr %i.an, align 8, !tbaa !413
  %.not.i.i28.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.db, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.io = load ptr, ptr %4, align 8, !tbaa !805   ; 3 uses
  %i.ip = load ptr, ptr %i.at, align 8, !tbaa !811 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.io, %i.ip
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.iu, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.io, %bb.as ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !413
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.iu, %i.ip
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !60

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !805
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.io, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !812
  %i.iv = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.iw = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ix) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iy = load i32, ptr %i.l, align 4, !tbaa !796
  %i.iz = add nsw i32 %i.iy, %.02152.i.i.i
  %i.ja = srem i32 %i.iz, 6
  %i.jb = sext i32 %i.ja to i64                   ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jb
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.jb ; 2 uses
  %i.je = load i32, ptr %i.k, align 8, !tbaa !795
  %i.jf = load i32, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.jg = add nsw i32 %i.jf, %i.je
  %i.jh = srem i32 %i.jg, 6                       ; 2 uses
  %i.ji = load i32, ptr %i.aw, align 4, !tbaa !404
  %i.jj = sub nsw i32 %i.ji, %i.jf                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !2084
  store ptr %3, ptr %i.ax, align 8, !tbaa !546
  %i.jk = load i32, ptr %i.az, align 8, !tbaa !90
  store i32 %i.jk, ptr %i.ay, align 8, !tbaa !800
  store i32 %i.jh, ptr %i.ba, align 4, !tbaa !801
  store i32 %i.jj, ptr %i.bb, align 8, !tbaa !802
  %i.jl = icmp sgt i32 %i.jh, 0
  br i1 %i.jl, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !115
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !802
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jo = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jj, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jo, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jp = sdiv i32 %i.jo, 6
  %i.jq = call i32 @llvm.umax.i32(i32 %i.jp, i32 1)
  %umax.i.i.i = sext i32 %i.jq to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.az, %bb.ay
end_hunk_14
