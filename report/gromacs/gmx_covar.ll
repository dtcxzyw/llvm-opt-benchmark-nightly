Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_covar?download=true
inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z9gmx_covariPPc:bb.a

scalar.ph1437.prol.loopexit:                      ; preds = %scalar.ph1437.prol, %scalar.ph1437.preheader
  %.10408926.2.unr = phi i64 [ %.10408926.2.ph, %scalar.ph1437.preheader ], [ %i.axm, %scalar.ph1437.prol ]
  %i.axn = icmp eq i64 %.pre-phi10701265, %.neg1742
  br i1 %i.axn, label %._crit_edge928.2, label %scalar.ph1437

scalar.ph1437:                                    ; preds = %scalar.ph1437.prol.loopexit, %scalar.ph1437
  %.10408926.2 = phi i64 [ %i.azh, %scalar.ph1437 ], [ %.10408926.2.unr, %scalar.ph1437.prol.loopexit ] ; 4 uses
  %.idx508.2 = mul nuw nsw i64 %.10408926.2, 12
  %i.axo = getelementptr i8, ptr %i.avr, i64 %.idx508.2 ; 4 uses
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408926.2 ; 3 uses
  %i.axq = load float, ptr %i.axo, align 4, !tbaa !146
  %i.axr = fmul float %i.axq, %i.ane
  %i.axs = load float, ptr %i.axp, align 4, !tbaa !146
  %i.axt = fmul float %i.axr, %i.axs
  %i.axu = load float, ptr %i.aob, align 4, !tbaa !146
  %i.axv = fmul float %i.axt, %i.axu
  store float %i.axv, ptr %i.axo, align 4, !tbaa !146
  %i.axw = getelementptr i8, ptr %i.axo, i64 4    ; 2 uses
  %i.axx = load float, ptr %i.axw, align 4, !tbaa !146
  %i.axy = fmul float %i.axx, %i.ane
  %i.axz = load float, ptr %i.axp, align 4, !tbaa !146
  %i.aya = fmul float %i.axy, %i.axz
  %i.ayb = load float, ptr %i.aob, align 4, !tbaa !146
  %i.ayc = fmul float %i.aya, %i.ayb
  store float %i.ayc, ptr %i.axw, align 4, !tbaa !146
  %i.ayd = getelementptr i8, ptr %i.axo, i64 8    ; 2 uses
  %i.aye = load float, ptr %i.ayd, align 4, !tbaa !146
  %i.ayf = fmul float %i.aye, %i.ane
  %i.ayg = load float, ptr %i.axp, align 4, !tbaa !146
  %i.ayh = fmul float %i.ayf, %i.ayg
  %i.ayi = load float, ptr %i.aob, align 4, !tbaa !146
  %i.ayj = fmul float %i.ayh, %i.ayi
  store float %i.ayj, ptr %i.ayd, align 4, !tbaa !146
  %i.ayk = add nuw nsw i64 %.10408926.2, 1        ; 2 uses
  %.idx508.2.1 = mul nuw nsw i64 %i.ayk, 12
  %i.ayl = getelementptr i8, ptr %i.avr, i64 %.idx508.2.1 ; 4 uses
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ayk ; 3 uses
  %i.ayn = load float, ptr %i.ayl, align 4, !tbaa !146
  %i.ayo = fmul float %i.ayn, %i.ane
  %i.ayp = load float, ptr %i.aym, align 4, !tbaa !146
  %i.ayq = fmul float %i.ayo, %i.ayp
  %i.ayr = load float, ptr %i.aob, align 4, !tbaa !146
  %i.ays = fmul float %i.ayq, %i.ayr
  store float %i.ays, ptr %i.ayl, align 4, !tbaa !146
  %i.ayt = getelementptr i8, ptr %i.ayl, i64 4    ; 2 uses
  %i.ayu = load float, ptr %i.ayt, align 4, !tbaa !146
  %i.ayv = fmul float %i.ayu, %i.ane
  %i.ayw = load float, ptr %i.aym, align 4, !tbaa !146
  %i.ayx = fmul float %i.ayv, %i.ayw
  %i.ayy = load float, ptr %i.aob, align 4, !tbaa !146
  %i.ayz = fmul float %i.ayx, %i.ayy
  store float %i.ayz, ptr %i.ayt, align 4, !tbaa !146
  %i.aza = getelementptr i8, ptr %i.ayl, i64 8    ; 2 uses
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !146
  %i.azc = fmul float %i.azb, %i.ane
  %i.azd = load float, ptr %i.aym, align 4, !tbaa !146
  %i.aze = fmul float %i.azc, %i.azd
  %i.azf = load float, ptr %i.aob, align 4, !tbaa !146
  %i.azg = fmul float %i.aze, %i.azf
  store float %i.azg, ptr %i.aza, align 4, !tbaa !146
  %i.azh = add nuw nsw i64 %.10408926.2, 2        ; 2 uses
  %exitcond1031.2.not.1 = icmp eq i64 %i.azh, %.pre-phi10701265
  br i1 %exitcond1031.2.not.1, label %._crit_edge928.2, label %scalar.ph1437, !llvm.loop !87

