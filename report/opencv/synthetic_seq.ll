Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/synthetic_seq?download=true
inline.NumInlined: 198
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv6bgsegm26SyntheticSequenceGenerator12getNextFrameERKNS_12_OutputArrayES4_:bb.a
  br i1 %i.u, label %bb.m, label %.thread.i

.thread.i:                                        ; preds = %bb.l
  %i.v = icmp eq i32 %i.m, 0
  %i.w = zext i1 %i.v to i32
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.y = icmp eq i32 %i.m, 2
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40 ; 3 uses
  %.not.i = icmp eq i32 %i.m, 1
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !40  ; 2 uses
  %i.ad = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %i.ab, i64 1
  br label %_ZNK2cv8MatShapeclEv.exit

bb.o:                                             ; preds = %bb.m, %.thread.i
  %i.af = phi i32 [ %i.w, %.thread.i ], [ %i.ab, %bb.m ] ; 2 uses
  %i.ag = icmp sgt i32 %i.m, -1
  %i.ah = zext i1 %i.ag to i32                    ; 2 uses
  %i.ai = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.af, i64 1
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.n, %bb.o
  %i.ak = phi i32 [ %i.ab, %bb.n ], [ %i.af, %bb.o ] ; 7 uses
  %i.al = phi i32 [ %i.ac, %bb.n ], [ %i.ah, %bb.o ] ; 6 uses
  %i.am = phi <2 x i32> [ %i.ae, %bb.n ], [ %i.aj, %bb.o ] ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.al to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ak to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  tail call void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef 64, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.an = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !63
  %i.ao = icmp eq i32 %i.an, 65536
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32, !noalias !63
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.aq)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.q:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.p, %bb.q
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !34
  %i.as = and i32 %i.ar, 16384
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.at = load i32, ptr %9, align 8, !tbaa !34
  %i.au = and i32 %i.at, 16384
  %.not92 = icmp eq i32 %i.au, 0
  br i1 %.not92, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r, %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv6bgsegm26SyntheticSequenceGenerator12getNextFrameERKNS_12_OutputArrayES4_, ptr noundef nonnull @.str.1, i32 noundef 193) #17
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.w:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.w
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !38
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.v
  %.pn = phi { ptr, i32 } [ %i.av, %bb.v ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.aw, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.body

bb.x:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !28
  %i.bm = uitofp i32 %i.bl to double
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !26
  %i.bp = fmul double %i.bo, %i.bm
  %i.bq = mul nsw i32 %i.ak, 3
  %i.br = sext i32 %i.bq to i64                   ; 4 uses
  %i.bs = sitofp i32 %i.ak to double
  %i.bt = fmul nnan double %i.bs, 5.000000e-01    ; 4 uses
  %i.bu = sitofp i32 %i.al to double
  %i.bv = fmul nnan double %i.bu, 5.000000e-01    ; 4 uses
  %i.bw = fcmp olt double %i.bt, %i.bv
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bx = fdiv double %i.bv, %i.bt                ; 2 uses
  %i.by = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bx, i64 1
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.bz = fcmp ogt double %i.bt, %i.bv
  br i1 %i.bz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ca = fdiv double %i.bt, %i.bv                ; 2 uses
  %i.cb = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ca, i64 0
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.088.i = phi double [ %i.bx, %bb.y ], [ 1.000000e+00, %bb.aa ], [ 1.000000e+00, %bb.z ]
  %.087.i = phi double [ 1.000000e+00, %bb.y ], [ %i.ca, %bb.aa ], [ 1.000000e+00, %bb.z ]
  %i.cc = phi <2 x double> [ %i.by, %bb.y ], [ %i.cb, %bb.aa ], [ splat (double 1.000000e+00), %bb.z ]
  %i.cd = fmul double %i.bj, 2.000000e+00
  %i.ce = icmp sgt i32 %i.al, 0
  br i1 %i.ce, label %.preheader.lr.ph.i, label %_ZN2cv6bgsegm12_GLOBAL__N_114waveDistortionEPKhPhiiiddd.exit

.preheader.lr.ph.i:                               ; preds = %bb.ab
  %i.cf = icmp sgt i32 %i.ak, 0
  %i.cg = add nsw <2 x i32> %i.am, splat (i32 -2)
  %i.ch = add nsw i32 %i.ak, -1
  %i.ci = add nsw i32 %i.al, -1
  br i1 %i.cf, label %.preheader.i, label %_ZN2cv6bgsegm12_GLOBAL__N_114waveDistortionEPKhPhiiiddd.exit

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.i
  %.086110.i = phi i32 [ %i.co, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.089109.i = phi ptr [ %i.cn, %._crit_edge.i ], [ %i.bf, %.preheader.lr.ph.i ] ; 2 uses
  %i.cj = uitofp nneg i32 %.086110.i to double
  %i.ck = fmul double %.087.i, %i.cj              ; 3 uses
  %i.cl = fmul double %i.ck, %i.ck
  %i.cm = insertelement <2 x double> poison, double %i.ck, i64 0
  br label %bb.ac

._crit_edge.i:                                    ; preds = %.cont.cont.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.089109.i, i64 %i.br
  %i.co = add nuw nsw i32 %.086110.i, 1           ; 2 uses
  %exitcond112.not.i = icmp eq i32 %i.co, %i.al
  br i1 %exitcond112.not.i, label %_ZN2cv6bgsegm12_GLOBAL__N_114waveDistortionEPKhPhiiiddd.exit, label %.preheader.i, !llvm.loop !58

bb.ac:                                            ; preds = %.cont.cont.i, %.preheader.i
  %.0108.i = phi i32 [ 0, %.preheader.i ], [ %i.gd, %.cont.cont.i ] ; 2 uses
  %.085107.i = phi ptr [ %.089109.i, %.preheader.i ], [ %i.gc, %.cont.cont.i ] ; 4 uses
  %i.cp = uitofp nneg i32 %.0108.i to double
  %i.cq = fmul double %.088.i, %i.cp              ; 3 uses
  %i.cr = call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.cl)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.cr)
  %i.cs = fdiv double %sqrt.i, %i.cd
  %i.ct = call double @llvm.fmuladd.f64(double %i.cs, double f0x401921FB54442D18, double %i.bp)
  %i.cu = call double @sin(double noundef %i.ct) #16
  %i.cv = fmul double %i.bh, %i.cu
  %i.cw = insertelement <2 x double> %i.cm, double %i.cq, i64 1
  %i.cx = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fadd <2 x double> %i.cw, %i.cy
  %i.da = fdiv <2 x double> %i.cz, %i.cc          ; 3 uses
  %i.db = fptosi <2 x double> %i.da to <2 x i32>  ; 2 uses
  %i.dc = icmp slt <2 x i32> %i.db, zeroinitializer
  %i.dd = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.db, <2 x i32> %i.cg)
  %i.de = select <2 x i1> %i.dc, <2 x i32> zeroinitializer, <2 x i32> %i.dd ; 3 uses
  %i.df = extractelement <2 x i32> %i.de, i64 0   ; 3 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul nsw i64 %i.dg, %i.br
  %i.di = getelementptr inbounds i8, ptr %i.bd, i64 %i.dh
  %i.dj = extractelement <2 x i32> %i.de, i64 1   ; 3 uses
  %i.dk = mul nsw i32 %i.dj, 3
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dl ; 7 uses
  %i.dn = icmp ult <2 x i32> %i.de, %i.am         ; 2 uses
  %i.do = icmp sgt i32 %i.dj, -2
  %i.dp = icmp slt i32 %i.dj, %i.ch
  %i.dq = and i1 %i.do, %i.dp                     ; 2 uses
  %i.dr = icmp sgt i32 %i.df, -2
  %i.ds = icmp slt i32 %i.df, %i.ci
  %i.dt = and i1 %i.dr, %i.ds                     ; 2 uses
  %21 = extractelement <2 x i1> %i.dn, i64 0      ; 2 uses
  %i.du = extractelement <2 x i1> %i.dn, i64 1    ; 2 uses
  %or.cond.i = and i1 %i.du, %21                  ; 3 uses
  %or.cond3.i = and i1 %21, %i.dq                 ; 3 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.dm, i64 3 ; 2 uses
  %or.cond5.i = and i1 %i.du, %i.dt               ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.br ; 3 uses
  %or.cond7.i = and i1 %i.dq, %i.dt               ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %22, i64 %i.br ; 3 uses
  %i.dx = extractelement <2 x double> %i.da, i64 1
  %i.dy = call double @fmod(double noundef %i.dx, double noundef 1.000000e+00) #16 ; 3 uses
  %i.dz = extractelement <2 x double> %i.da, i64 0
  %i.ea = call double @fmod(double noundef %i.dz, double noundef 1.000000e+00) #16 ; 3 uses
  %i.eb = fcmp olt double %i.dy, 0.000000e+00
  %i.ec = fadd double %i.dy, 1.000000e+00
  %.0.i.i = select i1 %i.eb, double %i.ec, double %i.dy ; 7 uses
  %i.ed = fcmp olt double %i.ea, 0.000000e+00
  %i.ee = fadd double %i.ea, 1.000000e+00
  %.026.i.i = select i1 %i.ed, double %i.ee, double %i.ea ; 4 uses
  %i.ef = fsub double 1.000000e+00, %.0.i.i       ; 6 uses
  %i.eg = fsub double 1.000000e+00, %.026.i.i     ; 3 uses
  br i1 %or.cond.i, label %.then168.i, label %.cont167.i

