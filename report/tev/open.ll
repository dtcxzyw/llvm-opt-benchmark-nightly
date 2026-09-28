Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  %i.acw = or disjoint i32 %.sroa.0.0, %i.acv
  %i.acx = shl nuw nsw i32 %i.acw, 1
  %i.acy = xor i32 %i.acx, 2
  %i.acz = lshr i32 %i.xw, %i.acy
  %i.ada = shl i32 %i.acz, 30
  %i.adb = or i32 %i.ada, %i.act
  store i32 %i.adb, ptr %i.xv, align 8, !tbaa !83
  br label %.loopexit687

.loopexit687:                                     ; preds = %.loopexit687.loopexit, %bb.eh, %bb.em, %bb.el
  %.0312 = phi i32 [ 2, %bb.em ], [ 2, %bb.el ], [ 6, %bb.eh ], [ 6, %.loopexit687.loopexit ] ; 13 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %.rhs.trunc642 = trunc nuw nsw i32 %.0312 to i16 ; 4 uses
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !129 ; 5 uses
  %.not544 = icmp eq i16 %i.add, 0
  br i1 %.not544, label %bb.es, label %bb.en

bb.en:                                            ; preds = %.loopexit687
  %i.ade = zext i16 %i.add to i32
  %.not545 = icmp eq i16 %i.add, -1
  br i1 %.not545, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.adg = load i16, ptr %i.adf, align 2, !tbaa !131 ; 3 uses
  %.off668 = add i16 %i.adg, -1
  %switch669 = icmp ult i16 %.off668, -2
  br i1 %switch669, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.adh = zext i16 %i.adg to i32
  %.rhs.trunc946 = trunc nuw nsw i32 %.0312 to i16
  %i.adi = urem i16 %i.add, %.rhs.trunc946
  %.not548 = icmp ne i16 %i.adi, 0
  %i.adj = icmp samesign ult i32 %.0312, %i.adh
  %or.cond571 = select i1 %.not548, i1 %i.adj, i1 false
  br i1 %or.cond571, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.adk = udiv i16 %i.add, %.rhs.trunc642
  %narrow666 = add nuw i16 %i.adk, 1
  %i.adl = zext i16 %narrow666 to i32
  %i.adm = mul nuw nsw i32 %.0312, %i.adl         ; 2 uses
  %i.adn = sub nsw i32 %i.adm, %i.ade             ; 2 uses
  %i.ado = icmp sgt i32 %i.adn, 0
  br i1 %i.ado, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.adp = trunc i32 %i.adm to i16
  store i16 %i.adp, ptr %i.adc, align 2, !tbaa !129
  %i.adq = trunc i32 %i.adn to i16
  %i.adr = sub i16 %i.adg, %i.adq
  store i16 %i.adr, ptr %i.adf, align 2, !tbaa !131
  br label %bb.es

bb.es:                                            ; preds = %bb.eo, %bb.eq, %bb.er, %bb.ep, %bb.en, %.loopexit687
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.adt = load i16, ptr %i.ads, align 8, !tbaa !130 ; 5 uses
  %.not549 = icmp eq i16 %i.adt, 0
  br i1 %.not549, label %bb.ey, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.adu = zext i16 %i.adt to i32
  %.not550 = icmp eq i16 %i.adt, -1
  br i1 %.not550, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.adw = load i16, ptr %i.adv, align 4, !tbaa !149 ; 3 uses
  %.off670 = add i16 %i.adw, -1
  %switch671 = icmp ult i16 %.off670, -2
  br i1 %switch671, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.adx = zext i16 %i.adw to i32
  %.rhs.trunc943 = trunc nuw nsw i32 %.0312 to i16
  %i.ady = urem i16 %i.adt, %.rhs.trunc943
  %.not553 = icmp ne i16 %i.ady, 0
  %i.adz = icmp samesign ult i32 %.0312, %i.adx
  %or.cond572 = select i1 %.not553, i1 %i.adz, i1 false
  br i1 %or.cond572, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.aea = udiv i16 %i.adt, %.rhs.trunc642
  %narrow667 = add nuw i16 %i.aea, 1
  %i.aeb = zext i16 %narrow667 to i32
  %i.aec = mul nuw nsw i32 %.0312, %i.aeb         ; 2 uses
  %i.aed = sub nsw i32 %i.aec, %i.adu             ; 2 uses
  %i.aee = icmp sgt i32 %i.aed, 0
  br i1 %i.aee, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.aef = trunc i32 %i.aec to i16
  store i16 %i.aef, ptr %i.ads, align 8, !tbaa !130
  %i.aeg = trunc i32 %i.aed to i16
  %i.aeh = sub i16 %i.adw, %i.aeg
  store i16 %i.aeh, ptr %i.adv, align 4, !tbaa !149
  br label %bb.ey

