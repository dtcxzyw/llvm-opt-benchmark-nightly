Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_anaeig?download=true
inline.NumInlined: 415
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z10gmx_anaeigiPPc:bb.a
.loopexit611:                                     ; preds = %.loopexit611.loopexit.unr-lcssa, %bb.dv, %.preheader610, %._crit_edge668, %bb.cw
  %.0546 = phi ptr [ %i.op, %._crit_edge668 ], [ null, %bb.cw ], [ %i.op, %.preheader610 ], [ %i.op, %bb.dv ], [ %i.op, %.loopexit611.loopexit.unr-lcssa ]
  %.0 = phi ptr [ %i.qj, %._crit_edge668 ], [ null, %bb.cw ], [ %i.qj, %.preheader610 ], [ %i.qj, %bb.dv ], [ %i.qj, %.loopexit611.loopexit.unr-lcssa ]
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %i.od)
          to label %bb.dw unwind label %.loopexit.split-lp614.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %bb.cp, %.loopexit611
  %.1547 = phi ptr [ %.0546, %.loopexit611 ], [ null, %bb.cp ] ; 2 uses
  %.1 = phi ptr [ %.0, %.loopexit611 ], [ null, %bb.cp ]
  %.0243 = phi ptr [ %i.nz, %.loopexit611 ], [ null, %bb.cp ] ; 9 uses
  %.0227 = phi i1 [ %i.nr, %.loopexit611 ], [ false, %bb.cp ] ; 3 uses
  %.pre851 = load i32, ptr %i.an, align 4, !tbaa !9 ; 2 uses
  br i1 %i.fh, label %bb.dx, label %bb.eg

bb.dx:                                            ; preds = %bb.dw
  %i.wb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.128, i32 noundef %.pre851) ; 0 uses
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef %.0243, ptr noundef %i.ed, i32 noundef 1, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ao)
          to label %bb.dy unwind label %.loopexit.split-lp614.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dy:                                            ; preds = %bb.dx
  %i.wc = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.wd = load i32, ptr %i.an, align 4, !tbaa !9
  %.not287 = icmp eq i32 %i.wc, %i.wd
  br i1 %.not287, label %bb.ef, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %bb.ea unwind label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.we = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.wf = load i32, ptr %i.an, align 4, !tbaa !9
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 1428, ptr noundef nonnull @.str.129, i32 noundef %i.we, i32 noundef %i.wf) #26
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  unreachable

bb.ec:                                            ; preds = %bb.dz
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %38) #23
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pn302 = phi { ptr, i32 } [ %i.wh, %bb.ed ], [ %i.wg, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

bb.ef:                                            ; preds = %bb.dy
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %.pre850 = load i32, ptr %i.an, align 4, !tbaa !9
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.dw
  %i.wi = phi i32 [ %.pre850, %bb.ef ], [ %.pre851, %bb.dw ]
  %i.wj = sext i32 %i.wi to i64
  %i.wk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 1433, i64 noundef range(i64 -2147483648, 2147483648) %i.wj, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit346 unwind label %.loopexit.split-lp614.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 19 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit346:       ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.wl = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  store ptr %i.wl, ptr %39, align 8, !tbaa !33
  %i.wm = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 0, ptr %i.wm, align 8, !tbaa !34
  store i8 0, ptr %i.wl, align 8, !tbaa !26
  %i.wn = load i8, ptr %i.ab, align 1, !range !155
  %i.wo = trunc nuw i8 %i.wn to i1
  %or.cond41 = select i1 %spec.select320, i1 %i.wo, i1 false
  br i1 %or.cond41, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit346
  %i.wp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.132, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader: ; preds = %bb.eh
  %i.wq = load i32, ptr %i.an, align 4, !tbaa !9  ; 6 uses
  store i32 0, ptr %i.ap, align 4, !tbaa !9
  %i.wr = icmp sgt i32 %i.wq, 0
  br i1 %i.wr, label %.lr.ph674, label %.loopexit607

.lr.ph674:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader
  %i.ws = getelementptr inbounds nuw i8, ptr %.0243, i64 8
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !169 ; 5 uses
  %i.wu = load ptr, ptr %i.ar, align 8, !tbaa !136 ; 5 uses
  %wide.trip.count821 = zext nneg i32 %i.wq to i64 ; 2 uses
  %xtraiter1439 = and i64 %wide.trip.count821, 3  ; 3 uses
  %i.wv = icmp ult i32 %i.wq, 4
  br i1 %i.wv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader, label %.lr.ph674.new

.lr.ph674.new:                                    ; preds = %.lr.ph674
  %unroll_iter1443 = and i64 %wide.trip.count821, 2147483644
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %.lr.ph674.new
  %indvars.iv818 = phi i64 [ 0, %.lr.ph674.new ], [ %indvars.iv.next819.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 6 uses
  %niter1444 = phi i64 [ 0, %.lr.ph674.new ], [ %niter1444.next.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv818
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !9
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [36 x i8], ptr %i.wt, i64 %i.wy
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !168
  %i.xb = call noundef float @sqrtf(float noundef %i.xa) #23
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv818
  store float %i.xb, ptr %i.xc, align 4, !tbaa !28
  %indvars.iv.next819 = or disjoint i64 %indvars.iv818, 1 ; 3 uses
  %i.xd = trunc nuw nsw i64 %indvars.iv.next819 to i32
  store i32 %i.xd, ptr %i.ap, align 4, !tbaa !9
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.next819
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !9
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [36 x i8], ptr %i.wt, i64 %i.xg
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !168
  %i.xj = call noundef float @sqrtf(float noundef %i.xi) #23
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv.next819
  store float %i.xj, ptr %i.xk, align 4, !tbaa !28
  %indvars.iv.next819.1 = or disjoint i64 %indvars.iv818, 2 ; 3 uses
  %i.xl = trunc nuw nsw i64 %indvars.iv.next819.1 to i32
  store i32 %i.xl, ptr %i.ap, align 4, !tbaa !9
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.next819.1
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !9
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds [36 x i8], ptr %i.wt, i64 %i.xo
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !168
  %i.xr = call noundef float @sqrtf(float noundef %i.xq) #23
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv.next819.1
  store float %i.xr, ptr %i.xs, align 4, !tbaa !28
  %indvars.iv.next819.2 = or disjoint i64 %indvars.iv818, 3 ; 3 uses
  %i.xt = trunc nuw nsw i64 %indvars.iv.next819.2 to i32
  store i32 %i.xt, ptr %i.ap, align 4, !tbaa !9
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.next819.2
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !9
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds [36 x i8], ptr %i.wt, i64 %i.xw
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !168
  %i.xz = call noundef float @sqrtf(float noundef %i.xy) #23
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv.next819.2
  store float %i.xz, ptr %i.ya, align 4, !tbaa !28
  %indvars.iv.next819.3 = add nuw nsw i64 %indvars.iv818, 4 ; 3 uses
  %i.yb = trunc nuw nsw i64 %indvars.iv.next819.3 to i32
  store i32 %i.yb, ptr %i.ap, align 4, !tbaa !9
  %niter1444.next.3 = add i64 %niter1444, 4       ; 2 uses
  %niter1444.ncmp.3 = icmp eq i64 %niter1444.next.3, %unroll_iter1443
  br i1 %niter1444.ncmp.3, label %.loopexit607.loopexit.unr-lcssa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, !llvm.loop !53

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fp, %.noexc368, %.lr.ph77.us.i, %.noexc365, %.lr.ph580.i, %bb.hq, %.lr.ph185.split.split.us.i, %.lr.ph185.split.us.i, %.lr.ph185.split.split.i, %bb.iq, %bb.gp, %bb.gn, %bb.gq, %.noexc395, %._crit_edge577.i, %bb.gu, %bb.eu, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i, %._crit_edge.i431, %.noexc449, %.loopexit155.i, %bb.kj, %.loopexit540.i, %.loopexit540.thread.i, %.noexc424, %bb.iz, %.noexc421, %bb.it, %._crit_edge593.i, %bb.ih, %.noexc416, %.noexc415, %.noexc414, %.noexc413, %bb.ic, %bb.hz, %bb.hw, %._crit_edge584.i, %bb.hf, %._crit_edge581.i, %bb.ha, %bb.gy, %bb.gx, %bb.gw, %.noexc399, %bb.gv, %bb.gk, %bb.gj, %bb.gf, %bb.gc, %._crit_edge.i372, %bb.fx, %bb.fw, %.split.us.i, %.noexc363, %.noexc362, %._crit_edge.i, %.loopexit602, %bb.es, %bb.ep, %bb.en, %bb.ei, %bb.eh, %bb.lh, %bb.kh, %bb.fv, %bb.fi
  %lpad.loopexit.split-lp1408 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ei:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit346
  %i.yc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.133, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader: ; preds = %bb.ei
  %i.yd = load i32, ptr %i.an, align 4, !tbaa !9  ; 8 uses
  %i.ye = icmp sgt i32 %i.yd, 0
  br i1 %i.ye, label %iter.check1162, label %.loopexit608

iter.check1162:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader
  %wide.trip.count816 = zext nneg i32 %i.yd to i64 ; 6 uses
  %min.iters.check1152 = icmp ult i32 %i.yd, 4
  br i1 %min.iters.check1152, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1416, label %vector.main.loop.iter.check1153

vector.main.loop.iter.check1153:                  ; preds = %iter.check1162
  %min.iters.check1154 = icmp ult i32 %i.yd, 32
  br i1 %min.iters.check1154, label %vec.epilog.ph1166, label %vector.ph1155

vector.ph1155:                                    ; preds = %vector.main.loop.iter.check1153
  %i.yf = and i64 %wide.trip.count816, 28
  %n.vec1156 = and i64 %wide.trip.count816, 2147483616 ; 4 uses
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.ph1155, %vector.body1157
  %index1158 = phi i64 [ 0, %vector.ph1155 ], [ %index.next1159, %vector.body1157 ] ; 2 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %index1158 ; 4 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 32
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 64
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.yg, align 4, !tbaa !28
  store <8 x float> splat (float 1.000000e+00), ptr %i.yh, align 4, !tbaa !28
  store <8 x float> splat (float 1.000000e+00), ptr %i.yi, align 4, !tbaa !28
  store <8 x float> splat (float 1.000000e+00), ptr %i.yj, align 4, !tbaa !28
  %index.next1159 = add nuw i64 %index1158, 32    ; 2 uses
  %i.yk = icmp eq i64 %index.next1159, %n.vec1156
  br i1 %i.yk, label %middle.block1160, label %vector.body1157, !llvm.loop !54

middle.block1160:                                 ; preds = %vector.body1157
  %cmp.n1161 = icmp eq i64 %n.vec1156, %wide.trip.count816
  br i1 %cmp.n1161, label %.loopexit608, label %vec.epilog.iter.check1163

vec.epilog.iter.check1163:                        ; preds = %middle.block1160
  %min.epilog.iters.check1165 = icmp eq i64 %i.yf, 0
  br i1 %min.epilog.iters.check1165, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1416, label %vec.epilog.ph1166, !prof !170

vec.epilog.ph1166:                                ; preds = %vector.main.loop.iter.check1153, %vec.epilog.iter.check1163
  %vec.epilog.resume.val1167 = phi i64 [ %n.vec1156, %vec.epilog.iter.check1163 ], [ 0, %vector.main.loop.iter.check1153 ]
  %n.vec1168 = and i64 %wide.trip.count816, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1169

vec.epilog.vector.body1169:                       ; preds = %vec.epilog.vector.body1169, %vec.epilog.ph1166
  %index1170 = phi i64 [ %vec.epilog.resume.val1167, %vec.epilog.ph1166 ], [ %index.next1171, %vec.epilog.vector.body1169 ] ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %index1170
  store <4 x float> splat (float 1.000000e+00), ptr %i.yl, align 4, !tbaa !28
  %index.next1171 = add nuw i64 %index1170, 4     ; 2 uses
  %i.ym = icmp eq i64 %index.next1171, %n.vec1168
  br i1 %i.ym, label %vec.epilog.middle.block1172, label %vec.epilog.vector.body1169, !llvm.loop !55

vec.epilog.middle.block1172:                      ; preds = %vec.epilog.vector.body1169
  %cmp.n1173 = icmp eq i64 %n.vec1168, %wide.trip.count816
  br i1 %cmp.n1173, label %.loopexit608, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1416: ; preds = %iter.check1162, %vec.epilog.iter.check1163, %vec.epilog.middle.block1172
  %indvars.iv813.ph = phi i64 [ 0, %iter.check1162 ], [ %n.vec1156, %vec.epilog.iter.check1163 ], [ %n.vec1168, %vec.epilog.middle.block1172 ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1416, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349 ], [ %indvars.iv813.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1416 ] ; 2 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv813
  store float 1.000000e+00, ptr %i.yn, align 4, !tbaa !28
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 1 ; 2 uses
  %exitcond817.not = icmp eq i64 %indvars.iv.next814, %wide.trip.count816
  br i1 %exitcond817.not, label %.loopexit608, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349, !llvm.loop !56

.loopexit608:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349, %middle.block1160, %vec.epilog.middle.block1172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader
  %storemerge288.lcssa = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader ], [ %i.yd, %middle.block1160 ], [ %i.yd, %vec.epilog.middle.block1172 ], [ %i.yd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349 ]
  store i32 %storemerge288.lcssa, ptr %i.ap, align 4, !tbaa !9
  br label %.loopexit607

.loopexit607.loopexit.unr-lcssa:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %lcmp.mod1441.not = icmp eq i64 %xtraiter1439, 0
  br i1 %lcmp.mod1441.not, label %.loopexit607, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader: ; preds = %.loopexit607.loopexit.unr-lcssa, %.lr.ph674
  %indvars.iv818.epil.init = phi i64 [ 0, %.lr.ph674 ], [ %indvars.iv.next819.3, %.loopexit607.loopexit.unr-lcssa ]
  %lcmp.mod1442 = icmp ne i64 %xtraiter1439, 0
  call void @llvm.assume(i1 %lcmp.mod1442)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader
  %indvars.iv818.epil = phi i64 [ %indvars.iv818.epil.init, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader ], [ %indvars.iv.next819.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil ] ; 3 uses
  %epil.iter1440 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader ], [ %epil.iter1440.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil ]
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv818.epil
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !9
  %i.yq = sext i32 %i.yp to i64
  %i.yr = getelementptr inbounds [36 x i8], ptr %i.wt, i64 %i.yq
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !168
  %i.yt = call noundef float @sqrtf(float noundef %i.ys) #23
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv818.epil
  store float %i.yt, ptr %i.yu, align 4, !tbaa !28
  %indvars.iv.next819.epil = add nuw nsw i64 %indvars.iv818.epil, 1 ; 2 uses
  %i.yv = trunc nuw nsw i64 %indvars.iv.next819.epil to i32
  store i32 %i.yv, ptr %i.ap, align 4, !tbaa !9
  %epil.iter1440.next = add i64 %epil.iter1440, 1 ; 2 uses
  %epil.iter1440.cmp.not = icmp eq i64 %epil.iter1440.next, %xtraiter1439
  br i1 %epil.iter1440.cmp.not, label %.loopexit607, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil, !llvm.loop !57

.loopexit607:                                     ; preds = %.loopexit607.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader, %.loopexit608
  %i.yw = phi i32 [ %i.yd, %.loopexit608 ], [ %i.wq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader ], [ %i.wq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil ], [ %i.wq, %.loopexit607.loopexit.unr-lcssa ] ; 5 uses
  br i1 %spec.select318, label %.preheader606, label %bb.ej

.preheader606:                                    ; preds = %.loopexit607
  %i.yx = icmp sgt i32 %i.yw, 0
  br i1 %i.yx, label %.preheader605.lr.ph, label %._crit_edge681

.preheader605.lr.ph:                              ; preds = %.preheader606
  %i.yy = load ptr, ptr %i.ai, align 8, !tbaa !15 ; 3 uses
  %i.yz = load ptr, ptr %i.aj, align 8, !tbaa !15 ; 3 uses
  %wide.trip.count830 = zext nneg i32 %i.yw to i64 ; 2 uses
  %xtraiter1445 = and i64 %wide.trip.count830, 1
  %i.za = icmp eq i32 %i.yw, 1
  br i1 %i.za, label %.preheader605.epil.preheader, label %.preheader605.lr.ph.new

.preheader605.lr.ph.new:                          ; preds = %.preheader605.lr.ph
  %unroll_iter1451 = and i64 %wide.trip.count830, 2147483646
  br label %.preheader605

.preheader605:                                    ; preds = %.preheader605, %.preheader605.lr.ph.new
  %indvars.iv827 = phi i64 [ 0, %.preheader605.lr.ph.new ], [ %indvars.iv.next828.1, %.preheader605 ] ; 5 uses
  %.0239680 = phi float [ 0.000000e+00, %.preheader605.lr.ph.new ], [ %i.abb, %.preheader605 ]
  %.0241679 = phi float [ 0.000000e+00, %.preheader605.lr.ph.new ], [ %i.abc, %.preheader605 ]
  %niter1452 = phi i64 [ 0, %.preheader605.lr.ph.new ], [ %niter1452.next.1, %.preheader605 ]
  %i.zb = getelementptr inbounds nuw [12 x i8], ptr %i.yy, i64 %indvars.iv827 ; 2 uses
  %i.zc = getelementptr inbounds nuw [12 x i8], ptr %i.yz, i64 %indvars.iv827 ; 2 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv827
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !28 ; 4 uses
  %i.zf = fmul float %i.ze, %i.ze                 ; 3 uses
  %i.zg = fadd float %.0241679, %i.zf
  %i.zh = load <2 x float>, ptr %i.zb, align 4, !tbaa !28
  %i.zi = load <2 x float>, ptr %i.zc, align 4, !tbaa !28
  %i.zj = fsub <2 x float> %i.zh, %i.zi
  %i.zk = insertelement <2 x float> poison, float %i.ze, i64 0
  %i.zl = shufflevector <2 x float> %i.zk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zm = fmul <2 x float> %i.zj, %i.zl           ; 2 uses
  %i.zn = fmul <2 x float> %i.zm, %i.zm           ; 2 uses
  %i.zo = extractelement <2 x float> %i.zn, i64 0
  %i.zp = fadd float %.0239680, %i.zo
  %i.zq = extractelement <2 x float> %i.zn, i64 1
  %i.zr = fadd float %i.zp, %i.zq
  %i.zs = fadd float %i.zg, %i.zf
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !28
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !28
  %i.zx = fsub float %i.zu, %i.zw
  %i.zy = fmul float %i.zx, %i.ze                 ; 2 uses
  %i.zz = fmul float %i.zy, %i.zy
  %i.aaa = fadd float %i.zr, %i.zz
  %i.aab = fadd float %i.zs, %i.zf
  %indvars.iv.next828 = or disjoint i64 %indvars.iv827, 1 ; 3 uses
  %i.aac = getelementptr inbounds nuw [12 x i8], ptr %i.yy, i64 %indvars.iv.next828 ; 2 uses
  %i.aad = getelementptr inbounds nuw [12 x i8], ptr %i.yz, i64 %indvars.iv.next828 ; 2 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv.next828
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !28 ; 4 uses
  %i.aag = fmul float %i.aaf, %i.aaf              ; 3 uses
  %i.aah = fadd float %i.aab, %i.aag
  %i.aai = load <2 x float>, ptr %i.aac, align 4, !tbaa !28
  %i.aaj = load <2 x float>, ptr %i.aad, align 4, !tbaa !28
  %i.aak = fsub <2 x float> %i.aai, %i.aaj
  %i.aal = insertelement <2 x float> poison, float %i.aaf, i64 0
  %i.aam = shufflevector <2 x float> %i.aal, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aan = fmul <2 x float> %i.aak, %i.aam        ; 2 uses
  %i.aao = fmul <2 x float> %i.aan, %i.aan        ; 2 uses
  %i.aap = extractelement <2 x float> %i.aao, i64 0
  %i.aaq = fadd float %i.aaa, %i.aap
  %i.aar = extractelement <2 x float> %i.aao, i64 1
  %i.aas = fadd float %i.aaq, %i.aar
  %i.aat = fadd float %i.aah, %i.aag
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !28
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !28
  %i.aay = fsub float %i.aav, %i.aax
  %i.aaz = fmul float %i.aay, %i.aaf              ; 2 uses
  %i.aba = fmul float %i.aaz, %i.aaz
  %i.abb = fadd float %i.aas, %i.aba              ; 3 uses
  %i.abc = fadd float %i.aat, %i.aag              ; 3 uses
  %indvars.iv.next828.1 = add nuw nsw i64 %indvars.iv827, 2 ; 2 uses
  %niter1452.next.1 = add i64 %niter1452, 2       ; 2 uses
  %niter1452.ncmp.1 = icmp eq i64 %niter1452.next.1, %unroll_iter1451
  br i1 %niter1452.ncmp.1, label %._crit_edge681.loopexit.unr-lcssa, label %.preheader605, !llvm.loop !58

._crit_edge681.loopexit.unr-lcssa:                ; preds = %.preheader605
  %lcmp.mod1447.not = icmp eq i64 %xtraiter1445, 0
  br i1 %lcmp.mod1447.not, label %._crit_edge681.loopexit, label %.preheader605.epil.preheader

.preheader605.epil.preheader:                     ; preds = %._crit_edge681.loopexit.unr-lcssa, %.preheader605.lr.ph
  %indvars.iv827.epil.init = phi i64 [ 0, %.preheader605.lr.ph ], [ %indvars.iv.next828.1, %._crit_edge681.loopexit.unr-lcssa ] ; 3 uses
  %.0239680.epil.init = phi float [ 0.000000e+00, %.preheader605.lr.ph ], [ %i.abb, %._crit_edge681.loopexit.unr-lcssa ]
  %.0241679.epil.init = phi float [ 0.000000e+00, %.preheader605.lr.ph ], [ %i.abc, %._crit_edge681.loopexit.unr-lcssa ]
  %lcmp.mod1450 = trunc i32 %i.yw to i1
  call void @llvm.assume(i1 %lcmp.mod1450)
  %i.abd = getelementptr inbounds nuw [12 x i8], ptr %i.yy, i64 %indvars.iv827.epil.init ; 2 uses
  %i.abe = getelementptr inbounds nuw [12 x i8], ptr %i.yz, i64 %indvars.iv827.epil.init ; 2 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv827.epil.init
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !28 ; 4 uses
  %i.abh = fmul float %i.abg, %i.abg              ; 3 uses
  %i.abi = fadd float %.0241679.epil.init, %i.abh
  %i.abj = load <2 x float>, ptr %i.abd, align 4, !tbaa !28
  %i.abk = load <2 x float>, ptr %i.abe, align 4, !tbaa !28
  %i.abl = fsub <2 x float> %i.abj, %i.abk
  %i.abm = insertelement <2 x float> poison, float %i.abg, i64 0
  %i.abn = shufflevector <2 x float> %i.abm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abo = fmul <2 x float> %i.abl, %i.abn        ; 2 uses
  %i.abp = fmul <2 x float> %i.abo, %i.abo        ; 2 uses
  %i.abq = extractelement <2 x float> %i.abp, i64 0
  %i.abr = fadd float %.0239680.epil.init, %i.abq
  %i.abs = extractelement <2 x float> %i.abp, i64 1
  %i.abt = fadd float %i.abr, %i.abs
  %i.abu = fadd float %i.abi, %i.abh
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !28
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !28
  %i.abz = fsub float %i.abw, %i.aby
  %i.aca = fmul float %i.abz, %i.abg              ; 2 uses
  %i.acb = fmul float %i.aca, %i.aca
  %i.acc = fadd float %i.abt, %i.acb
  %i.acd = fadd float %i.abu, %i.abh
  br label %._crit_edge681.loopexit

._crit_edge681.loopexit:                          ; preds = %._crit_edge681.loopexit.unr-lcssa, %.preheader605.epil.preheader
  %.lcssa1415 = phi float [ %i.abb, %._crit_edge681.loopexit.unr-lcssa ], [ %i.acc, %.preheader605.epil.preheader ]
  %.lcssa1414 = phi float [ %i.abc, %._crit_edge681.loopexit.unr-lcssa ], [ %i.acd, %.preheader605.epil.preheader ]
  %i.ace = fdiv float %.lcssa1415, %.lcssa1414
  br label %._crit_edge681

._crit_edge681:                                   ; preds = %._crit_edge681.loopexit, %.preheader606
  %storemerge290.lcssa = phi i32 [ 0, %.preheader606 ], [ %i.yw, %._crit_edge681.loopexit ]
  %i.acf = phi float [ +qnan, %.preheader606 ], [ %i.ace, %._crit_edge681.loopexit ]
  store i32 %storemerge290.lcssa, ptr %i.ap, align 4, !tbaa !9
  %i.acg = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.ach = call noundef float @sqrtf(float noundef %i.acf) #23
  %i.aci = fpext float %i.ach to double
end_hunk_0
begin_hunk_1_@_Z10gmx_anaeigiPPc:bb.a

bb.eq:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit353
  %i.adl = add nsw i32 %i.adi, 1
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  store i32 %i.adl, ptr %i.adm, align 4, !tbaa !9
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit353
  %i.adn = load i32, ptr @_ZZ10gmx_anaeigiPPcE4last, align 4, !tbaa !9
  %i.ado = add nsw i32 %i.adn, -1
  %i.adp = getelementptr [4 x i8], ptr %i.adf, i64 %i.ade
  %i.adq = getelementptr i8, ptr %i.adp, i64 -4
  store i32 %i.ado, ptr %i.adq, align 4, !tbaa !9
  br label %.loopexit602

bb.es:                                            ; preds = %bb.eo
  %i.adr = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.111, i32 noundef 1504, i64 noundef 2, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355:       ; preds = %bb.es
  %i.ads = load i32, ptr @_ZZ10gmx_anaeigiPPcE5first, align 4, !tbaa !9
  %i.adt = add nsw i32 %i.ads, -1
  store i32 %i.adt, ptr %i.adr, align 4, !tbaa !9
  %i.adu = load i32, ptr @_ZZ10gmx_anaeigiPPcE4last, align 4, !tbaa !9
  %i.adv = add nsw i32 %i.adu, -1
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  store i32 %i.adv, ptr %i.adw, align 4, !tbaa !9
  br label %.loopexit602

bb.et:                                            ; preds = %bb.el
  %puts291 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.eu

bb.eu:                                            ; preds = %bb.fc, %bb.et
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %bb.fc ], [ -1, %bb.et ] ; 2 uses
  %.0550 = phi ptr [ %i.ady, %bb.fc ], [ null, %bb.et ]
  %indvars.iv.next833 = add nsw i64 %indvars.iv832, 1 ; 3 uses
  %i.adx = add nsw i64 %indvars.iv832, 2
  %i.ady = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.111, i32 noundef 1518, ptr noundef %.0550, i64 noundef range(i64 -2147483646, 2147483648) %i.adx, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit:        ; preds = %bb.eu
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.ady, i64 %indvars.iv.next833 ; 3 uses
  %i.aea = invoke i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.137, ptr noundef %i.adz)
          to label %bb.ev unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ev:                                            ; preds = %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit
  %.not292 = icmp eq i32 %i.aea, 1
  br i1 %.not292, label %bb.fc, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %bb.ex unwind label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %40, i32 noundef 1521, ptr noundef nonnull @.str.138) #26
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  unreachable