.then168.i:                                       ; preds = %bb.ac
  %.then.val169.i = load i8, ptr %i.dm, align 1, !tbaa !38
  %i.eh = uitofp i8 %.then.val169.i to double
  br label %.cont167.i

.cont167.i:                                       ; preds = %.then168.i, %bb.ac
  %i.ei = phi double [ %i.eh, %.then168.i ], [ 0.000000e+00, %bb.ac ]
  br i1 %or.cond3.i, label %.then164.i, label %.cont163.i

.then164.i:                                       ; preds = %.cont167.i
  %.then.val165.i = load i8, ptr %22, align 1, !tbaa !38
  %i.ej = uitofp i8 %.then.val165.i to double
  br label %.cont163.i

.cont163.i:                                       ; preds = %.then164.i, %.cont167.i
  %i.ek = phi double [ %i.ej, %.then164.i ], [ 0.000000e+00, %.cont167.i ]
  %i.el = fmul double %.0.i.i, %i.ek
  %i.em = call double @llvm.fmuladd.f64(double %i.ef, double %i.ei, double %i.el)
  br i1 %or.cond5.i, label %.then160.i, label %.cont159.i

.then160.i:                                       ; preds = %.cont163.i
  %.then.val161.i = load i8, ptr %i.dv, align 1, !tbaa !38
  %i.en = uitofp i8 %.then.val161.i to double
  br label %.cont159.i