._crit_edge928.2:                                 ; preds = %scalar.ph1437.prol.loopexit, %scalar.ph1437, %middle.block1460
  %i.azi = add nuw nsw i64 %.1393931, 1           ; 2 uses
  %exitcond1034.not = icmp eq i64 %i.azi, %.pre-phi10701265
  br i1 %exitcond1034.not, label %.preheader858, label %.preheader860, !llvm.loop !88

.preheader857:                                    ; preds = %bb.dr, %.preheader857.preheader.new
  %.2394933 = phi i64 [ 0, %.preheader857.preheader.new ], [ %i.baz, %bb.dr ] ; 7 uses
  %niter1696 = phi i64 [ 0, %.preheader857.preheader.new ], [ %niter1696.next.3, %bb.dr ]
  %invariant.gep = getelementptr [4 x i8], ptr %i.pf, i64 %.2394933
  %i.azj = mul nuw nsw i64 %.2394933, %i.pa
  %i.azk = getelementptr [4 x i8], ptr %i.pf, i64 %i.azj
  br label %bb.dn

.lr.ph936.unr-lcssa:                              ; preds = %bb.dr
  %i.azl = and i32 %i.oz, 3
  %lcmp.mod1693.not = icmp eq i32 %i.azl, 0
  br i1 %lcmp.mod1693.not, label %.lr.ph936, label %.preheader857.epil.preheader

.preheader857.epil.preheader:                     ; preds = %.lr.ph936.unr-lcssa, %.preheader857.preheader
  %.2394933.epil.init = phi i64 [ 0, %.preheader857.preheader ], [ %i.baz, %.lr.ph936.unr-lcssa ]
  %i.azm = and i32 %i.oz, 3
  %lcmp.mod1694 = icmp ne i32 %i.azm, 0
  call void @llvm.assume(i1 %lcmp.mod1694)
  br label %.preheader857.epil

.preheader857.epil:                               ; preds = %bb.dm, %.preheader857.epil.preheader
  %.2394933.epil = phi i64 [ %i.azu, %bb.dm ], [ %.2394933.epil.init, %.preheader857.epil.preheader ] ; 4 uses
  %epil.iter1692 = phi i64 [ %epil.iter1692.next, %bb.dm ], [ 0, %.preheader857.epil.preheader ]
  %invariant.gep.epil = getelementptr [4 x i8], ptr %i.pf, i64 %.2394933.epil
  %i.azn = mul nuw nsw i64 %.2394933.epil, %i.pa
  %i.azo = getelementptr [4 x i8], ptr %i.pf, i64 %i.azn
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dl, %.preheader857.epil
  %.11409932.epil = phi i64 [ %.2394933.epil, %.preheader857.epil ], [ %i.azs, %bb.dl ] ; 3 uses
  %i.azp = getelementptr [4 x i8], ptr %i.azo, i64 %.11409932.epil
  %i.azq = load float, ptr %i.azp, align 4, !tbaa !146
  %i.azr = mul nuw nsw i64 %.11409932.epil, %i.pa
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep.epil, i64 %i.azr
  store float %i.azq, ptr %gep.epil, align 4, !tbaa !146
  %i.azs = add nuw nsw i64 %.11409932.epil, 1     ; 2 uses
  %i.azt = icmp slt i64 %i.azs, %i.pa
  br i1 %i.azt, label %bb.dl, label %bb.dm, !llvm.loop !89

