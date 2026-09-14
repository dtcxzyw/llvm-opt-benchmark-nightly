Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tiff?download=true
inline.NumInlined: 40
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6LibRaw14parse_tiff_ifdEx:bb.a
  store i32 %i.cjz, ptr %i.cka, align 4, !tbaa !74
  %indvars.iv.next1657 = add nuw nsw i64 %indvars.iv1656, 1 ; 2 uses
  %i.ckb = load i32, ptr %i.du, align 8, !tbaa !74
  %i.ckc = load i32, ptr %i.dt, align 4, !tbaa !74
  %i.ckd = mul i32 %i.ckc, %i.ckb
  %i.cke = sext i32 %i.ckd to i64
  %i.ckf = icmp slt i64 %indvars.iv.next1657, %i.cke
  br i1 %i.ckf, label %bb.no, label %._crit_edge1341, !llvm.loop !167

._crit_edge1341:                                  ; preds = %bb.no, %bb.nn
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cgo, i64 33328
  store float 0.000000e+00, ptr %i.ckg, align 8, !tbaa !266
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.cgo, i64 16908
  %i.cki = getelementptr inbounds nuw i8, ptr %i.cgo, i64 492
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cki, i8 0, i64 16, i1 false), !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ckh, i8 0, i64 20, i1 false)
  br label %.thread1155

bb.np:                                            ; preds = %bb.es, %bb.es
  %i.ckj = load i32, ptr %i.c, align 4, !tbaa !74 ; 2 uses
  %i.ckk = icmp sgt i32 %i.ckj, 0
  br i1 %i.ckk, label %.lr.ph1330, label %._crit_edge1331

.lr.ph1330:                                       ; preds = %bb.np, %.lr.ph1330
  %.191328 = phi i32 [ %i.cko, %.lr.ph1330 ], [ 0, %bb.np ] ; 2 uses
  %.19121327 = phi double [ %i.ckn, %.lr.ph1330 ], [ 0.000000e+00, %bb.np ]
  %i.ckl = load i32, ptr %i.b, align 4, !tbaa !74
  %i.ckm = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ckl)
  %i.ckn = fadd double %.19121327, %i.ckm         ; 2 uses
  %i.cko = add nuw nsw i32 %.191328, 1            ; 2 uses
  %i.ckp = load i32, ptr %i.c, align 4, !tbaa !74 ; 2 uses
  %i.ckq = icmp slt i32 %i.cko, %i.ckp
  %i.ckr = icmp samesign ult i32 %.191328, 65535
  %i.cks = select i1 %i.ckq, i1 %i.ckr, i1 false
  br i1 %i.cks, label %.lr.ph1330, label %._crit_edge1331, !llvm.loop !168

._crit_edge1331:                                  ; preds = %.lr.ph1330, %bb.np
  %.1912.lcssa = phi double [ 0.000000e+00, %bb.np ], [ %i.ckn, %.lr.ph1330 ]
  %.lcssa1238 = phi i32 [ %i.ckj, %bb.np ], [ %i.ckp, %.lr.ph1330 ] ; 2 uses
  %.not1051 = icmp eq i32 %.lcssa1238, 0
  br i1 %.not1051, label %.thread1155, label %bb.nq

bb.nq:                                            ; preds = %._crit_edge1331
  %i.ckt = uitofp i32 %.lcssa1238 to double
  %i.cku = fdiv double %.1912.lcssa, %i.ckt       ; 2 uses
  %i.ckv = fadd double %i.cku, 5.000000e-01
  %i.ckw = fptoui double %i.ckv to i32            ; 2 uses
  %i.ckx = load i32, ptr %i.dj, align 8, !tbaa !217
  %i.cky = add i32 %i.ckx, %i.ckw
  store i32 %i.cky, ptr %i.dj, align 8, !tbaa !217
  %i.ckz = fptrunc double %i.cku to float
  %i.cla = sext i32 %.08611430 to i64
  %i.clb = getelementptr [33472 x i8], ptr %0, i64 %i.cla ; 3 uses
  %i.clc = getelementptr i8, ptr %i.clb, i64 434000 ; 2 uses
  %i.cld = getelementptr i8, ptr %i.clb, i64 466840 ; 2 uses
  %i.cle = load float, ptr %i.cld, align 8, !tbaa !266
  %i.clf = fadd float %i.cle, %i.ckz
  store float %i.clf, ptr %i.cld, align 8, !tbaa !266
  %i.clg = getelementptr i8, ptr %i.clb, i64 450420 ; 2 uses
  %i.clh = load i32, ptr %i.clg, align 4, !tbaa !267
  %i.cli = add i32 %i.clh, %i.ckw
  store i32 %i.cli, ptr %i.clg, align 4, !tbaa !267
  %i.clj = load i32, ptr %i.clc, align 8, !tbaa !255
  %i.clk = or i32 %i.clj, 32
  store i32 %i.clk, ptr %i.clc, align 8, !tbaa !255
  br label %.thread1155

