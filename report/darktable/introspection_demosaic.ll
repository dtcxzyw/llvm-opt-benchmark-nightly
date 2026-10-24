Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %.not317.i.5.i.i = icmp eq i8 %i.adr, %i.adt
  br i1 %.not317.i.5.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.not319.i.5.i.i = icmp eq i8 %i.adr, 1
  %or.cond345.i.5.i.i = or i1 %i.acs, %.not319.i.5.i.i
  br i1 %or.cond345.i.5.i.i, label %bb.ea, label %.critedge.i.i.i

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %.preheader._crit_edge.i.5.i.i
  %i.adu = phi i8 [ %.pre.i.5.i.i, %.preheader._crit_edge.i.5.i.i ], [ %i.adt, %bb.dz ], [ %i.adr, %bb.dy ] ; 3 uses
  %i.adv = icmp eq i8 %i.adu, 1                   ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.adx = load i8, ptr %i.adw, align 16, !tbaa !133 ; 3 uses
  br i1 %i.adv, label %bb.eb, label %._crit_edge.i167.5.i.i

bb.eb:                                            ; preds = %bb.ea
  %.not317.1.i.5.i.i = icmp eq i8 %i.ado, %i.adx
  br i1 %.not317.1.i.5.i.i, label %._crit_edge.i167.5.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %or.cond345.1.i.5.i.i = or i1 %i.acy, %i.adp
  br i1 %or.cond345.1.i.5.i.i, label %._crit_edge.i167.5.i.i, label %.critedge.i.i.i

._crit_edge.i167.5.i.i:                           ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.ady = phi i8 [ %i.ado, %bb.eb ], [ %i.adx, %bb.ec ], [ %i.adx, %bb.ea ] ; 3 uses
  %i.adz = icmp eq i8 %i.ady, 1                   ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %1, i64 513
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !133 ; 3 uses
  br i1 %i.adz, label %bb.ed, label %._crit_edge372.i.5.i.i

bb.ed:                                            ; preds = %._crit_edge.i167.5.i.i
  %.not317.2.i.5.i.i = icmp eq i8 %i.adu, %i.aeb
  br i1 %.not317.2.i.5.i.i, label %._crit_edge372.i.5.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.not318.2.i.5.i.i = icmp eq i8 %i.ada, 1
  %or.cond345.2.i.5.i.i = or i1 %.not318.2.i.5.i.i, %i.adv
  br i1 %or.cond345.2.i.5.i.i, label %._crit_edge372.i.5.i.i, label %.critedge.i.i.i

._crit_edge372.i.5.i.i:                           ; preds = %bb.ee, %bb.ed, %._crit_edge.i167.5.i.i
  %i.aec = phi i8 [ %i.adu, %bb.ed ], [ %i.aeb, %bb.ee ], [ %i.aeb, %._crit_edge.i167.5.i.i ] ; 3 uses
  %i.aed = icmp eq i8 %i.aec, 1                   ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 514
  %i.aef = load i8, ptr %i.aee, align 2, !tbaa !133 ; 3 uses
  br i1 %i.aed, label %bb.ef, label %._crit_edge375.i.5.i.i

bb.ef:                                            ; preds = %._crit_edge372.i.5.i.i
  %.not317.3.i.5.i.i = icmp eq i8 %i.ady, %i.aef
  br i1 %.not317.3.i.5.i.i, label %._crit_edge375.i.5.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %.not318.3.i.5.i.i = icmp eq i8 %i.ade, 1
  %or.cond345.3.i.5.i.i = or i1 %.not318.3.i.5.i.i, %i.adz
  br i1 %or.cond345.3.i.5.i.i, label %._crit_edge375.i.5.i.i, label %.critedge.i.i.i

._crit_edge375.i.5.i.i:                           ; preds = %bb.eg, %bb.ef, %._crit_edge372.i.5.i.i
  %i.aeg = phi i8 [ %i.ady, %bb.ef ], [ %i.aef, %bb.eg ], [ %i.aef, %._crit_edge372.i.5.i.i ] ; 2 uses
  %i.aeh = icmp eq i8 %i.aeg, 1                   ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %1, i64 515
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !133 ; 3 uses
  br i1 %i.aeh, label %bb.eh, label %._crit_edge378.i.5.i.i

bb.eh:                                            ; preds = %._crit_edge375.i.5.i.i
  %.not317.4.i.5.i.i = icmp eq i8 %i.aec, %i.aej
  br i1 %.not317.4.i.5.i.i, label %._crit_edge378.i.5.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.not318.4.i.5.i.i = icmp eq i8 %i.adi, 1
  %or.cond345.4.i.5.i.i = or i1 %.not318.4.i.5.i.i, %i.aed
  br i1 %or.cond345.4.i.5.i.i, label %._crit_edge378.i.5.i.i, label %.critedge.i.i.i