bb.dm:                                            ; preds = %bb.dl
  %i.azu = add nuw nsw i64 %.2394933.epil, 1
  %epil.iter1692.next = add i64 %epil.iter1692, 1 ; 2 uses
  %epil.iter1692.cmp.not = icmp eq i64 %epil.iter1692.next, %xtraiter1691
  br i1 %epil.iter1692.cmp.not, label %.lr.ph936, label %.preheader857.epil, !llvm.loop !90

.lr.ph936:                                        ; preds = %bb.dm, %.lr.ph936.unr-lcssa
  %.12410507 = add nuw nsw i64 %i.pa, 1           ; 9 uses
  %xtraiter1698 = and i64 %i.pa, 7
  %i.azv = icmp ult i32 %i.oz, 8
  br i1 %i.azv, label %.epil.preheader1697, label %.lr.ph936.new

.lr.ph936.new:                                    ; preds = %.lr.ph936
  %unroll_iter1703 = and i64 %i.pa, 2147483640
  br label %bb.ds

bb.dn:                                            ; preds = %.preheader857, %bb.dn
  %.11409932 = phi i64 [ %.2394933, %.preheader857 ], [ %i.azz, %bb.dn ] ; 3 uses
  %i.azw = getelementptr [4 x i8], ptr %i.azk, i64 %.11409932
  %i.azx = load float, ptr %i.azw, align 4, !tbaa !146
  %i.azy = mul nuw nsw i64 %.11409932, %i.pa
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.azy
  store float %i.azx, ptr %gep, align 4, !tbaa !146
  %i.azz = add nuw nsw i64 %.11409932, 1          ; 2 uses
  %i.baa = icmp slt i64 %i.azz, %i.pa
  br i1 %i.baa, label %bb.dn, label %.preheader857.1, !llvm.loop !89

.preheader857.1:                                  ; preds = %bb.dn
  %i.bab = or disjoint i64 %.2394933, 1           ; 3 uses
  %invariant.gep.1 = getelementptr [4 x i8], ptr %i.pf, i64 %i.bab
  %i.bac = mul nuw nsw i64 %i.bab, %i.pa
  %i.bad = getelementptr [4 x i8], ptr %i.pf, i64 %i.bac
  br label %bb.do

bb.do:                                            ; preds = %bb.do, %.preheader857.1
  %.11409932.1 = phi i64 [ %i.bab, %.preheader857.1 ], [ %i.bah, %bb.do ] ; 3 uses
  %i.bae = getelementptr [4 x i8], ptr %i.bad, i64 %.11409932.1
  %i.baf = load float, ptr %i.bae, align 4, !tbaa !146
  %i.bag = mul nuw nsw i64 %.11409932.1, %i.pa
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bag
  store float %i.baf, ptr %gep.1, align 4, !tbaa !146
  %i.bah = add nuw nsw i64 %.11409932.1, 1        ; 2 uses
  %i.bai = icmp slt i64 %i.bah, %i.pa
  br i1 %i.bai, label %bb.do, label %.preheader857.2, !llvm.loop !89