bb.nr:                                            ; preds = %bb.es
  %i.cll = sext i32 %.08611430 to i64
  %i.clm = getelementptr inbounds [33472 x i8], ptr %i.au, i64 %i.cll ; 3 uses
  %i.cln = getelementptr inbounds nuw i8, ptr %i.clm, i64 488 ; 2 uses
  %i.clo = load i32, ptr %i.cln, align 8, !tbaa !255
  %i.clp = or i32 %i.clo, 64
  store i32 %i.clp, ptr %i.cln, align 8, !tbaa !255
  %i.clq = load i32, ptr %i.b, align 4, !tbaa !74
  %i.clr = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.clq) ; 2 uses
  store i32 %i.clr, ptr %i.ds, align 8, !tbaa !111
  %i.cls = getelementptr inbounds nuw i8, ptr %i.clm, i64 33332 ; 2 uses
  store i32 %i.clr, ptr %i.cls, align 4, !tbaa !74
  %i.clt = getelementptr inbounds nuw i8, ptr %i.clm, i64 24
  %i.clu = load i32, ptr %i.clt, align 8, !tbaa !90
  %i.clv = icmp sgt i32 %i.clu, 1
  %i.clw = load i32, ptr %i.c, align 4
  %i.clx = icmp sgt i32 %i.clw, 1
  %or.cond1478 = select i1 %i.clv, i1 %i.clx, i1 false
  br i1 %or.cond1478, label %.lr.ph1326, label %.thread1155

.lr.ph1326:                                       ; preds = %bb.nr, %.lr.ph1326
  %indvars.iv1647 = phi i64 [ %indvars.iv.next1648, %.lr.ph1326 ], [ 1, %bb.nr ] ; 3 uses
  %i.cly = load i32, ptr %i.b, align 4, !tbaa !74
  %i.clz = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cly)
  %i.cma = getelementptr inbounds nuw [4 x i8], ptr %i.cls, i64 %indvars.iv1647
  store i32 %i.clz, ptr %i.cma, align 4, !tbaa !74
  %indvars.iv.next1648 = add nuw nsw i64 %indvars.iv1647, 1 ; 2 uses
  %i.cmb = icmp samesign ult i64 %indvars.iv1647, 3
  %i.cmc = load i32, ptr %i.c, align 4
  %i.cmd = sext i32 %i.cmc to i64
  %i.cme = icmp slt i64 %indvars.iv.next1648, %i.cmd
  %i.cmf = select i1 %i.cmb, i1 %i.cme, i1 false
  br i1 %i.cmf, label %.lr.ph1326, label %.thread1155, !llvm.loop !169

bb.ns:                                            ; preds = %bb.es
  %i.cmg = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cmh = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cmg) ; 2 uses
  %i.cmi = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cmj = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cmi) ; 2 uses
  %i.cmk = fcmp ogt double %i.cmh, f0x3EE4F8B590000000
  %i.cml = fcmp ogt double %i.cmj, f0x3EE4F8B590000000
  %or.cond70 = and i1 %i.cmk, %i.cml
  br i1 %or.cond70, label %bb.nt, label %.thread1155

