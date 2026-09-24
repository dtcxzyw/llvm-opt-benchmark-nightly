Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/json?download=true
inline.NumInlined: 4901
inline.NumDeleted: 1765
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN3fmt2v96detail6bigint6squareEv:bb.a
  call void @__clang_call_terminate(ptr %i.ah) #37
  unreachable

bb.o:                                             ; preds = %.noexc.i, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i
  %i.ai = phi i64 [ %i.o, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre, %.noexc.i ] ; 2 uses
  %i.aj = phi i64 [ %i.j, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre.i.i.i.i, %.noexc.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.b, i64 %i.aj)
  store i64 %..i.i.i.i, ptr %i.ak, align 8, !tbaa !321
  %i.al = zext i32 %i.d to i64                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, %i.al
  br i1 %i.am, label %bb.p, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %0, align 8, !tbaa !69
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %i.al)
          to label %.noexc unwind label %bb.q, !inline_history !969

.noexc:                                           ; preds = %bb.p
  %.pre.i.i45 = load i64, ptr %i.i, align 8, !tbaa !316
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit: ; preds = %bb.o, %.noexc
  %i.ap = phi i64 [ %i.ai, %bb.o ], [ %.pre.i.i45, %.noexc ] ; 3 uses
  %..i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ap) ; 4 uses
  store i64 %..i.i, ptr %i.a, align 8, !tbaa !321
  %i.aq = icmp sgt i32 %i.c, 0
  %.pre96.pre97 = load ptr, ptr %i.g, align 8     ; 2 uses
  br i1 %i.aq, label %.preheader49.lr.ph, label %.preheader

