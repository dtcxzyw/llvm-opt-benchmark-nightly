Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/forcetable?download=true
inline.NumInlined: 816
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZL11read_tablesP8_IO_FILEPKcii:bb.a
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.be = load ptr, ptr %15, align 8, !tbaa !33
  %i.bf = load double, ptr %.sroa.35394.0.copyload, align 8, !tbaa !80
  %sext651 = shl i64 %i.ah, 32
  %i.bg = ashr exact i64 %sext651, 29
  %i.bh = getelementptr i8, ptr %.sroa.35394.0.copyload, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !80
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 611, ptr noundef nonnull @.str.23, ptr noundef %i.be, double noundef %., double noundef 1.800000e+02, double noundef %i.bf, double noundef %i.bj) #25
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %.critedge
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ae:                                            ; preds = %bb.aa
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.af:                                            ; preds = %bb.ab
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %15, align 8, !tbaa !33   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.af
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !34
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.ae ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.bm, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #24
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %i.bk, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.body

bb.ah:                                            ; preds = %bb.z, %bb.p
  %i.bs = phi double [ %i.ax, %bb.z ], [ %i.ak, %bb.p ]
  %i.bt = add i32 %i.ai, -1                       ; 3 uses
  %i.bu = sitofp i32 %i.bt to double
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !80
  %i.by = fsub double %i.bx, %i.bs
  %i.bz = fdiv double %i.bu, %i.by                ; 4 uses
  store double %i.bz, ptr %i.g, align 8, !tbaa !80
  %i.ca = icmp ne ptr %1, null                    ; 4 uses
  br i1 %i.ca, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.cb = load ptr, ptr %7, align 8, !tbaa !33, !noalias !187 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !35, !noalias !187 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.ce, ptr %16, align 8, !tbaa !29, !alias.scope !187
  %i.cf = icmp eq ptr %i.cb, null
  %i.cg = icmp ne i64 %i.cd, 0
  %or.cond.i.i.i = and i1 %i.cf, %i.cg
  br i1 %or.cond.i.i.i, label %.noexc.i, label %bb.aj

.noexc.i:                                         ; preds = %bb.ai
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !187
  store i64 %i.cd, ptr %i.c, align 8, !tbaa !31, !noalias !187
  %i.ch = icmp ugt i64 %i.cd, 15
  br i1 %i.ch, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.aj
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc199 unwind label %bb.ao ; 2 uses

.noexc199:                                        ; preds = %.noexc.i.i.i
  store ptr %i.ci, ptr %16, align 8, !tbaa !33, !alias.scope !187
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !31, !noalias !187
  store i64 %i.cj, ptr %i.ce, align 8, !tbaa !34, !alias.scope !187
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc199, %bb.aj
  %i.ck = phi ptr [ %i.ci, %.noexc199 ], [ %i.ce, %bb.aj ] ; 2 uses
  switch i64 %i.cd, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  %i.cl = load i8, ptr %i.cb, align 1, !tbaa !34
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !34
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.cb, i64 %i.cd, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i.i
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !31, !noalias !187 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !35, !alias.scope !187
  %i.co = load ptr, ptr %16, align 8, !tbaa !33, !alias.scope !187
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  store i8 0, ptr %i.cp, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !187
  %i.cq = load ptr, ptr %16, align 8, !tbaa !33
  %i.cr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.24, ptr noundef %i.cq, i32 noundef %i.ai) #24 ; 0 uses
  %i.cs = load ptr, ptr %16, align 8, !tbaa !33   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ce
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.am
  %i.cu = load i64, ptr %i.ce, align 8, !tbaa !34
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br i1 %i.aj, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %i.cw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.25, double noundef %i.bz) #24 ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc.i.i.i, %.noexc.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %.body

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %bb.an, %bb.ah
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.db = icmp eq i32 %4, 2
  %wide.trip.count590 = zext nneg i32 %3 to i64   ; 2 uses
  %i.dc = icmp sgt i32 %i.ai, 0
  %wide.trip.count = and i64 %i.ah, 2147483647    ; 3 uses
  %exitcond.peel.not = icmp eq i64 %wide.trip.count, 1
  %exitcond.peel568.not = icmp eq i64 %wide.trip.count, 2
  %i.dd = icmp sgt i32 %i.ai, 2
  %wide.trip.count586 = zext nneg i32 %i.bt to i64
  %i.de = fdiv double 1.000000e+00, %i.bz         ; 12 uses
  %sext652 = shl i64 %i.ah, 32
  %i.df = ashr exact i64 %sext652, 32
  %i.dg = add nsw i32 %i.ai, -2
  %i.dh = fmul double %i.de, %i.de
  %i.di = fmul double %i.de, %i.dh
  %i.dj = fmul double %i.de, %i.de
  %i.dk = fmul double %i.de, %i.dj
  %i.dl = shl i64 %i.ah, 4
  %i.dm = shl i64 %i.ah, 4
  %invariant.gep = getelementptr i8, ptr %.sroa.35394.0.copyload, i64 %i.dl
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.de, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert759 = insertelement <4 x double> poison, double %i.de, i64 0
  %broadcast.splat760 = shufflevector <4 x double> %broadcast.splatinsert759, <4 x double> poison, <4 x i32> zeroinitializer
  br label %.preheader456