bb.ey:                                            ; preds = %bb.eu, %bb.ew, %bb.ex, %bb.es, %bb.et, %bb.ev
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.aej = load i16, ptr %i.aei, align 2, !tbaa !129 ; 5 uses
  %.not544.1 = icmp eq i16 %i.aej, 0
  br i1 %.not544.1, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aek = zext i16 %i.aej to i32
  %.not545.1 = icmp eq i16 %i.aej, -1
  br i1 %.not545.1, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.aem = load i16, ptr %i.ael, align 2, !tbaa !131 ; 3 uses
  %.off668.1 = add i16 %i.aem, -1
  %switch669.1 = icmp ult i16 %.off668.1, -2
  br i1 %switch669.1, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.aen = zext i16 %i.aem to i32
  %.rhs.trunc940 = trunc nuw nsw i32 %.0312 to i16
  %i.aeo = urem i16 %i.aej, %.rhs.trunc940
  %.not548.1 = icmp ne i16 %i.aeo, 0
  %i.aep = icmp samesign ult i32 %.0312, %i.aen
  %or.cond571.1 = select i1 %.not548.1, i1 %i.aep, i1 false
  br i1 %or.cond571.1, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.aeq = udiv i16 %i.aej, %.rhs.trunc642
  %narrow666.1 = add nuw i16 %i.aeq, 1
  %i.aer = zext i16 %narrow666.1 to i32
  %i.aes = mul nuw nsw i32 %.0312, %i.aer         ; 2 uses
  %i.aet = sub nsw i32 %i.aes, %i.aek             ; 2 uses
  %i.aeu = icmp sgt i32 %i.aet, 0
  br i1 %i.aeu, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.aev = trunc i32 %i.aes to i16
  store i16 %i.aev, ptr %i.aei, align 2, !tbaa !129
  %i.aew = trunc i32 %i.aet to i16
  %i.aex = sub i16 %i.aem, %i.aew
  store i16 %i.aex, ptr %i.ael, align 2, !tbaa !131
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aez = load i16, ptr %i.aey, align 8, !tbaa !130 ; 5 uses
  %.not549.1 = icmp eq i16 %i.aez, 0
  br i1 %.not549.1, label %.critedge570, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.afa = zext i16 %i.aez to i32
  %.not550.1 = icmp eq i16 %i.aez, -1
  br i1 %.not550.1, label %.critedge570, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.afc = load i16, ptr %i.afb, align 4, !tbaa !149 ; 3 uses
  %.off670.1 = add i16 %i.afc, -1
  %switch671.1 = icmp ult i16 %.off670.1, -2
  br i1 %switch671.1, label %bb.fh, label %.critedge570

bb.fh:                                            ; preds = %bb.fg
  %i.afd = zext i16 %i.afc to i32
  %.rhs.trunc = trunc nuw nsw i32 %.0312 to i16
  %i.afe = urem i16 %i.aez, %.rhs.trunc
  %.not553.1 = icmp ne i16 %i.afe, 0
  %i.aff = icmp samesign ult i32 %.0312, %i.afd
  %or.cond572.1 = select i1 %.not553.1, i1 %i.aff, i1 false
  br i1 %or.cond572.1, label %bb.fi, label %.critedge570