._crit_edge378.i.5.i.i:                           ; preds = %bb.ei, %bb.eh, %._crit_edge375.i.5.i.i
  %i.aek = phi i8 [ %i.aec, %bb.eh ], [ %i.aej, %bb.ei ], [ %i.aej, %._crit_edge375.i.5.i.i ]
  %i.ael = icmp ne i8 %i.aek, 1
  %.not317.5.i.5.i.i = icmp eq i8 %i.aeg, %i.ado
  %or.cond.i168.5.i.i = or i1 %.not317.5.i.5.i.i, %i.ael
  %.not318.5.i.5.i.i = icmp eq i8 %i.adm, 1
  %or.cond345.5.i.5.i.i = or i1 %.not318.5.i.5.i.i, %i.aeh
  %or.cond341.i.i = select i1 %or.cond.i168.5.i.i, i1 true, i1 %or.cond345.5.i.5.i.i
  %spec.select342.i.i = select i1 %or.cond341.i.i, i32 14, i32 13
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %._crit_edge378.i.5.i.i, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.dz, %._crit_edge378.i.4.i.i, %bb.dx, %bb.dw, %bb.du, %bb.ds, %bb.dp, %._crit_edge378.i.3.i.i, %bb.dn, %bb.dm, %bb.dk, %bb.di, %bb.df, %._crit_edge378.i.2.i.i, %bb.dd, %bb.dc, %bb.da, %bb.cy, %bb.cv, %._crit_edge378.i.1.i.i, %bb.ct, %bb.cs, %bb.cq, %bb.co, %bb.cl, %bb.cj, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.bz
  %indvars.iv365.i.lcssa.i.i = phi i64 [ 14, %bb.ec ], [ 9, %bb.cj ], [ 9, %bb.ci ], [ 9, %bb.cg ], [ 9, %bb.ce ], [ 9, %bb.cc ], [ 9, %bb.bz ], [ 10, %bb.cl ], [ 10, %bb.co ], [ 10, %bb.cq ], [ 10, %bb.cs ], [ 10, %bb.ct ], [ 10, %._crit_edge378.i.1.i.i ], [ 14, %._crit_edge378.i.5.i.i ], [ 11, %bb.cv ], [ 11, %bb.cy ], [ 11, %bb.da ], [ 11, %bb.dc ], [ 11, %bb.dd ], [ 11, %._crit_edge378.i.2.i.i ], [ 14, %bb.ei ], [ 12, %bb.df ], [ 12, %bb.di ], [ 12, %bb.dk ], [ 12, %bb.dm ], [ 12, %bb.dn ], [ 12, %._crit_edge378.i.3.i.i ], [ 14, %bb.eg ], [ 13, %bb.dp ], [ 13, %bb.ds ], [ 13, %bb.du ], [ 13, %bb.dw ], [ 13, %bb.dx ], [ 13, %._crit_edge378.i.4.i.i ], [ 14, %bb.ee ], [ 14, %bb.dz ]
  %.0269353.i.lcssa.i.i = phi i32 [ 14, %bb.ec ], [ 9, %bb.cj ], [ 9, %bb.ci ], [ 9, %bb.cg ], [ 9, %bb.ce ], [ 9, %bb.cc ], [ 9, %bb.bz ], [ 10, %bb.cl ], [ 10, %bb.co ], [ 10, %bb.cq ], [ 10, %bb.cs ], [ 10, %bb.ct ], [ 10, %._crit_edge378.i.1.i.i ], [ 14, %._crit_edge378.i.5.i.i ], [ 11, %bb.cv ], [ 11, %bb.cy ], [ 11, %bb.da ], [ 11, %bb.dc ], [ 11, %bb.dd ], [ 11, %._crit_edge378.i.2.i.i ], [ 14, %bb.ei ], [ 12, %bb.df ], [ 12, %bb.di ], [ 12, %bb.dk ], [ 12, %bb.dm ], [ 12, %bb.dn ], [ 12, %._crit_edge378.i.3.i.i ], [ 14, %bb.eg ], [ 13, %bb.dp ], [ 13, %bb.ds ], [ 13, %bb.du ], [ 13, %bb.dw ], [ 13, %bb.dx ], [ 13, %._crit_edge378.i.4.i.i ], [ 14, %bb.ee ], [ 14, %bb.dz ]
  %.1271.lcssa412.i.i.i = phi i32 [ 9, %bb.ec ], [ 13, %bb.cj ], [ 12, %bb.ci ], [ 11, %bb.cg ], [ 10, %bb.ce ], [ 9, %bb.cc ], [ 8, %bb.bz ], [ 8, %bb.cl ], [ 9, %bb.co ], [ 10, %bb.cq ], [ 11, %bb.cs ], [ 12, %bb.ct ], [ 13, %._crit_edge378.i.1.i.i ], [ %spec.select342.i.i, %._crit_edge378.i.5.i.i ], [ 8, %bb.cv ], [ 9, %bb.cy ], [ 10, %bb.da ], [ 11, %bb.dc ], [ 12, %bb.dd ], [ 13, %._crit_edge378.i.2.i.i ], [ 12, %bb.ei ], [ 8, %bb.df ], [ 9, %bb.di ], [ 10, %bb.dk ], [ 11, %bb.dm ], [ 12, %bb.dn ], [ 13, %._crit_edge378.i.3.i.i ], [ 11, %bb.eg ], [ 8, %bb.dp ], [ 9, %bb.ds ], [ 10, %bb.du ], [ 11, %bb.dw ], [ 12, %bb.dx ], [ 13, %._crit_edge378.i.4.i.i ], [ 10, %bb.ee ], [ 8, %bb.dz ] ; 2 uses
  %i.aem = add nsw i32 %i.if, -4                  ; 2 uses
  %i.aen = icmp slt i32 %.0269353.i.lcssa.i.i, %i.aem
  br i1 %i.aen, label %.lr.ph359.i.i.i, label %_calcRadiusXtrans.exit.i.i