bb.ez:                                            ; preds = %bb.ew
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ex
  %i.aec = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %40) #23
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.pn294 = phi { ptr, i32 } [ %i.aec, %bb.fa ], [ %i.aeb, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %.body

bb.fc:                                            ; preds = %bb.ev
  %i.aed = load i32, ptr %i.adz, align 4, !tbaa !9 ; 2 uses
  %i.aee = add nsw i32 %i.aed, -1
  store i32 %i.aee, ptr %i.adz, align 4, !tbaa !9
  %i.aef = icmp sgt i32 %i.aed, 0
  br i1 %i.aef, label %bb.eu, label %bb.fd, !llvm.loop !60

bb.fd:                                            ; preds = %bb.fc
  %i.aeg = trunc nuw nsw i64 %indvars.iv.next833 to i32
  %putchar293 = call i32 @putchar(i32 10)         ; 0 uses
  br label %.loopexit602

.loopexit602:                                     ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355, %bb.er, %bb.fd
  %.1551 = phi ptr [ %i.ady, %bb.fd ], [ %i.adf, %bb.er ], [ %i.adr, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355 ], [ %i.acu, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader ], [ %i.acu, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ]
  %.1549 = phi i32 [ %i.aeg, %bb.fd ], [ %.sroa.speculated, %bb.er ], [ 2, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355 ], [ %i.acs, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader ], [ %i.acs, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ] ; 3 uses
  %i.aeh = sext i32 %.1549 to i64
  %i.aei = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.111, i32 noundef 1529, i64 noundef range(i64 -2147483648, 2147483648) %i.aeh, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 43 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358.preheader: ; preds = %.loopexit602
  store i32 0, ptr %i.ap, align 4, !tbaa !9
  %i.aej = icmp sgt i32 %.1549, 0
  br i1 %i.aej, label %.preheader.lr.ph, label %.thread

.thread:                                          ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358.preheader
  %i.aek = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.ael = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aek, ptr noundef nonnull @.str.140, i32 noundef 0) #24 ; 0 uses
  %i.aem = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc1008 = call i32 @fputc(i32 58, ptr %i.aem) ; 0 uses
  br label %.loopexit601

.preheader.lr.ph:                                 ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358.preheader
  %i.aen = load ptr, ptr %i.ag, align 8
  %.pre853 = load i32, ptr %i.ae, align 4, !tbaa !9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %i.aeo = phi i32 [ %.pre853, %.preheader.lr.ph ], [ %i.afa, %.critedge ] ; 4 uses
  %.0230691 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1231, %.critedge ] ; 4 uses
  %storemerge297690 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.afb, %.critedge ] ; 3 uses
  %i.aep = icmp sgt i32 %i.aeo, 0
  br i1 %i.aep, label %.lr.ph689, label %.critedge

.lr.ph689:                                        ; preds = %.preheader
  %i.aeq = sext i32 %storemerge297690 to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %.1551, i64 %i.aeq
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !9
  %wide.trip.count838 = zext nneg i32 %i.aeo to i64
  br label %bb.fe

bb.fe:                                            ; preds = %.lr.ph689, %bb.ff
  %indvars.iv835 = phi i64 [ 0, %.lr.ph689 ], [ %indvars.iv.next836, %bb.ff ] ; 3 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv835
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !9
  %.not301 = icmp eq i32 %i.aeu, %i.aes
  br i1 %.not301, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 1 ; 2 uses
  %exitcond839.not = icmp eq i64 %indvars.iv.next836, %wide.trip.count838
  br i1 %exitcond839.not, label %.critedge, label %bb.fe, !llvm.loop !61

bb.fg:                                            ; preds = %bb.fe
  %i.aev = trunc nuw nsw i64 %indvars.iv835 to i32
  %i.aew = sext i32 %.0230691 to i64
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.aei, i64 %i.aew
  store i32 %i.aev, ptr %i.aex, align 4, !tbaa !9
  %i.aey = add nsw i32 %.0230691, 1
  %.pre852 = load i32, ptr %i.ae, align 4, !tbaa !9
  %.pre854 = load i32, ptr %i.ap, align 4, !tbaa !9
  br label %.critedge

.critedge:                                        ; preds = %bb.ff, %.preheader, %bb.fg
  %i.aez = phi i32 [ %.pre854, %bb.fg ], [ %storemerge297690, %.preheader ], [ %storemerge297690, %bb.ff ]
  %i.afa = phi i32 [ %.pre852, %bb.fg ], [ %i.aeo, %.preheader ], [ %i.aeo, %bb.ff ]
  %.1231 = phi i32 [ %i.aey, %bb.fg ], [ %.0230691, %.preheader ], [ %.0230691, %bb.ff ] ; 8 uses
  %i.afb = add nsw i32 %i.aez, 1                  ; 3 uses
  store i32 %i.afb, ptr %i.ap, align 4, !tbaa !9
  %i.afc = icmp slt i32 %i.afb, %.1549
  br i1 %i.afc, label %.preheader, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358._crit_edge, !llvm.loop !62

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358._crit_edge: ; preds = %.critedge
  %i.afd = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.afe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afd, ptr noundef nonnull @.str.140, i32 noundef %.1231) #24 ; 0 uses
  %i.aff = icmp slt i32 %.1231, 101
  br i1 %i.aff, label %bb.fh, label %.loopexit601

bb.fh:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358._crit_edge
  %i.afg = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc = call i32 @fputc(i32 58, ptr %i.afg)    ; 0 uses
  %i.afh = icmp sgt i32 %.1231, 0
  br i1 %i.afh, label %.lr.ph695.preheader, label %.loopexit601

.lr.ph695.preheader:                              ; preds = %bb.fh
  %wide.trip.count843 = zext nneg i32 %.1231 to i64
  br label %.lr.ph695

.lr.ph695:                                        ; preds = %.lr.ph695.preheader, %.lr.ph695
  %indvars.iv840 = phi i64 [ 0, %.lr.ph695.preheader ], [ %indvars.iv.next841, %.lr.ph695 ] ; 2 uses
  %i.afi = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.afj = load ptr, ptr %i.ag, align 8, !tbaa !136
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv840
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !9
  %i.afm = sext i32 %i.afl to i64
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.afm
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !9
  %i.afp = add nsw i32 %i.afo, 1
  %i.afq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afi, ptr noundef nonnull @.str.142, i32 noundef %i.afp) #24 ; 0 uses
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1 ; 2 uses
  %exitcond844.not = icmp eq i64 %indvars.iv.next841, %wide.trip.count843
  br i1 %exitcond844.not, label %.loopexit601, label %.lr.ph695, !llvm.loop !63

.loopexit601:                                     ; preds = %.lr.ph695, %.thread, %bb.fh, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358._crit_edge
  %.0230.lcssa1005 = phi i32 [ 0, %.thread ], [ %.1231, %bb.fh ], [ %.1231, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358._crit_edge ], [ %.1231, %.lr.ph695 ] ; 34 uses
  %i.afr = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc298 = call i32 @fputc(i32 10, ptr %i.afr) ; 0 uses
  br i1 %i.fa, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %.loopexit601
  %i.afs = load i32, ptr %i.an, align 4, !tbaa !9
  %i.aft = load ptr, ptr %i.ag, align 8, !tbaa !136
  %i.afu = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.afv = load ptr, ptr %i.ba, align 8, !tbaa !172
  invoke fastcc void @_ZL10componentsPKciPiPPA3_fiPKiPK16gmx_output_env_t(ptr noundef %i.ej, i32 noundef %i.afs, ptr noundef %i.aft, ptr noundef %i.afu, i32 noundef %.0230.lcssa1005, ptr noundef %i.aei, ptr noundef %i.afv)
          to label %bb.fj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fj:                                            ; preds = %bb.fi, %.loopexit601
  br i1 %i.fb, label %bb.fk, label %bb.ft

bb.fk:                                            ; preds = %bb.fj
  %i.afw = load i32, ptr %i.an, align 4, !tbaa !9 ; 8 uses
  %i.afx = load ptr, ptr %i.ag, align 8, !tbaa !136 ; 3 uses
  %i.afy = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.afz = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 6 uses
  %i.aga = load ptr, ptr %i.ba, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #23
  %i.agb = icmp sgt i32 %.0226, 0
  br i1 %i.agb, label %iter.check1190, label %._crit_edge.i

iter.check1190:                                   ; preds = %bb.fk
  %wide.trip.count.i = zext nneg i32 %.0226 to i64 ; 6 uses
  %min.iters.check1176 = icmp ult i32 %.0226, 4
  br i1 %min.iters.check1176, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check1177

vector.main.loop.iter.check1177:                  ; preds = %iter.check1190
  %min.iters.check1178 = icmp ult i32 %.0226, 32
  br i1 %min.iters.check1178, label %vec.epilog.ph1194, label %vector.ph1179

vector.ph1179:                                    ; preds = %vector.main.loop.iter.check1177
  %i.agc = and i64 %wide.trip.count.i, 28
  %n.vec1180 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.ph1179, %vector.body1181
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1187, %vector.body1181 ] ; 2 uses
  %i.agd = getelementptr [4 x i8], ptr %i.afz, i64 %index1182 ; 5 uses
  %i.age = getelementptr i8, ptr %i.agd, i64 32   ; 2 uses
  %i.agf = getelementptr i8, ptr %i.agd, i64 64   ; 2 uses
  %i.agg = getelementptr i8, ptr %i.agd, i64 96   ; 2 uses
  %wide.load1183 = load <8 x float>, ptr %i.agd, align 4, !tbaa !28
  %wide.load1184 = load <8 x float>, ptr %i.age, align 4, !tbaa !28
  %wide.load1185 = load <8 x float>, ptr %i.agf, align 4, !tbaa !28
  %wide.load1186 = load <8 x float>, ptr %i.agg, align 4, !tbaa !28
  %i.agh = fcmp olt <8 x float> %wide.load1183, zeroinitializer
  %i.agi = fcmp olt <8 x float> %wide.load1184, zeroinitializer
  %i.agj = fcmp olt <8 x float> %wide.load1185, zeroinitializer
  %i.agk = fcmp olt <8 x float> %wide.load1186, zeroinitializer
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.agd, <8 x i1> %i.agh), !tbaa !28
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.age, <8 x i1> %i.agi), !tbaa !28
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.agf, <8 x i1> %i.agj), !tbaa !28
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.agg, <8 x i1> %i.agk), !tbaa !28
  %index.next1187 = add nuw i64 %index1182, 32    ; 2 uses
  %i.agl = icmp eq i64 %index.next1187, %n.vec1180
  br i1 %i.agl, label %middle.block1188, label %vector.body1181, !llvm.loop !64

middle.block1188:                                 ; preds = %vector.body1181
  %cmp.n1189 = icmp eq i64 %n.vec1180, %wide.trip.count.i
  br i1 %cmp.n1189, label %._crit_edge.i, label %vec.epilog.iter.check1191

vec.epilog.iter.check1191:                        ; preds = %middle.block1188
  %min.epilog.iters.check1193 = icmp eq i64 %i.agc, 0
  br i1 %min.epilog.iters.check1193, label %.lr.ph.i.preheader, label %vec.epilog.ph1194, !prof !170

vec.epilog.ph1194:                                ; preds = %vector.main.loop.iter.check1177, %vec.epilog.iter.check1191
  %vec.epilog.resume.val1195 = phi i64 [ %n.vec1180, %vec.epilog.iter.check1191 ], [ 0, %vector.main.loop.iter.check1177 ]
  %n.vec1196 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1197

vec.epilog.vector.body1197:                       ; preds = %vec.epilog.vector.body1197, %vec.epilog.ph1194
  %index1198 = phi i64 [ %vec.epilog.resume.val1195, %vec.epilog.ph1194 ], [ %index.next1200, %vec.epilog.vector.body1197 ] ; 2 uses
  %i.agm = getelementptr [4 x i8], ptr %i.afz, i64 %index1198 ; 2 uses
  %wide.load1199 = load <4 x float>, ptr %i.agm, align 4, !tbaa !28
  %i.agn = fcmp olt <4 x float> %wide.load1199, zeroinitializer
  call void @llvm.masked.store.v4f32.p0(<4 x float> zeroinitializer, ptr align 4 %i.agm, <4 x i1> %i.agn), !tbaa !28
  %index.next1200 = add nuw i64 %index1198, 4     ; 2 uses
  %i.ago = icmp eq i64 %index.next1200, %n.vec1196
  br i1 %i.ago, label %vec.epilog.middle.block1201, label %vec.epilog.vector.body1197, !llvm.loop !65