bb.fi:                                            ; preds = %bb.fh
  %i.afg = udiv i16 %i.aez, %.rhs.trunc642
  %narrow667.1 = add nuw i16 %i.afg, 1
  %i.afh = zext i16 %narrow667.1 to i32
  %i.afi = mul nuw nsw i32 %.0312, %i.afh         ; 2 uses
  %i.afj = sub nsw i32 %i.afi, %i.afa             ; 2 uses
  %i.afk = icmp sgt i32 %i.afj, 0
  br i1 %i.afk, label %bb.fj, label %.critedge570

bb.fj:                                            ; preds = %bb.fi
  %i.afl = trunc i32 %i.afi to i16
  store i16 %i.afl, ptr %i.aey, align 8, !tbaa !130
  %i.afm = trunc i32 %i.afj to i16
  %i.afn = sub i16 %i.afc, %i.afm
  store i16 %i.afn, ptr %i.afb, align 4, !tbaa !149
  br label %.critedge570

.critedge570:                                     ; preds = %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.ej, %bb.ei
  %i.afo = load i32, ptr %i.in, align 4, !tbaa !109
  %.not467 = icmp eq i32 %i.afo, 0
  br i1 %.not467, label %.thread600, label %bb.fk

bb.fk:                                            ; preds = %.critedge570
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.afq = load i32, ptr %i.afp, align 8, !tbaa !83
  %i.afr = icmp eq i32 %i.afq, 0
  br i1 %i.afr, label %bb.fl, label %.thread599

bb.fl:                                            ; preds = %bb.fk
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !84 ; 6 uses
  %i.afu = add i32 %i.aft, -2
  %or.cond573 = icmp ult i32 %i.afu, 3
  br i1 %or.cond573, label %.lr.ph719, label %.thread599

.lr.ph719:                                        ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 170668
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !150
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 154252
  %i.afy = load <4 x i32>, ptr %i.afx, align 4, !tbaa !134
  %i.afz = insertelement <4 x i32> poison, i32 %i.afw, i64 0
  %i.aga = shufflevector <4 x i32> %i.afz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agb = add <4 x i32> %i.afy, %i.aga           ; 4 uses
  %wide.trip.count799 = zext nneg i32 %i.aft to i64 ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %0, i64 187092
  %2 = load i32, ptr %i.agc, align 4, !tbaa !134
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.agb, i64 0
  %3 = sub i32 %2, %.sroa.0.0.vec.extract
  %4 = uitofp i32 %3 to float
  store float %4, ptr %i.a, align 16, !tbaa !93
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 187096
  %i.agd = load i32, ptr %5, align 8, !tbaa !134
  %.sroa.0.0.vec.extract.a = extractelement <4 x i32> %i.agb, i64 1
  %i.age = sub i32 %i.agd, %.sroa.0.0.vec.extract.a
  %i.agf = uitofp i32 %i.age to float
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.agf, ptr %6, align 4, !tbaa !93
  %exitcond800.not = icmp eq i32 %i.aft, 2
  br i1 %exitcond800.not, label %.lr.ph725.preheader, label %bb.fm

.lr.ph725.preheader:                              ; preds = %bb.fn, %bb.fm, %.lr.ph719
  %.pre870 = load float, ptr %i.a, align 16, !tbaa !93 ; 4 uses
  %i.agg = add nsw i64 %wide.trip.count799, -1    ; 4 uses
  %xtraiter958 = and i64 %i.agg, 1
  %i.agh = icmp eq i32 %i.aft, 2
  br i1 %i.agh, label %.lr.ph725.epil.preheader, label %.lr.ph725.preheader.new