.lr.ph359.i.i.i:                                  ; preds = %.critedge.i.i.i
  %i.aeo = add nsw i32 %i.hz, -4                  ; 2 uses
  %i.aep = icmp slt i32 %.1271.lcssa412.i.i.i, %i.aeo
  %i.aeq = shl nsw i32 %i.hz, 1
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = xor i32 %i.hz, -1
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = sub i32 1, %i.hz
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = mul nsw i32 %i.hz, 3
  %i.aex = sext i32 %i.aew to i64                 ; 2 uses
  %i.aey = shl nsw i32 %i.hz, 2
  %i.aez = sext i32 %i.aey to i64                 ; 2 uses
  br i1 %i.aep, label %.lr.ph.us.preheader.i.i.i, label %_calcRadiusXtrans.exit.i.i

.lr.ph.us.preheader.i.i.i:                        ; preds = %.lr.ph359.i.i.i
  %i.afa = zext nneg i32 %.1271.lcssa412.i.i.i to i64
  %i.afb = zext nneg i32 %i.aeo to i64
  %i.afc = zext nneg i32 %i.aem to i64
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %._crit_edge.us.i172.i.i, %.lr.ph.us.preheader.i.i.i
  %indvars.iv367.i.i.i = phi i64 [ %indvars.iv365.i.lcssa.i.i, %.lr.ph.us.preheader.i.i.i ], [ %indvars.iv.next368.i.i.i, %._crit_edge.us.i172.i.i ] ; 2 uses
  %.0266357.us.i.i.i = phi float [ 1.000000e+00, %.lr.ph.us.preheader.i.i.i ], [ %.23.us.i.i.i, %._crit_edge.us.i172.i.i ]
  %i.afd = mul nsw i64 %indvars.iv367.i.i.i, %i.ik
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.afd
  br label %.thread338.us.i.i.i

.thread338.us.i.i.i:                              ; preds = %bb.ff, %.lr.ph.us.i.i.i
  %indvars.iv.i169.i.i = phi i64 [ %i.afa, %.lr.ph.us.i.i.i ], [ %indvars.iv.next.i171.i.i, %bb.ff ] ; 2 uses
  %.1355.us.i.i.i = phi float [ %.0266357.us.i.i.i, %.lr.ph.us.i.i.i ], [ %.23.us.i.i.i, %bb.ff ] ; 7 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %indvars.iv.i169.i.i ; 9 uses
  %i.afg = getelementptr [4 x i8], ptr %i.aff, i64 %i.ik ; 4 uses
  %i.afh = getelementptr i8, ptr %i.afg, i64 4
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !12 ; 12 uses
  %i.afj = getelementptr i8, ptr %i.afg, i64 8
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !12 ; 7 uses
  %i.afl = fcmp reassoc nsz arcp contract afn ogt float %i.afi, %i.afk
  %..us.i170.i.i = select reassoc nsz arcp contract afn i1 %i.afl, float %i.afi, float %i.afk ; 2 uses
  %i.afm = getelementptr [4 x i8], ptr %i.aff, i64 %i.aer ; 3 uses
  %i.afn = getelementptr i8, ptr %i.afm, i64 4
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !12 ; 11 uses
  %i.afp = fcmp reassoc nsz arcp contract afn ogt float %..us.i170.i.i, %i.afo
  %i.afq = getelementptr i8, ptr %i.afm, i64 8
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !12 ; 11 uses
  %..us..i.i.i = select i1 %i.afp, float %..us.i170.i.i, float %i.afo ; 2 uses
  %i.afs = fcmp reassoc nsz arcp contract afn ogt float %..us..i.i.i, %i.afr
  %spec.select346.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.afs, float %..us..i.i.i, float %i.afr
  %i.aft = fcmp reassoc nsz arcp contract afn oge float %spec.select346.us.i.i.i, f0x3F666666 ; 2 uses
  %i.afu = load float, ptr %i.aff, align 4, !tbaa !12 ; 10 uses
  %i.afv = fcmp reassoc nsz arcp contract afn ogt float %i.afu, 5.000000e-03
  br i1 %i.afv, label %bb.ej, label %bb.eq