.cont159.i:                                       ; preds = %.then160.i, %.cont163.i
  %i.eo = phi double [ %i.en, %.then160.i ], [ 0.000000e+00, %.cont163.i ]
  br i1 %or.cond7.i, label %.then156.i, label %.cont155.i

.then156.i:                                       ; preds = %.cont159.i
  %.then.val157.i = load i8, ptr %i.dw, align 1, !tbaa !38
  %i.ep = uitofp i8 %.then.val157.i to double
  br label %.cont155.i

.cont155.i:                                       ; preds = %.then156.i, %.cont159.i
  %i.eq = phi double [ %i.ep, %.then156.i ], [ 0.000000e+00, %.cont159.i ]
  %i.er = fmul double %.0.i.i, %i.eq
  %i.es = call double @llvm.fmuladd.f64(double %i.ef, double %i.eo, double %i.er)
  %i.et = fmul double %.026.i.i, %i.es
  %i.eu = call double @llvm.fmuladd.f64(double %i.eg, double %i.em, double %i.et)
  %i.ev = fptoui double %i.eu to i8
  store i8 %i.ev, ptr %.085107.i, align 1, !tbaa !38
  br i1 %or.cond.i, label %.then142.i, label %.cont141.i

.then142.i:                                       ; preds = %.cont155.i
  %.sroa.gep127.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %.then.val143.i = load i8, ptr %.sroa.gep127.i, align 1, !tbaa !38
  %i.ew = uitofp i8 %.then.val143.i to double
  br label %.cont141.i