vec.epilog.middle.block1201:                      ; preds = %vec.epilog.vector.body1197
  %cmp.n1202 = icmp eq i64 %n.vec1196, %wide.trip.count.i
  br i1 %cmp.n1202, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check1190, %vec.epilog.iter.check1191, %vec.epilog.middle.block1201
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check1190 ], [ %n.vec1180, %vec.epilog.iter.check1191 ], [ %n.vec1196, %vec.epilog.middle.block1201 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.fm
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.fm ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %indvars.iv.i ; 2 uses
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !28
  %i.agr = fcmp olt float %i.agq, 0.000000e+00
  br i1 %i.agr, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %.lr.ph.i
  store float 0.000000e+00, ptr %i.agp, align 4, !tbaa !28
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !66

._crit_edge.i:                                    ; preds = %bb.fm, %middle.block1188, %vec.epilog.middle.block1201, %bb.fk
  %i.ags = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.agt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ags, ptr noundef nonnull @.str.185, ptr noundef nonnull %i.ek) #24 ; 0 uses
  %i.agu = sext i32 %.0230.lcssa1005 to i64       ; 2 uses
  %i.agv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.111, i32 noundef 982, i64 noundef range(i64 -2147483648, 2147483648) %i.agu, i64 noundef 8)
          to label %.noexc362 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc362:                                        ; preds = %._crit_edge.i
  %i.agw = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.111, i32 noundef 983, i64 noundef range(i64 -2147483648, 2147483648) %i.agu, i64 noundef 8)
          to label %.noexc363 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc363:                                        ; preds = %.noexc362
  %i.agx = sext i32 %i.afw to i64                 ; 3 uses
  %i.agy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.111, i32 noundef 984, i64 noundef range(i64 -2147483648, 2147483648) %i.agx, i64 noundef 4)
          to label %.noexc364 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc364:                                        ; preds = %.noexc363
  %i.agz = icmp sgt i32 %i.afw, 0
  br i1 %i.agz, label %iter.check1215, label %.preheader.thread.i

iter.check1215:                                   ; preds = %.noexc364
  %wide.trip.count90.i = zext nneg i32 %i.afw to i64 ; 8 uses
  %min.iters.check1205 = icmp ult i32 %i.afw, 8
  br i1 %min.iters.check1205, label %.lr.ph74.i.preheader, label %vector.main.loop.iter.check1206

vector.main.loop.iter.check1206:                  ; preds = %iter.check1215
  %min.iters.check1207 = icmp ult i32 %i.afw, 32
  br i1 %min.iters.check1207, label %vec.epilog.ph1219, label %vector.ph1208

vector.ph1208:                                    ; preds = %vector.main.loop.iter.check1206
  %i.aha = and i64 %wide.trip.count90.i, 24
  %n.vec1209 = and i64 %wide.trip.count90.i, 2147483616 ; 4 uses
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.ph1208, %vector.body1210
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1212, %vector.body1210 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph1208 ], [ %vec.ind.next, %vector.body1210 ] ; 5 uses
  %i.ahb = add <8 x i32> %vec.ind, splat (i32 8)
  %i.ahc = add <8 x i32> %vec.ind, splat (i32 16)
  %i.ahd = add <8 x i32> %vec.ind, splat (i32 24)
  %i.ahe = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.ahf = uitofp nneg <8 x i32> %i.ahb to <8 x float>
  %i.ahg = uitofp nneg <8 x i32> %i.ahc to <8 x float>
  %i.ahh = uitofp nneg <8 x i32> %i.ahd to <8 x float>
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %index1211 ; 4 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 32
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahi, i64 64
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahi, i64 96
  store <8 x float> %i.ahe, ptr %i.ahi, align 4, !tbaa !28
  store <8 x float> %i.ahf, ptr %i.ahj, align 4, !tbaa !28
  store <8 x float> %i.ahg, ptr %i.ahk, align 4, !tbaa !28
  store <8 x float> %i.ahh, ptr %i.ahl, align 4, !tbaa !28
  %index.next1212 = add nuw i64 %index1211, 32    ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.ahm = icmp eq i64 %index.next1212, %n.vec1209
  br i1 %i.ahm, label %middle.block1213, label %vector.body1210, !llvm.loop !67

middle.block1213:                                 ; preds = %vector.body1210
  %cmp.n1214 = icmp eq i64 %n.vec1209, %wide.trip.count90.i
  br i1 %cmp.n1214, label %.preheader.i, label %vec.epilog.iter.check1216

vec.epilog.iter.check1216:                        ; preds = %middle.block1213
  %min.epilog.iters.check1218 = icmp eq i64 %i.aha, 0
  br i1 %min.epilog.iters.check1218, label %.lr.ph74.i.preheader, label %vec.epilog.ph1219, !prof !35

vec.epilog.ph1219:                                ; preds = %vector.main.loop.iter.check1206, %vec.epilog.iter.check1216
  %vec.epilog.resume.val1220 = phi i64 [ %n.vec1209, %vec.epilog.iter.check1216 ], [ 0, %vector.main.loop.iter.check1206 ] ; 2 uses
  %n.vec1221 = and i64 %wide.trip.count90.i, 2147483640 ; 3 uses
  %41 = trunc nuw nsw i64 %vec.epilog.resume.val1220 to i32
  %42 = or disjoint i32 %41, 1
  %broadcast.splatinsert1222 = insertelement <8 x i32> poison, i32 %42, i64 0
  %broadcast.splat1223 = shufflevector <8 x i32> %broadcast.splatinsert1222, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i32> %broadcast.splat1223, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body1224

vec.epilog.vector.body1224:                       ; preds = %vec.epilog.vector.body1224, %vec.epilog.ph1219
  %index1225 = phi i64 [ %vec.epilog.resume.val1220, %vec.epilog.ph1219 ], [ %index.next1227, %vec.epilog.vector.body1224 ] ; 2 uses
  %vec.ind1226 = phi <8 x i32> [ %induction, %vec.epilog.ph1219 ], [ %vec.ind.next1228, %vec.epilog.vector.body1224 ] ; 2 uses
  %43 = uitofp nneg <8 x i32> %vec.ind1226 to <8 x float>
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %index1225
  store <8 x float> %43, ptr %i.ahn, align 4, !tbaa !28
  %index.next1227 = add nuw i64 %index1225, 8     ; 2 uses
  %vec.ind.next1228 = add <8 x i32> %vec.ind1226, splat (i32 8)
  %i.aho = icmp eq i64 %index.next1227, %n.vec1221
  br i1 %i.aho, label %vec.epilog.middle.block1229, label %vec.epilog.vector.body1224, !llvm.loop !68

vec.epilog.middle.block1229:                      ; preds = %vec.epilog.vector.body1224
  %cmp.n1230 = icmp eq i64 %n.vec1221, %wide.trip.count90.i
  br i1 %cmp.n1230, label %.preheader.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %iter.check1215, %vec.epilog.iter.check1216, %vec.epilog.middle.block1229
  %indvars.iv87.i.ph = phi i64 [ 0, %iter.check1215 ], [ %n.vec1209, %vec.epilog.iter.check1216 ], [ %n.vec1221, %vec.epilog.middle.block1229 ]
  br label %.lr.ph74.i

.preheader.i:                                     ; preds = %.lr.ph74.i, %vec.epilog.middle.block1229, %middle.block1213
  %i.ahp = icmp sgt i32 %.0230.lcssa1005, 0
  br i1 %i.ahp, label %.lr.ph80.i, label %._crit_edge.i.i.i

.preheader.thread.i:                              ; preds = %.noexc364
  %i.ahq = icmp sgt i32 %.0230.lcssa1005, 0
  br i1 %i.ahq, label %.lr.ph80.split.preheader.i, label %._crit_edge.i.i.i

.lr.ph80.i:                                       ; preds = %.preheader.i
  %wide.trip.count105.i = zext nneg i32 %.0230.lcssa1005 to i64
  %xtraiter1454 = and i64 %wide.trip.count90.i, 1
  %i.ahr = icmp eq i32 %i.afw, 1
  %unroll_iter1458 = and i64 %wide.trip.count90.i, 2147483646
  %lcmp.mod1456.not = icmp eq i64 %xtraiter1454, 0
  %lcmp.mod1457 = trunc i32 %i.afw to i1
  br label %.lr.ph80.split.us.i

.lr.ph80.split.preheader.i:                       ; preds = %.preheader.thread.i
  %wide.trip.count95.i = zext nneg i32 %.0230.lcssa1005 to i64
  br label %.lr.ph80.split.i

.lr.ph80.split.us.i:                              ; preds = %._crit_edge78.us.i, %.lr.ph80.i
  %indvars.iv102.i = phi i64 [ 0, %.lr.ph80.i ], [ %indvars.iv.next103.i, %._crit_edge78.us.i ] ; 4 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv102.i
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !9
  %i.ahu = sext i32 %i.aht to i64                 ; 2 uses
  %i.ahv = getelementptr inbounds [4 x i8], ptr %i.afx, i64 %i.ahu ; 5 uses
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !9 ; 2 uses
  %.not.us.i = icmp slt i32 %i.ahw, %.0226
  br i1 %.not.us.i, label %.lr.ph77.us.i, label %.split.us.i

.lr.ph77.us.i:                                    ; preds = %.lr.ph80.split.us.i
  %i.ahx = add nsw i32 %i.ahw, 1
  %i.ahy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %i.ahx) #23 ; 0 uses
  %i.ahz = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.u)
          to label %.noexc365 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc365:                                        ; preds = %.lr.ph77.us.i
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv102.i
  store ptr %i.ahz, ptr %i.aia, align 8, !tbaa !18
  %i.aib = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.111, i32 noundef 1001, i64 noundef range(i64 -2147483648, 2147483648) %i.agx, i64 noundef 4)
          to label %.noexc366 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc366:                                        ; preds = %.noexc365
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %indvars.iv102.i
  store ptr %i.aib, ptr %i.aic, align 8, !tbaa !15
  %i.aid = getelementptr inbounds [8 x i8], ptr %i.afy, i64 %i.ahu
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !15 ; 3 uses
  br i1 %i.ahr, label %.epil.preheader1453, label %.noexc366.new

.noexc366.new:                                    ; preds = %.noexc366, %.noexc366.new
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i.1, %.noexc366.new ], [ 0, %.noexc366 ] ; 5 uses
  %niter1459 = phi i64 [ %niter1459.next.1, %.noexc366.new ], [ 0, %.noexc366 ]
  %i.aif = load i32, ptr %i.ahv, align 4, !tbaa !9
  %i.aig = sext i32 %i.aif to i64
  %i.aih = getelementptr inbounds [4 x i8], ptr %i.afz, i64 %i.aig
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !28
  %i.aij = getelementptr inbounds nuw [12 x i8], ptr %i.aie, i64 %indvars.iv97.i ; 3 uses
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !28 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aij, i64 4
  %i.aim = load float, ptr %i.ail, align 4, !tbaa !28 ; 2 uses
  %i.ain = fmul float %i.aim, %i.aim
  %i.aio = call float @llvm.fmuladd.f32(float %i.aik, float %i.aik, float %i.ain)
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aij, i64 8
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !28 ; 2 uses
  %i.air = call noundef float @llvm.fmuladd.f32(float %i.aiq, float %i.aiq, float %i.aio)
  %i.ais = fmul float %i.aii, %i.air
  %i.ait = call noundef float @sqrtf(float noundef %i.ais) #23
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv97.i
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !28
  %i.aiw = fdiv float %i.ait, %i.aiv
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %indvars.iv97.i
  store float %i.aiw, ptr %i.aix, align 4, !tbaa !28
  %indvars.iv.next98.i = or disjoint i64 %indvars.iv97.i, 1 ; 3 uses
  %i.aiy = load i32, ptr %i.ahv, align 4, !tbaa !9
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds [4 x i8], ptr %i.afz, i64 %i.aiz
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !28
  %i.ajc = getelementptr inbounds nuw [12 x i8], ptr %i.aie, i64 %indvars.iv.next98.i ; 3 uses
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !28 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 4
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !28 ; 2 uses
  %i.ajg = fmul float %i.ajf, %i.ajf
  %i.ajh = call float @llvm.fmuladd.f32(float %i.ajd, float %i.ajd, float %i.ajg)
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !28 ; 2 uses
  %i.ajk = call noundef float @llvm.fmuladd.f32(float %i.ajj, float %i.ajj, float %i.ajh)
  %i.ajl = fmul float %i.ajb, %i.ajk
  %i.ajm = call noundef float @sqrtf(float noundef %i.ajl) #23
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv.next98.i
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !28
  %i.ajp = fdiv float %i.ajm, %i.ajo
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %indvars.iv.next98.i
  store float %i.ajp, ptr %i.ajq, align 4, !tbaa !28
  %indvars.iv.next98.i.1 = add nuw nsw i64 %indvars.iv97.i, 2 ; 2 uses
  %niter1459.next.1 = add i64 %niter1459, 2       ; 2 uses
  %niter1459.ncmp.1 = icmp eq i64 %niter1459.next.1, %unroll_iter1458
  br i1 %niter1459.ncmp.1, label %._crit_edge78.us.i.unr-lcssa, label %.noexc366.new, !llvm.loop !69

._crit_edge78.us.i.unr-lcssa:                     ; preds = %.noexc366.new
  br i1 %lcmp.mod1456.not, label %._crit_edge78.us.i, label %.epil.preheader1453

.epil.preheader1453:                              ; preds = %._crit_edge78.us.i.unr-lcssa, %.noexc366
  %indvars.iv97.i.epil.init = phi i64 [ 0, %.noexc366 ], [ %indvars.iv.next98.i.1, %._crit_edge78.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1457)
  %i.ajr = load i32, ptr %i.ahv, align 4, !tbaa !9
  %i.ajs = sext i32 %i.ajr to i64
  %i.ajt = getelementptr inbounds [4 x i8], ptr %i.afz, i64 %i.ajs
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !28
  %i.ajv = getelementptr inbounds nuw [12 x i8], ptr %i.aie, i64 %indvars.iv97.i.epil.init ; 3 uses
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !28 ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajv, i64 4
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !28 ; 2 uses
  %i.ajz = fmul float %i.ajy, %i.ajy
  %i.aka = call float @llvm.fmuladd.f32(float %i.ajw, float %i.ajw, float %i.ajz)
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !28 ; 2 uses
  %i.akd = call noundef float @llvm.fmuladd.f32(float %i.akc, float %i.akc, float %i.aka)
  %i.ake = fmul float %i.aju, %i.akd
  %i.akf = call noundef float @sqrtf(float noundef %i.ake) #23
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv97.i.epil.init
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !28
  %i.aki = fdiv float %i.akf, %i.akh
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %indvars.iv97.i.epil.init
  store float %i.aki, ptr %i.akj, align 4, !tbaa !28
  br label %._crit_edge78.us.i

._crit_edge78.us.i:                               ; preds = %._crit_edge78.us.i.unr-lcssa, %.epil.preheader1453
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond106.not.i = icmp eq i64 %indvars.iv.next103.i, %wide.trip.count105.i
  br i1 %exitcond106.not.i, label %._crit_edge.i.i.i, label %.lr.ph80.split.us.i, !llvm.loop !70

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %.lr.ph74.i ], [ %indvars.iv87.i.ph, %.lr.ph74.i.preheader ] ; 2 uses
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 3 uses
  %i.akk = trunc nuw nsw i64 %indvars.iv.next88.i to i32
  %i.akl = uitofp nneg i32 %i.akk to float
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %indvars.iv87.i
  store float %i.akl, ptr %i.akm, align 4, !tbaa !28
  %exitcond91.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count90.i
  br i1 %exitcond91.not.i, label %.preheader.i, label %.lr.ph74.i, !llvm.loop !71

.lr.ph80.split.i:                                 ; preds = %.noexc369, %.lr.ph80.split.preheader.i
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph80.split.preheader.i ], [ %indvars.iv.next93.i, %.noexc369 ] ; 4 uses
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv92.i
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !9
  %i.akp = sext i32 %i.ako to i64                 ; 2 uses
  %i.akq = getelementptr inbounds [4 x i8], ptr %i.afx, i64 %i.akp
  %i.akr = load i32, ptr %i.akq, align 4, !tbaa !9 ; 2 uses
  %.not.i361 = icmp slt i32 %i.akr, %.0226
  br i1 %.not.i361, label %bb.fp, label %.split.us.i.loopexit1019

.split.us.i.loopexit1019:                         ; preds = %.lr.ph80.split.i
  %i.aks = getelementptr inbounds [4 x i8], ptr %i.afx, i64 %i.akp
  br label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph80.split.us.i, %.split.us.i.loopexit1019
  %.us-phi.i = phi ptr [ %i.aks, %.split.us.i.loopexit1019 ], [ %i.ahv, %.lr.ph80.split.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %.noexc367 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc367:                                        ; preds = %.split.us.i
  %i.akt = load i32, ptr %.us-phi.i, align 4, !tbaa !9
  %i.aku = add nsw i32 %i.akt, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef 994, ptr noundef nonnull @.str.186, i32 noundef %i.aku, i32 noundef %.0226) #26
          to label %bb.fn unwind label %bb.fo

bb.fn:                                            ; preds = %.noexc367
  unreachable

bb.fo:                                            ; preds = %.noexc367
  %i.akv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.fs

bb.fp:                                            ; preds = %.lr.ph80.split.i
  %i.akw = add nsw i32 %i.akr, 1
  %i.akx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %i.akw) #23 ; 0 uses
  %i.aky = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.u)
          to label %.noexc368 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc368:                                        ; preds = %bb.fp
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv92.i
  store ptr %i.aky, ptr %i.akz, align 8, !tbaa !18
  %i.ala = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.111, i32 noundef 1001, i64 noundef range(i64 -2147483648, 2147483648) %i.agx, i64 noundef 4)
          to label %.noexc369 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc369:                                        ; preds = %.noexc368
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %indvars.iv92.i
  store ptr %i.ala, ptr %i.alb, align 8, !tbaa !15
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %exitcond96.not.i = icmp eq i64 %indvars.iv.next93.i, %wide.trip.count95.i
  br i1 %exitcond96.not.i, label %._crit_edge.i.i.i, label %.lr.ph80.split.i, !llvm.loop !70

._crit_edge.i.i.i:                                ; preds = %.noexc369, %._crit_edge78.us.i, %.preheader.thread.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.alc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.alc, ptr %26, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.alc, ptr noundef nonnull align 1 dereferenceable(11) @.str.155, i64 11, i1 false)
  %i.ald = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 11, ptr %i.ald, align 8, !tbaa !34
  %i.ale = getelementptr inbounds nuw i8, ptr %26, i64 27
  store i8 0, ptr %i.ale, align 1, !tbaa !26
  invoke fastcc void @_ZL17write_xvgr_graphsPKciiS0_S0_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_iPfPSA_PSB_fbbPK16gmx_output_env_t(ptr noundef nonnull %i.ek, i32 noundef %.0230.lcssa1005, i32 noundef 1, ptr noundef nonnull @.str.187, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %i.agv, i32 noundef %i.afw, ptr noundef %i.agy, ptr noundef %i.agw, ptr noundef null, float noundef 1.000000e+00, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.aga)
          to label %bb.fq unwind label %bb.fr

bb.fq:                                            ; preds = %._crit_edge.i.i.i
  %i.alf = load ptr, ptr %26, align 8, !tbaa !25  ; 2 uses
  %i.alg = icmp eq ptr %i.alf, %i.alc
  br i1 %i.alg, label %_ZL4rmsfPKciPKfPiPPA3_fiPKiPfiPK16gmx_output_env_t.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i359: ; preds = %bb.fq
  %i.alh = load i64, ptr %i.alc, align 8, !tbaa !26
  %i.ali = add i64 %i.alh, 1
  call void @_ZdlPvm(ptr noundef %i.alf, i64 noundef %i.ali) #25
  br label %_ZL4rmsfPKciPKfPiPPA3_fiPKiPfiPK16gmx_output_env_t.exit

