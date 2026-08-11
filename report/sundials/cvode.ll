inline.NumInlined: 48
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 42
begin_hunk_0_@CVode:bb.a

.lr.ph.preheader.i.i68.i:                         ; preds = %bb.ei
  %i.aao = add nsw i32 %i.sz, -1
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = shl nuw nsw i64 %i.aap, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i, i8 0, i64 %i.aaq, i1 false), !tbaa !25
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.preheader.i.i68.i, %bb.ei
  %i.aar = load double, ptr %i.jd, align 8, !tbaa !134 ; 6 uses
  %i.aas = load i32, ptr %i.kb, align 8, !tbaa !127
  %.not79.i.i.i = icmp eq i32 %i.aas, 0           ; 2 uses
  %.not8088.i.i.i = icmp slt i32 %i.sz, 0
  %or.cond.i.i.i = or i1 %.not8088.i.i.i, %.not79.i.i.i
  br i1 %or.cond.i.i.i, label %.loopexit85.i.i.i, label %.lr.ph90.i.i.i

.lr.ph90.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.aat = add nuw i32 %i.sz, 1
  %wide.trip.count.i.i69.i = zext i32 %i.aat to i64 ; 2 uses
  %xtraiter877 = and i64 %wide.trip.count.i.i69.i, 3 ; 3 uses
  %i.aau = icmp ult i32 %i.sz, 3
  br i1 %i.aau, label %.epil.preheader, label %.lr.ph90.i.i.i.new

.lr.ph90.i.i.i.new:                               ; preds = %.lr.ph90.i.i.i
  %unroll_iter881 = and i64 %wide.trip.count.i.i69.i, 4294967292
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ej, %.lr.ph90.i.i.i.new
  %indvars.iv.i.i70.i = phi i64 [ 0, %.lr.ph90.i.i.i.new ], [ %indvars.iv.next.i.i71.i.3, %bb.ej ] ; 6 uses
  %niter882 = phi i64 [ 0, %.lr.ph90.i.i.i.new ], [ %niter882.next.3, %bb.ej ]
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.i.i70.i
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !25
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.i.i70.i
  store double %i.aaw, ptr %i.aax, align 8, !tbaa !25
  %indvars.iv.next.i.i71.i = or disjoint i64 %indvars.iv.i.i70.i, 1 ; 2 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.next.i.i71.i
  %i.aaz = load double, ptr %i.aay, align 8, !tbaa !25
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.next.i.i71.i
  store double %i.aaz, ptr %i.aba, align 8, !tbaa !25
  %indvars.iv.next.i.i71.i.1 = or disjoint i64 %indvars.iv.i.i70.i, 2 ; 2 uses
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.next.i.i71.i.1
  %i.abc = load double, ptr %i.abb, align 8, !tbaa !25
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.next.i.i71.i.1
  store double %i.abc, ptr %i.abd, align 8, !tbaa !25
  %indvars.iv.next.i.i71.i.2 = or disjoint i64 %indvars.iv.i.i70.i, 3 ; 2 uses
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.next.i.i71.i.2
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !25
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.next.i.i71.i.2
  store double %i.abf, ptr %i.abg, align 8, !tbaa !25
  %indvars.iv.next.i.i71.i.3 = add nuw nsw i64 %indvars.iv.i.i70.i, 4 ; 2 uses
  %niter882.next.3 = add i64 %niter882, 4         ; 2 uses
  %niter882.ncmp.3 = icmp eq i64 %niter882.next.3, %unroll_iter881
  br i1 %niter882.ncmp.3, label %.loopexit85.i.i.i.loopexit.unr-lcssa, label %bb.ej

.loopexit85.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.ej
  %lcmp.mod879.not = icmp eq i64 %xtraiter877, 0
  br i1 %lcmp.mod879.not, label %.loopexit85.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit85.i.i.i.loopexit.unr-lcssa, %.lr.ph90.i.i.i
  %indvars.iv.i.i70.i.epil.init = phi i64 [ 0, %.lr.ph90.i.i.i ], [ %indvars.iv.next.i.i71.i.3, %.loopexit85.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod880 = icmp ne i64 %xtraiter877, 0
  call void @llvm.assume(i1 %lcmp.mod880)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.epil.preheader
  %indvars.iv.i.i70.i.epil = phi i64 [ %indvars.iv.i.i70.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i71.i.epil, %bb.ek ] ; 3 uses
  %epil.iter878 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter878.next, %bb.ek ]
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.i.i70.i.epil
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !25
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.i.i70.i.epil
  store double %i.abi, ptr %i.abj, align 8, !tbaa !25
  %indvars.iv.next.i.i71.i.epil = add nuw nsw i64 %indvars.iv.i.i70.i.epil, 1
  %epil.iter878.next = add i64 %epil.iter878, 1   ; 2 uses
  %epil.iter878.cmp.not = icmp eq i64 %epil.iter878.next, %xtraiter877
  br i1 %epil.iter878.cmp.not, label %.loopexit85.i.i.i, label %bb.ek, !llvm.loop !155

.loopexit85.i.i.i:                                ; preds = %.loopexit85.i.i.i.loopexit.unr-lcssa, %bb.ek, %._crit_edge.i.i.i
  %i.abk = icmp sgt i32 %i.sz, 1                  ; 2 uses
  br i1 %i.abk, label %.preheader83.i.i.i, label %.loopexit85..loopexit_crit_edge.i.i.i

.loopexit85..loopexit_crit_edge.i.i.i:            ; preds = %.loopexit85.i.i.i
  %.pre123.i.i.i = sitofp i32 %i.sz to double
  br label %.loopexit.i.i.i

.preheader83.i.i.i:                               ; preds = %.loopexit85.i.i.i
  %.not.i.i.i = icmp eq i32 %i.sz, 2
  br i1 %.not.i.i.i, label %._crit_edge96.i.i.i, label %.lr.ph95.preheader.i.i.i

.lr.ph95.preheader.i.i.i:                         ; preds = %.preheader83.i.i.i
  %wide.trip.count114.i.i.i = zext nneg i32 %i.sz to i64 ; 2 uses
  br label %.lr.ph95.i.i.i

.lr.ph95.i.i.i:                                   ; preds = %.loopexit835, %.lr.ph95.preheader.i.i.i
  %indvars.iv108.i.i.i = phi i64 [ 2, %.lr.ph95.preheader.i.i.i ], [ %indvars.iv.next109.i.i.i, %.loopexit835 ] ; 9 uses
  %.07193.i.i.i = phi double [ %i.aar, %.lr.ph95.preheader.i.i.i ], [ %i.abo, %.loopexit835 ]
  %.07692.i.i.i = phi double [ -1.000000e+00, %.lr.ph95.preheader.i.i.i ], [ %i.acw, %.loopexit835 ]
  %i.abl = getelementptr [8 x i8], ptr %0, i64 %indvars.iv108.i.i.i
  %i.abm = getelementptr i8, ptr %i.abl, i64 352
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !25
  %i.abo = fadd double %.07193.i.i.i, %i.abn      ; 3 uses
  %i.abp = fdiv double %i.aar, %i.abo             ; 4 uses
  %min.iters.check814 = icmp samesign ult i64 %indvars.iv108.i.i.i, 4
  br i1 %min.iters.check814, label %scalar.ph813, label %vector.ph815