.cont141.i:                                       ; preds = %.then142.i, %.cont155.i
  %i.ex = phi double [ %i.ew, %.then142.i ], [ 0.000000e+00, %.cont155.i ]
  br i1 %or.cond3.i, label %.cont141.then152.i, label %.cont141.cont151.i

.cont141.then152.i:                               ; preds = %.cont141.i
  %.sroa.gep114.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %.then.val153.i = load i8, ptr %.sroa.gep114.i, align 1, !tbaa !38
  %i.ey = uitofp i8 %.then.val153.i to double
  br label %.cont141.cont151.i

.cont141.cont151.i:                               ; preds = %.cont141.then152.i, %.cont141.i
  %i.ez = phi double [ %i.ey, %.cont141.then152.i ], [ 0.000000e+00, %.cont141.i ]
  %i.fa = fmul double %.0.i.i, %i.ez
  %i.fb = call double @llvm.fmuladd.f64(double %i.ef, double %i.ex, double %i.fa)
  br i1 %or.cond5.i, label %.cont141.then148.i, label %.cont141.cont147.i

.cont141.then148.i:                               ; preds = %.cont141.cont151.i
  %.sroa.gep119.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %.then.val149.i = load i8, ptr %.sroa.gep119.i, align 1, !tbaa !38
  %i.fc = uitofp i8 %.then.val149.i to double
  br label %.cont141.cont147.i

.cont141.cont147.i:                               ; preds = %.cont141.then148.i, %.cont141.cont151.i
  %i.fd = phi double [ %i.fc, %.cont141.then148.i ], [ 0.000000e+00, %.cont141.cont151.i ]
  br i1 %or.cond7.i, label %.cont141.then.i, label %.cont141.cont.i

.cont141.then.i:                                  ; preds = %.cont141.cont147.i
  %.sroa.gep124.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %.then.val145.i = load i8, ptr %.sroa.gep124.i, align 1, !tbaa !38
  %i.fe = uitofp i8 %.then.val145.i to double
  br label %.cont141.cont.i

.cont141.cont.i:                                  ; preds = %.cont141.then.i, %.cont141.cont147.i
  %i.ff = phi double [ %i.fe, %.cont141.then.i ], [ 0.000000e+00, %.cont141.cont147.i ]
  %i.fg = fmul double %.0.i.i, %i.ff
  %i.fh = call double @llvm.fmuladd.f64(double %i.ef, double %i.fd, double %i.fg)
  %i.fi = fmul double %.026.i.i, %i.fh
  %i.fj = call double @llvm.fmuladd.f64(double %i.eg, double %i.fb, double %i.fi)
  %i.fk = fptoui double %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %.085107.i, i64 1
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !38
  br i1 %or.cond.i, label %.then.i, label %.cont.i

.then.i:                                          ; preds = %.cont141.cont.i
  %.sroa.gep129.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %.then.val.i = load i8, ptr %.sroa.gep129.i, align 1, !tbaa !38
  %i.fm = uitofp i8 %.then.val.i to double
  br label %.cont.i

.cont.i:                                          ; preds = %.then.i, %.cont141.cont.i
  %i.fn = phi double [ %i.fm, %.then.i ], [ 0.000000e+00, %.cont141.cont.i ]
  br i1 %or.cond3.i, label %.cont.then138.i, label %.cont.cont137.i

