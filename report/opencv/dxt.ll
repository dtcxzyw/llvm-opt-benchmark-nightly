Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cv10OcvDctImpl5applyEPKhmPhm:bb.a
  store ptr %i.dy, ptr %i.x, align 8, !tbaa !115
  br label %_ZN2cv10AutoBufferIjLm264EE8allocateEm.exit

_ZN2cv10AutoBufferIjLm264EE8allocateEm.exit:      ; preds = %.noexc, %_ZN2cv10AutoBufferIjLm264EE10deallocateEv.exit.i, %bb.y
  %i.dz = phi ptr [ %i.dy, %.noexc ], [ %i.dt, %_ZN2cv10AutoBufferIjLm264EE10deallocateEv.exit.i ], [ %.pre, %bb.y ]
  store ptr %i.dz, ptr %i.ab, align 8, !tbaa !654
  %i.ea = sext i32 %.154 to i64                   ; 4 uses
  %i.eb = load i64, ptr %i.ad, align 8, !tbaa !33
  %.not.i87 = icmp ult i64 %i.eb, %i.ea
  br i1 %.not.i87, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN2cv10AutoBufferIjLm264EE8allocateEm.exit
  store i64 %i.ea, ptr %i.ad, align 8, !tbaa !33
  %.pre140.a = load ptr, ptr %i.ac, align 8, !tbaa !32
  br label %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit

bb.af:                                            ; preds = %_ZN2cv10AutoBufferIjLm264EE8allocateEm.exit
  %i.ec = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 4 uses
  %.not.i.i88 = icmp eq ptr %i.ec, %i.ae
  br i1 %.not.i.i88, label %_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.ec) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !32
  br label %_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i

_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i: ; preds = %bb.ai, %bb.af
  %i.ee = phi ptr [ %i.ae, %bb.ai ], [ %i.ec, %bb.af ]
  store i64 %i.ea, ptr %i.ad, align 8, !tbaa !33
  %i.ef = icmp ugt i32 %.154, 264
  br i1 %i.ef, label %bb.aj, label %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit

bb.aj:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i
  %i.eg = icmp slt i32 %.154, 0
  %i.eh = shl nuw nsw i64 %i.ea, 2
  %i.ei = select i1 %i.eg, i64 -1, i64 %i.eh
  %i.ej = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ei) #19
          to label %.noexc89 unwind label %bb.be  ; 2 uses

.noexc89:                                         ; preds = %bb.aj
  store ptr %i.ej, ptr %i.ac, align 8, !tbaa !32
  br label %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit

_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit:      ; preds = %.noexc89, %_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i, %bb.ae
  %i.ek = phi ptr [ %i.ej, %.noexc89 ], [ %i.ee, %_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i ], [ %.pre140.a, %bb.ae ] ; 2 uses
  store ptr %i.ek, ptr %i.af, align 8, !tbaa !655
  %i.el = load i32, ptr %i.t, align 8, !tbaa !125
  %i.em = load ptr, ptr %i.w, align 8, !tbaa !126
  %i.en = load ptr, ptr %i.ab, align 8, !tbaa !654
  %i.eo = load i8, ptr %i.ag, align 1, !tbaa !122, !range !44, !noundef !45
  %i.ep = zext nneg i8 %i.eo to i32
  invoke fastcc void @_ZN2cvL7DFTInitEiiPKiPiiPvi(i32 noundef %.154, i32 noundef %i.el, ptr noundef %i.em, ptr noundef %i.ek, i32 noundef %i.k, ptr noundef %i.en, i32 noundef %i.ep)
          to label %bb.ak unwind label %bb.be

bb.ak:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit
  %i.eq = sdiv i32 %.154, 2
  %i.er = add nsw i32 %i.eq, 1
  %i.es = shl i32 %i.er, %i.y                     ; 2 uses
  %i.et = sext i32 %i.es to i64                   ; 4 uses
  %i.eu = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.i90 = icmp ult i64 %i.eu, %i.et
  br i1 %.not.i90, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i64 %i.et, ptr %i.b, align 8, !tbaa !30
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.am:                                            ; preds = %bb.ak
  %i.ev = load ptr, ptr %7, align 8, !tbaa !29    ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.ev, %i.a
  br i1 %.not.i.i91, label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.ev) #20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store ptr %i.a, ptr %7, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i

_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i: ; preds = %bb.ap, %bb.am
  store i64 %i.et, ptr %i.b, align 8, !tbaa !30
  %i.ex = icmp ugt i32 %i.es, 1032
  br i1 %i.ex, label %bb.aq, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.aq:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i
  %i.ey = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.et) #19
          to label %.noexc92 unwind label %bb.be