.lr.ph725.preheader.new:                          ; preds = %.lr.ph725.preheader
  %unroll_iter963 = and i64 %i.agg, -2
  br label %.lr.ph725

bb.fm:                                            ; preds = %.lr.ph719
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 187100
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !134
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.agb, i64 2
  %i.agk = sub i32 %i.agj, %.sroa.0.8.vec.extract
  %i.agl = uitofp i32 %i.agk to float
  %i.agm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.agl, ptr %i.agm, align 8, !tbaa !93
  %exitcond800.not.2 = icmp eq i32 %i.aft, 3
  br i1 %exitcond800.not.2, label %.lr.ph725.preheader, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 187104
  %i.ago = load i32, ptr %i.agn, align 8, !tbaa !134
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.agb, i64 3
  %i.agp = sub i32 %i.ago, %.sroa.0.12.vec.extract
  %i.agq = uitofp i32 %i.agp to float
  %i.agr = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.agq, ptr %i.agr, align 4, !tbaa !93
  br label %.lr.ph725.preheader

._crit_edge726.unr-lcssa:                         ; preds = %.lr.ph725
  %lcmp.mod959.not = icmp eq i64 %xtraiter958, 0
  br i1 %lcmp.mod959.not, label %._crit_edge726, label %.lr.ph725.epil.preheader

.lr.ph725.epil.preheader:                         ; preds = %._crit_edge726.unr-lcssa, %.lr.ph725.preheader
  %indvars.iv801.epil.init = phi i64 [ 1, %.lr.ph725.preheader ], [ %indvars.iv.next802.1, %._crit_edge726.unr-lcssa ]
  %.0301722.epil.init = phi float [ %.pre870, %.lr.ph725.preheader ], [ %.1302.1, %._crit_edge726.unr-lcssa ] ; 2 uses
  %.0303721.epil.init = phi float [ %.pre870, %.lr.ph725.preheader ], [ %.1304.1, %._crit_edge726.unr-lcssa ] ; 2 uses
  %lcmp.mod962 = trunc i64 %i.agg to i1
  tail call void @llvm.assume(i1 %lcmp.mod962)
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv801.epil.init
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !93 ; 4 uses
  %i.agu = fcmp ogt float %.0303721.epil.init, %i.agt
  %.1304.epil = select i1 %i.agu, float %i.agt, float %.0303721.epil.init
  %i.agv = fcmp olt float %.0301722.epil.init, %i.agt
  %.1302.epil = select i1 %i.agv, float %i.agt, float %.0301722.epil.init
  br label %._crit_edge726

._crit_edge726:                                   ; preds = %._crit_edge726.unr-lcssa, %.lr.ph725.epil.preheader
  %.1304.lcssa = phi float [ %.1304.1, %._crit_edge726.unr-lcssa ], [ %.1304.epil, %.lr.ph725.epil.preheader ] ; 2 uses
  %.1302.lcssa = phi float [ %.1302.1, %._crit_edge726.unr-lcssa ], [ %.1302.epil, %.lr.ph725.epil.preheader ] ; 5 uses
  %i.agw = fcmp ogt float %.1304.lcssa, 1.000000e+00
  %i.agx = fmul nnan float %.1304.lcssa, 2.000000e+01
  %i.agy = fcmp olt float %.1302.lcssa, %i.agx
  %or.cond575 = select i1 %i.agw, i1 %i.agy, i1 false
  br i1 %or.cond575, label %.lr.ph730, label %bb.fp

.lr.ph730:                                        ; preds = %._crit_edge726
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 153252 ; 3 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %xtraiter965 = and i64 %wide.trip.count799, 1
  %i.ahb = icmp eq i64 %i.agg, 0
  br i1 %i.ahb, label %.epil.preheader, label %.lr.ph730.new

.lr.ph730.new:                                    ; preds = %.lr.ph730
  %unroll_iter968 = and i64 %wide.trip.count799, 6
  br label %bb.fo