vector.ph815:                                     ; preds = %.lr.ph95.i.i.i
  %n.vec816 = and i64 %indvars.iv108.i.i.i, 9223372036854775804 ; 2 uses
  %i.abq = and i64 %indvars.iv108.i.i.i, 3
  %broadcast.splatinsert817 = insertelement <2 x double> poison, double %i.abp, i64 0 ; 2 uses
  %i.abr = shufflevector <2 x double> %broadcast.splatinsert817, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abs = shufflevector <2 x double> %broadcast.splatinsert817, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body819

vector.body819:                                   ; preds = %vector.body819, %vector.ph815
  %index820 = phi i64 [ 0, %vector.ph815 ], [ %index.next831, %vector.body819 ] ; 2 uses
  %i.abt = sub i64 %indvars.iv108.i.i.i, %index820
  %i.abu = getelementptr [8 x i8], ptr %i.kg, i64 %i.abt ; 4 uses
  %i.abv = getelementptr i8, ptr %i.abu, i64 -16
  %i.abw = getelementptr i8, ptr %i.abu, i64 -32
  %wide.load821 = load <2 x double>, ptr %i.abv, align 8, !tbaa !25
  %wide.load822 = load <2 x double>, ptr %i.abw, align 8, !tbaa !25
  %i.abx = getelementptr i8, ptr %i.abu, i64 -8   ; 2 uses
  %i.aby = getelementptr i8, ptr %i.abu, i64 -24  ; 2 uses
  %wide.load825 = load <2 x double>, ptr %i.abx, align 8, !tbaa !25
  %wide.load826 = load <2 x double>, ptr %i.aby, align 8, !tbaa !25
  %reverse829 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load821, <2 x double> %i.abr, <2 x double> %wide.load825)
  %reverse830 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load822, <2 x double> %i.abs, <2 x double> %wide.load826)
  store <2 x double> %reverse829, ptr %i.abx, align 8, !tbaa !25
  store <2 x double> %reverse830, ptr %i.aby, align 8, !tbaa !25
  %index.next831 = add nuw i64 %index820, 4       ; 2 uses
  %i.abz = icmp eq i64 %index.next831, %n.vec816
  br i1 %i.abz, label %middle.block832, label %vector.body819, !llvm.loop !156

middle.block832:                                  ; preds = %vector.body819
  %cmp.n833 = icmp eq i64 %indvars.iv108.i.i.i, %n.vec816
  br i1 %cmp.n833, label %.loopexit835, label %scalar.ph813

scalar.ph813:                                     ; preds = %middle.block832, %.lr.ph95.i.i.i
  %indvars.iv110.i.i.i.ph = phi i64 [ %indvars.iv108.i.i.i, %.lr.ph95.i.i.i ], [ %i.abq, %middle.block832 ] ; 5 uses
  %i.aca = getelementptr [8 x i8], ptr %i.kg, i64 %indvars.iv110.i.i.i.ph ; 3 uses
  %i.acb = getelementptr i8, ptr %i.aca, i64 -8
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !25
  %i.acd = load double, ptr %i.aca, align 8, !tbaa !25
  %i.ace = call double @llvm.fmuladd.f64(double %i.acc, double %i.abp, double %i.acd)
  store double %i.ace, ptr %i.aca, align 8, !tbaa !25
  %i.acf = icmp samesign ugt i64 %indvars.iv110.i.i.i.ph, 1
  br i1 %i.acf, label %scalar.ph813.1, label %.loopexit835

scalar.ph813.1:                                   ; preds = %scalar.ph813
  %i.acg = getelementptr [8 x i8], ptr %i.kg, i64 %indvars.iv110.i.i.i.ph ; 2 uses
  %i.ach = getelementptr i8, ptr %i.acg, i64 -8   ; 2 uses
  %i.aci = getelementptr i8, ptr %i.acg, i64 -16
  %i.acj = load double, ptr %i.aci, align 8, !tbaa !25
  %i.ack = load double, ptr %i.ach, align 8, !tbaa !25
  %i.acl = call double @llvm.fmuladd.f64(double %i.acj, double %i.abp, double %i.ack)
  store double %i.acl, ptr %i.ach, align 8, !tbaa !25
  %i.acm = icmp eq i64 %indvars.iv110.i.i.i.ph, 3
  br i1 %i.acm, label %scalar.ph813.2, label %.loopexit835

scalar.ph813.2:                                   ; preds = %scalar.ph813.1
  %i.acn = getelementptr [8 x i8], ptr %i.kg, i64 %indvars.iv110.i.i.i.ph ; 2 uses
  %i.aco = getelementptr i8, ptr %i.acn, i64 -16  ; 2 uses
  %i.acp = getelementptr i8, ptr %i.acn, i64 -24
  %i.acq = load double, ptr %i.acp, align 8, !tbaa !25
  %i.acr = load double, ptr %i.aco, align 8, !tbaa !25
  %i.acs = call double @llvm.fmuladd.f64(double %i.acq, double %i.abp, double %i.acr)
  store double %i.acs, ptr %i.aco, align 8, !tbaa !25
  br label %.loopexit835

.loopexit835:                                     ; preds = %scalar.ph813, %scalar.ph813.1, %scalar.ph813.2, %middle.block832
  %i.act = trunc nuw nsw i64 %indvars.iv108.i.i.i to i32
  %i.acu = uitofp nneg i32 %i.act to double
  %i.acv = fdiv double 1.000000e+00, %i.acu
  %i.acw = fsub double %.07692.i.i.i, %i.acv      ; 2 uses
  %indvars.iv.next109.i.i.i = add nuw nsw i64 %indvars.iv108.i.i.i, 1 ; 2 uses
  %exitcond115.not.i.i.i = icmp eq i64 %indvars.iv.next109.i.i.i, %wide.trip.count114.i.i.i
  br i1 %exitcond115.not.i.i.i, label %._crit_edge96.loopexit.i.i.i, label %.lr.ph95.i.i.i

._crit_edge96.loopexit.i.i.i:                     ; preds = %.loopexit835
  %.pre.i.i.i = load double, ptr %i.kh, align 8, !tbaa !25
  br label %._crit_edge96.i.i.i