.preheader456:                                    ; preds = %bb.ap, %._crit_edge518.thread
  %.promoted = phi i32 [ 0, %bb.ap ], [ %storemerge167502.lcssa656, %._crit_edge518.thread ] ; 4 uses
  %indvars.iv588 = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next589, %._crit_edge518.thread ] ; 7 uses
  %.0136524 = phi i8 [ 1, %bb.ap ], [ %.1137.lcssa658, %._crit_edge518.thread ] ; 3 uses
  %i.dn = mul i64 %i.dm, %indvars.iv588
  br i1 %i.dc, label %bb.aq, label %.preheader.thread

.preheader.thread:                                ; preds = %.preheader456
  store i32 %.promoted, ptr %i.f, align 4
  br label %._crit_edge518.thread

bb.aq:                                            ; preds = %.preheader456
  %i.do = shl nuw nsw i64 %indvars.iv588, 1       ; 2 uses
  %i.dp = or disjoint i64 %i.do, 1
  %i.dq = mul nsw i64 %i.ah, %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.dq ; 4 uses
  %i.ds = add nuw nsw i64 %i.do, 2
  %i.dt = mul nsw i64 %i.ah, %i.ds
  %i.du = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.dt ; 4 uses
  %i.dv = load double, ptr %i.dr, align 8, !tbaa !80 ; 2 uses
  %22 = fcmp une double %i.dv, 0.000000e+00
  br i1 %22, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dw = trunc nuw i8 %.0136524 to i1
  %spec.select.peel = select i1 %i.dw, i32 0, i32 %.promoted ; 2 uses
  %i.dx = call double @llvm.fabs.f64(double %i.dv)
  %or.cond454.peel = fcmp ogt double %i.dx, f0x47847AE133333333
  br i1 %or.cond454.peel, label %.critedge2, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %storemerge167500.peel = phi i32 [ %spec.select.peel, %bb.ar ], [ %.promoted, %bb.aq ] ; 2 uses
  %.3139.peel = phi i8 [ 0, %bb.ar ], [ %.0136524, %bb.aq ] ; 2 uses
  %.1135.peel = phi i8 [ 0, %bb.ar ], [ 1, %bb.aq ] ; 2 uses
  %i.dy = load double, ptr %i.du, align 8, !tbaa !80 ; 2 uses
  %i.dz = fcmp oeq double %i.dy, 0.000000e+00     ; 3 uses
  br i1 %i.dz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ea = trunc nuw i8 %.3139.peel to i1
  %spec.select529.peel = select i1 %i.ea, i32 0, i32 %storemerge167500.peel ; 2 uses
  %i.eb = call double @llvm.fabs.f64(double %i.dy)
  %or.cond455.peel = fcmp ogt double %i.eb, f0x47847AE133333333
  br i1 %or.cond455.peel, label %.critedge4, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %storemerge167498.peel = phi i32 [ %spec.select529.peel, %bb.at ], [ %storemerge167500.peel, %bb.as ] ; 3 uses
  %.5141.peel = phi i8 [ 0, %bb.at ], [ %.3139.peel, %bb.as ] ; 3 uses
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.au
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !80 ; 2 uses
  %i.ee = fcmp une double %i.ed, 0.000000e+00
  br i1 %i.ee, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.peel.next
  %i.ef = trunc nuw i8 %.5141.peel to i1
  %spec.select.peel557 = select i1 %i.ef, i32 1, i32 %storemerge167498.peel ; 2 uses
  %i.eg = call double @llvm.fabs.f64(double %i.ed)
  %or.cond454.peel558 = fcmp ogt double %i.eg, f0x47847AE133333333
  br i1 %or.cond454.peel558, label %.critedge2, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.peel.next
  %storemerge167500.peel559 = phi i32 [ %spec.select.peel557, %bb.av ], [ %storemerge167498.peel, %.peel.next ] ; 2 uses
  %.3139.peel560 = phi i8 [ 0, %bb.av ], [ %.5141.peel, %.peel.next ] ; 2 uses
  %.1135.peel561 = phi i8 [ 0, %bb.av ], [ %.1135.peel, %.peel.next ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !80 ; 2 uses
  %i.ej = fcmp une double %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ek = trunc nuw i8 %.3139.peel560 to i1
  %spec.select529.peel562 = select i1 %i.ek, i32 1, i32 %storemerge167500.peel559 ; 2 uses
  %i.el = call double @llvm.fabs.f64(double %i.ei)
  %or.cond455.peel563 = fcmp ogt double %i.el, f0x47847AE133333333
  br i1 %or.cond455.peel563, label %.critedge4, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %storemerge167498.peel564 = phi i32 [ %spec.select529.peel562, %bb.ax ], [ %storemerge167500.peel559, %bb.aw ] ; 2 uses
  %.5141.peel565 = phi i8 [ 0, %bb.ax ], [ %.3139.peel560, %bb.aw ] ; 2 uses
  %.1133.peel566 = phi i1 [ false, %bb.ax ], [ %i.dz, %bb.aw ] ; 2 uses
  br i1 %exitcond.peel568.not, label %._crit_edge, label %.peel.next556

.peel.next556:                                    ; preds = %bb.ay, %bb.bs
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bs ], [ 2, %bb.ay ] ; 9 uses
  %.0132509 = phi i1 [ %.1133, %bb.bs ], [ %.1133.peel566, %bb.ay ]
  %.0134508 = phi i8 [ %.1135, %bb.bs ], [ %.1135.peel561, %bb.ay ]
  %.1137507 = phi i8 [ %.5141, %bb.bs ], [ %.5141.peel565, %bb.ay ] ; 2 uses
  %storemerge167502504 = phi i32 [ %storemerge167498, %bb.bs ], [ %storemerge167498.peel564, %bb.ay ] ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %.sroa.35394.0.copyload, i64 %indvars.iv ; 4 uses
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  %i.eo = getelementptr i8, ptr %i.em, i64 -16
  %i.ep = load <2 x double>, ptr %i.eo, align 8, !tbaa !80
  %i.eq = load <2 x double>, ptr %i.en, align 8, !tbaa !80
  %i.er = fsub <2 x double> %i.eq, %i.ep          ; 3 uses
  %shift = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.er
  %i.es = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.et = call double @llvm.fabs.f64(double %i.es)
  %i.eu = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.er) ; 2 uses
  %shift809 = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop810 = fadd <2 x double> %i.eu, %shift809
  %i.ev = extractelement <2 x double> %foldExtExtBinop810, i64 0
  %i.ew = fmul double %i.ev, 5.000000e-03
  %i.ex = fcmp ult double %i.et, %i.ew
  br i1 %i.ex, label %bb.be, label %.loopexit