bb.ej:                                            ; preds = %.thread338.us.i.i.i
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.aff, i64 %i.aet
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !12 ; 2 uses
  %i.afy = getelementptr inbounds [4 x i8], ptr %i.aff, i64 %i.aev
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !12 ; 2 uses
  %i.aga = fcmp reassoc nsz arcp contract afn ogt float %i.afx, %i.afz
  %.324.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.aga, float %i.afx, float %i.afz
  %i.agb = fcmp reassoc nsz arcp contract afn olt float %.324.us.i.i.i, f0x3F666666
  %i.agc = fcmp reassoc nsz arcp contract afn olt float %i.afu, f0x3F666666
  %or.cond5.us.i.i.i = and i1 %i.agc, %i.agb
  br i1 %or.cond5.us.i.i.i, label %bb.ek, label %bb.eq

bb.ek:                                            ; preds = %bb.ej
  %i.agd = getelementptr i8, ptr %i.afg, i64 -4
  %i.age = load float, ptr %i.agd, align 4, !tbaa !12 ; 9 uses
  %i.agf = fcmp reassoc nsz arcp contract afn ogt float %i.age, 5.000000e-03
  br i1 %i.agf, label %.thread340.us.i.i.i, label %bb.en

.thread340.us.i.i.i:                              ; preds = %bb.ek
  %i.agg = getelementptr i8, ptr %i.afg, i64 -8
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !12 ; 2 uses
  %i.agi = fcmp reassoc nsz arcp contract afn ogt float %i.agh, %i.age
  %.325.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.agi, float %i.agh, float %i.age ; 2 uses
  %i.agj = getelementptr i8, ptr %i.afm, i64 -8
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !12 ; 3 uses
  %i.agl = fcmp reassoc nsz arcp contract afn ogt float %.325.us.i.i.i, %i.agk
  %i.agm = fcmp reassoc nsz arcp contract afn ogt float %i.agk, %i.age
  %spec.select349.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.agm, float %i.agk, float %i.age
  %i.agn = select reassoc nsz arcp contract afn i1 %i.agl, float %.325.us.i.i.i, float %spec.select349.us.i.i.i
  %i.ago = fcmp reassoc nsz arcp contract afn olt float %i.agn, f0x3F666666
  br i1 %i.ago, label %bb.el, label %bb.en