bb.fr:                                            ; preds = %._crit_edge.i.i.i
  %i.alj = landingpad { ptr, i32 }
          cleanup
  %i.alk = load ptr, ptr %26, align 8, !tbaa !25  ; 2 uses
  %i.all = icmp eq ptr %i.alk, %i.alc
  br i1 %i.all, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i: ; preds = %bb.fr
  %i.alm = load i64, ptr %i.alc, align 8, !tbaa !26
  %i.aln = add i64 %i.alm, 1
  call void @_ZdlPvm(ptr noundef %i.alk, i64 noundef %i.aln) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.fs

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %bb.fo
  %.pn60.i = phi { ptr, i32 } [ %i.akv, %bb.fo ], [ %i.alj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #23
  br label %.body

_ZL4rmsfPKciPKfPiPPA3_fiPKiPfiPK16gmx_output_env_t.exit: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %i.alo = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc.i = call i32 @fputc(i32 10, ptr %i.alo)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #23
  br label %bb.ft

bb.ft:                                            ; preds = %_ZL4rmsfPKciPKfPiPPA3_fiPKiPfiPK16gmx_output_env_t.exit, %bb.fj
  br i1 %spec.select, label %bb.fu, label %bb.kg

bb.fu:                                            ; preds = %bb.ft
  br i1 %i.fk, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.alp = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.85, i32 noundef 16, ptr noundef nonnull %29)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %i.alq = phi ptr [ %i.alp, %bb.fv ], [ null, %bb.fu ] ; 2 uses
  %i.alr = load i32, ptr %i.w, align 4, !tbaa !134 ; 2 uses
  %i.als = load ptr, ptr %39, align 8, !tbaa !25  ; 3 uses
  %i.alt = load i32, ptr @_ZZ10gmx_anaeigiPPcE4skip, align 4, !tbaa !9
  %i.alu = load float, ptr @_ZZ10gmx_anaeigiPPcE3max, align 4, !tbaa !28 ; 3 uses
  %i.alv = load i32, ptr @_ZZ10gmx_anaeigiPPcE5nextr, align 4, !tbaa !9 ; 6 uses
  %i.alw = load i32, ptr %i.an, align 4, !tbaa !9 ; 11 uses
  %i.alx = load ptr, ptr %i.ar, align 8, !tbaa !136 ; 16 uses
  %i.aly = load i8, ptr %i.av, align 1, !tbaa !154, !range !155, !noundef !156
  %i.alz = trunc nuw i8 %i.aly to i1
  %i.ama = load i32, ptr %i.aq, align 4, !tbaa !9
  %i.amb = load ptr, ptr %i.as, align 8, !tbaa !136
  %i.amc = load ptr, ptr %i.ai, align 8, !tbaa !15 ; 10 uses
  %i.amd = load ptr, ptr %i.ag, align 8, !tbaa !136 ; 12 uses
  %i.ame = load ptr, ptr %i.ak, align 8, !tbaa !13 ; 15 uses
  %i.amf = load i8, ptr @_ZZ10gmx_anaeigiPPcE6bSplit, align 1, !tbaa !154, !range !155, !noundef !156
  %i.amg = trunc nuw i8 %i.amf to i1              ; 4 uses
  %i.amh = load ptr, ptr %i.ba, align 8, !tbaa !172 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.alq, ptr %i.g, align 8, !tbaa !18
  store ptr %i.em, ptr %i.h, align 8, !tbaa !18
  store ptr %i.en, ptr %i.i, align 8, !tbaa !18
  store ptr %i.eo, ptr %i.j, align 8, !tbaa !18
  store ptr %i.ep, ptr %i.k, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  %i.ami = sext i32 %i.alw to i64
  %i.amj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.111, i32 noundef 524, i64 noundef range(i64 -2147483648, 2147483648) %i.ami, i64 noundef 12)
          to label %.noexc386 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc386:                                        ; preds = %bb.fw
  %..i370 = select i1 %i.ez, i32 %.0230.lcssa1005, i32 1 ; 6 uses
  %.not.i371 = icmp eq ptr %i.alq, null
  br i1 %.not.i371, label %bb.gx, label %bb.fx

bb.fx:                                            ; preds = %.noexc386
  %i.amk = add i32 %.0230.lcssa1005, 1            ; 2 uses
  %i.aml = sext i32 %i.amk to i64
  %i.amm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.111, i32 noundef 538, i64 noundef range(i64 -2147483648, 2147483648) %i.aml, i64 noundef 8)
          to label %.noexc387 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 21 uses

.noexc387:                                        ; preds = %bb.fx
  br i1 %i.ev, label %bb.fy, label %bb.gc

bb.fy:                                            ; preds = %.noexc387
  %i.amn = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.amo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.amn, ptr noundef nonnull @.str.188, ptr noundef nonnull %i.eo) #24 ; 0 uses
  %i.amp = icmp sgt i32 %.0230.lcssa1005, 0
  br i1 %i.amp, label %.lr.ph.preheader.i380, label %._crit_edge.i372

.lr.ph.preheader.i380:                            ; preds = %bb.fy
  %wide.trip.count.i381 = zext nneg i32 %.0230.lcssa1005 to i64
  br label %.lr.ph.i382

.lr.ph.i382:                                      ; preds = %.lr.ph.i382, %.lr.ph.preheader.i380
  %indvars.iv.i383 = phi i64 [ 0, %.lr.ph.preheader.i380 ], [ %indvars.iv.next.i384, %.lr.ph.i382 ] ; 2 uses
  %i.amq = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv.i383
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !9
  %i.amt = add nsw i32 %i.ams, 1
  %i.amu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.amq, ptr noundef nonnull @.str.189, i32 noundef %i.amt) #24 ; 0 uses
  %indvars.iv.next.i384 = add nuw nsw i64 %indvars.iv.i383, 1 ; 2 uses
  %exitcond.not.i385 = icmp eq i64 %indvars.iv.next.i384, %wide.trip.count.i381
  br i1 %exitcond.not.i385, label %._crit_edge.i372, label %.lr.ph.i382, !llvm.loop !72

._crit_edge.i372:                                 ; preds = %.lr.ph.i382, %bb.fy
  %i.amv = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc.i373 = call i32 @fputc(i32 10, ptr %i.amv) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef zeroext 2)
          to label %.noexc388 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc388:                                        ; preds = %._crit_edge.i372
  %i.amw = invoke noundef ptr @_Z8open_trxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull @.str.156)
          to label %bb.fz unwind label %bb.gb

bb.fz:                                            ; preds = %.noexc388
  %i.amx = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i374 = icmp eq ptr %i.amy, null
  br i1 %.not.i.i.i.i374, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.amx, ptr noundef nonnull %i.amy) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.ga, %bb.fz
  %i.amz = load ptr, ptr %9, align 8, !tbaa !25   ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.anb = icmp eq ptr %i.amz, %i.ana
  br i1 %i.anb, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.anc = load i64, ptr %i.ana, align 8, !tbaa !26
  %i.and = add i64 %i.anc, 1
  call void @_ZdlPvm(ptr noundef %i.amz, i64 noundef %i.and) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.gc

bb.gb:                                            ; preds = %.noexc388
  %i.ane = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.kf

bb.gc:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, %.noexc387
  %.0348.i = phi ptr [ %i.amw, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i ], [ null, %.noexc387 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext 2)
          to label %.noexc389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc389:                                        ; preds = %bb.gc
  %i.anf = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.amh, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m)
          to label %bb.gd unwind label %bb.gh     ; 11 uses

bb.gd:                                            ; preds = %.noexc389
  %i.ang = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i413.i = icmp eq ptr %i.anh, null
  br i1 %.not.i.i.i413.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i414.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ang, ptr noundef nonnull %i.anh) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i414.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i414.i: ; preds = %bb.ge, %bb.gd
  %i.ani = load ptr, ptr %10, align 8, !tbaa !25  ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ank = icmp eq ptr %i.ani, %i.anj
  br i1 %i.ank, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit417.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i414.i
  %i.anl = load i64, ptr %i.anj, align 8, !tbaa !26
  %i.anm = add i64 %i.anl, 1
  call void @_ZdlPvm(ptr noundef %i.ani, i64 noundef %i.anm) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit417.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit417.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i414.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.ann = load i32, ptr %.0243, align 8, !tbaa !164
  %i.ano = icmp sgt i32 %i.anf, %i.ann
  br i1 %i.ano, label %bb.gf, label %bb.gj

bb.gf:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit417.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %.noexc390 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc390:                                        ; preds = %bb.gf
  %i.anp = load i32, ptr %.0243, align 8, !tbaa !164
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 556, ptr noundef nonnull @.str.190, i32 noundef %i.anf, i32 noundef %i.anp) #26
          to label %bb.gg unwind label %bb.gi

bb.gg:                                            ; preds = %.noexc390
  unreachable

bb.gh:                                            ; preds = %.noexc389
  %i.anq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.kf

bb.gi:                                            ; preds = %.noexc390
  %i.anr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.kf

bb.gj:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit417.i
  %i.ans = sext i32 %i.anf to i64
  %i.ant = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.111, i32 noundef 562, i64 noundef range(i64 -2147483648, 2147483648) %i.ans, i64 noundef 4)
          to label %.noexc391 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc391:                                        ; preds = %bb.gj
  br i1 %.0227, label %bb.gk, label %.noexc392

bb.gk:                                            ; preds = %.noexc391
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.anu = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %.sroa.gep, i32 noundef %i.alr, i32 noundef %i.anf)
          to label %.noexc392 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc392:                                        ; preds = %bb.gk, %.noexc391
  %.0337.i = phi ptr [ null, %.noexc391 ], [ %i.anu, %bb.gk ] ; 3 uses
  %i.anv = icmp sgt i32 %i.anf, 0
  br i1 %i.anv, label %iter.check1248, label %.preheader545.i

iter.check1248:                                   ; preds = %.noexc392
  %wide.trip.count637.i = zext nneg i32 %i.anf to i64 ; 6 uses
  %min.iters.check1233 = icmp ult i32 %i.anf, 8
  br i1 %min.iters.check1233, label %.lr.ph555.i.preheader, label %vector.main.loop.iter.check1234

vector.main.loop.iter.check1234:                  ; preds = %iter.check1248
  %min.iters.check1235 = icmp ult i32 %i.anf, 32
  br i1 %min.iters.check1235, label %vec.epilog.ph1252, label %vector.ph1236

vector.ph1236:                                    ; preds = %vector.main.loop.iter.check1234
  %i.anw = and i64 %wide.trip.count637.i, 24
  %n.vec1237 = and i64 %wide.trip.count637.i, 2147483616 ; 4 uses
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.ph1236, %vector.body1238
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1244, %vector.body1238 ] ; 2 uses
  %vec.ind1240 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1236 ], [ %vec.ind.next1245, %vector.body1238 ] ; 5 uses
  %step.add1241 = add <8 x i32> %vec.ind1240, splat (i32 8)
  %step.add.21242 = add <8 x i32> %vec.ind1240, splat (i32 16)
  %step.add.31243 = add <8 x i32> %vec.ind1240, splat (i32 24)
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %index1239 ; 4 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 32
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anx, i64 64
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anx, i64 96
  store <8 x i32> %vec.ind1240, ptr %i.anx, align 4, !tbaa !9
  store <8 x i32> %step.add1241, ptr %i.any, align 4, !tbaa !9
  store <8 x i32> %step.add.21242, ptr %i.anz, align 4, !tbaa !9
  store <8 x i32> %step.add.31243, ptr %i.aoa, align 4, !tbaa !9
  %index.next1244 = add nuw i64 %index1239, 32    ; 2 uses
  %vec.ind.next1245 = add <8 x i32> %vec.ind1240, splat (i32 32)
  %i.aob = icmp eq i64 %index.next1244, %n.vec1237
  br i1 %i.aob, label %middle.block1246, label %vector.body1238, !llvm.loop !73

middle.block1246:                                 ; preds = %vector.body1238
  %cmp.n1247 = icmp eq i64 %n.vec1237, %wide.trip.count637.i
  br i1 %cmp.n1247, label %.preheader545.i, label %vec.epilog.iter.check1249

vec.epilog.iter.check1249:                        ; preds = %middle.block1246
  %min.epilog.iters.check1251 = icmp eq i64 %i.anw, 0
  br i1 %min.epilog.iters.check1251, label %.lr.ph555.i.preheader, label %vec.epilog.ph1252, !prof !35

vec.epilog.ph1252:                                ; preds = %vector.main.loop.iter.check1234, %vec.epilog.iter.check1249
  %vec.epilog.resume.val1253 = phi i64 [ %n.vec1237, %vec.epilog.iter.check1249 ], [ 0, %vector.main.loop.iter.check1234 ] ; 2 uses
  %n.vec1254 = and i64 %wide.trip.count637.i, 2147483640 ; 3 uses
  %i.aoc = trunc nuw nsw i64 %vec.epilog.resume.val1253 to i32
  %broadcast.splatinsert1255 = insertelement <8 x i32> poison, i32 %i.aoc, i64 0
  %broadcast.splat1256 = shufflevector <8 x i32> %broadcast.splatinsert1255, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1257 = or disjoint <8 x i32> %broadcast.splat1256, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body1258

vec.epilog.vector.body1258:                       ; preds = %vec.epilog.vector.body1258, %vec.epilog.ph1252
  %index1259 = phi i64 [ %vec.epilog.resume.val1253, %vec.epilog.ph1252 ], [ %index.next1261, %vec.epilog.vector.body1258 ] ; 2 uses
  %vec.ind1260 = phi <8 x i32> [ %induction1257, %vec.epilog.ph1252 ], [ %vec.ind.next1262, %vec.epilog.vector.body1258 ] ; 2 uses
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %index1259
  store <8 x i32> %vec.ind1260, ptr %i.aod, align 4, !tbaa !9
  %index.next1261 = add nuw i64 %index1259, 8     ; 2 uses
  %vec.ind.next1262 = add <8 x i32> %vec.ind1260, splat (i32 8)
  %i.aoe = icmp eq i64 %index.next1261, %n.vec1254
  br i1 %i.aoe, label %vec.epilog.middle.block1263, label %vec.epilog.vector.body1258, !llvm.loop !74

vec.epilog.middle.block1263:                      ; preds = %vec.epilog.vector.body1258
  %cmp.n1264 = icmp eq i64 %n.vec1254, %wide.trip.count637.i
  br i1 %cmp.n1264, label %.preheader545.i, label %.lr.ph555.i.preheader

.lr.ph555.i.preheader:                            ; preds = %iter.check1248, %vec.epilog.iter.check1249, %vec.epilog.middle.block1263
  %indvars.iv634.i.ph = phi i64 [ 0, %iter.check1248 ], [ %n.vec1237, %vec.epilog.iter.check1249 ], [ %n.vec1254, %vec.epilog.middle.block1263 ]
  br label %.lr.ph555.i

.preheader545.i:                                  ; preds = %.lr.ph555.i, %middle.block1246, %vec.epilog.middle.block1263, %.noexc392
  %.not387556.i = icmp slt i32 %.0230.lcssa1005, 0
  %i.aof = sext i32 %.0230.lcssa1005 to i64
  %i.aog = getelementptr inbounds [8 x i8], ptr %i.amm, i64 %i.aof
  %i.aoh = icmp sgt i32 %i.alw, 0                 ; 2 uses
  %i.aoi = icmp sgt i32 %.0230.lcssa1005, 0       ; 3 uses
  %wide.trip.count642.i = zext i32 %i.amk to i64
  %wide.trip.count647.i = zext i32 %i.alw to i64  ; 8 uses
  %wide.trip.count652.i = zext i32 %.0230.lcssa1005 to i64 ; 14 uses
  %i.aoj = add nsw i64 %wide.trip.count647.i, -1  ; 2 uses
  %i.aok = add nsw i64 %wide.trip.count652.i, -1  ; 3 uses
  %min.iters.check1267 = icmp ult i32 %.0230.lcssa1005, 4
  %min.iters.check1269 = icmp ult i32 %.0230.lcssa1005, 16
  %i.aol = and i64 %wide.trip.count652.i, 12
  %n.vec1271 = and i64 %wide.trip.count652.i, 2147483632 ; 4 uses
  %cmp.n1283 = icmp eq i64 %n.vec1271, %wide.trip.count652.i
  %min.epilog.iters.check1287 = icmp eq i64 %i.aol, 0
  %n.vec1290 = and i64 %wide.trip.count652.i, 2147483644 ; 3 uses
  %cmp.n1297 = icmp eq i64 %n.vec1290, %wide.trip.count652.i
  %xtraiter1461 = and i64 %wide.trip.count647.i, 3 ; 3 uses
  %i.aom = icmp ult i32 %i.alw, 4
  %unroll_iter1465 = and i64 %wide.trip.count647.i, 2147483644
  %lcmp.mod1463.not = icmp eq i64 %xtraiter1461, 0
  %lcmp.mod1464 = icmp ne i64 %xtraiter1461, 0
  %xtraiter1468 = and i64 %wide.trip.count647.i, 1
  %i.aon = icmp eq i64 %i.aoj, 0
  %unroll_iter1473 = and i64 %wide.trip.count647.i, 2147483646
  %lcmp.mod1470.not = icmp eq i64 %xtraiter1468, 0
  %lcmp.mod1472 = trunc i32 %i.alw to i1
  %xtraiter1475 = and i64 %wide.trip.count647.i, 3 ; 3 uses
  %i.aoo = icmp ult i64 %i.aoj, 3
  %unroll_iter1479 = and i64 %wide.trip.count647.i, 4294967292
  %lcmp.mod1477.not = icmp eq i64 %xtraiter1475, 0
  %lcmp.mod1478 = icmp ne i64 %xtraiter1475, 0
  %xtraiter1482 = and i64 %wide.trip.count652.i, 1
  %i.aop = icmp eq i64 %i.aok, 0
  %unroll_iter1486 = and i64 %wide.trip.count652.i, 2147483646
  %lcmp.mod1484.not = icmp eq i64 %xtraiter1482, 0
  %lcmp.mod1485 = trunc i32 %.0230.lcssa1005 to i1
  %xtraiter1489 = and i64 %wide.trip.count652.i, 3 ; 3 uses
  %i.aoq = icmp ult i64 %i.aok, 3
  %unroll_iter1495 = and i64 %wide.trip.count652.i, 2147483644
  %lcmp.mod1493.not = icmp eq i64 %xtraiter1489, 0
  %lcmp.mod1494 = icmp ne i64 %xtraiter1489, 0
  %xtraiter1498 = and i64 %wide.trip.count652.i, 3 ; 3 uses
  %i.aor = icmp ult i64 %i.aok, 3
  %unroll_iter1504 = and i64 %wide.trip.count652.i, 2147483644
  %lcmp.mod1502.not = icmp eq i64 %xtraiter1498, 0
  %lcmp.mod1503 = icmp ne i64 %xtraiter1498, 0
  br label %bb.gl

.lr.ph555.i:                                      ; preds = %.lr.ph555.i.preheader, %.lr.ph555.i
  %indvars.iv634.i = phi i64 [ %indvars.iv.next635.i, %.lr.ph555.i ], [ %indvars.iv634.i.ph, %.lr.ph555.i.preheader ] ; 3 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %indvars.iv634.i
  %i.aot = trunc nuw nsw i64 %indvars.iv634.i to i32
  store i32 %i.aot, ptr %i.aos, align 4, !tbaa !9
  %indvars.iv.next635.i = add nuw nsw i64 %indvars.iv634.i, 1 ; 2 uses
  %exitcond638.not.i = icmp eq i64 %indvars.iv.next635.i, %wide.trip.count637.i
  br i1 %exitcond638.not.i, label %.preheader545.i, label %.lr.ph555.i, !llvm.loop !75

bb.gl:                                            ; preds = %.noexc398, %.preheader545.i
  %.0356.i = phi i32 [ %i.bgi, %.noexc398 ], [ 0, %.preheader545.i ] ; 2 uses
  %.0353.i = phi i32 [ %.1354.i, %.noexc398 ], [ 0, %.preheader545.i ] ; 4 uses
  %.0350.i = phi i32 [ %.2352.i, %.noexc398 ], [ 0, %.preheader545.i ] ; 4 uses
  %i.aou = srem i32 %.0356.i, %i.alt
  %i.aov = icmp eq i32 %i.aou, 0
  br i1 %i.aov, label %bb.gm, label %bb.gu

bb.gm:                                            ; preds = %bb.gl
  br i1 %.0227, label %bb.gn, label %.noexc393

bb.gn:                                            ; preds = %bb.gm
  %i.aow = load ptr, ptr %i.n, align 8, !tbaa !15
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %.0337.i, i32 noundef %i.anf, ptr noundef nonnull %i.m, ptr noundef %i.aow)
          to label %.noexc393 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc393:                                        ; preds = %bb.gn, %bb.gm
  %.not386.i = icmp slt i32 %.0353.i, %.0350.i
  br i1 %.not386.i, label %.loopexit544.i, label %bb.go

bb.go:                                            ; preds = %.noexc393
  %i.aox = add nsw i32 %.0350.i, 100              ; 3 uses
  br i1 %.not387556.i, label %.loopexit544.i, label %.lr.ph559.i

.lr.ph559.i:                                      ; preds = %bb.go
  %i.aoy = sext i32 %i.aox to i64
  br label %bb.gp