.preheader857.2:                                  ; preds = %bb.do
  %i.baj = or disjoint i64 %.2394933, 2           ; 3 uses
  %invariant.gep.2 = getelementptr [4 x i8], ptr %i.pf, i64 %i.baj
  %i.bak = mul nuw nsw i64 %i.baj, %i.pa
  %i.bal = getelementptr [4 x i8], ptr %i.pf, i64 %i.bak
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %.preheader857.2
  %.11409932.2 = phi i64 [ %i.baj, %.preheader857.2 ], [ %i.bap, %bb.dp ] ; 3 uses
  %i.bam = getelementptr [4 x i8], ptr %i.bal, i64 %.11409932.2
  %i.ban = load float, ptr %i.bam, align 4, !tbaa !146
  %i.bao = mul nuw nsw i64 %.11409932.2, %i.pa
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.bao
  store float %i.ban, ptr %gep.2, align 4, !tbaa !146
  %i.bap = add nuw nsw i64 %.11409932.2, 1        ; 2 uses
  %i.baq = icmp slt i64 %i.bap, %i.pa
  br i1 %i.baq, label %bb.dp, label %.preheader857.3, !llvm.loop !89

.preheader857.3:                                  ; preds = %bb.dp
  %i.bar = or disjoint i64 %.2394933, 3           ; 3 uses
  %invariant.gep.3 = getelementptr [4 x i8], ptr %i.pf, i64 %i.bar
  %i.bas = mul nuw nsw i64 %i.bar, %i.pa
  %i.bat = getelementptr [4 x i8], ptr %i.pf, i64 %i.bas
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.preheader857.3
  %.11409932.3 = phi i64 [ %i.bar, %.preheader857.3 ], [ %i.bax, %bb.dq ] ; 3 uses
  %i.bau = getelementptr [4 x i8], ptr %i.bat, i64 %.11409932.3
  %i.bav = load float, ptr %i.bau, align 4, !tbaa !146
  %i.baw = mul nuw nsw i64 %.11409932.3, %i.pa
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.baw
  store float %i.bav, ptr %gep.3, align 4, !tbaa !146
  %i.bax = add nuw nsw i64 %.11409932.3, 1        ; 2 uses
  %i.bay = icmp slt i64 %i.bax, %i.pa
  br i1 %i.bay, label %bb.dq, label %bb.dr, !llvm.loop !89

bb.dr:                                            ; preds = %bb.dq
  %i.baz = add nuw nsw i64 %.2394933, 4           ; 2 uses
  %niter1696.next.3 = add i64 %niter1696, 4       ; 2 uses
  %niter1696.ncmp.3 = icmp eq i64 %niter1696.next.3, %unroll_iter1695
  br i1 %niter1696.ncmp.3, label %.lr.ph936.unr-lcssa, label %.preheader857, !llvm.loop !91

bb.ds:                                            ; preds = %bb.ds, %.lr.ph936.new
  %.12410935 = phi i64 [ 0, %.lr.ph936.new ], [ %i.bcn, %bb.ds ] ; 9 uses
  %.0435934 = phi float [ 0.000000e+00, %.lr.ph936.new ], [ %i.bcm, %bb.ds ]
  %niter1704 = phi i64 [ 0, %.lr.ph936.new ], [ %niter1704.next.7, %bb.ds ]
  %i.bba = mul i64 %.12410935, %.12410507
  %i.bbb = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.bba
  %i.bbc = load float, ptr %i.bbb, align 4, !tbaa !146
  %i.bbd = fadd float %.0435934, %i.bbc
  %i.bbe = or disjoint i64 %.12410935, 1
  %i.bbf = mul i64 %i.bbe, %.12410507
  %i.bbg = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.bbf
  %i.bbh = load float, ptr %i.bbg, align 4, !tbaa !146
  %i.bbi = fadd float %i.bbd, %i.bbh
  %i.bbj = or disjoint i64 %.12410935, 2
  %i.bbk = mul i64 %i.bbj, %.12410507
  %i.bbl = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.bbk
  %i.bbm = load float, ptr %i.bbl, align 4, !tbaa !146
  %i.bbn = fadd float %i.bbi, %i.bbm
  %i.bbo = or disjoint i64 %.12410935, 3
  %i.bbp = mul i64 %i.bbo, %.12410507
  %i.bbq = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.bbp
  %i.bbr = load float, ptr %i.bbq, align 4, !tbaa !146
  %i.bbs = fadd float %i.bbn, %i.bbr
  %i.bbt = or disjoint i64 %.12410935, 4
  %i.bbu = mul i64 %i.bbt, %.12410507
  %i.bbv = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.bbu
  %i.bbw = load float, ptr %i.bbv, align 4, !tbaa !146
  %i.bbx = fadd float %i.bbs, %i.bbw
  %i.bby = or disjoint i64 %.12410935, 5
  %i.bbz = mul i64 %i.bby, %.12410507
  %i.bca = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.bbz
  %i.bcb = load float, ptr %i.bca, align 4, !tbaa !146
  %i.bcc = fadd float %i.bbx, %i.bcb
  %i.bcd = or disjoint i64 %.12410935, 6
  %i.bce = mul i64 %i.bcd, %.12410507
  %i.bcf = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.bce
  %i.bcg = load float, ptr %i.bcf, align 4, !tbaa !146
  %i.bch = fadd float %i.bcc, %i.bcg
  %i.bci = or disjoint i64 %.12410935, 7
  %i.bcj = mul i64 %i.bci, %.12410507
  %i.bck = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.bcj
  %i.bcl = load float, ptr %i.bck, align 4, !tbaa !146
  %i.bcm = fadd float %i.bch, %i.bcl              ; 3 uses
  %i.bcn = add nuw nsw i64 %.12410935, 8          ; 2 uses
  %niter1704.next.7 = add i64 %niter1704, 8       ; 2 uses
  %niter1704.ncmp.7 = icmp eq i64 %niter1704.next.7, %unroll_iter1703
  br i1 %niter1704.ncmp.7, label %._crit_edge937.loopexit.unr-lcssa, label %bb.ds, !llvm.loop !92