.preheader49.lr.ph:                               ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !315 ; 6 uses
  %wide.trip.count79 = and i64 %i.b, 2147483647
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.lr.ph, %bb.s
  %indvars.iv74 = phi i64 [ 1, %.preheader49.lr.ph ], [ %indvars.iv.next75, %bb.s ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader49.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 5 uses
  %.03753 = phi i128 [ 0, %.preheader49.lr.ph ], [ %i.cf, %bb.s ] ; 2 uses
  %xtraiter = and i64 %indvars.iv74, 1
  %i.as = icmp eq i64 %indvars.iv, 0
  br i1 %i.as, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49
  %unroll_iter = and i64 %indvars.iv74, 9223372036854775806
  br label %bb.r

.preheader.loopexit:                              ; preds = %bb.s
  %.pre96.pre = load ptr, ptr %i.g, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %.pre96 = phi ptr [ %.pre96.pre97, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %.pre96.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %i.cf, %.preheader.loopexit ]
  %i.at = icmp sgt i32 %i.d, %i.c
  br i1 %i.at, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.au = load ptr, ptr %i.e, align 8             ; 6 uses
  %sext = shl i64 %i.b, 32
  %i.av = ashr exact i64 %sext, 32                ; 2 uses
  %i.aw = and i64 %i.b, 4294967295
  %i.ax = add i32 %i.c, -2
  %invariant.op = sub i32 1, %i.c
  %indvars.iv85.prol = add nsw i64 %i.av, -1      ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.prol
  br label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.r:                                             ; preds = %bb.r, %.preheader49.new
  %indvars.iv67 = phi i64 [ 0, %.preheader49.new ], [ %indvars.iv.next68.1, %bb.r ] ; 3 uses
  %indvars.iv65 = phi i64 [ %indvars.iv, %.preheader49.new ], [ %indvars.iv.next66.1, %bb.r ] ; 3 uses
  %.150 = phi i128 [ %.03753, %.preheader49.new ], [ %i.bt, %bb.r ]
  %niter = phi i64 [ 0, %.preheader49.new ], [ %niter.next.1, %bb.r ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !76
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !76
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nuw i64 %i.bf, %i.bc
  %i.bh = zext i64 %i.bg to i128
  %i.bi = add i128 %.150, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !76
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !76
  %i.bq = zext i32 %i.bp to i64
  %i.br = mul nuw i64 %i.bq, %i.bm
  %i.bs = zext i64 %i.br to i128
  %i.bt = add i128 %i.bi, %i.bs                   ; 3 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %indvars.iv.next66.1 = add nsw i64 %indvars.iv65, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.r, !llvm.loop !970

.unr-lcssa:                                       ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader49
  %indvars.iv67.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next68.1, %.unr-lcssa ]
  %indvars.iv65.epil.init = phi i64 [ %indvars.iv, %.preheader49 ], [ %indvars.iv.next66.1, %.unr-lcssa ]
  %.150.epil.init = phi i128 [ %.03753, %.preheader49 ], [ %i.bt, %.unr-lcssa ]
  %lcmp.mod153 = trunc i64 %indvars.iv74 to i1
  call void @llvm.assume(i1 %lcmp.mod153)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67.epil.init
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !76
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65.epil.init
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !76
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bz, %i.bw
  %i.cb = zext i64 %i.ca to i128
  %i.cc = add i128 %.150.epil.init, %i.cb
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa150 = phi i128 [ %i.bt, %.unr-lcssa ], [ %i.cc, %.epil.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.pre96.pre97, i64 %indvars.iv
  %i.ce = trunc i128 %.lcssa150 to i32
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !76
  %i.cf = lshr i128 %.lcssa150, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next, %wide.trip.count79
  br i1 %exitcond80.not, label %.preheader.loopexit, label %.preheader49, !llvm.loop !971

._crit_edge62.loopexit:                           ; preds = %._crit_edge
  %.pre95 = load ptr, ptr %i.g, align 8
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge62.loopexit, %.preheader
  %i.cg = phi ptr [ %.pre95, %._crit_edge62.loopexit ], [ %.pre96, %.preheader ]
  %i.ch = trunc nuw i64 %..i.i to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.ch, i32 1) ; 2 uses
  %i.ci = trunc nuw i64 %..i.i to i32             ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %.lr.ph145, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph145
  %i.ck = trunc nuw i64 %i.cn to i32              ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph145, label %.critedge.i, !llvm.loop !18

.lr.ph145:                                        ; preds = %._crit_edge62, %bb.t
  %i.cm = phi i32 [ %i.ck, %bb.t ], [ %i.ci, %._crit_edge62 ]
  %indvars.iv.i144 = phi i64 [ %i.cn, %bb.t ], [ %..i.i, %._crit_edge62 ]
  %i.cn = add nsw i64 %indvars.iv.i144, -1        ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !76
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %..critedge.i_crit_edge, !llvm.loop !18

..critedge.i_crit_edge:                           ; preds = %.lr.ph145
  br label %.critedge.i, !llvm.loop !18

.critedge.i:                                      ; preds = %bb.t, %..critedge.i_crit_edge, %._crit_edge62
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge62 ], [ %i.cm, %..critedge.i_crit_edge ], [ %smin.i, %bb.t ]
  %i.cr = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cs = icmp ult i64 %i.ap, %i.cr
  br i1 %i.cs, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.critedge.i
  %i.ct = load ptr, ptr %0, align 8, !tbaa !69
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cr)
          to label %.noexc46 unwind label %bb.y, !inline_history !972