.lr.ph725:                                        ; preds = %.lr.ph725, %.lr.ph725.preheader.new
  %indvars.iv801 = phi i64 [ 1, %.lr.ph725.preheader.new ], [ %indvars.iv.next802.1, %.lr.ph725 ] ; 3 uses
  %.0301722 = phi float [ %.pre870, %.lr.ph725.preheader.new ], [ %.1302.1, %.lr.ph725 ] ; 2 uses
  %.0303721 = phi float [ %.pre870, %.lr.ph725.preheader.new ], [ %.1304.1, %.lr.ph725 ] ; 2 uses
  %niter964 = phi i64 [ 0, %.lr.ph725.preheader.new ], [ %niter964.next.1, %.lr.ph725 ]
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv801
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !93 ; 4 uses
  %i.ahe = fcmp ogt float %.0303721, %i.ahd
  %.1304 = select i1 %i.ahe, float %i.ahd, float %.0303721 ; 2 uses
  %i.ahf = fcmp olt float %.0301722, %i.ahd
  %.1302 = select i1 %i.ahf, float %i.ahd, float %.0301722 ; 2 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv801
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 4
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !93 ; 4 uses
  %i.ahj = fcmp ogt float %.1304, %i.ahi
  %.1304.1 = select i1 %i.ahj, float %i.ahi, float %.1304 ; 3 uses
  %i.ahk = fcmp olt float %.1302, %i.ahi
  %.1302.1 = select i1 %i.ahk, float %i.ahi, float %.1302 ; 3 uses
  %indvars.iv.next802.1 = add nuw nsw i64 %indvars.iv801, 2 ; 2 uses
  %niter964.next.1 = add nuw i64 %niter964, 2     ; 2 uses
  %niter964.ncmp.1 = icmp eq i64 %niter964.next.1, %unroll_iter963
  br i1 %niter964.ncmp.1, label %._crit_edge726.unr-lcssa, label %.lr.ph725, !llvm.loop !99

._crit_edge731.unr-lcssa:                         ; preds = %bb.fo
  %lcmp.mod966.not = icmp eq i64 %xtraiter965, 0
  br i1 %lcmp.mod966.not, label %._crit_edge731, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge731.unr-lcssa, %.lr.ph730
  %indvars.iv806.epil.init = phi i64 [ 0, %.lr.ph730 ], [ %indvars.iv.next807.1, %._crit_edge731.unr-lcssa ] ; 3 uses
  %lcmp.mod967 = trunc i32 %i.aft to i1
  tail call void @llvm.assume(i1 %lcmp.mod967)
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv806.epil.init
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !93
  %i.ahn = fdiv float %i.ahm, %.1302.lcssa        ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv806.epil.init ; 2 uses
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !93
  %i.ahq = fdiv float %i.ahp, %i.ahn
  store float %i.ahq, ptr %i.aho, align 4, !tbaa !93
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv806.epil.init ; 2 uses
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !93
  %i.aht = fdiv float %i.ahs, %i.ahn
  store float %i.aht, ptr %i.ahr, align 4, !tbaa !93
  br label %._crit_edge731