._crit_edge96.i.i.i:                              ; preds = %._crit_edge96.loopexit.i.i.i, %.preheader83.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %wide.trip.count114.i.i.i, %._crit_edge96.loopexit.i.i.i ], [ 2, %.preheader83.i.i.i ] ; 11 uses
  %i.acx = phi double [ %.pre.i.i.i, %._crit_edge96.loopexit.i.i.i ], [ 1.000000e+00, %.preheader83.i.i.i ]
  %.076.lcssa.i.i.i = phi double [ %i.acw, %._crit_edge96.loopexit.i.i.i ], [ -1.000000e+00, %.preheader83.i.i.i ]
  %.071.lcssa.i.i.i = phi double [ %i.abo, %._crit_edge96.loopexit.i.i.i ], [ %i.aar, %.preheader83.i.i.i ]
  %i.acy = uitofp nneg i32 %i.sz to double        ; 3 uses
  %i.acz = fdiv double 1.000000e+00, %i.acy
  %i.ada = fsub double %.076.lcssa.i.i.i, %i.acz  ; 3 uses
  %i.adb = fneg double %i.acx                     ; 2 uses
  %i.adc = fsub double %i.adb, %i.ada             ; 4 uses
  %i.add = getelementptr [8 x i8], ptr %0, i64 %.pre-phi.i.i.i
  %i.ade = getelementptr i8, ptr %i.add, i64 352
  %i.adf = load double, ptr %i.ade, align 8, !tbaa !25
  %i.adg = fadd double %.071.lcssa.i.i.i, %i.adf  ; 3 uses
  %i.adh = fdiv double %i.aar, %i.adg             ; 5 uses
  %i.adi = fsub double %i.adb, %i.adh             ; 2 uses
  br i1 %.not79.i.i.i, label %.lr.ph103.preheader.i.i.i, label %.lr.ph100.i.i.i.preheader

.lr.ph100.i.i.i.preheader:                        ; preds = %._crit_edge96.i.i.i
  %i.adj = call i64 @llvm.smin.i64(i64 %.pre-phi.i.i.i, i64 1)
  %5 = sub nsw i64 %.pre-phi.i.i.i, %i.adj        ; 2 uses
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %min.iters.check792 = icmp ult i64 %5, 3
  br i1 %min.iters.check792, label %.lr.ph100.i.i.i.preheader844, label %vector.ph793

vector.ph793:                                     ; preds = %.lr.ph100.i.i.i.preheader
  %n.vec794 = and i64 %6, 9223372036854775804     ; 3 uses
  %i.adk = sub nsw i64 %.pre-phi.i.i.i, %n.vec794
  %broadcast.splatinsert795 = insertelement <2 x double> poison, double %i.adh, i64 0 ; 2 uses
  %i.adl = shufflevector <2 x double> %broadcast.splatinsert795, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adm = shufflevector <2 x double> %broadcast.splatinsert795, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body797

vector.body797:                                   ; preds = %vector.body797, %vector.ph793
  %index798 = phi i64 [ 0, %vector.ph793 ], [ %index.next809, %vector.body797 ] ; 2 uses
  %i.adn = sub i64 %.pre-phi.i.i.i, %index798     ; 2 uses
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.adn ; 2 uses
  %i.adp = getelementptr inbounds i8, ptr %i.ado, i64 -8
  %i.adq = getelementptr inbounds i8, ptr %i.ado, i64 -24
  %wide.load799 = load <2 x double>, ptr %i.adp, align 8, !tbaa !25
  %wide.load800 = load <2 x double>, ptr %i.adq, align 8, !tbaa !25
  %i.adr = getelementptr [8 x i8], ptr %i.ki, i64 %i.adn ; 4 uses
  %i.ads = getelementptr i8, ptr %i.adr, i64 -16
  %i.adt = getelementptr i8, ptr %i.adr, i64 -32
  %wide.load803 = load <2 x double>, ptr %i.ads, align 8, !tbaa !25
  %wide.load804 = load <2 x double>, ptr %i.adt, align 8, !tbaa !25
  %i.adu = getelementptr i8, ptr %i.adr, i64 -8
  %i.adv = getelementptr i8, ptr %i.adr, i64 -24
  %reverse807 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load803, <2 x double> %i.adl, <2 x double> %wide.load799)
  %reverse808 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load804, <2 x double> %i.adm, <2 x double> %wide.load800)
  store <2 x double> %reverse807, ptr %i.adu, align 8, !tbaa !25
  store <2 x double> %reverse808, ptr %i.adv, align 8, !tbaa !25
  %index.next809 = add nuw i64 %index798, 4       ; 2 uses
  %i.adw = icmp eq i64 %index.next809, %n.vec794
  br i1 %i.adw, label %middle.block810, label %vector.body797, !llvm.loop !157

middle.block810:                                  ; preds = %vector.body797
  %cmp.n811 = icmp eq i64 %6, %n.vec794
  br i1 %cmp.n811, label %.lr.ph103.preheader.i.i.i, label %.lr.ph100.i.i.i.preheader844

.lr.ph100.i.i.i.preheader844:                     ; preds = %.lr.ph100.i.i.i.preheader, %middle.block810
  %indvars.iv116.i.i.i.ph = phi i64 [ %.pre-phi.i.i.i, %.lr.ph100.i.i.i.preheader ], [ %i.adk, %middle.block810 ]
  br label %.lr.ph100.i.i.i

.lr.ph100.i.i.i:                                  ; preds = %.lr.ph100.i.i.i.preheader844, %.lr.ph100.i.i.i
  %indvars.iv116.i.i.i = phi i64 [ %indvars.iv.next117.i.i.i, %.lr.ph100.i.i.i ], [ %indvars.iv116.i.i.i.ph, %.lr.ph100.i.i.i.preheader844 ] ; 4 uses
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv116.i.i.i
  %i.ady = load double, ptr %i.adx, align 8, !tbaa !25
  %i.adz = getelementptr [8 x i8], ptr %i.ki, i64 %indvars.iv116.i.i.i ; 2 uses
  %i.aea = getelementptr i8, ptr %i.adz, i64 -8
  %i.aeb = load double, ptr %i.aea, align 8, !tbaa !25
  %i.aec = call double @llvm.fmuladd.f64(double %i.aeb, double %i.adh, double %i.ady)
  store double %i.aec, ptr %i.adz, align 8, !tbaa !25
  %indvars.iv.next117.i.i.i = add nsw i64 %indvars.iv116.i.i.i, -1
  %i.aed = icmp sgt i64 %indvars.iv116.i.i.i, 1
  br i1 %i.aed, label %.lr.ph100.i.i.i, label %.lr.ph103.preheader.i.i.i, !llvm.loop !158