.noexc46:                                         ; preds = %bb.u
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !316
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph61, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph61 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.aw, %.lr.ph61 ], [ %indvars.iv.next92, %._crit_edge ] ; 3 uses
  %indvars.iv81 = phi i32 [ 1, %.lr.ph61 ], [ %indvars.iv.next82, %._crit_edge ] ; 3 uses
  %.259 = phi i128 [ %.037.lcssa, %.lr.ph61 ], [ %i.ef, %._crit_edge ] ; 3 uses
  %i.cv = trunc nuw i64 %indvars.iv91 to i32
  %.reass.reass = add i32 %i.cv, %invariant.op
  %i.cw = icmp slt i32 %.reass.reass, %i.c
  br i1 %i.cw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.cx = sext i32 %indvars.iv81 to i64           ; 3 uses
  %i.cy = sub i32 %indvar, %i.c
  %i.cz = and i32 %i.cy, 1
  %lcmp.mod155.not.not = icmp eq i32 %i.cz, 0
  br i1 %lcmp.mod155.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next84.prol = add nuw nsw i64 %i.cx, 1
  %i.da = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cx
  %i.db = load i32, ptr %i.da, align 4, !tbaa !76
  %i.dc = zext i32 %i.db to i64
  %i.dd = load i32, ptr %i.ay, align 4, !tbaa !76
  %i.de = zext i32 %i.dd to i64
  %i.df = mul nuw i64 %i.de, %i.dc
  %i.dg = zext i64 %i.df to i128
  %i.dh = add nsw i128 %.259, %i.dg               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa149.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.dh, %.lr.ph.prol ]
  %indvars.iv85.in.unr = phi i64 [ %i.av, %.lr.ph.preheader ], [ %indvars.iv85.prol, %.lr.ph.prol ]
  %indvars.iv83.unr = phi i64 [ %i.cx, %.lr.ph.preheader ], [ %indvars.iv.next84.prol, %.lr.ph.prol ]
  %.355.unr = phi i128 [ %.259, %.lr.ph.preheader ], [ %i.dh, %.lr.ph.prol ]
  %i.di = icmp eq i32 %i.ax, %indvar
  br i1 %i.di, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv85.in = phi i64 [ %indvars.iv85.1, %.lr.ph ], [ %indvars.iv85.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.1, %.lr.ph ], [ %indvars.iv83.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.355 = phi i128 [ %i.ec, %.lr.ph ], [ %.355.unr, %.lr.ph.prol.loopexit ]
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv83
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv85.in
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !76
  %i.dp = zext i32 %i.do to i64
  %i.dq = mul nuw i64 %i.dp, %i.dl
  %i.dr = zext i64 %i.dq to i128
  %i.ds = add i128 %.355, %i.dr
  %indvars.iv85.1 = add nsw i64 %indvars.iv85.in, -2 ; 2 uses
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv83
  %i.du = getelementptr i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !76
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.1
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !76
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul nuw i64 %i.dz, %i.dw
  %i.eb = zext i64 %i.ea to i128
  %i.ec = add i128 %i.ds, %i.eb                   ; 2 uses
  %lftr.wideiv121.1 = trunc i64 %indvars.iv.next84.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv121.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !973

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.v
  %.3.lcssa = phi i128 [ %.259, %bb.v ], [ %.lcssa149.unr, %.lr.ph.prol.loopexit ], [ %i.ec, %.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.pre96, i64 %indvars.iv91
  %i.ee = trunc i128 %.3.lcssa to i32
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !76
  %i.ef = lshr i128 %.3.lcssa, 32
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %indvars.iv.next82 = add i32 %indvars.iv81, 1
  %exitcond94.not = icmp eq i32 %indvars.iv81, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond94.not, label %._crit_edge62.loopexit, label %bb.v, !llvm.loop !974

bb.w:                                             ; preds = %.noexc46, %.critedge.i
  %i.eg = phi i64 [ %i.ap, %.critedge.i ], [ %.pre.i.i.i, %.noexc46 ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.eg)
  store i64 %..i.i.i, ptr %i.a, align 8, !tbaa !321
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !320
  %i.ej = shl nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !320
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !315 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ek, %i.el
  br i1 %.not.i.i, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = load i64, ptr %i.f, align 8, !tbaa !316
  %i.en = shl i64 %i.em, 2
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.y:                                             ; preds = %bb.u
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.eo, %bb.y ]
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !315 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i47 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i47, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = load i64, ptr %i.f, align 8, !tbaa !316
  %i.es = shl i64 %i.er, 2
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v9::detail::float_specs", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 8 uses
  %6 = alloca %class.anon.100, align 8            ; 10 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %8 = alloca %class.anon.102, align 8            ; 12 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %10 = alloca %class.anon.103, align 8           ; 11 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %11 = alloca %class.anon.104, align 8           ; 9 uses
  %.fr134 = freeze i64 %3                         ; 4 uses
  store i64 %.fr134, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.j = load ptr, ptr %1, align 8, !tbaa !310    ; 5 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !311  ; 10 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.m = lshr i64 %.fr134, 32                     ; 2 uses
  %i.n = trunc nuw i64 %i.m to i32                ; 7 uses
  %i.o = lshr i64 %.fr134, 40                     ; 2 uses
  %i.p = trunc i64 %i.o to i8                     ; 4 uses
  store i8 %i.p, ptr %i.c, align 1, !tbaa !156
  %.not = icmp ne i8 %i.p, 0
  %i.q = zext i1 %.not to i32
  %i.r = add i32 %i.l, %i.q
  %i.s = zext i32 %i.r to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.t = and i32 %i.n, 131072                     ; 3 uses
  %.not63 = icmp eq i32 %i.t, 0
  %i.u = trunc i64 %.fr134 to i32                 ; 7 uses
  br i1 %.not63, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = tail call noundef signext i8 @_ZN3fmt2v96detail18decimal_point_implIcEET_NS1_10locale_refE(ptr %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.w = phi i8 [ %i.v, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  store i8 %i.w, ptr %i.d, align 1, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !312  ; 3 uses
  %i.z = add nsw i32 %i.l, %i.y                   ; 10 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = trunc i64 %i.m to i8
  switch i8 %i.ab, label %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread103 [
    i8 1, label %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
    i8 0, label %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit
  ]

_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit: ; preds = %bb.c
  %i.ac = icmp slt i32 %i.z, -3
  %i.ad = icmp sgt i32 %i.u, 0
  %spec.select.i = select i1 %i.ad, i32 %i.u, i32 16
  %i.ae = icmp sgt i32 %i.z, %spec.select.i
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread103

_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread: ; preds = %bb.c, %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit
  %i.ag = and i32 %i.n, 524288
  %.not71 = icmp eq i32 %i.ag, 0
  br i1 %.not71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ah = sub nsw i32 %i.u, %i.l
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 0) ; 2 uses
  %i.ai = zext nneg i32 %spec.store.select to i64
  %i.aj = add nuw nsw i64 %i.ai, %i.s
  br label %bb.g

bb.e:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ak = icmp eq i32 %i.l, 1
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.d, align 1, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.al = phi i8 [ %i.w, %bb.d ], [ 0, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.am = phi i32 [ %spec.store.select, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.0 = phi i64 [ %i.aj, %bb.d ], [ %i.s, %bb.f ], [ %i.s, %bb.e ]
  %i.an = sub nsw i32 1, %i.z
  %i.ao = icmp slt i32 %i.z, 1
  %i.ap = select i1 %i.ao, i32 %i.an, i32 %i.aa   ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 99
  %i.ar = icmp sgt i32 %i.ap, 999
  %i.as = select i1 %i.ar, i64 4, i64 3
  %.058 = select i1 %i.aq, i64 %i.as, i64 2
  %.not72.not = icmp eq i8 %i.al, 0               ; 2 uses
  %i.at = select i1 %.not72.not, i64 2, i64 3
  %i.au = add nuw nsw i64 %.0, %.058
  %i.av = add nuw nsw i64 %i.au, %i.at            ; 6 uses
  %i.aw = and i32 %i.n, 65536
  %.not73 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not73, i8 101, i8 69        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 %i.p, ptr %6, align 8, !tbaa !379
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ay, align 8, !tbaa !380
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.l, ptr %i.az, align 8, !tbaa !381
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 %i.al, ptr %i.ba, align 4, !tbaa !382
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.am, ptr %i.bb, align 8, !tbaa !383
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 %i.ax, ptr %i.bc, align 4, !tbaa !384
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i32 %i.aa, ptr %i.bd, align 8, !tbaa !385
  %i.be = load i32, ptr %2, align 4, !tbaa !151
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = call ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SH_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE_EESI_SI_SP_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.av, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(36) %6)
  br label %bb.w
end_hunk_0