bb.nt:                                            ; preds = %bb.ns
  %i.cmm = fptrunc double %i.cmj to float
  %i.cmn = fptrunc double %i.cmh to float
  %i.cmo = fdiv float %i.cmn, %i.cmm
  %i.cmp = fpext float %i.cmo to double           ; 3 uses
  %i.cmq = fcmp ogt double %i.cmp, f0x3FEFD70A3D70A3D7
  %i.cmr = fcmp olt double %i.cmp, 1.005000e+00
  %or.cond1133 = and i1 %i.cmq, %i.cmr
  %spec.store.select1136 = select i1 %or.cond1133, double 1.000000e+00, double %i.cmp
  store double %spec.store.select1136, ptr %i.dr, align 8
  br label %.thread1155

bb.nu:                                            ; preds = %bb.es
  %i.cms = load i32, ptr %i.c, align 4, !tbaa !74
  %i.cmt = icmp eq i32 %i.cms, 2
  br i1 %i.cmt, label %bb.nv, label %.thread1155

bb.nv:                                            ; preds = %bb.nu
  %i.cmu = sext i32 %.08611430 to i64
  %i.cmv = getelementptr [33472 x i8], ptr %0, i64 %i.cmu ; 3 uses
  %i.cmw = getelementptr i8, ptr %i.cmv, i64 434000 ; 2 uses
  %i.cmx = load i32, ptr %i.cmw, align 8, !tbaa !255
  %i.cmy = or i32 %i.cmx, 512
  store i32 %i.cmy, ptr %i.cmw, align 8, !tbaa !255
  %i.cmz = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cna = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cmz)
  %i.cnb = fptoui double %i.cna to i16
  %i.cnc = getelementptr i8, ptr %i.cmv, i64 466860 ; 2 uses
  store i16 %i.cnb, ptr %i.cnc, align 4, !tbaa !93
  %i.cnd = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cne = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cnd)
  %i.cnf = fptoui double %i.cne to i16            ; 2 uses
  %i.cng = getelementptr i8, ptr %i.cmv, i64 466862
  store i16 %i.cnf, ptr %i.cng, align 2, !tbaa !93
  %i.cnh = call i32 @strncasecmp(ptr noundef nonnull %i.cz, ptr noundef nonnull @.str.5, i64 noundef 4) #15
  %.not1050 = icmp eq i32 %i.cnh, 0
  br i1 %.not1050, label %bb.nw, label %.thread1155

bb.nw:                                            ; preds = %bb.nv
  %i.cni = load i16, ptr %i.cnc, align 4, !tbaa !93
  store i16 %i.cni, ptr %i.bh, align 2, !tbaa !195
  store i16 %i.cnf, ptr %i.bk, align 8, !tbaa !191
  br label %.thread1155

bb.nx:                                            ; preds = %bb.es
  %i.cnj = load i32, ptr %i.c, align 4, !tbaa !74
  %i.cnk = icmp eq i32 %i.cnj, 2
  br i1 %i.cnk, label %bb.ny, label %.thread1155

bb.ny:                                            ; preds = %bb.nx
  %i.cnl = sext i32 %.08611430 to i64
  %i.cnm = getelementptr [33472 x i8], ptr %0, i64 %i.cnl ; 3 uses
  %i.cnn = getelementptr i8, ptr %i.cnm, i64 434000 ; 2 uses
  %i.cno = load i32, ptr %i.cnn, align 8, !tbaa !255
  %i.cnp = or i32 %i.cno, 1024
  store i32 %i.cnp, ptr %i.cnn, align 8, !tbaa !255
  %i.cnq = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cnr = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cnq)
  %i.cns = fptoui double %i.cnr to i16
  %i.cnt = getelementptr i8, ptr %i.cnm, i64 466864 ; 2 uses
  store i16 %i.cns, ptr %i.cnt, align 8, !tbaa !93
  %i.cnu = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cnv = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cnu)
  %i.cnw = fptoui double %i.cnv to i16            ; 2 uses
  %i.cnx = getelementptr i8, ptr %i.cnm, i64 466866
  store i16 %i.cnw, ptr %i.cnx, align 2, !tbaa !93
  %i.cny = call i32 @strncasecmp(ptr noundef nonnull %i.cz, ptr noundef nonnull @.str.5, i64 noundef 4) #15
  %.not1049 = icmp eq i32 %i.cny, 0
  br i1 %.not1049, label %bb.nz, label %.thread1155