.lr.ph103.preheader.i.i.i:                        ; preds = %.lr.ph100.i.i.i, %middle.block810, %._crit_edge96.i.i.i
  %i.aee = call i64 @llvm.smin.i64(i64 %.pre-phi.i.i.i, i64 1)
  %7 = sub nsw i64 %.pre-phi.i.i.i, %i.aee        ; 2 uses
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check770 = icmp ult i64 %7, 3
  br i1 %min.iters.check770, label %.lr.ph103.i.i.i.preheader, label %vector.ph771

vector.ph771:                                     ; preds = %.lr.ph103.preheader.i.i.i
  %n.vec772 = and i64 %8, 9223372036854775804     ; 3 uses
  %i.aef = sub nsw i64 %.pre-phi.i.i.i, %n.vec772
  %broadcast.splatinsert773 = insertelement <2 x double> poison, double %i.adc, i64 0 ; 2 uses
  %i.aeg = shufflevector <2 x double> %broadcast.splatinsert773, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aeh = shufflevector <2 x double> %broadcast.splatinsert773, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body775

vector.body775:                                   ; preds = %vector.body775, %vector.ph771
  %index776 = phi i64 [ 0, %vector.ph771 ], [ %index.next787, %vector.body775 ] ; 2 uses
  %i.aei = sub i64 %.pre-phi.i.i.i, %index776
  %i.aej = getelementptr [8 x i8], ptr %i.kg, i64 %i.aei ; 4 uses
  %i.aek = getelementptr i8, ptr %i.aej, i64 -16
  %i.ael = getelementptr i8, ptr %i.aej, i64 -32
  %wide.load777 = load <2 x double>, ptr %i.aek, align 8, !tbaa !25
  %wide.load778 = load <2 x double>, ptr %i.ael, align 8, !tbaa !25
  %i.aem = getelementptr i8, ptr %i.aej, i64 -8   ; 2 uses
  %i.aen = getelementptr i8, ptr %i.aej, i64 -24  ; 2 uses
  %wide.load781 = load <2 x double>, ptr %i.aem, align 8, !tbaa !25
  %wide.load782 = load <2 x double>, ptr %i.aen, align 8, !tbaa !25
  %reverse785 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load777, <2 x double> %i.aeg, <2 x double> %wide.load781)
  %reverse786 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load778, <2 x double> %i.aeh, <2 x double> %wide.load782)
  store <2 x double> %reverse785, ptr %i.aem, align 8, !tbaa !25
  store <2 x double> %reverse786, ptr %i.aen, align 8, !tbaa !25
  %index.next787 = add nuw i64 %index776, 4       ; 2 uses
  %i.aeo = icmp eq i64 %index.next787, %n.vec772
  br i1 %i.aeo, label %middle.block788, label %vector.body775, !llvm.loop !159

middle.block788:                                  ; preds = %vector.body775
  %cmp.n789 = icmp eq i64 %8, %n.vec772
  br i1 %cmp.n789, label %.loopexit.i.i.i, label %.lr.ph103.i.i.i.preheader

.lr.ph103.i.i.i.preheader:                        ; preds = %.lr.ph103.preheader.i.i.i, %middle.block788
  %indvars.iv119.i.i.i.ph = phi i64 [ %.pre-phi.i.i.i, %.lr.ph103.preheader.i.i.i ], [ %i.aef, %middle.block788 ]
  br label %.lr.ph103.i.i.i

.lr.ph103.i.i.i:                                  ; preds = %.lr.ph103.i.i.i.preheader, %.lr.ph103.i.i.i
  %indvars.iv119.i.i.i = phi i64 [ %indvars.iv.next120.i.i.i, %.lr.ph103.i.i.i ], [ %indvars.iv119.i.i.i.ph, %.lr.ph103.i.i.i.preheader ] ; 3 uses
  %i.aep = getelementptr [8 x i8], ptr %i.kg, i64 %indvars.iv119.i.i.i ; 3 uses
  %i.aeq = getelementptr i8, ptr %i.aep, i64 -8
  %i.aer = load double, ptr %i.aeq, align 8, !tbaa !25
  %i.aes = load double, ptr %i.aep, align 8, !tbaa !25
  %i.aet = call double @llvm.fmuladd.f64(double %i.aer, double %i.adc, double %i.aes)
  store double %i.aet, ptr %i.aep, align 8, !tbaa !25
  %indvars.iv.next120.i.i.i = add nsw i64 %indvars.iv119.i.i.i, -1
  %i.aeu = icmp sgt i64 %indvars.iv119.i.i.i, 1
  br i1 %i.aeu, label %.lr.ph103.i.i.i, label %.loopexit.i.i.i, !llvm.loop !160

.loopexit.i.i.i:                                  ; preds = %.lr.ph103.i.i.i, %middle.block788, %.loopexit85..loopexit_crit_edge.i.i.i
  %.pre-phi124.i.i.i = phi double [ %.pre123.i.i.i, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.acy, %middle.block788 ], [ %i.acy, %.lr.ph103.i.i.i ]
  %.177.i.i.i = phi double [ -1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.ada, %middle.block788 ], [ %i.ada, %.lr.ph103.i.i.i ] ; 4 uses
  %.075.i.i.i = phi double [ -1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.adi, %middle.block788 ], [ %i.adi, %.lr.ph103.i.i.i ] ; 3 uses
  %.074.i.i.i = phi double [ 1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.adh, %middle.block788 ], [ %i.adh, %.lr.ph103.i.i.i ] ; 2 uses
  %.073.i.i.i = phi double [ 1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.adc, %middle.block788 ], [ %i.adc, %.lr.ph103.i.i.i ] ; 2 uses
  %.172.i.i.i = phi double [ %i.aar, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.adg, %middle.block788 ], [ %i.adg, %.lr.ph103.i.i.i ]
  %i.aev = fsub double 1.000000e+00, %.075.i.i.i
  %i.aew = fadd double %.177.i.i.i, %i.aev        ; 2 uses
  %i.aex = call double @llvm.fmuladd.f64(double %.pre-phi124.i.i.i, double %i.aew, double 1.000000e+00) ; 3 uses
  %i.aey = fmul double %.177.i.i.i, %i.aex
  %i.aez = fdiv double %i.aew, %i.aey
  %i.afa = call double @llvm.fabs.f64(double %i.aez) ; 2 uses
  store double %i.afa, ptr %i.kj, align 8, !tbaa !25
  %i.afb = fmul double %.073.i.i.i, %i.aex
  %i.afc = sext i32 %i.sz to i64                  ; 2 uses
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.afc
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !25 ; 2 uses
  %i.aff = fmul double %.074.i.i.i, %i.afe
  %i.afg = fdiv double %i.afb, %i.aff
  %i.afh = call double @llvm.fabs.f64(double %i.afg)
  store double %i.afh, ptr %i.kk, align 8, !tbaa !25
  %i.afi = load i32, ptr %i.jv, align 4, !tbaa !82
  %i.afj = icmp eq i32 %i.afi, 1
  br i1 %i.afj, label %bb.el, label %cvSetBDF.exit.i.i