.cont.then138.i:                                  ; preds = %.cont.i
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 5
  %.then.val139.i = load i8, ptr %.sroa.gep.i, align 1, !tbaa !38
  %i.fo = uitofp i8 %.then.val139.i to double
  br label %.cont.cont137.i

.cont.cont137.i:                                  ; preds = %.cont.then138.i, %.cont.i
  %i.fp = phi double [ %i.fo, %.cont.then138.i ], [ 0.000000e+00, %.cont.i ]
  %i.fq = fmul double %.0.i.i, %i.fp
  %i.fr = call double @llvm.fmuladd.f64(double %i.ef, double %i.fn, double %i.fq)
  br i1 %or.cond5.i, label %.cont.then134.i, label %.cont.cont133.i

.cont.then134.i:                                  ; preds = %.cont.cont137.i
  %.sroa.gep117.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %.then.val135.i = load i8, ptr %.sroa.gep117.i, align 1, !tbaa !38
  %i.fs = uitofp i8 %.then.val135.i to double
  br label %.cont.cont133.i

.cont.cont133.i:                                  ; preds = %.cont.then134.i, %.cont.cont137.i
  %i.ft = phi double [ %i.fs, %.cont.then134.i ], [ 0.000000e+00, %.cont.cont137.i ]
  br i1 %or.cond7.i, label %.cont.then.i, label %.cont.cont.i

.cont.then.i:                                     ; preds = %.cont.cont133.i
  %.sroa.gep122.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %.then.val131.i = load i8, ptr %.sroa.gep122.i, align 1, !tbaa !38
  %i.fu = uitofp i8 %.then.val131.i to double
  br label %.cont.cont.i

.cont.cont.i:                                     ; preds = %.cont.then.i, %.cont.cont133.i
  %i.fv = phi double [ %i.fu, %.cont.then.i ], [ 0.000000e+00, %.cont.cont133.i ]
  %i.fw = fmul double %.0.i.i, %i.fv
  %i.fx = call double @llvm.fmuladd.f64(double %i.ef, double %i.ft, double %i.fw)
  %i.fy = fmul double %.026.i.i, %i.fx
  %i.fz = call double @llvm.fmuladd.f64(double %i.eg, double %i.fr, double %i.fy)
  %i.ga = fptoui double %i.fz to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %.085107.i, i64 2
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !38
  %i.gc = getelementptr inbounds nuw i8, ptr %.085107.i, i64 3
  %i.gd = add nuw nsw i32 %.0108.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gd, %i.ak
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ac, !llvm.loop !59

_ZN2cv6bgsegm12_GLOBAL__N_114waveDistortionEPKhPhiiiddd.exit: ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.ab
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !39 ; 6 uses
  %i.gg = icmp slt i32 %i.gf, 3
  br i1 %i.gg, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %_ZN2cv6bgsegm12_GLOBAL__N_114waveDistortionEPKhPhiiiddd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.aq

.noexc:                                           ; preds = %bb.ad
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #17
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc
  unreachable

bb.af:                                            ; preds = %.noexc
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.af
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !38
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.body

bb.ag:                                            ; preds = %_ZN2cv6bgsegm12_GLOBAL__N_114waveDistortionEPKhPhiiiddd.exit
  %i.gn = icmp sgt i32 %i.gf, 0
  br i1 %i.gn, label %bb.ah, label %.thread.i60