bb.nz:                                            ; preds = %bb.ny
  %i.cnz = load i16, ptr %i.cnt, align 8, !tbaa !93
  store i16 %i.cnz, ptr %i.bi, align 2, !tbaa !197
  store i16 %i.cnw, ptr %i.bl, align 4, !tbaa !196
  br label %.thread1155

bb.oa:                                            ; preds = %bb.es
  %i.coa = load i32, ptr %i.c, align 4, !tbaa !74
  %i.cob = icmp eq i32 %i.coa, 4
  br i1 %i.cob, label %.preheader1213, label %.thread1155

.preheader1213:                                   ; preds = %bb.oa
  %i.coc = sext i32 %.08611430 to i64
  %i.cod = getelementptr [33472 x i8], ptr %0, i64 %i.coc ; 8 uses
  %i.coe = getelementptr i8, ptr %i.cod, i64 466868 ; 2 uses
  %i.cof = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cog = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cof) ; 3 uses
  %i.coh = fcmp oge double %i.cog, f0xB690000000000000
  %i.coi = fcmp ole double %i.cog, f0x3FF0000010000000
  %or.cond72 = and i1 %i.coh, %i.coi              ; 2 uses
  br i1 %or.cond72, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %.preheader1213
  %i.coj = fptrunc double %i.cog to float
  store float %i.coj, ptr %i.coe, align 4, !tbaa !213
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %.preheader1213
  %i.cok = load i32, ptr %i.b, align 4, !tbaa !74
  %i.col = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cok) ; 3 uses
  %i.com = fcmp oge double %i.col, f0xB690000000000000
  %i.con = fcmp ole double %i.col, f0x3FF0000010000000
  %or.cond72.1 = and i1 %i.com, %i.con
  br i1 %or.cond72.1, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %bb.oc
  %i.coo = fptrunc double %i.col to float
  %i.cop = getelementptr i8, ptr %i.cod, i64 466872
  store float %i.coo, ptr %i.cop, align 8, !tbaa !213
  br label %bb.oe

bb.oe:                                            ; preds = %bb.od, %bb.oc
  %.1850.1 = phi i1 [ %or.cond72, %bb.od ], [ false, %bb.oc ]
  %i.coq = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cor = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.coq) ; 3 uses
  %i.cos = fcmp oge double %i.cor, f0xB690000000000000
  %i.cot = fcmp ole double %i.cor, f0x3FF0000010000000
  %or.cond72.2 = and i1 %i.cos, %i.cot
  br i1 %or.cond72.2, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe
  %i.cou = fptrunc double %i.cor to float
  %i.cov = getelementptr i8, ptr %i.cod, i64 466876
  store float %i.cou, ptr %i.cov, align 4, !tbaa !213
  br label %bb.og

bb.og:                                            ; preds = %bb.of, %bb.oe
  %.1850.2 = phi i1 [ %.1850.1, %bb.of ], [ false, %bb.oe ]
  %i.cow = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cox = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cow) ; 3 uses
  %i.coy = fcmp oge double %i.cox, f0xB690000000000000
  %i.coz = fcmp ole double %i.cox, f0x3FF0000010000000
  %or.cond72.3 = and i1 %i.coy, %i.coz
  br i1 %or.cond72.3, label %bb.oh, label %.thread1155

bb.oh:                                            ; preds = %bb.og
  %i.cpa = fptrunc double %i.cox to float
  %i.cpb = getelementptr i8, ptr %i.cod, i64 466880
  store float %i.cpa, ptr %i.cpb, align 8, !tbaa !213
  br i1 %.1850.2, label %bb.oi, label %.thread1155

bb.oi:                                            ; preds = %bb.oh
  %i.cpc = getelementptr i8, ptr %i.cod, i64 434000 ; 2 uses
  %i.cpd = load float, ptr %i.coe, align 4, !tbaa !213
  %i.cpe = getelementptr i8, ptr %i.cod, i64 466876
  %i.cpf = load float, ptr %i.cpe, align 4, !tbaa !213
  %i.cpg = fcmp olt float %i.cpd, %i.cpf
  br i1 %i.cpg, label %bb.oj, label %.thread1155