bb.el:                                            ; preds = %.loopexit.i.i.i
  br i1 %i.abk, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.afk = fdiv double %.073.i.i.i, %i.afe
  %i.afl = uitofp nneg i32 %i.sz to double
  %i.afm = fdiv double 1.000000e+00, %i.afl
  %i.afn = fadd double %i.afm, %.177.i.i.i        ; 2 uses
  %i.afo = fadd double %.075.i.i.i, %.074.i.i.i
  %i.afp = fsub double 1.000000e+00, %i.afo
  %i.afq = fadd double %i.afn, %i.afp
  %i.afr = fdiv double %i.afq, %i.afn
  %i.afs = fmul double %i.afr, %i.afk
  %i.aft = call double @llvm.fabs.f64(double %i.afs)
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.sink.i.i.i.i = phi double [ %i.aft, %bb.em ], [ 1.000000e+00, %bb.el ]
  store double %.sink.i.i.i.i, ptr %i.kl, align 8, !tbaa !25
  %i.afu = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.afc
  %i.afv = load double, ptr %i.afu, align 8, !tbaa !25
  %i.afw = fadd double %.172.i.i.i, %i.afv
  %i.afx = fdiv double %i.aar, %i.afw             ; 2 uses
  %i.afy = add nsw i32 %i.sz, 1
  %i.afz = sitofp i32 %i.afy to double
  %i.aga = fdiv double 1.000000e+00, %i.afz
  %i.agb = fsub double %.177.i.i.i, %i.aga        ; 2 uses
  %i.agc = fsub double %i.afx, %.075.i.i.i
  %i.agd = fadd double %i.agc, 1.000000e+00
  %i.age = fadd double %i.agb, %i.agd
  %i.agf = fdiv double %i.age, %i.aex
  %i.agg = add nsw i32 %i.sz, 2
  %i.agh = sitofp i32 %i.agg to double
  %i.agi = fmul double %i.afx, %i.agh
  %i.agj = fmul double %i.agb, %i.agi
  %i.agk = fdiv double %i.agf, %i.agj
  %i.agl = call double @llvm.fabs.f64(double %i.agk)
  store double %i.agl, ptr %i.kn, align 8, !tbaa !25
  br label %cvSetBDF.exit.i.i

cvSetBDF.exit.i.i:                                ; preds = %bb.en, %.loopexit.i.i.i
  %i.agm = load double, ptr %i.ko, align 8, !tbaa !30
  %i.agn = fdiv double %i.agm, %i.afa
  store double %i.agn, ptr %i.kp, align 8, !tbaa !25
  br label %bb.eo

bb.eo:                                            ; preds = %cvSetBDF.exit.i.i, %cvSetAdams.exit.i.i, %cvPredict.exit.i
  %i.ago = load double, ptr %i.kh, align 8, !tbaa !25
  %i.agp = fdiv double 1.000000e+00, %i.ago       ; 2 uses
  store double %i.agp, ptr %i.kq, align 8, !tbaa !161
  %i.agq = load double, ptr %i.jd, align 8, !tbaa !134
  %i.agr = fmul double %i.agp, %i.agq             ; 3 uses
  store double %i.agr, ptr %i.kr, align 8, !tbaa !162
  %i.ags = load i64, ptr %i.v, align 8, !tbaa !122 ; 3 uses
  %i.agt = icmp eq i64 %i.ags, 0                  ; 2 uses
  br i1 %i.agt, label %.thread.i.i, label %bb.ep

.thread.i.i:                                      ; preds = %bb.eo
  store double %i.agr, ptr %i.ks, align 8, !tbaa !163
  br label %cvSet.exit.i

bb.ep:                                            ; preds = %bb.eo
  %i.agu = icmp sgt i64 %i.ags, 0
  br i1 %i.agu, label %bb.eq, label %cvSet.exit.i

bb.eq:                                            ; preds = %bb.ep
  %i.agv = load double, ptr %i.ks, align 8, !tbaa !163
  %i.agw = fdiv double %i.agr, %i.agv
  br label %cvSet.exit.i

cvSet.exit.i:                                     ; preds = %bb.eq, %bb.ep, %.thread.i.i
  %i.agx = phi double [ %i.agw, %bb.eq ], [ 1.000000e+00, %bb.ep ], [ 1.000000e+00, %.thread.i.i ] ; 2 uses
  store double %i.agx, ptr %i.kt, align 8, !tbaa !164
  %i.agy = load i32, ptr %i.l, align 4, !tbaa !116 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  store i64 0, ptr %i.i, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  store i64 0, ptr %i.j, align 8, !tbaa !66
  %i.agz = load ptr, ptr %i.ku, align 8, !tbaa !165
  %.not.i73.i = icmp eq ptr %i.agz, null
  br i1 %.not.i73.i, label %bb.ew, label %bb.er

bb.er:                                            ; preds = %cvSet.exit.i
  %i.aha = icmp eq i32 %i.agy, 6
  %i.ahb = icmp eq i32 %i.agy, 9
  %i.ahc = or i1 %i.aha, %i.ahb
  %i.ahd = select i1 %i.ahc, i32 0, i32 2
  store i32 %i.ahd, ptr %i.kv, align 8, !tbaa !166
  switch i32 %i.agy, label %bb.es [
    i32 9, label %bb.ex
    i32 7, label %bb.ex
  ]

bb.es:                                            ; preds = %bb.er
  br i1 %i.agt, label %bb.ex, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ahe = load i32, ptr %i.jt, align 4, !tbaa !139
  %.not48.i.i = icmp eq i32 %i.ahe, 0
  br i1 %.not48.i.i, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %i.ahf = load i64, ptr %i.kw, align 8, !tbaa !98
  %i.ahg = load i64, ptr %i.kx, align 8, !tbaa !31
  %i.ahh = add nsw i64 %i.ahg, %i.ahf
  %.not49.i.i = icmp slt i64 %i.ags, %i.ahh
  br i1 %.not49.i.i, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.ahi = fadd double %i.agx, -1.000000e+00
  %i.ahj = call double @llvm.fabs.f64(double %i.ahi)
  %i.ahk = load double, ptr %i.ky, align 8, !tbaa !32
  %i.ahl = fcmp ogt double %i.ahj, %i.ahk
  %i.ahm = zext i1 %i.ahl to i32
  br label %bb.ex