._crit_edge731:                                   ; preds = %._crit_edge731.unr-lcssa, %.epil.preheader
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.ahv = load i32, ptr %i.ahu, align 8, !tbaa !134
  %i.ahw = uitofp i32 %i.ahv to float
  %i.ahx = fadd float %.1302.lcssa, %i.ahw
  %i.ahy = fptoui float %i.ahx to i32
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.ahy, ptr %i.ahz, align 8, !tbaa !88
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fo, %.lr.ph730.new
  %indvars.iv806 = phi i64 [ 0, %.lr.ph730.new ], [ %indvars.iv.next807.1, %bb.fo ] ; 5 uses
  %niter969 = phi i64 [ 0, %.lr.ph730.new ], [ %niter969.next.1, %bb.fo ]
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv806
  %i.aib = load float, ptr %i.aia, align 8, !tbaa !93
  %i.aic = fdiv float %i.aib, %.1302.lcssa        ; 2 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv806 ; 2 uses
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !93
  %i.aif = fdiv float %i.aie, %i.aic
  store float %i.aif, ptr %i.aid, align 4, !tbaa !93
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv806 ; 2 uses
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !93
  %i.aii = fdiv float %i.aih, %i.aic
  store float %i.aii, ptr %i.aig, align 4, !tbaa !93
  %indvars.iv.next807 = or disjoint i64 %indvars.iv806, 1 ; 3 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next807
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !93
  %i.ail = fdiv float %i.aik, %.1302.lcssa        ; 2 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.next807 ; 2 uses
  %i.ain = load float, ptr %i.aim, align 8, !tbaa !93
  %i.aio = fdiv float %i.ain, %i.ail
  store float %i.aio, ptr %i.aim, align 8, !tbaa !93
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv.next807 ; 2 uses
  %i.aiq = load float, ptr %i.aip, align 8, !tbaa !93
  %i.air = fdiv float %i.aiq, %i.ail
  store float %i.air, ptr %i.aip, align 8, !tbaa !93
  %indvars.iv.next807.1 = add nuw nsw i64 %indvars.iv806, 2 ; 2 uses
  %niter969.next.1 = add i64 %niter969, 2         ; 2 uses
  %niter969.ncmp.1 = icmp eq i64 %niter969.next.1, %unroll_iter968
  br i1 %niter969.ncmp.1, label %._crit_edge731.unr-lcssa, label %bb.fo, !llvm.loop !100

bb.fp:                                            ; preds = %._crit_edge726, %._crit_edge731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread599

.thread599:                                       ; preds = %bb.fp, %bb.fk, %bb.fl
  switch i32 %i.wq, label %.thread624 [
    i32 47, label %bb.fq
    i32 32, label %bb.fs
    i32 63, label %.thread608
    i32 49, label %bb.gt
  ]

bb.fq:                                            ; preds = %.thread599
  %i.ais = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.ait = tail call i32 @strcasecmp(ptr noundef nonnull %i.ais, ptr noundef nonnull @.str.40) #20
  %.not469 = icmp eq i32 %i.ait, 0
  br i1 %.not469, label %bb.fr, label %.thread624

bb.fr:                                            ; preds = %bb.fq
  %i.aiu = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4288, ptr %i.aiu, align 2, !tbaa !81
  br label %.thread624

bb.fs:                                            ; preds = %.thread599
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.aiw = tail call i32 @strcasecmp(ptr noundef nonnull %i.aiv, ptr noundef nonnull @.str.41) #20
  %.not471 = icmp eq i32 %i.aiw, 0
  br i1 %.not471, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aiy = load i16, ptr %i.aix, align 4, !tbaa !82
  %i.aiz = add i16 %i.aiy, -16
  store i16 %i.aiz, ptr %i.aix, align 4, !tbaa !82
  br label %.thread624

bb.fu:                                            ; preds = %bb.fs
  %i.aja = tail call i32 @strcasecmp(ptr noundef nonnull %i.aiv, ptr noundef nonnull @.str.42) #20
  %.not472 = icmp eq i32 %i.aja, 0
  br i1 %.not472, label %bb.fv, label %.thread624

bb.fv:                                            ; preds = %bb.fu
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ajc = load i16, ptr %i.ajb, align 2, !tbaa !77
  switch i16 %i.ajc, label %.thread624 [
    i16 9536, label %bb.fw
    i16 7424, label %bb.fx
    i16 5312, label %bb.fy
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.ajd = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !81
  %i.ajf = add i16 %i.aje, -12
  store i16 %i.ajf, ptr %i.ajd, align 2, !tbaa !81
  br label %.thread624

end_hunk_0