bb.gp:                                            ; preds = %.noexc394, %.lr.ph559.i
  %indvars.iv639.i = phi i64 [ 0, %.lr.ph559.i ], [ %indvars.iv.next640.i, %.noexc394 ] ; 2 uses
  %i.aoz = getelementptr inbounds nuw [8 x i8], ptr %i.amm, i64 %indvars.iv639.i ; 2 uses
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !15
  %i.apb = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.111, i32 noundef 586, ptr noundef %i.apa, i64 noundef range(i64 -2147483648, 2147483648) %i.aoy, i64 noundef 4)
          to label %.noexc394 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc394:                                        ; preds = %bb.gp
  store ptr %i.apb, ptr %i.aoz, align 8, !tbaa !15
  %indvars.iv.next640.i = add nuw nsw i64 %indvars.iv639.i, 1 ; 2 uses
  %exitcond643.not.i = icmp eq i64 %indvars.iv.next640.i, %wide.trip.count642.i
  br i1 %exitcond643.not.i, label %.loopexit544.i, label %bb.gp, !llvm.loop !76

.loopexit544.i:                                   ; preds = %.noexc394, %bb.go, %.noexc393
  %.1351.i = phi i32 [ %.0350.i, %.noexc393 ], [ %i.aox, %bb.go ], [ %i.aox, %.noexc394 ]
  %i.apc = load float, ptr %i.o, align 4, !tbaa !28
  %i.apd = load ptr, ptr %i.aog, align 8, !tbaa !15
  %i.ape = sext i32 %.0353.i to i64               ; 21 uses
  %i.apf = getelementptr inbounds [4 x i8], ptr %i.apd, i64 %i.ape
  store float %i.apc, ptr %i.apf, align 4, !tbaa !28
  br i1 %i.alz, label %bb.gq, label %.noexc396

bb.gq:                                            ; preds = %.loopexit544.i
  %i.apg = load ptr, ptr %i.n, align 8, !tbaa !15
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.ama, ptr noundef %i.amb, i32 noundef %i.anf, ptr noundef null, ptr noundef %i.apg, ptr noundef %.1547)
          to label %.noexc395 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc395:                                        ; preds = %bb.gq
  %i.aph = load ptr, ptr %i.n, align 8, !tbaa !15
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %i.anf, ptr noundef %.1547, ptr noundef %.1, ptr noundef %i.aph)
          to label %.noexc396 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc396:                                        ; preds = %.noexc395, %.loopexit544.i
  br i1 %i.aoh, label %.lr.ph562.i, label %.preheader543.thread.i

.lr.ph562.i:                                      ; preds = %.noexc396
  %i.api = load ptr, ptr %i.n, align 8, !tbaa !15 ; 6 uses
  br i1 %i.aom, label %.epil.preheader1460, label %.lr.ph562.i.new

.preheader543.i.unr-lcssa:                        ; preds = %.lr.ph562.i.new
  br i1 %lcmp.mod1463.not, label %.preheader543.i, label %.epil.preheader1460

.epil.preheader1460:                              ; preds = %.preheader543.i.unr-lcssa, %.lr.ph562.i
  %indvars.iv644.i.epil.init = phi i64 [ 0, %.lr.ph562.i ], [ %indvars.iv.next645.i.3, %.preheader543.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1464)
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gr, %.epil.preheader1460
  %indvars.iv644.i.epil = phi i64 [ %indvars.iv644.i.epil.init, %.epil.preheader1460 ], [ %indvars.iv.next645.i.epil, %bb.gr ] ; 3 uses
  %epil.iter1462 = phi i64 [ 0, %.epil.preheader1460 ], [ %epil.iter1462.next, %bb.gr ]
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %indvars.iv644.i.epil
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !9
  %i.apl = sext i32 %i.apk to i64
  %i.apm = getelementptr inbounds [12 x i8], ptr %i.api, i64 %i.apl ; 3 uses
  %i.apn = getelementptr inbounds nuw [12 x i8], ptr %i.amj, i64 %indvars.iv644.i.epil ; 3 uses
  %i.apo = load float, ptr %i.apm, align 4, !tbaa !28
  store float %i.apo, ptr %i.apn, align 4, !tbaa !28
  %i.app = getelementptr inbounds nuw i8, ptr %i.apm, i64 4
  %i.apq = load float, ptr %i.app, align 4, !tbaa !28
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apn, i64 4
  store float %i.apq, ptr %i.apr, align 4, !tbaa !28
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  %i.apt = load float, ptr %i.aps, align 4, !tbaa !28
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apn, i64 8
  store float %i.apt, ptr %i.apu, align 4, !tbaa !28
  %indvars.iv.next645.i.epil = add nuw nsw i64 %indvars.iv644.i.epil, 1
  %epil.iter1462.next = add i64 %epil.iter1462, 1 ; 2 uses
  %epil.iter1462.cmp.not = icmp eq i64 %epil.iter1462.next, %xtraiter1461
  br i1 %epil.iter1462.cmp.not, label %.preheader543.i, label %bb.gr, !llvm.loop !77

.preheader543.i:                                  ; preds = %bb.gr, %.preheader543.i.unr-lcssa
  br i1 %i.aoi, label %.lr.ph566.us.i, label %._crit_edge570.i.thread

.preheader543.thread.i:                           ; preds = %.noexc396
  br i1 %i.aoi, label %iter.check1284, label %._crit_edge570.i

iter.check1284:                                   ; preds = %.preheader543.thread.i
  br i1 %min.iters.check1267, label %.lr.ph569.split.i.preheader, label %vector.main.loop.iter.check1268

vector.main.loop.iter.check1268:                  ; preds = %iter.check1284
  br i1 %min.iters.check1269, label %vec.epilog.ph1288, label %vector.body1272

vector.body1272:                                  ; preds = %vector.main.loop.iter.check1268, %vector.body1272
  %index1273 = phi i64 [ %index.next1281, %vector.body1272 ], [ 0, %vector.main.loop.iter.check1268 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_Z10gmx_anaeigiPPc:bb.a
  %indvars.iv718.i = phi i64 [ %indvars.iv.next719.i, %scalar.ph1299 ], [ %indvars.iv718.i.ph, %scalar.ph1299.preheader ] ; 2 uses
  %i.bzl = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %indvars.iv718.i
  %i.bzm = load i32, ptr %i.bzl, align 4, !tbaa !9
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = getelementptr inbounds [36 x i8], ptr %i.byi, i64 %i.bzn
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzo, i64 24
  %i.bzq = load i32, ptr %i.bzp, align 4, !tbaa !179
  %i.bzr = sext i32 %i.bzq to i64
  %i.bzs = getelementptr inbounds [32 x i8], ptr %i.byh, i64 %i.bzr
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzs, i64 20
  store i8 %i.byg, ptr %i.bzt, align 4, !tbaa !188
  %indvars.iv.next719.i = add nuw nsw i64 %indvars.iv718.i, 1 ; 2 uses
  %exitcond723.not.i = icmp eq i64 %indvars.iv.next719.i, %wide.trip.count722.i
  br i1 %exitcond723.not.i, label %.loopexit.thread.i, label %scalar.ph1299, !llvm.loop !106

.loopexit.thread.i:                               ; preds = %scalar.ph1299, %middle.block1309
  %.pre750812.i = load ptr, ptr %i.n, align 8, !tbaa !15
  br label %.preheader.lr.ph.i

.loopexit.split-lp532.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i.i, %.noexc.i469.i
  %lpad.loopexit.split-lp1368 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %.loopexit.split-lp.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge607.i, %._crit_edge611.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i, %._crit_edge615.i
  %lpad.loopexit.split-lp1371 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %bb.kb
  %.pre750.i = load ptr, ptr %i.n, align 8, !tbaa !15 ; 2 uses
  br i1 %i.bui, label %.preheader.lr.ph.i, label %.loopexit.._crit_edge607_crit_edge.i

.loopexit.._crit_edge607_crit_edge.i:             ; preds = %.loopexit.i
  %.pre751.i = uitofp nneg i32 %.0349608.i to float
  br label %._crit_edge607.i

.preheader.lr.ph.i:                               ; preds = %.loopexit.i, %.loopexit.thread.i
  %.pre750813.i = phi ptr [ %.pre750812.i, %.loopexit.thread.i ], [ %.pre750.i, %.loopexit.i ] ; 2 uses
  %i.bzu = xor i32 %.0349608.i, -1
  %i.bzv = add nsw i32 %i.alv, %i.bzu
  %i.bzw = sitofp i32 %i.bzv to float             ; 3 uses
  %i.bzx = uitofp nneg i32 %.0349608.i to float   ; 4 uses
  %i.bzy = load i32, ptr %i.bxh, align 4, !tbaa !9
  %i.bzz = sext i32 %i.bzy to i64
  %i.caa = getelementptr inbounds [8 x i8], ptr %i.ame, i64 %i.bzz
  %i.cab = load ptr, ptr %i.caa, align 8, !tbaa !15
  br label %.preheader.i377

.preheader.i377:                                  ; preds = %.preheader.i377, %.preheader.lr.ph.i
  %indvars.iv729.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next730.i, %.preheader.i377 ] ; 5 uses
  %i.cac = getelementptr inbounds nuw [12 x i8], ptr %i.amc, i64 %indvars.iv729.i ; 3 uses
  %i.cad = getelementptr inbounds nuw [12 x i8], ptr %i.cab, i64 %indvars.iv729.i ; 3 uses
  %i.cae = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv729.i ; 3 uses
  %i.caf = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %indvars.iv729.i
  %i.cag = load i32, ptr %i.caf, align 4, !tbaa !9
  %i.cah = sext i32 %i.cag to i64
  %i.cai = getelementptr inbounds [12 x i8], ptr %.pre750813.i, i64 %i.cah ; 3 uses
  %i.caj = load float, ptr %i.cac, align 4, !tbaa !28
  %i.cak = load float, ptr %i.byd, align 4, !tbaa !28
  %i.cal = load float, ptr %i.bye, align 4, !tbaa !28
  %i.cam = fmul float %i.cal, %i.bzx
  %i.can = call float @llvm.fmuladd.f32(float %i.cak, float %i.bzw, float %i.cam)
  %i.cao = fdiv float %i.can, %i.buk
  %i.cap = load float, ptr %i.cad, align 4, !tbaa !28
  %i.caq = fmul float %i.cap, %i.cao
  %i.car = load float, ptr %i.cae, align 4, !tbaa !28
  %i.cas = fdiv float %i.caq, %i.car
  %i.cat = fadd float %i.caj, %i.cas
  store float %i.cat, ptr %i.cai, align 4, !tbaa !28
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cac, i64 4
  %i.cav = load float, ptr %i.cau, align 4, !tbaa !28
  %i.caw = load float, ptr %i.byd, align 4, !tbaa !28
  %i.cax = load float, ptr %i.bye, align 4, !tbaa !28
  %i.cay = fmul float %i.cax, %i.bzx
  %i.caz = call float @llvm.fmuladd.f32(float %i.caw, float %i.bzw, float %i.cay)
  %i.cba = fdiv float %i.caz, %i.buk
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cad, i64 4
  %i.cbc = load float, ptr %i.cbb, align 4, !tbaa !28
  %i.cbd = fmul float %i.cbc, %i.cba
  %i.cbe = load float, ptr %i.cae, align 4, !tbaa !28
  %i.cbf = fdiv float %i.cbd, %i.cbe
  %i.cbg = fadd float %i.cav, %i.cbf
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cai, i64 4
  store float %i.cbg, ptr %i.cbh, align 4, !tbaa !28
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cac, i64 8
  %i.cbj = load float, ptr %i.cbi, align 4, !tbaa !28
  %i.cbk = load float, ptr %i.byd, align 4, !tbaa !28
  %i.cbl = load float, ptr %i.bye, align 4, !tbaa !28
  %i.cbm = fmul float %i.cbl, %i.bzx
  %i.cbn = call float @llvm.fmuladd.f32(float %i.cbk, float %i.bzw, float %i.cbm)
  %i.cbo = fdiv float %i.cbn, %i.buk
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cad, i64 8
  %i.cbq = load float, ptr %i.cbp, align 4, !tbaa !28
  %i.cbr = fmul float %i.cbq, %i.cbo
  %i.cbs = load float, ptr %i.cae, align 4, !tbaa !28
  %i.cbt = fdiv float %i.cbr, %i.cbs
  %i.cbu = fadd float %i.cbj, %i.cbt
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cai, i64 8
  store float %i.cbu, ptr %i.cbv, align 4, !tbaa !28
  %indvars.iv.next730.i = add nuw nsw i64 %indvars.iv729.i, 1 ; 2 uses
  %exitcond734.not.i = icmp eq i64 %indvars.iv.next730.i, %wide.trip.count722.i
  br i1 %exitcond734.not.i, label %._crit_edge607.i, label %.preheader.i377, !llvm.loop !107

._crit_edge607.i:                                 ; preds = %.preheader.i377, %.loopexit.._crit_edge607_crit_edge.i
  %.pre750814.i = phi ptr [ %.pre750.i, %.loopexit.._crit_edge607_crit_edge.i ], [ %.pre750813.i, %.preheader.i377 ]
  %.pre-phi.i = phi float [ %.pre751.i, %.loopexit.._crit_edge607_crit_edge.i ], [ %i.bzx, %.preheader.i377 ]
  %i.cbw = invoke noundef i32 @_Z9write_trxP11t_trxstatusiPKiPK7t_atomsifPA3_fS7_S7_P12gmx_conect_t(ptr noundef %i.byc, i32 noundef %i.alw, ptr noundef %i.alx, ptr noundef %.0243, i32 noundef 0, float noundef %.pre-phi.i, ptr noundef nonnull %i.am, ptr noundef %.pre750814.i, ptr noundef null, ptr noundef null)
          to label %bb.kc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.kc:                                            ; preds = %._crit_edge607.i
  %i.cbx = add nuw nsw i32 %.0349608.i, 1         ; 2 uses
  %exitcond735.not.i = icmp eq i32 %i.cbx, %i.alv
  br i1 %exitcond735.not.i, label %._crit_edge611.i, label %bb.kb, !llvm.loop !108

._crit_edge611.i:                                 ; preds = %bb.kc, %.preheader529.i
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.byc)
          to label %bb.kd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kd:                                            ; preds = %._crit_edge611.i
  %indvars.iv.next737.i = add nuw nsw i64 %indvars.iv736.i, 1 ; 2 uses
  %exitcond741.not.i = icmp eq i64 %indvars.iv.next737.i, %wide.trip.count740.i
  br i1 %exitcond741.not.i, label %._crit_edge615.i, label %bb.je, !llvm.loop !109

._crit_edge615.i:                                 ; preds = %bb.kd, %.loopexit540.thread.i, %.noexc428
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.111, i32 noundef 891, ptr noundef %i.brb)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i:         ; preds = %._crit_edge615.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.111, i32 noundef 892, ptr noundef %i.brc)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit477.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit477.i:      ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i
  %i.cby = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.cbz = load ptr, ptr %i.cby, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i478.i = icmp eq ptr %i.cbz, null
  br i1 %.not.i.i.i478.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i479.i, label %bb.ke

bb.ke:                                            ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit477.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cby, ptr noundef nonnull %i.cbz) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i479.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i479.i: ; preds = %bb.ke, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit477.i
  %i.cca = load ptr, ptr %20, align 8, !tbaa !25  ; 2 uses
  %i.ccb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ccc = icmp eq ptr %i.cca, %i.ccb
  br i1 %i.ccc, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit482.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i479.i
  %i.ccd = load i64, ptr %i.ccb, align 8, !tbaa !26
  %i.cce = add i64 %i.ccd, 1
  call void @_ZdlPvm(ptr noundef %i.cca, i64 noundef %i.cce) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit482.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit482.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i479.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %_ZL7projectPKcPK10t_topology7PbcTypePA3_fS0_S0_S0_S0_S0_iS0_bfiPK7t_atomsiPibS6_iSA_PfPKfS6_SA_PS6_iSA_bPK16gmx_output_env_t.exit

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp532.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jv
  %.pn406.i = phi { ptr, i32 } [ %.pn404.i, %bb.jv ], [ %lpad.loopexit.split-lp1368, %.loopexit.split-lp532.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1371, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.kf

bb.kf:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %bb.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.i, %bb.gi, %bb.gh, %bb.gb
  %.pn411.i = phi { ptr, i32 } [ %i.anr, %bb.gi ], [ %.pn409.i, %bb.ix ], [ %.pn406.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.i ], [ %i.bhj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.i ], [ %i.anq, %bb.gh ], [ %i.ane, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  br label %.body

_ZL7projectPKcPK10t_topology7PbcTypePA3_fS0_S0_S0_S0_S0_iS0_bfiPK7t_atomsiPibS6_iSA_PfPKfS6_SA_PS6_iSA_bPK16gmx_output_env_t.exit: ; preds = %bb.iy, %_ZNSt10filesystem7__cxx114pathD2Ev.exit482.i
  %i.ccf = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc402.i = call i32 @fputc(i32 10, ptr %i.ccf) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.kg

bb.kg:                                            ; preds = %_ZL7projectPKcPK10t_topology7PbcTypePA3_fS0_S0_S0_S0_S0_iS0_bfiPK7t_atomsiPibS6_iSA_PfPKfS6_SA_PS6_iSA_bPK16gmx_output_env_t.exit, %bb.ft
  br i1 %i.fc, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.ccg = load i32, ptr %i.an, align 4, !tbaa !9
  %i.cch = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.cci = load i32, ptr %i.af, align 4, !tbaa !9
  %i.ccj = load ptr, ptr %i.ah, align 8, !tbaa !136
  %i.cck = load ptr, ptr %i.al, align 8, !tbaa !13
  %i.ccl = load ptr, ptr %i.ba, align 8, !tbaa !172
  invoke fastcc void @_ZL7overlapPKciPPA3_fiPiS3_iS4_PK16gmx_output_env_t(ptr noundef %i.eq, i32 noundef %i.ccg, ptr noundef %i.cch, i32 noundef %i.cci, ptr noundef %i.ccj, ptr noundef %i.cck, i32 noundef %.0230.lcssa1005, ptr noundef %i.aei, ptr noundef %i.ccl)
          to label %bb.ki unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  br i1 %i.fg, label %bb.kj, label %bb.lb

bb.kj:                                            ; preds = %bb.ki
  %i.ccm = load i32, ptr %i.an, align 4, !tbaa !9 ; 4 uses
  %i.ccn = load i32, ptr %i.ae, align 4, !tbaa !9 ; 4 uses
  %i.cco = load ptr, ptr %i.ag, align 8, !tbaa !136 ; 3 uses
  %i.ccp = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.ccq = load i32, ptr %i.af, align 4, !tbaa !9 ; 17 uses
  %i.ccr = load ptr, ptr %i.ah, align 8, !tbaa !136 ; 8 uses
  %i.ccs = load ptr, ptr %i.al, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.er, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.cct = sext i32 %i.ccq to i64
  %i.ccu = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.111, i32 noundef 352, i64 noundef range(i64 -2147483648, 2147483648) %i.cct, i64 noundef 4)
          to label %.noexc448 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc448:                                        ; preds = %bb.kj
  br i1 %i.ez, label %.preheader154.i, label %.preheader156.i

.preheader156.i:                                  ; preds = %.noexc448
  %i.ccv = icmp sgt i32 %i.ccq, 0
  br i1 %i.ccv, label %iter.check1327, label %.loopexit155.i

iter.check1327:                                   ; preds = %.preheader156.i
  %wide.trip.count.i443 = zext nneg i32 %i.ccq to i64 ; 6 uses
  %min.iters.check1313 = icmp ult i32 %i.ccq, 4
  br i1 %min.iters.check1313, label %.lr.ph.i444.preheader, label %vector.main.loop.iter.check1314

vector.main.loop.iter.check1314:                  ; preds = %iter.check1327
  %min.iters.check1315 = icmp ult i32 %i.ccq, 32
  br i1 %min.iters.check1315, label %vec.epilog.ph1331, label %vector.ph1316

vector.ph1316:                                    ; preds = %vector.main.loop.iter.check1314
  %i.ccw = and i64 %wide.trip.count.i443, 28
  %n.vec1317 = and i64 %wide.trip.count.i443, 2147483616 ; 4 uses
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.ph1316, %vector.body1318
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1324, %vector.body1318 ] ; 3 uses
  %i.ccx = getelementptr inbounds nuw [4 x i8], ptr %i.ccr, i64 %index1319 ; 4 uses
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccx, i64 32
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.ccx, i64 64
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccx, i64 96
  %wide.load1320 = load <8 x i32>, ptr %i.ccx, align 4, !tbaa !9
  %wide.load1321 = load <8 x i32>, ptr %i.ccy, align 4, !tbaa !9
  %wide.load1322 = load <8 x i32>, ptr %i.ccz, align 4, !tbaa !9
  %wide.load1323 = load <8 x i32>, ptr %i.cda, align 4, !tbaa !9
  %i.cdb = add nsw <8 x i32> %wide.load1320, splat (i32 1)
  %i.cdc = add nsw <8 x i32> %wide.load1321, splat (i32 1)
  %i.cdd = add nsw <8 x i32> %wide.load1322, splat (i32 1)
  %i.cde = add nsw <8 x i32> %wide.load1323, splat (i32 1)
  %i.cdf = sitofp <8 x i32> %i.cdb to <8 x float>
  %i.cdg = sitofp <8 x i32> %i.cdc to <8 x float>
  %i.cdh = sitofp <8 x i32> %i.cdd to <8 x float>
  %i.cdi = sitofp <8 x i32> %i.cde to <8 x float>
  %i.cdj = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %index1319 ; 4 uses
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 32
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdj, i64 64
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdj, i64 96
  store <8 x float> %i.cdf, ptr %i.cdj, align 4, !tbaa !28
  store <8 x float> %i.cdg, ptr %i.cdk, align 4, !tbaa !28
  store <8 x float> %i.cdh, ptr %i.cdl, align 4, !tbaa !28
  store <8 x float> %i.cdi, ptr %i.cdm, align 4, !tbaa !28
  %index.next1324 = add nuw i64 %index1319, 32    ; 2 uses
  %i.cdn = icmp eq i64 %index.next1324, %n.vec1317
  br i1 %i.cdn, label %middle.block1325, label %vector.body1318, !llvm.loop !110