bb.ew:                                            ; preds = %cvSet.exit.i
  store double 1.000000e+00, ptr %i.kz, align 8, !tbaa !167
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.er
  %.0.i.i = phi i32 [ 0, %bb.ew ], [ 1, %bb.eu ], [ 1, %bb.et ], [ 1, %bb.es ], [ %i.ahm, %bb.ev ], [ 1, %bb.er ], [ 1, %bb.er ]
  %i.ahn = load ptr, ptr %i.la, align 8, !tbaa !70
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.ahn) #13
  %i.aho = load ptr, ptr %i.lb, align 8, !tbaa !168 ; 3 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !169
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !172
  %.not50.i.i = icmp eq ptr %i.ahs, null
  br i1 %.not50.i.i, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aht = load ptr, ptr %i.la, align 8, !tbaa !70
  %i.ahu = call i32 @SUNNonlinSolSetup(ptr noundef nonnull %i.aho, ptr noundef %i.aht, ptr noundef nonnull %0) #13 ; 2 uses
  %i.ahv = icmp slt i32 %i.ahu, 0
  br i1 %i.ahv, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.not51.i.i = icmp eq i32 %i.ahu, 0
  br i1 %.not51.i.i, label %._crit_edge.i.i, label %bb.fd

._crit_edge.i.i:                                  ; preds = %bb.ez
  %.pre.i74.i = load ptr, ptr %i.lb, align 8, !tbaa !168
  br label %bb.fa

bb.fa:                                            ; preds = %._crit_edge.i.i, %bb.ex
  %i.ahw = phi ptr [ %.pre.i74.i, %._crit_edge.i.i ], [ %i.aho, %bb.ex ]
  %i.ahx = load ptr, ptr %i.ji, align 8, !tbaa !76
  %i.ahy = load ptr, ptr %i.la, align 8, !tbaa !70
  %i.ahz = load ptr, ptr %i.jj, align 8, !tbaa !69
  %i.aia = load double, ptr %i.kp, align 8, !tbaa !25
  %i.aib = call i32 @SUNNonlinSolSolve(ptr noundef %i.ahw, ptr noundef %i.ahx, ptr noundef %i.ahy, ptr noundef %i.ahz, double noundef %i.aia, i32 noundef %.0.i.i, ptr noundef nonnull %0) #13 ; 2 uses
  %i.aic = load ptr, ptr %i.lb, align 8, !tbaa !168
  %i.aid = call i32 @SUNNonlinSolGetNumIters(ptr noundef %i.aic, ptr noundef nonnull %i.i) #13 ; 0 uses
  %i.aie = load i64, ptr %i.i, align 8, !tbaa !66
end_hunk_0
begin_hunk_1_@cvAdjustOrder:bb.a
bb.l:                                             ; preds = %bb.h
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !22 ; 2 uses
  %.not43.i.i = icmp slt i32 %i.gb, 0
  br i1 %.not43.i.i, label %._crit_edge.i3.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %bb.l
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.gd = add nuw i32 %i.gb, 1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gc, i8 0, i64 %i.gf, i1 false), !tbaa !25
  br label %._crit_edge.i3.i

._crit_edge.i3.i:                                 ; preds = %.lr.ph.i2.i, %bb.l
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 536
  store double 1.000000e+00, ptr %i.gh, align 8, !tbaa !25
  %i.gi = add nsw i32 %i.b, -2
  %.not4149.i.i = icmp slt i32 %i.b, 3
  br i1 %.not4149.i.i, label %cvAdjustAdams.exit, label %.lr.ph53.i.i

.lr.ph53.i.i:                                     ; preds = %._crit_edge.i3.i
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !137
  %i.gm = add nsw i32 %i.b, -1
  %wide.trip.count.i4.i = zext nneg i32 %i.gm to i64
  br label %.lr.ph47.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge48.i.i
  %wide.trip.count68.i.i = zext nneg i32 %i.b to i64 ; 3 uses
  %i.gn = add nsw i64 %wide.trip.count68.i.i, -2  ; 3 uses
  %min.iters.check28 = icmp ult i64 %i.gn, 2
  br i1 %min.iters.check28, label %.lr.ph56.i.i.preheader, label %vector.ph29

vector.ph29:                                      ; preds = %.preheader.i.i
  %n.vec30 = and i64 %i.gn, -2                    ; 3 uses
  %i.go = add nsw i64 %n.vec30, 2
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph29
  %index32 = phi i64 [ 0, %vector.ph29 ], [ %index.next34, %vector.body31 ] ; 2 uses
  %i.gp = add nuw i64 %index32, 2                 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gp
  %wide.load33 = load <2 x double>, ptr %i.gq, align 8, !tbaa !25
  %i.gr = fneg <2 x double> %wide.load33
  %i.gs = getelementptr [8 x i8], ptr %0, i64 %i.gp
  %i.gt = getelementptr i8, ptr %i.gs, i64 1624
  store <2 x double> %i.gr, ptr %i.gt, align 8, !tbaa !25
  %index.next34 = add nuw i64 %index32, 2         ; 2 uses
  %i.gu = icmp eq i64 %index.next34, %n.vec30
  br i1 %i.gu, label %middle.block35, label %vector.body31, !llvm.loop !233

middle.block35:                                   ; preds = %vector.body31
  %cmp.n36 = icmp eq i64 %i.gn, %n.vec30
  br i1 %cmp.n36, label %._crit_edge57.i.i, label %.lr.ph56.i.i.preheader

.lr.ph56.i.i.preheader:                           ; preds = %.preheader.i.i, %middle.block35
  %indvars.iv65.i.i.ph = phi i64 [ 2, %.preheader.i.i ], [ %i.go, %middle.block35 ]
  br label %.lr.ph56.i.i

.lr.ph47.preheader.i.i:                           ; preds = %._crit_edge48.i.i, %.lr.ph53.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge48.i.i ], [ 0, %.lr.ph53.i.i ] ; 2 uses
  %indvars.iv62.i.i = phi i64 [ %indvars.iv.next63.i.i, %._crit_edge48.i.i ], [ 1, %.lr.ph53.i.i ] ; 2 uses
  %indvars.iv.i5.i = phi i64 [ %indvars.iv.next.i6.i, %._crit_edge48.i.i ], [ 3, %.lr.ph53.i.i ] ; 4 uses
  %.03950.i.i = phi double [ %i.gy, %._crit_edge48.i.i ], [ 0.000000e+00, %.lr.ph53.i.i ]
  %i.gv = add i64 %indvar, 2                      ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv62.i.i
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !25
  %i.gy = fadd double %.03950.i.i, %i.gx          ; 2 uses
  %i.gz = fdiv double %i.gy, %i.gl                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gv, 4
  br i1 %min.iters.check, label %.lr.ph47.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph47.preheader.i.i
  %n.vec = and i64 %i.gv, -4                      ; 3 uses
  %i.ha = sub i64 %indvars.iv.i5.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gz, i64 0 ; 2 uses
  %i.hb = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hd = sub i64 %indvars.iv.i5.i, %index
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.hd ; 4 uses
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -8 ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.he, i64 -24 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.hf, align 8, !tbaa !25
  %wide.load19 = load <2 x double>, ptr %i.hg, align 8, !tbaa !25
  %i.hh = getelementptr i8, ptr %i.he, i64 -16
  %i.hi = getelementptr i8, ptr %i.he, i64 -32
  %wide.load21 = load <2 x double>, ptr %i.hh, align 8, !tbaa !25
  %wide.load22 = load <2 x double>, ptr %i.hi, align 8, !tbaa !25
  %reverse25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.hb, <2 x double> %wide.load21)
  %reverse26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load19, <2 x double> %i.hc, <2 x double> %wide.load22)
  store <2 x double> %reverse25, ptr %i.hf, align 8, !tbaa !25
  store <2 x double> %reverse26, ptr %i.hg, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gv, %n.vec
  br i1 %cmp.n, label %._crit_edge48.i.i, label %.lr.ph47.i.i.preheader