bb.oj:                                            ; preds = %bb.oi
  %i.cph = getelementptr i8, ptr %i.cod, i64 466872
  %i.cpi = load float, ptr %i.cph, align 8, !tbaa !213
  %i.cpj = getelementptr i8, ptr %i.cod, i64 466880
  %i.cpk = load float, ptr %i.cpj, align 8, !tbaa !213
  %i.cpl = fcmp olt float %i.cpi, %i.cpk
  br i1 %i.cpl, label %bb.ok, label %.thread1155

bb.ok:                                            ; preds = %bb.oj
  %i.cpm = load i32, ptr %i.cpc, align 8, !tbaa !255
  %i.cpn = or i32 %i.cpm, 32768
  store i32 %i.cpn, ptr %i.cpc, align 8, !tbaa !255
  br label %.thread1155

bb.ol:                                            ; preds = %bb.es
  %i.cpo = load i32, ptr %i.c, align 4, !tbaa !74
  %i.cpp = icmp eq i32 %i.cpo, 2
  br i1 %i.cpp, label %bb.om, label %.thread1155

bb.om:                                            ; preds = %bb.ol
  %i.cpq = call i32 @strncasecmp(ptr noundef nonnull %i.cz, ptr noundef nonnull @.str.5, i64 noundef 4) #15
  %.not1048 = icmp eq i32 %i.cpq, 0
  br i1 %.not1048, label %bb.on, label %.thread1155

bb.on:                                            ; preds = %bb.om
  %i.cpr = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cps = trunc i32 %i.cpr to i16
  store i16 %i.cps, ptr %i.bh, align 2, !tbaa !195
  %i.cpt = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cpu = trunc i32 %i.cpt to i16
  store i16 %i.cpu, ptr %i.bk, align 8, !tbaa !191
  br label %.thread1155

bb.oo:                                            ; preds = %bb.es
  %i.cpv = load i32, ptr %i.c, align 4, !tbaa !74
  %i.cpw = icmp eq i32 %i.cpv, 2
  br i1 %i.cpw, label %bb.op, label %.thread1155

bb.op:                                            ; preds = %bb.oo
  %i.cpx = call i32 @strncasecmp(ptr noundef nonnull %i.cz, ptr noundef nonnull @.str.5, i64 noundef 4) #15
  %.not1047 = icmp eq i32 %i.cpx, 0
  br i1 %.not1047, label %bb.oq, label %.thread1155

bb.oq:                                            ; preds = %bb.op
  %i.cpy = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cpz = trunc i32 %i.cpy to i16
  store i16 %i.cpz, ptr %i.bi, align 2, !tbaa !197
  %i.cqa = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cqb = trunc i32 %i.cqa to i16
  store i16 %i.cqb, ptr %i.bl, align 4, !tbaa !196
  br label %.thread1155

bb.or:                                            ; preds = %bb.es
  %i.cqc = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cqd = sext i32 %.08611430 to i64
  %i.cqe = getelementptr [33472 x i8], ptr %0, i64 %i.cqd ; 2 uses
  %i.cqf = getelementptr i8, ptr %i.cqe, i64 433660 ; 2 uses
  %i.cqg = getelementptr i8, ptr %i.cqe, i64 433664
  store i16 %i.cqc, ptr %i.cqg, align 8, !tbaa !269
  %i.cqh = load i32, ptr %i.cqf, align 4, !tbaa !270
  %i.cqi = or i32 %i.cqh, 2
  store i32 %i.cqi, ptr %i.cqf, align 4, !tbaa !270
  br label %.thread1155

bb.os:                                            ; preds = %bb.es
  %i.cqj = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cqk = sext i32 %.08611430 to i64
  %i.cql = getelementptr [33472 x i8], ptr %0, i64 %i.cqk ; 2 uses
  %i.cqm = getelementptr i8, ptr %i.cql, i64 433828 ; 2 uses
  %i.cqn = getelementptr i8, ptr %i.cql, i64 433832
  store i16 %i.cqj, ptr %i.cqn, align 8, !tbaa !269
  %i.cqo = load i32, ptr %i.cqm, align 4, !tbaa !270
  %i.cqp = or i32 %i.cqo, 2
  store i32 %i.cqp, ptr %i.cqm, align 4, !tbaa !270
  br label %.thread1155