middle.block1325:                                 ; preds = %vector.body1318
  %cmp.n1326 = icmp eq i64 %n.vec1317, %wide.trip.count.i443
  br i1 %cmp.n1326, label %.loopexit155.i, label %vec.epilog.iter.check1328

vec.epilog.iter.check1328:                        ; preds = %middle.block1325
  %min.epilog.iters.check1330 = icmp eq i64 %i.ccw, 0
  br i1 %min.epilog.iters.check1330, label %.lr.ph.i444.preheader, label %vec.epilog.ph1331, !prof !170

vec.epilog.ph1331:                                ; preds = %vector.main.loop.iter.check1314, %vec.epilog.iter.check1328
  %vec.epilog.resume.val1332 = phi i64 [ %n.vec1317, %vec.epilog.iter.check1328 ], [ 0, %vector.main.loop.iter.check1314 ]
  %n.vec1333 = and i64 %wide.trip.count.i443, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1334

vec.epilog.vector.body1334:                       ; preds = %vec.epilog.vector.body1334, %vec.epilog.ph1331
  %index1335 = phi i64 [ %vec.epilog.resume.val1332, %vec.epilog.ph1331 ], [ %index.next1337, %vec.epilog.vector.body1334 ] ; 3 uses
  %i.cdo = getelementptr inbounds nuw [4 x i8], ptr %i.ccr, i64 %index1335
  %wide.load1336 = load <4 x i32>, ptr %i.cdo, align 4, !tbaa !9
  %i.cdp = add nsw <4 x i32> %wide.load1336, splat (i32 1)
  %i.cdq = sitofp <4 x i32> %i.cdp to <4 x float>
  %i.cdr = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %index1335
  store <4 x float> %i.cdq, ptr %i.cdr, align 4, !tbaa !28
  %index.next1337 = add nuw i64 %index1335, 4     ; 2 uses
  %i.cds = icmp eq i64 %index.next1337, %n.vec1333
  br i1 %i.cds, label %vec.epilog.middle.block1338, label %vec.epilog.vector.body1334, !llvm.loop !111

vec.epilog.middle.block1338:                      ; preds = %vec.epilog.vector.body1334
  %cmp.n1339 = icmp eq i64 %n.vec1333, %wide.trip.count.i443
  br i1 %cmp.n1339, label %.loopexit155.i, label %.lr.ph.i444.preheader

.lr.ph.i444.preheader:                            ; preds = %iter.check1327, %vec.epilog.iter.check1328, %vec.epilog.middle.block1338
  %indvars.iv.i445.ph = phi i64 [ 0, %iter.check1327 ], [ %n.vec1317, %vec.epilog.iter.check1328 ], [ %n.vec1333, %vec.epilog.middle.block1338 ]
  br label %.lr.ph.i444

.preheader154.i:                                  ; preds = %.noexc448
  %i.cdt = icmp sgt i32 %.0230.lcssa1005, 0
  br i1 %i.cdt, label %.lr.ph161.preheader.i, label %.loopexit155.i

.lr.ph161.preheader.i:                            ; preds = %.preheader154.i
  %wide.trip.count209.i = zext nneg i32 %.0230.lcssa1005 to i64 ; 2 uses
  %xtraiter1519 = and i64 %wide.trip.count209.i, 3 ; 3 uses
  %i.cdu = add nsw i32 %.0230.lcssa1005, -1
  %i.cdv = icmp ult i32 %i.cdu, 3
  br i1 %i.cdv, label %.lr.ph161.i.epil.preheader, label %.lr.ph161.preheader.i.new

.lr.ph161.preheader.i.new:                        ; preds = %.lr.ph161.preheader.i
  %unroll_iter1524 = and i64 %wide.trip.count209.i, 2147483644
  br label %.lr.ph161.i

.lr.ph161.i:                                      ; preds = %bb.ko, %.lr.ph161.preheader.i.new
  %indvars.iv206.i = phi i64 [ 0, %.lr.ph161.preheader.i.new ], [ %indvars.iv.next207.i.3, %bb.ko ] ; 5 uses
  %.084160.i = phi i32 [ 0, %.lr.ph161.preheader.i.new ], [ %.185.i.3, %bb.ko ] ; 3 uses
  %niter1525 = phi i64 [ 0, %.lr.ph161.preheader.i.new ], [ %niter1525.next.3, %bb.ko ]
  %i.cdw = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv206.i
  %i.cdx = load i32, ptr %i.cdw, align 4, !tbaa !9 ; 2 uses
  %i.cdy = icmp slt i32 %i.cdx, %i.ccq
  br i1 %i.cdy, label %bb.kk, label %.lr.ph161.i.1

bb.kk:                                            ; preds = %.lr.ph161.i
  %i.cdz = sext i32 %i.cdx to i64
  %i.cea = getelementptr inbounds [4 x i8], ptr %i.ccr, i64 %i.cdz
  %i.ceb = load i32, ptr %i.cea, align 4, !tbaa !9
  %i.cec = add nsw i32 %i.ceb, 1
  %i.ced = sitofp i32 %i.cec to float
  %i.cee = sext i32 %.084160.i to i64
  %i.cef = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cee
  store float %i.ced, ptr %i.cef, align 4, !tbaa !28
  %i.ceg = add i32 %.084160.i, 1
  br label %.lr.ph161.i.1

.lr.ph161.i.1:                                    ; preds = %bb.kk, %.lr.ph161.i
  %.185.i = phi i32 [ %i.ceg, %bb.kk ], [ %.084160.i, %.lr.ph161.i ] ; 3 uses
  %i.ceh = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv206.i
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ceh, i64 4
  %i.cej = load i32, ptr %i.cei, align 4, !tbaa !9 ; 2 uses
  %i.cek = icmp slt i32 %i.cej, %i.ccq
  br i1 %i.cek, label %bb.kl, label %.lr.ph161.i.2

bb.kl:                                            ; preds = %.lr.ph161.i.1
  %i.cel = sext i32 %i.cej to i64
  %i.cem = getelementptr inbounds [4 x i8], ptr %i.ccr, i64 %i.cel
  %i.cen = load i32, ptr %i.cem, align 4, !tbaa !9
  %i.ceo = add nsw i32 %i.cen, 1
  %i.cep = sitofp i32 %i.ceo to float
  %i.ceq = sext i32 %.185.i to i64
  %i.cer = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.ceq
  store float %i.cep, ptr %i.cer, align 4, !tbaa !28
  %i.ces = add i32 %.185.i, 1
  br label %.lr.ph161.i.2

.lr.ph161.i.2:                                    ; preds = %bb.kl, %.lr.ph161.i.1
  %.185.i.1 = phi i32 [ %i.ces, %bb.kl ], [ %.185.i, %.lr.ph161.i.1 ] ; 3 uses
  %i.cet = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv206.i
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cet, i64 8
  %i.cev = load i32, ptr %i.ceu, align 4, !tbaa !9 ; 2 uses
  %i.cew = icmp slt i32 %i.cev, %i.ccq
  br i1 %i.cew, label %bb.km, label %.lr.ph161.i.3

bb.km:                                            ; preds = %.lr.ph161.i.2
  %i.cex = sext i32 %i.cev to i64
  %i.cey = getelementptr inbounds [4 x i8], ptr %i.ccr, i64 %i.cex
  %i.cez = load i32, ptr %i.cey, align 4, !tbaa !9
  %i.cfa = add nsw i32 %i.cez, 1
  %i.cfb = sitofp i32 %i.cfa to float
  %i.cfc = sext i32 %.185.i.1 to i64
  %i.cfd = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cfc
  store float %i.cfb, ptr %i.cfd, align 4, !tbaa !28
  %i.cfe = add i32 %.185.i.1, 1
  br label %.lr.ph161.i.3

.lr.ph161.i.3:                                    ; preds = %bb.km, %.lr.ph161.i.2
  %.185.i.2 = phi i32 [ %i.cfe, %bb.km ], [ %.185.i.1, %.lr.ph161.i.2 ] ; 3 uses
  %i.cff = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv206.i
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cff, i64 12
  %i.cfh = load i32, ptr %i.cfg, align 4, !tbaa !9 ; 2 uses
  %i.cfi = icmp slt i32 %i.cfh, %i.ccq
  br i1 %i.cfi, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %.lr.ph161.i.3
  %i.cfj = sext i32 %i.cfh to i64
  %i.cfk = getelementptr inbounds [4 x i8], ptr %i.ccr, i64 %i.cfj
  %i.cfl = load i32, ptr %i.cfk, align 4, !tbaa !9
  %i.cfm = add nsw i32 %i.cfl, 1
  %i.cfn = sitofp i32 %i.cfm to float
  %i.cfo = sext i32 %.185.i.2 to i64
  %i.cfp = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cfo
  store float %i.cfn, ptr %i.cfp, align 4, !tbaa !28
  %i.cfq = add i32 %.185.i.2, 1
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %.lr.ph161.i.3
  %.185.i.3 = phi i32 [ %i.cfq, %bb.kn ], [ %.185.i.2, %.lr.ph161.i.3 ] ; 3 uses
  %indvars.iv.next207.i.3 = add nuw nsw i64 %indvars.iv206.i, 4 ; 2 uses
  %niter1525.next.3 = add i64 %niter1525, 4       ; 2 uses
  %niter1525.ncmp.3 = icmp eq i64 %niter1525.next.3, %unroll_iter1524
  br i1 %niter1525.ncmp.3, label %.loopexit155.i.loopexit.unr-lcssa, label %.lr.ph161.i, !llvm.loop !112

.lr.ph.i444:                                      ; preds = %.lr.ph.i444.preheader, %.lr.ph.i444
  %indvars.iv.i445 = phi i64 [ %indvars.iv.next.i446, %.lr.ph.i444 ], [ %indvars.iv.i445.ph, %.lr.ph.i444.preheader ] ; 3 uses
  %i.cfr = getelementptr inbounds nuw [4 x i8], ptr %i.ccr, i64 %indvars.iv.i445
  %i.cfs = load i32, ptr %i.cfr, align 4, !tbaa !9
  %i.cft = add nsw i32 %i.cfs, 1
  %i.cfu = sitofp i32 %i.cft to float
  %i.cfv = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %indvars.iv.i445
  store float %i.cfu, ptr %i.cfv, align 4, !tbaa !28
  %indvars.iv.next.i446 = add nuw nsw i64 %indvars.iv.i445, 1 ; 2 uses
  %exitcond.not.i447 = icmp eq i64 %indvars.iv.next.i446, %wide.trip.count.i443
  br i1 %exitcond.not.i447, label %.loopexit155.i, label %.lr.ph.i444, !llvm.loop !113

.loopexit155.i.loopexit.unr-lcssa:                ; preds = %bb.ko
  %lcmp.mod1521.not = icmp eq i64 %xtraiter1519, 0
  br i1 %lcmp.mod1521.not, label %.loopexit155.i, label %.lr.ph161.i.epil.preheader

.lr.ph161.i.epil.preheader:                       ; preds = %.loopexit155.i.loopexit.unr-lcssa, %.lr.ph161.preheader.i
  %indvars.iv206.i.epil.init = phi i64 [ 0, %.lr.ph161.preheader.i ], [ %indvars.iv.next207.i.3, %.loopexit155.i.loopexit.unr-lcssa ]
  %.084160.i.epil.init = phi i32 [ 0, %.lr.ph161.preheader.i ], [ %.185.i.3, %.loopexit155.i.loopexit.unr-lcssa ]
  %lcmp.mod1523 = icmp ne i64 %xtraiter1519, 0
  call void @llvm.assume(i1 %lcmp.mod1523)
  br label %.lr.ph161.i.epil

.lr.ph161.i.epil:                                 ; preds = %bb.kq, %.lr.ph161.i.epil.preheader
  %indvars.iv206.i.epil = phi i64 [ %indvars.iv206.i.epil.init, %.lr.ph161.i.epil.preheader ], [ %indvars.iv.next207.i.epil, %bb.kq ] ; 2 uses
  %.084160.i.epil = phi i32 [ %.084160.i.epil.init, %.lr.ph161.i.epil.preheader ], [ %.185.i.epil, %bb.kq ] ; 3 uses
  %epil.iter1520 = phi i64 [ 0, %.lr.ph161.i.epil.preheader ], [ %epil.iter1520.next, %bb.kq ]
  %i.cfw = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv206.i.epil
  %i.cfx = load i32, ptr %i.cfw, align 4, !tbaa !9 ; 2 uses
  %i.cfy = icmp slt i32 %i.cfx, %i.ccq
  br i1 %i.cfy, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %.lr.ph161.i.epil
  %i.cfz = sext i32 %i.cfx to i64
  %i.cga = getelementptr inbounds [4 x i8], ptr %i.ccr, i64 %i.cfz
  %i.cgb = load i32, ptr %i.cga, align 4, !tbaa !9
  %i.cgc = add nsw i32 %i.cgb, 1
  %i.cgd = sitofp i32 %i.cgc to float
  %i.cge = sext i32 %.084160.i.epil to i64
  %i.cgf = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cge
  store float %i.cgd, ptr %i.cgf, align 4, !tbaa !28
  %i.cgg = add i32 %.084160.i.epil, 1
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %.lr.ph161.i.epil
  %.185.i.epil = phi i32 [ %i.cgg, %bb.kp ], [ %.084160.i.epil, %.lr.ph161.i.epil ] ; 2 uses
  %indvars.iv.next207.i.epil = add nuw nsw i64 %indvars.iv206.i.epil, 1
  %epil.iter1520.next = add i64 %epil.iter1520, 1 ; 2 uses
  %epil.iter1520.cmp.not = icmp eq i64 %epil.iter1520.next, %xtraiter1519
  br i1 %epil.iter1520.cmp.not, label %.loopexit155.i, label %.lr.ph161.i.epil, !llvm.loop !114

.loopexit155.i:                                   ; preds = %.lr.ph.i444, %.loopexit155.i.loopexit.unr-lcssa, %bb.kq, %middle.block1325, %vec.epilog.middle.block1338, %.preheader154.i, %.preheader156.i
  %.087.i = phi i32 [ %.0230.lcssa1005, %.preheader154.i ], [ %i.ccn, %.preheader156.i ], [ %i.ccn, %middle.block1325 ], [ %.0230.lcssa1005, %.loopexit155.i.loopexit.unr-lcssa ], [ %i.ccn, %vec.epilog.middle.block1338 ], [ %.0230.lcssa1005, %bb.kq ], [ %i.ccn, %.lr.ph.i444 ] ; 6 uses
  %.286.i = phi i32 [ 0, %.preheader154.i ], [ %i.ccq, %.preheader156.i ], [ %i.ccq, %middle.block1325 ], [ %.185.i.epil, %bb.kq ], [ %i.ccq, %vec.epilog.middle.block1338 ], [ %.185.i.3, %.loopexit155.i.loopexit.unr-lcssa ], [ %i.ccq, %.lr.ph.i444 ] ; 7 uses
  %i.cgh = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.cgi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cgh, ptr noundef nonnull @.str.233, i32 noundef %.087.i, i32 noundef %i.ccq) #24 ; 0 uses
  %i.cgj = sext i32 %.087.i to i64                ; 2 uses
  %i.cgk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.111, i32 noundef 378, i64 noundef range(i64 -2147483648, 2147483648) %i.cgj, i64 noundef 8)
          to label %.noexc449 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc449:                                        ; preds = %.loopexit155.i
  %i.cgl = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.111, i32 noundef 379, i64 noundef range(i64 -2147483648, 2147483648) %i.cgj, i64 noundef 4)
          to label %.noexc450 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc450:                                        ; preds = %.noexc449
  %i.cgm = icmp sgt i32 %.087.i, 0
  br i1 %i.cgm, label %.lr.ph185.i, label %._crit_edge.i431

.lr.ph185.i:                                      ; preds = %.noexc450
  %i.cgn = sext i32 %.286.i to i64                ; 3 uses
  %i.cgo = icmp sgt i32 %.286.i, 0
end_hunk_2
begin_hunk_3_@_Z10gmx_anaeigiPPc:bb.a
  %i.cwb = load float, ptr %i.cvz, align 4, !tbaa !28
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.cvy, i64 4
  %i.cwd = load float, ptr %i.cwc, align 4, !tbaa !28
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.cvz, i64 4
  %i.cwf = load float, ptr %i.cwe, align 4, !tbaa !28
  %i.cwg = fmul float %i.cwd, %i.cwf
  %i.cwh = call float @llvm.fmuladd.f32(float %i.cwa, float %i.cwb, float %i.cwg)
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cvy, i64 8
  %i.cwj = load float, ptr %i.cwi, align 4, !tbaa !28
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cvz, i64 8
  %i.cwl = load float, ptr %i.cwk, align 4, !tbaa !28
  %i.cwm = call noundef float @llvm.fmuladd.f32(float %i.cwj, float %i.cwl, float %i.cwh)
  %i.cwn = fpext float %i.cwm to double
  %i.cwo = fadd double %i.cvx, %i.cwn             ; 3 uses
  %indvars.iv.next205.i.1 = add nuw nsw i64 %indvars.iv204.i, 2 ; 2 uses
  %niter1575.next.1 = add i64 %niter1575, 2       ; 2 uses
  %niter1575.ncmp.1 = icmp eq i64 %niter1575.next.1, %unroll_iter1574
  br i1 %niter1575.ncmp.1, label %._crit_edge150.us.us.us.i.unr-lcssa, label %.preheader.us.us.us.i.new, !llvm.loop !128

._crit_edge150.us.us.us.i.unr-lcssa:              ; preds = %.preheader.us.us.us.i.new
  br i1 %lcmp.mod1571.not, label %._crit_edge150.us.us.us.i, label %.epil.preheader1568

.epil.preheader1568:                              ; preds = %._crit_edge150.us.us.us.i.unr-lcssa, %.preheader.us.us.us.i
  %indvars.iv204.i.epil.init = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next205.i.1, %._crit_edge150.us.us.us.i.unr-lcssa ] ; 2 uses
  %.0148.us.us.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.us.i ], [ %i.cwo, %._crit_edge150.us.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1573)
  %i.cwp = getelementptr inbounds nuw [12 x i8], ptr %i.cve, i64 %indvars.iv204.i.epil.init ; 3 uses
  %i.cwq = getelementptr inbounds nuw [12 x i8], ptr %i.cvg, i64 %indvars.iv204.i.epil.init ; 3 uses
  %i.cwr = load float, ptr %i.cwp, align 4, !tbaa !28
  %i.cws = load float, ptr %i.cwq, align 4, !tbaa !28
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cwp, i64 4
  %i.cwu = load float, ptr %i.cwt, align 4, !tbaa !28
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwq, i64 4
  %i.cww = load float, ptr %i.cwv, align 4, !tbaa !28
  %i.cwx = fmul float %i.cwu, %i.cww
  %i.cwy = call float @llvm.fmuladd.f32(float %i.cwr, float %i.cws, float %i.cwx)
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.cwp, i64 8
  %i.cxa = load float, ptr %i.cwz, align 4, !tbaa !28
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cwq, i64 8
  %i.cxc = load float, ptr %i.cxb, align 4, !tbaa !28
  %i.cxd = call noundef float @llvm.fmuladd.f32(float %i.cxa, float %i.cxc, float %i.cwy)
  %i.cxe = fpext float %i.cxd to double
  %i.cxf = fadd double %.0148.us.us.us.i.epil.init, %i.cxe
  br label %._crit_edge150.us.us.us.i