.lr.ph47.i.i.preheader:                           ; preds = %.lr.ph47.preheader.i.i, %middle.block
  %indvars.iv59.i.i.ph = phi i64 [ %indvars.iv.i5.i, %.lr.ph47.preheader.i.i ], [ %i.ha, %middle.block ]
  br label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %.lr.ph47.i.i.preheader, %.lr.ph47.i.i
  %indvars.iv59.i.i = phi i64 [ %indvars.iv.next60.i.i, %.lr.ph47.i.i ], [ %indvars.iv59.i.i.ph, %.lr.ph47.i.i.preheader ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv59.i.i ; 3 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !25
  %i.hm = getelementptr i8, ptr %i.hk, i64 -8
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !25
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.gz, double %i.hn)
  store double %i.ho, ptr %i.hk, align 8, !tbaa !25
  %indvars.iv.next60.i.i = add nsw i64 %indvars.iv59.i.i, -1
  %i.hp = icmp sgt i64 %indvars.iv59.i.i, 2
  br i1 %i.hp, label %.lr.ph47.i.i, label %._crit_edge48.i.i, !llvm.loop !235

._crit_edge48.i.i:                                ; preds = %.lr.ph47.i.i, %middle.block
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1 ; 2 uses
  %indvars.iv.next.i6.i = add nuw nsw i64 %indvars.iv.i5.i, 1
  %exitcond.not.i7.i = icmp eq i64 %indvars.iv.next63.i.i, %wide.trip.count.i4.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i7.i, label %.preheader.i.i, label %.lr.ph47.preheader.i.i