bb.el:                                            ; preds = %.thread340.us.i.i.i
  %i.agp = fcmp reassoc nsz arcp contract afn ogt float %i.afu, %i.age
  %i.agq = select reassoc nsz arcp contract afn i1 %i.agp, float %i.afu, float %i.age ; 3 uses
  %i.agr = fcmp reassoc nsz arcp contract afn ogt float %i.agq, f0x3C23D70A
  br i1 %i.agr, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.ags = fcmp reassoc nsz arcp contract afn olt float %i.afu, %i.age
  %i.agt = select reassoc nsz arcp contract afn i1 %i.ags, float %i.afu, float %i.age ; 2 uses
  %i.agu = fmul reassoc nsz arcp contract afn float %i.agt, %.1355.us.i.i.i
  %i.agv = fcmp reassoc nsz arcp contract afn ogt float %i.agq, %i.agu
  %i.agw = fdiv reassoc nsz arcp contract afn float %i.agq, %i.agt
  %spec.select.us.i175.i.i = select nsz i1 %i.agv, float %i.agw, float %.1355.us.i.i.i
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %.thread340.us.i.i.i, %bb.ek
  %.4.us.i173.i.i = phi nsz float [ %.1355.us.i.i.i, %bb.ek ], [ %.1355.us.i.i.i, %.thread340.us.i.i.i ], [ %spec.select.us.i175.i.i, %bb.em ], [ %.1355.us.i.i.i, %bb.el ] ; 4 uses
  %i.agx = fcmp reassoc nsz arcp contract afn ule float %i.afi, 5.000000e-03
  %or.cond.us.i174.i.i = or i1 %i.agx, %i.aft
  br i1 %or.cond.us.i174.i.i, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.agy = fcmp reassoc nsz arcp contract afn ogt float %i.afu, %i.afi
  %i.agz = select reassoc nsz arcp contract afn i1 %i.agy, float %i.afu, float %i.afi ; 3 uses
  %i.aha = fcmp reassoc nsz arcp contract afn ogt float %i.agz, f0x3C23D70A
  br i1 %i.aha, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.ahb = fcmp reassoc nsz arcp contract afn olt float %i.afu, %i.afi
  %i.ahc = select reassoc nsz arcp contract afn i1 %i.ahb, float %i.afu, float %i.afi ; 2 uses
  %i.ahd = fmul reassoc nsz arcp contract afn float %.4.us.i173.i.i, %i.ahc
  %i.ahe = fcmp reassoc nsz arcp contract afn ogt float %i.agz, %i.ahd
  %i.ahf = fdiv reassoc nsz arcp contract afn float %i.agz, %i.ahc
  %spec.select329.us.i.i.i = select nsz i1 %i.ahe, float %i.ahf, float %.4.us.i173.i.i
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en, %bb.ej, %.thread338.us.i.i.i
  %.8.us.i.i.i = phi nsz float [ %.1355.us.i.i.i, %.thread338.us.i.i.i ], [ %.1355.us.i.i.i, %bb.ej ], [ %.4.us.i173.i.i, %bb.en ], [ %spec.select329.us.i.i.i, %bb.ep ], [ %.4.us.i173.i.i, %bb.eo ] ; 6 uses
  br i1 %i.aft, label %bb.ff, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ahg = fcmp reassoc nsz arcp contract afn ogt float %i.afr, 5.000000e-03
  br i1 %i.ahg, label %bb.es, label %bb.ey

bb.es:                                            ; preds = %bb.er
  %i.ahh = fcmp reassoc nsz arcp contract afn ogt float %i.afi, 5.000000e-03
  br i1 %i.ahh, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.ahi = fcmp reassoc nsz arcp contract afn ogt float %i.afi, %i.afr
  %i.ahj = select reassoc nsz arcp contract afn i1 %i.ahi, float %i.afi, float %i.afr ; 3 uses
  %i.ahk = fcmp reassoc nsz arcp contract afn ogt float %i.ahj, f0x3C23D70A
  br i1 %i.ahk, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ahl = fcmp reassoc nsz arcp contract afn olt float %i.afi, %i.afr
  %i.ahm = select reassoc nsz arcp contract afn i1 %i.ahl, float %i.afi, float %i.afr ; 2 uses
  %i.ahn = fmul reassoc nsz arcp contract afn float %.8.us.i.i.i, %i.ahm
  %i.aho = fcmp reassoc nsz arcp contract afn ogt float %i.ahj, %i.ahn
  %i.ahp = fdiv reassoc nsz arcp contract afn float %i.ahj, %i.ahm
  %spec.select330.us.i.i.i = select nsz i1 %i.aho, float %i.ahp, float %.8.us.i.i.i
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es
  %.11.us.i.i.i = phi nsz float [ %.8.us.i.i.i, %bb.es ], [ %spec.select330.us.i.i.i, %bb.eu ], [ %.8.us.i.i.i, %bb.et ] ; 4 uses
  %i.ahq = getelementptr [4 x i8], ptr %i.aff, i64 %i.aex
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 12
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !12 ; 7 uses
  %i.aht = getelementptr [4 x i8], ptr %i.aff, i64 %i.aez ; 2 uses
  %i.ahu = getelementptr i8, ptr %i.aht, i64 8
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !12 ; 2 uses
  %i.ahw = fcmp reassoc nsz arcp contract afn ogt float %i.ahs, %i.ahv
  %.331.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ahw, float %i.ahs, float %i.ahv ; 2 uses
  %i.ahx = getelementptr i8, ptr %i.aht, i64 16
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !12 ; 2 uses
  %i.ahz = fcmp reassoc nsz arcp contract afn ogt float %.331.us.i.i.i, %i.ahy
  %spec.select350.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ahz, float %.331.us.i.i.i, float %i.ahy
  %i.aia = fcmp reassoc nsz arcp contract afn olt float %spec.select350.us.i.i.i, f0x3F666666
  %i.aib = fcmp reassoc nsz arcp contract afn ogt float %i.ahs, 5.000000e-03
  %or.cond7.us.i.i.i = and i1 %i.aib, %i.aia
  br i1 %or.cond7.us.i.i.i, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.aic = fcmp reassoc nsz arcp contract afn ogt float %i.ahs, %i.afr
  %i.aid = select reassoc nsz arcp contract afn i1 %i.aic, float %i.ahs, float %i.afr ; 3 uses
  %i.aie = fcmp reassoc nsz arcp contract afn ogt float %i.aid, f0x3C23D70A
  br i1 %i.aie, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.aif = fcmp reassoc nsz arcp contract afn olt float %i.ahs, %i.afr
  %i.aig = select reassoc nsz arcp contract afn i1 %i.aif, float %i.ahs, float %i.afr ; 2 uses
  %i.aih = fmul reassoc nsz arcp contract afn float %i.aig, %.11.us.i.i.i
  %i.aii = fcmp reassoc nsz arcp contract afn ogt float %i.aid, %i.aih
  %i.aij = fdiv reassoc nsz arcp contract afn float %i.aid, %i.aig
  %spec.select333.us.i.i.i = select nsz i1 %i.aii, float %i.aij, float %.11.us.i.i.i
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.er
  %.15.us.i.i.i = phi nsz float [ %.8.us.i.i.i, %bb.er ], [ %.11.us.i.i.i, %bb.ev ], [ %spec.select333.us.i.i.i, %bb.ex ], [ %.11.us.i.i.i, %bb.ew ] ; 5 uses
  %i.aik = fcmp reassoc nsz arcp contract afn ogt float %i.afo, 5.000000e-03
  br i1 %i.aik, label %bb.ez, label %bb.ff