._crit_edge150.us.us.us.i:                        ; preds = %._crit_edge150.us.us.us.i.unr-lcssa, %.epil.preheader1568
  %.lcssa = phi double [ %i.cwo, %._crit_edge150.us.us.us.i.unr-lcssa ], [ %i.cxf, %.epil.preheader1568 ] ; 2 uses
  %i.cxg = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %indvars.iv209.i
  %i.cxh = load float, ptr %i.cxg, align 4, !tbaa !28
  %i.cxi = fpext float %i.cxh to double
  %i.cxj = fmul double %.lcssa, %i.cxi
  %i.cxk = call double @llvm.fmuladd.f64(double %i.cxj, double %.lcssa, double %.082153.us.us.us.i) ; 2 uses
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 2 uses
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next210.i, %wide.trip.count217.i
  br i1 %exitcond213.not.i, label %._crit_edge154.split.us.us.us.i, label %.preheader.us.us.us.i, !llvm.loop !129

._crit_edge154.split.us.us.us.i:                  ; preds = %._crit_edge150.us.us.us.i
  %i.cxl = getelementptr inbounds nuw [4 x i8], ptr %i.cnk, i64 %indvars.iv214.i
  %i.cxm = load float, ptr %i.cxl, align 4, !tbaa !28
  %i.cxn = fpext float %i.cxm to double
  %i.cxo = call double @llvm.fmuladd.f64(double %i.cxn, double %i.cxk, double %.083157.us.us.i) ; 2 uses
  %indvars.iv.next215.i = add nuw nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %exitcond218.not.i = icmp eq i64 %indvars.iv.next215.i, %wide.trip.count217.i
  br i1 %exitcond218.not.i, label %_ZL7compareiiPPA3_fiS1_PfiS2_i.exit, label %.preheader128.us.us.i, !llvm.loop !130

.preheader128.us.i:                               ; preds = %.preheader128.us.i.preheader, %._crit_edge154.split.us164.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %._crit_edge154.split.us164.i ], [ 0, %.preheader128.us.i.preheader ] ; 2 uses
  %.083157.us.i = phi double [ %i.czs, %._crit_edge154.split.us164.i ], [ 0.000000e+00, %.preheader128.us.i.preheader ]
  br i1 %i.cvb, label %.preheader.us161.i.epil.preheader, label %.preheader.us161.i

.preheader.us161.i:                               ; preds = %.preheader128.us.i, %.preheader.us161.i
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i.7, %.preheader.us161.i ], [ 0, %.preheader128.us.i ] ; 9 uses
  %.082153.us162.i = phi double [ %i.czj, %.preheader.us161.i ], [ 0.000000e+00, %.preheader128.us.i ]
  %niter1567 = phi i64 [ %niter1567.next.7, %.preheader.us161.i ], [ 0, %.preheader128.us.i ]
  %i.cxp = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %indvars.iv194.i
  %i.cxq = load float, ptr %i.cxp, align 4, !tbaa !28
  %i.cxr = fpext float %i.cxq to double
  %i.cxs = fmul double %i.cxr, 0.000000e+00
  %i.cxt = call double @llvm.fmuladd.f64(double %i.cxs, double 0.000000e+00, double %.082153.us162.i)
  %i.cxu = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %indvars.iv194.i
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxu, i64 4
  %i.cxw = load float, ptr %i.cxv, align 4, !tbaa !28
  %i.cxx = fpext float %i.cxw to double
  %i.cxy = fmul double %i.cxx, 0.000000e+00
  %i.cxz = call double @llvm.fmuladd.f64(double %i.cxy, double 0.000000e+00, double %i.cxt)
  %i.cya = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %indvars.iv194.i
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cya, i64 8
  %i.cyc = load float, ptr %i.cyb, align 4, !tbaa !28
  %i.cyd = fpext float %i.cyc to double
  %i.cye = fmul double %i.cyd, 0.000000e+00
  %i.cyf = call double @llvm.fmuladd.f64(double %i.cye, double 0.000000e+00, double %i.cxz)
  %i.cyg = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %indvars.iv194.i
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cyg, i64 12
  %i.cyi = load float, ptr %i.cyh, align 4, !tbaa !28
  %i.cyj = fpext float %i.cyi to double
  %i.cyk = fmul double %i.cyj, 0.000000e+00
  %i.cyl = call double @llvm.fmuladd.f64(double %i.cyk, double 0.000000e+00, double %i.cyf)
  %i.cym = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %indvars.iv194.i
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cym, i64 16
  %i.cyo = load float, ptr %i.cyn, align 4, !tbaa !28
  %i.cyp = fpext float %i.cyo to double
  %i.cyq = fmul double %i.cyp, 0.000000e+00
  %i.cyr = call double @llvm.fmuladd.f64(double %i.cyq, double 0.000000e+00, double %i.cyl)
  %i.cys = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %indvars.iv194.i
  %i.cyt = getelementptr inbounds nuw i8, ptr %i.cys, i64 20
  %i.cyu = load float, ptr %i.cyt, align 4, !tbaa !28
  %i.cyv = fpext float %i.cyu to double
  %i.cyw = fmul double %i.cyv, 0.000000e+00
  %i.cyx = call double @llvm.fmuladd.f64(double %i.cyw, double 0.000000e+00, double %i.cyr)
  %i.cyy = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %indvars.iv194.i
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyy, i64 24
  %i.cza = load float, ptr %i.cyz, align 4, !tbaa !28
  %i.czb = fpext float %i.cza to double
  %i.czc = fmul double %i.czb, 0.000000e+00
  %i.czd = call double @llvm.fmuladd.f64(double %i.czc, double 0.000000e+00, double %i.cyx)
  %i.cze = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %indvars.iv194.i
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cze, i64 28
  %i.czg = load float, ptr %i.czf, align 4, !tbaa !28
  %i.czh = fpext float %i.czg to double
  %i.czi = fmul double %i.czh, 0.000000e+00
  %i.czj = call double @llvm.fmuladd.f64(double %i.czi, double 0.000000e+00, double %i.czd) ; 3 uses
  %indvars.iv.next195.i.7 = add nuw nsw i64 %indvars.iv194.i, 8 ; 2 uses
  %niter1567.next.7 = add i64 %niter1567, 8       ; 2 uses
  %niter1567.ncmp.7 = icmp eq i64 %niter1567.next.7, %unroll_iter1566
  br i1 %niter1567.ncmp.7, label %._crit_edge154.split.us164.i.unr-lcssa, label %.preheader.us161.i, !llvm.loop !129

._crit_edge154.split.us164.i.unr-lcssa:           ; preds = %.preheader.us161.i
  br i1 %lcmp.mod1563.not, label %._crit_edge154.split.us164.i, label %.preheader.us161.i.epil.preheader

.preheader.us161.i.epil.preheader:                ; preds = %._crit_edge154.split.us164.i.unr-lcssa, %.preheader128.us.i
  %indvars.iv194.i.epil.init = phi i64 [ 0, %.preheader128.us.i ], [ %indvars.iv.next195.i.7, %._crit_edge154.split.us164.i.unr-lcssa ]
  %.082153.us162.i.epil.init = phi double [ 0.000000e+00, %.preheader128.us.i ], [ %i.czj, %._crit_edge154.split.us164.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1565)
  br label %.preheader.us161.i.epil

.preheader.us161.i.epil:                          ; preds = %.preheader.us161.i.epil, %.preheader.us161.i.epil.preheader
  %indvars.iv194.i.epil = phi i64 [ %indvars.iv.next195.i.epil, %.preheader.us161.i.epil ], [ %indvars.iv194.i.epil.init, %.preheader.us161.i.epil.preheader ] ; 2 uses
  %.082153.us162.i.epil = phi double [ %i.czo, %.preheader.us161.i.epil ], [ %.082153.us162.i.epil.init, %.preheader.us161.i.epil.preheader ]
  %epil.iter1562 = phi i64 [ %epil.iter1562.next, %.preheader.us161.i.epil ], [ 0, %.preheader.us161.i.epil.preheader ]
  %i.czk = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %indvars.iv194.i.epil
  %i.czl = load float, ptr %i.czk, align 4, !tbaa !28
  %i.czm = fpext float %i.czl to double
  %i.czn = fmul double %i.czm, 0.000000e+00
  %i.czo = call double @llvm.fmuladd.f64(double %i.czn, double 0.000000e+00, double %.082153.us162.i.epil) ; 2 uses
  %indvars.iv.next195.i.epil = add nuw nsw i64 %indvars.iv194.i.epil, 1
  %epil.iter1562.next = add i64 %epil.iter1562, 1 ; 2 uses
  %epil.iter1562.cmp.not = icmp eq i64 %epil.iter1562.next, %xtraiter1561
  br i1 %epil.iter1562.cmp.not, label %._crit_edge154.split.us164.i, label %.preheader.us161.i.epil, !llvm.loop !131

._crit_edge154.split.us164.i:                     ; preds = %.preheader.us161.i.epil, %._crit_edge154.split.us164.i.unr-lcssa
  %.lcssa1346 = phi double [ %i.czj, %._crit_edge154.split.us164.i.unr-lcssa ], [ %i.czo, %.preheader.us161.i.epil ]
  %i.czp = getelementptr inbounds nuw [4 x i8], ptr %i.cnk, i64 %indvars.iv199.i
  %i.czq = load float, ptr %i.czp, align 4, !tbaa !28
  %i.czr = fpext float %i.czq to double
  %i.czs = call double @llvm.fmuladd.f64(double %i.czr, double %.lcssa1346, double %.083157.us.i) ; 2 uses
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %exitcond203.not.i = icmp eq i64 %indvars.iv.next200.i, %wide.trip.count217.i
  br i1 %exitcond203.not.i, label %_ZL7compareiiPPA3_fiS1_PfiS2_i.exit, label %.preheader128.us.i, !llvm.loop !130

_ZL7compareiiPPA3_fiS1_PfiS2_i.exit:              ; preds = %._crit_edge154.split.us164.i, %._crit_edge154.split.us.us.us.i, %bb.le
  %.083.lcssa.i = phi double [ 0.000000e+00, %bb.le ], [ %i.cxo, %._crit_edge154.split.us.us.us.i ], [ %i.czs, %._crit_edge154.split.us164.i ] ; 2 uses
  %i.czt = fadd double %.087.lcssa.i, %.086.lcssa226.i ; 2 uses
  %i.czu = call double @llvm.fmuladd.f64(double %.083.lcssa.i, double -2.000000e+00, double %i.czt) ; 2 uses
  %i.czv = fcmp olt double %i.czu, 0.000000e+00
  %spec.store.select.i = select i1 %i.czv, double 0.000000e+00, double %i.czu
  %i.czw = load ptr, ptr @stdout, align 8, !tbaa !20
  %fwrite.i460 = call i64 @fwrite(ptr nonnull @.str.245, i64 40, i64 1, ptr %i.czw) ; 0 uses
  %i.czx = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.czy = fdiv double %spec.store.select.i, %i.czt
  %i.czz = call double @sqrt(double noundef %i.czy) #23
  %i.daa = fsub double 1.000000e+00, %i.czz
  %i.dab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.czx, ptr noundef nonnull @.str.246, double noundef %i.daa) #23 ; 0 uses
  %i.dac = fmul double %.087.lcssa.i, %.086.lcssa226.i
  %i.dad = call double @sqrt(double noundef %i.dac) #23
  %i.dae = fdiv double %.083.lcssa.i, %i.dad
  %i.daf = fsub double 1.000000e+00, %i.dae       ; 2 uses
  %i.dag = fcmp olt double %i.daf, 0.000000e+00
  %spec.store.select1.i = select i1 %i.dag, double 0.000000e+00, double %i.daf
  %i.dah = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.dai = call double @sqrt(double noundef %spec.store.select1.i) #23
  %i.daj = fsub double 1.000000e+00, %i.dai
  %i.dak = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dah, ptr noundef nonnull @.str.247, double noundef %i.daj) #23 ; 0 uses
  br label %bb.lf

bb.lf:                                            ; preds = %_ZL7compareiiPPA3_fiS1_PfiS2_i.exit, %bb.lb
  %or.cond43 = or i1 %i.fa, %spec.select
  %or.cond45 = or i1 %or.cond43, %i.fc
  %or.cond47 = or i1 %or.cond45, %i.fg
  %or.cond49 = select i1 %or.cond47, i1 true, i1 %i.fo
  %i.dal = load i8, ptr @_ZZ10gmx_anaeigiPPcE8bEntropy, align 1, !range !155
  %i.dam = trunc nuw i8 %i.dal to i1
  %or.cond51 = select i1 %or.cond49, i1 true, i1 %i.dam
  br i1 %or.cond51, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.dan = load ptr, ptr @stderr, align 8, !tbaa !20
  %fwrite = call i64 @fwrite(ptr nonnull @.str.143, i64 77, i64 1, ptr %i.dan) #28 ; 0 uses
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.dao = load ptr, ptr %i.ba, align 8, !tbaa !172
  invoke void @_Z8view_allPK16gmx_output_env_tiP8t_filenm(ptr noundef %i.dao, i32 noundef 16, ptr noundef nonnull %29)
          to label %bb.li unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.li:                                            ; preds = %bb.lh
  %i.dap = load ptr, ptr %39, align 8, !tbaa !25  ; 2 uses
  %i.daq = icmp eq ptr %i.dap, %i.wl
  br i1 %i.daq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.li
  %i.dar = load i64, ptr %i.wl, align 8, !tbaa !26
  %i.das = add i64 %i.dar, 1
  call void @_ZdlPvm(ptr noundef %i.dap, i64 noundef %i.das) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %bb.lj

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fs, %bb.la, %bb.kf, %bb.fb
  %.pn299 = phi { ptr, i32 } [ %.pn294, %bb.fb ], [ %.pn60.i, %bb.fs ], [ %.pn411.i, %bb.kf ], [ %.pn.pn.pn.pn.pn.i, %bb.la ], [ %lpad.loopexit.split-lp1408, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dat = load ptr, ptr %39, align 8, !tbaa !25  ; 2 uses
  %i.dau = icmp eq ptr %i.dat, %i.wl
  br i1 %i.dau, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %.body
  %i.dav = load i64, ptr %i.wl, align 8, !tbaa !26
  %i.daw = add i64 %i.dav, 1
  call void @_ZdlPvm(ptr noundef %i.dat, i64 noundef %i.daw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

bb.lj:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dax = getelementptr inbounds nuw i8, ptr %29, i64 896
  br label %bb.lk

bb.lk:                                            ; preds = %_ZN8t_filenmD2Ev.exit, %bb.lj
  %i.day = phi ptr [ %i.dax, %bb.lj ], [ %i.daz, %_ZN8t_filenmD2Ev.exit ] ; 4 uses
  %i.daz = getelementptr inbounds i8, ptr %i.day, i64 -56 ; 2 uses
  %i.dba = getelementptr inbounds i8, ptr %i.day, i64 -24 ; 2 uses
  %i.dbb = load ptr, ptr %i.dba, align 8, !tbaa !189 ; 3 uses
  %i.dbc = getelementptr inbounds i8, ptr %i.day, i64 -16
  %i.dbd = load ptr, ptr %i.dbc, align 8, !tbaa !190 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dbb, %i.dbd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.lk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dbj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.dbb, %bb.lk ] ; 3 uses
  %i.dbe = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.dbf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.dbg = icmp eq ptr %i.dbe, %i.dbf
  br i1 %i.dbg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dbh = load i64, ptr %i.dbf, align 8, !tbaa !26
  %i.dbi = add i64 %i.dbh, 1
  call void @_ZdlPvm(ptr noundef %i.dbe, i64 noundef %i.dbi) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.dbj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i472 = icmp eq ptr %i.dbj, %i.dbd
  br i1 %.not.i.i.i.i472, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !132

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.dba, align 8, !tbaa !189
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.lk
  %i.dbk = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dbb, %bb.lk ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dbk, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.ll

bb.ll:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.dbl = getelementptr inbounds i8, ptr %i.day, i64 -8
  %i.dbm = load ptr, ptr %i.dbl, align 8, !tbaa !191
  %i.dbn = ptrtoint ptr %i.dbm to i64
  %i.dbo = ptrtoint ptr %i.dbk to i64
  %i.dbp = sub i64 %i.dbn, %i.dbo
  call void @_ZdlPvm(ptr noundef nonnull %i.dbk, i64 noundef %i.dbp) #25
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.ll
  %i.dbq = icmp eq ptr %i.daz, %29
  br i1 %i.dbq, label %bb.lm, label %bb.lk

bb.lm:                                            ; preds = %_ZN8t_filenmD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  ret i32 0

_ZNSt6vectorIfSaIfEED2Ev.exit325:                 ; preds = %.loopexit.split-lp614.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.be, %bb.bf, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, %bb.ee, %bb.dr, %bb.db, %bb.co, %bb.cf
  %.pn313.pn = phi { ptr, i32 } [ %.pn277, %bb.co ], [ %.pn309.pn, %bb.bf ], [ %.pn306.pn, %bb.cf ], [ %.pn, %bb.al ], [ %.pn304, %bb.dr ], [ %.pn302, %bb.ee ], [ %.pn299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471 ], [ %.pn281, %bb.db ], [ %.pn309.pn, %bb.be ], [ %lpad.loopexit.split-lp1420, %.loopexit.split-lp614.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dbr = getelementptr inbounds nuw i8, ptr %29, i64 896
  br label %bb.ln

bb.ln:                                            ; preds = %_ZN8t_filenmD2Ev.exit484, %_ZNSt6vectorIfSaIfEED2Ev.exit325
  %i.dbs = phi ptr [ %i.dbr, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ], [ %i.dbt, %_ZN8t_filenmD2Ev.exit484 ] ; 4 uses
  %i.dbt = getelementptr inbounds i8, ptr %i.dbs, i64 -56 ; 2 uses
  %i.dbu = getelementptr inbounds i8, ptr %i.dbs, i64 -24 ; 2 uses
  %i.dbv = load ptr, ptr %i.dbu, align 8, !tbaa !189 ; 3 uses
  %i.dbw = getelementptr inbounds i8, ptr %i.dbs, i64 -16
  %i.dbx = load ptr, ptr %i.dbw, align 8, !tbaa !190 ; 2 uses
  %.not4.i.i.i.i473 = icmp eq ptr %i.dbv, %i.dbx
  br i1 %.not4.i.i.i.i473, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i481, label %.lr.ph.i.i.i.i474

.lr.ph.i.i.i.i474:                                ; preds = %bb.ln, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477
  %.05.i.i.i.i475 = phi ptr [ %i.dcd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477 ], [ %i.dbv, %bb.ln ] ; 3 uses
  %i.dby = load ptr, ptr %.05.i.i.i.i475, align 8, !tbaa !25 ; 2 uses
  %i.dbz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i475, i64 16 ; 2 uses
  %i.dca = icmp eq ptr %i.dby, %i.dbz
  br i1 %i.dca, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i476

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i476: ; preds = %.lr.ph.i.i.i.i474
  %i.dcb = load i64, ptr %i.dbz, align 8, !tbaa !26
  %i.dcc = add i64 %i.dcb, 1
  call void @_ZdlPvm(ptr noundef %i.dby, i64 noundef %i.dcc) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477: ; preds = %.lr.ph.i.i.i.i474, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i476
  %i.dcd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i475, i64 32 ; 2 uses
  %.not.i.i.i.i478 = icmp eq ptr %i.dcd, %i.dbx
  br i1 %.not.i.i.i.i478, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i479, label %.lr.ph.i.i.i.i474, !llvm.loop !132

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i479: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477
  %.pr.i.i480 = load ptr, ptr %i.dbu, align 8, !tbaa !189
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i481

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i481: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i479, %bb.ln
  %i.dce = phi ptr [ %.pr.i.i480, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i479 ], [ %i.dbv, %bb.ln ] ; 3 uses
  %.not.i.i1.i.i482 = icmp eq ptr %i.dce, null
  br i1 %.not.i.i1.i.i482, label %_ZN8t_filenmD2Ev.exit484, label %bb.lo

bb.lo:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i481
  %i.dcf = getelementptr inbounds i8, ptr %i.dbs, i64 -8
  %i.dcg = load ptr, ptr %i.dcf, align 8, !tbaa !191
  %i.dch = ptrtoint ptr %i.dcg to i64
  %i.dci = ptrtoint ptr %i.dce to i64
  %i.dcj = sub i64 %i.dch, %i.dci
  call void @_ZdlPvm(ptr noundef nonnull %i.dce, i64 noundef %i.dcj) #25
  br label %_ZN8t_filenmD2Ev.exit484

_ZN8t_filenmD2Ev.exit484:                         ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i481, %bb.lo
  %i.dck = icmp eq ptr %i.dbt, %29
  br i1 %i.dck, label %bb.lp, label %bb.ln

bb.lp:                                            ; preds = %_ZN8t_filenmD2Ev.exit484
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #23
end_hunk_3
begin_hunk_4_@_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !26
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !26
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(66) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(66) %1) #23 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.b, ptr %i.a, align 8, !tbaa !36
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !25
  %i.f = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.f, ptr %i.c, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.h, ptr %i.g, align 1, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !34
  %i.k = load ptr, ptr %0, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !26
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare noundef double @_Z20calcSchlitterEntropyN3gmx8ArrayRefIKfEEfb(ptr, ptr, float noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef double @_Z24calcQuasiHarmonicEntropyN3gmx8ArrayRefIKfEEfbf(ptr, ptr, float noundef, i1 noundef zeroext, float noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef) local_unnamed_addr #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZL10componentsPKciPiPPA3_fiPKiPK16gmx_output_env_t(ptr noundef nonnull %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.146, ptr noundef nonnull %0) #24 ; 0 uses
  %i.d = sext i32 %4 to i64                       ; 2 uses
  %i.e = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.111, i32 noundef 912, i64 noundef range(i64 -2147483648, 2147483648) %i.d, i64 noundef 8) ; 3 uses
  %i.f = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.111, i32 noundef 913, i64 noundef range(i64 -2147483648, 2147483648) %i.d, i64 noundef 8) ; 3 uses
  %i.g = sext i32 %1 to i64                       ; 9 uses
  %i.h = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.111, i32 noundef 914, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 4) ; 4 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %iter.check, label %.preheader64.thread

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 12 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i32 %1, 32
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.k = add <8 x i32> %vec.ind, splat (i32 8)
  %i.l = add <8 x i32> %vec.ind, splat (i32 16)
  %i.m = add <8 x i32> %vec.ind, splat (i32 24)
  %i.n = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.o = uitofp nneg <8 x i32> %i.k to <8 x float>
  %i.p = uitofp nneg <8 x i32> %i.l to <8 x float>
  %i.q = uitofp nneg <8 x i32> %i.m to <8 x float>
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store <8 x float> %i.n, ptr %i.r, align 4, !tbaa !28
  store <8 x float> %i.o, ptr %i.s, align 4, !tbaa !28
  store <8 x float> %i.p, ptr %i.t, align 4, !tbaa !28
  store <8 x float> %i.q, ptr %i.u, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader64, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec113 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %8 = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %9 = or disjoint i32 %8, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %9, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index114 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind115 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next117, %vec.epilog.vector.body ] ; 2 uses
  %10 = uitofp nneg <8 x i32> %vec.ind115 to <8 x float>
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index114
  store <8 x float> %10, ptr %i.w, align 4, !tbaa !28
  %index.next116 = add nuw i64 %index114, 8       ; 2 uses
  %vec.ind.next117 = add <8 x i32> %vec.ind115, splat (i32 8)
  %i.x = icmp eq i64 %index.next116, %n.vec113
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !193

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %n.vec113, %wide.trip.count
  br i1 %cmp.n118, label %.preheader64, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec113, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader64:                                     ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.y = icmp sgt i32 %4, 0
  br i1 %i.y, label %.lr.ph71.split.us.preheader, label %._crit_edge.i.i