.loopexit:                                        ; preds = %.peel.next556
  store i32 %storemerge167502504, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %.loopexit
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.35394.0.copyload, i64 %indvars.iv
  %i.ez = getelementptr i8, ptr %i.em, i64 -16
  %i.fa = getelementptr i8, ptr %i.em, i64 -8
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.fc = load double, ptr %i.ez, align 8, !tbaa !80
  %i.fd = load double, ptr %i.fa, align 8, !tbaa !80
  %i.fe = load double, ptr %i.ey, align 8, !tbaa !80
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 646, ptr noundef nonnull @.str.26, ptr noundef %i.fb, double noundef %i.fc, double noundef %i.fd, double noundef %i.fe) #25
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %.loopexit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn174 = phi { ptr, i32 } [ %i.fg, %bb.bc ], [ %i.ff, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.body

bb.be:                                            ; preds = %.peel.next556
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !80 ; 2 uses
  %i.fj = fcmp une double %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.fk = trunc nuw i8 %.1137507 to i1
  %i.fl = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.fk, i32 %i.fl, i32 %storemerge167502504 ; 2 uses
  %i.fm = call double @llvm.fabs.f64(double %i.fi)
  %or.cond454 = fcmp ogt double %i.fm, f0x47847AE133333333
  br i1 %or.cond454, label %.critedge2, label %bb.bl

.critedge2:                                       ; preds = %bb.av, %bb.ar, %bb.bf
  %.lcssa538 = phi i64 [ %indvars.iv, %bb.bf ], [ 0, %bb.ar ], [ 1, %bb.av ]
  %spec.select.lcssa = phi i32 [ %spec.select, %bb.bf ], [ %spec.select.peel, %bb.ar ], [ %spec.select.peel557, %bb.av ]
  store i32 %spec.select.lcssa, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %.critedge2
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.lcssa538
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !80
  %i.fp = load ptr, ptr %i.d, align 8, !tbaa !100
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 664, ptr noundef nonnull @.str.27, double noundef %i.fo, ptr noundef %i.fp) #25
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %.critedge2
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #24
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn172 = phi { ptr, i32 } [ %i.fr, %bb.bj ], [ %i.fq, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %.body

bb.bl:                                            ; preds = %bb.bf, %bb.be
  %storemerge167500 = phi i32 [ %spec.select, %bb.bf ], [ %storemerge167502504, %bb.be ] ; 2 uses
  %.3139 = phi i8 [ 0, %bb.bf ], [ %.1137507, %bb.be ] ; 2 uses
  %.1135 = phi i8 [ 0, %bb.bf ], [ %.0134508, %bb.be ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !80 ; 2 uses
  %i.fu = fcmp une double %i.ft, 0.000000e+00
  br i1 %i.fu, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  %i.fv = trunc nuw i8 %.3139 to i1
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select529 = select i1 %i.fv, i32 %i.fw, i32 %storemerge167500 ; 2 uses
  %i.fx = call double @llvm.fabs.f64(double %i.ft)
  %or.cond455 = fcmp ogt double %i.fx, f0x47847AE133333333
  br i1 %or.cond455, label %.critedge4, label %bb.bs

.critedge4:                                       ; preds = %bb.ax, %bb.at, %bb.bm
  %.lcssa539 = phi i64 [ %indvars.iv, %bb.bm ], [ 0, %bb.at ], [ 1, %bb.ax ]
  %spec.select529.lcssa = phi i32 [ %spec.select529, %bb.bm ], [ %spec.select529.peel, %bb.at ], [ %spec.select529.peel562, %bb.ax ]
  store i32 %spec.select529.lcssa, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %.critedge4
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.lcssa539
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !80
  %i.ga = load ptr, ptr %i.d, align 8, !tbaa !100
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 677, ptr noundef nonnull @.str.28, double noundef %i.fz, ptr noundef %i.ga) #25
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %.critedge4
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #24
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn170 = phi { ptr, i32 } [ %i.gc, %bb.bq ], [ %i.gb, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.body

bb.bs:                                            ; preds = %bb.bm, %bb.bl
  %storemerge167498 = phi i32 [ %spec.select529, %bb.bm ], [ %storemerge167500, %bb.bl ] ; 2 uses
  %.5141 = phi i8 [ 0, %bb.bm ], [ %.3139, %bb.bl ] ; 2 uses
  %.1133 = phi i1 [ false, %bb.bm ], [ %.0132509, %bb.bl ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next556, !llvm.loop !162

._crit_edge:                                      ; preds = %bb.bs, %bb.au, %bb.ay
  %storemerge167498.lcssa = phi i32 [ %storemerge167498.peel564, %bb.ay ], [ %storemerge167498.peel, %bb.au ], [ %storemerge167498, %bb.bs ] ; 6 uses
  %.5141.lcssa = phi i8 [ %.5141.peel565, %bb.ay ], [ %.5141.peel, %bb.au ], [ %.5141, %bb.bs ] ; 5 uses
  %.1133.lcssa = phi i1 [ %.1133.peel566, %bb.ay ], [ %i.dz, %bb.au ], [ %.1133, %bb.bs ]
  %.1135.lcssa541 = phi i8 [ %.1135.peel561, %bb.ay ], [ %.1135.peel, %bb.au ], [ %.1135, %bb.bs ]
  %23 = icmp eq i8 %.1135.lcssa541, 0
  %i.gd = select i1 %23, i1 %.1133.lcssa, i1 false
  store i32 %storemerge167498.lcssa, ptr %i.f, align 4
  br i1 %i.gd, label %bb.bt, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.dd, label %.lr.ph517, label %._crit_edge518.thread

.lr.ph517:                                        ; preds = %.preheader
  %i.ge = shl nuw nsw i64 %indvars.iv588, 1       ; 2 uses
  %i.gf = or disjoint i64 %i.ge, 1
  %i.gg = mul nsw i64 %i.ah, %i.gf
  %i.gh = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gg ; 2 uses
  %i.gi = add nuw nsw i64 %i.ge, 2
  %i.gj = mul nsw i64 %i.ah, %i.gi
  %i.gk = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gj
  br label %bb.cl

bb.bt:                                            ; preds = %._crit_edge
  %i.gl = shl nuw nsw i64 %indvars.iv588, 1       ; 2 uses
  %i.gm = or disjoint i64 %i.gl, 1
  %i.gn = mul nsw i64 %i.ah, %i.gm
  %i.go = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gn ; 3 uses
  %i.gp = add nuw nsw i64 %i.gl, 2
  %i.gq = mul nsw i64 %i.ah, %i.gp
  %i.gr = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gq
  br i1 %i.db, label %bb.bu, label %.preheader33.i

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %.noexc220 unwind label %.loopexit.split-lp458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc220:                                        ; preds = %bb.bu
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 529, ptr noundef nonnull @.str.33) #25
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.noexc220
  unreachable

bb.bw:                                            ; preds = %.noexc220
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

.preheader33.i:                                   ; preds = %bb.bt, %.preheader33.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader33.i ], [ 0, %bb.bt ] ; 6 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.i
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !80
  %i.gv = fcmp oeq double %i.gu, 0.000000e+00
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.gv, label %.preheader33.i, label %.preheader.i, !llvm.loop !163

.preheader.i:                                     ; preds = %.preheader33.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.i ; 14 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.preheader.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.bx ], [ %i.df, %.preheader.i ] ; 3 uses
  %i.gx = getelementptr [8 x i8], ptr %i.go, i64 %indvars.iv39.i
  %i.gy = getelementptr i8, ptr %i.gx, i64 -8
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !80
  %i.ha = fcmp oeq double %i.gz, 0.000000e+00
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, -1
  br i1 %i.ha, label %bb.bx, label %bb.by, !llvm.loop !164