bb.ez:                                            ; preds = %bb.ey
  %i.ail = fcmp reassoc nsz arcp contract afn ogt float %i.afk, 5.000000e-03
  br i1 %i.ail, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.aim = fcmp reassoc nsz arcp contract afn ogt float %i.afk, %i.afo
  %i.ain = select reassoc nsz arcp contract afn i1 %i.aim, float %i.afk, float %i.afo ; 3 uses
  %i.aio = fcmp reassoc nsz arcp contract afn ogt float %i.ain, f0x3C23D70A
  br i1 %i.aio, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.aip = fcmp reassoc nsz arcp contract afn olt float %i.afk, %i.afo
  %i.aiq = select reassoc nsz arcp contract afn i1 %i.aip, float %i.afk, float %i.afo ; 2 uses
  %i.air = fmul reassoc nsz arcp contract afn float %.15.us.i.i.i, %i.aiq
  %i.ais = fcmp reassoc nsz arcp contract afn ogt float %i.ain, %i.air
  %i.ait = fdiv reassoc nsz arcp contract afn float %i.ain, %i.aiq
  %spec.select334.us.i.i.i = select nsz i1 %i.ais, float %i.ait, float %.15.us.i.i.i
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %.18.us.i.i.i = phi nsz float [ %.15.us.i.i.i, %bb.ez ], [ %spec.select334.us.i.i.i, %bb.fb ], [ %.15.us.i.i.i, %bb.fa ] ; 4 uses
  %i.aiu = getelementptr inbounds [4 x i8], ptr %i.aff, i64 %i.aex
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !12 ; 7 uses
  %i.aiw = getelementptr [4 x i8], ptr %i.aff, i64 %i.aez ; 2 uses
  %i.aix = getelementptr i8, ptr %i.aiw, i64 -4
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !12 ; 2 uses
  %i.aiz = fcmp reassoc nsz arcp contract afn ogt float %i.aiv, %i.aiy
  %.335.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.aiz, float %i.aiv, float %i.aiy ; 2 uses
  %i.aja = getelementptr i8, ptr %i.aiw, i64 4
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !12 ; 2 uses
  %i.ajc = fcmp reassoc nsz arcp contract afn ogt float %.335.us.i.i.i, %i.ajb
  %spec.select351.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ajc, float %.335.us.i.i.i, float %i.ajb
  %i.ajd = fcmp reassoc nsz arcp contract afn olt float %spec.select351.us.i.i.i, f0x3F666666
  %i.aje = fcmp reassoc nsz arcp contract afn ogt float %i.aiv, 5.000000e-03
  %or.cond9.us.i.i.i = and i1 %i.aje, %i.ajd
  br i1 %or.cond9.us.i.i.i, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.ajf = fcmp reassoc nsz arcp contract afn ogt float %i.aiv, %i.afo
  %i.ajg = select reassoc nsz arcp contract afn i1 %i.ajf, float %i.aiv, float %i.afo ; 3 uses
  %i.ajh = fcmp reassoc nsz arcp contract afn ogt float %i.ajg, f0x3C23D70A
  br i1 %i.ajh, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aji = fcmp reassoc nsz arcp contract afn olt float %i.aiv, %i.afo
  %i.ajj = select reassoc nsz arcp contract afn i1 %i.aji, float %i.aiv, float %i.afo ; 2 uses
  %i.ajk = fmul reassoc nsz arcp contract afn float %i.ajj, %.18.us.i.i.i
  %i.ajl = fcmp reassoc nsz arcp contract afn ogt float %i.ajg, %i.ajk
  %i.ajm = fdiv reassoc nsz arcp contract afn float %i.ajg, %i.ajj
  %spec.select337.us.i.i.i = select nsz i1 %i.ajl, float %i.ajm, float %.18.us.i.i.i
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.ey, %bb.eq
  %.23.us.i.i.i = phi nsz float [ %.8.us.i.i.i, %bb.eq ], [ %.15.us.i.i.i, %bb.ey ], [ %.18.us.i.i.i, %bb.fc ], [ %spec.select337.us.i.i.i, %bb.fe ], [ %.18.us.i.i.i, %bb.fd ] ; 3 uses
  %indvars.iv.next.i171.i.i = add nuw nsw i64 %indvars.iv.i169.i.i, 3 ; 2 uses
  %i.ajn = icmp samesign ult i64 %indvars.iv.next.i171.i.i, %i.afb
  br i1 %i.ajn, label %.thread338.us.i.i.i, label %._crit_edge.us.i172.i.i