._crit_edge937.loopexit.unr-lcssa:                ; preds = %bb.ds
  %i.bco = and i32 %i.oz, 7
  %lcmp.mod1700.not = icmp eq i32 %i.bco, 0
  br i1 %lcmp.mod1700.not, label %._crit_edge937, label %.epil.preheader1697

.epil.preheader1697:                              ; preds = %._crit_edge937.loopexit.unr-lcssa, %.lr.ph936
  %.12410935.epil.init = phi i64 [ 0, %.lr.ph936 ], [ %i.bcn, %._crit_edge937.loopexit.unr-lcssa ]
  %.0435934.epil.init = phi float [ 0.000000e+00, %.lr.ph936 ], [ %i.bcm, %._crit_edge937.loopexit.unr-lcssa ]
  %i.bcp = and i32 %i.oz, 7
  %lcmp.mod1702 = icmp ne i32 %i.bcp, 0
  call void @llvm.assume(i1 %lcmp.mod1702)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %.epil.preheader1697
  %.12410935.epil = phi i64 [ %.12410935.epil.init, %.epil.preheader1697 ], [ %i.bcu, %bb.dt ] ; 2 uses
  %.0435934.epil = phi float [ %.0435934.epil.init, %.epil.preheader1697 ], [ %i.bct, %bb.dt ]
  %epil.iter1699 = phi i64 [ 0, %.epil.preheader1697 ], [ %epil.iter1699.next, %bb.dt ]
  %i.bcq = mul i64 %.12410935.epil, %.12410507
  %i.bcr = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.bcq
  %i.bcs = load float, ptr %i.bcr, align 4, !tbaa !146
  %i.bct = fadd float %.0435934.epil, %i.bcs      ; 2 uses
  %i.bcu = add nuw nsw i64 %.12410935.epil, 1
  %epil.iter1699.next = add i64 %epil.iter1699, 1 ; 2 uses
  %epil.iter1699.cmp.not = icmp eq i64 %epil.iter1699.next, %xtraiter1698
  br i1 %epil.iter1699.cmp.not, label %._crit_edge937, label %bb.dt, !llvm.loop !93