.noexc92:                                         ; preds = %bb.aq
  store ptr %i.ey, ptr %7, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit:     ; preds = %.noexc92, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i, %bb.al
  %i.ez = shl i32 %.154, %i.ah                    ; 3 uses
  %i.fa = sext i32 %i.ez to i64                   ; 8 uses
  %i.fb = load i64, ptr %i.d, align 8, !tbaa !30
  %.not.i93 = icmp ult i64 %i.fb, %i.fa
  br i1 %.not.i93, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit
  store i64 %i.fa, ptr %i.d, align 8, !tbaa !30
  %.pre141.a = load ptr, ptr %8, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit97

bb.as:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit
  %i.fc = load ptr, ptr %8, align 8, !tbaa !29    ; 4 uses
  %.not.i.i94 = icmp eq ptr %i.fc, %i.c
  br i1 %.not.i.i94, label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i95, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdaPv(ptr noundef nonnull %i.fc) #20
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  store ptr %i.c, ptr %8, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i95

_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i95: ; preds = %bb.av, %bb.as
  %i.fe = phi ptr [ %i.c, %bb.av ], [ %i.fc, %bb.as ]
  store i64 %i.fa, ptr %i.d, align 8, !tbaa !30
  %i.ff = icmp ugt i32 %i.ez, 1032
  br i1 %i.ff, label %bb.aw, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit97

bb.aw:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i95
  %i.fg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fa) #19
          to label %.noexc96 unwind label %bb.be  ; 2 uses

.noexc96:                                         ; preds = %bb.aw
  store ptr %i.fg, ptr %8, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit97

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit97:   ; preds = %.noexc96, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i95, %bb.ar
  %i.fh = phi ptr [ %i.fg, %.noexc96 ], [ %i.fe, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i95 ], [ %.pre141.a, %bb.ar ] ; 8 uses
  br i1 %i.dn, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit102, label %bb.ax

bb.ax:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit97
  %i.fi = load i64, ptr %i.f, align 8, !tbaa !30
  %.not.i98 = icmp ult i64 %i.fi, %i.fa
  br i1 %.not.i98, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i64 %i.fa, ptr %i.f, align 8, !tbaa !30
  %.pre142 = load ptr, ptr %9, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit102

bb.az:                                            ; preds = %bb.ax
  %i.fj = load ptr, ptr %9, align 8, !tbaa !29    ; 4 uses
  %.not.i.i99 = icmp eq ptr %i.fj, %i.e
  br i1 %.not.i.i99, label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i100, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.fj) #20
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  store ptr %i.e, ptr %9, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i100

_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i100: ; preds = %bb.bc, %bb.az
  %i.fl = phi ptr [ %i.e, %bb.bc ], [ %i.fj, %bb.az ]
  store i64 %i.fa, ptr %i.f, align 8, !tbaa !30
  %i.fm = icmp ugt i32 %i.ez, 1032
  br i1 %i.fm, label %bb.bd, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit102

bb.bd:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i100
  %i.fn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fa) #19
          to label %.noexc101 unwind label %bb.be ; 2 uses

.noexc101:                                        ; preds = %bb.bd
  store ptr %i.fn, ptr %9, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit102

bb.be:                                            ; preds = %bb.bd, %bb.aw, %bb.aq, %bb.aj, %bb.ad, %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit102:  ; preds = %bb.ay, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i100, %.noexc101, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit97
  %.163 = phi ptr [ %i.fh, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit97 ], [ %i.fn, %.noexc101 ], [ %i.fl, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i100 ], [ %.pre142, %bb.ay ] ; 7 uses
  %i.fp = load ptr, ptr %7, align 8, !tbaa !29    ; 6 uses
  %i.fq = load i8, ptr %i.ag, align 1, !tbaa !122, !range !44, !noundef !45 ; 2 uses
  %i.fr = icmp eq i32 %.154, 1
  br i1 %i.fr, label %_ZN2cvL7DCTInitEiiPvi.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit102
  br i1 %.not75, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cvL7DCTInitEiiPvi, ptr noundef nonnull @.str.1, i32 noundef 4090) #22
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.bk:                                            ; preds = %bb.bh
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bk
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !52
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bj
  %.pn.i = phi { ptr, i32 } [ %i.fs, %bb.bj ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ft, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body

bb.bl:                                            ; preds = %bb.bf
  %i.fz = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %.154)
  %i.ga = icmp samesign ult i32 %i.fz, 2
  br i1 %i.ga, label %.preheader63.i, label %bb.bn