bb.ot:                                            ; preds = %bb.es, %bb.es
  %i.cqq = load i32, ptr %i.c, align 4, !tbaa !74 ; 2 uses
  %i.cqr = icmp eq i32 %i.cqq, 9
  %i.cqs = icmp eq i32 %i.cqq, 12
  %i.cqt = select i1 %i.cqs, i32 4, i32 0
  %i.cqu = select i1 %i.cqr, i32 3, i32 %i.cqt    ; 2 uses
  %.not1046 = icmp eq i32 %i.cqu, 0
  br i1 %.not1046, label %.thread1155, label %.preheader1177.lr.ph

.preheader1177.lr.ph:                             ; preds = %bb.ot
  %i.cqv = icmp ne i32 %i.adm, 50721              ; 2 uses
  %i.cqw = sext i32 %.08611430 to i64
  %i.cqx = getelementptr [33472 x i8], ptr %0, i64 %i.cqw
  %i.cqy = getelementptr i8, ptr %i.cqx, i64 433660
  %i.cqz = zext i1 %i.cqv to i64                  ; 2 uses
  %i.cra = getelementptr inbounds nuw [168 x i8], ptr %i.cqy, i64 %i.cqz ; 2 uses
  %i.crb = load i32, ptr %i.cra, align 4, !tbaa !270
  %i.crc = or i32 %i.crb, 4
  store i32 %i.crc, ptr %i.cra, align 4, !tbaa !270
  %i.crd = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.cqz
  store i32 %.08611430, ptr %i.crd, align 4, !tbaa !74
  %i.cre = sext i32 %.08611430 to i64
  %i.crf = getelementptr [33472 x i8], ptr %0, i64 %i.cre
  %i.crg = zext i1 %i.cqv to i64
  %i.crh = getelementptr [168 x i8], ptr %i.crf, i64 %i.crg
  %i.cri = getelementptr i8, ptr %i.crh, i64 433732
  %wide.trip.count1641 = zext nneg i32 %i.cqu to i64
  br label %.preheader1177

.preheader1177:                                   ; preds = %.preheader1177.lr.ph, %.preheader1177
  %indvars.iv1638 = phi i64 [ 0, %.preheader1177.lr.ph ], [ %indvars.iv.next1639, %.preheader1177 ] ; 3 uses
  %i.crj = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv1638 ; 3 uses
  %i.crk = getelementptr inbounds nuw [12 x i8], ptr %i.cri, i64 %indvars.iv1638 ; 3 uses
  %i.crl = load i32, ptr %i.b, align 4, !tbaa !74
  %i.crm = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.crl) ; 2 uses
  store double %i.crm, ptr %i.crj, align 8, !tbaa !181
  %i.crn = fptrunc double %i.crm to float
  store float %i.crn, ptr %i.crk, align 4, !tbaa !213
  %i.cro = load i32, ptr %i.b, align 4, !tbaa !74
  %i.crp = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cro) ; 2 uses
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crj, i64 8
  store double %i.crp, ptr %i.crq, align 8, !tbaa !181
  %i.crr = fptrunc double %i.crp to float
  %i.crs = getelementptr inbounds nuw i8, ptr %i.crk, i64 4
  store float %i.crr, ptr %i.crs, align 4, !tbaa !213
  %i.crt = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cru = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.crt) ; 2 uses
  %i.crv = getelementptr inbounds nuw i8, ptr %i.crj, i64 16
  store double %i.cru, ptr %i.crv, align 8, !tbaa !181
  %i.crw = fptrunc double %i.cru to float
  %i.crx = getelementptr inbounds nuw i8, ptr %i.crk, i64 8
  store float %i.crw, ptr %i.crx, align 4, !tbaa !213
  %indvars.iv.next1639 = add nuw nsw i64 %indvars.iv1638, 1 ; 2 uses
  %exitcond1642.not = icmp eq i64 %indvars.iv.next1639, %wide.trip.count1641
  br i1 %exitcond1642.not, label %.thread1155, label %.preheader1177, !llvm.loop !170