bb.by:                                            ; preds = %bb.bx
  %i.hb = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.hc = trunc nsw i64 %indvars.iv39.i to i32    ; 2 uses
  %i.hd = icmp slt i32 %i.dg, %i.hc
  %i.he = add nsw i32 %i.hc, 1
  %.1.i = select i1 %i.hd, i32 %i.ai, i32 %i.he   ; 4 uses
  br i1 %i.ca, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.hf = uitofp nneg i32 %i.hb to double
  %i.hg = fmul double %i.de, %i.hf
  %i.hh = icmp eq i32 %.1.i, %i.ai
  %.str.35..str.36.i = select i1 %i.hh, ptr @.str.35, ptr @.str.36
  %i.hi = add nsw i32 %.1.i, -1
  %i.hj = sitofp i32 %i.hi to double
  %i.hk = fmul double %i.de, %i.hj
  %i.hl = trunc i64 %indvars.iv588 to i32
  %i.hm = add i32 %i.hl, 1
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.34, i32 noundef %i.hm, double noundef %i.hg, ptr noundef nonnull %.str.35..str.36.i, double noundef %i.hk) #24 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ho = sub nsw i32 %.1.i, %i.hb                ; 6 uses
  %i.hp = icmp eq i32 %.1.i, %i.ai                ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i ; 15 uses
  %i.hr = icmp slt i32 %i.ho, 4
  br i1 %i.hr, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %.noexc221 unwind label %.loopexit.split-lp458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc221:                                        ; preds = %bb.cb
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 450, ptr noundef nonnull @.str.37, i32 noundef %i.ho) #25
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.noexc221
  unreachable