.preheader63.i:                                   ; preds = %bb.bl, %.preheader63.i
  %.0.i = phi i32 [ %i.gd, %.preheader63.i ], [ 0, %bb.bl ] ; 3 uses
  %i.gb = shl nuw i32 1, %.0.i
  %i.gc = icmp ult i32 %i.gb, %.154
  %i.gd = add nuw nsw i32 %.0.i, 1
  br i1 %i.gc, label %.preheader63.i, label %bb.bm, !llvm.loop !647

bb.bm:                                            ; preds = %.preheader63.i
  %.not47.i = icmp eq i8 %i.fq, 0
  %12 = select i1 %.not47.i, double 2.000000e+00, double 1.000000e+00
  %i.ge = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cvL7DCTInitEiiPviE8DctScale, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !113
  %i.gh = fmul double %12, %i.gg
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr @_ZN2cvL6DFTTabE, i64 %i.ge ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = load double, ptr %i.gj, align 16, !tbaa !113
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !113
  %i.gn = fneg double %i.gm
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.go = shl nsw i32 %.154, 1
  %i.gp = sitofp i32 %i.go to double
  %i.gq = fdiv double 1.000000e+00, %i.gp         ; 2 uses
  %.not.i103 = icmp eq i8 %i.fq, 0
  %13 = select i1 %.not.i103, double 2.000000e+00, double 1.000000e+00
  %i.gr = call double @sqrt(double noundef %i.gq) #21
  %i.gs = fmul double %13, %i.gr
  %i.gt = fmul nnan double %i.gq, f0xC00921FB54442D18
  %i.gu = call double @sin(double noundef %i.gt) #21 ; 3 uses
  %i.gv = fneg double %i.gu
  %i.gw = call double @llvm.fmuladd.f64(double %i.gv, double %i.gu, double 1.000000e+00)
  %i.gx = call double @sqrt(double noundef %i.gw) #21
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sroa.0.0.i = phi double [ %i.gk, %bb.bm ], [ %i.gx, %bb.bn ] ; 4 uses
  %.sroa.8.0.i = phi double [ %i.gn, %bb.bm ], [ %i.gu, %bb.bn ] ; 4 uses
  %.041.i = phi double [ %i.gh, %bb.bm ], [ %i.gs, %bb.bn ] ; 2 uses
  %i.gy = ashr exact i32 %.154, 1                 ; 3 uses
  %.not5164.i = icmp slt i32 %i.gy, 0             ; 2 uses
  br i1 %i.i, label %bb.bq, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bo
  br i1 %.not5164.i, label %_ZN2cvL7DCTInitEiiPvi.exit, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.preheader.i
  %i.gz = fneg double %.sroa.8.0.i
  %i.ha = add nuw nsw i32 %i.gy, 1                ; 2 uses
  %wide.trip.count78.i = zext nneg i32 %i.ha to i64 ; 2 uses
  %i.hb = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.041.i, i64 0 ; 2 uses
  %i.hc = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %.sroa.0.0.i, i64 1 ; 2 uses
  %i.he = insertelement <2 x double> poison, double %.sroa.0.0.i, i64 0
  %i.hf = insertelement <2 x double> %i.he, double %.sroa.8.0.i, i64 1 ; 2 uses
  %xtraiter196 = and i64 %wide.trip.count78.i, 1
  %i.hg = icmp eq i32 %.154, 0
  br i1 %i.hg, label %.epil.preheader, label %.lr.ph72.i.new

.lr.ph72.i.new:                                   ; preds = %.lr.ph72.i
  %unroll_iter = and i64 %wide.trip.count78.i, 2147483646
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph72.i.new
  %indvars.iv75.i = phi i64 [ 0, %.lr.ph72.i.new ], [ %indvars.iv.next76.i.1, %bb.bp ] ; 3 uses
  %i.hh = phi <2 x double> [ %i.hb, %.lr.ph72.i.new ], [ %i.hs, %bb.bp ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph72.i.new ], [ %niter.next.1, %bb.bp ]
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %indvars.iv75.i
  store <2 x double> %i.hh, ptr %i.hi, align 8, !tbaa !113
  %i.hj = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hk = fmul <2 x double> %i.hj, %i.hd
  %i.hl = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hf, <2 x double> %i.hk) ; 3 uses
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %indvars.iv75.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <2 x double> %i.hm, ptr %i.ho, align 8, !tbaa !113
  %i.hp = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hq = fmul <2 x double> %i.hp, %i.hd
  %i.hr = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.hf, <2 x double> %i.hq) ; 2 uses
  %indvars.iv.next76.i.1 = add nuw nsw i64 %indvars.iv75.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cvL7DCTInitEiiPvi.exit.loopexit193.unr-lcssa, label %bb.bp, !llvm.loop !648