.lr.ph56.i.i:                                     ; preds = %.lr.ph56.i.i.preheader, %.lr.ph56.i.i
  %indvars.iv65.i.i = phi i64 [ %indvars.iv.next66.i.i, %.lr.ph56.i.i ], [ %indvars.iv65.i.i.ph, %.lr.ph56.i.i.preheader ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv65.i.i
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !25
  %i.hs = fneg double %i.hr
  %i.ht = getelementptr [8 x i8], ptr %0, i64 %indvars.iv65.i.i
  %i.hu = getelementptr i8, ptr %i.ht, i64 1624
  store double %i.hs, ptr %i.hu, align 8, !tbaa !25
  %indvars.iv.next66.i.i = add nuw nsw i64 %indvars.iv65.i.i, 1 ; 2 uses
  %exitcond69.not.i.i = icmp eq i64 %indvars.iv.next66.i.i, %wide.trip.count68.i.i
  br i1 %exitcond69.not.i.i, label %._crit_edge57.i.i, label %.lr.ph56.i.i, !llvm.loop !236

._crit_edge57.i.i:                                ; preds = %.lr.ph56.i.i, %middle.block35
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %wide.trip.count68.i.i
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !76
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ia = tail call i32 @N_VScaleAddMulti(i32 noundef %i.gi, ptr noundef nonnull %i.hv, ptr noundef %i.hy, ptr noundef nonnull %i.hz, ptr noundef nonnull %i.hz) #13 ; 0 uses
  br label %cvAdjustAdams.exit

cvAdjustAdams.exit:                               ; preds = %._crit_edge57.i.i, %._crit_edge.i3.i, %bb.k, %.loopexit57.i.i, %bb.h, %.loopexit, %._crit_edge.i, %bb.d, %bb.a, %bb.b
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #4

declare i32 @N_VScaleAddMulti(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolSetup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolGetNumIters(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolGetNumConvFails(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VCompare(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

declare void @N_VAddConst(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"CVodeMemRec", !10, i64 0, !12, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !12, i64 48, !13, i64 56, !5, i64 64, !5, i64 68, !11, i64 72, !11, i64 80, !6, i64 88, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !5, i64 256, !5, i64 260, !12, i64 264, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !6, i64 360, !6, i64 472, !6, i64 520, !12, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !12, i64 672, !12, i64 680, !5, i64 688, !12, i64 696, !5, i64 704, !14, i64 712, !5, i64 720, !5, i64 724, !5, i64 728, !12, i64 736, !12, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !14, i64 832, !5, i64 840, !14, i64 848, !14, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !14, i64 896, !5, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !14, i64 936, !14, i64 944, !14, i64 952, !14, i64 960, !15, i64 968, !5, i64 976, !11, i64 984, !5, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !14, i64 1048, !12, i64 1056, !5, i64 1064, !14, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !5, i64 1104, !12, i64 1112, !5, i64 1120, !5, i64 1124, !5, i64 1128, !5, i64 1132, !11, i64 1136, !14, i64 1144, !5, i64 1152, !6, i64 1160, !5, i64 1352, !14, i64 1360, !11, i64 1368, !5, i64 1376, !16, i64 1384, !16, i64 1392, !12, i64 1400, !12, i64 1408, !12, i64 1416, !17, i64 1424, !17, i64 1432, !17, i64 1440, !12, i64 1448, !5, i64 1456, !14, i64 1464, !16, i64 1472, !5, i64 1480, !13, i64 1488, !14, i64 1496, !14, i64 1504, !5, i64 1512, !18, i64 1520, !5, i64 1528, !5, i64 1532, !6, i64 1536, !6, i64 1640, !6, i64 1744, !5, i64 1848, !5, i64 1852}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !11, i64 0}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"p1 double", !11, i64 0}
!18 = !{!"p1 _ZTS15CVodeProjMemRec", !11, i64 0}
!19 = !{!9, !5, i64 32}
!20 = !{!9, !12, i64 8}
!21 = !{!9, !5, i64 64}
!22 = !{!9, !5, i64 704}
!23 = !{!9, !14, i64 712}
!24 = !{!9, !5, i64 720}
!25 = !{!12, !12, i64 0}
!26 = !{!9, !14, i64 832}
!27 = !{!9, !5, i64 840}
!28 = !{!9, !5, i64 724}
!29 = !{!9, !5, i64 728}
!30 = !{!9, !12, i64 696}
!31 = !{!9, !14, i64 1048}
!32 = !{!9, !12, i64 1056}
!33 = !{!9, !5, i64 1512}
!34 = !{!9, !5, i64 1480}
!35 = !{!9, !5, i64 1120}
!36 = !{!9, !14, i64 952}
!37 = !{!9, !14, i64 960}
!38 = !{!39, !41, i64 24}
!39 = !{!"SUNContext_", !11, i64 0, !40, i64 8, !5, i64 16, !41, i64 24, !5, i64 32, !5, i64 36, !42, i64 40, !5, i64 48}
!40 = !{!"p1 _ZTS12SUNProfiler_", !11, i64 0}
!41 = !{!"p1 _ZTS10SUNLogger_", !11, i64 0}
!42 = !{!"p1 _ZTS14SUNErrHandler_", !11, i64 0}
!43 = !{!39, !5, i64 36}
!44 = !{!42, !42, i64 0}
!45 = !{!46, !11, i64 8}
!46 = !{!"SUNErrHandler_", !42, i64 0, !11, i64 8, !11, i64 16}
!47 = !{!46, !11, i64 16}
!48 = distinct !{null}
!49 = !{!50, !51, i64 8}
!50 = !{!"_generic_N_Vector", !11, i64 0, !51, i64 8, !10, i64 16}
!51 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!52 = !{!53, !11, i64 8}
!53 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440}
!54 = !{!53, !11, i64 24}
!55 = !{!53, !11, i64 88}
!56 = !{!53, !11, i64 96}
!57 = !{!53, !11, i64 104}
!58 = !{!53, !11, i64 112}
!59 = !{!53, !11, i64 120}
!60 = !{!53, !11, i64 128}
!61 = !{!53, !11, i64 136}
!62 = !{!53, !11, i64 144}
!63 = !{!53, !11, i64 160}
!64 = !{!53, !11, i64 168}
!65 = !{!53, !11, i64 32}
!66 = !{!14, !14, i64 0}
!67 = !{!9, !14, i64 936}
!68 = !{!9, !14, i64 944}
!69 = !{!9, !13, i64 192}
!70 = !{!9, !13, i64 208}
!71 = !{!9, !13, i64 216}
!72 = !{!9, !13, i64 224}
!73 = !{!9, !13, i64 232}
!74 = !{!9, !13, i64 240}
!75 = !{!9, !13, i64 248}
!76 = !{!13, !13, i64 0}
!77 = !{!9, !11, i64 16}
!78 = !{!9, !12, i64 344}
!79 = !{!9, !5, i64 976}
!80 = !{!9, !5, i64 272}
!81 = !{!9, !5, i64 288}
!82 = !{!9, !5, i64 284}
!83 = !{!9, !12, i64 776}
!84 = !{!9, !12, i64 752}
!85 = !{!9, !5, i64 1064}
!86 = !{!9, !12, i64 1088}
!87 = !{!9, !12, i64 1112}
!88 = !{!9, !5, i64 1352}
!89 = !{!9, !14, i64 1464}
!90 = !{!9, !5, i64 1456}
!91 = !{!9, !12, i64 320}
!92 = !{!9, !5, i64 280}
!93 = !{!9, !14, i64 1360}
!94 = !{!9, !5, i64 1132}
!95 = !{!9, !5, i64 1128}
!96 = !{!9, !13, i64 56}
!97 = !{!9, !13, i64 1488}
!98 = !{!9, !14, i64 1072}
!99 = !{!9, !11, i64 1008}
!100 = !{!9, !12, i64 1080}
!101 = !{!9, !12, i64 40}
!102 = !{!9, !12, i64 48}
!103 = !{!9, !5, i64 36}
!104 = !{!9, !5, i64 68}
!105 = !{!9, !11, i64 72}
!106 = !{!9, !11, i64 80}
!107 = !{!53, !11, i64 184}
!108 = !{!9, !5, i64 1376}
!109 = !{!9, !17, i64 1424}
!110 = !{!9, !17, i64 1432}
!111 = !{!9, !17, i64 1440}
!112 = !{!9, !16, i64 1384}
!113 = !{!9, !16, i64 1392}
!114 = !{!9, !16, i64 1472}
!115 = !{!9, !11, i64 1368}
!116 = !{!5, !5, i64 0}
!117 = distinct !{!117, !118, !119}
!118 = !{!"llvm.loop.isvectorized", i32 1}
!119 = !{!"llvm.loop.unroll.runtime.disable"}
!120 = distinct !{!120, !119, !118}
!121 = !{!9, !13, i64 200}
!122 = !{!9, !14, i64 848}
!123 = !{!9, !12, i64 352}
!124 = !{!9, !11, i64 24}
!125 = distinct !{null}
!126 = !{!9, !11, i64 1000}
!127 = !{!9, !5, i64 1528}
!128 = !{!9, !18, i64 1520}
!129 = !{!9, !5, i64 1532}
!130 = !{!9, !14, i64 856}
!131 = !{!9, !5, i64 256}
!132 = !{!9, !12, i64 264}
!133 = !{!9, !12, i64 296}
!134 = !{!9, !12, i64 304}
!135 = !{!9, !12, i64 744}
!136 = !{!9, !12, i64 736}
!137 = !{!9, !12, i64 336}
!138 = !{!9, !12, i64 312}
!139 = !{!9, !5, i64 1852}
!140 = !{!9, !12, i64 1400}
!141 = !{!9, !5, i64 260}
!142 = !{!9, !12, i64 328}
!143 = !{!9, !5, i64 904}
!144 = !{!9, !5, i64 276}
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.unroll.disable"}
!147 = !{!148, !14, i64 16}
!148 = !{!"CVodeProjMemRec", !5, i64 0, !5, i64 4, !5, i64 8, !14, i64 16, !14, i64 24, !5, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !14, i64 64, !14, i64 72}
!149 = !{!148, !14, i64 24}
!150 = distinct !{!150, !118, !119}
!151 = distinct !{!151, !118, !119}
!152 = distinct !{!152, !119, !118}
!153 = distinct !{!153, !118, !119}
!154 = distinct !{!154, !119, !118}
!155 = distinct !{!155, !146}
!156 = distinct !{!156, !118, !119}
!157 = distinct !{!157, !118, !119}
!158 = distinct !{!158, !119, !118}
!159 = distinct !{!159, !118, !119}
!160 = distinct !{!160, !119, !118}
!161 = !{!9, !12, i64 624}
!162 = !{!9, !12, i64 632}
!163 = !{!9, !12, i64 640}
!164 = !{!9, !12, i64 648}
!165 = !{!9, !11, i64 1016}
!166 = !{!9, !5, i64 992}
!167 = !{!9, !12, i64 656}
!168 = !{!9, !15, i64 968}
end_hunk_1