bb.cd:                                            ; preds = %.noexc221
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

bb.ce:                                            ; preds = %bb.ca
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !80
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !80
  %i.hx = call double @llvm.fmuladd.f64(double %i.hw, double -3.000000e+00, double %i.hu)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !80 ; 2 uses
  %i.ia = call double @llvm.fmuladd.f64(double %i.hz, double 3.000000e+00, double %i.hx)
  %i.ib = load double, ptr %i.gw, align 8, !tbaa !80 ; 2 uses
  %i.ic = fsub double %i.ia, %i.ib                ; 2 uses
  %i.id = load ptr, ptr @debug, align 8, !tbaa !66 ; 2 uses
  %.not.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ie = fdiv double %i.ic, %i.di
  %i.if = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.id, ptr noundef nonnull @.str.38, double noundef %i.ie) #24 ; 0 uses
  %.pre.i.i = load double, ptr %i.hy, align 8, !tbaa !80
  %.pre134.i.i = load double, ptr %i.gw, align 8, !tbaa !80
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ig = phi double [ %.pre134.i.i, %bb.cf ], [ %i.ib, %bb.ce ]
  %i.ih = phi double [ %.pre.i.i, %bb.cf ], [ %i.hz, %bb.ce ]
  %i.ii = fsub double %i.ih, %i.ig
  %i.ij = fdiv double %i.ic, 6.000000e+00
  %i.ik = call double @llvm.fmuladd.f64(double %i.ii, double 2.000000e+00, double %i.ij) ; 3 uses
  br i1 %i.hp, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.il = zext nneg i32 %i.ho to i64              ; 3 uses
  %i.im = getelementptr [8 x i8], ptr %i.gw, i64 %i.il ; 4 uses
  %i.in = getelementptr i8, ptr %i.im, i64 -8     ; 2 uses
  %i.io = load double, ptr %i.in, align 8, !tbaa !80 ; 2 uses
  %i.ip = getelementptr i8, ptr %i.im, i64 -16    ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !80 ; 2 uses
  %i.ir = call double @llvm.fmuladd.f64(double %i.iq, double -3.000000e+00, double %i.io)
  %i.is = getelementptr i8, ptr %i.im, i64 -24
  %i.it = load double, ptr %i.is, align 8, !tbaa !80
  %i.iu = call double @llvm.fmuladd.f64(double %i.it, double 3.000000e+00, double %i.ir)
  %i.iv = getelementptr i8, ptr %i.im, i64 -32
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !80
  %i.ix = fsub double %i.iu, %i.iw                ; 2 uses
  %i.iy = load ptr, ptr @debug, align 8, !tbaa !66 ; 2 uses
  %.not110.i.i = icmp eq ptr %i.iy, null
  br i1 %.not110.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iz = fdiv double %i.ix, %i.dk
  %i.ja = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.iy, ptr noundef nonnull @.str.39, double noundef %i.iz) #24 ; 0 uses
  %.pre135.i.i = load double, ptr %i.in, align 8, !tbaa !80
  %.pre136.i.i = load double, ptr %i.ip, align 8, !tbaa !80
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.jb = phi double [ %.pre136.i.i, %bb.ci ], [ %i.iq, %bb.ch ]
  %i.jc = phi double [ %.pre135.i.i, %bb.ci ], [ %i.io, %bb.ch ]
  %i.jd = fsub double %i.jc, %i.jb
  %i.je = fdiv double %i.ix, 6.000000e+00
  %i.jf = call double @llvm.fmuladd.f64(double %i.jd, double 2.000000e+00, double %i.je)
  br label %.lr.ph.preheader.i.i

bb.ck:                                            ; preds = %bb.cg
  %i.jg = add nsw i32 %i.ho, -1                   ; 2 uses
  %i.jh = zext nneg i32 %i.jg to i64              ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !80
  %i.jk = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.jl = getelementptr [8 x i8], ptr %i.gw, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.jl, i64 -24
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !80
  %i.jo = fsub double %i.jj, %i.jn
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.jh
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !80
  %i.jr = fmul double %i.de, %i.jq
  %i.js = call double @llvm.fmuladd.f64(double %i.jo, double 3.000000e+00, double %i.jr)
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ck, %bb.cj
  %wide.trip.count.i.pre-phi.i = phi i64 [ %i.jh, %bb.ck ], [ %i.il, %bb.cj ] ; 10 uses
  %.pre-phi.i.i = phi i64 [ %i.jk, %bb.ck ], [ %i.il, %bb.cj ]
  %.0105.i.i = phi i32 [ %i.jg, %bb.ck ], [ %i.ho, %bb.cj ] ; 2 uses
  %.0102.i.i = phi double [ %i.js, %bb.ck ], [ %i.jf, %bb.cj ]
  %i.jt = shl nuw nsw i64 %.pre-phi.i.i, 3        ; 3 uses
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #29
end_hunk_0