bb.bq:                                            ; preds = %bb.bo
  br i1 %.not5164.i, label %_ZN2cvL7DCTInitEiiPvi.exit, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %bb.bq
  %i.ht = fptrunc double %.041.i to float
  %i.hu = fpext float %i.ht to double
  %i.hv = fneg double %.sroa.8.0.i
  %i.hw = add nuw nsw i32 %i.gy, 1                ; 2 uses
  %wide.trip.count.i105 = zext nneg i32 %i.hw to i64 ; 2 uses
  %i.hx = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hu, i64 0 ; 2 uses
  %i.hy = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %.sroa.0.0.i, i64 1 ; 2 uses
  %i.ia = insertelement <2 x double> poison, double %.sroa.0.0.i, i64 0
  %i.ib = insertelement <2 x double> %i.ia, double %.sroa.8.0.i, i64 1 ; 2 uses
  %xtraiter200 = and i64 %wide.trip.count.i105, 1
  %i.ic = icmp eq i32 %.154, 0
  br i1 %i.ic, label %.epil.preheader199, label %.lr.ph.i104.new

.lr.ph.i104.new:                                  ; preds = %.lr.ph.i104
  %unroll_iter205 = and i64 %wide.trip.count.i105, 2147483646
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph.i104.new
  %indvars.iv.i106 = phi i64 [ 0, %.lr.ph.i104.new ], [ %indvars.iv.next.i107.1, %bb.br ] ; 3 uses
  %i.id = phi <2 x double> [ %i.hx, %.lr.ph.i104.new ], [ %i.iq, %bb.br ] ; 3 uses
  %niter206 = phi i64 [ 0, %.lr.ph.i104.new ], [ %niter206.next.1, %bb.br ]
  %i.ie = fptrunc <2 x double> %i.id to <2 x float>
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv.i106
  store <2 x float> %i.ie, ptr %i.if, align 4, !tbaa !109
  %i.ig = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = fmul <2 x double> %i.ig, %i.hz
  %i.ii = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.ib, <2 x double> %i.ih) ; 3 uses
  %i.ik = fptrunc <2 x double> %i.ij to <2 x float>
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv.i106
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store <2 x float> %i.ik, ptr %i.im, align 4, !tbaa !109
  %i.in = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.io = fmul <2 x double> %i.in, %i.hz
  %i.ip = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ib, <2 x double> %i.io) ; 2 uses
  %indvars.iv.next.i107.1 = add nuw nsw i64 %indvars.iv.i106, 2 ; 2 uses
  %niter206.next.1 = add i64 %niter206, 2         ; 2 uses
  %niter206.ncmp.1 = icmp eq i64 %niter206.next.1, %unroll_iter205
  br i1 %niter206.ncmp.1, label %_ZN2cvL7DCTInitEiiPvi.exit.loopexit.unr-lcssa, label %bb.br, !llvm.loop !649

_ZN2cvL7DCTInitEiiPvi.exit.loopexit.unr-lcssa:    ; preds = %bb.br
  %lcmp.mod203.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod203.not, label %_ZN2cvL7DCTInitEiiPvi.exit, label %.epil.preheader199

.epil.preheader199:                               ; preds = %_ZN2cvL7DCTInitEiiPvi.exit.loopexit.unr-lcssa, %.lr.ph.i104
  %indvars.iv.i106.epil.init = phi i64 [ 0, %.lr.ph.i104 ], [ %indvars.iv.next.i107.1, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit.unr-lcssa ]
  %.epil.init202 = phi <2 x double> [ %i.hx, %.lr.ph.i104 ], [ %i.iq, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit.unr-lcssa ]
  %lcmp.mod204 = trunc i32 %i.hw to i1
  call void @llvm.assume(i1 %lcmp.mod204)
  %i.ir = fptrunc <2 x double> %.epil.init202 to <2 x float>
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv.i106.epil.init
  store <2 x float> %i.ir, ptr %i.is, align 4, !tbaa !109
  br label %_ZN2cvL7DCTInitEiiPvi.exit