._crit_edge.us.i172.i.i:                          ; preds = %bb.ff
  %indvars.iv.next368.i.i.i = add nuw nsw i64 %indvars.iv367.i.i.i, 3 ; 2 uses
  %i.ajo = icmp samesign ult i64 %indvars.iv.next368.i.i.i, %i.afc
  br i1 %i.ajo, label %.lr.ph.us.i.i.i, label %._crit_edge360.loopexit.i.i.i

._crit_edge360.loopexit.i.i.i:                    ; preds = %._crit_edge.us.i172.i.i
  %i.ajp = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.23.us.i.i.i)
  br label %_calcRadiusXtrans.exit.i.i

_calcRadiusXtrans.exit.i.i:                       ; preds = %._crit_edge360.loopexit.i.i.i, %.lr.ph359.i.i.i, %.critedge.i.i.i
  %.0266.lcssa.i.i.i = phi float [ 0.000000e+00, %.critedge.i.i.i ], [ %i.ajp, %._crit_edge360.loopexit.i.i.i ], [ 0.000000e+00, %.lr.ph359.i.i.i ]
  %i.ajq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0266.lcssa.i.i.i
  %i.ajr = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ajq)
  %i.ajs = fadd reassoc nsz arcp contract afn float %i.ajr, 2.000000e-01
  br label %bb.fg

bb.fg:                                            ; preds = %_calcRadiusXtrans.exit.i.i, %_calcRadiusBayer.exit.i.i, %_calcRadiusMono.exit.i.i
  %i.ajt = phi reassoc nsz arcp contract afn float [ %i.vb, %_calcRadiusMono.exit.i.i ], [ %i.yo, %_calcRadiusBayer.exit.i.i ], [ %i.ajs, %_calcRadiusXtrans.exit.i.i ] ; 2 uses
  tail call void @free(ptr noundef %i.io) #27
  %i.aju = fcmp reassoc nsz arcp contract afn ogt float %i.ajt, 1.500000e+00
  %i.ajv = select reassoc nsz arcp contract afn i1 %i.aju, float 1.500000e+00, float %i.ajt
  br label %_calc_auto_radius.exit.i

_calc_auto_radius.exit.i:                         ; preds = %bb.fg, %bb.as, %bb.ar, %bb.aq
  %.not35.i = phi ptr [ @.str.196, %bb.aq ], [ @.str.196, %bb.ar ], [ @.str.196, %bb.as ], [ @.str.11, %bb.fg ]
  %.not37.i = phi i1 [ true, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ false, %bb.fg ]
  %.1.i.i = phi nsz float [ 5.000000e-01, %bb.aq ], [ 5.000000e-01, %bb.ar ], [ 5.000000e-01, %bb.as ], [ %i.ajv, %bb.fg ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #27
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.gj, i64 24 ; 2 uses
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !137
  %i.ajy = fsub reassoc nsz arcp contract afn float %i.ajx, %.1.i.i
  %i.ajz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ajy)
  %i.aka = fcmp reassoc nsz arcp contract afn uge float %i.ajz, 4.000000e-02 ; 2 uses
  %i.akb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.akc = and i32 %i.akb, 33554432
  %.not.i465 = icmp eq i32 %i.akc, 0
  br i1 %.not.i465, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %_calc_auto_radius.exit.i
  %i.akd = select i1 %i.bh, ptr @.str.192, ptr @.str.191
  %i.ake = select i1 %i.bd, ptr @.str.190, ptr %i.akd
  %i.akf = select i1 %i.aka, ptr @.str.195, ptr @.str.194
  %i.akg = fpext reassoc nsz arcp contract afn float %.1.i.i to double
  %i.akh = extractelement <2 x i32> %i.hy, i64 1
  %i.aki = extractelement <2 x i32> %i.ia, i64 0
  %i.akj = extractelement <2 x i32> %i.ia, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull %i.ake, ptr noundef %.val446, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull %i.akf, double noundef %i.akg, ptr noundef nonnull %.not35.i, i32 noundef %i.aki, i32 noundef %i.akj, i32 noundef %i.hz, i32 noundef %i.akh) #27
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_calc_auto_radius.exit.i
  %or.cond.i466 = and i1 %i.ga, %i.gb
  br i1 %or.cond.i466, label %bb.fj, label %_capture_radius.exit