._crit_edge937:                                   ; preds = %._crit_edge937.loopexit.unr-lcssa, %bb.dt, %.preheader858
  %.0435.lcssa = phi float [ 0.000000e+00, %.preheader858 ], [ %i.bcm, %._crit_edge937.loopexit.unr-lcssa ], [ %i.bct, %bb.dt ] ; 2 uses
  %i.bcv = load ptr, ptr @stderr, align 8, !tbaa !153
  %i.bcw = fpext float %.0435.lcssa to double     ; 3 uses
  %i.bcx = load i8, ptr @_ZZ9gmx_covariPPcE2bM, align 1, !tbaa !127, !range !128, !noundef !129
  %i.bcy = trunc nuw i8 %i.bcx to i1
  %i.bcz = select i1 %i.bcy, ptr @.str.70, ptr @.str.71
  %i.bda = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bcv, ptr noundef nonnull @.str.69, double noundef %i.bcw, ptr noundef nonnull %i.bcz) #28 ; 0 uses
  %i.bdb = load ptr, ptr %i.r, align 8, !tbaa !16
  %.not469 = icmp eq ptr %i.bdb, null
  br i1 %.not469, label %bb.ec, label %bb.du

bb.du:                                            ; preds = %._crit_edge937
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef zeroext 2)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %bb.du
  %i.bdc = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull @.str.72)
          to label %bb.dw unwind label %bb.ea     ; 2 uses

bb.dw:                                            ; preds = %bb.dv
  %i.bdd = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.bde = load ptr, ptr %i.bdd, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i583 = icmp eq ptr %i.bde, null
  br i1 %.not.i.i.i583, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i584, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bdd, ptr noundef nonnull %i.bde) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i584

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i584: ; preds = %bb.dx, %bb.dw
  %i.bdf = load ptr, ptr %17, align 8, !tbaa !21  ; 2 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bdh = icmp eq ptr %i.bdf, %i.bdg
  br i1 %i.bdh, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit587, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i585

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i585: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i584
  %i.bdi = load i64, ptr %i.bdg, align 8, !tbaa !22
  %i.bdj = add i64 %i.bdi, 1
  call void @_ZdlPvm(ptr noundef %i.bdf, i64 noundef %i.bdj) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit587

_ZNSt10filesystem7__cxx114pathD2Ev.exit587:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i584, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i585
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br i1 %i.aqa, label %.preheader855, label %._crit_edge943.split

.preheader855:                                    ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit587, %._crit_edge941
  %.3395942 = phi i64 [ %i.bdz, %._crit_edge941 ], [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit587 ] ; 2 uses
  %i.bdk = mul nuw nsw i64 %.3395942, %i.pa
  %i.bdl = getelementptr [4 x i8], ptr %i.pf, i64 %i.bdk
  br label %bb.dy

bb.dy:                                            ; preds = %.preheader855, %bb.dy
  %.13411939 = phi i64 [ 0, %.preheader855 ], [ %i.bdv, %bb.dy ] ; 2 uses
  %i.bdm = getelementptr [4 x i8], ptr %i.bdl, i64 %.13411939 ; 2 uses
  %i.bdn = load float, ptr %i.bdm, align 4, !tbaa !146
  %i.bdo = fpext float %i.bdn to double
  %i.bdp = getelementptr i8, ptr %i.bdm, i64 4
  %i.bdq = load <2 x float>, ptr %i.bdp, align 4, !tbaa !146
  %i.bdr = fpext <2 x float> %i.bdq to <2 x double> ; 2 uses
  %i.bds = extractelement <2 x double> %i.bdr, i64 0
  %i.bdt = extractelement <2 x double> %i.bdr, i64 1
  %i.bdu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bdc, ptr noundef nonnull @.str.73, double noundef %i.bdo, double noundef %i.bds, double noundef %i.bdt) #24 ; 0 uses
  %i.bdv = add nuw nsw i64 %.13411939, 3          ; 2 uses
  %i.bdw = icmp slt i64 %i.bdv, %i.pa
  br i1 %i.bdw, label %bb.dy, label %._crit_edge941, !llvm.loop !94