bb.ou:                                            ; preds = %bb.es, %bb.es
  %i.cry = load i32, ptr %i.c, align 4, !tbaa !74 ; 2 uses
  %i.crz = icmp eq i32 %i.cry, 9
  %i.csa = icmp eq i32 %i.cry, 12
  %i.csb = select i1 %i.csa, i32 4, i32 0
  %i.csc = select i1 %i.crz, i32 3, i32 %i.csb    ; 2 uses
  %.not1045 = icmp eq i32 %i.csc, 0
  br i1 %.not1045, label %.thread1155, label %.preheader1178.preheader

.preheader1178.preheader:                         ; preds = %bb.ou
  %i.csd = icmp ne i32 %i.adm, 50964
  %i.cse = sext i32 %.08611430 to i64             ; 2 uses
  %i.csf = getelementptr [33472 x i8], ptr %0, i64 %i.cse
  %i.csg = getelementptr i8, ptr %i.csf, i64 433660
  %i.csh = zext i1 %i.csd to i64                  ; 2 uses
  %i.csi = getelementptr inbounds nuw [168 x i8], ptr %i.csg, i64 %i.csh ; 2 uses
  %i.csj = load i32, ptr %i.csi, align 4, !tbaa !270
  %i.csk = or i32 %i.csj, 1
  store i32 %i.csk, ptr %i.csi, align 4, !tbaa !270
  %i.csl = getelementptr [33472 x i8], ptr %0, i64 %i.cse
  %i.csm = getelementptr [168 x i8], ptr %i.csl, i64 %i.csh ; 3 uses
  %i.csn = getelementptr i8, ptr %i.csm, i64 433780
  %wide.trip.count1628 = zext nneg i32 %i.csc to i64 ; 3 uses
  br label %bb.ov

bb.ov:                                            ; preds = %.preheader1178.preheader, %bb.ov
  %indvars.iv1625 = phi i64 [ 0, %.preheader1178.preheader ], [ %indvars.iv.next1626, %bb.ov ] ; 2 uses
  %i.cso = load i32, ptr %i.b, align 4, !tbaa !74
  %i.csp = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cso)
  %i.csq = fptrunc double %i.csp to float
  %i.csr = getelementptr inbounds nuw [4 x i8], ptr %i.csn, i64 %indvars.iv1625
  store float %i.csq, ptr %i.csr, align 4, !tbaa !213
  %indvars.iv.next1626 = add nuw nsw i64 %indvars.iv1625, 1 ; 2 uses
  %exitcond1629.not = icmp eq i64 %indvars.iv.next1626, %wide.trip.count1628
  br i1 %exitcond1629.not, label %._crit_edge1319, label %bb.ov, !llvm.loop !171

._crit_edge1319:                                  ; preds = %bb.ov
  %i.css = getelementptr i8, ptr %i.csm, i64 433796
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ow, %._crit_edge1319
  %indvars.iv1625.1 = phi i64 [ 0, %._crit_edge1319 ], [ %indvars.iv.next1626.1, %bb.ow ] ; 2 uses
  %i.cst = load i32, ptr %i.b, align 4, !tbaa !74
  %i.csu = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cst)
  %i.csv = fptrunc double %i.csu to float
  %i.csw = getelementptr inbounds nuw [4 x i8], ptr %i.css, i64 %indvars.iv1625.1
  store float %i.csv, ptr %i.csw, align 4, !tbaa !213
  %indvars.iv.next1626.1 = add nuw nsw i64 %indvars.iv1625.1, 1 ; 2 uses
  %exitcond1629.1.not = icmp eq i64 %indvars.iv.next1626.1, %wide.trip.count1628
  br i1 %exitcond1629.1.not, label %._crit_edge1319.1, label %bb.ow, !llvm.loop !171

._crit_edge1319.1:                                ; preds = %bb.ow
  %i.csx = getelementptr i8, ptr %i.csm, i64 433812
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ox, %._crit_edge1319.1
  %indvars.iv1625.2 = phi i64 [ 0, %._crit_edge1319.1 ], [ %indvars.iv.next1626.2, %bb.ox ] ; 2 uses
  %i.csy = load i32, ptr %i.b, align 4, !tbaa !74
  %i.csz = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.csy)
end_hunk_0