.thread.i60:                                      ; preds = %bb.ag
  %i.go = icmp eq i32 %i.gf, 0
  %i.gp = zext i1 %i.go to i32
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.gr = icmp eq i32 %i.gf, 2
  %i.gs = zext i1 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !40 ; 2 uses
  %.not.i65 = icmp eq i32 %i.gf, 1
  br i1 %.not.i65, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gv = load i32, ptr %i.gq, align 4, !tbaa !40
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %.thread.i60
  %i.gw = phi i32 [ %i.gp, %.thread.i60 ], [ %i.gu, %bb.ah ]
  %i.gx = icmp sgt i32 %i.gf, -1
  %i.gy = zext i1 %i.gx to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.gz = phi i32 [ %i.gu, %bb.ai ], [ %i.gw, %bb.aj ] ; 3 uses
  %i.ha = phi i32 [ %i.gv, %bb.ai ], [ %i.gy, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.hc = load <2 x double>, ptr %i.hb, align 8   ; 2 uses
  %i.hd = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.hc)
  %i.he = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hf = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.he)
  store i32 %i.hd, ptr %14, align 4, !tbaa !67
  %i.hg = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !68
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.gz, ptr %i.hh, align 4, !tbaa !69
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 %i.ha, ptr %i.hi, align 4, !tbaa !70
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 4 dereferenceable(16) %14)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.hk, align 8
  store i32 -1040121856, ptr %12, align 8, !tbaa !33
  store ptr %13, ptr %i.hj, align 8, !tbaa !32
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %bb.al
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.hl = sub nsw i32 %i.al, %i.ha
  %i.hm = sitofp i32 %i.hl to double
  %i.hn = load double, ptr %i.hb, align 8, !tbaa !41
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !27 ; 2 uses
  %.promoted = load double, ptr %i.ho, align 8, !tbaa !43
  %i.hr = sub nsw i32 %i.ak, %i.gz
  %i.hs = sitofp i32 %i.hr to double
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am
  %i.hw = phi double [ %i.iu, %bb.ap ], [ %.promoted, %bb.am ]
  %i.hx = call double @llvm.fmuladd.f64(double %i.hw, double %i.hq, double %i.hn) ; 2 uses
  %i.hy = fcmp uge double %i.hx, 0.000000e+00
  %i.hz = fcmp ult double %i.hx, %i.hs
  %or.cond94 = select i1 %i.hy, i1 %i.hz, i1 false
  br i1 %or.cond94, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ia = load double, ptr %i.ht, align 8, !tbaa !42
  %i.ib = load double, ptr %i.hu, align 8, !tbaa !44
  %i.ic = call double @llvm.fmuladd.f64(double %i.ib, double %i.hq, double %i.ia) ; 2 uses
  %i.id = fcmp uge double %i.ic, 0.000000e+00
  %i.ie = fcmp ult double %i.ic, %i.hm
  %or.cond = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.if = load i64, ptr %i.hv, align 8, !tbaa !29 ; 2 uses
  %i.ig = and i64 %i.if, 4294967295
  %i.ih = mul nuw i64 %i.ig, 4164903690
  %i.ii = lshr i64 %i.if, 32
  %i.ij = add nuw i64 %i.ih, %i.ii                ; 3 uses
  %i.ik = shl i64 %i.ij, 32
  %i.il = and i64 %i.ij, 4294967295
  %i.im = mul nuw i64 %i.il, 4164903690
  %i.in = lshr i64 %i.ij, 32
  %i.io = add nuw i64 %i.im, %i.in                ; 2 uses
  store i64 %i.io, ptr %i.hv, align 8, !tbaa !29
  %i.ip = and i64 %i.io, 4294967295
  %i.iq = or disjoint i64 %i.ip, %i.ik
  %i.ir = uitofp i64 %i.iq to double
  %i.is = fmul nnan double %i.ir, f0x3BF0000000000000
  %i.it = call noundef double @llvm.fmuladd.f64(double %i.is, double f0x401921FB54442D18, double 0.000000e+00) ; 2 uses
  %i.iu = call double @cos(double noundef %i.it) #16 ; 2 uses
  store double %i.iu, ptr %i.ho, align 8, !tbaa !43
  %i.iv = call double @sin(double noundef %i.it) #16
  store double %i.iv, ptr %i.hu, align 8, !tbaa !44
  br label %bb.an, !llvm.loop !60

bb.aq:                                            ; preds = %bb.ad, %bb.au
  %i.iw = landingpad { ptr, i32 }
end_hunk_0