bb.dz:                                            ; preds = %bb.du
  %i.bdx = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dv
  %i.bdy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #24
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn470 = phi { ptr, i32 } [ %i.bdy, %bb.ea ], [ %i.bdx, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.loopexit.split-lp

._crit_edge941:                                   ; preds = %bb.dy
  %i.bdz = add nuw nsw i64 %.3395942, 1           ; 2 uses
  %exitcond1039.not = icmp eq i64 %i.bdz, %i.pa
  br i1 %exitcond1039.not, label %._crit_edge943.split, label %.preheader855, !llvm.loop !95

._crit_edge943.split:                             ; preds = %._crit_edge941, %_ZNSt10filesystem7__cxx114pathD2Ev.exit587
  %i.bea = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.bdc)
          to label %bb.ec unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ec:                                            ; preds = %._crit_edge943.split, %._crit_edge937
  %i.beb = load ptr, ptr %i.s, align 8, !tbaa !16
  %.not472 = icmp eq ptr %i.beb, null
  br i1 %.not472, label %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bec = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.50, i32 noundef 496, i64 noundef range(i64 -2147483648, 2147483648) %i.pa, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader: ; preds = %bb.ed
  br i1 %i.aqa, label %.lr.ph950, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge

.lr.ph950:                                        ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 1, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 3 uses
  %.4396949 = phi i64 [ %i.bgc, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 0, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 5 uses
  %.0423948 = phi float [ %spec.select847.lcssa, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 0.000000e+00, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 2 uses
  %.0429947 = phi float [ %spec.select.lcssa, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 0.000000e+00, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 2 uses
  %i.bed = mul nuw nsw i64 %.4396949, %i.pa
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.bed ; 11 uses
  %i.bef = getelementptr inbounds nuw [8 x i8], ptr %i.bec, i64 %.4396949
  store ptr %i.bee, ptr %i.bef, align 8, !tbaa !157
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %i.bee, i64 %.4396949
  %i.beh = load float, ptr %i.beg, align 4, !tbaa !146 ; 9 uses
  %xtraiter1706 = and i64 %indvars.iv, 7          ; 3 uses
  %i.bei = icmp samesign ult i64 %.4396949, 7
  br i1 %i.bei, label %.epil.preheader1705, label %.lr.ph950.new

.lr.ph950.new:                                    ; preds = %.lr.ph950
  %unroll_iter1712 = and i64 %indvars.iv, 9223372036854775800
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ee, %.lr.ph950.new
  %.14412946 = phi i64 [ 0, %.lr.ph950.new ], [ %i.bfw, %bb.ee ] ; 9 uses
  %.1424945 = phi float [ %.0423948, %.lr.ph950.new ], [ %spec.select847.7, %bb.ee ] ; 2 uses
  %.1430944 = phi float [ %.0429947, %.lr.ph950.new ], [ %spec.select.7, %bb.ee ] ; 2 uses
  %niter1713 = phi i64 [ 0, %.lr.ph950.new ], [ %niter1713.next.7, %bb.ee ]
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %i.bee, i64 %.14412946
  %i.bek = load float, ptr %i.bej, align 4, !tbaa !146 ; 3 uses
  %i.bel = fcmp olt float %i.bek, %.1430944
  %spec.select = select i1 %i.bel, float %i.bek, float %.1430944 ; 2 uses
  %i.bem = fcmp ogt float %i.beh, %.1424945
  %spec.select847 = select i1 %i.bem, float %i.bek, float %.1424945 ; 2 uses
  %i.ben = getelementptr inbounds nuw [4 x i8], ptr %i.bee, i64 %.14412946
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 4
  %i.bep = load float, ptr %i.beo, align 4, !tbaa !146 ; 3 uses
  %i.beq = fcmp olt float %i.bep, %spec.select
  %spec.select.1 = select i1 %i.beq, float %i.bep, float %spec.select ; 2 uses
  %i.ber = fcmp ogt float %i.beh, %spec.select847
  %spec.select847.1 = select i1 %i.ber, float %i.bep, float %spec.select847 ; 2 uses
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.bee, i64 %.14412946
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 8
  %i.beu = load float, ptr %i.bet, align 4, !tbaa !146 ; 3 uses
  %i.bev = fcmp olt float %i.beu, %spec.select.1
  %spec.select.2 = select i1 %i.bev, float %i.beu, float %spec.select.1 ; 2 uses
  %i.bew = fcmp ogt float %i.beh, %spec.select847.1
  %spec.select847.2 = select i1 %i.bew, float %i.beu, float %spec.select847.1 ; 2 uses
  %i.bex = getelementptr inbounds nuw [4 x i8], ptr %i.bee, i64 %.14412946
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 12
  %i.bez = load float, ptr %i.bey, align 4, !tbaa !146 ; 3 uses
  %i.bfa = fcmp olt float %i.bez, %spec.select.2
  %spec.select.3 = select i1 %i.bfa, float %i.bez, float %spec.select.2 ; 2 uses
  %i.bfb = fcmp ogt float %i.beh, %spec.select847.2
  %spec.select847.3 = select i1 %i.bfb, float %i.bez, float %spec.select847.2 ; 2 uses
  %i.bfc = getelementptr inbounds nuw [4 x i8], ptr %i.bee, i64 %.14412946
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 16
  %i.bfe = load float, ptr %i.bfd, align 4, !tbaa !146 ; 3 uses
  %i.bff = fcmp olt float %i.bfe, %spec.select.3
  %spec.select.4 = select i1 %i.bff, float %i.bfe, float %spec.select.3 ; 2 uses
  %i.bfg = fcmp ogt float %i.beh, %spec.select847.3
  %spec.select847.4 = select i1 %i.bfg, float %i.bfe, float %spec.select847.3 ; 2 uses
  %i.bfh = getelementptr inbounds nuw [4 x i8], ptr %i.bee, i64 %.14412946
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 20
  %i.bfj = load float, ptr %i.bfi, align 4, !tbaa !146 ; 3 uses
  %i.bfk = fcmp olt float %i.bfj, %spec.select.4
  %spec.select.5 = select i1 %i.bfk, float %i.bfj, float %spec.select.4 ; 2 uses
  %i.bfl = fcmp ogt float %i.beh, %spec.select847.4
  %spec.select847.5 = select i1 %i.bfl, float %i.bfj, float %spec.select847.4 ; 2 uses
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %i.bee, i64 %.14412946
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 24
  %i.bfo = load float, ptr %i.bfn, align 4, !tbaa !146 ; 3 uses
  %i.bfp = fcmp olt float %i.bfo, %spec.select.5
  %spec.select.6 = select i1 %i.bfp, float %i.bfo, float %spec.select.5 ; 2 uses
  %i.bfq = fcmp ogt float %i.beh, %spec.select847.5
  %spec.select847.6 = select i1 %i.bfq, float %i.bfo, float %spec.select847.5 ; 2 uses
  %i.bfr = getelementptr inbounds nuw [4 x i8], ptr %i.bee, i64 %.14412946
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 28
  %i.bft = load float, ptr %i.bfs, align 4, !tbaa !146 ; 3 uses
  %i.bfu = fcmp olt float %i.bft, %spec.select.6
  %spec.select.7 = select i1 %i.bfu, float %i.bft, float %spec.select.6 ; 3 uses
  %i.bfv = fcmp ogt float %i.beh, %spec.select847.6
  %spec.select847.7 = select i1 %i.bfv, float %i.bft, float %spec.select847.6 ; 3 uses
  %i.bfw = add nuw nsw i64 %.14412946, 8          ; 2 uses
  %niter1713.next.7 = add i64 %niter1713, 8       ; 2 uses
  %niter1713.ncmp.7 = icmp eq i64 %niter1713.next.7, %unroll_iter1712
  br i1 %niter1713.ncmp.7, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.unr-lcssa, label %bb.ee, !llvm.loop !96

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.unr-lcssa: ; preds = %bb.ee
  %lcmp.mod1708.not = icmp eq i64 %xtraiter1706, 0
  br i1 %lcmp.mod1708.not, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit, label %.epil.preheader1705

end_hunk_0