.preheader64.thread:                              ; preds = %bb.a
  %i.z = icmp sgt i32 %4, 0
  br i1 %i.z, label %.lr.ph71.split.preheader, label %._crit_edge.i.i

.lr.ph71.split.preheader:                         ; preds = %.preheader64.thread
  %wide.trip.count81 = zext nneg i32 %4 to i64
  br label %.lr.ph71.split

.lr.ph71.split.us.preheader:                      ; preds = %.preheader64
  %wide.trip.count99 = zext nneg i32 %4 to i64
  %wide.trip.count94 = zext nneg i32 %1 to i64
  %i.aa = mul nuw nsw i64 %wide.trip.count, 12
  %i.ab = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %min.iters.check158 = icmp ult i32 %1, 16
  %n.vec195 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n206 = icmp eq i64 %n.vec195, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ac = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph71.split.us

.lr.ph71.split.us:                                ; preds = %.lr.ph71.split.us.preheader, %._crit_edge.us
  %indvars.iv96 = phi i64 [ 0, %.lr.ph71.split.us.preheader ], [ %indvars.iv.next97, %._crit_edge.us ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv96
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %2, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.ai = add nsw i32 %i.ah, 1
  %i.aj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %i.ai) #23 ; 0 uses
  %i.ak = call noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.a)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv96
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv96 ; 5 uses
  %i.an = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.111, i32 noundef 924, i64 noundef 4, i64 noundef 8) ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !13
  %i.ao = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.111, i32 noundef 927, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 4)
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !15
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.111, i32 noundef 927, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 4)
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !15
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.111, i32 noundef 927, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 4)
  store ptr %i.au, ptr %i.at, align 8, !tbaa !15
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.111, i32 noundef 927, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 4)
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !15
  %i.ay = getelementptr inbounds [8 x i8], ptr %3, i64 %i.af
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15 ; 9 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !13 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 9 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 9 uses
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.pre102 = load ptr, ptr %.phi.trans.insert101, align 8, !tbaa !15 ; 9 uses
  %.phi.trans.insert103 = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.pre104 = load ptr, ptr %.phi.trans.insert103, align 8, !tbaa !15 ; 9 uses
  br i1 %min.iters.check158, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph71.split.us
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ab  ; 4 uses
  %i.bd = getelementptr i8, ptr %.pre, i64 %i.ab  ; 4 uses
  %i.be = getelementptr i8, ptr %.pre102, i64 %i.ab ; 4 uses
  %i.bf = getelementptr i8, ptr %.pre104, i64 %i.ab ; 4 uses
  %i.bg = getelementptr i8, ptr %i.az, i64 %i.aa  ; 4 uses
  %bound0 = icmp ult ptr %i.bb, %i.bd
  %bound1 = icmp ult ptr %.pre, %i.bc
  %found.conflict = and i1 %bound0, %bound1
  %bound0159 = icmp ult ptr %i.bb, %i.be
  %bound1160 = icmp ult ptr %.pre102, %i.bc
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx = or i1 %found.conflict, %found.conflict161
  %bound0162 = icmp ult ptr %i.bb, %i.bf
  %bound1163 = icmp ult ptr %.pre104, %i.bc
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx, %found.conflict164
  %bound0166 = icmp ult ptr %i.bb, %i.bg
  %bound1167 = icmp ult ptr %i.az, %i.bc
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx165, %found.conflict168
  %bound0170 = icmp ult ptr %.pre, %i.be
  %bound1171 = icmp ult ptr %.pre102, %i.bd
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %.pre, %i.bf
  %bound1175 = icmp ult ptr %.pre104, %i.bd
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr %.pre, %i.bg
  %bound1179 = icmp ult ptr %i.az, %i.bd
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  %bound0182 = icmp ult ptr %.pre102, %i.bf
  %bound1183 = icmp ult ptr %.pre104, %i.be
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ult ptr %.pre102, %i.bg
  %bound1187 = icmp ult ptr %i.az, %i.be
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  %bound0190 = icmp ult ptr %.pre104, %i.bg
  %bound1191 = icmp ult ptr %i.az, %i.bf
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  br i1 %conflict.rdx193, label %scalar.ph.preheader, label %vector.body196

vector.body196:                                   ; preds = %vector.memcheck, %vector.body196
  %index197 = phi i64 [ %index.next204, %vector.body196 ], [ 0, %vector.memcheck ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %index197 ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.bh, align 4, !tbaa !28, !alias.scope !204 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec198 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec199 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %i.bi = fmul <8 x float> %strided.vec198, %strided.vec198
  %i.bj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec, <8 x float> %strided.vec, <8 x float> %i.bi)
  %i.bk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199, <8 x float> %strided.vec199, <8 x float> %i.bj)
  %i.bl = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bk)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index197
  store <8 x float> %i.bl, ptr %i.bm, align 4, !tbaa !28, !alias.scope !205, !noalias !206
  %wide.vec200 = load <24 x float>, ptr %i.bh, align 4, !tbaa !28, !alias.scope !204 ; 3 uses
  %strided.vec201 = shufflevector <24 x float> %wide.vec200, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec202 = shufflevector <24 x float> %wide.vec200, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec203 = shufflevector <24 x float> %wide.vec200, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index197
  store <8 x float> %strided.vec201, ptr %i.bn, align 4, !tbaa !28, !alias.scope !207, !noalias !208
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %index197
  store <8 x float> %strided.vec202, ptr %i.bo, align 4, !tbaa !28, !alias.scope !209, !noalias !210
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre104, i64 %index197
  store <8 x float> %strided.vec203, ptr %i.bp, align 4, !tbaa !28, !alias.scope !211, !noalias !204
  %index.next204 = add nuw i64 %index197, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next204, %n.vec195
  br i1 %i.bq, label %middle.block205, label %vector.body196, !llvm.loop !200

middle.block205:                                  ; preds = %vector.body196
  br i1 %cmp.n206, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph71.split.us, %middle.block205
  %indvars.iv91.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph71.split.us ], [ %n.vec195, %middle.block205 ] ; 8 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %indvars.iv91.ph ; 4 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !28 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !28 ; 2 uses
  %i.bv = fmul float %i.bu, %i.bu
  %i.bw = call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !28 ; 2 uses
  %i.bz = call noundef float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bw)
  %sqrt.i.us.prol = call noundef float @llvm.sqrt.f32(float %i.bz)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv91.ph
  store float %sqrt.i.us.prol, ptr %i.ca, align 4, !tbaa !28
  %i.cb = load float, ptr %i.br, align 4, !tbaa !28
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv91.ph
  store float %i.cb, ptr %i.cc, align 4, !tbaa !28
  %i.cd = load float, ptr %i.bt, align 4, !tbaa !28
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %indvars.iv91.ph
  store float %i.cd, ptr %i.ce, align 4, !tbaa !28
  %i.cf = load float, ptr %i.bx, align 4, !tbaa !28
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.pre104, i64 %indvars.iv91.ph
  store float %i.cf, ptr %i.cg, align 4, !tbaa !28
  %indvars.iv.next92.prol = or disjoint i64 %indvars.iv91.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph.preheader ], [ %indvars.iv.next92.prol, %scalar.ph.prol ]
  %i.ch = icmp eq i64 %indvars.iv91.ph, %i.ac
  br i1 %i.ch, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.1, %scalar.ph ], [ %indvars.iv91.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %indvars.iv91 ; 4 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !28 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !28 ; 2 uses
  %i.cm = fmul float %i.cl, %i.cl
  %i.cn = call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !28 ; 2 uses
  %i.cq = call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.cn)
  %sqrt.i.us = call noundef float @llvm.sqrt.f32(float %i.cq)
end_hunk_4
begin_hunk_5_@_ZNSt10filesystem7__cxx114pathaSEOS1_:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !34
  store i64 %i.r, ptr %i.p, align 8, !tbaa !34
  %i.s = load i64, ptr %i.f, align 8, !tbaa !26
  store i64 %i.s, ptr %i.c, align 8, !tbaa !26
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.t = load i64, ptr %i.c, align 8, !tbaa !26
  store ptr %i.e, ptr %0, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !34
  %i.x = load i64, ptr %i.f, align 8, !tbaa !26
  store i64 %i.x, ptr %i.c, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.b, ptr %1, align 8, !tbaa !25
  store i64 %i.t, ptr %i.f, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.f, ptr %1, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.y = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.b, %bb.f ], [ %i.f, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !34
  store i8 0, ptr %i.y, align 1, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !22
  store ptr null, ptr %i.aa, align 8, !tbaa !22
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !22
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.ad) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit

_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.h
  store i64 0, ptr %i.z, align 8, !tbaa !34
  %i.ae = load ptr, ptr %1, align 8, !tbaa !25
  store i8 0, ptr %i.ae, align 1, !tbaa !26
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZNSt10filesystem7__cxx114path5clearEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

_ZNSt10filesystem7__cxx114path5clearEv.exit:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare void @_Z9write_xpmP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPKfSA_PKSA_ff5t_rgbSD_Pi(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.rint.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #23 = { nounwind }
attributes #24 = { cold nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { cold }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"any p2 pointer", !10, i64 0}
!12 = !{!"p2 float", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 float", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !10, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!16, !16, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !17, i64 8, !5, i64 16}
!25 = !{!24, !16, i64 0}
!26 = !{!5, !5, i64 0}
!27 = !{!"float", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!23, !16, i64 0}
!34 = !{!24, !17, i64 8}
!35 = !{!"branch_weights", i32 8, i32 24}
!36 = !{!17, !17, i64 0}
!37 = !{!"llvm.loop.peeled.count", i32 1}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29, !30, !31}
!41 = distinct !{!41, !32}
!42 = distinct !{!42, !29, !30}
!43 = distinct !{!43, !29, !30, !31}
!44 = distinct !{!44, !29, !30, !31}
!45 = distinct !{!45, !29, !31, !30}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29}
!51 = distinct !{!51, !32}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !29}
!54 = distinct !{!54, !29, !30, !31}
!55 = distinct !{!55, !29, !30, !31}
!56 = distinct !{!56, !29, !31, !30}
!57 = distinct !{!57, !32}
!58 = distinct !{!58, !29}
!59 = distinct !{!59, !29}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
!64 = distinct !{!64, !29, !30, !31}
!65 = distinct !{!65, !29, !30, !31}
!66 = distinct !{!66, !29, !31, !30}
!67 = distinct !{!67, !29, !30, !31}
!68 = distinct !{!68, !29, !30, !31}
!69 = distinct !{!69, !29}
!70 = distinct !{!70, !29}
!71 = distinct !{!71, !29, !31, !30}
!72 = distinct !{!72, !29}
!73 = distinct !{!73, !29, !30, !31}
!74 = distinct !{!74, !29, !30, !31}
!75 = distinct !{!75, !29, !31, !30}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !29, !30, !31}
!79 = distinct !{!79, !29, !30, !31}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29, !31, !30}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !32}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29, !37}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!98 = distinct !{!98, !97, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = distinct !{!101, i1 true, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!102 = distinct !{!102, !101, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!104 = distinct !{!104, !103, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!105 = distinct !{!105, !29, !30, !31}
!106 = distinct !{!106, !29, !31, !30}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !29, !30, !31}
!111 = distinct !{!111, !29, !30, !31}
!112 = distinct !{!112, !29}
!113 = distinct !{!113, !29, !31, !30}
!114 = distinct !{!114, !32}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !32}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !32}
!121 = distinct !{!121, !32}
!122 = distinct !{!122, !29}
!123 = distinct !{!123, !29}
!124 = distinct !{!124, !29}
!125 = distinct !{!125, !32}
!126 = distinct !{!126, !32}
!127 = distinct !{!127, !29}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !29}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !32}
!132 = distinct !{!132, !29}
!133 = !{!"_ZTS7PbcType", !5, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!"p1 int", !10, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !137, i64 0, !137, i64 8, !137, i64 16}
!139 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !138, i64 0}
!140 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !139, i64 0}
!141 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !140, i64 0}
!142 = !{!"_ZTS8t_filenm", !6, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !141, i64 32}
!143 = !{!142, !6, i64 0}
!144 = !{!142, !16, i64 8}
!145 = !{!142, !16, i64 16}
!146 = !{!142, !17, i64 24}
!147 = !{!"p2 double", !11, i64 0}
!148 = !{!147, !147, i64 0}
!149 = !{!"p1 double", !10, i64 0}
!150 = !{!149, !149, i64 0}
!151 = !{!"double", !5, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{!"bool", !5, i64 0}
!154 = !{!153, !153, i64 0}
!155 = !{i8 0, i8 2}
!156 = !{}
!157 = !{!"branch_weights", i32 4, i32 12}
!158 = !{!"p1 _ZTS6t_atom", !10, i64 0}
!159 = !{!"any p3 pointer", !11, i64 0}
!160 = !{!"p3 omnipotent char", !159, i64 0}
!161 = !{!"p1 _ZTS9t_resinfo", !10, i64 0}
!162 = !{!"p1 _ZTS9t_pdbinfo", !10, i64 0}
!163 = !{!"_ZTS7t_atoms", !6, i64 0, !158, i64 8, !160, i64 16, !160, i64 24, !160, i64 32, !6, i64 40, !161, i64 48, !162, i64 56, !153, i64 64, !153, i64 65, !153, i64 66, !153, i64 67, !153, i64 68}
!164 = !{!163, !6, i64 0}
!165 = !{!"short", !5, i64 0}
!166 = !{!"_ZTS12ParticleType", !5, i64 0}
!167 = !{!"_ZTS6t_atom", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !165, i64 16, !165, i64 18, !166, i64 20, !6, i64 24, !6, i64 28, !5, i64 32}
!168 = !{!167, !27, i64 0}
!169 = !{!163, !158, i64 8}
!170 = !{!"branch_weights", i32 4, i32 28}
!171 = !{!"p1 _ZTS16gmx_output_env_t", !10, i64 0}
!172 = !{!171, !171, i64 0}
!173 = !{!"p1 _ZTS11t_trxstatus", !10, i64 0}
!174 = !{!173, !173, i64 0}
!175 = !{!163, !160, i64 16}
!176 = !{!163, !161, i64 48}
!177 = !{!"p2 omnipotent char", !11, i64 0}
!178 = !{!177, !177, i64 0}
!179 = !{!167, !6, i64 24}
!180 = !{!"_ZTS9t_resinfo", !177, i64 0, !6, i64 8, !5, i64 12, !6, i64 16, !5, i64 20, !177, i64 24}
!181 = !{!180, !177, i64 0}
!182 = !{!180, !6, i64 8}
!183 = !{!180, !5, i64 12}
!184 = !{!98}
!185 = !{!102}
!186 = !{!104}
!187 = !{!104, !102}
!188 = !{!180, !5, i64 20}
!189 = !{!138, !137, i64 0}
!190 = !{!138, !137, i64 8}
!191 = !{!138, !137, i64 16}
!192 = distinct !{!192, !29, !30, !31}
!193 = distinct !{!193, !29, !30, !31}
!194 = distinct !{!194, i1 false, !"LVerDomain"}
!195 = distinct !{!195, !194}
!196 = distinct !{!196, !194}
!197 = distinct !{!197, !194}
!198 = distinct !{!198, !194}
!199 = distinct !{!199, !194}
!200 = distinct !{!200, !29, !30, !31}
!201 = distinct !{!201, !29, !30}
!202 = distinct !{!202, !29}
!203 = distinct !{!203, !29, !31, !30}
!204 = !{!195}
!205 = !{!196}
!206 = !{!199, !198, !197, !195}
!207 = !{!199}
!208 = !{!198, !197, !195}
!209 = !{!198}
!210 = !{!197, !195}
!211 = !{!197}
!212 = distinct !{!212, !29}
!213 = distinct !{!213, !29}
!214 = distinct !{!214, !29}
!215 = distinct !{!215, !29}
!216 = distinct !{!216, !29}
!217 = distinct !{!217, !29}
!218 = distinct !{!218, !32}
!219 = distinct !{!219, !32}
!220 = distinct !{!220, !29}
!221 = distinct !{!221, !29}
!222 = distinct !{!222, !29, !37}
!223 = distinct !{!223, !29}
!224 = distinct !{!224, !29}
!225 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_5