_ZN2cvL7DCTInitEiiPvi.exit.loopexit193.unr-lcssa: ; preds = %bb.bp
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %_ZN2cvL7DCTInitEiiPvi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2cvL7DCTInitEiiPvi.exit.loopexit193.unr-lcssa, %.lr.ph72.i
  %indvars.iv75.i.epil.init = phi i64 [ 0, %.lr.ph72.i ], [ %indvars.iv.next76.i.1, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit193.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.hb, %.lr.ph72.i ], [ %i.hs, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit193.unr-lcssa ]
  %lcmp.mod198 = trunc i32 %i.ha to i1
  call void @llvm.assume(i1 %lcmp.mod198)
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %indvars.iv75.i.epil.init
  store <2 x double> %.epil.init, ptr %i.it, align 8, !tbaa !113
  br label %_ZN2cvL7DCTInitEiiPvi.exit

_ZN2cvL7DCTInitEiiPvi.exit:                       ; preds = %.epil.preheader, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit193.unr-lcssa, %.epil.preheader199, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit.unr-lcssa, %bb.bq, %.preheader.i, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit102, %bb.i
  %.165 = phi ptr [ %.064128, %bb.i ], [ %i.fh, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit102 ], [ %i.fh, %.preheader.i ], [ %i.fh, %.epil.preheader199 ], [ %i.fh, %bb.bq ], [ %i.fh, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit.unr-lcssa ], [ %i.fh, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit193.unr-lcssa ], [ %i.fh, %.epil.preheader ] ; 2 uses
  %.2 = phi ptr [ %.062129, %bb.i ], [ %.163, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit102 ], [ %.163, %.preheader.i ], [ %.163, %.epil.preheader199 ], [ %.163, %bb.bq ], [ %.163, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit.unr-lcssa ], [ %.163, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit193.unr-lcssa ], [ %.163, %.epil.preheader ] ; 2 uses
  %.161 = phi i32 [ %.060130, %bb.i ], [ 1, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit102 ], [ %.154, %.preheader.i ], [ %.154, %.epil.preheader199 ], [ %.154, %bb.bq ], [ %.154, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit.unr-lcssa ], [ %.154, %_ZN2cvL7DCTInitEiiPvi.exit.loopexit193.unr-lcssa ], [ %.154, %.epil.preheader ]
  %.not135 = icmp eq i32 %.1, 0
  br i1 %.not135, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2cvL7DCTInitEiiPvi.exit
  %wide.trip.count = zext i32 %.1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.bs, %_ZN2cvL7DCTInitEiiPvi.exit
  %i.iu = add nsw i32 %.059131, 1
  %i.iv = load i32, ptr %i.n, align 8, !tbaa !127
  %.not.not = icmp slt i32 %.059131, %i.iv
  br i1 %.not.not, label %bb.e, label %._crit_edge134, !llvm.loop !650

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bs
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bs ] ; 3 uses
  %i.iw = load ptr, ptr %i.ai, align 8, !tbaa !124
  %i.ix = mul i64 %.058, %indvars.iv
  %i.iy = getelementptr inbounds nuw i8, ptr %.070127, i64 %i.ix
  %i.iz = mul i64 %.056, %indvars.iv
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 %i.iz
  %i.jb = load ptr, ptr %7, align 8, !tbaa !29
  invoke void %i.iw(ptr noundef nonnull align 8 dereferenceable(65) %i.t, ptr noundef %i.iy, i64 noundef %.057, ptr noundef %.165, ptr noundef %.2, ptr noundef %i.ja, i64 noundef %.055, ptr noundef %i.jb)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !651

bb.bt:                                            ; preds = %.lr.ph
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.be, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jc, %bb.bt ], [ %i.fo, %bb.be ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.jd = load ptr, ptr %9, align 8, !tbaa !29    ; 3 uses
  %.not.i.i109 = icmp eq ptr %i.jd, %i.e
  %i.je = icmp eq ptr %i.jd, null
  %or.cond.i110 = or i1 %.not.i.i109, %i.je
  br i1 %or.cond.i110, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit112, label %bb.bu

bb.bu:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.jd) #20
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit112

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit112:         ; preds = %.body, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.jf = load ptr, ptr %8, align 8, !tbaa !29    ; 3 uses
  %.not.i.i113 = icmp eq ptr %i.jf, %i.c
  %i.jg = icmp eq ptr %i.jf, null
  %or.cond.i114 = or i1 %.not.i.i113, %i.jg
  br i1 %or.cond.i114, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit116, label %bb.bv

bb.bv:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit112
  call void @_ZdaPv(ptr noundef nonnull %i.jf) #20
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit116

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit116:         ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit112, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.jh = load ptr, ptr %7, align 8, !tbaa !29    ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.jh, %i.a
  %i.ji = icmp eq ptr %i.jh, null
  %or.cond.i118 = or i1 %.not.i.i117, %i.ji
  br i1 %or.cond.i118, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit120, label %bb.bw

end_hunk_0