bb.fj:                                            ; preds = %bb.fi
  %i.akk = getelementptr inbounds nuw i8, ptr %.val445, i64 188
  store i32 1, ptr %i.akk, align 4, !tbaa !132
  br i1 %i.aka, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.akl = getelementptr inbounds nuw i8, ptr %.val445, i64 196
  %i.akm = load float, ptr %i.akl, align 4, !tbaa !131
  %i.akn = fcmp reassoc nsz arcp contract afn olt float %i.akm, 0.000000e+00
  br i1 %i.akn, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  store float %.1.i.i, ptr %i.ajw, align 4, !tbaa !137
  %i.ako = getelementptr inbounds nuw i8, ptr %.val445, i64 196
  store float %.1.i.i, ptr %i.ako, align 4, !tbaa !131
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  br i1 %.not37.i, label %bb.fn, label %_capture_radius.exit

bb.fn:                                            ; preds = %bb.fm
  %i.akp = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.197, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.akp) #27
  br label %_capture_radius.exit

_capture_radius.exit:                             ; preds = %bb.fi, %bb.fm, %bb.fn
  store float %.1.i.i, ptr %i.fy, align 4, !tbaa !463
  br label %_radius_requested.exit.thread698

_radius_requested.exit.thread698:                 ; preds = %bb.ao, %_radius_requested.exit, %_capture_radius.exit, %bb.ae
  %.val450 = load i32, ptr %i.bn, align 4, !tbaa !457 ; 2 uses
  %.val451 = load i32, ptr %i.bp, align 4, !tbaa !458 ; 3 uses
  %i.akq = tail call i64 (...) @dt_get_available_mem() #27 ; 2 uses
  %i.akr = sext i32 %.val450 to i64
  %i.aks = shl nsw i64 %i.akr, 2
  %i.akt = sext i32 %.val451 to i64
  %i.aku = mul i64 %i.aks, %i.akt                 ; 4 uses
  %i.akv = load i32, ptr %i.da, align 4, !tbaa !457
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !458
  %i.akz = sext i32 %i.aky to i64
  %.neg8.i = mul i64 %i.aku, -4
  %.neg9.i = select i1 %i.dn, i64 0, i64 %.neg8.i
  %i.ala = select i1 %i.dy, i64 %i.aku, i64 0
  %i.alb = mul nsw i64 %i.akw, -16
  %.neg4.i = mul i64 %i.alb, %i.akz
  %i.alc = add i64 %i.aku, %i.ala
  %.neg6.i = sub i64 %i.akq, %i.alc
  %.neg7.i = add i64 %.neg6.i, %.neg9.i
  %.168.i = add i64 %.neg7.i, %.neg4.i            ; 3 uses
  %.neg.i = mul i64 %i.aku, -5
  %i.ald = select i1 %spec.select432.not, i64 0, i64 %.neg.i
  %.066.i = add i64 %.168.i, %i.ald               ; 2 uses
  switch i32 %.0394, label %bb.ft [
    i32 1026, label %bb.fu
    i32 1025, label %bb.fo
    i32 1028, label %bb.fo
    i32 5, label %bb.fp
    i32 6, label %bb.fp
    i32 1029, label %bb.fs
    i32 1, label %bb.fq
    i32 2, label %bb.fr
    i32 1024, label %bb.fr
    i32 7, label %bb.fs
    i32 3, label %bb.fs
    i32 4, label %bb.fs
    i32 1027, label %bb.fs
  ]

bb.fo:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.fp:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.fq:                                            ; preds = %_radius_requested.exit.thread698
  br label %bb.fu

bb.fr:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.fs:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698, %_radius_requested.exit.thread698, %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.ft:                                            ; preds = %_radius_requested.exit.thread698
end_hunk_0
